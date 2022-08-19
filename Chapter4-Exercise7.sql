select G.AccountNo, AccountDescription
from GLAccounts G
left join InvoiceLineItems I
	on G.AccountNo=I.accountno
Where I.InvoiceID is null   --This is to show where the data is going to display null Invoice id
Order By G.AccountNo;

/* Had to list account no under g. because account no is in both of the tables
Performed an outside join in order to bring in the datat that is null
/*