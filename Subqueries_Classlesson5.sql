select vendorid, invoicenumber, invoicetotal
    from invoices as inv_main
    where invoicetotal > (
        select avg(InvoiceTotal)
            from Invoices as inv_sub
            where inv_sub.VendorID = inv_main.VendorId      --Where clause is matching up the vendors
    )
    order by VendorId, InvoiceTotal