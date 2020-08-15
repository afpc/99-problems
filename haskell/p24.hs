-- P24 (*) Lotto: Draw N different random numbers from the set 1..M.

import System.Random

lotto :: Int -> (Int, Int) -> [IO Int]
lotto n (l, h) = (rndSelect [l..h] n)

-- P23
rndSelect :: [x] -> Int -> [IO x]
rndSelect _ 0 = []
rndSelect l n = [randomRIO (0, length l - 1) >>= return . (l !!)] ++ (rndSelect l (n - 1))
