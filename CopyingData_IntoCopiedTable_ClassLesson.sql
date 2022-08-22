set IDENTITY_INSERT VendorsTrueCopy on;                 --This allows us to put primary key info into table

Insert Into VendorsTrueCopy (VendorId,VendorName,VendorAddress1, VendorAddress2,            --Type the columns you want inserted (All of the vendor columns)
    VendorCity,VendorState,VendorZipCode,VendorPhone,VendorContactLName,
    VendorContactFName,DefaultTermsID,DefaultAccountNo)
    Select VendorId,VendorName,VendorAddress1, VendorAddress2,                                 --Move all the columns from before in a select, and then choose from where
    VendorCity,VendorState,VendorZipCode,VendorPhone,VendorContactLName,
    VendorContactFName,DefaultTermsID,DefaultAccountNo
    From Vendors;

set IDENTITY_INSERT VendorsTrueCopy off;



Select * from VendorsTrueCopy