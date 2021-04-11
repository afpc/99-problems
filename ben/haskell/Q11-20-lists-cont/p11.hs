{-
Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.
-}

import Data.List

data Encoded = Single Char 
             | Multiple Int Char
    deriving Show

encodeModified :: String -> [Encoded]
encodeModified = map (\ a -> if length a == 1 
                                 then Single (head a)
                             else Multiple (length a) (head a)) . group 
