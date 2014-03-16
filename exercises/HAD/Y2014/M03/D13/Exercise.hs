module HAD.Y2014.M03.D13.Exercise where

import Data.Function (on)
import Data.Monoid (mappend)

-- | pairToList Transform a pair of same type elements in a list of two
-- elements.
-- 
-- Of course, the major challenge is to find a point free function
-- (without lambda). And, if you want more fun, do it without (++).
--
-- prop> replicate 2 (x :: Int) == pairToList (x,x)
--
-- prop> (\(f,s) -> [f,s]) x == pairToList x 
--
pairToList :: (a,a) -> [a]
pairToList = uncurry (mappend `on` return)
