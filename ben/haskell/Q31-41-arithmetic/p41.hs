{-
Given a range of integers by its lower and upper limit, print a list of all even numbers and their Goldbach composition.

In most cases, if an even number is written as the sum of two prime numbers, one of them is very small. Very rarely, the primes are both bigger than say 50. Try to find out how many such cases there are in the range 2..3000.
-}

goldbachList :: Int -> Int -> [(Int, Int)]
goldbachList a b = map goldbach [lower,lower+2..upper]
    where lower = if mod a 2 == 0
                      then a
                  else a + 1
          upper = if mod b 2 == 0
                      then b
                  else b + 1

goldbachList' :: Int -> Int -> Int -> [(Int, Int)]
goldbachList' a b c = filter (\ (x,y) -> x > c) (goldbachList a b)

-- code from p40

goldbach :: Int -> (Int, Int)
goldbach nb = head [(a,b) | a <- eratosthenes nb, 
                            b <- eratosthenes nb,
                            a + b == nb]

-- code from p39

eratosthenes :: Int -> [Int]
eratosthenes nb
    | nb < 2 = []
    | otherwise = removeMultiples [2..nb]

removeMultiples :: [Int] -> [Int]
removeMultiples [] = []
removeMultiples (x:xs) = x : (removeMultiples . filter (\a -> mod a x /= 0) $ xs)
