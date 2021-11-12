let parse_json long_str =
  let lexbuf = Sedlexing.Utf8.from_string long_str in
  let revised_lexer () =
    let tk = Json_lexer.tokenize lexbuf in
    let p1, p2 = Sedlexing.lexing_positions lexbuf in 
    tk, p1, p2
  in
  let revised_parser = MenhirLib.Convert.Simplified.traditional2revised Json_parser.x_start
  in revised_parser revised_lexer
