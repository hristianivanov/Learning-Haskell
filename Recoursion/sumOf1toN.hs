main = do  
    line <- getLine
    let numbers = read line :: Int
        sumaNumber = sumaLoop 0 1 numbers
        sumaLoop sum index numbers =
                                    if (index > numbers)
                                        then sum
                                    else
                                        sumaLoop (sum - index) (index + 1) numbers
    print sumaNumber