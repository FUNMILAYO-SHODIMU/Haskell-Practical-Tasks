-- Task 1 : Check if a number is positive, negative, or zero
checkNumber :: Int -> String
checkNumber n =  if n > 0
 then "Positive"
 else if n < 0
  then "Negative" 
  else "Zero"

main :: IO ()
main = do
 print $ checkNumber 5
 print $ checkNumber (-3)
 print $ checkNumber 0
 
  --Output: 
  "Positive"
  "Negative"
  "Zero"

  -- Task 2: Determine the grade based on a score using guards
grade :: Int -> String
grade score
 | score >= 90 = "A"
 | score >= 80 = "B"
 | score >= 70 = "C"
 | score >= 60 = "D"
 | otherwise = "F"
main :: IO ()
main = do
 print $ grade 95
 print $ grade 72
 print $ grade 50

-- Output:
"A"
"C"
"F"

-- Task 3: Convert an RGB color to a hex string using let bindings

import Text.Printf

rgbToHex :: (Int, Int, Int) -> String
rgbToHex (r, g, b) =
  let rHex = printf "%02X" r
      gHex = printf "%02X" g
      bHex = printf "%02X" b
    in "#"  ++ rHex ++ gHex ++ bHex
    
main :: IO ()
main = do
 print $ rgbToHex (255, 0, 127)
 print $ rgbToHex (0, 255, 64)

-- Output
"#FF007F"
"#00FF40"

-- Task 4: Calculate the area of a triangle using Heron's formula
triangleArea :: Float -> Float -> Float -> Float
triangleArea a b c =
 let s = (a + b + c) / 2
    in sqrt (s * (s - a) * (s - b) * (s - c))
main :: IO ()
main = do
 print $ triangleArea 3 4 5
 print $ triangleArea 7 8 9

-- Output
6.0
26.832815

-- Task 5: Determine the type of a triangle using guards
triangleType :: Float -> Float -> Float -> String
triangleType a b c 
 | a == b && b == c && c == a = "Equilateral"
 | a == b || b == c || a == c = "Isosceles"
 | otherwise = "Scalene"

main :: IO ()
main = do
 print $ triangleType 3 3 3
 print $ triangleType 5 5 8
 print $ triangleType 6 7 8

-- Output
 "Equilateral"
 "Isosceles"
 "Scalene"

 -- Advanced Task 6: Check leap year using if-then-else
isLeapYear :: Int -> Bool
isLeapYear year =
 if year `mod` 400 == 0
  then True
   else if year `mod` 100 == 0 || year `mod` 400 == 0
   then False
    else if year `mod` 4 == 0
    then True
    else False
    
main :: IO ()
main = do
 print $ isLeapYear 2000
 print $ isLeapYear 1900
 print $ isLeapYear 2024

-- Output:
True
False
True

-- Advanced Task 7: Determine the season based on the month using guards
season :: Int -> String
season month
 | month == 12 || month == 1 || month == 2 = "Winter"
 | month == 3 || month == 4 || month == 5 = "Spring"
 | month == 6 || month == 7 || month == 8 = "Summer"
 | month == 9 || month == 10 || month == 11 = "Autumn"
 | otherwise = "Invalid month"
 
main :: IO ()
main = do
 print $ season 3
 print $ season 7
 print $ season 11

-- Output:
"Spring"
"Summer"
"Autumn"

-- Advanced Task 8: Calculate BMI and return category using where
bmiCategory :: Float -> Float -> String
bmiCategory weight height
 | bmi < 18.5 = "Underweight"
 | bmi == 18.5 || bmi <= 24.9 = "Normal"
 | bmi == 25 || bmi <= 29.9 = "Overweight"
 | otherwise = "Obese"
 where bmi = weight / height^2
 
main :: IO ()
main = do
 print $ bmiCategory 70 1.75
 print $ bmiCategory 90 1.8

-- Output:
"Normal"
"Overweight"

-- Advanced Task 9: Find the maximum of three numbers using let
maxOfThree :: Int -> Int -> Int -> Int
maxOfThree a b c =
 let maxAB = max a b
 in max maxAB c
 
main :: IO ()
main = do
 print $ maxOfThree 10 20 15
 print $ maxOfThree 5 25 10

-- Output:
20
25

-- Advanced Task 10: Check if a string is a palindrome using recursion and guards
isPalindrome :: String -> Bool
isPalindrome str
  | length str <= 1 = True
  | head str == last str = isPalindrome (init (tail str))
  | otherwise = False
main :: IO ()
main = do
 print $ isPalindrome "racecar"
 print $ isPalindrome "haskell"
 print $ isPalindrome "madam"

-- Output:
True
False
True
