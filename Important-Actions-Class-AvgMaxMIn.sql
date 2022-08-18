Select InvoiceDate, InvoiceNumber, InvoiceTotal
From Invoices;

Select sum(InvoiceTotal) as Total,
		Count(*) as Count,
		AVG(InvoiceTotal) As Average,
		Min(InvoiceTotal) as Min,
		Max(InvoiceTotal) as Max
from Invoices;