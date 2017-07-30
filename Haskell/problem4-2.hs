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

id2xy :: Int -> Int -> (Int, Int)
id2xy id len = (div id len, mod id len)

checkQ :: [Int] -> Int -> Int -> (Int, Int) -> [Int]
checkQ q n m (x, y) =
    let x0 = [x..x + m - 1]
        y0 = [y..y + m - 1]
    in map (q !!) $ sort $ [x_ * n + y_ | x_ <- x0, y_ <- y0]

search :: Int -> [Int] -> Int -> [Int] -> (Int, Int)
search n q m p =
    let l = n - m + 1
        pos = map (\x -> id2xy x l) [0..l * l - 1]
        raw = map (\(x, y) -> ((x, y), checkQ q n m (x, y))) pos
    in  fst $ head $ filter (\e -> p == snd e) raw


solve :: [Int] -> String
solve (n:ns) =
    let q = take (n * n) ns
        m = ns !! (n * n)
        p = drop (n * n + 1) ns
        (x, y) = search n q m p
    in  show x ++ " " ++ show y

main :: IO ()
main = do
    (map nextInt . C.words -> input) <- B.getContents
    putStrLn $ solve input