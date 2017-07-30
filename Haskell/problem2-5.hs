{-# OPTIONS_GHC -O2 #-}
{-# LANGUAGE ViewPatterns, ScopedTypeVariables #-}

import Data.List
import Data.Maybe (fromJust)
import Data.ByteString (ByteString)
import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as C

-- 自分の得意な言語で
-- Let's チャレンジ！！

nextInt :: ByteString -> Int
nextInt = fst . fromJust . C.readInt

solve :: [Int] -> String
solve (c1:p1:c2:p2:[])
    | c1 * p2 > c2 * p1 = "1"
    | otherwise = "2"

main :: IO ()
main = do
    (map nextInt . C.words -> input) <- B.getContents
    putStrLn $ solve input