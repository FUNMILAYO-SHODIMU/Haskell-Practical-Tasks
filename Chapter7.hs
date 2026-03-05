-- Define the Color data type
data Color = Red | Green | Blue

-- Manually implement the Eq typeclass
instance Eq Color where
  Red   == Red   = True
  Green == Green = True
  Blue  == Blue  = True
  _     == _     = False

main :: IO ()
main = do
 putStrLn "Testing Eq instance for color:"
 print $ (Red   == Red)    
 print $ (Green == Green)  
 print $ (Blue  == Blue)   
 print $ (Red   == Blue)   
 print $ (Green == Blue)   
 print $ (Red   /= Blue)   

 -- Output :
 Testing Eq instance for color:
True
True
True
False
False
True
