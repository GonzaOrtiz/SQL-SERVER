--SELECT MAX(idPaciente) FROM Paciente 
--SELECT apellido,MAX(idPaciente) FROM Paciente GROUP BY apellido
--SELECT apellido,SUM(idPaciente) from Paciente GROUP BY apellido
--SELECT apellido,SUM(idPaciente) from Paciente GROUP BY apellido
--SELECT AVG(idPaciente) FROM Paciente
--SELECT * FROM Paciente
--SELECT COUNT(*) FROM Paciente 
--SELECT COUNT(*) FROM Paciente WHERE apellido = 'ortiz'
--SELECT estado FROM Turno GROUP BY estado HAVING COUNT(estado) = 2
--SELECT * FROM Paciente  WHERE nombre='Gonzalo' AND apellido='Ortiz'
--SELECT * FROM Paciente WHERE nombre='Gonzalo' OR nombre='Jorge'
--SELECT * FROM Turno WHERE estado IN(0,1)
--SELECT * FROM Paciente WHERE apellido IN('Ortiz','Messi')
--SELECT * FROM PACIENTE WHERE nombre LIKE 'gonza%'
--SELECT * FROM Paciente WHERE nombre NOT LIKE 'gonza%'
--SELECT * FROM Turno WHERE fechaTurno BETWEEN '2020-01-01' AND '2020-12-31 13:00:00'  
--SELECT * FROM Turno WHERE estado BETWEEN 0 AND 1
--SELECT * FROM Paciente WHERE nombre='Gonzalo' AND (nombre='Jorge' OR idPais='arg')