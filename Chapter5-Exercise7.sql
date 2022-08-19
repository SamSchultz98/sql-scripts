Select VendorName, AccountDescription, count(InvoiceLineItemAmount) as LineIemCount, sum(InvoiceLIneItemAmount) as LineItemSum
	from Vendors V 
	Join GLAccounts G
		On g.AccountNo=V.DefaultAccountNo
	Join InvoiceLineItems L
		on G.AccountNo=L.AccountNo
	Join Invoices I
		on V.VendorID=I.VendorID
	Group By VendorName, AccountDescription
	Order by VendorName, AccountDescription;