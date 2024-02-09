USE master;  
GO  
CREATE DATABASE BursaryDatabase 
GO


USE BursaryDatabase
GO

CREATE FUNCTION dbo.CalculateAge
(
    @DateOfBirth date
)
RETURNS INT
AS
BEGIN
    DECLARE @Result INT;

    SET @Result = DATEDIFF(day,@DateOfBirth,CAST (GETDATE() AS DATE ))

    RETURN @Result/365;
END;
GO
-- Creating Roles Table 
CREATE TABLE [dbo].Roles (
RoleID int PRIMARY KEY IDENTITY(1,1) ,
RoleName varchar(3),
);
GO

-- Creating Users Table 
CREATE TABLE [dbo].Users (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    UserName VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE,
    RoleID INT NOT NULL,
    FOREIGN KEY (RoleID) REFERENCES Roles(RoleID)
);
GO


-- Creating Universities Table 
CREATE TABLE [dbo].[Universities] (
    [UniversityID] INT PRIMARY KEY IDENTITY(1,1),
    [UniName] VARCHAR(200),
    [Dept] VARCHAR(20),
    UserID int REFERENCES Users (UserID)
);
GO

-- Creating University Application Table
CREATE TABLE [dbo].[UniversityApplication] (
    [ApplicationID] INT PRIMARY KEY IDENTITY(1,1),
    [State] VARCHAR(200),
    UniversityID int REFERENCES Universities(UniversityID) -- Specify the data type here
);
GO


-- Creating Bursary Allocations Table 
CREATE TABLE BursaryAllocations (
    AllocationID INT PRIMARY KEY IDENTITY,
    UniversityID INT,
    AmountAlloc MONEY,
    AmountSpent MONEY DEFAULT 0, -- Set initial value to zero
    AmountRem AS (AmountAlloc - AmountSpent),
    FOREIGN KEY (UniversityID) REFERENCES Universities(UniversityID),
	-- Needs to be more than 0 
    CONSTRAINT CHK_AmountAlloc CHECK (AmountAlloc >= 0)
);
GO

-- Creating BBDAdminBalance Table
CREATE TABLE [dbo].BBDAdminBalance(
BalanceID int PRIMARY KEY IDENTITY(1,1),
Budget money,
AmountRemaining money,
AmountAllocated money
);
GO


-- Creating Students Table
CREATE TABLE [dbo].StudentsTable(
    StudentID int PRIMARY KEY identity(1,1),
    FirstName varchar(50) NOT NULL,
    LastName varchar(50) NOT NULL,
    Gender varchar(6) NOT NULL,
    DateOfBirth date NOT NULL,
    Ethnicity varchar(10) NOT NULL,
    [Dept] VARCHAR(20) NOT NULL,
    CONSTRAINT [CK_DateOfBirth] CHECK ((dbo.CalculateAge(DateOfBirth) > 18)),
    CONSTRAINT [CKK_DateOfBirth] check( (dbo.CalculateAge(DateOfBirth) <36 )),
    CONSTRAINT [CK_Ethnicity] CHECK(Ethnicity IN( 'African','Colored','Indian'))
);
GO

-- Creating Student Allocations Table
CREATE TABLE [dbo].[StudentAllocations](
    AllocationID int PRIMARY KEY  identity(1,1),
    Amount money NOT NULL,
    StudentID int REFERENCES StudentsTable(StudentID)
);
GO
-- Create a trigger to update AmountSpent when a new application is created

CREATE TRIGGER UpdateAmountSpent
ON StudentAllocations
AFTER INSERT
AS
BEGIN
    -- Update AmountSpent in BursaryAllocations table
    -- Still need to test out 
    UPDATE BursaryAllocations
    SET AmountSpent = AmountSpent + inserted.Amount
    FROM BursaryAllocations BA
    INNER JOIN Students S ON BA.UniversityID = S.UniversityID
    INNER JOIN inserted ON BA.AllocationID = inserted.AllocationID
    WHERE S.StudentID = inserted.StudentID;
END;

GO 

-- Creating Student Documents Table
CREATE TABLE [dbo].Documents (
    CV VARBINARY(1000),
    ID VARBINARY(1000),
    AcademicTranscript VARBINARY(1000),
    StudentID int REFERENCES StudentsTable(StudentID)
);
GO

-- SELECT * FROM dbo.Users
-- SELECT * FROM dbo.Roles
-- SELECT * FROM dbo.StudentsTable
-- SELECT * FROM dbo.Universities
-- SELECT * FROM dbo.UniversityApplication
-- SELECT * FROM dbo.UniversityApplication
-- SELECT * FROM dbo.BBDAdminBalance
