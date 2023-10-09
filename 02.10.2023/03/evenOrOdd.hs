func :: Int -> Bool
func num
        | (mod num 2) == 0 = True
        | otherwise = False