open Syntax
open Eval

let rec read_eval_print env =
  print_string "# ";
  flush stdout;
  try
  let decl = Parser.toplevel Lexer.main (Lexing.from_channel stdin)
  in
  let (id, newenv, v) = eval_decl env decl in
    Printf.printf "val %s = " id;
    pp_val v;
    print_newline();
    read_eval_print newenv
  with Error s ->  print_string s;
    print_newline();
    read_eval_print env
  |_ ->
    Printf.printf "Error:Illegal Input";
    print_newline();
    read_eval_print env
(* Exercise 3.2.2のためにエラー処理 *)
(* 正しい入力が起こった場合は環境を拡張するが、エラーが起こった場合、エラーメッセージを表示し、新しい入力待ち状態にする。
    環境の評価はしない　*)


let initial_env =
  Environment.extend "i" (IntV 1)
    (Environment.extend "v" (IntV 5)
       (Environment.extend "x" (IntV 10)
         (Environment.extend "ii" (IntV 2)
          (Environment.extend "iii" (IntV 3)
            (Environment.extend "iv" (IntV 4) Environment.empty)))))
(* Exercise 3.2.1 のために大域環境を拡張 *)

let _ = read_eval_print initial_env
