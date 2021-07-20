{-
Collect the nodes at a given level in a list

A node of a binary tree is at level N if the path from the root to the node has length N-1. The root node is at level 1. Write a predicate atlevel/3 to collect all nodes at a given level in a list.
-}

data Tree a = Empty | Branch a (Tree a) (Tree a)
              deriving (Show, Eq)

tree4 = Branch 1 (Branch 2 Empty (Branch 4 Empty Empty))
                 (Branch 2 Empty Empty)

atlevel :: Tree a -> Int -> [a]
atlevel Empty _ = []
atlevel (Branch x l r) n
    | n == 1 = [x]
    | otherwise = atlevel l (n-1) ++ atlevel r (n-1)
