-- Draw N different random numbers from the set 1..M

import System.Random

diff_select :: Int -> Int -> IO ()
diff_select nb lim = do g <- getStdGen
                        print $ take nb (randomRs (1, lim) g)
