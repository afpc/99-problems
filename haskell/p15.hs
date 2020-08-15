-- P15 (**) Duplicate the elements of a list a given number of times.

myDuplicate :: [x] -> Int -> [x]
myDuplicate l n = concatMap (\x -> replicate n x) l
