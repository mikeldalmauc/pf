
module Hoja2 where 

-- 1
quitaUno :: Eq a => a -> [a] -> [a]
quitaUno e [] = []
quitaUno e (x:s)
   | e == x = s
   | otherwise = x:quitaUno e s
 
-- 1
quitaTodos :: Eq a => a -> [a] -> [a]
quitaTodos e l = filter (e/=) 

-- 2
quitaRep :: Eq a => [a] -> [a]
quitaRep [] = []
quitaRep (x:s) = x:quitaRep(quitaTodos x s)

-- 3
dif :: Eq a => [a] -> [a] -> [a]
dif [] _ = []
dif s [] = s
dif l (x:s) = dif (quitaUno x l) s


-- 12
permutar :: Eq a => [a] -> [[a]]
permutar [] = [[]]
permutar as =  do a <- as
                  ls <- permutar (delete a as)
                  return $ a:ls


delete :: Eq a => a -> [a] -> [a]
delete _ [] = []
delete a (x:xs)
  | a == x = xs
  | otherwise = x:delete a xs

-- 14

