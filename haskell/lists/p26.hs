-- P26 (**) Generate the combinations of K distinct objects chosen from the N elements of a list.

import Data.List

combinations :: [x] -> Int -> [[x]]
combinations l n = filter (\p -> length p == n) (subsequences l)
