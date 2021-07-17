-- if expressions
sign n = if n > 0 then 1 
            else if n < 0 then -1 
            else 0

--sign using matching
sign_withMatch n | n > 0 = 1
       | n < 0 = -1
       | otherwise = 0


factorial n = if n == 1 then 1
              else if n == 0 then 0
              else n * factorial(n-1)


areBothTrue x y = case (x, y) of 
            (True, True) -> True
            _ -> False

--solveQuadratic p q = (-p/2 - sqrt ((p/2)^2 - q), -p/2 + sqrt ((p/2)^2 - q)) 
-- the function above is the same as the function below
-- in the function below we use sugar to simplify
-- 'p is bounded to -p/2
-- d = is bounded sqrt(p'^2 -q)
-- in is the expression and instead of passing 
-- -p/2 - sqrt((p/2) ^ 2 - q) + -p/2 + sqrt ((p/2)^2 - q)) 
-- we pass the values we bouded in this case p' and d
-- to run pass solveQuadratic 3 2

solveQuadratic p q = let 
                        p' = -p/2
                        d  = sqrt (p'^2 - q)
                      in (p' - d, p' + d)
                      
                    

-- here the two values return by solveQuadratic are bounded to (a,b)
-- aka pattern matched, and we return the conditional
-- to run pass numberOfsolutions 3 2
numberOfsolutions p q = let
                          (a, b) = solveQuadratic p q
                        in if a == b then 1 
                            else 2



solveQuadraticWhere p q = (p' - d, p' + d)
    where p' = - p / 2
          d  = sqrt (p'^2 - q)
           


-- Defining helper functions with where
-- below an example of fibonacci optimized with helper function
fibonacciHelper smaller larger 0 = larger
fibonacciHelper smaller larger steps = fibonacciHelper larger (smaller + larger) (steps - 1)

fibonacci 0 = 0
fibonacci n = fibonacciHelper 0 1 (n - 1)

-- here we will define the helper in the where clause

fibonacciWhere n = fibHelper 0 1 (n - 1)
      where fibHelper :: Int -> Int -> Int -> Int
            fibHelper smaller larger 0 = larger
            fibHelper smaller larger steps = fibHelper larger (smaller + larger) (steps - 1)
  


