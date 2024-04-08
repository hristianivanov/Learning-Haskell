class KindOffer a where
    addKind :: a -> [a] -> [a]
    discountKinds :: [a] -> [a]
    
data Kind = Kind { name :: String, price :: Double } deriving (Show, Read)

instance KindOffer Kind where
    addKind kind kinds = kind : kinds
    discountKinds (Kind name price : xs) = Kind name (price * 0.9) : discountKinds xs


