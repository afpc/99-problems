-- P32 (**) Determine the greatest common divisor of two positive integer numbers.

myGCD :: Int -> Int -> Int
myGCD 0 y = y
myGCD x y = myGCD (mod y x) x
