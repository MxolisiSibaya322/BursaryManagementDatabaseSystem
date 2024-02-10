CREATE TABLE [dbo].Ethnicity(
EthnicityID int PRIMARY KEY IDENTITY(1,1) ,
Ethnicity VARCHAR(8)
);
GO
INSERT INTO dbo.Ethnicity(Ethnicity) VALUES ('African'),('Indian'),('Colored')
GO

CREATE TABLE [dbo].Genders(
GenderID int PRIMARY KEY IDENTITY(1,1) ,
Gender VARCHAR(6)
);
GO
INSERT INTO dbo.Genders(Gender) VALUES ('Female'),('Male')

--DROP TABLE  [dbo].Ethnicity
--DROP TABLE  [dbo].Genders
--DROP TABLE  [dbo].Departments


CREATE TABLE [dbo].Departments(
DepartmentID int PRIMARY KEY IDENTITY(1,1) ,
Department varchar(7)
);
GO
INSERT INTO dbo.Departments(Department) VALUES ('ComSci'),('BEng'),('GameDev')
GO



SELECT * FROm [dbo].Ethnicity
SELECT * FROm [dbo].Genders
SELECT * FROm [dbo].Departments

CREATE TRIGGER [dbo].no_more_inserts_gender
ON [dbo].Genders
AFTER INSERT
AS
BEGIN
  IF (SELECT COUNT(*) FROM [dbo].Genders) > 2 
  BEGIN
    ROLLBACK TRANSACTION
    RAISERROR ('You cannot insert into gender table.', 16, 1);
  END
END
GO

CREATE TRIGGER [dbo].no_more_inserts_departments
ON [dbo].Departments
AFTER INSERT
AS
BEGIN
  IF (SELECT COUNT(*) FROM [dbo].Departments) > 3
  BEGIN
    ROLLBACK TRANSACTION
    RAISERROR ('You cannot insert into Departments table.', 16, 1);
  END
END
GO

CREATE TRIGGER [dbo].no_more_inserts_race
ON  [dbo].Ethnicity
AFTER INSERT
AS
BEGIN
  IF (SELECT COUNT(*) FROM [dbo].Ethnicity) > 3
  BEGIN
    ROLLBACK TRANSACTION
    RAISERROR ('You cannot insert into Race table.', 16, 1);
  END
END
GO