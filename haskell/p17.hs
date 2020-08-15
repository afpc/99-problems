-- P17 (*) Split a list into two parts; the length of the first part is given.

split :: [x] -> Int -> ([x],[x])
-- split l n = splitAt n l
split l n = ((take n l), (drop n l))
