data Shape = Circle Float | Rectangle Float Float | Triangle Float Float Float      deriving(Show, Read)
 
class Figure shape where
    perimeter :: shape -> Float
    area :: shape -> Float

instance Figure Shape where
    perimeter (Circle r) = 2 * pi * r
    perimeter (Triangle a b c) = a+b+c
    perimeter (Rectangle a b)=2*(a+b)
 
    area (Circle r) = pi * r * r
    area (Rectangle a b)= a*b
    area (Triangle a b c) = sqrt(p*(p-a)*(p-b)*(p-c))
                                 where p = (a+b+c)/2