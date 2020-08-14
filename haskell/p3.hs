-- P03 (*) Find the K'th element of a list.
-- The first element in the list is number 1.

element_at :: [x] -> Int -> x
element_at [] _ = error "list is empty"
element_at _ 0  = error "first element has index 1"
element_at l n  = l !! (n - 1)

element_at_r :: [x] -> Int -> x
element_at_r [] _     = error "list is empty"
element_at_r _ 0      = error "first element has index 1"
element_at_r (_:xs) n = element_at_r xs (n - 1)
