CREATE TABLE [dbo].StudentsTable(
    StudentID int PRIMARY KEY identity(1,1),
    FirstName varchar(50) NOT NULL,
    LastName varchar(50) NOT NULL,
    Gender varchar(6) NOT NULL,
    DateOfBirth date NOT NULL,
    Ethnicity varchar(10) NOT NULL
)

CREATE TABLE [dbo].[StudentAllocations](
    AllocationID int PRIMARY KEY  identity(1,1),
    Amount money NOT NULL,
    StudentID int REFERENCES StudentsTable(StudentID)
);

ALTER TABLE [dbo].StudentsTable WITH CHECK 
ADD CONSTRAINT [CK_DateOfBirth] check( (DATEDIFF(year,DateOfBirth,CAST (GETDATE() AS DATE )) >18)),
CONSTRAINT [CKK_DateOfBirth] check( (DATEDIFF(year,DateOfBirth,CAST (GETDATE() AS DATE )) <36 ))

ALTER TABLE [dbo].[StudentsTable] WITH CHECK
ADD CONSTRAINT [CK_Ethnicity] CHECK(Ethnicity IN( 'African','Colored','Indian'))

