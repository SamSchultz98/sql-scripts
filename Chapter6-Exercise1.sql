select Distinct VendorName
from Vendors
    join Invoices
        on Vendors.VendorId = Invoices.VendorID
    Order by VendorName


------------------------------------------------------------------------------------------------------------------------------------------
select Distinct VendorName                              --Mine that did not work
from Vendors
    Where exists (
        Select VendorName
        From Invoices
        where InvoiceID is null
    )
    Order by VendorName

----------------------------------------------------------------------------------------------------------------------------------------------

    select Distinct VendorName              --working example
from Vendors
    Where exists (
        Select VendorName
        From Invoices
        where vendors.vendorid = invoices.VendorID
    )
    Order by VendorName


------------------------------------------------------------------------------------------------------------------------------------------
    select Distinct VendorName                  --Another working example
from Vendors
    Where VendorId in(
        Select VendorID
        From Invoices
    )
    Order by VendorName