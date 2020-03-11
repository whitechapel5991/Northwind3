GO
use "Northwind"
go
if exists (select * from sysobjects where id = object_id('dbo.Region') and sysstat & 0xf = 3)
EXEC sp_rename 'Region', 'Regions'
go
IF NOT EXISTS(
SELECT 1
FROM [information_schema].[columns]
WHERE table_name ='Customers' AND column_name ='BirthdayDate'
)
ALTER TABLE Customers
ADD BirthdayDate "datetime" NULL;