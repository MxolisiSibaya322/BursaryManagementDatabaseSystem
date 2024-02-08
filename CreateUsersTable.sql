
USE BursaryDatabase

CREATE TABLE Roles (
    RoleID INT PRIMARY KEY IDENTITY,
    RoleName VARCHAR(50) NOT NULL
);

GO

/*
Created Users table with constraints 
*/
CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE,
    RoleID INT NOT NULL,
    FOREIGN KEY (RoleID) REFERENCES Roles(RoleID)
);


GO 

/*Inserting Example Data */

INSERT INTO Roles (RoleName)
Values 
('BBD Admin'),
('University'),
('Student'); 

INSERT INTO Users (Name, Email, RoleID)
VALUES
	-- Example user with role ID 1
    ('John Doe', 'john@example.com', 1), 
    ('Jane Smith', 'jane@example.com', 2); 

