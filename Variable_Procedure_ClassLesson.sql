Use Exercise; --This uses the Exercise DataBase. File name is DataBase_Exercise_CreateDataBase and DataBase_Exercise_InsertQuaries
GO

Create or Alter procedure AddProduct
    @PartNbr varchar(30) = NULL,
    @Name varchar(30) = NUll,
    @Price decimal(9,2) = 10,
    @Unit varchar(30) = 'Each',
    @VendorsId int = NULL
as 
    IF @PartNbr is Null                 --This is a called a "throw" It shoots back a certain number depending on the error that occurs
        Return -1;
    If @Name is NULL
        return -2;
    If @VendorsId = null
        return -3;
    
    Insert Products (PartNbr, Name, Price,Unit, VendorsId)
    Values (@PartNbr,@Name,@Price,@Unit,@VendorsId);

GO

Exec AddProduct @PartNbr='Fire Stick', @Name= 'Fire Stick', @Price=75, @VendorsId=1


Select *
from Products