main::IO() 
main = do
    print $ duplicaten 3 [1, 2, 6, 7, 1]

replicate' :: Int -> a -> [a]
replicate' n x
  | n <= 0 = []
  | otherwise = x : replicate' (n - 1) x

duplicaten :: Int -> [a] -> [a]
duplicaten _ [] = []
duplicaten n (x:xs) =  [x | x <- replicate n x] ++ duplicaten n xs