-- Find the number of elements of a list. 

-- With prelude functions. 
myLength :: [a] -> Int
myLength = length

-- With list recursion. 
myLength' :: [a] -> Int
myLength' [] = 0
myLength' (_:xs) = 1 + myLength' xs

-- With folds. 
myLength'' :: [a] -> Int
myLength'' = foldr (\ _ a -> a + 1) 0
