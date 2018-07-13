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

(* eqs_of_subst : subst -> (ty * ty) list
  型代入を型の等式集合に変換 *)
let eqs_of_subst s =
  let f  = fun (tyvar , ty) -> (TyVar tyvar , ty)
  in List.map f s

let subst_eqs s eqs =
    let f x =  (subst_type s (fst x) , subst_type s (snd x))
    in List.map f eqs

let rec unify l :subst = match l with
  [] -> []
  | x::rest -> if fst x = snd x then unify rest

              else match x with
              (TyFun (ty11 , ty12) , TyFun (ty21 , ty22)) ->
               unify ((ty11,ty21)::(ty12 , ty22)::rest)
              | (TyVar tyv , ty1) -> (if not(MySet.member  tyv (freevar_ty ty1 ))
              then (tyv , ty1)::unify((subst_eqs [( tyv , ty1)] rest))

              else err("Cannot unify")
              )
              | (ty1 , TyVar tyv) -> (if not(MySet.member tyv (freevar_ty ty1 ))
              then (tyv , ty1)::unify((subst_eqs [( tyv , ty1)] rest ))
              else err ("Cannot unify"))
              |_ -> err("Cannot unify")

let ty_prim op ty1 ty2 = match op with
  Plus -> ([(ty1 , TyInt); (ty2 , TyInt)] , TyInt)
| Mult -> ([(ty1 , TyInt); (ty2 , TyInt)] , TyInt)
| Lt   -> ([(ty1 , TyInt); (ty2 , TyInt)] , TyBool)
| Or   -> ([(ty1 , TyBool); (ty2 , TyBool)] , TyBool)
| And  -> ([(ty1 , TyBool); (ty2 , TyBool)] , TyBool)
(*| _ -> err "Not Implemented !"*)

(*let ty_if ty1 ty2 ty3 = match ty1 with
  TyBool -> ( match ty2 , ty3 with
    TyBool , TyBool -> TyBool
    | TyInt , TyInt  -> TyInt
    | _ , _ -> err ("type error") )
  | _ -> err ("type error")*)




let rec ty_exp tyenv = function
  Var x ->
    (try ([] , Environment.lookup x tyenv) with
        Environment.Not_bound -> err ("variable not bound: " ^ x))
  | ILit _ -> ([] , TyInt)
  | BLit _ -> ([] , TyBool)
  | BinOp (op , exp1 , exp2) ->
          let (s1 , ty1) = ty_exp tyenv exp1 in
          let (s2 , ty2) = ty_exp tyenv exp2 in
            let (eqs3 , ty) = ty_prim op ty1 ty2 in
            let eqs = (eqs_of_subst s1) @ (eqs_of_subst s2) @ eqs3 in
            let s3 = (unify eqs) in (s3 , subst_type s3 ty)
  | IfExp (exp1 , exp2 , exp3) ->
          let (s1 , ty1) = ty_exp tyenv exp1 in
          let (s2 , ty2) = ty_exp tyenv exp2 in
          let (s3 , ty3) = ty_exp tyenv exp3 in
            let eqs4 = [(ty1 , TyBool); (ty2 , ty3)] in
            let eqs = eqs4 @ (eqs_of_subst s1) @ (eqs_of_subst s2) @ (eqs_of_subst s3) in
            let s4 = unify eqs
              in (s4 , subst_type s4 ty2)


          (*let tyarg1 = ty_exp tyenv exp1 in
          let tyarg2 = ty_exp tyenv exp2 in
          let tyarg3 = ty_exp tyenv exp3 in
            ty_if tyarg1 tyarg2 tyarg3*)
  | LetExp (id , exp1 , exp2) ->
          let (s1 , ty1) = ty_exp tyenv exp1 in
          let (s2 , ty2) = ty_exp (Environment.extend id ty1 tyenv) exp2 in
            let eqs = (eqs_of_subst s1) @ (eqs_of_subst s2) in
            let s3 = unify eqs
              in (s3 , subst_type s3 ty2)

          (*let tyarg1 = ty_exp tyenv exp1 in
          let tyarg2 = ty_exp (Environment.extend id tyarg1 tyenv) exp2 in
            ty_let tyarg1 tyarg2*)

  | FunExp (id , exp) ->
    let domty = TyVar (fresh_tyvar ()) in
    let (s , ranty) =
      ty_exp (Environment.extend id domty tyenv ) exp in
      (s , TyFun (subst_type s domty , ranty))

  | AppExp (exp1 , exp2) ->
    let t1 = TyVar (fresh_tyvar()) in
    let t2 = TyVar (fresh_tyvar()) in
    let (s1 , ty1) = ty_exp tyenv exp1 in
    let (s2 , ty2) = ty_exp tyenv exp2 in
      let eqs = (eqs_of_subst s1) @ (eqs_of_subst s2) @ [(ty1 , TyFun ( t1,t2 )); (ty2 ,t1)] in
        let s3 = unify eqs
        in (s3 , subst_type s3  t2)

  | _ -> err ("Not Implemented")

let ty_decl tyenv = function
  Exp e -> ty_exp tyenv e
  | _ -> err ("Not Implemented!")
