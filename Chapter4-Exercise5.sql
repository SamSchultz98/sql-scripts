Select VendorName as Vendor, InvoiceDate as date, InvoiceNumber as Number, InvoiceSequence as '#', InvoiceLineItemAmount
	from Vendors V
	Join Invoices I
		On V.VendorID = I.VendorID
	Join InvoiceLineItems IL
		on IL.InvoiceID = I.InvoiceID
	order by VendorName, InvoiceDate, InvoiceNumber, InvoiceSequence;