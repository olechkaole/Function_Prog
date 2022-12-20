main =  do print $ show (path 2 5 [(1,2),(2,3),(1,3),(3,4),(4,2),(5,6)])

path :: Eq a => a -> a -> [(a, a)] -> [[a]]
path x y z
    | x == y = [[y]]
    | otherwise = [ [x] ++ via | gup <- z, (fst gup) == x, via <- path (snd gup) y [e | e <- z, e /= gup]]