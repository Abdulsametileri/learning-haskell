myGCD a 0 = a
myGCD a b = myGCD b (a `mod` b)

sayAmount n = case n of 
    1 -> "one"
    2 -> "two"
    n -> "a bunch"

isEmpty [] = True
isEmpty _ = False

myHead (x:xs) = x
myHead [] = error "No head for empty list"

myTail [] = []
myTail (_:xs) = xs

myDrop n aList = [n+1..(length aList)] 

-- Implementing length
myLength [] = 0
--myLength xs = 1 + myLength (myTail xs)
myLength (x:xs) = 1 + myLength xs

-- Implementing take
myTake _ [] = []
myTake 0 _ = []
myTake n (x:xs) = x:rest
    where rest = myTake (n - 1) xs

-- Implementing cycle
myCycle (first:rest) = first:myCycle (rest++[first])

-- Implementing Ackermann
ackermann 0 n = n+1
ackermann m 0 = ackermann (m-1) 1
ackermann m n = ackermann (m-1) (ackermann m (n-1))

-- Implementing Collatz
collatz 1 = 1
collatz n = if even n
            then 1 + collatz (n `div` 2) 
            else 1 + collatz (n*3 + 1)


-- Implementing Reverse
myReverse [] = []
myReverse (x:[]) = [x]
myReverse (x:xs) = (myReverse xs) ++ [x]