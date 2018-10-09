import Test.HUnit
import Hoja2

main :: IO ()
main = putStrLn "Test suite not yet implemented"

-- Hoja 2
-- 1
test1_1 = TestCase( assertEqual "quita uno vacio" ([])(quitaUno 12 []))

test1_2 = TestCase( assertEqual "quita uno numero" ([1,3,2,2,4])(quitaUno 2 [1,2,3,2,2,4]))

test1_3 = TestCase( assertEqual "quita uno caracter" (['a','b','c'])(quitaUno 'a' ['a','a','b','c']))

test_quitUno = test[test1_1,test1_2,test1_3]