-- P10 (*) Run-length encoding of a list.

-- From P09.
pack :: Eq x => [x] -> [[x]]
pack []     = []
pack (x:xs) = (x:y) : pack ys
  where (y, ys) = span (== x) xs

encode :: Eq x => [x] -> [(Int,x)]
-- Map each element on (length, element) in pack x.
encode x = map (\e -> (length e, head e)) (pack x)
