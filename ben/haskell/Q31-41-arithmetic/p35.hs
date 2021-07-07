-- Determine the prime factors of a given positive integer. Construct a flat list containing the prime factors in ascending order.

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
