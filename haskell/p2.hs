-- P02 (*): Find the last but one element of a list.

last_but_one :: [x] -> x
last_but_one []  = error "list is empty"
last_but_one [_] = error "len list is 1"
last_but_one l   = last (init l) -- init removes the last element from the list.

last_but_one_r :: [x] -> x
last_but_one_r []         = error "list is empty"
last_but_one_r [_]        = error "len list is 1"
last_but_one_r (x:(_:[])) = x
last_but_one_r (_:xs)     = last_but_one_r xs
