func :: [(Int, Int, Int)]
func = [(x, y, z) | z <- [2..], y <- [2..z-1], x <- [2..y-1], x^2 + y^2 == z^2]
