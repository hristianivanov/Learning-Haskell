class BankAccount account where
    deposit:: account-> Float -> account
    withdraw::account-> Float -> account
    checkBalance::account->Float
 
data Account = Account {accountOwner::String, balance::Float}  deriving(Show, Read)
 
instance BankAccount Account where
    deposit (Account name oldBalance) suma = Account name(oldBalance+suma)
    withdraw (Account name oldBalance) suma = 
        if(oldBalance>=suma) 
            then Account name (oldBalance-suma)
        else 
            Account name oldBalance
    checkBalance (Account name balance) = balance