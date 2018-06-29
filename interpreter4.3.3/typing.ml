open Syntax

exception Error of string

type subst = ( tyvar * ty ) list

let err s = raise (Error s)

(* Type Environment *)
type tyenv = ty Environment.t

let rec subst_type subst t = match t with
  TyInt -> TyInt
  | TyBool -> TyBool
  | TyVar tyvar ->(match subst with
    [] -> TyVar tyvar
    | [(ty , y)] -> if tyvar = ty then y else TyVar tyvar
    | x::rest -> let newtyvar = if fst x = tyvar then snd x
      else TyVar tyvar
      in subst_type rest newtyvar
    )
  | TyFun (ty1 , ty2) -> TyFun(subst_type subst ty1 , subst_type subst ty2)

(*let eqs_of_subst s = *)

let subst_eqs s eqs =
    let f x =  (subst_type s (fst x) , subst_type s (snd x))
    in List.map f eqs

let rec unify l = match l with
  [] -> []
  | x::rest -> if fst x = snd x then unify rest
              else match x with
              (TyFun (ty11 , ty12) , TyFun (ty21 , ty22)) ->
               unify ((ty11,ty21)::(ty12 , ty22)::rest)
              | (TyVar tyv , ty1) -> if not(MySet.member  tyv (freevar_ty ty1 ))
              then let f x = subst_type [(tyv , ty1)] x
              in List.map f (unify
                (subst_eqs [( tyv , ty1)] rest ))

              else err("Cannot unify")

              | (ty1 , TyVar tyv) -> if not(MySet.member tyv (freevar_ty ty1 ))
              then let f x = subst_type [(tyv , ty1)] x
              in List.map f (unify
                (subst_eqs [( tyv , ty1)] rest ))
              else err ("Cannot unify")
              |_ -> err("Cannot unify")

let ty_prim op ty1 ty2 = match op with
  Plus -> (match ty1 , ty2 with
            TyInt , TyInt -> TyInt
            | _ -> err ("Argument must be of integer:+"))
| Mult -> (match ty1 , ty2 with
            TyInt , TyInt -> TyInt
            | _ -> err ("Argument must be of integer:*"))
| Lt -> (match  ty1 , ty2 with
            TyInt , TyInt -> TyBool
            | _ -> err ("Argument must be of integer:<"))
| Or -> (match ty1 , ty2 with
            TyBool , TyBool -> TyBool
            | _ -> err ("Argument must be of integer:||"))
| And -> (match  ty1 , ty2 with
            TyBool , TyBool -> TyBool
            | _ -> err ("Argument must be of integer:&&"))
(*| _ -> err "Not Implemented !"*)

let ty_if ty1 ty2 ty3 = match ty1 with
  TyBool -> ( match ty2 , ty3 with
    TyBool , TyBool -> TyBool
    | TyInt , TyInt  -> TyInt
    | _ , _ -> err ("type error") )
  | _ -> err ("type error")

let ty_let ty1 ty2 = ty2


let rec ty_exp tyenv = function
  Var x ->
    (try Environment.lookup x tyenv with
        Environment.Not_bound -> err ("variable not bound: " ^ x))
  | ILit _ -> TyInt
  | BLit _ -> TyBool
  | BinOp (op , exp1 , exp2) ->
          let tyarg1 = ty_exp tyenv exp1 in
          let tyarg2 = ty_exp tyenv exp2 in
            ty_prim op tyarg1 tyarg2
  | IfExp (exp1 , exp2 , exp3) ->
          let tyarg1 = ty_exp tyenv exp1 in
          let tyarg2 = ty_exp tyenv exp2 in
          let tyarg3 = ty_exp tyenv exp3 in
            ty_if tyarg1 tyarg2 tyarg3
  | LetExp (id , exp1 , exp2) ->
          let tyarg1 = ty_exp tyenv exp1 in
          let tyarg2 = ty_exp (Environment.extend id tyarg1 tyenv) exp2 in
            ty_let tyarg1 tyarg2
  | _ -> err ("Not Implemented")

let ty_decl tyenv = function
  Exp e -> ty_exp tyenv e
  | _ -> err ("Not Implemented!")
