-- Create a procedure named InsertTopUniversities
CREATE PROCEDURE InsertTopUniversities
AS
BEGIN
  -- Insert the top 15 universities from the web search results
  INSERT INTO [dbo].[Universities] ([UniName])
  VALUES
  ('University of Cape Town'),
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
END
GO
EXEC InsertTopUniversities;
GO
