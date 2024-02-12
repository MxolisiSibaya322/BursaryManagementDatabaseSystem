
-- Insert data into UniversityUser table
-- Assigning random universities to users
INSERT INTO dbo.UniversityUser (DepartmentID, UniversityID, UserID) 
VALUES (1, 1, 2),  -- University of Cape Town, Alice Smith
       (1, 2, 2),  -- University of the Witwatersrand, Bob Johnson
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


GO

-- Insert data into Documents table
INSERT INTO dbo.Documents (CV, ID, AcademicTranscript, StudentID) 
VALUES 
    (0x0123456789ABCDEF, 0xABCDEF0123456789, 0x89ABCDEF01234567, 1),  
    (0xFEDCBA9876543210, 0x9876543210FEDCBA, 0x76543210FEDCBA98, 2), 
    (0xABCDEF0123456789, 0x0123456789ABCDEF, 0xFEDCBA9876543210, 3),  
    (0x76543210FEDCBA98, 0x89ABCDEF01234567, 0x0123456789ABCDEF, 4),  
    (0x9876543210FEDCBA, 0xFEDCBA9876543210, 0x76543210FEDCBA98, 5); 



INSERT INTO dbo.BBDAdminBalance (Budget,AmountAllocated) VALUES (9000000,0);