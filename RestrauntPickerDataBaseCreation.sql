use RestrauntPicker;

create TABLE Restraunts(
RestId int not null primary key IDENTITY(1,1),
RestrauntName varchar(100) not null,
RestrauntType varchar(60) null,
Price varchar(30) null,
DineIn int null,
DriveThru int null);

create table Users(
    UserId int not null primary key identity (1,1),
    UserName varchar(120) not null,
    FirstName varchar(120) not null 

);


create table PastPicks(
    PickId int not null primary key identity (1,1),
    RestId int not null FOREIGN key references Restraunts(RestId),
    DateAndTime DATETIME not null,
    Decider int not null Foreign key references Users(UserId),
    TotalPastPicks int not null
);

