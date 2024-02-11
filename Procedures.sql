CREATE PROCEDURE AddRole @RoleName varchar(3)
AS
BEGIN 
INSERT INTO Roles (RoleName) VALUES (@RoleName)
END

 CREATE PROCEDURE AddUser
    @UserName VARCHAR(50),
	@Email varchar(120),
    @RoleID int
AS
BEGIN
    INSERT INTO Users (UserName,Email,RoleID)
    VALUES (@UserName,@Email,@RoleID)
END

 CREATE PROCEDURE AddIntoUniversities @UniName varchar(50), @Dept varchar(50), @UserID int
 AS
 BEGIN
 INSERT INTO Universities ( UniName , Dept ,UserID) VALUES
 (
 @UniName , @Dept , @UserID
 )
END

CREATE PROCEDURE AddIntoBursaryAllocations
@UniversityID int,
@AmountAllocated money,
@AmountSpent money,
@AllocationYear int,
AS INSERT INTO BursaryAllocations (UniversityID,AmountAlloc,AmountSpent,AllocationYear)
VALUES (@UniversityID,@AmountAllocated,@AmountSpent,@AllocationYear)

CREATE PROCEDURE InsertIntoUniversityApplication @ApplicationStatus varchar(200) , @UniversityID int 
AS
BEGIN
INSERT INTO UniversityApplication (ApplicationStatus,UniversityID)  VALUES ( @ApplicationStatus , @UniversityID ) 
END

