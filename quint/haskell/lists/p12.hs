-- P12 (**) Decode a run-length encoded list.

-- NOTE: See P11 if you want to use a data type.
decode :: Eq x => [Either x (Int, x)] -> [x]
decode x = decodeEither x []

decodeEither :: Eq x => [Either x (Int, x)] -> [x] -> [x]
decodeEither [] y               = y
decodeEither (Left x:xs) y      = decodeEither xs (y ++ [x])
decodeEither (Right (n,e):xs) y = decodeEither xs (y ++ (replicate n e))
