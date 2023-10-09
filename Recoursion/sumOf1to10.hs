-- Дефинирайте рекурсивна функция за сбор на първите n естествени числа
sumFirstN :: Integer -> Integer
sumFirstN 0 = 0
sumFirstN n = n + sumFirstN (n - 1)

-- Вашата функция, която използва горната рекурсивна функция за първите 10 естествени числа
sumOfFirst10NaturalNumbers :: Integer
sumOfFirst10NaturalNumbers = sumFirstN 10

main :: IO ()
main = putStrLn $ "Сборът на първите 10 естествени числа е: " ++ show sumOfFirst10NaturalNumbers
