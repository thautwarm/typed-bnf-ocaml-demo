## Typed-BNF OCaml Demo

Typed-BNF helps you minimize the procedures of writing parsers.

### Requirements for a parser library

1. OCaml dune build system
2. Typed-BNF compiler(Python 3.10 required)
3. Opam libraries:
    - `menhirLib`
    - `sedlex`
    - `sedlex.ppx`

Dune project:
```
(library
 (name <your project name>)
 (libraries menhirLib sedlex sedlex.ppx)
 (preprocess
  (pps sedlex.ppx)))
```

### Parser Construction Process

Writing a json parser library requires only 2 hand-written files:

1. the grammar `json.tbnf`; or grammar for your own language `xxx.tbnf`.
2. `lib/json_require.ml`(or your `lib/xxx_require.ml`), which provides the implementation of the external symbols you declared in `json.tbnf`(or your `xxx.tbnf`).

Then you build the project with `tbnf` and `menhir` with this bash script:

```bash
tbnf json.tbnf ocaml  --outdir lib/ --mod json
menhir lib/json_parser.mly --external-tokens Json_tokens

MLI_CONTENT="$(cat lib/json_parser.mli)"
echo "open Json_require;;" > lib/json_parser.mli
echo $MLI_CONTENT >> lib/json_parser.mli
```

Inserting `open Json_require` to the head of `lib/json_parser.mli` is a required patch for menhir codegen.


### Running the parser

run `dune utop .`.

```ocaml
utop # Easyjson.Api.parse_json("{\"1\": 2,   \"3\": [1, 2]}");;
- : Json_require.json =
Easyjson.Json_require.Dict
 [([|<abstr>|], Easyjson.Json_require.Int 2);
  ([|<abstr>|],
   Easyjson.Json_require.List
    [Easyjson.Json_require.Int 1; Easyjson.Json_require.Int 2])]
```


