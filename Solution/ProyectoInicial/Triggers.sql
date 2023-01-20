--Disparar un evento cuando se produce una situacion determinada, por ejemplo un insert-delete-update
CREATE TRIGGER PacientesCreados ON Paciente
AFTER INSERT
AS
--inserted palabra reservada
IF(SELECT idPais FROM inserted) = 'MEX' 
	INSERT INTO PacienteLogs (idPaciente,idPais,fechaAlta)
	SELECT i.idPaciente, i.idPais, GETDATE() FROM Inserted i

