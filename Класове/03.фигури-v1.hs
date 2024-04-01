class Figure a where
    perimeter :: a -> Float
    area :: a -> Float
data Circle = Circle Float
data Rectangle = Rectangle Float Float
data Triangle = Triangle Float Float Float

instance Figure Circle where
    perimeter (Circle r) = 2 * pi * r
    area (Circle r) = pi * r^2

instance Figure Rectangle where
    perimeter (Rectangle width height) = 2 * (width + height)
    area (Rectangle width height) = width * height

instance Figure Triangle where
    perimeter (Triangle a b c) = a + b + c
    area (Triangle a b c) = heronFormula a b c
        where
            heronFormula a b c = sqrt (halfP * (halfP - a) * (halfP - b) * (halfP - c))
            halfP = (a + b + c) / 2
