--CREATE FUNCTION Concatenar (@nombre varchar(50), @apellido varchar(50))
--RETURNS varchar(100)

--AS 
--BEGIN
--	DECLARE @resultado varchar(100)
--	SET @resultado = @apellido + ', ' + @nombre  
--	RETURN @resultado
--END

--SELECT DBO.Concatenar('Gonzalo', 'Ortiz')

ALTER FUNCTION obtenerPais(
	@idPaciente paciente)
RETURNS varchar(50)
AS
BEGIN
	DECLARE @pais varchar(50)
	SET @pais = ( SELECT PA.NombrePais From Paciente P
	INNER JOIN Pais PA
	ON PA.idPais = P.idPais
	WHERE idPaciente=@idPaciente)
	RETURN @pais
END


--SELECT DBO.obtenerPais(2)

