--CREATE PROCEDURE SP_PRINT 
--AS

--DECLARE @ordenamiento CHAR(1) = 'A'
--DECLARE @valorOrdenamiento CHAR(1)
--SET @valorOrdenamiento = @ordenamiento
----SET @ordenamiento='A'
--PRINT @valorOrdenamiento

--GO

--ALTER PROCEDURE SP_SubQuery(
--	@idPaciente int
--)
--AS
--SELECT nombre,apellido,idPais,
--(SELECT ps.NombrePais FROM Pais as ps WHERE ps.idPais=pa.idPais) AS Pais
--FROM Paciente as pa
--WHERE idPaciente=@idPaciente