ALTER PROC SP_EliminarTurno(
	@idTurno turno
)
AS
SET NOCOUNT ON
IF EXISTS(SELECT * FROM TURNO WHERE idTurno=@idTurno)
BEGIN
	DELETE Turno WHERE idTurno=@idTurno
	DELETE TurnoPaciente WHERE idTurno=@idTurno
END
ELSE
	SELECT 0 AS RESULT

--EXEC SP_EliminarTurno 30
--SELECT * FROM TURNO