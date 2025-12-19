-- Task 1
-- double: Multiplies a number by 2
double :: Int -> Int
double x = x * 2

main :: IO ()
main = do
 print $ double 7

 -- Output : 14

-- increment: Increases a number by 1.
increment :: Int -> Int
increment x = x + 1

main :: IO ()
main = do
 print $ increment 4

 --Output: 5

-- doubleThenIncrement: Uses function composition to apply double first and then increment.

double :: Int -> Int
double x = x * 2

increment :: Int -> Int
increment x = x + 1

doubleThenIncrement = increment . double

main :: IO ()
main = do
 print $ doubleThenIncrement 3

-- Output: 7

-- Task 2
-- Write a function circleArea that calculates the area of a circle given the radius.
circleArea :: Float -> Float
circleArea radius = pi * radius^2

main :: IO ()
main = do
 let radius = 2
 let area = circleArea radius
 print $ " The area of cirle " ++ "is " ++ show area

   -- Output :  " The area of cirle is 12.566371"

 -- Task 3
-- Checking if a Number is Greater than 18
greaterThan18 :: Int -> Bool
greaterThan18 x = x > 18

main :: IO()
main = do
 print $ greaterThan18 19
 
-- Output: True

-- Task 4a
-- extractPlayers: Takes a list of tuples ((name, score)) and extracts the player names.
extractPlayers :: [(String, Int)] -> [String]
extractPlayers = map fst 
   
main :: IO ()
main = do
  let players = [ ("Ade", 87) , ("Femi", 80) , ("Jide",68) ,  ("Sam", 85)]
  print $ extractPlayers players 
   
-- Output: ["Ade","Femi","Jide","Sam"]

-- Task 4b
-- sortByScore: Sorts the list of players by score in descending order.
import Data.List
import Data.Ord

sortByScore :: [(String, Int)] -> [(String, Int)]
sortByScore = sortBy (flip (comparing snd))

main :: IO ()
main = do
  let players = [ ("Ade", 87) , ("Femi", 80) , ("Jide",68) ,  ("Sam", 85)]
  print $ sortByScore players
  
--Output: [("Ade",87),("Sam",85),("Femi",80),("Jide",68)]

-- Task 4c
-- topThree: Returns the top three players.
topThree :: [a] -> [a]
topThree = take 3

main :: IO ()
main = do
  let players = [ ("Ade", 87) , ("Femi", 80) , ("Jide",68) ,  ("Sam", 85)]
  print $ topThree players
  
 -- Output: [("Ade",87),("Femi",80),("Jide",68)]

-- Task 4c
-- Compose these functions into getTopThreePlayers.
import Data.List
import Data.Ord 

extractPlayers :: [(String, Int)] -> [String]
extractPlayers = map fst

sortByScore :: [(String, Int)] -> [(String, Int)]
sortByScore = sortBy (flip (comparing snd))

topThree :: [a] -> [a]
topThree = take 3

getTopThreePlayers :: [(String, Int)] -> [String]
getTopThreePlayers =
    extractPlayers . topThree . sortByScore


main :: IO ()
main = do
 let players = [ ("Ade", 87) , ("Femi", 80) , ("Jide",68) ,  ("Sam", 85)]
 print $ getTopThreePlayers players

-- Output: ["Ade","Sam","Femi"]

 -- Task 5
-- Create a function infiniteNumbers that generates an infinite list of numbers. Extract only the first n elements.
infiniteNumbers :: [Int]
infiniteNumbers = [1..]

getFirstN :: Int -> [Int]
getFirstN n = take n infiniteNumbers

main:: IO()
main = do
 print $ getFirstN 10
 
 -- Output: [1,2,3,4,5,6,7,8,9,10]

-- Task 6
-- Define a function addNumbers that takes two integers and returns their sum.
addNumbers :: Int -> Int -> Int
addNumbers x y = x + y

main :: IO()
main = do
  print $ addNumbers 6 3

 -- Output: 9

-- Task 7
-- Write a function fToC that converts Fahrenheit to Celsius.
fToC :: Float -> Float
fToC x = (x -32 ) * 5 / 9

main :: IO()
main = do
  print $ fToC 68

-- Output: 20.0

-- Task 8
-- Create a function applyTwice that applies a function twice to an input value.
applyTwice :: Int -> Int
applyTwice x = x^2 

main :: IO()
main = do
  print $ applyTwice 6

    Output: 36
