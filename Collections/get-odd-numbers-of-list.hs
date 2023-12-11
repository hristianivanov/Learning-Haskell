type Mylist = [Int]

func :: Mylist -> Mylist
func mylist = [num | num <- mylist, num `mod` 2 /= 0]
--func mylist = [num | num <- mylist, odd num]

main :: IO ()
main = do
    putStrLn "Enter a list of integers:"
    inputList <- readLn
    let result = func inputList
    putStrLn $ "Result: " ++ show result
