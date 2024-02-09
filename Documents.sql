CREATE PROCEDURE AddStudentDocuments
@CV VARBINARY(1000),
@ID VARBINARY(1000),
@AcademicTranscript VARBINARY(1000),
@StudentID int

AS
BEGIN
BEGIN TRANSACTION
BEGIN TRY

  INSERT INTO dbo.Documents (CV, ID, AcademicTranscript,StudentID) VALUES (@CV, @ID, @AcademicTranscript,@StudentID)

  COMMIT TRANSACTION
END TRY
BEGIN CATCH

  IF @@TRANCOUNT > 0
    ROLLBACK TRANSACTION
  SELECT ERROR_NUMBER () AS ErrorNumber, ERROR_MESSAGE () AS ErrorMessage;
END CATCH

END

--EXEC AddStudentDocuments '11',0x01,0x01,101
--SELECT * from dbo.Documents 
--SELECT * from dbo.Universities