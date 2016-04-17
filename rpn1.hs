import Data.List

--foldingFunction::(Num a, Read a) => [a] -> a 
--foldingFunction (x:y:ys) "*" = (x * y):ys
--          foldingFunction (x:y:ys) "+" = (x + y):ys
--          foldingFunction (x:y:ys) "-" = (y - x):ys
--          foldingFunction xs numberString = (read numberString):xs

solveRPN :: (Num a, Read a) => String -> a 
solveRPN expression = head (foldl foldingFunction [] (words expression))
    where foldingFunction (x:y:ys) "*" = (x * y):ys
          foldingFunction (x:y:ys) "+" = (x + y):ys
          foldingFunction (x:y:ys) "-" = (y - x):ys
          foldingFunction xs numberString = (read numberString):xs