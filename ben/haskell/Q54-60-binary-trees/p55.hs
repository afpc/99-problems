{-
Construct completely balanced binary trees

In a completely balanced binary tree, the following property holds for every node: The number of nodes in its left subtree and the number of nodes in its right subtree are almost equal, which means their difference is not greater than one.

Write a function cbal-tree to construct completely balanced binary trees for a given number of nodes. The predicate should generate all solutions via backtracking. Put the letter 'x' as information into all nodes of the tree.
-} 

data Tree a = Empty | Branch a (Tree a) (Tree a)
              deriving (Show, Eq)

cbalTree :: Int -> [Tree Char]
cbalTree 0 = [Empty]
cbalTree 1 = [Branch 'x' Empty Empty]
cbalTree nb
    | mod (nb - 1) 2 == 0 = map (\x -> Branch 'x' x x) (cbalTree (div (nb - 1) 2))
    | otherwise = [Branch 'x' a b | a <- t1, b <- t2]
                  ++ [Branch 'x' b a | a <- t1, b <- t2]
        where t1 = cbalTree (div (nb - 1) 2)
              t2 = cbalTree ((div (nb - 1) 2) + 1) 
