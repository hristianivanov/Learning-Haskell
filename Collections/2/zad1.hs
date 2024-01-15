func :: (Ord a) => [a] -> a
func [x] = x
func (x:xs) = max x (func xs)