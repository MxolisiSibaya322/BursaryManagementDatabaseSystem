--Creating Application Statuses table 
CREATE TABLE ApplicationStatuses (
    StatusID INT PRIMARY KEY IDENTITY(1,1),
    StatusName VARCHAR(50) NOT NULL
);

--Creating UniversityApplication table 
CREATE TABLE UniversityApplication (
    ApplicationID INT PRIMARY KEY IDENTITY(1,1),
    UniversityID INT REFERENCES Universities(UniversityID),
    CONSTRAINT FK_ApplicationStatus
        FOREIGN KEY (ApplicationStatusID) REFERENCES ApplicationStatuses(StatusID)
);
