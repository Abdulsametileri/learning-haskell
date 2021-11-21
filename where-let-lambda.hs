sumSquareOrSquareSumWithWhere x y = if sumSquare > squareSum
                           then sumSquare
                           else squareSum 
    where sumSquare = x ^ 2 + y ^ 2
          squareSum = (x + y) ^ 2


body = (\sumSquare squareSum ->
          if sumSquare > squareSum
          then sumSquare
          else squareSum)

sumSquareOrSquareSumWithLambda x y = body (x ^ 2 + y ^ 2) ((x + y) ^ 2)

dubs = (\x -> x*2)
doubleDouble x = dubs x * 2

doubleDoubleA x = (\dubs -> dubs*2) (x*2)

sumSquareOrSquareSumWithLet x y = let sumSquare = (x^2 + y^2)
                                      squareSum = (x+y)^2
                              in
                               if sumSquare > squareSum
                               then sumSquare
                               else squareSum

overwrite x = let x = 2
              in
               let x = 3
               in   
                let x = 4
                in 
                 x

lambdaINC x = (\x -> x + 1) x
lambdaDOUBLE x = (\x -> x * 2) x
lambdaSQUARE x = (\x -> x ^ 2) x

lambdaINCShort = (\x -> x + 1)
lambdaDOUBLEShort = (\x -> x*2) 
lambdaSQUAREShort = (\x -> x^2)