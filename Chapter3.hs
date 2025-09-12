-- completed by Tshegofatso Mgiba

import Numeric (showHex)

-- HC3T1 - Task 1
checkNumber :: Int -> String
checkNumber n = if n > 0 then "Positive" else if n < 0 then "Negative" else "Zero"

-- HC3T2 - Task 2
grade :: Int -> String
grade n
  | n >= 90 = "A"
  | n >= 80 = "B"
  | n >= 70 = "C"
  | n >= 60 = "D"
  | otherwise = "F"

-- HC3T3 - Task 3
rgbToHex :: (Int, Int, Int) -> String
rgbToHex (r,g,b) =
  let toHex x = if length (showHex x "") == 1 then '0':showHex x "" else showHex x ""
  in "#" ++ toHex r ++ toHex g ++ toHex b

-- HC3T4 - Task 4
triangleArea :: Float -> Float -> Float -> Float
triangleArea a b c =
  let s = (a+b+c)/2
  in sqrt (s*(s-a)*(s-b)*(s-c))

-- HC3T5 - Task 5
triangleType :: Float -> Float -> Float -> String
triangleType a b c
  | a == b && b == c = "Equilateral"
  | a == b || b == c || a == c = "Isosceles"
  | otherwise = "Scalene"

-- HC3T6 - Task 6
isLeapYear :: Int -> Bool
isLeapYear y =
  if y `mod` 400 == 0 then True
  else if y `mod` 100 == 0 then False
  else if y `mod` 4 == 0 then True
  else False

-- HC3T7 - Task 7
season :: Int -> String
season m
  | m == 12 || m == 1 || m == 2 = "Winter"
  | m == 3 || m == 4 || m == 5 = "Spring"
  | m == 6 || m == 7 || m == 8 = "Summer"
  | m == 9 || m == 10 || m == 11 = "Autumn"
  | otherwise = "Invalid month"

-- HC3T8 - Task 8
bmiCategory :: Float -> Float -> String
bmiCategory weight height
  | bmi < 18.5 = "Underweight"
  | bmi < 25.0 = "Normal"
  | bmi < 30.0 = "Overweight"
  | otherwise = "Obese"
  where bmi = weight / (height ^ 2)

-- HC3T9 - Task 9
maxOfThree :: Int -> Int -> Int -> Int
maxOfThree a b c =
  let m1 = max a b
      m2 = max m1 c
  in m2

-- HC3T10 - Task 10
isPalindrome :: String -> Bool
isPalindrome str
  | length str <= 1 = True
  | head str == last str = isPalindrome (init (tail str))
  | otherwise = False

-- main
main :: IO ()
main = do
  -- HC3T1
  print (checkNumber 5, checkNumber (-3), checkNumber 0)

  -- HC3T2
  print (grade 95, grade 72, grade 50)

  -- HC3T3
  print (rgbToHex (255,0,127), rgbToHex (0,255,64))

  -- HC3T4
  print (triangleArea 3 4 5, triangleArea 7 8 9)

  -- HC3T5
  print (triangleType 3 3 3, triangleType 5 5 8, triangleType 6 7 8)

  -- HC3T6
  print (isLeapYear 2000, isLeapYear 1900, isLeapYear 2024)

  -- HC3T7
  print (season 3, season 7, season 11)

  -- HC3T8
  print (bmiCategory 70 1.75, bmiCategory 90 1.8)

  -- HC3T9
  print (maxOfThree 10 20 15, maxOfThree 5 25 10)

  -- HC3T10
  print (isPalindrome "racecar", isPalindrome "haskell", isPalindrome "madam")
