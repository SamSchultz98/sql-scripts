Select InvoiceId, InvoiceDate, INvoiceTotal
    From Invoices I
    join Vendors V
        on V.VendorId = I.VendorID
    where V.VendorState= 'CA'

    Order by InvoiceDAte 