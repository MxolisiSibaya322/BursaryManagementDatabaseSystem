CREATE VIEW ApplicationsByUserView AS
SELECT UA.ApplicationID,
       UA.State AS ApplicationState,
       U.Name AS UniversityName,
       BA.AmountSpent,
       BA.AmountAlloc
FROM UniversityApplication UA
INNER JOIN Universities U ON UA.UniversityID = U.UniversityID
INNER JOIN BursaryAllocations BA ON UA.UniversityID = BA.UniversityID;