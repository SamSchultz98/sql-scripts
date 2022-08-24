Alter table Students
    Add SSN varchar(9);

update Students 
set SSN='123456789';

Alter Table Students
    Alter Column SSN varchar(11) not null;

--Would typically do a where clause for an alter, but in this case we need all the rows to be updated so no need for a where