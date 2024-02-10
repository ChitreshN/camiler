type token =
  | INT of (
# 1 "lib/parser.mly"
        int
# 6 "lib/parser.mli"
)
  | PLUS
  | MINUS
  | TIMES
  | DIV
  | LPAREN
  | RPAREN
  | EOL

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> int
