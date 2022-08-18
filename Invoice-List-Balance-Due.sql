SELECT 
	InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal,
	CreditTotal, 
	InvoiceTotal - PaymentTotal - CreditTotal AS BalanceDue
From Invoices 
Where InvoiceTotal - PaymentTotal - CreditTotal > 0
Order By InvoiceDate;