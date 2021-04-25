-- With Prelude
split :: [a] -> Int -> ([a], [a])
split list nb = (take nb list, drop nb list)

-- With list recursion
split' :: [a] -> Int -> ([a], [a])
split' list 0 = ([], list)
split' (x:xs) nb = (\ (a,b) -> (x:a,b)) (split' xs (nb-1))
