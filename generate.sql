-- Create a function named GenerateRandomPhoneNumber
CREATE FUNCTION GenerateRandomPhoneNumber
(
@NewID uniqueidentifier
)
RETURNS VARCHAR(14)
AS
BEGIN

  DECLARE @phoneNumber VARCHAR(14);


  SET @phoneNumber = CAST(ABS(CHECKSUM(@NewID)) % 10000000000 AS VARCHAR(10));


  SET @phoneNumber = '(' + LEFT(@phoneNumber, 3) + ') ' + SUBSTRING(@phoneNumber, 4, 3) + '-' + RIGHT(@phoneNumber, 4);


  RETURN @phoneNumber;
END
GO


DECLARE @Counter INT = 1;

WHILE @Counter <= 100
BEGIN
    DECLARE @FirstName NVARCHAR(50);
    DECLARE @LastName NVARCHAR(50);
    DECLARE @Email NVARCHAR(50);
    DECLARE @phoneNumber VARCHAR(14);
    DECLARE @Gender INT;
    DECLARE @DOB DATE;
    DECLARE @RaceID INT;
    DECLARE @AllocatedAmount INT;
    DECLARE @DepartmentID INT;
    DECLARE @UniversityID INT;
   
    

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
    SET @Email = @FirstName +'.'+ @LastName+'@gmail.com'
    


  SET @phoneNumber = dbo.GenerateRandomPhoneNumber(NEWID());


   

    SET @Gender = FLOOR(RAND() * 2) + 1; 
    SET @UniversityID = FLOOR(RAND() * 15) + 1; 
    SET @DOB = DATEADD(DAY, -1 * ABS(CHECKSUM(NEWID())) % 5479, '2004-01-01'); 

    SET @RaceID = FLOOR(RAND() * 3) + 1;

    SET @AllocatedAmount = 500;

    SET @DepartmentID = FLOOR(RAND() * 3) + 1; 

    EXEC AddStudentAllocation @FirstName, @LastName,@Email,@PhoneNumber, @Gender, @DOB, @RaceID, @AllocatedAmount, @DepartmentID,@UniversityID;

    SET @Counter = @Counter + 1;
END;


