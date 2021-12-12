sayMe :: (Integral a) => a -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"
charName _ = "unexpected input" -- Catch all pattern!

first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

--ghci> let xs = [(1,3), (4,3), (2,4), (5,3), (5,6), (3,1)]
--ghci> [a+b | (a,b) <- xs]
--[4,7,6,8,11,4]

head' :: [a] -> a
head' [] = error "Can't call head on an empty list, dummy!"
head' (x : _) = x

tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell [x] = "The list has one element: " ++ show x
tell [x, y] = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x : y : _) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_ : xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x : xs) = x + sum' xs

bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
  | bmi <= 18.5 = "You're underweight, you emo, you!"
  | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
  | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
  | otherwise = "You're a whale, congratulations!"

bmiTellv2 :: (RealFloat a) => a -> a -> String
bmiTellv2 weight height
  | bmi <= 18.5 = "You're underweight, you emo, you!"
  | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
  | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
  | otherwise = "You're a whale, congratulations!"
  where
    bmi = weight / height ^ 2

bmiTellv3 :: (RealFloat a) => a -> a -> String
bmiTellv3 weight height
  | bmi <= skinny = "You're underweight, you emo, you!"
  | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"
  | bmi <= fat = "You're fat! Lose some weight, fatty!"
  | otherwise = "You're a whale, congratulations!"
  where
    bmi = weight / height ^ 2
    skinny = 18.5 -- (skinny, normal, fat) = (18.5, 25.0, 30.0)
    normal = 25.0
    fat = 30.0

max' :: (Ord a) => a -> a -> a
max' a b
  | a > b = a
  | otherwise = b

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
  | a > b = GT
  | a == b = EQ
  | otherwise = LT

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
  where
    (f : _) = firstname
    (l : _) = lastname

cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
  let sideArea = 2 * pi * r * h
      topArea = pi * r ^ 2
   in sideArea + 2 * topArea

myGCD :: Integral t => t -> t -> t
myGCD a 0 = a
myGCD a b = myGCD b (a `mod` b)

sayAmount :: (Eq a, Num a) => a -> [Char]
sayAmount n = case n of
  1 -> "one"
  2 -> "two"
  n -> "a bunch"

describeList :: [a] -> String
describeList xs =
  "The list is " ++ case xs of
    [] -> "empty"
    [x] -> "a singleton list."
    xs -> "a longer list"


describeList' :: [a] -> String
describeList' xs = "The list is " ++ what xs
    where what [] = "empty."
          what [x] = "a singleton list."
          what xs = "a longer list."

isEmpty :: [a] -> Bool
isEmpty [] = True
isEmpty _ = False

myTail :: [a] -> [a]
myTail [] = []
myTail (_ : xs) = xs

myDrop :: Foldable t => Int -> t a -> [Int]
myDrop n aList = [n + 1 .. (length aList)]

myTake :: (Eq a1, Num a1) => a1 -> [a2] -> [a2]
myTake _ [] = []
myTake 0 _ = []
myTake n (x : xs) = x : rest
  where
    rest = myTake (n - 1) xs

-- Implementing cycle
myCycle :: [a] -> [a]
myCycle (first : rest) = first : myCycle (rest ++ [first])

-- Implementing Ackermann
ackermann :: (Num a, Num t, Eq a, Eq t) => a -> t -> t
ackermann 0 n = n + 1
ackermann m 0 = ackermann (m -1) 1
ackermann m n = ackermann (m -1) (ackermann m (n -1))

-- Implementing Collatz
collatz :: (Num a2, Integral a1) => a1 -> a2
collatz 1 = 1
collatz n =
  if even n
    then 1 + collatz (n `div` 2)
    else 1 + collatz (n * 3 + 1)

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x : []) = [x]
myReverse (x : xs) = (myReverse xs) ++ [x]