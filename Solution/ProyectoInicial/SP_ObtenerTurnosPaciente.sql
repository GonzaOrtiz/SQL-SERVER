DECLARE @Turnos table (id INT IDENTITY, idTurno turno, idPaciente paciente)
DECLARE @idPaciente paciente = 1

INSERT INTO @Turnos (idPaciente,idTurno)
SELECT TP.idTurno,TP.idPaciente FROM Paciente P
	INNER JOIN TurnoPaciente TP
	ON TP.idPaciente = P.idPaciente

DECLARE @I INT = 1
DECLARE @ListCount INT = (SELECT COUNT(*) FROM @Turnos)

WHILE @I <= @ListCount
BEGIN
	IF(SELECT idPaciente FROM @Turnos WHERE id =@I) <> 18
		DELETE FROM @Turnos WHERE id=@i
	SET @I= @I +1
END


SELECT * FROM Paciente P
	INNER JOIN @Turnos T
	ON T.idTurno = P.idPaciente


