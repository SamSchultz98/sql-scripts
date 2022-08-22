select InvoiceNumber, INvoiceDate, INvoicetotal, InvoiceTotal-PaymentTotal-Credittotal as BalanceDue
from INvoices
where InvoiceTotal - PaymentTotal - credittotal > 0
    and Invoicetotal - paymenttotal - credittotal <
        (select AVG(InvoiceTotal - Paymenttotal - Credittotal)
        from Invoices
        where InvoiceTotal - Paymenttotal - credittotal >0)             --Any query can be a subquery as long as it provides data back to main query
    Order By InvoiceTotal DESc                                          -- It is possible to have multiple subqueries