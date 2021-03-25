-- P23 (**) Extract a given number of randomly selected elements from a list.

import System.Random

rndSelect :: [x] -> Int -> [IO x]
rndSelect _ 0 = []
rndSelect l n = [randomRIO (0, length l - 1) >>= return . (l !!)] ++ (rndSelect l (n - 1))

-- Convert an IO to Int
-- (foo produces an IO Int, and bar takes an Int as its only parameter and returns a non-IO value)

-- foo >>= return . bar

-- do
--   a <- foo
--   return $ bar a
