Insert InvoicesCopy

(VendorID, InvoiceNumber,
InvoiceDate, InvoiceTotal,
PaymentTotal,CreditTotal,
TermsID, InvoiceDueDate,
PaymentDate)

Values
(32, 434.58,
'2020-04-21', 434.58,
0.00, 0.00,
2, '2020-05-08',
null)

select *
from invoicescopy
where vendorid = 32