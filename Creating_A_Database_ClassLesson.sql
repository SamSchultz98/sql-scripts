/*
USE Master;                                 //Changes our connection to the master conection
To create the Database:                     //Make sure Connected to master server first
create database Bootcamp;
-----------------------------------------------------------------------------------------------------------------------------
If you wanted to delete:                    //Make sure Connected To the Master server first

Drop Database Bootcamp;                     //How to delete the Database
Or
Drop Database If Exists Bootcamp;           //Stating, If this database exists, then drop the database 
*/

use master;                                 --Have to use the master server to create new databases

drop database if exists Bootcamp;


Create Database Bootcamp;

Use Bootcamp;                                                   --Want to be in the database where you will be making new tables, this ensures that

create table Students (
    StudentId int not null primary key identity(1, 1),         --The Identity function creates a unique key for the Primary Key
    FirstName varchar(30) not null,
    LastName Varchar(60) not null,
    City Varchar(60) not null,
    Statecode char(2) not null default 'OH',
    Phone varchar(60) not null Unique,
    Email varchar(100) null,
    DateOfBirth Date not null
);
Create Table GraduationRequirements (
    Id int not null primary key identity(1, 2),                                                 --You only change the second digit in the Identity Function
    StudentID int not null FOREIGN key References Students(StudentId),                           --Foreign key must match primary key data type and info, keep same name. Is allowed to be null. In this case it would not be null becayse that data will be linked with a student. Must refrence the primary key                         
    Topic varchar(60) not null,
    Score Int null check (Score >=0 and score<= 120) ,                                  --This line has an example of a constraint. This one is preventing the score to be below 0 or above 120. Can see in constraints folder on database
    DateTaken date null
);

Insert Students
 (FirstName, LastName, City, Statecode, Phone, Email, DateOfBirth) VALUES                       --Values have to match the exact lineup of data as put into the set command 
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
((Select StudentId from Students where Firstname = 'Sam'), 'Git/Github'),            --Uses the select in order to make sure the correct student is selected, even if their id changes 
((Select StudentId from Students where Firstname = 'Sam'),'SQL'),
((Select StudentId from Students where Firstname = 'Sam'),'C#'),
((Select StudentId from Students where Firstname = 'Sam'),'Java Script'),
((Select StudentId from Students where Firstname = 'Sam'),'Angular'),
((Select StudentId from Students where Firstname = 'Sam'),'CapStone'),
((Select StudentId from Students where Firstname = 'Jack'), 'Git/Github'),
((Select StudentId from Students where Firstname = 'Jack'),'SQL'),
((Select StudentId from Students where Firstname = 'Jack'),'C#'),
((Select StudentId from Students where Firstname = 'Jack'),'Java Script'),
((Select StudentId from Students where Firstname = 'Jack'),'Angular'),
((Select StudentId from Students where Firstname = 'Jack'),'CapStone'),
((Select StudentId from Students where Firstname = 'Erik'), 'Git/Github'),
((Select StudentId from Students where Firstname = 'Erik'),'SQL'),
((Select StudentId from Students where Firstname = 'Erik'),'C#'),
((Select StudentId from Students where Firstname = 'Erik'),'Java Script'),
((Select StudentId from Students where Firstname = 'Erik'),'Angular'),
((Select StudentId from Students where Firstname = 'Erik'),'CapStone'),
((Select StudentId from Students where Firstname = 'Caleb'), 'Git/Github'),
((Select StudentId from Students where Firstname = 'Caleb'),'SQL'),
((Select StudentId from Students where Firstname = 'Caleb'),'C#'),
((Select StudentId from Students where Firstname = 'Caleb'),'Java Script'),
((Select StudentId from Students where Firstname = 'Caleb'),'Angular'),
((Select StudentId from Students where Firstname = 'Caleb'),'CapStone'),
((Select StudentId from Students where Firstname = 'James'), 'Git/Github'),
((Select StudentId from Students where Firstname = 'James'),'SQL'),
((Select StudentId from Students where Firstname = 'James'),'C#'),
((Select StudentId from Students where Firstname = 'James'),'Java Script'),
((Select StudentId from Students where Firstname = 'James'),'Angular'),
((Select StudentId from Students where Firstname = 'James'),'CapStone'),
((Select StudentId from Students where Firstname = 'Ian'), 'Git/Github'),
((Select StudentId from Students where Firstname = 'Ian'),'SQL'),
((Select StudentId from Students where Firstname = 'Ian'),'C#'),
((Select StudentId from Students where Firstname = 'Ian'),'Java Script'),
((Select StudentId from Students where Firstname = 'Ian'),'Angular'),
((Select StudentId from Students where Firstname = 'Ian'),'CapStone'),
((Select StudentId from Students where Firstname = 'Billy'), 'Git/Github'),
((Select StudentId from Students where Firstname = 'Billy'),'SQL'),
((Select StudentId from Students where Firstname = 'Billy'),'C#'),
((Select StudentId from Students where Firstname = 'Billy'),'Java Script'),
((Select StudentId from Students where Firstname = 'Billy'),'Angular'),
((Select StudentId from Students where Firstname = 'Billy'),'CapStone'),
((Select StudentId from Students where Firstname = 'James'), 'Git/Github'),
((Select StudentId from Students where Firstname = 'James'),'SQL'),
((Select StudentId from Students where Firstname = 'James'),'C#'),
((Select StudentId from Students where Firstname = 'James'),'Java Script'),
((Select StudentId from Students where Firstname = 'James'),'Angular'),
((Select StudentId from Students where Firstname = 'James'),'CapStone')
;
/*
Originally we used the user ID which was numerical with 1-8
Ex: Insert GraduationRequirements
(StudentId,Topic)   VALUES
(1,Git/GitHub)
(1,Sql)
(1,C#)
(1,Java Script)

We swapped it for the Select StudentId from Students where Firstname  in order to keep it with the correct student, even
if that student's student ID changed (Which would occur if you changed their positoning in the Students Table)
*/
--------------------------------------------------------------------------------------------------------------------------------
/*

select *
from Students
join GraduationRequirements
on Students.StudentId=GraduationRequirements.StudentID
---------------------------------------------------------------------------------------------------------------------------------
The above will display all your data
*/