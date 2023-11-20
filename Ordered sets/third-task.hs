type Student = (String, Float)
getStudentData :: IO Student
getStudentData = do
    name <- getLine
    grade <- readLn
    return (name, grade)

compareStudents :: Student -> Student -> Student
compareStudents student1 student2
    | snd student1 > snd student2 = student1
    | otherwise = student2

main :: IO ()
main = do
    student1 <- getStudentData
    student2 <- getStudentData
    let betterStudent = compareStudents student1 student2
    putStrLn $ "Ученикът с по-висок успех е: " ++ fst betterStudent ++ " с успех " ++ show (snd betterStudent)
