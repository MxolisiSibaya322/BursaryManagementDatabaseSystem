CREATE PROCEDURE AddStudentAllocation
    @FirstName VARCHAR(255),
    @LastName VARCHAR(255),
    @Email VARCHAR(255),
    @PhoneNumber VARCHAR(20),
    @GenderID INT,
    @DateOfBirth DATE,
    @EthnicityID INT,
    @Amount MONEY,
    @AllocationYear INT,
    @DeptID INT,
    @UniversityID INT  -- New parameter

AS
BEGIN
    -- Suppress row count for affected rows
    SET NOCOUNT ON;
    
    DECLARE @ErrorMessage NVARCHAR(4000);
    DECLARE @UserID INT;
    DECLARE @StudentID INT;

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Insert into Users table
        INSERT INTO dbo.Users (FirstName, LastName, RoleID)
        VALUES (@FirstName, @LastName, 3); -- Assuming RoleID 3 is for students

        -- Get the generated UserID
        SET @UserID = SCOPE_IDENTITY(); 

        -- Insert into ContactDetails table
        INSERT INTO ContactDetails (UserID, Email, PhoneNumber)
        VALUES (@UserID, @Email, @PhoneNumber);

        -- Insert into StudentsTable
        INSERT INTO dbo.StudentsTable (UserID, DateOfBirth, EthnicityID, DepartmentID, UniversityID, GenderID)
        VALUES (@UserID, @DateOfBirth, @EthnicityID, @DeptID, @UniversityID, @GenderID);

        -- Get the generated StudentID
        SET @StudentID = SCOPE_IDENTITY(); 

        -- Insert allocation into StudentAllocations
        INSERT INTO dbo.StudentAllocations (Amount,AllocationYear, StudentID)
        VALUES (@Amount,@AllocationYear, @StudentID);

        -- Commit the transaction if all operations succeed
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- Rollback the transaction if an error occurs
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        SET @ErrorMessage = 'Error: Invalid value provided. Please provide valid input values.';
        RAISERROR(@ErrorMessage, 16, 1); -- Use severity level 16 for non-fatal errors
    END CATCH;
END;



CREATE PROCEDURE AddRole @RoleName varchar(3)
AS
BEGIN 
INSERT INTO Roles (RoleName) VALUES (@RoleName)
END

 CREATE PROCEDURE AddUser
    @FirstName VARCHAR(50),
	@LastName varchar(120),
    @RoleID int
AS
BEGIN
    INSERT INTO Users(FirstName,LastName,RoleID)
    VALUES (@FirstName,@LastName,@RoleID)
END

 CREATE PROCEDURE AddIntoUniversities   @UniName VARCHAR(50)
 AS
 BEGIN
 INSERT INTO Universities ( UniName) VALUES
 (
 @UniName
 )
END

CREATE PROCEDURE AddIntoBursaryAllocations
@UniversityID int,
@AmountAllocated money,
@AmountSpent money,
@AllocationYear int
AS INSERT INTO BursaryAllocations (UniversityID,AmountAlloc,AmountSpent,AllocationYear)
VALUES (@UniversityID,@AmountAllocated,@AmountSpent,@AllocationYear)

CREATE PROCEDURE InsertIntoUniversityApplication  @ApplicationStatusID int , @UniversityID int 
AS
BEGIN
INSERT INTO UniversityApplication ( ApplicationStatusID,UniversityID)  VALUES ( @ApplicationStatusID , @UniversityID ) 
END

-- Create a procedure named InsertTopUniversities
CREATE PROCEDURE InsertTopUniversities
AS
BEGIN

  INSERT INTO [dbo].[Universities] ([UniName])
  VALUES
  ('University of Cape Town'),
  ('University of the Witwatersrand'),
  ('University of Pretoria'),
  ('Universiteit Stellenbosch'),
  ('University of KwaZulu-Natal'),
  ('Rhodes University'),
  ('University of Johannesburg'),
  ('University of the Western Cape'),
  ('North-West University'),
  ('University of the Free State'),
  ('Nelson Mandela University'),
  ('Cape Peninsula University of Technology'),
  ('Durban University of Technology'),
  ('Tshwane University of Technology'),
  ('University of Fort Hare');
END
GO
EXEC InsertTopUniversities;
GO
