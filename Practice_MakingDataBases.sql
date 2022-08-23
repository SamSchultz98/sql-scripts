Use Master;

Drop database if exists Testing;

create Database Testing;

Use Testing;

Create Table Testing (
    PKey int not null primary key IDENTITY(1, 1),
    First_Value INt not NULL,
    Second_Value Int not null,
    Third_Value Varchar(50) NOT null

);

Create Table Testing2 (
    TestID int not null primary key IDENTITY(1, 2),
    Pkey int not null FOREIGN Key References Testing(PKey),
    First_Column int not null,
    Second_Column Varchar(40) not null,
    Third_Column INT not null

);

Insert Testing(
    First_Value, Second_Value, Third_Value)
    VALUES
    (14,1,'5'),
    (15,1, '16');


