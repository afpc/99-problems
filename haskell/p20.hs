-- P20 (*) Remove the K'th element from a list.

removeAt :: [x] -> Int -> (x,[x])
removeAt l n = (last x, (init x) ++ y)
  where (x,y) = splitAt n l
