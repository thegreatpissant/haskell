-- baby.hs

doubleMe x = x + x

doubleUs x y = x * 2 + y * 2

doubleUs' x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                      then x
                      else x+2
                                     
doubleSmallNumber' x = (if x > 100 then x else x+2) + 1

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x ]

notAll = [ x | x <- [10..20], x /= 13, x /= 15, x /= 19]

length' xs = sum [ 1 | _ <- xs]

removeNonUppercase st = [ c | c <- st, elem c ['A'..'Z']]

rightTriangles' = [ (a, b, c) | a <- [1..10], b <- [1..10], c <- [1..10], a^2 + b^2 == c^2, a+b+c == 24, a < b]