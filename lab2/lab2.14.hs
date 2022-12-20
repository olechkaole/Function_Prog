main :: IO()

main = putStr(show( dupli [5, 8, 5, 6]))


dupli :: [a] -> [a]
dupli [] = []
dupli (x:xs) = x : x : dup xs