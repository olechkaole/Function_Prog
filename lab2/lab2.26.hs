main :: IO()

main = do
    print $ combinations 3 "abcdef"



combinations :: Int -> [a] -> [[a]]

combinations _ [] = [[]]

combinations 0 _  = [[]]

combinations pos (x:xs) = start_point ++ others
    where start = [ x : rest | rest <- combinations (pos-1) xs ]
          others  = if pos <= length xs then combinations pos xs else []