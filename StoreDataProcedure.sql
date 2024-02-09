CREATE PROCEDURE InsertIntoUniversityTable
 @UniversityID int ,
@AmountAllocated money ,
@AmountRemaining money ,
@AmountSpent money
AS INSERT INTO BursaryAllocations (UniversityID,AmountAllocated,AmountRemaining,AmountSpent)
 VALUES (@UniversityID,@AmountAllocated,@AmountRemaining,@AmountSpent)