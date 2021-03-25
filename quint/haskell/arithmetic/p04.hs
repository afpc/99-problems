-- P34 (**) Calculate Euler's totient function phi(m).

phi :: Int -> Int
phi x = length (filter (coprime x) [1..x-1])
  where coprime y z = gcd y z == 1
