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