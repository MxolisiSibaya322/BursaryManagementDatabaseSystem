
CREATE PROCEDURE AddUser

    @UserName VARCHAR(50),

	@Email varchar(120),

    @RoleID int

AS

BEGIN

    INSERT INTO Users (UserName,Email,RoleID)

    VALUES (@UserName,@Email,@RoleID)

END
