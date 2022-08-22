Insert VendorsCopy

    (VendorName,
    VendorAddress1, VendorAddress2,
    VendorCity, VendorState, 
    VendorZipCode, VendorPhone, 
    VendorContactLName,VendorContactFname,
    DefaultTermsId, DefaultAccountNo)
    
    Values
    ('Max Technical Training',
    '4900 Parkway Dr.', null,
    'Mason', 'OH',
    '45040', '513-322-8888',
    'Noah', 'Phence',
     5, 100 );                                                                --When doing values, has to be positionaly the same as the columns ex: the first thing inserted will be vendor id, second will be vendor name, and so on

--Set IDENTITY_INSERT VendorsCopy OFF      --Ignore this, there was an IDentity key on the ID, meaning it will genertate the id for you. No need to make it yourself


select * 
from vendorscopy
order by vendorid