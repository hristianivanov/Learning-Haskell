reverseNum :: Int -> Int
reverseNum n =
                if ( n < 10 )
                    then n
                else
                    read ( reverse (show n) )

main = do
    input <- getLine
    let num = read input :: Int
    let result = reverseNum num
    print result

