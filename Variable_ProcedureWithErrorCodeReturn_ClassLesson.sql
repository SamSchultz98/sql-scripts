Use Exercise; --This uses the Exercise DataBase. File name is DataBase_Exercise_CreateDataBase and DataBase_Exercise_InsertQuaries
GO

Create or Alter procedure AddProduct
    @PartNbr varchar(30) = NULL,
    @Name varchar(30) = NUll,
    @Price decimal(9,2) = 10,
    @Unit varchar(30) = 'Each',
    @VendorCode Varchar(30) = null
as 
    IF @PartNbr is Null                 --This is a called a "throw" It shoots back a certain number depending on the error that occurs
        Return -1;
    If @Name is NULL
        return -2;
    If @VendorCode = null
        return -3;
    
    Declare @VendorsID int;              --New Variable
    Select @VendorsID = ID                --This takes the data from select statment and sticks in into the variable
        From Vendors
        Where code = @VendorCode;

    If @VendorsID is NULL
        return -4;
    
    Insert Products (PartNbr, Name, Price,Unit, VendorsId)
    Values (@PartNbr,@Name,@Price,@Unit,@VendorsId);

    return 0
GO
Declare @rc int;

Exec @rc =  AddProduct @PartNbr='Fire TV', @Name= 'Fire TV', @Price=75, @VendorCode='amz'

Print 'Return Code Is' + str(@rc)