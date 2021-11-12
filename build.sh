tbnf json.tbnf ocaml  --outdir lib/ --mod json
menhir lib/json_parser.mly --external-tokens Json_tokens

MLI_CONTENT="$(cat lib/json_parser.mli)"
echo "open Json_require;;" > lib/json_parser.mli
echo $MLI_CONTENT >> lib/json_parser.mli