-- HC5T1: Using applyTwice
double :: Int -> Int
double x = x * 2

applyThrice :: ( Int -> Int) -> Int -> Int
applyThrice f x = (f (f ( f x))) 

main :: IO ()
main = do
 print $  (applyThrice double 5)

 -- Output: 40
