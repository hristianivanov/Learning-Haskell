-- func :: Double -> Double
-- func x
--     | x > 2            = x * x - x + 4
--     | x <= 2 && x >= 1 = x + 7
--     | otherwise = 0

func :: Double -> Double
func x =
    if x > 2
        then x^2 - x + 4
    else if x >= 1
        then x + 7
    else 0