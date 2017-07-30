{-# OPTIONS_GHC -O2 #-}
{-# LANGUAGE ViewPatterns, ScopedTypeVariables #-}

import Data.List
import Data.Maybe (fromJust)
import Data.ByteString (ByteString)
import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as C

-- 自分の得意な言語で
-- Let's チャレンジ！！

nextInt :: String -> Int
nextInt = (\x -> read x :: Int)

solve :: Int -> Int
solve 0 = 1
solve 1 = 1
solve x = x * solve (x - 1)

main :: IO ()
main = do
    (nextInt -> input) <- getLine
    print $ solve input