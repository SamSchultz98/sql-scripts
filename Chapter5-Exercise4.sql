select AccountDescription,count(G.AccountNo) as LineItemCount , sum(InvoiceLineItemAmount) as LineitemSum
	from GLAccounts G
	join InvoiceLineItems I
		on G.AccountNo=I.AccountNo
	Group by AccountDescription
	Having count(G.AccountNo) > 1
	Order by LineItemCount Desc;