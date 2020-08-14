-- P01 (*): Find the last element of a list

my_last :: [x] -> x
my_last [] = error "list is empty"
my_last l  = last l

my_last_r :: [x] -> x
my_last_r []     = error "list is empty"
my_last_r [x]    = x
my_last_r (_:xs) = my_last_r xs
