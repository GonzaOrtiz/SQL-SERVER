--DESDE INTERFACE

--CREAR BACKUP
--click derecho sobre la db => 
--Task => seleccionar db
--FULL => Realiza backup de los datos 100% (Recomendado para automatizacionees)
--DIFERENTIAL => backup de los nuevos datos/objetos en funcion de un backup realizado previamente
----para ubicarse de manera mas sencilla crear una carpeta en el disco C:/ {backup-sql}
--exportar en formato .bak (ejemplodb.bak)

--RESTAURAR BACKUP
--click derecho sobre la db => 
--RestoreDataBase => Device (buscamos la ruta del archivo .bak)
--Type =>File
--Buscamos carpeta del backup


--DESDE SCRIPT
--CREAR BACKUP
declare @fecha CHAR(12) =   CONVERT(CHAR(8), GETDATE(),112) + REPLACE(CONVERT(CHAR(6), GETDATE(),108),':','')
declare @path varchar(300) =  'C:\backup-db-sql\CentroMedicoscript-' + @fecha + '.bak'
declare @name varchar(150) = 'CentroMedico' + @fecha


BACKUP DATABASE CentroMedico
TO DISK = @path
WITH NO_COMPRESSION, NAME=@name

--incluirlo en un Scheduled Jobs para que se realice de manera frecuente y automatica 
--SQL SERVER AGENT DISPONIBLE EN VERSION PAGA "DEVELOPMENT"
--UDEMY SECCION 25: Scheduled jobs => JOB => Name-backup => owner sa
--