func :: Int -> [Int] -> Int
func cnt list =
    if null list
        then cnt
    else
        func (cnt + 1) (tail list)