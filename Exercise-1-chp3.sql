Select concat(VendorContactLName,', ', VendorContactFName) As 'Full name'
from Vendors
Where VendorContactLName = 'A%','B%','C%','E%'
Order By VendorContactLName, VendorContactFName;