-- func :: Int -> Int -> Int -> Int

-- func a b c =
--                 if(d < 0 )
--                     []
--                 else if(d == 0)
--                     (-b + sqrt d) / 2 * a
--                 else 
--                     [(-b + sqrt d) / 2 * a, (-b - sqrt d) / 2 * a]
--                 where
--                     d = b^2 - (4 * a * c)


func :: Int -> Int -> Int -> Either Int [Int]
func a b c =
    if d < 0
        then Left 0
    else if d == 0
        then Right [round $ (-b + sqrt d) / (2 * fromIntegral a)]
    else
        Right [round $ (-b + sqrt d) / (2 * fromIntegral a), round $ (-b - sqrt d) / (2 * fromIntegral a)]
    where
        d = b^2 - (4 * a * c)
