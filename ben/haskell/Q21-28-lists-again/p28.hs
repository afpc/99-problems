{-
Sorting a list of lists according to length of sublists

a) We suppose that a list contains elements that are lists themselves. The objective is to sort the elements of this list according to their length. E.g. short lists first, longer lists later, or vice versa.

b) Again, we suppose that a list contains elements that are lists themselves. But this time the objective is to sort the elements of this list according to their length frequency; i.e., in the default, where sorting is done ascendingly, lists with rare lengths are placed first, others with a more frequent length come later.
-}

import Data.List

lsort :: [[a]] -> [[a]]
lsort = sortBy (\ x y -> compare (length x) (length y))

lfsort :: [[a]] -> [[a]]
lfsort list = sortBy (\ x y -> compare (f x) (f y)) list
    where f :: [a] -> Int
          f a = length . filter (\ x -> length x == length a) $ list
