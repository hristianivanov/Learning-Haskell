isLeapYear :: Int -> Bool
isLeapYear year =
                    if (year `mod` 4 == 0) && (year `mod` 100 /= 0)
                        then True
                    else
                        False

main :: IO ()
main = do
    putStrLn "Enter a year:"
    year <- readLn
    let result = isLeapYear year
    print result
