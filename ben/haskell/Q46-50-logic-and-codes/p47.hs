{-
Truth tables for logical expressions (2).

Continue problem P46 by defining and/2, or/2, etc as being operators. This allows to write the logical expression in the more natural way, as in the example: A and (A or not B). Define operator precedence as usual; i.e. as in Java.
-}

infixl 9 `not'`
infixl 8 `and'`
infixl 8 `nand`
infixl 7 `or'`
infixl 7 `nor`
infixl 7 `xor`
infixl 6 `impl`
infixl 6 `equ`

-- code from p46

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
