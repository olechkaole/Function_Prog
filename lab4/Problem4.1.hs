main :: IO()

main = do
    print $ (endElem [1,3,5,1,2,7])
    

endElem :: [getElem] -> getElem
endElem = foldr' (myconst id) 
foldr' :: (a -> a -> a) -> [a] -> a
foldr' _ [x] = x
foldr' f (x:xs) = f x (foldr' f xs)

myconst :: a -> b -> a
myconst a _ = a