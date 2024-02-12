USE BursaryDatabase
GO
CREATE VIEW TotalAllocations AS
-- Select the AllocationYear and the sum of Amounts from the StudentAllocations table
SELECT  UniName, AllocationYear, SUM(Amount) AS TotalAmount
FROM dbo.StudentAllocations
INNER JOIN dbo.StudentsTable ON dbo.StudentAllocations.StudentID = dbo.StudentsTable.StudentID
INNER JOIN dbo.Universities ON dbo.StudentsTable.UniversityID = dbo.Universities.UniversityID
GROUP BY dbo.Universities.UniName,
AllocationYear;
GO


CREATE VIEW StudentDetails AS
SELECT StudentID,FirstName,LastName,DateOfBirth,Age,Ethnicity,Department,Gender, UniName, dbo.StudentsTable.UniversityID  from dbo.StudentsTable INNER JOIN dbo.Genders ON 
dbo.StudentsTable.GenderID =dbo.Genders.GenderID
INNER JOIN dbo.Departments ON
dbo.StudentsTable.DepartmentID =dbo.Departments.DepartmentID
INNER JOIN dbo.Ethnicity ON
dbo.StudentsTable.EthnicityID =dbo.Ethnicity.EthnicityID
INNER JOIN dbo.Users ON
dbo.StudentsTable.UserID =dbo.Users.UserID
INNER JOIN dbo.Universities ON
dbo.StudentsTable.UniversityID =dbo.Universities.UniversityID
GO 


SELECT *
FROM TotalAllocations
WHERE AllocationYear = 2024;
GO

SELECT * FROM  Universities 
SELECT * FROM  StudentDetails 
GO
