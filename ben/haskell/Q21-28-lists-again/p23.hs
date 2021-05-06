-- Extract a given number of randomly selected elements from a list.

import System.Random

rnd_select :: [a] -> Int -> IO [a]
rnd_select list i = do g <- getStdGen
                       let nbs = take i (randomRs (0, length list - 1) g)
                           in return (foldr (\a b -> (list!!a):b) [] nbs) 

-- Somewhat nicer
rnd_select' :: [a] -> Int -> IO [a]
rnd_select' list i = do g <- getStdGen
                        return $ take i [list!!n | n <- (randomRs (0, length list - 1) g)]
