Select VendorName, PaymentTotal
From Vendors join invoices
ON Vendors.Vendorid = invoices.vendorid
where paymenttotal > 5000;