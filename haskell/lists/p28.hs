-- P28 (**) Sorting a list of lists according to length of sublists.

import Data.List

lsort :: [[x]] -> [[x]]
lsort x = sortBy compareListLength x
  where compareListLength l k = compare (length l) (length k)

lfsort :: [[x]] -> [[x]]
lfsort x = concat y
  where y = lsort (groupBy byLength (lsort x))
        byLength l k = (length l) == (length k)
