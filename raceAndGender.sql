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

SELECT * FROm [dbo].Ethnicity
SELECT * FROm [dbo].Genders
SELECT * FROm [dbo].Departments