{-
Eight queens problem

This is a classical problem in computer science. The objective is to place eight queens on a chessboard so that no two queens are attacking each other; i.e., no two queens are in the same row, the same column, or on the same diagonal.

Hint: Represent the positions of the queens as a list of numbers 1..N. Example: [4,2,7,3,6,8,5,1] means that the queen in the first column is in row 4, the queen in the second column is in row 2, etc. Use the generate-and-test paradigm.
-}

queens :: Int -> [[(Int,Int)]]
queens nb = queens' nb nb

queens' :: Int -> Int -> [[(Int, Int)]]
queens' 0  _ = [[]]
queens' n1 n2 = [ l | let x1 = n2 - n1,
                      y1 <- [1..n2],
                      qs <- queens' (n1 - 1) n2,
                      let l = (x1,y1):qs,
                      noattackL l]

noattackL :: [(Int,Int)] -> Bool
noattackL [] = True
noattackL (x:xs) = foldr (\ a b -> noattack x a && b) True xs

noattack :: (Int, Int) -> (Int, Int) -> Bool 
noattack (x1, y1) (x2, y2) 
    | x1 == x2 = False
    | y1 == y2 = False
    | x1 - y1 == x2 - y2 = False
    | otherwise = True
