CREATE TABLE [dbo].[EmployeesCreditCard] (
    [CreditCardID]  INT           IDENTITY (1, 1) NOT NULL,
    [CardNumber]    INT           NOT NULL,
    [ExpiryDate]    DATETIME      NOT NULL,
    [CarHolderName] NVARCHAR (30) NOT NULL,
    [EmployeeID]    INT           NOT NULL,
    CONSTRAINT [PK_EmployeesCreditCard] PRIMARY KEY CLUSTERED ([CreditCardID] ASC),
    CONSTRAINT [FK_EmployeesCreditCard_Employees] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employees] ([EmployeeID])
);

