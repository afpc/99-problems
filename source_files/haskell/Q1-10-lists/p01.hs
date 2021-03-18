-- Find the last element of a list. 

-- From prelude.
last1 :: [a] -> a 
last1 = last

-- With list recursion 
last2 :: [a] -> a
last2 [] = error "empty list"
last2 (x:[]) = x
last2 (x:xs) = last2 xs
