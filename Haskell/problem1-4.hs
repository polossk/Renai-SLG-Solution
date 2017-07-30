{-# OPTIONS_GHC -O2 #-}
{-# LANGUAGE ViewPatterns, ScopedTypeVariables #-}

import Data.List
import Data.Maybe (fromJust)
import Data.ByteString (ByteString)
import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as C

-- 自分の得意な言語で
-- Let's チャレンジ！！

cons3 :: [String] -> [String]
cons3 s =
    let a = tail s
        b = tail a
    in  zipWith (++) s $ zipWith (++) a b

solve :: String -> Int
solve input = length $ filter (=="cat") $ cons3 $ map (\x -> [x]) input

main :: IO ()
main = do
    input <- getLine
    print $ solve input