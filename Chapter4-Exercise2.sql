select VendorName, InvoiceNumber, InvoiceDate, (InvoiceTotal -(PaymentTotal + CreditTotal)) as Balance
from Vendors V
Join Invoices I
	on V.VendorId=I.VendorID
Where (InvoiceTotal -(PaymentTotal + CreditTotal)) > 0 
Order By VendorName Asc;