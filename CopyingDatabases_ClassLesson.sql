SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorsTrueCopy](
	[VendorID] [int] IDENTITY(1,1) NOT NULL,
	[VendorName] [varchar](50) NOT NULL,
	[VendorAddress1] [varchar](50) NULL,
	[VendorAddress2] [varchar](50) NULL,
	[VendorCity] [varchar](50) NOT NULL,
	[VendorState] [char](2) NOT NULL,
	[VendorZipCode] [varchar](20) NOT NULL,
	[VendorPhone] [varchar](50) NULL,
	[VendorContactLName] [varchar](50) NULL,
	[VendorContactFName] [varchar](50) NULL,
	[DefaultTermsID] [int] NOT NULL,
	[DefaultAccountNo] [int] NOT NULL,
 CONSTRAINT [PK_VendorsTrueCopy] PRIMARY KEY CLUSTERED 
(
	[VendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VendorsTrueCopy] ADD  CONSTRAINT [DF_VendorsTrueCopy_TermsID]  DEFAULT ((3)) FOR [DefaultTermsID]
GO
ALTER TABLE [dbo].[VendorsTrueCopy] ADD  CONSTRAINT [DF_VendorsTrueCopy_AccountNo]  DEFAULT ((570)) FOR [DefaultAccountNo]
GO
ALTER TABLE [dbo].[VendorsTrueCopy]  WITH NOCHECK ADD  CONSTRAINT [FK_VendorTrueCopys_GLAccounts] FOREIGN KEY([DefaultAccountNo])
REFERENCES [dbo].[GLAccounts] ([AccountNo])
GO
ALTER TABLE [dbo].[VendorsTrueCopy] CHECK CONSTRAINT [FK_VendorsTrueCopy_GLAccounts]
GO
ALTER TABLE [dbo].[VendorsTrueCopy]  WITH NOCHECK ADD  CONSTRAINT [FK_VendorsTrueCopy_Terms] FOREIGN KEY([DefaultTermsID])
REFERENCES [dbo].[Terms] ([TermsID])
GO
ALTER TABLE [dbo].[VendorsTrueCopy] CHECK CONSTRAINT [FK_VendorsTrueCopy_Terms]
GO
--Drop Table VendorsTrueCopy

--Run the above comment to delete the VendorsTrueCopy database
/* This is an example of how to make a copy of a database with keys attached, this orignially was the script for the vendors database
We went in and where ever it said Vendors we replaced it with "VendorsTrueCopy" in order to make the keys generate with the new database copy
This method does not put data in, only makes blank table with keys*/