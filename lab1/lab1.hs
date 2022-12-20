module Main (main) where

data Ans = TwoRoots {x1, x2 :: Double} | OneRoot {x :: Double} | NoRoots

printAnswer :: Ans -> String
printAnswer NoRoots = "No Solutions"
printAnswer (OneRoot x) = "X is " ++ show x
printAnswer (TwoRoots x1 x2) ="X1 is " ++ show x1 ++ "; X2 is " ++ show x2

solve :: Double -> Double -> Double -> Ans
solve a b c
    | a == 0 || discr < 0 = NoRoots
    | discr > 0 = TwoRoots {x1 = x1, x2 = x2}
    | otherwise = OneRoot {x = x1}
    where
        discr = b^2 - 4 * a * c
        x1 = (-b - sqrt discr) / (2 * a)
        x2 = (-b + sqrt discr) / (2 * a)

main :: IO ()
main = do 
    print "Enter a"
    a <- getLine
    print "Enter b"
    b <- getLine
    print "Enter c"
    c <- getLine
    print . printAnswer $ solve (read a :: Double) (read b :: Double) (read c :: Double)
     