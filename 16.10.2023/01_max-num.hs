findMax :: Ord a => a -> a -> a -> a -> a
findMax x y z t = max (min x y) (min z t)

main :: IO ()
main = do
    putStrLn "Enter four values:"
    x <- readLn
    y <- readLn
    z <- readLn
    t <- readLn
    let result = findMax x y z t
    putStrLn $ "The maximum of the minimums is: " ++ show result
