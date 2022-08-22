select InvoiceNumber, InvoiceDate, InvoiceTotal
from invoices
where InvoiceTotal > (
    select avg(invoicetotal)
    from invoices
)
Order By InvoiceTotal;