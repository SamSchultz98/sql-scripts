create or alter Procedure InvoicesForVendor        --Create or alter means it will create the first time, and then alter any other time this script is ran
    @VendorName Varchar(30) = '%'                    --Consider this as a variable
as 
    Select VendorName, i.*
        from Vendors V
        join Invoices I
            on v.vendorid=I.vendorid
        Where Vendorname like @VendorName         --The variable being put in use 
        order by vendorname

GO
/* the above is storing it into the database*/

--Exec InvoicesForVendor;                 --This is executing the stored procedure


exec InvoicesForVendor @VendorName='Ca%';           --This is changing the variable that is coded into the procedure

