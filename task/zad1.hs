func :: Int -> Int -> Int -> [Int]
func a d n = [a, a + d .. a + (n - 1) * d]