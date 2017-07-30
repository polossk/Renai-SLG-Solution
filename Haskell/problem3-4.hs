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

chRW :: Bool -> Char
chRW True = 'R'
chRW False = 'W'

putRWChar :: Char -> Int -> Int -> String
putRWChar c num limit = flip replicate c $ min num limit

putRWStr :: Bool -> Int -> Int -> String
putRWStr flag num limit
    | limit < 0 = ""
    | otherwise =
        let ans = putRWChar (chRW flag) num limit
        in  ans ++ putRWStr (not flag) num (limit - num)

solve :: [Int] -> String
solve (n:m:[]) = putRWStr True n m

main :: IO ()
main = do
    (map nextInt . C.words -> input) <- B.getContents
    putStrLn $ solve input