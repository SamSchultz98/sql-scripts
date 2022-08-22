With CAVendors as (
    select *
        from vendors
        where vendorstate in ('CA,OH')      --Using "IN" to do more than one state
)
select *
    from INvoices
    join CAVendors
    on Invoices.VendorId = CaVendors.VendorID
