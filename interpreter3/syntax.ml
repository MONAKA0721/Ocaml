(* ML interpreter / type reconstruction *)
type id = string

type binOp = Plus | Mult | Lt | Or | And

type exp =
  | Var of id (* Var "x" --> x *)
  | ILit of int (* ILit 3 --> 3 *)
  | BLit of bool (* BLit true --> true *)
  | BinOp of binOp * exp * exp
  (* BinOp(Plus, ILit 4, Var "x") --> 4 + x *)
  | IfExp of exp * exp * exp
  (* IfExp(BinOp(Lt, Var "x", ILit 4),
           ILit 3,
           Var "x") -->
     if x<4 then 3 else x *)
  | LetExp of id * exp * exp
  (* define let expression
    LetExp(Var "x" , ILit 4 , BinOp(Plus , ILit 4 , Var "x"))
      --> let x = 4 in x + 4 *)
  | FunExp of id * exp
  | AppExp of exp * exp
  (*define fun and app expression
    FunExp(Var "x" , BinOp(Plus , ILit 4 , Var "x")
      --> fun x -> x + 4
    AppExp(AppExp(FunExp(f) , ILit 4))
     --> f 4
  *)
  | LetRecExp of id * id * exp * exp
  (* define let rec formula
    LetRecExp ( Var "fact" , Var "n" , IfExp(BinOp( , ) , ILit 1 , BinOp(Mult , Var "n" , AppExp(Var "fact" , BinOp( , Var "n" , 1)))) , AppExp (Var "f" , ILit 5))
      --> let rec fact n = if n = 0 then 1 else n * (fact (n - 1)) in f 5
  *)

type program =
    Exp of exp
    | Decl of id * exp
    (* declare let formula *)
    | RecDecl of id * id * exp
    (* declare let rec formula *)

type ty =
  TyInt
  | TyBool

let pp_ty = function
  TyInt -> print_string "int"
 |TyBool -> print_string "bool"
