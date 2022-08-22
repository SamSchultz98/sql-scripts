select /*PaymentTotal,*/ InvoiceNumber, InvoiceTotal--, Paymenttotal-InvoiceTotal+CreditTotal as BalanceDue      --This Will Show you the balance Due next to accounts, to insure it is showing ones without a balance due
from Invoices
where PaymentTotal > (
    select Avg(PaymentTotal)
    from invoices
    where PaymentTotal-InvoiceTotal+CreditTotal = 0
)
order by InvoiceTotal

/*
select avg(PaymentTotal)
from invoices 
where PaymentTotal-InvoiceTotal+CreditTotal = 0
----This is the select clause for finding the average number of payment total, used it seperately to check answer. Was the subquery used
*/

