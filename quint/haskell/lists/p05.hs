-- P05 (*) Reverse a list.

my_reverse :: [x] -> [x]
my_reverse l = my_reverse_r l []

my_reverse_r :: [x] -> [x] -> [x]
my_reverse_r [] x     = x
my_reverse_r (x:xs) y = my_reverse_r xs ([x] ++ y)
