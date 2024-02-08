CREATE TABLE [dbo].UserRoles (
RoleID int PRIMARY KEY IDENTITY(1,1) ,
RoleName varchar(3),
)
CREATE TABLE [dbo].AdminBalance(
BalanceID int PRIMARY KEY IDENTITY(1,1),
Budget money,
AmountRemaining money,
AmountAllocated money
)