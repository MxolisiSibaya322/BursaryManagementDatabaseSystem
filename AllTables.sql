USE BursaryDatabase 

--- Create User Roles and Admin Balance 
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


--- Create Users Table
/*
Created Users table with constraints 
*/
CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE,
    RoleID INT NOT NULL,
    FOREIGN KEY (RoleID) REFERENCES UserRoles(RoleID)
);


-- Create Universities Table

CREATE TABLE [dbo].[Universities] (
    [UniversityID] INT PRIMARY KEY IDENTITY(1,1),
    [Name] VARCHAR(200),
    [UserID] INT, -- Add the UserID column
    FOREIGN KEY ([UserID]) REFERENCES [Users]([UserID]) -- Correct syntax for FOREIGN KEY constraint
);




-- Create Universities Applications Table (FIXED)
CREATE TABLE [dbo].[UniversityApplication] (
    [ApplicationID] INT PRIMARY KEY IDENTITY(1,1),
    [State] VARCHAR(200),
    [UniversityID] INT,
    FOREIGN KEY ([UniversityID]) REFERENCES [Universities]([UniversityID])
);



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


-- Create Students Table 
CREATE TABLE [dbo].StudentsTable(
    StudentID int PRIMARY KEY identity(1,1),
    FirstName varchar(50) NOT NULL,
    LastName varchar(50) NOT NULL,
    Gender varchar(6) NOT NULL,
    DateOfBirth date NOT NULL,
    Ethnicity varchar(10) NOT NULL
)


-- Create Student Allocations table 
CREATE TABLE [dbo].[StudentAllocations](
    AllocationID int PRIMARY KEY  identity(1,1),
    Amount money NOT NULL,
    StudentID int REFERENCES StudentsTable(StudentID)
);