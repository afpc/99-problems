-- P25 (*) Generate a random permutation of the elements of a list.

import System.Random

perm :: [x] -> [IO x]
perm l = (rndSelect l (length l))

-- P23
rndSelect :: [x] -> Int -> [IO x]
rndSelect _ 0 = []
rndSelect l n = [randomRIO (0, length l - 1) >>= return . (l !!)] ++ (rndSelect l (n - 1))
