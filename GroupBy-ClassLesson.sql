select VendorState, sum(InvoiceTotal)
	from Invoices I
	join Vendors V
		on v.vendorid = i.vendorid
	Group By VendorState
	oRDER BY VendorState
--The only thing you can put in the select line when using Group By 
--Has to be something that isn't unique such as the state in this example
--In this same query,  you could not do vendor names because they are all unique
--The invoicetotal is okay because it is in a aggregatte function, only other thing allowed in a group by 
--This query shows the total per state
