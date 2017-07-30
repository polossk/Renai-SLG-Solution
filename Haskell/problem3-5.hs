{-# OPTIONS_GHC -O2 #-}
{-# LANGUAGE ViewPatterns, ScopedTypeVariables #-}

import Data.List
import Data.Maybe (fromJust)
import Data.ByteString (ByteString)
import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as C
import Text.Printf

-- 自分の得意な言語で
-- Let's チャレンジ！！

nextInt :: String -> Int
nextInt = (\x -> read x :: Int)

modify :: Int -> Int
modify x
    | x > 23 = x - 24
    | otherwise = x

getTime :: Int -> String
getTime m =
    let hoge = 25 * 60 - div m 3
    in printf "%02d:%02d" (modify $ div hoge 60) (mod hoge 60)

join :: Char -> [String] -> String
join _ (x:[]) = x
join c (x:xs) = x ++ [c] ++ join c xs

solve :: [Int] -> String
solve input = join '\n' $ map getTime input

main :: IO ()
main = do
    (nextInt -> n) <- getLine
    (map nextInt -> input) <- sequence (replicate n getLine)
    putStrLn $ solve input