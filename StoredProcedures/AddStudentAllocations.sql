/*
** Updated Student Procedure 
First insert the user details, then retrieve the generated UserID. 
After that, it inserts the student details into the StudentsTable, 
referencing the UserID obtained earlier. 
Finally, it inserts the allocation into the StudentAllocations table.
*/
CREATE PROCEDURE AddStudentAllocation
    @FirstName VARCHAR(255),
    @LastName VARCHAR(255),
    @Email VARCHAR(255),
    @PhoneNumber VARCHAR(20),
    @GenderID INT,
    @DateOfBirth DATE,
    @EthnicityID INT,
    @Amount MONEY,
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
        INSERT INTO dbo.StudentAllocations (Amount, StudentID)
        VALUES (@Amount, @StudentID);

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




/*
EXEC AddStudentAllocation 'John', 'Doe', 'john.doe@example.com', '1234567890', 1, '1990-02-09', 2, 50000, 1, 1;

EXEC AddStudentAllocation 
    @FirstName = 'John',
    @LastName = 'Doe',
    @Email = 'john.doe@example.com',
    @PhoneNumber = '1234567890',
    @GenderID = 1,
    @DateOfBirth = '1990-02-09',
    @EthnicityID = 2,
    @Amount = 50000,
    @DeptID = 1,
    @UniversityID = 1;

*/ 