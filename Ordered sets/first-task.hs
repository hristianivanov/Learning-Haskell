childInfo :: (String, Int) -> (String, Int)
childInfo (name, age) =
    if (age < 0)
        then error "Невалидна възраст"
    else if(age < 18)
        then (name,18 - age)
    else
        (name,0)

main :: IO ()
main = do
    name <- getLine
    age <- readLn
    let (childName, yearsToAdult) = childInfo (name, age)
    putStrLn $ childName ++ " е на " ++ show age ++ " г. Остават му " ++ show yearsToAdult ++ " години до пълнолетие."
