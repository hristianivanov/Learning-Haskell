func :: Int -> [Int] -> Bool
func x list = 
    if (null list)
        then False
    else if  (x == head list)
        then True
    else 
        func x (tail list)


func2 :: Int -> [Int] -> Bool
func2 x [] = False
func2 x (y:ys) = 
    if (x == y)
        then True
    else
        func2 x ys