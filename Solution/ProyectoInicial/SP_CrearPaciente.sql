CREATE PROCEDURE SP_CrearPaciente (
	@dni varchar(20),
	@nombre varchar(50),
	@apellido varchar(50),
	@fechaNacimiento varchar(8),
	@domicilio varchar(50),
	@idPais char(3),
	@telefono varchar(20) = '',
	@email varchar(30),
	@observacion varchar(1000) = ''
)

as

IF NOT EXISTS(SELECT * FROM Paciente WHERE Dni = @dni)
BEGIN
	INSERT INTO Paciente (dni,nombre,apellido,fechaNacimiento,domicilio,idPais,telefono,email,observacion)
	VALUES (@dni,@nombre,@apellido,@fechaNacimiento,@domicilio,@idPais,@telefono,@email,@observacion)
	PRINT 'El paciente se Agregó correctamente'
	RETURN
END
ELSE
BEGIN
	PRINT 'El paciente ya existe'
END
 DBCC CHECKIDENT ('Paciente', RESEED,0)

EXEC SP_CrearPaciente '36106856', 'Mariana', 'Juarez', '20190518','Calle 62 1050', 'ARG','','Juarez@gmail.com',''