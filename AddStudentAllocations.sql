/*
** Updated Student Procedure 
First insert the user details, then retrieve the generated UserID. 
After that, it inserts the student details into the StudentsTable, 
referencing the UserID obtained earlier. 
Finally, it inserts the allocation into the StudentAllocations table.
*/






EXEC AddStudentAllocation 'John', 'Doe', 'john.doe@example.com', '1234567890', 1, '1990-02-09', 2, 50000,2024, 1, 1;

EXEC AddStudentAllocation 
    @FirstName = 'Lungelo',
    @LastName = 'Abrahams',
    @Email = 'Lungelo.Abrahams@gmail.com',
    @PhoneNumber = '(187) 125-9422',
    @GenderID = 2,
    @DateOfBirth = '1997-11-01',
    @EthnicityID = 1,
    @Amount = 50000,
    @AllocationYear = 2024,
    @DeptID = 3,
    @UniversityID = 3;


    SELECT * FROM dbo.StudentsTable
    SELECT * FROM dbo.StudentAllocations
    SELECT * FROM dbo.ContactDetails
    SELECT * FROM dbo.Users

    SELECT * FROM dbo.StudentAllocations WHERE AllocatioYear = 2024



    CREATE PROCEDURE ApplyToBBD
    @UniversityID int
    @AmountRequested money
    AS
    BEGIN

    INSERT INTO dbo.UniversityApplication(AmountRequested,ApplicationStatusID,UniversityID)VALUES (@AmountRequested,1,@UniversityID)
GO

CREATE PROCEDURE AcceptUniversity
@UniversityID int,
@AmountGranted money,
@Year int
AS 
BEGIN

UPDATE  dbo.UniversityApplication
SET ApplicationStatusID = 2 WHERE UniversityID = @UniversityID

INSERT INTO dbo.BursaryAllocations(UniversityID,AmountAllocated,AllocationYear,0) VALUES dbo.BursaryAllocations(@UniversityID,@AmountAllocated,@Year,0)
END
GO

DECLARE @Counter INT = 1;

WHILE @Counter <= 15
BEGIN
EXEC ApplyToBBD ,200000
SET @Counter = @Counter + 1;
END