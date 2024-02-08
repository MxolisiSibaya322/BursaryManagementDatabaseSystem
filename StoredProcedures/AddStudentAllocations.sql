CREATE PROCEDURE AddStudentAllocation
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Gender VARCHAR(6),
    @DateOfBirth DATE,
    @Ethnicity VARCHAR(10),
    @Amount MONEY
AS
BEGIN
    SET NOCOUNT ON;

    -- Insert into StudentsTable and get the generated StudentID
    DECLARE @StudentID INT;

    INSERT INTO StudentsTable (FirstName, LastName, Gender, DateOfBirth, Ethnicity)
    VALUES (@FirstName, @LastName, @Gender, @DateOfBirth, @Ethnicity);

    SET @StudentID = SCOPE_IDENTITY(); -- Get the ID of the newly inserted student

    -- Insert allocation into StudentAllocations
    INSERT INTO StudentAllocations (Amount, StudentID)
    VALUES (@Amount, @StudentID);
END;

/*
Usage: 
EXEC AddStudentAllocation 'John', 'Doe', 'Male', '1990-01-01', 'Caucasian', 500;

*/