-- main = do
--     putStrLn "Hello World"
--     input <- getLine
--     let num = read input :: Int
--     putStrLn $ "The number is -> " ++ show num

-- main :: IO ()
-- main = do
--     putStrLn "Enter a number:"
--     input <- getLine
--     let n = read input :: Int
--     putStrLn $ concatMap show [1..n]


-- main :: IO ()
-- main = do
--     putStrLn "Enter a number:"
--     input <- getLine
--     let n = read input :: Int
--     putStrLn $ concatMap show [n,n-1..1]

-- productStep3 :: Integer -> Integer
-- productStep3 n =
--     if n <= 0
--         then 1
--     else
--         n * productStep3 (n - 3)

-- main :: IO ()
-- main = do
--     putStrLn "Enter a number:"
--     input <- getLine
--     let n = read input :: Integer
--     putStrLn $ "The product of numbers from 1 to " ++ show n ++ " with step 3 is: " ++ show (productStep3 n)
