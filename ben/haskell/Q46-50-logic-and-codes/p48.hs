{-
Truth tables for logical expressions (3).

Generalize problem P47 in such a way that the logical expression may contain any number of logical variables. Define table/2 in a way that table(List,Expr) prints the truth table for the expression Expr, which contains the logical variables enumerated in List.
-}

infixl 9 `not'`
infixl 8 `and'`
infixl 8 `nand`
infixl 7 `or'`
infixl 7 `nor`
infixl 7 `xor`
infixl 6 `impl`

-- This shouldn't be ...
infixl 9 `equ`
-- But this doesn't work ...
-- infixl 6 `equ`

not' :: Bool -> Bool
not' True = False
not' False = True

and' :: Bool -> Bool -> Bool
and' True True = True
and' _ _ = False

nand :: Bool -> Bool -> Bool
nand p q = not' (and' p q)

or' :: Bool -> Bool -> Bool
or' False False = False
or' _ _ = True

nor :: Bool -> Bool -> Bool
nor p q = not' (or' p q)

xor :: Bool -> Bool -> Bool
xor p q = and' (or' p q) (nand p q)

impl :: Bool -> Bool -> Bool
impl p q = or' (not' p) q 

equ :: Bool -> Bool -> Bool
equ True True = True
equ False False = True
equ _ _ = False

--tablen :: Show a => Int -> (Bool -> Bool -> a) -> IO ()
tablen nb f = putStrLn $ concatMap (++ "\n" ) 
              [(writeInput i) ++ show (f i) | i <- createInput nb]

createInput :: Int -> [[Bool]]
createInput 0 = [[]]
createInput nb = map (\x -> True:x) prev ++ map (\x -> False:x) prev
    where prev = createInput (nb - 1)

writeInput :: [Bool] -> String
writeInput = foldr (\ a b -> show a ++ " " ++ b) ""
