-- Eliminate consecutive duplicates of list elements. 
-- If a list contains repeated elements tehy shoudl be replaced with a single copy of the element. The order of elements should not be changed. 

-- With Data.List

import Data.List

compress :: Eq a => [a] -> [a]
compress = map head . group

-- With list comprehension. 
compress' :: Eq a => [a] -> [a]
compress' [] = []
compress' (x:[]) = [x]
compress' (a:b:xs)
    | a == b = compress' (b:xs)
    | otherwise = a : compress' (b:xs)

-- With fold. 
compress'' :: Eq a => [a] -> [a]
compress'' list = foldr (\a (b:bs) -> if a == b
                                    then (b:bs)
                                else (a:b:bs)) [last list] list
