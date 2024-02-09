CREATE PROCEDURE AddStudentAllocation
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Gender VARCHAR(6),
    @DateOfBirth DATE,
    @Ethnicity VARCHAR(10),
    @Amount MONEY
AS
BEGIN
    -- Don't show rows affected 
    SET NOCOUNT ON;
    DECLARE @ErrorMessage NVARCHAR(4000);

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Insert into StudentsTable and get the generated StudentID
        DECLARE @StudentID INT;

        INSERT INTO StudentsTable (FirstName, LastName, Gender, DateOfBirth, Ethnicity)
        VALUES (@FirstName, @LastName, @Gender, @DateOfBirth, @Ethnicity);

        SET @StudentID = SCOPE_IDENTITY(); -- Get the ID of the newly inserted student

        -- Insert allocation into StudentAllocations
        INSERT INTO StudentAllocations (Amount, StudentID)
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
EXEC AddStudentAllocation 'John', 'Doe', 'Male', '1990-01-01', 'Indian', 500;
*/