factorielFunc :: Int -> Int
factorielFunc num = 
        if(num < 1)
            then 1
        else
            num * factorielFunc(num-1)

getListNumFunc :: Int -> Float
getListNumFunc num = fromIntegral(factorielFunc(num)) / fromIntegral(2^num)

list = take 10 [getListNumFunc n | n <- [1..]]