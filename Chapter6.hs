-- HC6T1: Factorial (Recursive)
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)

main :: IO ()
main = do
 print $ factorial 8

-- Output: 40320

-- HC6T2: Fibonacci (Recursive)
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

main :: IO ()
main = do
 print $ fibonacci 6

-- Output: 8

-- HC6T3: Sum of Elements Using foldr
sumList :: [Int] -> Int
sumList = foldr (+) 0

main :: IO ()
main = do
 print $ sumList [2..8]

-- Output: 35

-- HC6T4: Product of Elements Using foldl
productList :: [Int] -> Int
productList = foldr (*) 1

main :: IO ()
main = do
 print $ productList [2..6]

-- Output: 720

-- HC6T5: Reverse a List (Recursive)
reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

main :: IO ()
main = do
 print $ reverse' [1,2,3,4,5]

-- Output: [5,4,3,2,1]

--HC6T6: Element Exists in List
elementExists :: Eq a => a -> [a] -> Bool
elementExists _ [] = False
elementExists x (y:ys)
 | x == y = True
 | otherwise = elementExists x ys

main :: IO ()
main = do
 print $ elementExists 3 [1,2,3,4,5]
 print $ elementExists 7 [10..15]

-- Output: 
True
False

-- HC6T7: List Length
length' :: [a] -> Int
length' [] = 0
length' (_:xs) = 1 + length xs

main :: IO ()
main = do
 print $ length' [1..12]
 print $ length' []

-- Output
12
0

-- HC6T8: Filter Even Numbers
filterEven :: [Int] -> [Int]
filterEven [] = []
filterEven (x:xs)
 | even x = x :filterEven xs
 | otherwise = filterEven xs


main :: IO ()
main = do
 print $ filterEven [1..14]
 print $ filterEven []

-- Output: 
[2,4,6,8,10,12,14]
[]

-- HC6T9: Map Implementation
mapList :: (a -> b) -> [a] -> [b]
mapList _ [] = []
mapList f (x:xs) = f x : mapList f xs


main :: IO ()
main = do
 print $ mapList (*2) [2,4,6,8]
 print $ mapList (+1) [1,3,5,7]

-- Output: 
[4,8,12,16]
[2,4,6,8]

-- HC6T10: Implement a recursive function that takes a number and returns a list of its digits.
digits :: Int -> [Int]
digits n
 | n < 0 = []
 | n < 10 = [n]
 | otherwise = digits (n `div` 10) ++ [n `mod` 10]

main :: IO ()
main = do
 print $ digits 2468

-- Output: [2,4,6,8]
