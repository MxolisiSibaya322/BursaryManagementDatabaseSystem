CREATE VIEW StudentDetails AS
SELECT StudentID,FirstName,LastName,DateOfBirth,Age,Ethnicity,Department,Gender from dbo.StudentsTable INNER JOIN dbo.Genders ON 
dbo.StudentsTable.GenderID =dbo.Genders.GenderID
INNER JOIN dbo.Departments ON
dbo.StudentsTable.DepartmentID =dbo.Departments.DepartmentID
INNER JOIN dbo.Ethnicity ON
dbo.StudentsTable.EthnicityID =dbo.Ethnicity.EthnicityID

VIEW StudentDetails