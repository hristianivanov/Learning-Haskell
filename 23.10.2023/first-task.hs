main = do
    input <- getLine
    let number = read input :: Int
    let result = func number
    print result

func :: Int -> Int
func number = 
                if (number `mod` 3 == 0)
                    then number ^ 3
                else if (number `mod` 7 == 0)
                    then number * 4
                else
                    0