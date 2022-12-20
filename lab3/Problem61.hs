data Tree a = Empty | Branch a (Tree a) (Tree a) deriving (Show, Eq)

tree4 = Branch 1 (Branch 2 Empty (Branch 4 Empty Empty))
                 (Branch 2 Empty Empty)

main = do
    print (countL tree4)




countL Empty                  = 0
countL (Branch _ Empty Empty) = 1
countL (Branch _ l r)         = countL l + countL r