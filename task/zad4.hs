func :: [Int] -> [Int]
func nums = filter dividedByThree nums

dividedByThree :: Int -> Bool
dividedByThree n =
                    if n `mod` 3 == 0
                        then True
                    else
                        False
