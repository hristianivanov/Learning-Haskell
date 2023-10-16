-- Define a function to calculate the sum of the series
calculateSum :: Double -> Double
calculateSum n
    | n <= 0    = error "Input must be a positive number."
    | otherwise = sum [1 / x | x <- [1..n]]

-- Example usage:
main :: IO ()
main = do
    putStrLn "Enter a positive number (n): "
    input <- getLine
    let n = read input :: Double
    putStrLn $ "The sum of the series is: " ++ show (calculateSum n)


calculateSum :: Double -> Double
calculateSum n
    | n <= 0    = error "Input must be a positive number."
    | otherwise = calculateSum' n 1

calculateSum' :: Double -> Double -> Double
calculateSum' n currentTerm
    | n == 1    = currentTerm
    | otherwise = currentTerm + calculateSum' (n - 1) (1 / n)

main :: IO ()
main = putStrLn $ "The sum of the series is: " ++ show (calculateSum 5)
