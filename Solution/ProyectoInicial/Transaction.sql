SELECT * FROM PACIENTE

BEGIN TRANSACTION
	UPDATE Paciente SET telefono=15600280 WHERE idPaciente = 3
IF @@ROWCOUNT = 1
	COMMIT TRANSACTION --CONFIRMA LA TRANSACTION SI SE CUMPLE LA CONDICION
ELSE
	ROLLBACK TRANSACTION --REVIERTE LOS CAMBIOS SI NO SE CUMPLE LA CONDICION

--------------------------------------------------------
SELECT * FROM Turno

BEGIN TRANSACTION
	DELETE FROM TURNO WHERE idTurno=23
IF @@ROWCOUNT = 1
	COMMIT TRANSACTION 
ELSE
	ROLLBACK TRANSACTION