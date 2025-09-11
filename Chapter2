-- DONE BY Tshegofatso Mgiba

import Data.List (sortBy)
import Data.Ord (comparing)

hc2t1 :: IO ()
hc2t1 = do
    putStrLn "HC2T1 - Checking Types:"
    print (42 :: Int)
    print (3.14 :: Double)
    print ("Haskell" :: String)
    print ('Z' :: Char)
    print (True && False)

add :: Int -> Int -> Int
add x y = x + y

isEven :: Int -> Bool
isEven x = x `mod` 2 == 0

concatStrings :: String -> String -> String
concatStrings s1 s2 = s1 ++ s2

hc2t2 :: IO ()
hc2t2 = do
    putStrLn "HC2T2 - Function Signatures:"
    putStrLn $ "add 5 3 = " ++ show (add 5 3)
    putStrLn $ "isEven 4 = " ++ show (isEven 4)
    putStrLn $ "concatStrings \"Hello \" \"World\" = " ++ concatStrings "Hello " "World"

myAge :: Int
myAge = 25

piValue :: Double
piValue = 3.14159

greeting :: String
greeting = "Hello, Haskell!"

isHaskellFun :: Bool
isHaskellFun = True

hc2t3 :: IO ()
hc2t3 = do
    putStrLn "HC2T3 - Immutable Variables:"
    print myAge
    print piValue
    putStrLn greeting
    print isHaskellFun
    putStrLn "Cannot modify these variables in Haskell"

prefix1 = (+) 5 3
prefix2 = (*) 10 4
prefix3 = (&&) True False

infix1 = 7 + 2
infix2 = 6 * 5
infix3 = True && False

hc2t4 :: IO ()
hc2t4 = do
    putStrLn "HC2T4 - Infix <-> Prefix:"
    print prefix1
    print prefix2
    print prefix3
    print infix1
    print infix2
    print infix3

circleAreaF :: Float -> Float
circleAreaF r = pi * r * r

maxOfThree :: Int -> Int -> Int -> Int
maxOfThree a b c = max a (max b c)

hc2t5 :: IO ()
hc2t5 = do
    putStrLn "HC2T5 - Functions:"
    print (circleAreaF 3.0)
    print (maxOfThree 5 12 9)

smallNumber :: Int
smallNumber = 262

bigNumber :: Integer
bigNumber = 2127

hc2t6 :: IO ()
hc2t6 = do
    putStrLn "HC2T6 - Int vs Integer:"
    print smallNumber
    print bigNumber
    putStrLn "2^64 :: Int may overflow"

exprAnd :: Bool
exprAnd = True && True

exprOr :: Bool
exprOr = False || False

exprNot :: Bool
exprNot = not False

exprComparison :: Bool
exprComparison = 5 > 10

hc2t7 :: IO ()
hc2t7 = do
    putStrLn "HC2T7 - Boolean Expressions:"
    print exprAnd
    print exprOr
    print exprNot
    print exprComparison

main :: IO ()
main = do
    putStrLn "=== Haskell HC2 Practical Tasks ==="
    putStrLn "Select a task to run (1-7):"
    putStrLn "1: HC2T1 - Checking Types"
    putStrLn "2: HC2T2 - Function Signatures"
    putStrLn "3: HC2T3 - Immutable Variables"
    putStrLn "4: HC2T4 - Infix <-> Prefix"
    putStrLn "5: HC2T5 - Defining and Using Functions"
    putStrLn "6: HC2T6 - Understanding Int vs Integer"
    putStrLn "7: HC2T7 - Boolean Expressions"
    putStrLn "Enter the task number: "
    choice <- getLine
    case choice of
        "1" -> hc2t1
        "2" -> hc2t2
        "3" -> hc2t3
        "4" -> hc2t4
        "5" -> hc2t5
        "6" -> hc2t6
        "7" -> hc2t7
        _   -> putStrLn "Invalid choice. Please select 1-7."
