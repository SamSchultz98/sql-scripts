Insert VendorsCopy
(VendorName,VendorAddress1,VendorAddress2,VendorCity,VendorState,VendorZipCode,VendorPhone,VendorContactLname,VendorContactFName,DefaultTermsId,DefaultAccountNo)

    (Select VendorName, VendorAddress1,VendorAddress2,VendorCity,VendorState,VendorZipCode,VendorPhone,VendorContactLname,VendorContactFName,DefaultTermsId,DefaultAccountNo
    From Vendors
    Where VendorState != 'CA')


    

