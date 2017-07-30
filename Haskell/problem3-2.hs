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

join :: Char -> [String] -> String
join _ (x:[]) = x
join c (x:xs) = x ++ [c] ++ join c xs

solve :: [String] -> String
solve input = join '_' input

main :: IO ()
main = do
    (nextInt -> n) <- getLine
    input <- sequence (replicate n getLine)
    putStrLn $ solve input