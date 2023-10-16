isLeapYear :: Int -> Bool
isLeapYear year = (year `mod` 4 == 0) && (year `mod` 100 /= 0)

main :: IO ()
main = do
    putStrLn "Enter a year:"
    year <- readLn
    let result = isLeapYear year
    putStrLn $ "Is the year " ++ show year ++ " a leap year? " ++ show result
