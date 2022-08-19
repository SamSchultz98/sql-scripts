Select VendorName, DefaultAccountNo, AccountDescription
	from Vendors V
	join GLAccounts G
		on G.AccountNo=V.DefaultAccountNo
	Order By AccountDescription, VendorName;
