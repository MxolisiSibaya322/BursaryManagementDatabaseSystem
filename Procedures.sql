CREATE PROCEDURE AddRole @RoleName varchar(3)
AS
BEGIN 
INSERT INTO Roles (RoleName) VALUES (@RoleName)
END

 CREATE PROCEDURE AddUser
    @FirstName VARCHAR(50),
	@LastName varchar(120),
    @RoleID int
AS
BEGIN
    INSERT INTO Users(FirstName,LastName,RoleID)
    VALUES (@FirstName,@LastName,@RoleID)
END

 CREATE PROCEDURE AddIntoUniversities   @UniName VARCHAR(50)
 AS
 BEGIN
 INSERT INTO Universities ( UniName) VALUES
 (
 @UniName
 )
END

CREATE PROCEDURE AddIntoBursaryAllocations
@UniversityID int,
@AmountAllocated money,
@AmountSpent money,
@AllocationYear int
AS INSERT INTO BursaryAllocations (UniversityID,AmountAlloc,AmountSpent,AllocationYear)
VALUES (@UniversityID,@AmountAllocated,@AmountSpent,@AllocationYear)

CREATE PROCEDURE InsertIntoUniversityApplication  @ApplicationStatusID int , @UniversityID int 
AS
BEGIN
INSERT INTO UniversityApplication ( ApplicationStatusID,UniversityID)  VALUES ( @ApplicationStatusID , @UniversityID ) 
END

-- Create a procedure named InsertTopUniversities
CREATE PROCEDURE InsertTopUniversities
AS
BEGIN

  INSERT INTO [dbo].[Universities] ([UniName])
  VALUES
  ('University of Cape Town'),
  ('University of the Witwatersrand'),
  ('University of Pretoria'),
  ('Universiteit Stellenbosch'),
  ('University of KwaZulu-Natal'),
  ('Rhodes University'),
  ('University of Johannesburg'),
  ('University of the Western Cape'),
  ('North-West University'),
  ('University of the Free State'),
  ('Nelson Mandela University'),
  ('Cape Peninsula University of Technology'),
  ('Durban University of Technology'),
  ('Tshwane University of Technology'),
  ('University of Fort Hare');
END
GO
EXEC InsertTopUniversities;
GO
