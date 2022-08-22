Select Distinct VendorName,
    (Select MAX(InvoiceDate) from invoices
        where Invoices.Vendorid = Vendors.VendorID) as LatestInv
    from vendors
    order by LatestInv desc;
