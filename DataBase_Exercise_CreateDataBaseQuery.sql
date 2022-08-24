
use master;

drop database if exists Exercise;

Create Database Exercise;

Use Exercise;

create Table Users (
ID int not null Primary Key Identity(1,1),
Username varchar(30) not null unique,
Password varchar(30) not null,
Firstname varchar(30) not null,
Lastname varchar(30) not null,
Phone varchar(12) null,
Email varchar(255) null,
IsReviewer bit not null,                            --In real world, would set the default on both of these to 0 (Aka false)
IsAdmin bit not null
);

Create Table Vendors(
Id int not null Primary Key Identity(1,2),                  --Can keep the identity as (1,1)
Code varchar(30) not null unique,
Name varchar(30) not null,
Address varchar(30) not null,
City varchar(30) not null,
State char(2) not null,
Zip Char(5) not null,
Phone varchar(12) null,
Email varchar(255) null
);

Create Table Products(
    Id int not null primary key IDENTITY (1,3),                 --Can Keep the identity as (1,1)
    PartNbr varchar(30) not null UNIQUE,
    Name varchar(30) not null,
    Price decimal(11,2) not null,
    Unit varchar(30) not null,
    Photopath varchar(255) null,
    VendorsId int not null Foreign Key References Vendors(ID)
);

Create Table Requests (
    ID int not null Primary Key Identity(1,4),                                        --Can keep identity as (1,1)
    Description varchar(80) not null,
    Justification varchar(80) not null,
    RejectionReason varchar(80) null,
    DeliveryMode varchar(80) null Default 'Pickup',
    Status varchar(10) not null Default  'New',
    Total decimal(11,2) not null default  0,
    UsersId int not null foreign key REFERENCES Users(ID)
);


Create Table RequestLine(
    Id int not null primary key IDENTITY(1,5),                                        --Can keep Identity as (1,1)
    RequestsId int not null Foreign Key REFERENCES Requests(ID),
    ProductsID int not null foreign key REFERENCES Products(ID),
    Quantity int not null DEFAULT 1
);






-------------------------------------------------------------------------------------------------------------------------------
--Quick Select Commands to test foreign keys and tables
/*
select *
from Vendors;

select *
from Users;

select *
from Products P
join vendors V
    on V.Id = P.VendorsId;

Select *
from requests
join users
    on users.ID=Requests.UsersID;


*/