CREATE TABLE[dbo].[University] (
    [UniversityID] INT PRIMARY KEY IDENTITY(1,1),
    [Name] VARCHAR(200),
    FOREIGN KEY UserID INT REFERENCES Users(UserID)
)

CREATE TABLE[dbo].[UniversityApplication] (
    [ApplicationID] INT PRIMARY KEY IDENTITY(1,1),
    [State] VARCHAR(200),
    FOREIGN KEY UniversityID INT REFERENCES UniversityID(UniversityID)
)


