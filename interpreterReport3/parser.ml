
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | TRUE
    | THEN
    | SEMISEMI
    | RPAREN
    | REC
    | RARROW
    | PLUS
    | OR
    | MULT
    | LT
    | LPAREN
    | LET
    | INTV of (
# 17 "parser.mly"
       (int)
# 23 "parser.ml"
  )
    | IN
    | IF
    | ID of (
# 18 "parser.mly"
       (Syntax.id)
# 30 "parser.ml"
  )
    | FUN
    | FALSE
    | EQ
    | ELSE
    | AND
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState66
  | MenhirState62
  | MenhirState52
  | MenhirState50
  | MenhirState47
  | MenhirState44
  | MenhirState42
  | MenhirState32
  | MenhirState29
  | MenhirState25
  | MenhirState24
  | MenhirState21
  | MenhirState20
  | MenhirState18
  | MenhirState15
  | MenhirState11
  | MenhirState9
  | MenhirState2
  | MenhirState0

# 1 "parser.mly"
  
open Syntax

# 77 "parser.ml"

let rec _menhir_goto_toplevel : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "parser.mly"
      (Syntax.program)
# 82 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv287) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 21 "parser.mly"
      (Syntax.program)
# 91 "parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv285) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 21 "parser.mly"
      (Syntax.program)
# 99 "parser.ml"
    )) : (
# 21 "parser.mly"
      (Syntax.program)
# 103 "parser.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv286)) : 'freshtv288)

and _menhir_run52 : _menhir_env -> ((('ttv_tail * _menhir_state) * (
# 18 "parser.mly"
       (Syntax.id)
# 110 "parser.ml"
))) * _menhir_state * 'tv_Expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | FUN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | ID _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | IF ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | INTV _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | LET ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | LPAREN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52

and _menhir_run47 : _menhir_env -> ((((((('ttv_tail * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 140 "parser.ml"
)))) * (
# 18 "parser.mly"
       (Syntax.id)
# 144 "parser.ml"
))) * _menhir_state * 'tv_Expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | FUN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | ID _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | IF ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | INTV _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | LET ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | LPAREN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_goto_ORExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ORExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv283 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | OR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv277 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FALSE ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | ID _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
        | INTV _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
        | LPAREN ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29) : 'freshtv278)
    | ELSE | IN | RPAREN | SEMISEMI | THEN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv279 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (e : 'tv_ORExpr)) = _menhir_stack in
        let _v : 'tv_Expr = 
# 41 "parser.mly"
             ( e )
# 206 "parser.ml"
         in
        _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv280)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv281 * _menhir_state * 'tv_ORExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv282)) : 'freshtv284)

and _menhir_run32 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_ANDExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | ID _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | INTV _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | LPAREN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32

and _menhir_goto_Expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_Expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv193 * _menhir_state) * (
# 18 "parser.mly"
       (Syntax.id)
# 246 "parser.ml"
        ))) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv191 * _menhir_state) * (
# 18 "parser.mly"
       (Syntax.id)
# 252 "parser.ml"
        ))) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), (x : (
# 18 "parser.mly"
       (Syntax.id)
# 257 "parser.ml"
        ))), _, (e : 'tv_Expr)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_FunExpr = 
# 91 "parser.mly"
                         ( FunExp (x , e) )
# 264 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv189) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_FunExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv187) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_FunExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv185) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((e : 'tv_FunExpr) : 'tv_FunExpr) = _v in
        ((let _v : 'tv_Expr = 
# 37 "parser.mly"
              ( e )
# 281 "parser.ml"
         in
        _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv186)) : 'freshtv188)) : 'freshtv190)) : 'freshtv192)) : 'freshtv194)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv199 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv195 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | FUN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | ID _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
            | IF ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | INTV _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
            | LET ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | LPAREN ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42) : 'freshtv196)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv197 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)) : 'freshtv200)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv205 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv201 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | FUN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | ID _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
            | IF ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | INTV _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
            | LET ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | LPAREN ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState44
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv202)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv203 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)) : 'freshtv206)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv215 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv213 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (c : 'tv_Expr)), _, (t : 'tv_Expr)), _, (e : 'tv_Expr)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_IfExpr = 
# 75 "parser.mly"
                                      ( IfExp (c, t, e) )
# 374 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv211) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_IfExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv209) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_IfExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv207) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((e : 'tv_IfExpr) : 'tv_IfExpr) = _v in
        ((let _v : 'tv_Expr = 
# 33 "parser.mly"
             ( e )
# 391 "parser.ml"
         in
        _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv208)) : 'freshtv210)) : 'freshtv212)) : 'freshtv214)) : 'freshtv216)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv219 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 399 "parser.ml"
        )))) * (
# 18 "parser.mly"
       (Syntax.id)
# 403 "parser.ml"
        ))) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv217 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 417 "parser.ml"
            )))) * (
# 18 "parser.mly"
       (Syntax.id)
# 421 "parser.ml"
            ))) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)) : 'freshtv220)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv229 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 430 "parser.ml"
        )))) * (
# 18 "parser.mly"
       (Syntax.id)
# 434 "parser.ml"
        ))) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv227 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 440 "parser.ml"
        )))) * (
# 18 "parser.mly"
       (Syntax.id)
# 444 "parser.ml"
        ))) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s), (x : (
# 18 "parser.mly"
       (Syntax.id)
# 449 "parser.ml"
        ))), (y : (
# 18 "parser.mly"
       (Syntax.id)
# 453 "parser.ml"
        ))), _, (e1 : 'tv_Expr)), _, (e2 : 'tv_Expr)) = _menhir_stack in
        let _9 = () in
        let _7 = () in
        let _5 = () in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_LetRecExpr = 
# 95 "parser.mly"
                                                     ( LetRecExp (x , y , e1 , e2) )
# 464 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv225) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_LetRecExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv223) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_LetRecExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv221) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((e : 'tv_LetRecExpr) : 'tv_LetRecExpr) = _v in
        ((let _v : 'tv_Expr = 
# 39 "parser.mly"
                 ( e )
# 481 "parser.ml"
         in
        _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv222)) : 'freshtv224)) : 'freshtv226)) : 'freshtv228)) : 'freshtv230)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv233 * _menhir_state) * (
# 18 "parser.mly"
       (Syntax.id)
# 489 "parser.ml"
        ))) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv231 * _menhir_state) * (
# 18 "parser.mly"
       (Syntax.id)
# 503 "parser.ml"
            ))) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)) : 'freshtv234)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv243 * _menhir_state) * (
# 18 "parser.mly"
       (Syntax.id)
# 512 "parser.ml"
        ))) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv241 * _menhir_state) * (
# 18 "parser.mly"
       (Syntax.id)
# 518 "parser.ml"
        ))) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), (x : (
# 18 "parser.mly"
       (Syntax.id)
# 523 "parser.ml"
        ))), _, (e1 : 'tv_Expr)), _, (e2 : 'tv_Expr)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_LetExpr = 
# 78 "parser.mly"
                                   ( LetExp(x , e1 , e2) )
# 531 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv239) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_LetExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv237) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_LetExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv235) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((e : 'tv_LetExpr) : 'tv_LetExpr) = _v in
        ((let _v : 'tv_Expr = 
# 34 "parser.mly"
              ( e )
# 548 "parser.ml"
         in
        _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv236)) : 'freshtv238)) : 'freshtv240)) : 'freshtv242)) : 'freshtv244)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv251 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv247 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv245 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_Expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_AExpr = 
# 72 "parser.mly"
                         ( e )
# 569 "parser.ml"
             in
            _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv246)) : 'freshtv248)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv249 * _menhir_state) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)) : 'freshtv252)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv259 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 584 "parser.ml"
        )))) * (
# 18 "parser.mly"
       (Syntax.id)
# 588 "parser.ml"
        ))) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv255 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 600 "parser.ml"
            )))) * (
# 18 "parser.mly"
       (Syntax.id)
# 604 "parser.ml"
            ))) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv253 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 610 "parser.ml"
            )))) * (
# 18 "parser.mly"
       (Syntax.id)
# 614 "parser.ml"
            ))) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), (x : (
# 18 "parser.mly"
       (Syntax.id)
# 619 "parser.ml"
            ))), (y : (
# 18 "parser.mly"
       (Syntax.id)
# 623 "parser.ml"
            ))), _, (e : 'tv_Expr)) = _menhir_stack in
            let _9 = () in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 21 "parser.mly"
      (Syntax.program)
# 634 "parser.ml"
            ) = 
# 30 "parser.mly"
                                                     ( RecDecl (x , y , e))
# 638 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv254)) : 'freshtv256)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv257 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 648 "parser.ml"
            )))) * (
# 18 "parser.mly"
       (Syntax.id)
# 652 "parser.ml"
            ))) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv258)) : 'freshtv260)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv267 * _menhir_state) * (
# 18 "parser.mly"
       (Syntax.id)
# 661 "parser.ml"
        ))) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv263 * _menhir_state) * (
# 18 "parser.mly"
       (Syntax.id)
# 673 "parser.ml"
            ))) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv261 * _menhir_state) * (
# 18 "parser.mly"
       (Syntax.id)
# 679 "parser.ml"
            ))) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 18 "parser.mly"
       (Syntax.id)
# 684 "parser.ml"
            ))), _, (e : 'tv_Expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 21 "parser.mly"
      (Syntax.program)
# 692 "parser.ml"
            ) = 
# 26 "parser.mly"
                                 ( Decl (x , e) )
# 696 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv262)) : 'freshtv264)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv265 * _menhir_state) * (
# 18 "parser.mly"
       (Syntax.id)
# 706 "parser.ml"
            ))) * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv266)) : 'freshtv268)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv275 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv271 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv269 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_Expr)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 21 "parser.mly"
      (Syntax.program)
# 726 "parser.ml"
            ) = 
# 25 "parser.mly"
                    ( Exp e )
# 730 "parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv270)) : 'freshtv272)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv273 * _menhir_state * 'tv_Expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv274)) : 'freshtv276)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ANDExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ANDExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv177 * _menhir_state * 'tv_ORExpr)) * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | IN | OR | RPAREN | SEMISEMI | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv173 * _menhir_state * 'tv_ORExpr)) * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (l : 'tv_ORExpr)), _, (r : 'tv_ANDExpr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_ORExpr = 
# 59 "parser.mly"
                          ( BinOp (Or , l , r ) )
# 763 "parser.ml"
             in
            _menhir_goto_ORExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv174)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv175 * _menhir_state * 'tv_ORExpr)) * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)) : 'freshtv178)
    | MenhirState0 | MenhirState66 | MenhirState62 | MenhirState2 | MenhirState50 | MenhirState52 | MenhirState9 | MenhirState47 | MenhirState11 | MenhirState42 | MenhirState44 | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv183 * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | IN | OR | RPAREN | SEMISEMI | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv179 * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_ANDExpr)) = _menhir_stack in
            let _v : 'tv_ORExpr = 
# 60 "parser.mly"
              ( e )
# 788 "parser.ml"
             in
            _menhir_goto_ORExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv180)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv181 * _menhir_state * 'tv_ANDExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)) : 'freshtv184)
    | _ ->
        _menhir_fail ()

and _menhir_reduce7 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_LTExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (e : 'tv_LTExpr)) = _menhir_stack in
    let _v : 'tv_ANDExpr = 
# 64 "parser.mly"
             ( e )
# 807 "parser.ml"
     in
    _menhir_goto_ANDExpr _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_LTExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_LTExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv161 * _menhir_state * 'tv_LTExpr) = Obj.magic _menhir_stack in
        (_menhir_reduce7 _menhir_env (Obj.magic _menhir_stack) : 'freshtv162)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv165 * _menhir_state * 'tv_ANDExpr)) * _menhir_state * 'tv_LTExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv163 * _menhir_state * 'tv_ANDExpr)) * _menhir_state * 'tv_LTExpr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (l : 'tv_ANDExpr)), _, (r : 'tv_LTExpr)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ANDExpr = 
# 63 "parser.mly"
                           (BinOp(And , l , r))
# 829 "parser.ml"
         in
        _menhir_goto_ANDExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv164)) : 'freshtv166)
    | MenhirState0 | MenhirState66 | MenhirState62 | MenhirState2 | MenhirState52 | MenhirState50 | MenhirState47 | MenhirState9 | MenhirState44 | MenhirState42 | MenhirState11 | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv171 * _menhir_state * 'tv_LTExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE | IN | RPAREN | SEMISEMI | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv167 * _menhir_state * 'tv_LTExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_LTExpr)) = _menhir_stack in
            let _v : 'tv_Expr = 
# 36 "parser.mly"
             ( e )
# 845 "parser.ml"
             in
            _menhir_goto_Expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv168)
        | AND | OR ->
            _menhir_reduce7 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv169 * _menhir_state * 'tv_LTExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)) : 'freshtv172)
    | _ ->
        _menhir_fail ()

and _menhir_run18 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | ID _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | INTV _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | LPAREN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18

and _menhir_goto_PExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_PExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 | MenhirState66 | MenhirState62 | MenhirState2 | MenhirState52 | MenhirState50 | MenhirState47 | MenhirState9 | MenhirState44 | MenhirState42 | MenhirState11 | MenhirState32 | MenhirState29 | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv147 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | ID _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
            | INTV _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
            | LPAREN ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25) : 'freshtv148)
        | PLUS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | AND | ELSE | IN | OR | RPAREN | SEMISEMI | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv149 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_PExpr)) = _menhir_stack in
            let _v : 'tv_LTExpr = 
# 46 "parser.mly"
            ( e )
# 919 "parser.ml"
             in
            _menhir_goto_LTExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv150)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv151 * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)) : 'freshtv154)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv159 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PLUS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | AND | ELSE | IN | OR | RPAREN | SEMISEMI | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv155 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (l : 'tv_PExpr)), _, (r : 'tv_PExpr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_LTExpr = 
# 45 "parser.mly"
                       ( BinOp (Lt, l, r) )
# 945 "parser.ml"
             in
            _menhir_goto_LTExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv156)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv157 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_PExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)) : 'freshtv160)
    | _ ->
        _menhir_fail ()

and _menhir_run20 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_MExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | ID _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | INTV _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | LPAREN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_MExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_MExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv139 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | AND | ELSE | IN | LT | OR | PLUS | RPAREN | SEMISEMI | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv135 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (l : 'tv_PExpr)), _, (r : 'tv_MExpr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_PExpr = 
# 49 "parser.mly"
                         ( BinOp (Plus, l, r) )
# 1003 "parser.ml"
             in
            _menhir_goto_PExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv136)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv137 * _menhir_state * 'tv_PExpr)) * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)) : 'freshtv140)
    | MenhirState0 | MenhirState66 | MenhirState62 | MenhirState2 | MenhirState52 | MenhirState50 | MenhirState47 | MenhirState9 | MenhirState44 | MenhirState42 | MenhirState11 | MenhirState15 | MenhirState32 | MenhirState29 | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | AND | ELSE | IN | LT | OR | PLUS | RPAREN | SEMISEMI | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv141 * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_MExpr)) = _menhir_stack in
            let _v : 'tv_PExpr = 
# 50 "parser.mly"
            ( e )
# 1028 "parser.ml"
             in
            _menhir_goto_PExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv142)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv143 * _menhir_state * 'tv_MExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)) : 'freshtv146)
    | _ ->
        _menhir_fail ()

and _menhir_goto_AppExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_AppExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv129 * _menhir_state * 'tv_MExpr)) * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FALSE ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | ID _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | INTV _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | LPAREN ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | AND | ELSE | IN | LT | MULT | OR | PLUS | RPAREN | SEMISEMI | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv127 * _menhir_state * 'tv_MExpr)) * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_MExpr)), _, (e2 : 'tv_AppExpr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_MExpr = 
# 53 "parser.mly"
                             ( BinOp (Mult, e1, e2) )
# 1069 "parser.ml"
             in
            _menhir_goto_MExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv128)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv130)
    | MenhirState0 | MenhirState66 | MenhirState62 | MenhirState2 | MenhirState50 | MenhirState52 | MenhirState9 | MenhirState47 | MenhirState11 | MenhirState42 | MenhirState44 | MenhirState15 | MenhirState32 | MenhirState29 | MenhirState25 | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FALSE ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | ID _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
        | INTV _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
        | LPAREN ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState24
        | AND | ELSE | IN | LT | MULT | OR | PLUS | RPAREN | SEMISEMI | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv131 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_AppExpr)) = _menhir_stack in
            let _v : 'tv_MExpr = 
# 54 "parser.mly"
              ( e )
# 1099 "parser.ml"
             in
            _menhir_goto_MExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv132)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24) : 'freshtv134)
    | _ ->
        _menhir_fail ()

and _menhir_goto_AExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_AExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState24 | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_AExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((e2 : 'tv_AExpr) : 'tv_AExpr) = _v in
        ((let (_menhir_stack, _menhir_s, (e1 : 'tv_AppExpr)) = _menhir_stack in
        let _v : 'tv_AppExpr = 
# 84 "parser.mly"
                      ( AppExp (e1 , e2) )
# 1125 "parser.ml"
         in
        _menhir_goto_AppExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv120)) : 'freshtv122)
    | MenhirState0 | MenhirState66 | MenhirState62 | MenhirState2 | MenhirState50 | MenhirState52 | MenhirState9 | MenhirState47 | MenhirState11 | MenhirState42 | MenhirState44 | MenhirState15 | MenhirState29 | MenhirState32 | MenhirState25 | MenhirState18 | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_AExpr) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((e : 'tv_AExpr) : 'tv_AExpr) = _v in
        ((let _v : 'tv_AppExpr = 
# 85 "parser.mly"
            ( e )
# 1140 "parser.ml"
         in
        _menhir_goto_AppExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv124)) : 'freshtv126)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv81 * _menhir_state) * (
# 18 "parser.mly"
       (Syntax.id)
# 1152 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv83 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 1161 "parser.ml"
        )))) * (
# 18 "parser.mly"
       (Syntax.id)
# 1165 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv85 * _menhir_state) * (
# 18 "parser.mly"
       (Syntax.id)
# 1174 "parser.ml"
        ))) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv87 * _menhir_state) * (
# 18 "parser.mly"
       (Syntax.id)
# 1183 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv89 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 1192 "parser.ml"
        )))) * (
# 18 "parser.mly"
       (Syntax.id)
# 1196 "parser.ml"
        ))) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv91 * _menhir_state) * _menhir_state * 'tv_Expr)) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv93 * _menhir_state) * _menhir_state * 'tv_Expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * 'tv_ANDExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state * 'tv_ORExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv103 * _menhir_state * 'tv_MExpr)) * _menhir_state * 'tv_AppExpr) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv105 * _menhir_state * 'tv_MExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv107 * _menhir_state * 'tv_PExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv109 * _menhir_state) * (
# 18 "parser.mly"
       (Syntax.id)
# 1250 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv113 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 1264 "parser.ml"
        )))) * (
# 18 "parser.mly"
       (Syntax.id)
# 1268 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv118)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv79) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_AExpr = 
# 69 "parser.mly"
           ( BLit true )
# 1292 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv80)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | FUN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | ID _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | IF ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | INTV _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | LET ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | LPAREN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 18 "parser.mly"
       (Syntax.id)
# 1335 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv49 * _menhir_state) * (
# 18 "parser.mly"
       (Syntax.id)
# 1346 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | FUN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | ID _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
            | IF ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | INTV _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
            | LET ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | LPAREN ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv50)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv51 * _menhir_state) * (
# 18 "parser.mly"
       (Syntax.id)
# 1378 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)) : 'freshtv54)
    | REC ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv71 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_v : (
# 18 "parser.mly"
       (Syntax.id)
# 1394 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv67 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 1405 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | FUN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv63 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 1415 "parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ID _v ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv59 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 1425 "parser.ml"
                        )))) = Obj.magic _menhir_stack in
                        let (_v : (
# 18 "parser.mly"
       (Syntax.id)
# 1430 "parser.ml"
                        )) = _v in
                        ((let _menhir_stack = (_menhir_stack, _v) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | RARROW ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : ((((('freshtv55 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 1441 "parser.ml"
                            )))) * (
# 18 "parser.mly"
       (Syntax.id)
# 1445 "parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            match _tok with
                            | FALSE ->
                                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                            | FUN ->
                                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                            | ID _v ->
                                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
                            | IF ->
                                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                            | INTV _v ->
                                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
                            | LET ->
                                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                            | LPAREN ->
                                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                            | TRUE ->
                                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv56)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : ((((('freshtv57 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 1477 "parser.ml"
                            )))) * (
# 18 "parser.mly"
       (Syntax.id)
# 1481 "parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)) : 'freshtv60)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv61 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 1492 "parser.ml"
                        )))) = Obj.magic _menhir_stack in
                        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)) : 'freshtv64)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv65 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 1503 "parser.ml"
                    ))) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)) : 'freshtv68)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv69 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 1514 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)) : 'freshtv72)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv73 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)) : 'freshtv76)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "parser.mly"
       (int)
# 1536 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv47) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 17 "parser.mly"
       (int)
# 1546 "parser.ml"
    )) : (
# 17 "parser.mly"
       (int)
# 1550 "parser.ml"
    )) = _v in
    ((let _v : 'tv_AExpr = 
# 68 "parser.mly"
           ( ILit i )
# 1555 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv48)

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | FUN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | ID _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | IF ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | INTV _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | LET ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | LPAREN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 18 "parser.mly"
       (Syntax.id)
# 1589 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv45) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 18 "parser.mly"
       (Syntax.id)
# 1599 "parser.ml"
    )) : (
# 18 "parser.mly"
       (Syntax.id)
# 1603 "parser.ml"
    )) = _v in
    ((let _v : 'tv_AExpr = 
# 71 "parser.mly"
           ( Var i )
# 1608 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv46)

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 18 "parser.mly"
       (Syntax.id)
# 1624 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv37 * _menhir_state) * (
# 18 "parser.mly"
       (Syntax.id)
# 1635 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | FUN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | ID _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
            | IF ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | INTV _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
            | LET ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | LPAREN ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv38)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv39 * _menhir_state) * (
# 18 "parser.mly"
       (Syntax.id)
# 1667 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)) : 'freshtv42)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv35) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_AExpr = 
# 70 "parser.mly"
           ( BLit false )
# 1689 "parser.ml"
     in
    _menhir_goto_AExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv36)

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

and toplevel : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 21 "parser.mly"
      (Syntax.program)
# 1708 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv33) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INTV _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv5 * _menhir_state) = Obj.magic _menhir_stack in
            let (_v : (
# 18 "parser.mly"
       (Syntax.id)
# 1751 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv1 * _menhir_state) * (
# 18 "parser.mly"
       (Syntax.id)
# 1762 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | FALSE ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                | FUN ->
                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                | ID _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
                | IF ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                | INTV _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
                | LET ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                | LPAREN ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                | TRUE ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState66
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv2)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv3 * _menhir_state) * (
# 18 "parser.mly"
       (Syntax.id)
# 1794 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv4)) : 'freshtv6)
        | REC ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv27 * _menhir_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv23 * _menhir_state)) = Obj.magic _menhir_stack in
                let (_v : (
# 18 "parser.mly"
       (Syntax.id)
# 1810 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | EQ ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv19 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 1821 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | FUN ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((('freshtv15 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 1831 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | ID _v ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((('freshtv11 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 1841 "parser.ml"
                            )))) = Obj.magic _menhir_stack in
                            let (_v : (
# 18 "parser.mly"
       (Syntax.id)
# 1846 "parser.ml"
                            )) = _v in
                            ((let _menhir_stack = (_menhir_stack, _v) in
                            let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            match _tok with
                            | RARROW ->
                                let (_menhir_env : _menhir_env) = _menhir_env in
                                let (_menhir_stack : ((((('freshtv7 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 1857 "parser.ml"
                                )))) * (
# 18 "parser.mly"
       (Syntax.id)
# 1861 "parser.ml"
                                )) = Obj.magic _menhir_stack in
                                ((let _menhir_env = _menhir_discard _menhir_env in
                                let _tok = _menhir_env._menhir_token in
                                match _tok with
                                | FALSE ->
                                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                                | FUN ->
                                    _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                                | ID _v ->
                                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
                                | IF ->
                                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                                | INTV _v ->
                                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
                                | LET ->
                                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                                | LPAREN ->
                                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                                | TRUE ->
                                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                                | _ ->
                                    assert (not _menhir_env._menhir_error);
                                    _menhir_env._menhir_error <- true;
                                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62) : 'freshtv8)
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                let (_menhir_env : _menhir_env) = _menhir_env in
                                let (_menhir_stack : ((((('freshtv9 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 1893 "parser.ml"
                                )))) * (
# 18 "parser.mly"
       (Syntax.id)
# 1897 "parser.ml"
                                )) = Obj.magic _menhir_stack in
                                ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)) : 'freshtv12)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((('freshtv13 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 1908 "parser.ml"
                            )))) = Obj.magic _menhir_stack in
                            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)) : 'freshtv16)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((('freshtv17 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 1919 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)) : 'freshtv20)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv21 * _menhir_state)) * (
# 18 "parser.mly"
       (Syntax.id)
# 1930 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)) : 'freshtv24)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv25 * _menhir_state)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)) : 'freshtv28)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv29 * _menhir_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)) : 'freshtv32)
    | LPAREN ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv34))

# 219 "/Users/ieduuser/.opam/system/lib/menhir/standard.mly"
  


# 1961 "parser.ml"
