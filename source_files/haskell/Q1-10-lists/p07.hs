-- Flatten a nested list structure. 
-- Transform a list, possibly holding lists as elements into a 'flat' list by replacing each list with its elements (recursively). 

data NestedList a = Elem a | List [NestedList a]

-- With list recursion. 
flatten :: NestedList a -> [a]
flatten (Elem a) = [a]
flatten (List []) = []
flatten (List (x:xs)) = flatten x ++ flatten (List xs)
