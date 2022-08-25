create or alter Procedure InvoicesForVendor        --Create or alter means it will create the first time, and then alter any other time this script is ran
    @VendorName Varchar(30) = '%'                    --Consider this as a parameter that you put info into to get a result
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
---------------------------------------------------------------------------------------------------------------------------
--New Query, Keeping it in same file for notes
use AP;
go

Create or Alter Procedure InvoicesByDateRange
    @MinDate Varchar(30)=Null,                             --For variables, has to start with @ and data type. Can make default value (The 1900 date listed there is the default)
    @MaxDate Varchar(30)=Null                               --Putting a default value is optional

as
     Declare @MinInvoiceDate varchar(20) = '01/01/1900'  --This is considered a variable that holds data within a certain code chain
    IF @Mindate is null                                     --If condition
        Set @Mindate = '01/01/1900'
    If @MaxDate is NULL
        set @MaxDate = GETDATE()                            --Setting the max date to todays date if null

    Select*
    from invoices
    Where InvoiceDate between @Mindate and @MaxDate
    order by invoicedate

Go

Exec InvoicesByDateRange '01-01-2019', '12-31-2019' 
--Non recommended way of changing variable values. Can put the values in the order that the variables were set up
--In this case it is @MinDate, then @MaxDate

Exec InvoicesByDateRange @mindate='01-01-2019', @maxdate='12-31-2019' 
--The recommended way of changing the variables

