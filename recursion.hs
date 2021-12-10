{- 
1 Identify the end goal(s).
2 Determine what happens when a goal is reached.
3 List all alternate possibilities.
4 Determine your “rinse and repeat” process.
5 Ensure that each alternative moves you toward the goal. 
-}

{- 
GCD
1 You start with two numbers, a and b.
2 If you divide a by b and the remainder is 0, clearly b is the GCD.
3 Otherwise, you change the value of a by assigning it the value of b (b becomes the
new a). You also change the value of b to be the remainder you obtained in step 2
(the new b is the remainder of the original a divided by the original b).
4 Then repeat until a/b has no remainder. 
-}

myGCD a b = if remainder == 0
            then b
            else myGCD b remainder
    where remainder = a `mod` b