funcMultiply::[Int] -> Int
funcMultiply list = if(list == []) then 1
                 else head list * funcMultiply(tail list)