-- With prelude 
slice :: [a] -> Int -> Int -> [a] 
slice list begin end = take (end - begin + 1) . drop (begin - 1) $ list

-- With list recursion
slice' :: [a] -> Int -> Int -> [a] 
slice' list 1 0 = []
slice' (x:xs) 1 nb = x : slice' xs 1 (nb-1)
slice' (_:xs) n1 n2 = slice' xs (n1-1) (n2-1) 

-- With list comprehension 
slice'' :: [a] -> Int -> Int -> [a] 
slice'' list n1 n2 = [list!!i | i <- [0..(length list - 1)],
                                i >= (n1-1), 
                                i < n2]
