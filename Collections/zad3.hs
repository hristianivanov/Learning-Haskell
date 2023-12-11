type List=[Int]

func::List -> List
func list = [n | n<-list, odd n]
