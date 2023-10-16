-- reverseNumber :: Integer -> Integer
-- reverseNumber n = read (reverse (show n))

-- main :: IO ()
-- main = do
--     putStrLn "Enter a natural number:"
--     input <- getLine
--     let n = read input :: Integer
--     putStrLn $ "The reverse of " ++ show n ++ " is: " ++ show (reverseNumber n)

reverseNumber :: Integer -> Integer
reverseNumber n =
    if n < 10
        then n
    else 
        read (reverse (show n))

main :: IO ()
main = do
    input <- getLine
    let n = read input :: Integer
    putStrLn $ "The reverse of " ++ show n ++ " is: " ++ show (reverseNumber n)

