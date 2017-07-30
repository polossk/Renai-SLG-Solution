{-# OPTIONS_GHC -O2 #-}
{-# LANGUAGE ViewPatterns, ScopedTypeVariables #-}

import Data.List
import Data.Maybe (fromJust)
import Data.ByteString (ByteString)
import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as C

-- 自分の得意な言語で
-- Let's チャレンジ！！

join :: Char -> [String] -> String
join _ (x:[]) = x
join c (x:xs) = x ++ [c] ++ join c xs

solve :: String -> String
solve input = 
    let cnt = map (\x -> length $ filter (==x) input) "cat"
        a = show $ minimum cnt
        b = map (\x -> show $ maximum cnt - x) cnt
    in  join '\n' (a:b)


main :: IO ()
main = do
    input <- getLine
    putStrLn $ solve input