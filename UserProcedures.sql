
CREATE PROCEDURE AddUser
    @UserName VARCHAR(50),
    @RoleID INT,
    @UniversityID INT
AS
BEGIN
    DECLARE @UserID INT

    -- Insert user into Users table
    INSERT INTO Users (UserName)
    VALUES (@UserName)

    -- Get the ID of the newly inserted user
    SET @UserID = SCOPE_IDENTITY()

    -- Insert user's role into UserRoles table
    INSERT INTO UserRoles (UserID, RoleID)
    VALUES (@UserID, @RoleID)

    -- Insert user's university into UserUniversities table
    INSERT INTO UserUniversities (UserID, UniversityID)
    VALUES (@UserID, @UniversityID)
END
