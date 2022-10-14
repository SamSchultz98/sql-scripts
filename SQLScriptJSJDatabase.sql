Delete ExpenseLines
Delete Expenses
Delete Items
Delete Employees

use JSJDatabase;

INSERT Employees
([Name],[Email],[Password],[Admin],[ExpensesDue],[ExpensesPaid])


VALUES
('Sam', 'Sam.Schultz@outlook.com','passwordSam',0,0,0),
('Jack','Jack.Lambert@outlook.com', 'passwordJack',1,0,0),
('Josh','Josh.Scott@outlook.com','passwordJosh',0,0,0),
('Greg','Greg.Doud@outlook.com','passwordGreg',0,0,0)
GO
Declare @EmpId int
select @EmpId = Id from Employees where Name='Sam'
INSERT Items
([Name],[Price])
VALUES
('Computer',1250.00),
('Book',349.99),
('Pencils',4.99),
('Calculator',49.99),
('Poster',4.99),
('Iphone',1400.00),
('Tv',824.99),
('Tickets',49.99),
('Bar', 75.00)
GO

Declare @EmpId int
select @EmpId = Id from Employees where Name='Sam';
Declare @EmpId2 int
select @EmpId2 = Id from Employees where Name='Jack';
Declare @EmpId3 int
select @EmpId3 = Id from Employees where Name='Josh';
Declare @EmpId4 int
select @EmpId4 = Id from Employees where Name='Greg';
INSERT Expenses
([Description],[Status],[Total],[EmployeeId])

VALUES
('BoatCruise','Review',0,@EmpId),
('Snack','Review',0,@EmpId2),
('Coffee','Review',0,@EmpId3),
('Tea','Review',0,@EmpId4)


Declare @item1 int
select @item1 = Id from Items where Name ='Computer';






Declare @expens1 int
select @expens1 = Id from Expenses where Description ='BoatCruise';
Declare @expens2 int
select @expens2 = Id from Expenses where Description ='Snack';
Declare @expens3 int
select @expens3 = Id from Expenses where Description ='Coffee';
Declare @expens4 int
select @expens4 = Id from Expenses where Description ='Tea';
INSERT ExpenseLines
([Quantity],[ExpenseId],[ItemId])

VALUES
(1,@expens1,)
