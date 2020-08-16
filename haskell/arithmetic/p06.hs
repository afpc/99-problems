-- P36 (**) Determine the prime factors of a given positive integer (2).

import Data.List

primeFactorsMult :: Int -> [(Int,Int)]
primeFactorsMult = map encode . group . primeFactors
  where encode l = (head l, length l)

-- P35
primeFactors :: Int -> [Int]
primeFactors n = factors n 2
  where
    factors 1 _ = []
    factors x y
      | mod x y == 0 = y : factors (div x y) y
      | otherwise    = factors x (y + 1)
