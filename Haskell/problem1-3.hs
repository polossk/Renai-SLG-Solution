{-# OPTIONS_GHC -O2 #-}
{-# LANGUAGE ViewPatterns, ScopedTypeVariables #-}

import Data.List
import Data.Maybe (fromJust)
import Data.ByteString (ByteString)
import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as C

-- 自分の得意な言語で
-- Let's チャレンジ！！

make ::String -> [Int]
make y = map (\x -> read x :: Int) $ words $ y

buy :: [Int] -> [Int] -> [Int]
buy a b = sort $ filter (\x -> not $ elem x a) b

join :: Char -> [String] -> String
join _ (x:[]) = x
join c (x:xs) = x ++ [c] ++ join c xs

solve :: String -> String -> String
solve a b
    | len == 0 = "None"
    | otherwise= join ' ' $ map show res
    where res = buy (make a) (make b)
          len = length res

main :: IO ()
main = do
    rs <- sequence (replicate 5 getLine)
    putStrLn $ solve (rs !! 2) (rs !! 4)