{-
Calculate Euler's totient function phi(m) (improved).

See problem 34 for the definition of Euler's totient function. If the list of the prime factors of a number m is known in the form of problem 36 then the function phi(m) can be efficiently calculated as follows: Let ((p1 m1) (p2 m2) (p3 m3) ...) be the list of prime factors (and their multiplicities) of a given number m. Then phi(m) can be calculated with the following formula:
-}

import Data.List

totient :: Int -> Int
totient a = f l
    where l = prime_factors_mult a
          f :: [(Int, Int)] -> Int
          f [] = 1
          f ((p,m):xs) = (p - 1) * p ^ (m - 1) * f xs

-- previous exercises
prime_factors_mult :: Int -> [(Int, Int)]
prime_factors_mult = map (\ x -> (head x, length x)) . group . primeFactors

primeFactors :: Int -> [Int]
primeFactors n0
    | n0 < 2 = []
    | otherwise = p : (primeFactors n1)
        where p = nextPrime 2 n0
              n1 = div n0 p

nextPrime :: Int -> Int -> Int
nextPrime min n 
    | mod n min == 0 = min
    | otherwise = nextPrime (min + 1) n
