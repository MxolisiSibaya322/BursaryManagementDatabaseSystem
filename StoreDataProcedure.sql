CREATE PROCEDURE InsertIntoUniversityTable
 @UniversityID int ,
@AmountAllocated money ,
@AmountRemaining money ,
AmountSpent money
AS INSERT INTO 
 VALUES (@UniversityID,@AmountAllocated,@AmountRemaining,@AmountSpent)