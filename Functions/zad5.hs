func :: [a] -> Int -> [a]

func [] _ = []
func list count = (take (count-1) list) ++ func( (drop count list) count)
-- func list count = (take count list) ++ func( (drop (count+1) list) count)


-- takeEveryNth :: Int -> [a] -> Int -> [a]
-- takeEveryNth _ [] _ = []
-- takeEveryNth n (x:xs) count =
--     if (count == n)
--         then takeEveryNth n (drop 1 xs) 1
--     else
--         x : takeEveryNth n xs (count + 1)

-- removeNthElements :: Int -> [a] -> [a]
-- removeNthElements n list = takeEveryNth n list 1