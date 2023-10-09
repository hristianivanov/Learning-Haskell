-- Recoursive way
powerOfTwo :: Integer -> Integer
powerOfTwo n =
               if(  n == 0 )   
                then 1
               else 
                2 * powerOfTwo (n - 1)