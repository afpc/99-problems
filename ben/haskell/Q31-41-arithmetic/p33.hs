-- Determine whether two positive integer numbers are coprime. Two numbers are coprime if their greatest common divisor equals 1.

coprime :: Int -> Int -> Bool
coprime a b = myGCD a b == 1

myGCD :: Int -> Int -> Int
myGCD a b
    | b == 0 = abs a
    | otherwise = myGCD b (mod a b) 
