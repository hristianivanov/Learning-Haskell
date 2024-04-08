class SalaryWorker a where
    calculateSalary :: a -> Int -> Float

data Worker = Worker { workerName :: String, baseSalary :: Float, productionTarget :: Int } deriving(Show, Read)

instance SalaryWorker Worker where
    calculateSalary worker production =
        if (production >= productionTarget worker)
            then baseSalary worker * 1.5
        else 
            baseSalary worker

