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
