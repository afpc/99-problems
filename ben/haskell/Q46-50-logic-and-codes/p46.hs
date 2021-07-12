{-
Define predicates and/2, or/2, nand/2, nor/2, xor/2, impl/2 and equ/2 (for logical equivalence) which succeed or fail according to the result of their respective operations; e.g. and(A,B) will succeed, if and only if both A and B succeed.

A logical expression in two variables can then be written as in the following example: and(or(A,B),nand(A,B)).

Now, write a predicate table/3 which prints the truth table of a given logical expression in two variables.
-}

not' :: Bool -> Bool
not' p
    | p = False
    | otherwise = True

and' :: Bool -> Bool -> Bool
and' p q
    | p && q = True
    | otherwise = False

nand :: Bool -> Bool -> Bool
nand p q = not' (and' p q)

or' :: Bool -> Bool -> Bool
or' p q
    | p || q = True
    | otherwise = False

nor :: Bool -> Bool -> Bool
nor p q = not' (or' p q)

xor :: Bool -> Bool -> Bool
xor p q = and' (or' p q) (nand p q)

impl :: Bool -> Bool -> Bool
impl p q = or' (not' p) q 

equ :: Bool -> Bool -> Bool
equ p q
    | p == q = True
    | otherwise = False

table :: Show a => (Bool -> Bool -> a) -> IO ()
table f = do putStr "True True "
             print (f True True)
             putStr "True False "
             print (f True False)
             putStr "False True "
             print (f False True)
             putStr "False False "
             print (f False False)
