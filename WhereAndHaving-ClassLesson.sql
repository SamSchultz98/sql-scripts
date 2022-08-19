select VendorState, sum(InvoiceTotal) total, Count(*) Count
	from Invoices I
	join Vendors V
		on v.vendorid = i.vendorid
	--Where InvoiceTotal > 20000
	Group By VendorState
	Having Sum(InvoiceTotal)>20000
	oRDER BY VendorState
/*
Swapping the comments out above will show how the where function will filter the data before
it becomes a group, and then makes the group and shows that result.
Also Shows how you can combine another function with count
*/