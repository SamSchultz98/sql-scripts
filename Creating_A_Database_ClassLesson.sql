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
    Student int not null FOREIGN key References Students(StudentId),                          --Foreign key must match primary key data type and info, keep same name. Is allowed to be null. In this case it would not be null becayse that data will be linked with a student. Must refrence the primary key
    Topic varchar(60) not null,
    Score Int null,
    DateTaken date null,
);