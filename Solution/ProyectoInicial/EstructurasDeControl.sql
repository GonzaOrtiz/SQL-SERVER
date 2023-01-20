--********************TRY CATCH  ********************
--DECLARE @contador INT=0

--BEGIN TRY
--	SET @contador = 'que pacha'
--END TRY

--BEGIN CATCH
--	PRINT 'No se pudo castear el valor string a int'
--END CATCH
--********************BREAK  (FORZAR EL FIN UN WHILE)  ********************
--DECLARE @contador INT=0

--WHILE @contador<= 10
--BEGIN
--	PRINT @contador
--	SET @contador=@contador+1
--	IF @contador = 3
--		BREAK
--END
--PRINT 'SE PUEDEN SEGUIR EJECUTANDO SENTENCIAS DESPUES DEL BREAK'
--********************RETURN (FORZAR EL FIN UN WHILE) ********************
--DECLARE @contador INT=0

--WHILE @contador<= 10
--BEGIN
--	PRINT @contador
--	SET @contador=@contador+1
--	IF @contador = 3
--		RETURN
--END
--NO DEJA EJECUTAR MAS SENTENCIAS
--********************CONDICIONAL CASE********************
--DECLARE @valor INT=30
--DECLARE @resultado CHAR(10)

--SET @resultado = (CASE WHEN @valor = 10 THEN 'ROJO'
--					   WHEN @valor = 20 THEN 'VERDE'
--					   WHEN @valor = 30 THEN 'AZUL'
--				   END) 
--PRINT @resultado

--SELECT *, 
--	(CASE WHEN estado = 1 THEN 'VERDE'
--		  WHEN estado = 0 THEN 'AMARILLO'
--	      WHEN estado = 2 THEN 'ROJO' 
--	  ELSE 'GRIS'
--	END)AS ColorTurno 
-- FROM TURNO 

--********************ESTRUCTURA WHILE********************
--DECLARE @contador INT=0

--WHILE @contador<= 10
--BEGIN
--	SET @contador=@contador+1
--END




--********************ESTRUCTURA IF -ELSE - EXISTS********************
--DECLARE @idPaciente int
--DECLARE @idTurno int
--SET @idPaciente=7

--IF @idPaciente = 7
--BEGIN
--	SET @idTurno=20
--	SELECT * FROM Paciente WHERE idPaciente=@idPaciente
--	PRINT @idTurno

--	IF EXISTS(SELECT * FROM Paciente WHERE idPaciente=4)
--	PRINT 'EXISTE'
--END
--ELSE
--BEGIN
--	PRINT 'NO SE CUMPLIO LA CONDICIÓN'
--END
--END