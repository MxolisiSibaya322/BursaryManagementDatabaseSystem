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

    SELECT * FROM dbo.StudentAllocations WHERE AllocationYear = 2024



    
DECLARE @Counter INT = 1;

WHILE @Counter <= 15
BEGIN
EXEC ApplyToBBD @Counter,200000
SET @Counter = @Counter + 1;
END

SELECT * FROM UniversityApplication 
INNER JOIN ApplicationStatuses ON
dbo.UniversityApplication.ApplicationStatusID = dbo.ApplicationStatuses.StatusID
GO

DECLARE @Counter INT = 1;

WHILE @Counter <= 15
BEGIN
EXEC AcceptUniversity @Counter,200000,2024
SET @Counter = @Counter + 1;
END

SELECT * FROM UniversityApplication
SELECT * FROM BursaryAllocations
SELECT * FROM dbo.BBDAdminBalance