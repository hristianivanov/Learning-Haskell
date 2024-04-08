class Container a where
    contains :: a -> a -> Bool

instance (Eq a) => Container [a] where
    contains = elem
