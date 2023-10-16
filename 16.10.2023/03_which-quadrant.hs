quadrant :: Double -> Double -> String
quadrant x y =
    if x > 0 && y > 0
        then "first"
    else if x < 0 && y > 0
        then "second"
    else if x < 0 && y < 0
        then "third"
    else if x > 0 && y < 0
        then "fourth"
    else
        "x and y -> ( 0, 0 )"

main :: IO ()
main = do
    putStr "Enter the x coordinate: "
    x <- readLn
    putStr "Enter the y coordinate: "
    y <- readLn
    let result = quadrant x y
    putStrLn $ "The point is in: " ++ result
