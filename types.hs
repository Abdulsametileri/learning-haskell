x :: Int
x = 2

y :: Integer
y= 2

letter :: Char
letter = 'a'

interestRate :: Double
interestRate = 0.375

isFun :: Bool
isFun = True

values :: [Int]
values = [1,2,3]

testScores :: [Double]
testScores = [0.99,0.7,0.8]

letters :: [Char]
letters = ['a','b','c']

aPet :: [Char]
aPet = "cat"

anotherPet :: String
anotherPet = "dog"

ageAndHeight ::(Int,Int)
ageAndHeight = (34,74)

firstLastMiddle :: (String,String,Char)
firstLastMiddle = ("Oscar","Grouch",'D')

streetAddress :: (Int,String)
streetAddress = (123,"Happy St.")

-- Function Types
double :: Int -> Int
double n = n*2

half :: Int -> Double
half n = (fromIntegral n) / 2

halve :: Int -> Int
halve n = n `div` 2

-- show --> stringe çeviriyor
-- read --> stringden çeviriyor
{- 
GHCi> show 6
"6"
GHCi> show 'c'
"'c'"
GHCi>show 6.0
"6.0"
-}
anotherNumber :: Int
anotherNumber = read "6"

--read "6" :: Int
--read "6" :: Double

makeAddress :: Int -> String -> String -> (Int, String, String)
makeAddress number street town = (number,street,town)

makeAddressLambda = (\number ->
                     (\street ->
                      (\town -> (number, street, town)))