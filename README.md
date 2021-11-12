## Typed-BNF OCaml Demo

Typed-BNF helps you minimize the procedures of writing parsers.

### Requirements for a parser library

Dune project:
```
(library
 (name <your project name>)
 (libraries menhirLib sedlex sedlex.ppx fmt)
 (preprocess
  (pps sedlex.ppx)))
```

### Process

Writing a json parser library requires only 2 hand-written files:

1. the grammar `json.tbnf`
2. `lib/json_require.ml`, which provides the implementation of the external symbols you declared in `json.tbnf`.

Then you build the project with `tbnf` and `menhir` with this bash script:

```bash
tbnf json.tbnf ocaml  --outdir lib/ --mod json
menhir lib/json_parser.mly --external-tokens Json_tokens

MLI_CONTENT="$(cat lib/json_parser.mli)"
echo "open Json_require;;" > lib/json_parser.mli
echo $MLI_CONTENT >> lib/json_parser.mli
```

Inserting `open Json_require` to the head of `lib/json_parser.mli` is a required patch for menhir codegen.
