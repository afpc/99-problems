-- P31 (**) Determine whether a given integer number is prime.

isPrime :: Int -> Bool
isPrime n = if n > 1
  then null [x | x <- [2..n - 1], (mod n x) == 0]
  else False
