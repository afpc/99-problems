-- With prelude
rotate :: [a] -> Int -> [a]
rotate list nb
    | nb < 0 = rotate list (length list + nb)
    | otherwise = drop nb list ++ take nb list

-- With list recursion
rotate' :: [a] -> Int -> [a]
rotate' list@(x:xs) nb
    | nb == 0 = list
    | nb < 0 = rotate (last list : init list) (nb + 1)
    | otherwise = rotate (xs ++ [x]) (nb -1)
