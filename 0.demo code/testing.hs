main = do
    putStrLn "Hello World"
    input <- getLine
    let num = read input :: Int
    putStrLn $ "The number is -> " ++ show num