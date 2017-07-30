{-# OPTIONS_GHC -O2 #-}
{-# LANGUAGE ViewPatterns, ScopedTypeVariables #-}

import Data.List
import Data.Maybe (fromJust)
import Data.ByteString (ByteString)
import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as C

-- 自分の得意な言語で
-- Let's チャレンジ！！

solve :: [String] -> Int
solve rs = sum $ map (\x -> read x :: Int) $ rs

main :: IO ()
main = do
    rs <- sequence [getLine, getLine]
    print $ solve rs