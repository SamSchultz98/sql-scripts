select VendorID, Sum(PaymentTotal) as 'Payment Sum'
	from Invoices
	Group By VendorID
	Order by VendorID;