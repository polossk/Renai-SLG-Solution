{-# OPTIONS_GHC -O2 #-}
{-# LANGUAGE ViewPatterns, ScopedTypeVariables #-}

import Data.List
import Data.Maybe (fromJust)
import Data.ByteString (ByteString)
import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as C

-- 自分の得意な言語で
-- Let's チャレンジ！！

reduce :: Int -> Int
reduce x
    | x `mod` 10 == 0 = reduce (x `div` 10)
    | otherwise       = x `mod` 100000000000

solve' :: Int -> Int -> Int
solve' x 0 = x
solve' x 1 = x
solve' x y = solve' (reduce (x * reduce y)) (y - 1) `mod` 1000000000

solve :: String -> Int
solve input = solve' 1 (read input :: Int)

main :: IO ()
main = do
    input <- getLine
    print $ solve input