CREATE PROCEDURE SP_CrearMedico (
	@nombre varchar(50),
	@apellido varchar(50),
	@idEspecialidad int,
	@descripcion varchar(50)
)

as

IF NOT EXISTS(SELECT TOP 1 idMedico from Medico WHERE nombre=@nombre AND apellido=@apellido)
BEGIN
	INSERT INTO Medico(nombre,apellido )
	VALUES (@nombre,@apellido)

	declare @auxIdMedico medico
	set @auxIdMedico = @@IDENTITY

	INSERT INTO MedicoEspecialidad(idMedico,idEspecialidad,descripcion)
	VALUES (@auxIdMedico,@idEspecialidad,@descripcion)

	print 'El M�dico se agrego correctamente'
	return

	
END
ELSE
BEGIN
	print 'El M�dico ya existe.'
	return
END

--EXEC SP_CrearMedico 'Gonzalo', 'Ortiz', '2','sin detalle descripcion'
--select * from Medico
--select * from MedicoEspecialidad
--select * from Especialidad