-- P11 (*) Modified run-length encoding.

-- From P09.
pack :: Eq x => [x] -> [[x]]
pack []     = []
pack (x:xs) = (x:y) : pack ys
  where (y, ys) = span (== x) xs

data ElemOrTuple x
  = Elem x
  | Tuple Int x deriving (Eq, Show)

myModify :: Eq x => [x] -> [ElemOrTuple x]
myModify x = map (\e -> elemOrTuple e) (pack x)

elemOrTuple :: [x] -> ElemOrTuple x
elemOrTuple (x:[]) = Elem x
elemOrTuple x      = Tuple (length x) (head x)

-- With Either
myModifyEither :: Eq x => [x] -> [Either x (Int,x)]
myModifyEither x = map (\e -> elemOrTupleEither e) (pack x)

elemOrTupleEither :: [x] -> Either x (Int,x)
elemOrTupleEither (x:[]) = Left x
elemOrTupleEither x      = Right (length x, head x)
