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

diff :: [Int] -> [Int]
diff a = zipWith (-) a (0: (init a))

solve :: [Int] -> Int
solve (x:y:z:0:xys) = x * y * z
solve (x:y:z:n:xys) =
    let uidx = [i | i <- [0..2 * n], even i]
        vidx = [i | i <- [0..2 * n], odd i]
        uvs = zip (map (xys !!) uidx) (map (xys !!) vidx)
        xs = map (snd) $ filter (\(x, y) -> x == 0) uvs
        ys = map (snd) $ filter (\(x, y) -> x == 1) uvs
        minx = minimum $ diff $ sort (x:xs)
        miny = minimum $ diff $ sort (y:ys)
    in  minx * miny * z

main :: IO ()
main = do
    (map nextInt . C.words -> input) <- B.getContents
    print $ solve input