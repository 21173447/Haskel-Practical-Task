-- completed by Tshegofatso Mgiba

-- HC4T1 - Task 1: Define a weatherReport Function
weatherReport :: String -> String
weatherReport "sunny"  = "It's a bright and beautiful day!"
weatherReport "rainy"  = "Don't forget your umbrella!"
weatherReport "cloudy" = "A bit gloomy, but no rain yet!"
weatherReport _        = "Weather unknown"

-- HC4T2 - Task 2: Define a dayType Function
dayType :: String -> String
dayType "Saturday" = "It's a weekend!"
dayType "Sunday"   = "It's a weekend!"
dayType "Monday"   = "It's a weekday."
dayType "Tuesday"  = "It's a weekday."
dayType "Wednesday"= "It's a weekday."
dayType "Thursday" = "It's a weekday."
dayType "Friday"   = "It's a weekday."
dayType _          = "Invalid day"

-- HC4T3 - Task 3: Define a gradeComment Function
gradeComment :: Int -> String
gradeComment n
  | n >= 90 && n <= 100 = "Excellent!"
  | n >= 70 && n <= 89  = "Good job!"
  | n >= 50 && n <= 69  = "You passed."
  | n >= 0 && n <= 49   = "Better luck next time."
  | otherwise           = "Invalid grade"

-- HC4T4 - Task 4: Rewrite specialBirthday using Pattern Matching
specialBirthday :: Int -> String
specialBirthday 1  = "First birthday - Very special!"
specialBirthday 18 = "18th birthday - Adulthood begins!"
specialBirthday 21 = "21st birthday - Cheers!"
specialBirthday 50 = "50th birthday - Half a century!"
specialBirthday _  = "Just another birthday."

-- HC4T5 - Task 5: Add a Catch-All Pattern with a Custom Message
specialBirthdayWithAge :: Int -> String
specialBirthdayWithAge 1  = "First birthday - Very special!"
specialBirthdayWithAge 18 = "18th birthday - Adulthood begins!"
specialBirthdayWithAge 21 = "21st birthday - Cheers!"
specialBirthdayWithAge 50 = "50th birthday - Half a century!"
specialBirthdayWithAge n  = "Happy " ++ show n ++ "th birthday!"

-- HC4T6 - Task 6: Identify List Contents Using Pattern Matching
whatsInsideThisList :: [a] -> String
whatsInsideThisList []        = "The list is empty."
whatsInsideThisList [_]       = "The list has one element."
whatsInsideThisList [_,_]     = "The list has two elements."
whatsInsideThisList (_:_:_:_) = "The list has many elements."
whatsInsideThisList _         = "The list has an unknown structure."

-- HC4T7 - Task 7: Ignore Elements in a List
firstAndThird :: [a] -> (a, a)
firstAndThird (x:_:z:_) = (x, z)
firstAndThird _         = error "List does not have enough elements."

-- HC4T8 - Task 8: Extract Values from Tuples
describeTuple :: (Int, String) -> String
describeTuple (n, s) = "The number is " ++ show n ++ " and the string is \"" ++ s ++ "\"."

-- main
main :: IO ()
main = do
  putStrLn (weatherReport "sunny")
  putStrLn (dayType "Monday")
  putStrLn (gradeComment 85)
  putStrLn (specialBirthday 21)
  putStrLn (specialBirthdayWithAge 30)
  putStrLn (whatsInsideThisList [1,2,3,4])
  print (firstAndThird [10,20,30,40])
  putStrLn (describeTuple (7, "Haskell"))
