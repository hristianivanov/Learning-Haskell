quadrant :: Double -> Double -> String
quadrant x y =
    if x > 0 && y > 0
        then "First Quadrant"
    else if x < 0 && y > 0
        then "Second Quadrant"
    else if x < 0 && y < 0
        then "Third Quadrant"
    else if x > 0 && y < 0
        then "Fourth Quadrant"
    else
        "On an axis or at the origin"

main :: IO ()
main = do
    putStrLn "Enter the x coordinate:"
    x <- readLn
    putStrLn "Enter the y coordinate:"
    y <- readLn
    let result = quadrant x y
    putStrLn $ "The point (" ++ show x ++ ", " ++ show y ++ ") is in: " ++ result
