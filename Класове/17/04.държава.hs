class Continent a where
    addCountry :: a -> Country -> a

data Country = Country { 
    countryName :: String, 
    capital :: String 
    } 
    deriving (Show, Read)

type CountryList = [Country]

instance Continent CountryList where
    addCountry countries newCountry = newCountry : countries

main = do
    countryName <- getLine
    capital <- getLine
    let newCountry = Country countryName capital
    let updatedCountries = addCountry [] newCountry
    print updatedCountries
