-- Task 1: Define a weatherReport Function
weatherReport :: String -> String
weatherReport "sunny" = "It's a bright and beautiful day!"
weatherReport "rainy" = "Don't forget your umbrella!"
weatherReport "cloudy" = "A bit gloomy, but no rain yet!"
weatherReport _ = "Weather unknown"

main :: IO ()
main = do
 putStrLn  $ weatherReport "sunny"
 putStrLn  $ weatherReport "snowy"

-- Output:
It's a bright and beautiful day!
Weather unknown

-- Task 2: Define a dayType Function
dayType :: String -> String
dayType "Saturday" = "It's a weekend!"
dayType "Sunday" = "It's a weekend!"
dayType "Monday" = "It's a weekday!"
dayType "Tuesday" = "It's a weekday!"
dayType "Wednesday" = "It's a weekday!"
dayType "Thursday" = "It's a weekday!"
dayType "Friday" = "It's a weekday!"
dayType _ = "Invalid day"

main :: IO ()
main = do
 putStrLn $ dayType "Friday"
 putStrLn  $ dayType "Teacher's day"

-- Output:
It's a weekday!
Invalid day

-- Task 3: Define a gradeComment Function
gradeComment :: Int -> String
gradeComment x
 | x >= 90 || x == 100 = "Excellent!"
 | x >= 70 || x == 89 = "Good job!"
 | x >= 50 || x == 69 = "You passed!"
 | x >= 0 || x == 49 = "Better luck next time."
 | otherwise = "Invalid grade" 
 
main :: IO ()
main = do
 putStrLn $ gradeComment 93
 putStrLn $ gradeComment 80
 putStrLn $ gradeComment 53
 putStrLn $ gradeComment 20
 putStrLn $ gradeComment  (-30)

-- Output:
Excellent!
Good job!
You passed!
Better luck next time.
Invalid grade

-- Task 4: Rewrite specialBirthday using Pattern Matching
specialBirthday :: Int -> String 
specialBirthday 5 = "I am Fabulous" 
specialBirthday 13 = "I am a teenager"
specialBirthday 25 = "Adulthood start"
specialBirthday 50 = "Golden Jubilee Celbration"
specialBirthday _ = "This is my age " 

main :: IO ()
main = do
 putStrLn $ specialBirthday 13
 putStrLn $ specialBirthday 32

-- Output:
I am a teenager
This is my age 

-- Task 5: Add a Catch-All Pattern with a Custom Message
specialBirthday :: Int -> String 
specialBirthday 5 = "I am Fabulous" 
specialBirthday 18 = "I am a teenager"
specialBirthday 25 = "Adulthood start"
specialBirthday 50 = "Golden Jubilee Celbration"
specialBirthday x = "This is my age " ++ show x

main :: IO ()
main = do
 putStrLn $ specialBirthday 18
 putStrLn $ specialBirthday 32

-- Output:
I am a teenager
This is my age 32

-- Task 6: Identify List Contents Using Pattern Matching
whatsInsideThisList :: [Int] -> String
whatsInsideThisList [] = "It's empty!"
whatsInsideThisList [x, y] = "Two elements: " ++ show x ++ " and " ++ show y
whatsInsideThisList (x: rest) = "The first element is " ++ show x ++ ", and there are quite a few more elements"

main :: IO ()
main = do
 putStrLn $ whatsInsideThisList []
 putStrLn $ whatsInsideThisList [2, 3]
 putStrLn $ whatsInsideThisList [3, 5, 7]

-- Output:
It's empty!
Two elements: 2 and 3
The first element is 3, and there are quite a few more elements

-- Task 7: Ignore Elements in a List
firstAndThird :: [a] -> (a, a)
firstAndThird (x:_:z:_) = (x, z)

main :: IO ()
main = do
 print $ (firstAndThird [2, 3, 4, 7])

-- Output: (2,4)

-- Task 8: Extract Values from Tuples
describeTuple ::(Int, Int, Int) -> String
describeTuple (a, b, c) = "The three elements give " ++ show a ++ show b ++ show c
describeTuple _ = "Invalid"

main :: IO ()
main = do
 print (describeTuple (3, 5, 7))
 putStrLn (describeTuple (2, 0, 6))

 -- Output:
"The three elements give 357"
The three elements give 206
