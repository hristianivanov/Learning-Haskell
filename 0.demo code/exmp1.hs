max3 :: Int -> Int -> Int -> Int --return values ist last param
max3 x y z
  | x >= y && x >= z = x
  | y >= x && y >= z = y
  | otherwise        = z
