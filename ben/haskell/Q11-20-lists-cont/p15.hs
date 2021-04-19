-- with prelude
repli :: [a] -> Int -> [a]
repli list nb = concat . map (replicate nb) $ list

-- with list recursion
repli' :: [a] -> Int -> [a]
repli' list nb = concat . map (\ x -> [x | _ <- [1..nb]]) $ list
