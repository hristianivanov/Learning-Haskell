type List=[Int]
type Dvoiki = [(Int, Int)]


func:: Dvoiki -> List
func dv = [x+x1 | (x,x1)<-dv]


sum2:: Dvoiki -> List
sum2 dv = [x+x1 | (x,x1)<-dv, x<x1]

