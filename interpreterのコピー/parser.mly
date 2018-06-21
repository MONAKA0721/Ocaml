%{
open Syntax
%}

%token LPAREN RPAREN SEMISEMI
%token PLUS MULT LT
%token IF THEN ELSE TRUE FALSE
%token LET IN EQ
(*define token for let formula*)
%token RARROW FUN
(*define token for fun formula (-> & fun)*)
%token REC
(* define token for let rec formula *)


%token <int> INTV
%token <Syntax.id> ID

%start toplevel
%type <Syntax.program> toplevel
%%

toplevel :
    e=Expr SEMISEMI { Exp e }
    |LET x=ID EQ e=Expr SEMISEMI { Decl (x , e) }
    (*if recieve let id = exp;;
      then raise decl(x , e)
    *)
    (*|LET REC x=ID EQ FUN y=ID RARROW e=Expr SEMISEMI { RecDecl (x , y , e)}*)

Expr :
    e=IfExpr { e }
  | e=LetExpr { e }
  (* apply code Expr : LetExpr *)
  | e=LTExpr { e }
  | e=FunExpr { e }
  (*apply code Expr --> FunExpr and execute action e *)
  (*| e=LetRecExpr { e }*)
  (**)

LTExpr :
    l=PExpr LT r=PExpr { BinOp (Lt, l, r) }
  | e=PExpr { e }

PExpr :
    l=PExpr PLUS r=MExpr { BinOp (Plus, l, r) }
  | e=MExpr { e }

MExpr :
    e1=MExpr MULT e2=AppExpr { BinOp (Mult, e1, e2) }
  | e=AppExpr { e }
  (* MExpr -> MExpr(e1) MULT AppExpr(e2) and evaluate BinOp (Mult,e1,e2)
    or MExpr -> AppExpr and evaluate e(AppExpr)
  *)

AExpr :
    i=INTV { ILit i }
  | TRUE   { BLit true }
  | FALSE  { BLit false }
  | i=ID   { Var i }
  | LPAREN e=Expr RPAREN { e }

IfExpr :
    IF c=Expr THEN t=Expr ELSE e=Expr { IfExp (c, t, e) }

LetExpr :
    LET x=ID EQ e1=Expr IN e2=Expr { LetExp(x , e1 , e2) }
    (* apply code LetExpr -> LET x = ID EQ e1 = Expr IN e2 = Expr
        and action LetExp(x , e1 ,e2)
    *)

AppExpr :
  e1=AppExpr e2=AExpr { AppExp (e1 , e2) }
  | e=AExpr { e }
  (* AppExpr -> AppExpr(e1) AExpr(e2) and evaluate AppExp(e1 , e2)
     AppExp -> AExpr and evaluate e
  *)

FunExpr :
  FUN x=ID RARROW e=Expr { FunExp (x , e) }
  (* FunExp -> FUN ID(x) RARROW Expr(e) and evaluate FunExp(x , e) *)

(*LetRecExpr :
  LET REC x=ID EQ FUN y=ID RARROW e1=Expr IN e2=Expr { LetRecExp (x , y , e1 , e2) }*)
