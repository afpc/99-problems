-- Find the last but one element of a list. 

-- Using prelude functions. 
butLast :: [a] -> a
butLast = last . init

-- Using list recursion.
butLast' :: [a] -> a
butLast' [] = error "No last but one element." 
butLast' (x:[]) = error "No last but one element." 
butLast' (a:b:xs) 
    | null xs = a
    | otherwise = butLast' (b:xs)
