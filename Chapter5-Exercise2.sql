Select Top 10 VendorName,sum(PaymentTotal) as PaymentSum
	from Invoices I
	Join Vendors V
		on I.VendorId = V.VendorID
	
	group by VendorName
	Order By PaymentSum desc;