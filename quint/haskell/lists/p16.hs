-- P16 (**) Drop every N'th element from a list.

myDrop :: [x] -> Int -> [x]
myDrop [] _ = []
-- Take n - 1 elements, then skip one.
myDrop x n  = take (n - 1) x ++ myDrop (drop n x) n
