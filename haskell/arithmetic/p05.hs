-- P35 (**) Determine the prime factors of a given positive integer.

primeFactors :: Int -> [Int]
primeFactors n = factors n 2
  where
    factors 1 _ = []
    factors x y
      | mod x y == 0 = y : factors (div x y) y
      | otherwise    = factors x (y + 1)
