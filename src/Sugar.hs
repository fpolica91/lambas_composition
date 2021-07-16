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