-- With Prelude
dropEvery :: [a] -> Int -> [a]
dropEvery [] _ = []
dropEvery list i = take (i - 1) list ++ dropEvery (drop i list) i

-- With list recursion
dropEvery' :: [a] -> Int -> [a]
dropEvery' list i = dropEveryHelp list i i 
    where dropEveryHelp [] _ _ = []
          dropEveryHelp (x:xs) nb 1 = dropEveryHelp xs nb nb 
          dropEveryHelp (x:xs) nb i = x : dropEveryHelp xs nb (i-1)
