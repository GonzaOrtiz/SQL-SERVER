ALTER PROC SP_SelectEspecialidadesMedicas
AS
SET NOCOUNT ON
IF EXISTS(SELECT * FROM Especialidad)
	SELECT * FROM Especialidad
ELSE
	SELECT 0 AS Resultado

--EXEC SP_SelectEspecialidadesMedicas