CREATE TABLE [dbo].[EmployeesCreditCard]
(
	"CreditCardID" "int" IDENTITY (1, 1) NOT NULL ,
	"CardNumber" "int" NOT NULL ,
	"ExpiryDate" "datetime" NOT NULL ,
	"CarHolderName" nvarchar (30) Not NULL ,
	"EmployeeID" "int" not NULL 
	CONSTRAINT "PK_EmployeesCreditCard" PRIMARY KEY  CLUSTERED 
	(
		"CreditCardID"
	),
	CONSTRAINT "FK_EmployeesCreditCard_Employees" FOREIGN KEY 
	(
		"EmployeeID"
	) REFERENCES "dbo"."Employees" (
		"EmployeeID"
	),
)
