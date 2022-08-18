Select InvoiceTotal AS InvoiceTotal,s (InvoiceTotal * .10) as '10%', (InvoiceTotal+(InvoiceTotal * .10)) as 'Plus 10%'
from Invoices
where (InvoiceTotal+(InvoiceTotal * .10)) > 1000
Order By InvoiceTotal Desc;