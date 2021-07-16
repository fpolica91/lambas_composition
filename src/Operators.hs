_ *** 0 = ""
string *** timesToRepeat = string ++ (string *** (timesToRepeat - 1))
-- example to ru in ghci
-- "hello" *** 8 = "hellohellohellohellohellohellohellohello"