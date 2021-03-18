-- Find the K'th element of a list.
-- The first element in the list is number 1.

-- Using prelude functions. 
elementAt :: [a] -> Int -> a
elementAt list nb = list!!(nb - 1)

-- Using list recursion. 
elementAt' :: [a] -> Int -> a
elementAt' (x:_) 1 = x
elementAt' [] _ = error "No element at that position."
elementAt' (_:xs) nb = elementAt' xs (nb - 1)  
