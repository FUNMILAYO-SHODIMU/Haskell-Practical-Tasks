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
