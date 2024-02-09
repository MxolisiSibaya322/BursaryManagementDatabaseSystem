DECLARE @Counter INT = 1;

WHILE @Counter <= 100
BEGIN
    DECLARE @FirstName NVARCHAR(50);
    DECLARE @LastName NVARCHAR(50);
    DECLARE @Sex NVARCHAR(6);
    DECLARE @DOB DATE;
    DECLARE @Race NVARCHAR(20);
    DECLARE @AllocatedAmount INT;
    DECLARE @Course NVARCHAR(50);

    SET @FirstName = (
        SELECT TOP 1 FirstName
        FROM (
            VALUES ('Themba'), ('Sipho'), ('Lungelo'), ('Mbali'), ('Nomusa'), ('Naledi'), ('Thando'), ('Bongani'), ('Nandi'), ('Sibusiso')
        ) AS FN(FirstName)
        ORDER BY NEWID()
    );

    SET @LastName = (
        SELECT TOP 1 LastName
        FROM (
            VALUES ('Mthembu'), ('Van Wyk'), ('Singh'), ('Petersen'), ('Molefe'), ('Johnson'), ('Jacobs'), ('Smith'), ('Mkhize'), ('Abrahams')
        ) AS LN(LastName)
        ORDER BY NEWID()
    );

    SET @Sex = CASE WHEN RAND() > 0.5 THEN 'Male' ELSE 'Female' END;

    SET @DOB = DATEADD(DAY, -1 * ABS(CHECKSUM(NEWID())) % 5479, '2004-01-01'); -- Random date of birth between 1990-01-01 and 2004-12-31

    SET @Race = (
        SELECT TOP 1 Race
        FROM (
            VALUES ('African'), ('Colored'), ('Indian')
        ) AS R(Race)
        ORDER BY NEWID()
    );

    SET @AllocatedAmount = 500;

    SET @Course = 'Computer';

    EXEC AddStudentAllocation @FirstName, @LastName, @Sex, @DOB, @Race, @AllocatedAmount, @Course;

    SET @Counter = @Counter + 1;
END;
