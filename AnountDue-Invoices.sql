Select InvoiceDate, InvoiceNumber, InvoiceTotal, InvoiceDueDate, InvoiceTotal - PaymentTotal As 'Amount Due'
	From Invoices
	where (InvoiceTotal - PaymentTotal) > 0 and InvoiceDate > '2020-01-01'
	Order By 'Amount Due' desc;