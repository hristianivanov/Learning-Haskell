main = do
    line1 <- getLine
    line2 <- getLine
    let chislitel = read line1 :: Int
    let znamenatel = read line2 :: Int

    norm :: (Int,Int) -> (Int,Int)
    norm (x,y) = (div x d , div y d)
        where d = gcd x y
    let result = norm (chislitel,znamenatel)
    print result