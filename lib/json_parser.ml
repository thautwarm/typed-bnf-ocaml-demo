
module MenhirBasics = struct
  
  exception Error
  
  let _eRR : exn =
    Error
  
  type token = Json_tokens.token
  
end

include MenhirBasics

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState18
  | MenhirState13
  | MenhirState6
  | MenhirState5
  | MenhirState3
  | MenhirState0

# 1 "lib/json_parser.mly"
  
open Json_tokens;;
open Json_require;;

# 36 "lib/json_parser.ml"

let rec _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_x_gen__seplist__L44__pair : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_x_gen__seplist__L44__pair -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv93 * _menhir_state * (
# 9 "lib/json_parser.mly"
      (tbnf_token)
# 50 "lib/json_parser.ml"
    )) * _menhir_state * 'tv_x_gen__seplist__L44__pair) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Json_tokens.LIT__10 _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * (
# 9 "lib/json_parser.mly"
      (tbnf_token)
# 60 "lib/json_parser.ml"
        )) * _menhir_state * 'tv_x_gen__seplist__L44__pair) = Obj.magic _menhir_stack in
        let (_v : (
# 10 "lib/json_parser.mly"
      (tbnf_token)
# 65 "lib/json_parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * (
# 9 "lib/json_parser.mly"
      (tbnf_token)
# 72 "lib/json_parser.ml"
        )) * _menhir_state * 'tv_x_gen__seplist__L44__pair) = Obj.magic _menhir_stack in
        let (_ : (
# 10 "lib/json_parser.mly"
      (tbnf_token)
# 77 "lib/json_parser.ml"
        )) = _v in
        ((let ((_menhir_stack, _menhir_s, _), _, (_2 : 'tv_x_gen__seplist__L44__pair)) = _menhir_stack in
        let _v : 'tv_x_json = 
# 21 "lib/json_parser.mly"
                                                      (json_dict(mk_dict(_2)))
# 83 "lib/json_parser.ml"
         in
        _menhir_goto_x_json _menhir_env _menhir_stack _menhir_s _v) : 'freshtv86)) : 'freshtv88)
    | Json_tokens.LIT__12 _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89 * _menhir_state * 'tv_x_gen__seplist__L44__pair) = Obj.magic _menhir_stack in
        let (_v : (
# 14 "lib/json_parser.mly"
      (tbnf_token)
# 92 "lib/json_parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Json_tokens.STR_2 _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv90)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * (
# 9 "lib/json_parser.mly"
      (tbnf_token)
# 111 "lib/json_parser.ml"
        )) * _menhir_state * 'tv_x_gen__seplist__L44__pair) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)) : 'freshtv94)

and _menhir_goto_x_gen__seplist__L44__json : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_x_gen__seplist__L44__json -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv83 * _menhir_state * (
# 7 "lib/json_parser.mly"
      (tbnf_token)
# 123 "lib/json_parser.ml"
    )) * _menhir_state * 'tv_x_gen__seplist__L44__json) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Json_tokens.LIT__12 _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state * 'tv_x_gen__seplist__L44__json) = Obj.magic _menhir_stack in
        let (_v : (
# 14 "lib/json_parser.mly"
      (tbnf_token)
# 134 "lib/json_parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Json_tokens.FLOAT_6 _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | Json_tokens.INT_5 _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | Json_tokens.LIT__7 _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | Json_tokens.LIT__9 _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | Json_tokens.NULL_11 _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | Json_tokens.STR_2 _v ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13) : 'freshtv76)
    | Json_tokens.LIT__8 _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * (
# 7 "lib/json_parser.mly"
      (tbnf_token)
# 161 "lib/json_parser.ml"
        )) * _menhir_state * 'tv_x_gen__seplist__L44__json) = Obj.magic _menhir_stack in
        let (_v : (
# 8 "lib/json_parser.mly"
      (tbnf_token)
# 166 "lib/json_parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * (
# 7 "lib/json_parser.mly"
      (tbnf_token)
# 173 "lib/json_parser.ml"
        )) * _menhir_state * 'tv_x_gen__seplist__L44__json) = Obj.magic _menhir_stack in
        let (_ : (
# 8 "lib/json_parser.mly"
      (tbnf_token)
# 178 "lib/json_parser.ml"
        )) = _v in
        ((let ((_menhir_stack, _menhir_s, _), _, (_2 : 'tv_x_gen__seplist__L44__json)) = _menhir_stack in
        let _v : 'tv_x_json = 
# 20 "lib/json_parser.mly"
                                                     (json_list(_2))
# 184 "lib/json_parser.ml"
         in
        _menhir_goto_x_json _menhir_env _menhir_stack _menhir_s _v) : 'freshtv78)) : 'freshtv80)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * (
# 7 "lib/json_parser.mly"
      (tbnf_token)
# 194 "lib/json_parser.ml"
        )) * _menhir_state * 'tv_x_gen__seplist__L44__json) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)) : 'freshtv84)

and _menhir_goto_x_json : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_x_json -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state * 'tv_x_json) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state * 'tv_x_json) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_x_json)) = _menhir_stack in
        let _v : 'tv_x_gen__seplist__L44__json = 
# 30 "lib/json_parser.mly"
                                       (append(nil(), _1))
# 212 "lib/json_parser.ml"
         in
        _menhir_goto_x_gen__seplist__L44__json _menhir_env _menhir_stack _menhir_s _v) : 'freshtv40)) : 'freshtv42)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv45 * _menhir_state * 'tv_x_gen__seplist__L44__json) * (
# 14 "lib/json_parser.mly"
      (tbnf_token)
# 220 "lib/json_parser.ml"
        )) * _menhir_state * 'tv_x_json) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv43 * _menhir_state * 'tv_x_gen__seplist__L44__json) * (
# 14 "lib/json_parser.mly"
      (tbnf_token)
# 226 "lib/json_parser.ml"
        )) * _menhir_state * 'tv_x_json) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (_1 : 'tv_x_gen__seplist__L44__json)), _), _, (_3 : 'tv_x_json)) = _menhir_stack in
        let _v : 'tv_x_gen__seplist__L44__json = 
# 29 "lib/json_parser.mly"
                                                                         (append(_1, _3))
# 232 "lib/json_parser.ml"
         in
        _menhir_goto_x_gen__seplist__L44__json _menhir_env _menhir_stack _menhir_s _v) : 'freshtv44)) : 'freshtv46)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv59 * _menhir_state * 'tv_x_str) * (
# 15 "lib/json_parser.mly"
      (tbnf_token)
# 240 "lib/json_parser.ml"
        )) * _menhir_state * 'tv_x_json) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv57 * _menhir_state * 'tv_x_str) * (
# 15 "lib/json_parser.mly"
      (tbnf_token)
# 246 "lib/json_parser.ml"
        )) * _menhir_state * 'tv_x_json) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (_1 : 'tv_x_str)), _), _, (_3 : 'tv_x_json)) = _menhir_stack in
        let _v : 'tv_x_pair = 
# 32 "lib/json_parser.mly"
                                  ((_1,_3))
# 252 "lib/json_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_x_pair) = _v in
        ((match _menhir_s with
        | MenhirState3 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv49) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_x_pair) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv47) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : 'tv_x_pair) : 'tv_x_pair) = _v in
            ((let _v : 'tv_x_gen__seplist__L44__pair = 
# 27 "lib/json_parser.mly"
                                       (append(nil(), _1))
# 271 "lib/json_parser.ml"
             in
            _menhir_goto_x_gen__seplist__L44__pair _menhir_env _menhir_stack _menhir_s _v) : 'freshtv48)) : 'freshtv50)
        | MenhirState18 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv53 * _menhir_state * 'tv_x_gen__seplist__L44__pair) * (
# 14 "lib/json_parser.mly"
      (tbnf_token)
# 279 "lib/json_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_x_pair) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv51 * _menhir_state * 'tv_x_gen__seplist__L44__pair) * (
# 14 "lib/json_parser.mly"
      (tbnf_token)
# 287 "lib/json_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            let ((_3 : 'tv_x_pair) : 'tv_x_pair) = _v in
            ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_x_gen__seplist__L44__pair)), _) = _menhir_stack in
            let _v : 'tv_x_gen__seplist__L44__pair = 
# 26 "lib/json_parser.mly"
                                                                         (append(_1, _3))
# 295 "lib/json_parser.ml"
             in
            _menhir_goto_x_gen__seplist__L44__pair _menhir_env _menhir_stack _menhir_s _v) : 'freshtv52)) : 'freshtv54)
        | _ ->
            _menhir_fail ()) : 'freshtv56)) : 'freshtv58)) : 'freshtv60)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73 * _menhir_state * 'tv_x_json) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Json_tokens.EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv69 * _menhir_state * 'tv_x_json) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv67 * _menhir_state * 'tv_x_json) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_x_json)) = _menhir_stack in
            let _v : (
# 18 "lib/json_parser.mly"
       (json)
# 315 "lib/json_parser.ml"
            ) = 
# 34 "lib/json_parser.mly"
                         (_1)
# 319 "lib/json_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv65) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 18 "lib/json_parser.mly"
       (json)
# 327 "lib/json_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv63) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 18 "lib/json_parser.mly"
       (json)
# 335 "lib/json_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv61) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 18 "lib/json_parser.mly"
       (json)
# 343 "lib/json_parser.ml"
            )) : (
# 18 "lib/json_parser.mly"
       (json)
# 347 "lib/json_parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv62)) : 'freshtv64)) : 'freshtv66)) : 'freshtv68)) : 'freshtv70)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv71 * _menhir_state * 'tv_x_json) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)) : 'freshtv74)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state * 'tv_x_gen__seplist__L44__pair) * (
# 14 "lib/json_parser.mly"
      (tbnf_token)
# 368 "lib/json_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * _menhir_state * 'tv_x_gen__seplist__L44__json) * (
# 14 "lib/json_parser.mly"
      (tbnf_token)
# 377 "lib/json_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state * (
# 7 "lib/json_parser.mly"
      (tbnf_token)
# 386 "lib/json_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state * 'tv_x_str) * (
# 15 "lib/json_parser.mly"
      (tbnf_token)
# 395 "lib/json_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state * (
# 9 "lib/json_parser.mly"
      (tbnf_token)
# 404 "lib/json_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv38)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "lib/json_parser.mly"
      (tbnf_token)
# 416 "lib/json_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv25) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 16 "lib/json_parser.mly"
      (tbnf_token)
# 426 "lib/json_parser.ml"
    )) : (
# 16 "lib/json_parser.mly"
      (tbnf_token)
# 430 "lib/json_parser.ml"
    )) = _v in
    ((let _v : 'tv_x_str = 
# 33 "lib/json_parser.mly"
                  (unesc_string((_1: tbnf_token).lexeme))
# 435 "lib/json_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv23) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_x_str) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState18 | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state * 'tv_x_str) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Json_tokens.LIT__13 _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv13 * _menhir_state * 'tv_x_str) = Obj.magic _menhir_stack in
            let (_v : (
# 15 "lib/json_parser.mly"
      (tbnf_token)
# 455 "lib/json_parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | Json_tokens.FLOAT_6 _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
            | Json_tokens.INT_5 _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
            | Json_tokens.LIT__7 _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
            | Json_tokens.LIT__9 _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
            | Json_tokens.NULL_11 _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
            | Json_tokens.STR_2 _v ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5) : 'freshtv14)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv15 * _menhir_state * 'tv_x_str) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)) : 'freshtv18)
    | MenhirState0 | MenhirState5 | MenhirState13 | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state * 'tv_x_str) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state * 'tv_x_str) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_x_str)) = _menhir_stack in
        let _v : 'tv_x_json = 
# 24 "lib/json_parser.mly"
                   (json_string(_1))
# 493 "lib/json_parser.ml"
         in
        _menhir_goto_x_json _menhir_env _menhir_stack _menhir_s _v) : 'freshtv20)) : 'freshtv22)) : 'freshtv24)) : 'freshtv26)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 13 "lib/json_parser.mly"
      (tbnf_token)
# 500 "lib/json_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_ : (
# 13 "lib/json_parser.mly"
      (tbnf_token)
# 510 "lib/json_parser.ml"
    )) = _v in
    ((let _v : 'tv_x_json = 
# 25 "lib/json_parser.mly"
                     (json_null())
# 515 "lib/json_parser.ml"
     in
    _menhir_goto_x_json _menhir_env _menhir_stack _menhir_s _v) : 'freshtv12)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "lib/json_parser.mly"
      (tbnf_token)
# 522 "lib/json_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Json_tokens.STR_2 _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | Json_tokens.LIT__10 _ | Json_tokens.LIT__12 _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState3 in
        ((let _v : 'tv_x_gen__seplist__L44__pair = 
# 28 "lib/json_parser.mly"
                                 (nil())
# 538 "lib/json_parser.ml"
         in
        _menhir_goto_x_gen__seplist__L44__pair _menhir_env _menhir_stack _menhir_s _v) : 'freshtv10)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "lib/json_parser.mly"
      (tbnf_token)
# 549 "lib/json_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Json_tokens.FLOAT_6 _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Json_tokens.INT_5 _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Json_tokens.LIT__7 _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Json_tokens.LIT__9 _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Json_tokens.NULL_11 _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Json_tokens.STR_2 _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | Json_tokens.LIT__12 _ | Json_tokens.LIT__8 _ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState6 in
        ((let _v : 'tv_x_gen__seplist__L44__json = 
# 31 "lib/json_parser.mly"
                                 (nil())
# 575 "lib/json_parser.ml"
         in
        _menhir_goto_x_gen__seplist__L44__json _menhir_env _menhir_stack _menhir_s _v) : 'freshtv8)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 11 "lib/json_parser.mly"
      (tbnf_token)
# 586 "lib/json_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 11 "lib/json_parser.mly"
      (tbnf_token)
# 596 "lib/json_parser.ml"
    )) : (
# 11 "lib/json_parser.mly"
      (tbnf_token)
# 600 "lib/json_parser.ml"
    )) = _v in
    ((let _v : 'tv_x_json = 
# 22 "lib/json_parser.mly"
                   (json_int(parse_int((_1: tbnf_token).lexeme)))
# 605 "lib/json_parser.ml"
     in
    _menhir_goto_x_json _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 12 "lib/json_parser.mly"
      (tbnf_token)
# 612 "lib/json_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 12 "lib/json_parser.mly"
      (tbnf_token)
# 622 "lib/json_parser.ml"
    )) : (
# 12 "lib/json_parser.mly"
      (tbnf_token)
# 626 "lib/json_parser.ml"
    )) = _v in
    ((let _v : 'tv_x_json = 
# 23 "lib/json_parser.mly"
                     (json_float(parse_float((_1: tbnf_token).lexeme)))
# 631 "lib/json_parser.ml"
     in
    _menhir_goto_x_json _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and x_start : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 18 "lib/json_parser.mly"
       (json)
# 650 "lib/json_parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Json_tokens.FLOAT_6 _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Json_tokens.INT_5 _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Json_tokens.LIT__7 _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Json_tokens.LIT__9 _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Json_tokens.NULL_11 _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | Json_tokens.STR_2 _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 269 "<standard.mly>"
  

# 684 "lib/json_parser.ml"
