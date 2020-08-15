-- P14 (*) Duplicate the elements of a list.

myDuplicate :: [x] -> [x]
myDuplicate l = concatMap (\x -> [x,x]) l
