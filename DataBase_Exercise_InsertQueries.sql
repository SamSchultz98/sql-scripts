insert Users(
Username,Password,Firstname,Lastname,Phone,Email,IsReviewer,IsAdmin
)
Values
('Sam.Schultz','Password','Sam','Schultz','5134181632','sam.schultz@outlook.com', 0, 1);






Insert Requests(
    DESCRIPTION, Justification, RejectionReason, /*DeliveryMode,*//*Status,*//*Total,*/UsersId

)
VALUES(
    'Printing','Justing',null,/*512,*/1
)


Insert Vendors(
    Code,Name,Address,City,State,Zip
)
Values(
    'Paper Supplier','Dunder Mifflin','2400 Paper Way','Scranton','PA','12345'
)


/*
select *
from requests

select *
from vendors

*/