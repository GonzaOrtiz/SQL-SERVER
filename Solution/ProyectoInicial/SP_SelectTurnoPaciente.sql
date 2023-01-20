ALTER PROC SP_SelectTurnoPaciente(
	@idPaciente paciente
)
AS 
SET NOCOUNT ON

SELECT * FROM Paciente P 
INNER JOIN TurnoPaciente TP
ON TP.idPaciente = P.idPaciente
INNER JOIN Turno T
ON T.idTurno = TP.idTurno
INNER JOIN  MedicoEspecialidad ME
ON ME.idMedico = TP.idMedico
WHERE P.idPaciente=@idPaciente

--EXEC SP_SelectTurnoPaciente 2