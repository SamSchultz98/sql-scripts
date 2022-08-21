select InvoiceID, InvoiceTotal, PaymentTotal
	from Invoices
	where PaymentTotal > 
		(Select AVG(PaymentTotal)
		From Invoices
		Where PaymentTotal=InvoiceTotal)
