Delete Employees
Delete Expenses
Delete ExpenseLines
Delete Items

INSERT Employees
([Name],[Email],[Password],[Admin],[ExpensesDue],[ExpensesPaid])
VALUES
('Sam', 'Sam.Schultz@outlook.com','passwordSam',0,0,0),
('Jack','Jack.Lambert@outlook.com', 'passwordJack',1,0,0),
('Josh','Josh.Scott@outlook.com','passwordJosh',0,0,0)

INSERT Items
([Name],[Price])
VALUES
('Computer',1250.00),
('Book',349.99),
('Pencils',4.99),
('Calculator',49.99),
('Poster',4.99),
('Iphone',1400.00),
('Tv',824.99)


INSERT Expenses
([Description],[Status],[Total],[EmployeeId])

VALUES
()


INSERT ExpenseLines
([Quantity],[ExpenseId],[ItemId])

VALUES
()
