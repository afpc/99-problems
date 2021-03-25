-- P07 (**) Flatten a nested list structure.

data NestedList x
  = Elem x
  | List [NestedList x]

my_flatten :: NestedList x -> [x]
-- If it is a single element x.
my_flatten (Elem x)       = [x]
-- Concat and map my_flatten on every element of the list x.
my_flatten (List x) = concatMap my_flatten x

-- NOTE: my_flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
