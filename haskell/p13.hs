-- P13 (**) Run-length encoding of a list (direct solution).

encode :: Eq x => [x] -> [Either x (Int,x)]
encode []     = []
encode (x:xs) =
  let (y,ys) = span (== x) xs in
  if ((length y)) == 0
    then (Left x) : encode ys
    else (Right ((length y) + 1, x)) : encode ys
