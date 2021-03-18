-- Reverse a list. 

-- With prelude functions. 
myReverse :: [a] -> [a]
myReverse = reverse

-- With list recursion. 
myReverse' :: [a] -> [a]
myReverse' [] = []
myReverse' (x:xs) = myReverse' xs ++ [x]

-- With foldr. 
myReverse'' :: [a] -> [a]
myReverse'' = foldr (\ a b -> b ++ [a]) []
