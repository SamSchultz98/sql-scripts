Delete Orderlines;
Delete Orders
DELEte Customers;
Delete Products;


Insert Customers
( Name, Code, Sales  )
Values
('Max', 'MAX', 10000),
('BestBuy','BBuy',100000),
('Target','TARG',100000)

GO
Insert Products
(Name, MyProperty)
VALUES
('Bootcamp',25000),
('Pencils', 1.25),
('Laptop',1500)

GO
DECLARE @MaxCustId int, @BestBuyCustId int, @TargetCustId int
Select @MaxCustId= Id from Customers where Code = 'MAX'
select @BestBuyCustId = Id from Customers where code = 'BBUY'
select @TargetCustId = Id from customers where code = 'TARG'

INSERT Orders
(Description, Total, Date, Status, CustomerID)
VALUES
('Max order' , 14 , GETDATE() ,'NEW', @MaxCustId),
('Best Buy order', 0, GETDATE(), 'New', @BestBuyCustId),
('Target Order', 0, GETDATE(), 'New', @TargetCustId)

Declare @MaxOrder int, @BestBuyOrder int, @TargetOrder int

Select @MaxOrder = Id from Orders where Description='Max Order'
select @BestBuyOrder = Id from Orders where Description = 'Max Order'          --My property should be description
Select @TargetOrder=Id from Orders where Description='Max Order'

Insert Orderlines
(OrderId, ProductId, Quantity)
VALUES
(@MaxOrder, (Select id from Products where Name = 'Bootcamp'), '1'),
(@MaxOrder, (Select id from Products where Name = 'Pencils'), '100'),
(@MaxOrder, (Select id from Products where Name = 'Laptop'), '10');

GO