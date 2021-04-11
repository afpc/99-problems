{-
Decode a run-length encoded list.
Given a run-length code list generated as specified in problem 11. Construct its uncompressed version.
-}

data Encoded = Single Char
             | Multiple Int Char
    deriving Show

decodeModified :: [Encoded] -> String
decodeModified [] = []
decodeModified (Single c:xs) = c : decodeModified xs
decodeModified (Multiple nb c:xs) = (replicate nb c) ++ decodeModified xs
