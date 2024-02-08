CREATE TRIGGER UpdateAmountSpent
ON StudentAllocations
AFTER INSERT
AS
BEGIN
    -- Update AmountSpent in BursaryAllocations table
    UPDATE BursaryAllocations
    SET AmountSpent = AmountSpent + i.Amount
    FROM BursaryAllocations AS BA
    INNER JOIN inserted AS i ON BA.AllocationID = i.AllocationID;
END;
