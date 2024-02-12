CREATE VIEW ApplicationsByUserView AS
SELECT UA.ApplicationID,
       UA.State AS ApplicationState,
       U.Name AS UniversityName,
       BA.AmountSpent,
       BA.AmountAlloc
FROM UniversityApplication UA
INNER JOIN Universities U ON UA.UniversityID = U.UniversityID
INNER JOIN BursaryAllocations BA ON UA.UniversityID = BA.UniversityID;

CREATE VIEW TotalAllocations AS
-- Select the AllocationYear and the sum of Amounts from the StudentAllocations table
SELECT  UniName, AllocationYear, SUM(Amount) AS TotalAmount
FROM dbo.StudentAllocations
INNER JOIN dbo.StudentsTable ON dbo.StudentAllocations.StudentID = dbo.StudentsTable.StudentID
INNER JOIN dbo.Universities ON dbo.StudentsTable.UniversityID = dbo.Universities.UniversityID
GROUP BY dbo.Universities.UniName,
AllocationYear;

SELECT *
FROM TotalAllocations
WHERE AllocationYear = 2024;

