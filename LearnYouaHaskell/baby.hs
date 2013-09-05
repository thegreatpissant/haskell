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

factorial :: Integer -> Integer
factorial n = product [1..n]

circumference :: Float -> Float
circumference r = 2 * pi * r

circumference' :: Double -> Double 
circumference' r = 2 * pi * r

--  Chapter 3

lucky :: Int -> String
lucky 7 = "Lucky Number Seven!"
lucky x = "Sorry, you're out of luck, pal!"

sayMe :: Int -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5"

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Bonnie"
charName 'c' = "Chandler"
charName 'd' = "Danielle"
charName  x  = "YourName"

addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
-- addVectors a b = (fst a + fst b, snd a + snd b)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z


head' :: [a] -> a
head' [] = error "empty headed"
head' (x:_) = x

abbyNormal :: [a] -> a
abbyNormal (xs) = head' xs

add' :: Int -> Int -> Int
add' a b = a + b

tell :: (Show  a ) => [a] -> String
tell [] = "The List is Empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "The list is long, the first two elements are: " ++ show x ++ " and " ++ show y
