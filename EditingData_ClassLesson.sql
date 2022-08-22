Update VendorsCopy SET
    defaultAccountNo = (Select AccountNo From GLAccounts where AccountDescription like '%ash')
    where VendorId = (
        Select VendorId from Vendorscopy
        Where VendorName like 'Max%'
    )
