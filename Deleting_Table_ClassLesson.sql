Delete VendorsCopy
    where VendorId = (
        Select VendorID
        From VendorsCopy
        Where Vendorname like 'max%'
    )