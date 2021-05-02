-- With prelude 
range :: Int -> Int -> [Int]
range s e = [s..e]

-- With list recursion 
range' :: Int -> Int -> [Int]
range' s e
    | s > e = []
    | otherwise = s : range' (s+1) e
