infixl 5 ***
_ *** 0 = ""
string *** timesToRepeat = string ++ (string *** (timesToRepeat - 1))
-- example to ru in ghci
-- "hello" *** 8 = "hellohellohellohellohellohellohellohello"

double num = num * 2

next num = num + 1
-- double(next 5) 
-- $ double $ next 5

