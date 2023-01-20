CREATE PROCEDURE SP_UpdateTurno(
	@idTurno turno,
	@estado tinyint,
	@observacion observacion
)

AS
SET NOCOUNT ON 

IF EXISTS(SELECT * FROM TURNO WHERE idTurno= @idTurno)
	UPDATE Turno SET estado=@estado,
					 observacion=@observacion 
					 WHERE idTurno= @idTurno
ELSE
	SELECT 0 AS RESULTADO


--EXECUTE SP_UpdateTurno 30,2,'Turno cancelado'
--SELECT * FROM Turno
--SELECT * FROM TurnoEstado

