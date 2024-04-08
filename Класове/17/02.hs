data Stock = Stock { stockName :: String, priceWithoutVAT :: Double }

class PriceStock a where
    calculatePriceWithVAT :: a -> Double
    calculateDiscountedPrice :: a -> Double -> Double

instance PriceStock Stock where
    calculatePriceWithVAT stock = priceWithoutVAT stock * 1.2
    calculateDiscountedPrice stock discountPercentage =
        let priceWithVAT = calculatePriceWithVAT stock
            discountFactor = 1 - (discountPercentage / 100)
        in priceWithVAT * discountFactor
