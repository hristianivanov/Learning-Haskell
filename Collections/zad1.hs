func :: Float -> Float -> Float -> [Float]
func a b c 
        |d < 0 = []
        |d == 0 = [(-b+sqrt d)/2*a]
        |otherwise = [(-b+sqrt d)/2*a, (-b-sqrt d)/2*a]
        where 
            d :: Float
            d = b^2-4*a*c


         
