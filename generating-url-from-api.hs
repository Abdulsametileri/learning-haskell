-- getRequestURL "http://example.com" "1337hAsk3ll" "book" "1234"
getRequestURL host apiKey resource id = host ++ 
                                        "/" ++ 
                                        resource ++
                                        "/" ++
                                        id ++
                                        "?token=" ++
                                        apiKey

-- exampleUrlBuilder "1337hAsk3ll" "book" "1234"
genHostRequestBuilder host = (\apiKey resource id -> getRequestURL host apiKey resource id)
exampleUrlBuilder = genHostRequestBuilder "http://example.com"
genApiRequestBuilder hostBuilder apiKey = (\resource id -> hostBuilder apiKey resource id)

-- myExampleUrlBuilder "book" "1234"
myExampleUrlBuilder = genApiRequestBuilder exampleUrlBuilder "1337hAsk3ll"


add4 a b c d = a + b + c + d
addXto3 x = (\b c d -> add4 x b c d)
addXYto2 x y = (\c d -> add4 x y c d)

-- GHCi> mystery = add4 3
-- GHCi> mystery 2 3 4
-- 12
-- GHCi> mystery 5 6 7
-- 21

-- GHCi> anotherMystery = add4 2 3
-- GHCi> anotherMystery 1 2
-- 8
-- GHCi> anotherMystery 4 5
-- 14