
module Hoja2 where 

quitaUno :: Eq a => a -> [a] -> [a]
quitaUno e l = dropWhile (e==) l 

quitaRep :: Eq a => [a] -> [a]
quitaRep [] = []
quitaRep (x:xs)
  | otherwise = if contains x xs then quitaRep xs else x:(quitaRep xs)

quitaRep2 :: Eq a => [a] -> [a]
quitaRep2 [] = []
quitaRep2 x:xs = x:quitaRep2(quitaUno x xs)

contains :: Eq a => a -> [a] -> Bool
contains _ [] = False
contains x (y:ys)
  | x == y = True 
  | x /= y = (contains x ys)
  
  

% Dif usando quita uno
dif :: Eq a => [a] -> [a] -> [a]
dif a b = map (quitaUno a) b