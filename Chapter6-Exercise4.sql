select  AccountNO, AccountDescription
from GLAccounts
where not exists (
    select InvoiceTotal
    from Invoices                           --Work in progress
)
Order by AccountNo

select *
from GLAccounts
