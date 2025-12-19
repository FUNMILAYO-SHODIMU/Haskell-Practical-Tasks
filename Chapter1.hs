-- double multiplies a number by 2 

double :: Num a => a -> a
double x = x * 2

main :: IO ()
main = print (double 10)
 
Output:

20

