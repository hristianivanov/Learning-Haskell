type Mylist = [Int]

func :: Mylist -> Mylist
func mylist = [3 * num | num <- mylist]

main :: IO ()
main = do
    putStrLn "Enter a list of integers:"
    inputList <- readLn
    let result = func inputList
    putStrLn $ "Result: " ++ show result
