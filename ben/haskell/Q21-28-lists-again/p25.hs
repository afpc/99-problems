-- Generate a random permutation of the elements of a list.

import System.Random
import Data.List

rnd_permu :: [a] -> IO [a]
rnd_permu list = do g <- getStdGen
                    let p = permutations list
                        in let r = head (randomRs (0, length p - 1) g)
                            in return $ p!!r

-- Better
rnd_permu' :: [a] -> IO [a]
rnd_permu' list = let p = permutations list 
                      in do i <- randomRIO (0, length p - 1)
                            return $ p!!i
