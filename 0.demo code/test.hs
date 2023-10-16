-- main = do
--    firstLine <- getLine
--    let firstNum = read firstLine :: Float
--    print firstNum

main :: IO ()
main = do
    input <- getLine
    let n = read input :: Int
    putStrLn $ "Fibonacci " ++ show n ++ " number is: " ++ show (fib n)

fib :: Int -> Int
fib num =
    if num == 0 || num == 1
        then 1
        else fib (num - 1) + fib (num - 2)
