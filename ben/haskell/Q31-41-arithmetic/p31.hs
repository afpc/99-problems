{-
Determine whether a given integer number is prime.
-}

isPrime :: Int -> Bool
isPrime a 
    | a <= 1 = False
    | otherwise = null [nb | nb <- [2..a-1], 
                             mod a nb == 0]
