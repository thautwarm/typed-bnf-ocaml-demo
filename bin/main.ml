open Easyjson

let ()  =
  let long_str = "{\"a\" : 2, \"z\": null}" in
  let lexbuf = Sedlexing.Utf8.from_string long_str in
  let revised_lexer () =
    let tk = Json_lexer.tokenize lexbuf in
    let p1, p2 = Sedlexing.lexing_positions lexbuf in 
    tk, p1, p2
  in
  let revised_parser = MenhirLib.Convert.Simplified.traditional2revised Json_parser.x_start
  in Json_require.print_json @@ revised_parser revised_lexer
