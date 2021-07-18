-- n is the number and i the counter

next n = n + 1

divisorHelper n i | n < i = 0
                  --if division with no remainder
                  -- we add 1 to the count and move to next number 
                  | n `mod` i == 0 = 1 + divisorHelper n (next i)
                  --otherwise simply check for the next number
                  -- since division by 0 error i must a
                  | otherwise = divisorHelper n (next i)


divisor 1 = 1

divisor n = divisorHelper n 1


sayAgain str 0 =  ""
sayAgain str times = str ++ sayAgain str (times - 1)