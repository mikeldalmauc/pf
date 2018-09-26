
module Hoja2 where


data Tree a = Branch (Tree a) (Tree a) | Leaf a

type Name = String

-- https://wiki.haskell.org/Type 

prod :: Int -> Int -> Int
prod n m 
  | n < m  = n * prod (n+1) m
  | m < n  =  prod m n
  | otherwise = n * m
  

serviceCall :: String -> Maybe String
serviceCall n =
  case (n) of
    Empty -> Nothing
    otherwise -> Just n
	
printName :: Maybe String -> String
printName n = 
	case (n) of
		Just n -> n
		Nothing -> "empty name"