binomialCoefficient :: Integer -> Integer -> Integer
binomialCoefficient n k
    | k == 0 || k == n = 1
    | otherwise = binomialCoefficient (n - 1) k + binomialCoefficient (n - 1) (k - 1)

main :: IO ()
main = do
    putStrLn "Enter n and k (space-separated):"
    input <- getLine
    let [n, k] = map read (words input) :: [Integer]
    let result = binomialCoefficient n k
    putStrLn $ "C(" ++ show n ++ ", " ++ show k ++ ") = " ++ show result
