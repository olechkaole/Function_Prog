main :: IO()

main = putStr(show (insertAt 'z' "abcde" 2))

insertAt :: a -> [a] -> Int -> [a]
insertAt _ _ 0 = error "net elementa s index 0"
insertAt elem [] _ = [elem]
insertAt elem mass 1 = elem:mass
insertAt elem (x:xs) n = x : insertAt elem xs (n-1)
