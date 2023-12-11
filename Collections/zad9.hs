funcSum::[Int] -> Int
funcSum list = 
    if(list == []) 
        then 0
    else head list + funcSum(tail list)