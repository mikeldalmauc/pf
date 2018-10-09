module Hoja2
    ( someFunc,quitaRep
    ) where

import List.Delete

someFunc :: IO ()
someFunc = putStrLn "someFunc"

--1
quitaUno :: Eq a => a -> [a] -> [a]
quitaUno e [] = []
quitaUno e (x:s)
   | e == x = s
   | otherwise = x:(quitaUno e s)

-- 1
quitaTodos :: Eq a => a -> [a] -> [a]
quitaTodos e l = filter (e/=) l

-- 2
quitaRep :: Eq a => [a] -> [a]
quitaRep [] = []
quitaRep (x:s) = x:quitaRep(quitaTodos x s)

foldl_2 :: (a -> b -> a) -> a -> [b] -> a
foldl_2 f e [] = e
foldl_2 f e (x:s) = foldl_2 f (f e x) s

foldr_2 :: (a -> b -> b) -> b -> [a] -> b
foldr_2 f e [] = e
foldr_2 f e (x:s) = f x (foldr_2 f e s)

-- 3
dif :: Eq a => [a] -> [a] -> [a]
dif [] _ = []
dif s [] = s
dif l (x:s) = dif (quitaUno x l) s


-- 4
permutar :: Eq a => [a] -> [[a]]
permutar [] = []
permutar