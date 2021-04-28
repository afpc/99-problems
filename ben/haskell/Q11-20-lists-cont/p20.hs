-- With prelude 
removeAt :: Int -> [a] -> (a, [a])
removeAt nb list = (list!!(nb-1), take (nb-1) list ++ drop nb list)

-- With list recursion
removeAt' :: Int -> [a] -> (a, [a])
removeAt' 1 (x:xs) = (x, xs) 
removeAt' nb (x:xs) = (fst next, x : snd next)
    where next = removeAt' (nb-1) xs
