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

