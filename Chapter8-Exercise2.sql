with CastInvoice as(

select InvoiceDate,
Cast(InvoiceDate as varchar) as Decimal,                            --How do you cast a decimal????? From a date????????
Cast(InvoiceDate as varchar) as varchar
from invoices),

 ConvertInvoice as(
select convert (varchar, InvoiceDate) as Date,
convert (varchar, InvoiceDate, 1) as Date1,
convert(Varchar, InvoiceDate, 10) as Date10
from invoices
)
Select CastInvoice.Decimal, CastInvoice.varchar, Date, Date1, Date10
from CastInvoice join ConvertINvoice
    on CastInvoice.Invoicedate = ConvertInvoice.Date
order by InvoiceDate