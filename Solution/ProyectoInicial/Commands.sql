--SELECT * FROM Paciente
--delete from Paciente 
--DBCC CHECKIDENT ('Paciente', RESEED,0)
--INSERT INTO Paciente(nombre,apellido,fechaNacimiento,idPais) VALUES('Juan Roman','Riquelme','1976-06-24','ARG')
--INSERT INTO Turno values ('20190101 12:00',2,'obs')
--DELETE FROM Paciente where idPaciente=6
--UPDATE Paciente SET fechaNacimiento='1954-08-13' WHERE idPaciente=2
--UPDATE Paciente SET observacion='SIN OBSERVACION'
--SELECT TOP 1 * From Paciente ORDER BY fechaNacimiento DESC
--SELECT * FROM Paciente ORDER BY fechaNacimiento ASC
--SELECT DISTINCT apellido FROM Paciente
--SELECT  apellido FROM Paciente GROUP BY apellido

--EXEC SP_GetPacienteById 1
--EXEC SP_PRINT 
EXEC SP_SubQuery 1