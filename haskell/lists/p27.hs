-- P27 (**) Group the elements of a set into disjoint subsets.

import Data.List

group3 :: Eq x => [x] -> [[[x]]]
group3 l = [[y,z,((l \\ y) \\ z)] | y <- (combinations l 2), z <- (combinations (l \\ y) 3)]
-- z is what is left after y and z. If 10 elements given the 3rd group will have a size of 5.

myGroup :: Eq x => [x] -> [Int] -> [[[x]]]
myGroup _ []     = []
myGroup l (n:ns) = [x:y | x <- (combinations l n), y <- (myGroup (l \\ x) ns)]

combinations :: [x] -> Int -> [[x]]
combinations l n = filter (\p -> length p == n) (subsequences l)
