{-# OPTIONS_GHC -O2 #-}
{-# LANGUAGE ViewPatterns, ScopedTypeVariables #-}

import Data.List
import Data.Maybe (fromJust)
import Data.ByteString (ByteString)
import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as C

-- 自分の得意な言語で
-- Let's チャレンジ！！

solve' :: Int -> String
solve' 1 = "Ann"
solve' n = solve' (n - 1) ++ "Ann"

solve :: String -> String
solve input = solve' (read input :: Int)

main :: IO ()
main = do
    input <- getLine
    putStrLn $ solve input