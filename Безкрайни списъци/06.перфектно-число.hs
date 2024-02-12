deliteli :: Int -> [Int]
deliteli num = [m | m <- [1..num `div` 2], num `mod` m == 0]

sumaDeliteli :: Int -> Int
sumaDeliteli num = sum (deliteli num)

perfectList :: [Int]
perfectList = [n | n <- [1..], sumaDeliteli n == n]

-- isPerfect :: Int -> Bool
-- isPerfect n = n == sum (filter (\x -> n `mod` x == 0) [1..n-1])
-- perfectNumbers :: [Int]
-- perfectNumbers = filter isPerfect [1..]