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
