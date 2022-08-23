/*
USE Master;                                 //Changes our connection to the master conection
To create the Database:                     //Make sure Connected to master server first
create database Bootcamp;
-----------------------------------------------------------------------------
If you wanted to delete:                    //Make sure Connected To the Master server first

Drop Database Bootcamp;
Or
Drop Database If Exists Bootcamp;           //Stating, If this database exists, then drop the database 
*/

use master;

drop database if exists Bootcamp;


Create Database Bootcamp;

Use Bootcamp;                                                   --Want to be in the database where you will be making new tables, this ensures that

create table Students (
    StudentId int not null primary key identity(1, 1),         --The Identity function creates a unique key for the Primary Key
    FirstName varchar(30) not null,
    LastName Varchar(60) not null,
    City Varchar(60) not null,
    Statecode char(2) not null,
    Phone varchar(60) not null,
    Email varchar(100) null,
    DateOfBirth Date not null
);
Create Table GraduationRequirements (
    Id int not null primary key identity(1, 2),                                                 --You only change the second digit in the Identity Function
    StudentID int not null FOREIGN key References Students(StudentId),                          --Foreign key must match primary key data type and info, keep same name. Is allowed to be null. In this case it would not be null becayse that data will be linked with a student. Must refrence the primary key
    Topic varchar(60) not null,
    Score Int null,
    DateTaken date null
);

Insert Students
 (FirstName, LastName, City, Statecode, Phone, Email, DateOfBirth) VALUES                       --Values 
('Sam','Schultz','Fort Thomas','KY','513-418-1632','Sam.schultz@outlook.com','08-15-1998'),
('Jack','Cunningham','Cincinnati','OH','513-902-3142','jack.cunning@gmail.com','03-19-1996'),
('Erik','Red','Dayton','OH','937-209-2413','Erik.Red10@aol.com','02-01-1992'),
('Caleb','Hughes','Dayton','OH','937-801-2139','C.Hughes@fuse.net','04-24-1998'),
('James','Nestle','Dayton','OH','937-440-2048','Nestle.James@nku.edu','05-01-1990'),
('Ian', 'Minx','Cincinnati','OH','513-227-4992','MinxIan@hotmail.com','10-20-1999'),
('Billy','Joel','Hershey','PA','212-887-1021','BillyJoel@yahoo.com','07-06-1995'),
('Josh','Thompson','Inianapolis','IN','513-009-1109','JoshThompson@RedWingShoes.com','06-20-1988');

Insert GraduationRequirements
(StudentId,Topic)   VALUES
(1, 'Git/Github'),
(1,'SQL'),
(1,'C#'),
(1,'Java Script'),
(1,'Angular'),
(1,'CapStone'),
(2, 'Git/Github'),
(2,'SQL'),
(2,'C#'),
(2,'Java Script'),
(2,'Angular'),
(2,'CapStone'),
(3, 'Git/Github'),
(3,'SQL'),
(3,'C#'),
(3,'Java Script'),
(3,'Angular'),
(3,'CapStone'),
(4, 'Git/Github'),
(4,'SQL'),
(4,'C#'),
(4,'Java Script'),
(4,'Angular'),
(4,'CapStone'),
(5, 'Git/Github'),
(5,'SQL'),
(5,'C#'),
(5,'Java Script'),
(5,'Angular'),
(5,'CapStone'),
(6, 'Git/Github'),
(6,'SQL'),
(6,'C#'),
(6,'Java Script'),
(6,'Angular'),
(6,'CapStone'),
(7, 'Git/Github'),
(7,'SQL'),
(7,'C#'),
(7,'Java Script'),
(7,'Angular'),
(7,'CapStone'),
(8, 'Git/Github'),
(8,'SQL'),
(8,'C#'),
(8,'Java Script'),
(8,'Angular'),
(8,'CapStone')
;

/*
select *
from Students
join GraduationRequirements
on Students.StudentId=GraduationRequirements.StudentID
---------------------------------------------------
The above will display all your data
*/