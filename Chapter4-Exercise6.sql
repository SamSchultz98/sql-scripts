Select VendorId, VendorName, concat(VendorContactFName,' ', VendorContactLName) as Name
from Vendors
order by Name