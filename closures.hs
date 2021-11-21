ifEven myFunction x = if even x
                      then myFunction x
                      else x
inc x = x + 1

ifEvenInc n = ifEven (\x -> x + 1) n
ifEvenDouble n = ifEven (\x -> x*2) n
ifEvenSquare n = ifEven (\x -> x^2) n

-- Each of these definitions is identical except for the function you’re passing to ifEven.

genIfEven f = (\x -> ifEven f x)

-- Now you’re passing in a function and returning a lambda function. 
-- The function f that you passed in is captured inside the lambda function! 
-- When you capture a value inside a lambda function, this is referred to as a closure.

ifEvenIncv2 = genIfEven inc
ifEvenIncv3 = (\x -> ifEven inc x)