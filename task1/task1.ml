let usdollar_of_yen y = floor (float_of_int y /. 111.12 *. 100.0 +. 0.5) /.100.0;;
(*usdollar_of_yen 120;;*)

let capitalize letter = Char.uppercase letter;;
(*capitalize '1';;*)

let rec pow1 (x , n )=
  if n>0 then x *. pow1 ( x ,n-1) else 1.0;;
(*pow1 (5.0 , 4)*)

let rec pow2 (x , n ) =
  if n = 0 then 1.0
  else if n mod 2 = 0 then pow2(x *. x , n/2)
  else x *. pow2(x *. x,n/2) ;;
(*pow2 (5.0 , 4);;*)
(*pow2 (2.0 , 5);;*)

let rec gcd (a,b) =
  if b=0 then a else gcd (b, a mod b);;
(*gcd (42,30);;
gcd (15,70);;*)

let rec comb (n,m) =
 if(m = n || m=0) then 1
 else comb(n-1,m)+comb(n-1,m-1) ;;
(*comb (5,2);;*)

let fib_iter n =
      let rec iterfib(i, x, y) =
          if n = i then x
          else iterfib(i+1, x + y, x)
      in
      iterfib(1, 1, 0);;
(*fib_iter 7;;*)

let rec max_ascii str =
      let rec _max_ascii(i, max) =
          if i = String.length str then max
          else
              let len = int_of_char str.[i] in
              _max_ascii(i+1, if len > max then len else max)
      in
      char_of_int (_max_ascii (0, 0));;
(*max_ascii "abcde";;*)

let integral f a b =
    let rec _integral(i,s, a , b ,n) =
      let d =  (b -. a) /. float_of_int(n) in
        if i = n+1 then s
        else _integral(i+1 , s +. ((f(a +. float_of_int(i-1) *. d) +. f( a +. float_of_int(i) *.d)) *.d) /. 2.0 , a,b,n)
  in _integral(1 , 0.0 ,a,b, 1000000 );;

(*integral sin 0.0 3.14;;*)

(*let curry f x y = f (x, y);;*)
let uncurry f (x , y) = f x y;;
(*let average(x , y) = (x +. y) /. 2.0;;
let curried_avg = curry average;;
let avg = uncurry curried_avg  in avg (4.0 , 5.3);;*)

let rec repeat f n x =
  if n > 0 then repeat f (n-1) (f x) else x;;
let fib_repeat n =
  let (fibn , _) = repeat (fun (x,y) -> (x+y , x)) n (0 , 1)
  in fibn;;
(*fib 9;;*)

(*Ex 4.7*)
let k x y = x;;
let s x y z = x z (y z);;
let second x y = k (s k k) x y;;
(*subscription
s k k 1　はまず　k 1 (k 1) と評価され、 kの式よりこれは、1と評価される*)


(*let rec downto0 = function
  0 -> [0;]
  |n -> n:: downto0 (n-1);;
downto0 5;;*)

let rec roman dict n =
  match dict with
  [] -> ""
  |(n' , s) :: rest when n >= n' ->s^roman dict (n-n')
  |(n' , s) :: rest -> roman rest n;;

let rec concat l = List.fold_left(@) [] l;;
(*concat [[0; 3; 4;];[2];[5;0];[]];;*)

let rec zip l1 l2 =
  match (l1 , l2) with
  |(x :: xrest , y::yrest) -> (x,y) ::zip xrest yrest
  |(_ , _) -> [];;

let rec filter f = function
  [] -> []
  |x:: rest when f x -> x::filter  f rest
  |x :: rest ->filter f rest ;;

let rec quicker l sorted =
  match l with
  [] -> sorted
  |x :: xs ->
    let rec partition left right = function
    [] -> quicker left (x:: (quicker right sorted))
    |y::ys -> if x < y then partition left (y :: right) ys
              else partition(y::left) right ys
    in partition [] [] xs;;





(*let rec quick = function
  [] -> []
  |[x] -> [x]
  |x::xs ->
    let rec partition left right = function
      [] -> (quick left) @ (x :: quick right)
      |y::ys -> if x < y then partition left (y :: right) ys
                else partition(y::left) right ys
      in partition [] [] xs;;*)

(*quicker [10; 9; 8; 11; 1] [];;*)

type nat = Zero|OneMoreThan of nat;;

let rec int_of_nat n = match n with
  Zero -> 0
  |OneMoreThan n' -> int_of_nat n' + 1;;
(*let two = OneMoreThan(OneMoreThan Zero);;
int_of_nat Zero;;*)

let rec add m n =
  match m with
  Zero -> n
  |OneMoreThan m' -> OneMoreThan(add m' n);;

let rec  mul m n =
  match m with Zero ->  Zero
  |OneMoreThan m' -> add (mul m' n ) n ;;
(*mul two two;;*)

let rec monus m n =
  match n with
  Zero -> m
  |OneMoreThan n' -> match m with
                    Zero -> Zero
                    |OneMoreThan m' -> monus m' n' ;;
(*monus two Zero;;*)

type 'a tree = Lf | Br of 'a * 'a tree * 'a tree;;
(*let comptree = Br ( 1 , Br(2,Br(4,Lf,Lf),Br(5,Lf,Lf)) , Br(3,Br(6,Lf,Lf),Br(7,Lf,Lf)) )*)

let rec reflect t =
  match t with
  Lf -> Lf
  |Br(x,left,right) -> Br(x , reflect right , reflect left);;


(*reflect comptree;;*)

let  rec preorder = function
  Lf -> []
  |Br(x,left,right) ->  (preorder left)@ [x]  @(preorder right) ;;

(*preorder ( comptree);;*)

(* answer
  preorder(reflect(t)) = reverse(postorder(t))[1; 3; 7; 6; 2; 5; 4]
  inorder(reflect(t)) = reverse(inorder(t))[7; 3; 6; 1; 5; 2; 4]
  postorder(reflect(t)) = reverse(preorder(t))[7; 6; 5; 4; 3; 2; 1]
*)

type 'a seq = Cons of 'a * (unit -> 'a seq);;

let rec from n = Cons (n , fun () -> from (n+1));;

from 2;;

let head (Cons (x , _)) = x;;

let tail(Cons(_, f))= f();;

let rec take n s =
  if n = 0 then []
  else head s :: take (n-1) (tail s);;

let rec sift n (Cons(x , f)) =
 if x mod n = 0 then sift n (f())
 else Cons (x , fun () -> sift n (f()));;

let rec sieve (Cons (x , f)) =
  Cons (x , fun () -> sieve (sift x (f())));;

let primes = sieve (from 2);;

take 20 primes;;

type ('a , 'b) sum = Left of 'a | Right of 'b;;

let  f1 (apple , select) =
 match select with
 Left i  ->   Left (apple , i)
 |Right  j -> Right (apple , j);;

let f2 (abstract , compactdisc) =
match abstract with
Left l -> (match compactdisc with
          Left le -> Left (Left (l , le))
          |Right ri -> Right (Left(l , ri)))
|Right r -> (match compactdisc with
           Left le -> Right (Right (r , le))
           |Right ri ->  Left (Right (r , ri)));;

(*let x = ref 3;;*)
let incr i = i := (!i)+1;;
(*incr x;;
!x;;*)

let fact_imp n =
  let i = ref n and res = ref 1 in
    while (!i >= 1) do
     res := !res * !i;
     i := (!i) - 1;
    done;
    !res;;

(*fact_imp 6;;*)

(* Ex.7.6
  はじめ、x(ref [])の型は'_weak1 listという弱い多相型となる。
　これは、[]に型のある値がconsされるとxの型は、consする値の型に「一度だけ」変わる。
　だから、[]に1がconsされた時点で型はint listに変更され変わらなくなるため、
　trueを[1]にconsしようとすると型エラーとなり、consできない。
*)

let rec change = function
  (_ , 0) -> []
  |((c::rest) as coins , total) ->
    if c > total then change (rest , total)
    else
      (try
        c :: change (coins , total - c)
        with (Failure "change") -> change(rest , total))
  |_ -> raise (Failure "change");;
change ([5; 2] , 16);;
