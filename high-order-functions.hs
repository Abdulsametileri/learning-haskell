-- Using map

{- 
GHCi> map reverse ["dog","cat", "moose"]
["god","tac","esoom"]
GHCi> map head ["dog","cat", "moose"]
"dcm"
GHCi> map (take 4) ["pumpkin","pie","peanut butter"]
["pump","pie","pean"] 
GHCi> map ("a "++) ["train","plane","boat"]
["a train","a plane","a boat"]
GHCi> map (^2) [1,2,3] [1,4,9]
-}

addAnA [] = []
addAnA (x:xs) = ("a " ++ x):addAnA xs

squareAll [] = []
squareAll (x:xs) = x^2:squareAll xs

myMap f [] = []
myMap f (x:xs) = (f x):myMap f xs

-- Filtering a List
{- 
GHCi> filter even [1,2,3,4]
[2,4]
GHCi> filter (\(x:xs) -> x == 'a') ["apple","banana","avocado"]
["apple","avocado"] 
-}

myFilter f [] = []
myFilter test (x:xs) = if test x
                       then x:myFilter test xs 
                       else myFilter test xs 

myRemove f [] = []
myRemove test (x:xs) = if test x
                       then myRemove test xs
                       else x:myRemove test xs

-- Folding a list
{- 
GHCi> foldl (+) 0 [1,2,3,4]
10
-}

concatAll xs = foldl (++) "" xs
sumOfSquares xs = foldl (+) 0 (map (^2) xs)

rcons x y = y:x
myReversev2 xs = foldl rcons [] xs

myFoldl f init [] = init
myFoldl f init (x:xs) = myFoldl f newInit xs
    where newInit = f init x

myElem val myList = (length filteredList) /= 0
   where filteredList = filter (== val) myList

isPalindrome text = processedText == reverse processedText
    where noSpaces = filter (/= ' ') text
          processedText = map toLower noSpaces