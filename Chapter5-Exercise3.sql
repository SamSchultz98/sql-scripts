Select VendorName, count(InvoiceID) as Invoices, Sum(InvoiceTotal) as InvoiceTotal
	from Vendors v
	Join Invoices i
		on v.vendorid=i.vendorid
	Group by VendorName
	Order By Invoices desc;