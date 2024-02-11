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