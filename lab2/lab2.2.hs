main::IO()

main = putStr (show (predlast [1,2,5,3,1,5,8,1]))
    


predlast :: [a] -> a

predlast [a,b] = a 
predlast [] = error "The list is empty!"
predlast [a] = error "There is only one element"

predlast (a : ab) = predlast ab