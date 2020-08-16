-- P33 (*) Determine whether two positive integer numbers are coprime.

coprime :: Int -> Int -> Bool
coprime x y = (gcd x y) == 1
