factorialFunc :: Int -> Int
factorialFunc num =
        if (num < 1)
            then 1
        else 
            num * factorialFunc(num - 1)

powerOfTwo :: Int -> Int
powerOfTwo num =
        if (num == 0)
            then 1
        else 
            2 * powerOfTwo(num - 1)

func :: Int -> Float
func num = fromIntegral(factorialFunc(num)) / fromIntegral(powerOfTwo(num))

sumaFunc :: Int -> Float
sumaFunc num =
        if (num == 0)
            then func 0
        else 
            func(n) + sumaFunc(n - 1)

resultList :: [Float]
resultList = take 10 [sumaFunc n | n <- [1..]]
