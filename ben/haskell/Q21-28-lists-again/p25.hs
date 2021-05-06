-- Generate a random permutation of the elements of a list.

import System.Random
import Data.List

rnd_permu :: [a] -> IO [a]
rnd_permu list = do g <- getStdGen
                    let r = head (randomRs (0, length list - 1) g)
                        in return $ (permutations list)!!r
