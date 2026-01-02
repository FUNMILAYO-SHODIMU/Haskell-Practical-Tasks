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
