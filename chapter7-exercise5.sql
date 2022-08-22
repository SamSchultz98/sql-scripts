update InvoicesCopy set
PaymentDate = GetDate(),
PaymentTotal = InvoiceTotal-(PaymentTotal+CreditTotal)
where InvoiceTotal - (PaymentTotal+Credittotal) > 0;


/* 
Select *
from InvoicesCopy
where InvoiceTotal>(PaymentTotal+CreditTotal)