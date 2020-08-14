-- P09 (**) Pack consecutive duplicates of list elements into sublists.

pack :: Eq x => [x] -> [[x]]
pack []     = []
pack (x:xs) = (x:y) : pack ys
  where (y, ys) = span (== x) xs
-- span returns longest prefix + remainder as a tuple.
