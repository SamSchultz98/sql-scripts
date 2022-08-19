	select VendorName
	from Vendors

union

	select InvoiceNumber
	from Invoices
Order by vendorname
