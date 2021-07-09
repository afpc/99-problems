{-
A list of prime numbers.

Given a range of integers by its lower and upper limit, construct a list of all prime numbers in that range.
-}

primesR :: Int -> Int -> [Int]
primesR a = filter (>= a) . eratosthenes

eratosthenes :: Int -> [Int]
eratosthenes nb
    | nb < 2 = []
    | otherwise = removeMultiples [2..nb]

removeMultiples :: [Int] -> [Int]
removeMultiples [] = []
removeMultiples (x:xs) = x : (removeMultiples . filter (\a -> mod a x /= 0) $ xs)
