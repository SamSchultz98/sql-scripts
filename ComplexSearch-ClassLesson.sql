Select InvoiceDate, Count(*) as Invoiceqty, Sum(Invoicetotal) as InvoiceSum
	from Invoices
	Group By InvoiceDate
	Having INvoiceDate between '2020-01-01' and '2020-01-31'
		and sum(Invoicetotal) > 100
		and count(*) > 1
	order by invoicedate desc;