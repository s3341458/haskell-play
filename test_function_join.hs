import Data.List

testFunc :: String -> String 
testFunc = head . foldr (:) [] . words  

testFunc1 :: String -> String 
testFunc1 expression = head (foldr (:) [] (words expression))

testFunc2 :: String -> String 
testFunc2 = head . (foldr (:) []) . words

