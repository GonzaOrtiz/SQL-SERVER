--------------------------------------
--clausula INNER => unir tablas
--Todos los campos de ambas tablas
SELECT * FROM paciente P
INNER JOIN TurnoPaciente T
ON T.idPaciente = P.idPaciente
--Obtener todos los registros de la tabla LEFT mas los que trae la clausula ON
SELECT * FROM paciente P
LEFT JOIN TurnoPaciente T
ON T.idPaciente = P.idPaciente
--Obtener todos los registros de la tabla RIGHT mas los que trae la clausula ON
SELECT * FROM paciente P
RIGHT JOIN TurnoPaciente T
ON T.idPaciente=P.idPaciente
--------------------------------------
--clausula UNION => unir dos consultas, los campos deben ser los mismos
--elimina las repeticiones
SELECT * FROM Turno WHERE estado = 0
UNION 
SELECT * FROM Turno WHERE estado = 1
--seleccionamos dos tipos de datos igual, entonces se pueden unir
--ALL no elimina las repeticiones
SELECT idTurno FROM Turno 
UNION ALL
SELECT idPaciente FROM Paciente 