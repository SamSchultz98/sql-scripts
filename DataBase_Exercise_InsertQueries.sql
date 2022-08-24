--Users Table--
insert Users(
Username,Password,Firstname,Lastname,Phone,Email,IsReviewer,IsAdmin
)
Values
('Sam.Schultz','Password','Sam','Schultz','5134181632','sam.schultz@outlook.com', 0, 1);


--Requests Table--
Insert Requests(
    DESCRIPTION, Justification, RejectionReason, /*DeliveryMode,*//*Status,*//*Total,*/UsersId

)
VALUES(
    'Printing','Justing',null,/*512,*/1
);

--Vendors Table--
Insert Vendors(
    Code,Name,Address,City,State,Zip
)
Values(
    'Paper Supplier','Dunder Mifflin','2400 Paper Way','Scranton','PA','12345'
);

--Products Table--
Insert Products(
    PartNBr,Name,Price,Unit,VendorsId
)
Values(
    'A1542','Paper Shredder','64.04','Each',1
);

--RequestLine Table--
Insert RequestLine(
    RequestsId,ProductsID,Quantity
)
VALUES(
    (Select Id from Requests),(Select ID from Products),1
);


/*
select *
from requests

select *
from vendors


A command for seeing all of the info, All tables linked together

select *
from Products P
join RequestLine RL
    on RL.ProductsID = P.ID
Join Vendors V
    on P.VendorsID=V.ID
join Requests R
    on RL.RequestsID=R.ID
join Users U
    on R.UsersID=U.ID
;

*/