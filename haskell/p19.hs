-- P19 (**) Rotate a list N places to the left.

rotate :: [x] -> Int -> [x]
rotate l n
  | n < 0     = rotate l ((length l) + n)
  | otherwise = y ++ x where (x,y) = splitAt n l
