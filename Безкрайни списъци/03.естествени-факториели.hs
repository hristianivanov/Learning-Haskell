factorielFunc :: Int -> Int
factorielFunc num = 
        if(num < 1)
            then 1
        else
            num * factorielFunc(num-1)

listFunc :: [Int]
listFunc = map factorielFunc [0..]
-- Which solution is correct ?
--listFunc = iterate (\x -> x * (x + 1)) 1

