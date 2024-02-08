USE BursaryDatabase


-- Creating Bursary Allocations Table 
CREATE TABLE BursaryAllocations (
    AllocationID INT PRIMARY KEY IDENTITY,
    UniversityID INT,
    AmountAlloc MONEY,
    AmountSpent MONEY DEFAULT 0, -- Set initial value to zero
    AmountRem AS (AmountAlloc - AmountSpent),
    FOREIGN KEY (UniversityID) REFERENCES Universities(UniversityID),
	-- Needs to be more than 0 
    CONSTRAINT CHK_AmountAlloc CHECK (AmountAlloc >= 0)
);




-- Create a trigger to update AmountSpent when a new application is created

CREATE TRIGGER UpdateAmountSpent
ON StudentAllocations
AFTER INSERT
AS
BEGIN
    -- Update AmountSpent in BursaryAllocations table
    -- Still need to test out 
    UPDATE BursaryAllocations
    SET AmountSpent = AmountSpent + inserted.Amount
    FROM BursaryAllocations BA
    INNER JOIN Students S ON BA.UniversityID = S.UniversityID
    INNER JOIN inserted ON BA.AllocationID = inserted.AllocationID
    WHERE S.StudentID = inserted.StudentID;
END;



GO 


/* Inserting Example Data*/
INSERT INTO BursaryAllocations (UniversityID, AmountAlloc)
VALUES
-- Example allocation for UniversityID 1 with an allocation of 100,000
    (1, 100000), 
    (2, 150000), 
    (1, 200000); 

