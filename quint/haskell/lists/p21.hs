-- P21 (*) Insert an element at a given position into a list.

insertAt :: x -> [x] -> Int -> [x]
insertAt e l p = (x ++ [e]) ++ y
  where (x,y) = splitAt (p - 1) l
