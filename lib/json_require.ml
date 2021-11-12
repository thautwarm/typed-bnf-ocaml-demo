type json = 
  | Dict of (Uchar.t array * json) list
  | Bool of bool
  | Float of float
  | Int of int
  | List of json list
  | Null
  | String of Uchar.t array

let parse_int xs =
    let buf = Buffer.create (Array.length xs) in
    let _ = Array.iter (fun c -> Buffer.add_char buf (Uchar.to_char c)) xs in
    int_of_string @@ Buffer.contents buf

let parse_float xs =
    let buf = Buffer.create (Array.length xs) in
    let _ = Array.iter (fun c -> Buffer.add_char buf (Uchar.to_char c)) xs in
    float_of_string @@ Buffer.contents buf

let _quote = Uchar.of_char '\"'
let _backslash = Uchar.of_char '\\'

exception StringLitError of Uchar.t

let rec unesc_string : Uchar.t array -> Uchar.t array = fun cs ->
    match Array.to_list cs with
    | q::cs when q = Uchar.of_char '"' -> Array.of_list @@ unesc_impl cs
    | cs -> raise @@ StringLitError (List.hd cs)

and unesc_impl = function
  | [] -> []
  | [a] when a = Uchar.of_char '"' -> []
  | b::a::cs when b = Uchar.of_char '\\' ->
      if a = Uchar.of_char 'n' then Uchar.of_char '\n' :: unesc_impl cs
      else if a = Uchar.of_char 't' then Uchar.of_char '\t' :: unesc_impl cs
      else a :: unesc_impl cs
  | a :: cs -> a ::  unesc_impl cs


let mk_dict xs = xs
let json_dict xs = Dict xs
let json_list xs = List xs
let json_float f = Float f
let json_int i = Int i
let json_null() = Null
let json_string s = String s

let append(xs, x) = xs @ [x]
let nil() = []


let print_uchar c = print_char @@ Uchar.to_char c
  
  (* Fmt.(pf stdout "%a" Dump.uchar c);; *)
let print_ustring (xs: Uchar.t array) =
  Array.iter (print_uchar) xs

let rec print_json =
    function
    | Dict kvs -> begin
      print_string "{" ;
      List.iter (
          fun (k, v) -> print_ustring k; print_string ":"; print_json v; print_string ",") kvs;
          print_string "}"
      end
    | List xs ->
        List.iter (fun x -> print_json x; print_string ",") xs
    | Bool true -> print_string "true"
    | Bool false -> print_string "false"
    | Int i -> print_int i
    | Float f -> print_float f
    | Null -> print_string "null"
    | String s -> print_ustring @@ s

