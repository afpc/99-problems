{-# LANGUAGE LambdaCase #-}

data Encoded = Single Char
             | Multiple Int Char
    deriving Show

encodeDirect :: String -> [Encoded]
encodeDirect [] = []
encodeDirect (x:[]) = [Single x]
encodeDirect (x:xs) = (\case 
                        ((Single a):b) -> if a == x 
                                              then (Multiple 2 x):b
                                          else (Single x):(Single a):b
                        ((Multiple nb a):b) -> if a == x
                                                   then (Multiple (nb+1) x):b
                                               else (Single x):(Multiple nb a):b)
                     (encodeDirect xs)
