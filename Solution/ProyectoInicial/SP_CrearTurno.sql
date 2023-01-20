CREATE proc SP_CrearTurno(
			@fecha char(14), --20190215 12:00
			@idpaciente paciente,
			@idmedico medico,
			@observacion observacion=''
			)

as

set nocount on

IF NOT EXISTS(SELECT TOP 1 idturno from Turno WHERE fechaturno=@fecha)
BEGIN
	INSERT INTO Turno (fechaturno,estado,observacion)
	VALUES (@fecha,0,@observacion)

	declare @auxIdturno turno
	set @auxIdturno = @@IDENTITY

	INSERT INTO TurnoPaciente (idturno,idpaciente,idmedico)
	VALUES (@auxIdturno,@idpaciente,@idmedico)

	print 'El turno se agrego correctamente'
	return

	
END
ELSE
BEGIN
	print 'El turno ya existe.'
	return
END

--EXEC SP_CrearTurno  '20190518 18:04',2,2,'sin observacion'

--SELECT * FROM TURNO
--SELECT * FROM TurnoPaciente
--select * from medico
--select * from paciente

