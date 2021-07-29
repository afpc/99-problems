{-Group the elements of a set into disjoint subsets.

a) In how many ways can a group of 9 people work in 3 disjoint subgroups of 2, 3 and 4 persons? Write a function that generates all the possibilities and returns them in a list.

b) Generalize the above predicate in a way that we can specify a list of group sizes and the predicate will return a list of groups.

Note that we do not want permutations of the group members; i.e. ((ALDO BEAT) ...) is the same solution as ((BEAT ALDO) ...). However, we make a difference between ((ALDO BEAT) (CARLA DAVID) ...) and ((CARLA DAVID) (ALDO BEAT) ...).

You may find more about this combinatorial problem in a good book on discrete mathematics under the term "multinomial coefficients".
-}

group :: [Int] -> [a] -> [[[a]]]
group [] _ = [[]]
group (n:ns) input = [(x:xs) | (x,rs) <- takeN n input,
                               xs <- group ns rs]

takeN :: Int -> [a] -> [([a], [a])]
takeN 0 l = [([], l)]
takeN _ [] = []
takeN n (x:xs) = [(x:ys,zs) | (ys,zs) <- takeN (n - 1) xs]
                 ++ [(ys,x:zs) | (ys,zs) <- takeN n xs]
