-- Pack consecutive duplicates of list elements into sublists. 
-- If a list contains repeated elements they should be placed in seperate sublists. 

-- Using Data.List

import Data.List

pack :: Eq a => [a] -> [[a]]
pack = group

-- With list recursion. 
pack' :: Eq a => [a] -> [[a]]
pack' [] = [] 
pack' (x:[]) = [[x]]
pack' (x:xs) = (\((b:bs):ys) -> if x == b
                                       then (x:b:bs):ys
                                   else [x]:(b:bs):ys) (pack' xs)

-- With foldr.
pack'' :: Eq a => [a] -> [[a]]
pack'' list = foldr (\a ((b:bs):xs) -> if a == b
                                            then (a:b:bs):xs
                                       else [a]:(b:bs):xs) [[last list]] (init list)
