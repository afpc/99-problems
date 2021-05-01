-- With prelude 
insertAt :: a -> [a] -> Int -> [a]
insertAt e l i = (take (i-1) l) ++ [e] ++ (drop (i-1) l)

-- With list recursion
insertAt' :: a -> [a] -> Int -> [a]
insertAt' e l 1 = e:l
insertAt' e (x:xs) i = x : insertAt' e xs (i-1)
