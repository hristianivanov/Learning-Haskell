fact :: Int -> Int
fact n = factLoop n 1 1

factLoop :: Int -> Int -> Int -> Int
factLoop (n, i, p) =
                    if (i > n)
                        then p
                    else
                        factLoop (n, (i+1), (p * i))