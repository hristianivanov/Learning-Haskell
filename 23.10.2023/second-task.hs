main = do
    input <- getLine
    let number = read input :: Int
    let result = show (func number)
    print result

func :: Int -> Int
func n = loop n 1 0

loop :: Int -> Int -> Int -> Int
loop num i cnt =
    if i > num
        then cnt
    else if (num `mod` i == 0)
        then loop num (i + 1) (cnt + 1)
    else
        loop num (i + 1) cnt

























