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
