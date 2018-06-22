{
let reservedWords = [
  (* Keywords *)
  ("else", Parser.ELSE);
  ("false", Parser.FALSE);
  ("if", Parser.IF);
  ("then", Parser.THEN);
  ("true", Parser.TRUE);
  ("in", Parser.IN);
  ("let", Parser.LET);
  (* define token for let formula *)
  ("fun" , Parser.FUN);
  (* define token for fun formula *)
  ("rec" , Parser.REC);
  (* define token for let rec formula*)
]
}

rule main = parse
  (* ignore spacing and newline characters *)
  [' ' '\009' '\012' '\n']+     { main lexbuf }

| "-"? ['0'-'9']+
    { Parser.INTV (int_of_string (Lexing.lexeme lexbuf)) }

| "(" { Parser.LPAREN }
| ")" { Parser.RPAREN }
| ";;" { Parser.SEMISEMI }
| "+" { Parser.PLUS }
| "*" { Parser.MULT }
| "<" { Parser.LT }
| "=" { Parser.EQ } (*define "=" *)
| "->" { Parser.RARROW } (*define "->" *)
| "&&" { Parser.AND } (* define and *)
| "||" { Parser.OR } (* define or *)

| ['a'-'z'] ['a'-'z' '0'-'9' '_' '\'']*
    { let id = Lexing.lexeme lexbuf in
      try
        List.assoc id reservedWords
      with
      _ -> Parser.ID id
     }
| "(*" { (*print_endline "comments start";*) comments 0 lexbuf }
| eof { exit 0 }

and comments level = parse
| "*)" { (*Printf.printf "comments (%d) end\n"*) level;
if level = 0 then main lexbuf
else comments (level-1) lexbuf
}
| "(*" { (*Printf.printf "comments (%d) start\n"*) (level+1);
comments (level+1) lexbuf
}
| _ { comments level lexbuf }
| eof { print_endline "comments are not closed";
raise End_of_file
}
