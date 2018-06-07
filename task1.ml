let usdollar_of_yen y = floor (float_of_int y /. 111.12 *. 100.0 +. 0.5) /.100.0;;
usdollar_of_yen 120;;

let capitalize letter = Char.uppercase letter;;
capitalize '1';;
