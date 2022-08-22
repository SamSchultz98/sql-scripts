Select InvoiceNumber, InvoiceTotal
from Invoices
where PaymentTotal > all (
    select Top 50 percent PaymentTotal    --Find the middle for median, and then you want greater than that. X > All Top 50% is greater than the median
    From Invoices
    order by PaymentTotal
)

