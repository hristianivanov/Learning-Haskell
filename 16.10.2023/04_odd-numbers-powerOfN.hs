productOfOddNumbers :: Int -> Int
productOfOddNumbers n = loop 1 1 n

loop :: Int -> Int -> Int -> Int
loop sum i n =
    if (i > n)
        then sum
    else
        loop (sum * i) (i + 2) n

main :: IO()
main = do
    line <- getLine
    let number = read line :: Int
    let result = func number
    print result
