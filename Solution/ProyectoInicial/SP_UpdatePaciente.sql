ALTER PROCEDURE SP_UpdatePaciente(
	@idPaciente paciente,
	@dni varchar(20),
	@nombre varchar(50),
	@apellido varchar(50),
	@fechaNacimiento date,
	@domicilio varchar(50),
	@telefono nchar(20),
	@email nchar(30),
	@observacion observacion
)

AS
SET NOCOUNT ON 

IF EXISTS(SELECT * FROM Paciente WHERE idPaciente= @idPaciente)
	UPDATE Paciente SET dni=@dni,
						nombre=@nombre ,
						apellido=@apellido,
						fechaNacimiento=@fechaNacimiento,
						domicilio=@domicilio,
						telefono=@telefono,
						email=@email,
						observacion=@observacion
					 WHERE idPaciente= @idPaciente
ELSE
	SELECT 0 AS RESULTADO

--select * from Paciente
--EXECUTE SP_UpdatePaciente 1,'11023465', 'Marito','Baracus','1953-05-17','15992099','Alberdi 552','baracus@gmail.com','Sin observacion'