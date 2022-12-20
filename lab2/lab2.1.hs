main :: IO()

main = do
    a <- getLine
    print $ getLast a
    

getLast ::[a] -> a
getLast [] = error "Net elementov"
getLast [x] = x
getLast (x:xs) = getLast xs