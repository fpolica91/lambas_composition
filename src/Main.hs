module Main where
import Data.Char

main :: IO ()
main = do
  putStrLn "hello world"


addThreeToMap = map (\x -> x + 3)
-- below example of what to run in ghci
-- takes elements in list [1,2,3] and adds to each [4,5,6]
-- addThreeToMap [1,2,3]

multiplyInList  = map (\(x,y) -> x * y)
-- below example of what to run in ghci
-- takes 2 numbers in list [(2,3)] and multiplies them [6]
-- multiplyInList [(2,3)]

addCToEveryItemInList = map (\item -> 'c':item)
-- below example of what to run ghci
-- addCToEveryItemInList ["dog", "hello", "fries"]
-- c':"hello" would give you chello

addElementsInArray = zipWith (+)


addMultiplyAndSubstract list1 list2 = map (\f -> zipWith f list1 list2) [(+), (*), (-)]
-- below example of what to run ghci
-- addMultiplyAndSubstract [1..6] [1..6]
-- [[2,4,6,8,10,12],[1,4,9,16,25,36],[0,0,0,0,0,0]]

applyUntil condition fn value | condition value == True = value
                 | otherwise   = applyUntil condition fn (fn value)



greatestOddDivisor = applyUntil(\num -> mod num 2 == 1) (\num -> div num 2)
-- below example of what to run ghci
-- greatestOddDivisor 44  = 11

smallestNaturalNumberThatIsUnicode p = applyUntil p (\num -> num + 1) 1
-- below example of what to run ghci
-- smallestNaturalNumberThatIsUnicode (\num -> isLetter(chr num))


