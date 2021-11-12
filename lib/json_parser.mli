open Json_require;;
(* The type of tokens. *) type token = Json_tokens.token (* This exception is raised by the monolithic API functions. *) exception Error (* The monolithic API. *) val x_start: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (json)
