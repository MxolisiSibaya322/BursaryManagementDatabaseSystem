
INSERT INTO dbo.Roles (RoleName) 
VALUES ('BBDAdmin'),
       ('University'),
       ('Student');

-- Insert data into Users table
INSERT INTO dbo.Users (FirstName, LastName, RoleID) 
VALUES ('John', 'Doe', 1), -- BBDAdmin
       ('Alice', 'Smith', 2), -- University
       ('Bob', 'Johnson', 2), -- University
       ('Jane', 'Brown', 3), -- Student
       ('Michael', 'Williams', 3), -- Student
       ('Emily', 'Jones', 3), -- Student
       ('David', 'Taylor', 3), -- Student
       ('Emma', 'Miller', 3), -- Student
       ('James', 'Wilson', 3), -- Student
       ('Olivia', 'Moore', 3), -- Student
       ('William', 'Clark', 3), -- Student
       ('Sophia', 'Thomas', 3), -- Student
       ('Benjamin', 'Lewis', 3), -- Student
       ('Ava', 'Hill', 3), -- Student
       ('Matthew', 'Lee', 3), -- Student
       ('Charlotte', 'Walker', 3), -- Student
       ('Ethan', 'Green', 3), -- Student
       ('Amelia', 'Evans', 3), -- Student
       ('Daniel', 'King', 3), -- Student
       ('Mia', 'Allen', 3), -- Student
       ('Alexander', 'Baker', 3), -- Student
       ('Harper', 'White', 3), -- Student
       ('Ryan', 'Hall', 3), -- Student
       ('Chloe', 'Adams', 3), -- Student
       ('Jacob', 'Nelson', 3), -- Student
       ('Elizabeth', 'Rose', 3), -- Student
       ('Liam', 'Scott', 3), -- Student
       ('Grace', 'Carter', 3), -- Student
       ('Noah', 'Parker', 3), -- Student
       ('Lily', 'Wright', 3), -- Student
       ('Logan', 'Evans', 3), -- Student
       ('Victoria', 'Phillips', 3), -- Student
       ('Lucas', 'Mitchell', 3), -- Student
       ('Zoe', 'Turner', 3), -- Student
       ('Jackson', 'Rogers', 3), -- Student
       ('Madison', 'Perry', 3), -- Student
       ('Aiden', 'Cook', 3), -- Student
       ('Penelope', 'Morris', 3), -- Student
       ('Gabriel', 'Hill', 3), -- Student
       ('Layla', 'Simmons', 3), -- Student
       ('Carter', 'Russell', 3), -- Student
       ('Riley', 'Knight', 3), -- Student
       ('Dylan', 'Griffin', 3), -- Student
       ('Ella', 'Dixon', 3), -- Student
       ('Christopher', 'Holmes', 3), -- Student
       ('Hannah', 'Bennett', 3); -- Student

-- Insert data into ContactDetails table
INSERT INTO dbo.ContactDetails (UserID, Email, PhoneNumber) 
VALUES (1, 'john.doe@example.com', '123456789'),
       (2, 'alice.smith@example.com', '987654321'),
       (3, 'bob.johnson@example.com', '987654321'),
       (4, 'jane.brown@example.com', '123456789'),
       (5, 'michael.williams@example.com', '987654321'),
       (6, 'emily.jones@example.com', '123456789'),
       (7, 'david.taylor@example.com', '987654321'),
       (8, 'emma.miller@example.com', '123456789'),
       (9, 'james.wilson@example.com', '987654321'),
       (10, 'olivia.moore@example.com', '123456789'),
       (11, 'william.clark@example.com', '987654321'),
       (12, 'sophia.thomas@example.com', '123456789'),
       (13, 'benjamin.lewis@example.com', '987654321'),
       (14, 'ava.hill@example.com', '123456789'),
       (15, 'matthew.lee@example.com', '987654321'),
       (16, 'charlotte.walker@example.com', '123456789'),
       (17, 'ethan.green@example.com', '987654321'),
       (18, 'amelia.evans@example.com', '123456789'),
       (19, 'daniel.king@example.com', '987654321'),
       (20, 'mia.allen@example.com', '123456789'),
       (21, 'alexander.baker@example.com', '987654321'),
       (22, 'harper.white@example.com', '123456789'),
       (23, 'ryan.hall@example.com', '987654321'),
       (24, 'chloe.adams@example.com', '123456789'),
       (25, 'jacob.nelson@example.com', '987654321'),
       (26, 'elizabeth.rose@example.com', '123456789'),
       (27, 'liam.scott@example.com', '987654321'),
       (28, 'grace.carter@example.com', '123456789'),
       (29, 'noah.parker@example.com', '987654321'),
       (30, 'lily.wright@example.com', '123456789'),
       (31, 'logan.evans@example.com', '987654321'),
       (32, 'victoria.phillips@example.com', '123456789'),
       (33, 'lucas.mitchell@example.com', '987654321'),
       (34, 'zoe.turner@example.com', '123456789'),
       (35, 'jackson.rogers@example.com', '987654321'),
       (36, 'madison.perry@example.com', '123456789'),
       (37, 'aiden.cook@example.com', '987654321'),
       (38, 'penelope.morris@example.com', '123456789'),
       (39, 'gabriel.hill@example.com', '987654321'),
       (40, 'layla.simmons@example.com', '123456789'),
       (41, 'carter.russell@example.com', '987654321'),
       (42, 'riley.knight@example.com', '123456789'),
       (43, 'dylan.griffin@example.com', '987654321'),
       (44, 'ella.dixon@example.com', '123456789'),
       (45, 'christopher.holmes@example.com', '987654321'),
       (46, 'hannah.bennett@example.com', '123456789');

-- Insert data into Ethnicity table
INSERT INTO dbo.Ethnicity (Ethnicity) 
VALUES ('Indian'),
       ('African'),
       ('Colored');

-- Insert data into Genders table
INSERT INTO dbo.Genders (Gender) 
VALUES ('Male'),
       ('Female');

-- Insert data into Departments table
INSERT INTO dbo.Departments (Department) 
VALUES ('ComSci'),
       ('BEng'),
       ('GameDev');

-- Insert data into Universities table
INSERT INTO dbo.Universities (UniName) 
VALUES ('University of Cape Town'),
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

-- Insert data into UniversityUser table
-- Assigning random universities to users
INSERT INTO dbo.UniversityUser (DepartmentID, UniversityID, UserID) 
VALUES (1, 1, 2),  -- University of Cape Town, Alice Smith
       (1, 2, 3),  -- University of the Witwatersrand, Bob Johnson
       (1, 3, 4),  -- University of Pretoria, Jane Brown
       (1, 4, 5),  -- Universiteit Stellenbosch, Michael Williams
       (1, 5, 6),  -- University of KwaZulu-Natal, Emily Jones
       (1, 6, 7),  -- Rhodes University, David Taylor
       (1, 7, 8),  -- University of Johannesburg, Emma Miller
       (1, 8, 9),  -- University of the Western Cape, James Wilson
       (1, 9, 10), -- North-West University, Olivia Moore
       (1, 10, 11),-- University of the Free State, William Clark
       (1, 11, 12),-- Nelson Mandela University, Sophia Thomas
       (1, 12, 13),-- Cape Peninsula University of Technology, Benjamin Lewis
       (1, 13, 14),-- Durban University of Technology, Ava Hill
       (1, 14, 15),-- Tshwane University of Technology, Matthew Lee
       (1, 15, 16);-- University of Fort Hare, Charlotte Walker

-- Insert data into StudentsTable table
INSERT INTO dbo.StudentsTable (UserID, DateOfBirth, GenderID, EthnicityID, DepartmentID, UniversityID) 
VALUES 
    (4, '1999-05-15', 1, 2, 1, 4),   -- Jane Brown, Male, African, ComSci, Universiteit Stellenbosch
    (5, '2000-09-20', 2, 3, 2, 5),   -- Michael Williams, Female, Colored, BEng, University of KwaZulu-Natal
    (6, '1999-12-10', 1, 1, 3, 6),   -- Emily Jones, Male, Indian, GameDev, Rhodes University
    (7, '2001-02-28', 2, 2, 1, 7),   -- David Taylor, Female, African, ComSci, University of Johannesburg
    (8, '2000-03-17', 1, 3, 2, 8),   -- Emma Miller, Male, Colored, BEng, University of the Western Cape
    (9, '2000-06-25', 2, 1, 3, 9),   -- James Wilson, Female, Indian, GameDev, North-West University
    (10, '1999-09-12', 1, 2, 1, 10), -- Olivia Moore, Male, African, ComSci, University of the Free State
    (11, '2000-11-30', 2, 3, 2, 11), -- William Clark, Female, Colored, BEng, Nelson Mandela University
    (12, '2001-01-05', 1, 1, 3, 12), -- Sophia Thomas, Male, Indian, GameDev, Cape Peninsula University of Technology
    (13, '2000-04-20', 2, 2, 1, 13), -- Benjamin Lewis, Female, African, ComSci, Durban University of Technology
    (14, '2000-07-08', 1, 3, 2, 14), -- Ava Hill, Male, Colored, BEng, Tshwane University of Technology
    (15, '2000-10-17', 2, 1, 3, 15); -- Matthew Lee, Female, Indian, GameDev, University of Fort Hare


-- Insert data into Documents table
INSERT INTO dbo.Documents (CV, ID, AcademicTranscript, StudentID) 
VALUES 
    (0x0123456789ABCDEF, 0xABCDEF0123456789, 0x89ABCDEF01234567, 1),  
    (0xFEDCBA9876543210, 0x9876543210FEDCBA, 0x76543210FEDCBA98, 2), 
    (0xABCDEF0123456789, 0x0123456789ABCDEF, 0xFEDCBA9876543210, 3),  
    (0x76543210FEDCBA98, 0x89ABCDEF01234567, 0x0123456789ABCDEF, 4),  
    (0x9876543210FEDCBA, 0xFEDCBA9876543210, 0x76543210FEDCBA98, 5); 

INSERT INTO dbo.BursaryAllocations (UniversityID, AmountAlloc, AllocationYear) 
VALUES 
    (1, 50000.00, 2024),  -- University of Cape Town
    (2, 60000.00, 2024),  -- University of the Witwatersrand
    (3, 55000.00, 2024),  -- University of Pretoria
    (4, 58000.00, 2024),  -- Universiteit Stellenbosch
    (5, 62000.00, 2024),  -- University of KwaZulu-Natal
    (6, 54000.00, 2024),  -- Rhodes University
    (7, 56000.00, 2024),  -- University of Johannesburg
    (8, 57000.00, 2024),  -- University of the Western Cape
    (9, 59000.00, 2024),  -- North-West University
    (10, 61000.00, 2024), -- University of the Free State
    (11, 63000.00, 2024), -- Nelson Mandela University
    (12, 57000.00, 2024), -- Cape Peninsula University of Technology
    (13, 58000.00, 2024), -- Durban University of Technology
    (14, 60000.00, 2024), -- Tshwane University of Technology
    (15, 62000.00, 2024); -- University of Fort Hare

INSERT INTO dbo.ApplicationStatuses (StatusName) 
VALUES 
    ('Pending'),
    ('Accepted'),
    ('Rejected');

-- Insert data into UniversityApplication table for all universities
INSERT INTO dbo.UniversityApplication (ApplicationStatusID, UniversityID) 
VALUES 
    (1, 1),   -- University of Cape Town
    (1, 2),   -- University of the Witwatersrand
    (1, 3),   -- University of Pretoria
    (1, 4),   -- Universiteit Stellenbosch
    (1, 5),   -- University of KwaZulu-Natal
    (1, 6),   -- Rhodes University
    (1, 7),   -- University of Johannesburg
    (1, 8),   -- University of the Western Cape
    (1, 9),   -- North-West University
    (1, 10),  -- University of the Free State
    (1, 11),  -- Nelson Mandela University
    (1, 12),  -- Cape Peninsula University of Technology
    (1, 13),  -- Durban University of Technology
    (1, 14),  -- Tshwane University of Technology
    (1, 15);  -- University of Fort Hare