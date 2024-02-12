
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

	-- INSERT INTO dbo.BBDAdminBalance (AmountAllocated,