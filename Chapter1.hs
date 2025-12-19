-- double multiplies a number by 2 

double :: Num a => a -> a
double x = x * 2

main :: IO ()
main = print (double 10)
 
Output: 20

-- increment increase a number by 1

increase :: Num a => a -> a
increase x = x + 1

main :: IO ()
main = print (increase 4)

 Output: 5

-- doubleThenIncrement: Uses function composition to apply double first and then increment.

double :: Num a => a -> a
double x = x * 2

increment :: Num a => a -> a
increment x = x + 1

doubleThenIncrement :: Num a => a -> a
doubleThenIncrement = increment . double

main :: IO ()
main = do
    print (doubleThenIncrement 7)
 
Output: 15

{- 
   Write a function circleArea that calculates the area of 
   a circle given the radius. 
   Ensure that it’s pure and does not depend 
   on any external state.
   -}
circleArea :: Floating a => a -> a
circleArea r = pi * r * r

main :: IO ()
main = do
    print (circleArea 4)

    Output: 50.26548245743669

 -- Checking if a Number is Greater than 18
greaterThan18 x = x > 18

main :: IO ()
main = do
    print (greaterThan18 19)

    Output: True

-- Takes a list of tuples ((name, score)) and extracts the player names.

extractPlayers :: [(String, Int)] -> [String]
extractPlayers = map fst 
   
main :: IO ()
main = do
    let players = [ ("Ade", 87) , ("Femi", 80) , ("Jide",68) ,  ("Sam", 85)]
   
    print (extractPlayers players) 

    Output: ["Ade","Femi","Jide","Sam"]

--  Sorts the list of players by score in descending order.
import Data.List (sortBy)
import Data.Ord (comparing)

sortByScore :: [(String, Int)] -> [(String, Int)]
sortByScore = sortBy (flip (comparing snd))

main :: IO ()
main = do
    let players = [ ("Ade", 87) , ("Femi", 80) , ("Jide",68) ,  ("Sam", 85)]
   
    print (sortByScore players) 

Output: [("Ade",87),("Sam",85),("Femi",80),("Jide",68)]

-- topThree: Returns the top three players.
topThree :: [a] -> [a]
topThree = take 3

main :: IO ()

main = do

  let players = [ ("Ade", 87) , ("Femi", 80) , ("Jide",68) ,  ("Sam", 85)]
   
  print (topThree players)

  Output: [("Ade",87),("Femi",80),("Jide",68)]

-- Compose these functions into getTopThreePlayers.
import Data.List (sortBy)
import Data.Ord (comparing)

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
   
  print (getTopThreePlayers players)

  Output: ["Ade","Sam","Femi"]

  infiniteNumbers = [1..]
getFirstN n = take n infiniteNumbers

main :: IO()

main = do

    print (getFirstN 16)

    Output: [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
