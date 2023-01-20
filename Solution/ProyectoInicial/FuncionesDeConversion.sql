
declare @number int = 123123144
declare @string varchar(10) = 'gonzalo'
declare @string2 varchar(10) = 'go*nzalo'

--Toma los 2 primeros valores de la izquierda
print LEFT(@number,2)
--Toma los 2 primeros valores de la derecha
print RIGHT(@string,2)
--Concatenamos
print RIGHT(@number,2) + LEFT(@string,2)
print RIGHT(@number,LEN(@string))
--Contar caracteres 
print LEN(@string)
--Minusculas-Mayusculas
print  UPPER(@string) + ' ' + LOWER(@string)
--Convertir a Mayuscula la primer letra y el resto en Minuscula
print UPPER(LEFT(@string,1)) + LOWER(RIGHT(@string,LEN(@string)-1))
--Reemplazar un caracter por otro
--SELECT REPLACE(@string2,'*','')
--Replicar/Repetir un caracter
PRINT REPLICATE('0',5) 
--TRIM LEFT-RIGHT
--declare @string3 varchar(100) = '      TRIM SPACES               '
--select LTRIM(RTRIM(@string3)) + ' ' + @string
--CONCATENAR VALORES (puede recibir multiples parametros)
--select CONCAT(@string,' ',@string2)

--Obtener fecha actual
--SELECT GETDATE() --Hora donde esta instalado la db
--SELECT GETUTCDATE() -- Hora basada en el meridiano

--Agregar dias-meses-años-horas a una fecha
--select DATEADD(DAY,15,GETDATE())

--obtener la diferencia de años-dias o meses
--Select DATEDIFF(year,GETDATE(),'20210220')

--obtener numero el dia, el mes o el año
--select DATEPART(YEAR, GETDATE())
--select DATEPART(DW, GETDATE()) --obtener dia de la semana 

--comprobar si un dato es fecha -return true o false
--print ISDATE(GETDATE())
--print ISDATE('20190132') --seria 32 de enero

--funciones de conversion
--CAST castear a valor especificado
--declare @numeroMoney money = 500.40
--print @numeroMoney
--select CAST(@numeroMoney AS INT) cash
--select CAST(idPaciente as money) from Paciente

--Convertimos a un valor especificado
--select CONVERT(INT, @numeroMoney) entero
--declare @fecha datetime = getdate()
--print CONVERT(CHAR(20),@fecha)
--print CONVERT(CHAR(20),@fecha,100)--el tercer parametro corresponde al tipo de fecha (HAY MUCHOS CODIGOS)
--print CONVERT(CHAR(20),@fecha,111)
--print CONVERT(CHAR(20),@fecha,112)
--print CONVERT(CHAR(20),@fecha,113)
--print CONVERT(CHAR(20),@fecha,114)

