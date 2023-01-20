ALTER PROC SP_SelectHistoriaPaciente(
	@idPaciente paciente
)
AS
SET NOCOUNT ON

IF EXISTS(SELECT * FROM Paciente P
		   INNER JOIN HistoriaPaciente HP
		   ON HP.idPaciente = P.idPaciente
		   INNER JOIN Historia H
		   ON H.idHistoria = HP.idHistoria
		   INNER JOIN MedicoEspecialidad ME
		   ON ME.idMedico = HP.idMedico
		   INNER JOIN Medico M
		   ON M.idMedico = ME.idMedico
		   WHERE P.idPaciente=@idPaciente)
	SELECT * FROM Paciente P
	INNER JOIN HistoriaPaciente HP
	ON HP.idPaciente = P.idPaciente
	INNER JOIN Historia H
	ON H.idHistoria = HP.idHistoria
	INNER JOIN MedicoEspecialidad ME
	ON ME.idMedico = HP.idMedico
	INNER JOIN Medico M
	ON M.idMedico = ME.idMedico
	WHERE P.idPaciente=@idPaciente
ELSE 
	SELECT 0 AS RESULTADO



EXEC SP_SelectHistoriaPaciente 1

