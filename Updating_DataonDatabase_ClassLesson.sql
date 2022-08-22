UPDATE VendorsCopy Set 
    DefaultAccountNo = (Select AccountNo from GLAccounts where AccountDescription = 'Software'),
    DefaultTermsID = 1
    Where DefaultAccountNo = 100;

Select * From VendorsCopy
Where DefaultAccountNo in (100, 167)
