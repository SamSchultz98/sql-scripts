	Select 'A' Category,*
		from invoices
		Where InvoiceTotal >= 10000
Union
	Select 'B' Category,*
	From Invoices
	Where InvoiceTotal < 10000 and InvoiceTotal >=100
Union
	Select 'C' Category,*
	From Invoices
	Where InvoiceTotal < 100;