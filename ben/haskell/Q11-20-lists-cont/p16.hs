-- With Prelude
dropEvery :: [a] -> Int -> [a]
dropEvery list i = take (i - 1) list ++ drop i list

-- With list recursion
dropEvery' :: [a] -> Int -> [a]
dropEvery' (x:xs) 1 = xs 
dropEvery' (x:xs) i = x : dropEvery' xs (i-1)
