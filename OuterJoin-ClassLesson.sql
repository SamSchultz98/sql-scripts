select *
	from invoices i right join terms t
		on i.TermsID = t.TermsID;