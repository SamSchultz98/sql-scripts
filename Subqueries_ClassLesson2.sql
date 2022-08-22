select INvoiceNumber, INvoiceDate, InvoiceTotal
    from Invoices
    where VendorId in (
        Select VendorId
        from Vendors
        where VendorState = 'CA'            --Brings up any state that has CA listed as state
    )
    Order By InvoiceTotal desc;