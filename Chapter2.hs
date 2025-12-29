-- Task 1: Checking Types in GHCi

42 -> Int
3.14 -> Float
"Haskell" -> String
'Z' -> Char
True && False -> Bool

-- Task 2: A function add that takes two Int values and returns their sum
add :: Int -> Int -> Int
add x y = x + y

main :: IO()
main = do
 print $ add 4 2

-- Output: 6

-- Task 2b
isEven :: Int -> Bool
isEven x = x `mod` 2 == 0

main :: IO ()
main = do
  print $ isEven 6
  print $ isEven 9

-- Output: True
-- Output: False

-- Task 2c
concatStrings :: String -> String -> String
concatStrings a b = a ++ " " ++ b

main :: IO ()
main = do
  print $ concatStrings "Great" "One"

-- Output: "Great One"

-- Task 3a : myAge as an Int
myAge :: Int -> Int
myAge x = 30

main :: IO ()
main = do
 print $ myAge 30

-- Output: 30

-- Task 3b : piValue as a Double
piValue :: Double -> Double
piValue pi = 3.142

main :: IO ()
main = do
 print $ piValue 3.142 

-- Output: 3.142

-- Task 3c : greeting as a String
greeting :: String -> String
greeting a = "Hello!" 

main :: IO ()
main = do
 print $ greeting "Hello!"

-- Output: "Hello!"

-- Task 3d : isHaskellFun as a Bool
isHaskellFun :: Bool -> Bool
isHaskellFun a = True

main :: IO ()
main = do
 print $ isHaskellFun True

-- Output: True

-- Task 4i: Use prefix notation for the following infix expressions:
-- 5 + 3
add :: Int -> Int -> Int
add a b = (+) a b

main :: IO()
main = do
 print $ add 5 3

-- Output: 8

-- Task 4ii: Use prefix notation for the following infix expressions:
-- 10 * 4
prod :: Int -> Int -> Int
prod a b = (*) a b

main :: IO()
main = do
 print $ prod 10 4

-- Output: 40

-- Task 4iii: Use prefix notation for the following infix expressions:
-- True && False
display  :: Bool 
display = (&&) True False

main :: IO()
main = do
 print $ display

-- Output: False

-- Task 4iv: Use infix notation for the following prefix expressions:
-- (+) 7 2
add :: Int -> Int -> Int
add x y = x + y

main :: IO()
main = do
 print $ add 7 2

 -- Output: 9

 -- Task 4v: Use infix notation for the following preix expressions:
-- (*) 6 5
prod :: Int -> Int -> Int
prod x y = x * y

main :: IO()
main = do
 print $ prod 6 5

-- Output: 30

-- Task vi: Use infix notation for the following prefix expressions:
-- (&&) True False
display  :: Bool 
display = True && False

main :: IO()
main = do
 print $ display

-- Output: False

-- Task 5i: Write a function circleArea
circleArea :: Float -> Float 
circleArea r = pi * r^2

main :: IO ()
main = do
 let r = 2.5
 let area = circleArea r
 print $ "The area of circle is" ++ " " ++ show area

Output: "The area of circle is 19.634954"

-- Task 5ii: Write a function maxOfThree
maxOfThree :: Int -> Int -> Int -> Int
maxOfThree a b c = a `max` b `max` c

main :: IO ()
main = do
 print $ maxOfThree 12 3 27

-- Output: 27

-- Task 6ii: Define an Integer variable smallNumber with the value 2^62
smallNumber :: Int
smallNumber = 2 ^ 62

main :: IO ()
main = do
    print $ smallNumber

-- Output: 4611686018427387904

-- Task 6ii: Define an Integer variable bigNumber with the value 2^127.
bigNumber :: Integer
bigNumber = 2 ^ 127

main :: IO ()
main = do
    print $ bigNumber

 -- Output: 170141183460469231731687303715884105728

 -- Task 6iii: Try to evaluate 2^64 :: Int in GHCi and note the result.
evaluate :: Int
evaluate = 2 ^ 64

main :: IO ()
main = do
    print $ evaluate

-- Output: 0

 -- Task 7i: Write Boolean expressions that evaluate to:
-- True using &&
evaluate :: Bool -> Bool
evaluate a =  True && True

main :: IO ()
main = do
 print $ evaluate (6 > 5) && (4 == 4)

-- Output: True

-- Task 7ii: Write Boolean expressions that evaluate to:
-- False using ||
evaluate :: Bool -> Bool
evaluate a =  False || False

main :: IO ()
main = do
 print $ evaluate (6 > 9 ) || ( 7 == 6)

-- Output: False

-- Task 7iii: Write Boolean expressions that evaluate to:
-- True using not
evaluate :: Bool 
evaluate =  not (8 < 3)

main :: IO ()
main = do
 print $ evaluate

-- Output: True

-- Task 7: Write Boolean expressions that evaluate to:
-- A comparison that returns False
lessThan13 :: Int -> Bool
lessThan13 a = a < 13

main :: IO ()
main = do
 print $ lessThan13 25 

-- Output: False




