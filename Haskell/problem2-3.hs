{-# OPTIONS_GHC -O2 #-}
{-# LANGUAGE ViewPatterns, ScopedTypeVariables #-}

import Data.List
import Data.Maybe (fromJust)
import Data.ByteString (ByteString)
import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as C

-- 自分の得意な言語で
-- Let's チャレンジ！！

tran :: String -> Int
tran "yes" = 1
tran "no" = -1
tran _ = 0

play :: Int -> String
play x
    | x > 0 = "yes"
    | otherwise = "no"

solve :: [String] -> String
solve input = play $ sum $ map tran input

main :: IO ()
main = do
    rs <- sequence (replicate 5 getLine)
    putStrLn $ solve rs