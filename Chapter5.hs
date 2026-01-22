-- HC5T1: Using applyTwice
double :: Int -> Int
double x = x * 2

applyThrice :: ( Int -> Int) -> Int -> Int
applyThrice f x = (f (f ( f x))) 

main :: IO ()
main = do
 print $  (applyThrice double 5)

 -- Output: 40

 -- HC5T2: Filtering Odd Numbers
filterOddNumbers :: [Int] -> [Int]
filterOddNumbers a = filter odd a

main :: IO ()
main = do
 print $ filterOddNumbers [1..30]

-- Output: [1,3,5,7,9,11,13,15,17,19,21,23,25,27,29]

-- HC5T3: Checking for Uppercase Letters
import Data.Char (isUpper)
upperCaseLetter :: String -> Bool
upperCaseLetter  = any isUpper
 
main :: IO ()
main = do
 print $ map upperCaseLetter ["ade", "Bola", "Dayo", "fade", "Dennis"]

-- Output: [False,True,True,False,True]

-- HC5T4: Using Lambda Functions
biggerThan10 :: [Int] -> Bool
biggerThan10 x = any (\x -> x > 10) x

main :: IO ()
main = do
 print $ biggerThan10 [1..15]
 print $ biggerThan10 [1..10]

-- Output:
True
False

-- HC5T5: Partial Application
multiplyByFive :: Int -> Int
multiplyByFive = (* 5) 

main :: IO ()
main = do
 print $ multiplyByFive 7

-- Output: 35

-- HC5T6: Function Composition 
squareEvenNumbers :: [Int] -> [Int]
squareEvenNumbers = filter even . map (^ 2) 

main :: IO ()
main = do
 print $ squareEvenNumbers [1..15]

-- Output : [4,16,36,64,100,144,196]

-- HC5T7: The $ Operator
result :: [Int] -> Int
result x = sum $ map (*2) $ filter (>3) $ x

main :: IO ()
main = do
 print $ result [1..10]

-- Output : 98

-- HC5T8: Point-Free Style
addFive :: Int -> Int
addFive = (+ 5)

main :: IO ()
main = do
 print $ addFive 8

-- Output: 13

-- HC5T9: Higher-Order Function to Transform a List
transformList :: (Int -> Int) -> [Int] -> [Int]
transformList f xs = map (applyTwice f) xs

applyTwice :: (y -> y) -> y -> y
applyTwice f xs = f (f xs)

main :: IO ()
main = do
 print $ transformList (*2) [1..4]

-- Output: [4,8,12,16]

-- HC5T10: Combining Higher-Order Functions
hasSquareGreaterThan50 :: [Int] -> Bool
hasSquareGreaterThan50 xs = any (>50) (map (^2) (filter (/= 0)  xs))

main :: IO ()
main = do
 print $ hasSquareGreaterThan50 [7..10]
 print $ hasSquareGreaterThan50 [2..6]

 -- Output:
True
False
