--crear tipo de dato
--CREATE TYPE pais FROM CHAR(3)
--CREAR FUNCION
ALTER FUNCTION nombreFun(@var int)
RETURNS int

AS
BEGIN
	set @var = @var * 5
	return @var
END

--EJECUTAR LA FUNCION
--SELECT dbo.nombreFun (200)

--EDITAR (ALTER) 
--(Agregar columna)
--ALTER TABLE Paciente ADD estado smallint
--(editar columna)
--ALTER TABLE Paciente ALTER COLUMN estado BIT
--(eliminar columna)
--ALTER TABLE Paciente DROP COLUMN estado 

--ELIMINAR
--DROP TABLE test

--TRUNCATE (Eliminar por completo registros de tabla)
--Resetea campos identity

--TRUNCATE TABLE TEST