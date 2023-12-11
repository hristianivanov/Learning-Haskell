-- 1зад. Да се дефинира тип List – списък от цели числа. Да се дефинира тип Dvoiki – списък от наредени двойки от цели числа. 
-- Напишете функция, която приема като входен параметър списък от наредени двойки цели числа и връща като резултат: 
-- А) списък от цели числа, получени като сума от елементите на съответните наредени двойки; 
-- Б) списък от цели числа, равни на сумите от елементите на онези двойки, елементите на които са нестрого монотонно растящи. 

type List = [(Int, Int)]

func :: List -> [Int]
func list = [num1 + num2 | (num1, num2) <- list]

sumPairs :: List -> [Int]
sumPairs list = [num1 + num2 | (num1, num2) <- list]

-- Функция, която връща сумите само за двойки с нестрого монотонно растящи елементи
sumIncreasingPairs :: List -> [Int]
sumIncreasingPairs list = [num1 + num2 | (num1, num2) <- list, num1 <= num2]

main :: IO ()
main = do
    putStrLn "Enter a list of pairs of integers:"
    inputList <- readLn
    let resultA = sumPairs inputList
    let resultB = sumIncreasingPairs inputList
    putStrLn $ "Result A: " ++ show resultA
    putStrLn $ "Result B: " ++ show resultB