-- P18 (**) Extract a slice from a list.

slice :: [x] -> Int -> Int -> [x]
slice l n m = take (m - n + 1) (drop (n - 1) l)
