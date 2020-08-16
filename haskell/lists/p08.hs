-- P08 (**) Eliminate consecutive duplicates of list elements.

compress :: Eq x => [x] -> [x] -- Eq x is needed for (== x) condition.
compress []     = []
compress (x:xs) = x : compress (dropWhile (== x) xs)

-- Compress using accumulator.
compressAcc :: Eq x => [x] -> [x]
compressAcc l = compressR l []

compressR :: Eq x => [x] -> [x] -> [x]
compressR []     x = x
compressR (x:xs) y = compressR (dropWhile (== x) xs) (y ++ [x])

-- dropWhile (== x) in code:
dW :: (x -> Bool) -> [x] -> [x]
dW _ [] = []
dW c x'@(x:xs) -- y' is a reference to (y:ys)
  | c x       =  dW c xs
  | otherwise =  x'
