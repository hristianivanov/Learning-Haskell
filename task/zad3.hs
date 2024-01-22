func :: Int -> Int -> [Int]
func n d =
    if (n == 1)
        then []
    else if (n `mod` d == 0)
        then d : func (div n d) d
    else
        func n (d + 1)

listOfDivisors :: [Int] -> [[Int]]
listOfDivisors = map (\n -> func n 2)
