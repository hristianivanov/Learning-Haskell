type List=[Float]


funcSqrt::List -> [Float]
funcSqrt list = [sqrt n | n<-list, n>0]