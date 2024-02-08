(*defining helper functions*)
{
    type token = INT of int | NONE
}
(* Define helper regexes *)
let digit = ['0'-'9']
let int = '-'? digit+  (* regex for integers *)

rule read_token = 
    parse
    | int {INT (int_of_string(Lexing.lexeme lexbuf))}
    | _ {NONE}
