class Bidon amount where
    add:: amount-> Float -> amount
    remove::amount-> Float -> amount
 
data BidonA = BidonA {quantity::Float}    deriving(Show, Read)
 
instance Bidon BidonA where
 
     add (BidonA q) l = 
        if(q+l<=100) 
            then BidonA (q+l)
        else 
            BidonA q
            
     remove (BidonA q) l = 
        if(q>=l) 
            then BidonA (q-l)
        else 
            BidonA q    
 
    --  waterstate (BidonA q)=q