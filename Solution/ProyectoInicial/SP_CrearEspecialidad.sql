CREATE PROCEDURE SP_CrearEspecialidad (
	@especialidad varchar(30)
)

as

IF NOT EXISTS(SELECT * FROM Especialidad WHERE Especialidad = @especialidad)
BEGIN
	INSERT INTO Especialidad (Especialidad)
	VALUES (@especialidad)
	PRINT 'La Especialidad se Agregó correctamente'
	RETURN
END
ELSE
BEGIN
	PRINT 'La Especialidad ya existe'
END

--EXEC SP_CrearEspecialidad 'Pediatria'
--select * from Especialidad