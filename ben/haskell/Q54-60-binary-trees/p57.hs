{-
Binary search trees (dictionaries)

Use the predicate add/3, developed in chapter 4 of the course, to write a predicate to construct a binary search tree from a list of integer numbers.
-} 

data Tree a = Empty | Branch a (Tree a) (Tree a)
              deriving (Show, Eq)

construct :: [Int] -> Tree Int
construct = construct' Empty 

construct' :: Tree Int -> [Int] -> Tree Int
construct' t [] = t
construct' t (x:xs) = construct' (add x t) xs

add :: Int -> Tree Int -> Tree Int
add a Empty = Branch a Empty Empty
add a (Branch b l r)
    | a > b = Branch b l (add a r)
    | otherwise = Branch b (add a l) r

-- code from p56

symmetric :: Tree a -> Bool
symmetric Empty = True
symmetric (Branch _ l r) = mirror l r

mirror :: Tree a -> Tree a -> Bool
mirror Empty Empty = True
mirror (Branch _ l1 r1) (Branch _ l2 r2) = (mirror l1 r2) && (mirror r1 l2)
mirror _ _ = False

