-- Determine the greatest common divisor of two positive integer numbers. Use Euclid's algorithm.

myGCD :: Int -> Int -> Int
myGCD a b
    | b == 0 = abs a
    | otherwise = myGCD b (mod a b) 
