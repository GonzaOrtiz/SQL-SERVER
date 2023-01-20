--Permite almacenar queries, mejoran la perfomance
CREATE VIEW PacientesTurnosPendientes AS

SELECT P.idPaciente, P.nombre,  P.apellido,t.idTurno, t.fechaTurno, t.estado,t.observacion FROM Paciente P
	INNER JOIN TurnoPaciente TP
	on TP.idPaciente = P.idPaciente
	INNER JOIN Turno T
	ON T.idTurno=TP.idTurno
	WHERE ISNULL(T.estado,0) = 0
	
--Obtener datos de la vista (se llaman como si fuera una tabla)
SELECT * FROM PacientesTurnosPendientes
