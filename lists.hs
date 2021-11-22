-- !! Operator
-- If you want to access a particular element of a list by its index, you can use the !! operator.
accessFirst = [1,2,3] !! 0 -- 1
accessFirstDifferentWay = (!!) [1,2,3] 0 -- 1
accessFourth = "puppies" !! 4 -- 'i'
accessEleventh = [1..10] !! 8 -- 9
----

-- length
lengthEx1 = length [1,20] -- 20
lengthEx2 = length [(10,20),(1,2),(15,16)] -- 3
lengthEx3 = length "quicksand" -- 9

-- reverse
reverseEx1 = reverse [1,2,3] -- [3,2,1]
reverseEx2 = reverse "cheese" -- "eseehc"
isPalindrome word = word == reverse word

-- elem
-- The elem function takes a value and a list and checks whether the value is in the list
elemEx1 = elem 13 [0,13..100]
elemEx2 = 'p' `elem` "cheese"

-- take and drop
-- The take function takes a number and a list as arguments and then returns the first n elements of the list
takeEx1 = take 5 [2,4..100] -- [2,4,6,8,10]
takeEx2 = take 3 "wonderful" -- "won"

-- takeLast 10 [1..100]
takeLast n aList = reverse (take n (reverse aList)) -- [91,92,93,94,95,96,97,98,99,100]

dropEx1 = drop 2 [1,2,3,4,5] -- [3,4,5]
dropEx2 = drop 5 "very awesome" -- "awesome"

-- zip
zipEx1 = zip [1,2,3] [2,4,6] -- [(1,2),(2,4),(3,6)]
zipEx2 = zip "dog" "rabbit" -- [('d','r'),('o','a'),('g','b')]
zipEx3 = zip ['a' .. 'f'] [1 .. ] -- [('a',1),('b',2),('c',3),('d',4),('e',5),('f',6)]

-- cycle
-- it uses lazy evaluation to create an infinite list. 

ones n = take n (cycle [1])

-- assignToGroups 3 ["file1.txt","file2.txt","file3.txt" ,"file4.txt","file5.txt","file6.txt","file7.txt" ,"file8.txt"]
-- [(1,"file1.txt"),(2,"file2.txt"),(3,"file3.txt"),(1,"file4.txt"),(2,"file5.txt"),(3,"file6.txt"),(1,"file7.txt"),(2,"file8.txt")]
-- assignToGroups 2 ["Bob","Kathy","Sue","Joan","Jim","Mike"]
--  [(1,"Bob"),(2,"Kathy"),(1,"Sue"),(2,"Joan"),(1,"Jim"),(2,"Mike")]
assignToGroups n aList = zip groups aList
    where groups = cycle [1..n]


repeatInfinitely n = cycle [n] -- repeat n also valid btw

-- drop startPosition
-- 

subseq startPosition endPosition aList = take difference (drop startPosition aList)
    where difference = endPosition - startPosition


-- inFirstHalf 3 [1..10] 
inFirstHalf element aList = 
                    let halfList = take (length aList `div` 2) aList
                    in element `elem`  halfList


inFirstHalfv2 val myList = 
                val `elem` firstHalf 
                where midpoint = length myList `div` 2
                      firstHalf = take midpoint myList