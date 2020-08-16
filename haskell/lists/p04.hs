-- P04 (*) Find the number of elements of a list.

my_length :: [x] -> Int
my_length [] = 0
my_length l  = my_length_r l 0

my_length_r :: [x] -> Int -> Int
my_length_r [] n     = n
my_length_r (_:xs) n = my_length_r xs (n + 1)
