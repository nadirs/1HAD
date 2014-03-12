module HAD.Y2014.M03.D06.Exercise where

-- | takeStrictlyLessThan take elements of a list whils their sum is
-- _strictly_ less than a given number
--
-- Point-free: I didnt' try without parameter, you can easily "hide" the 2nd
-- parameter (ie. takeStrictlyLessThan x = …)
-- Level: MEDIUM
--
-- Examples:
-- >>> takeStrictlyLessThan (10::Int) [1..]
-- [1,2,3]
-- 
-- >>> takeStrictlyLessThan (3::Integer) $ repeat 1
-- [1,1]
--
-- >>> takeStrictlyLessThan (42::Int) $ []
-- []
--
takeStrictlyLessThan :: Integral a => a -> [a] -> [a]
takeStrictlyLessThan = iter [] where
    iter :: Integral a => [a] -> a -> [a] -> [a]
    iter past n (x:future)
        | n - x > 0     = x : iter past (n - x) future
    iter _ _ _ = []
