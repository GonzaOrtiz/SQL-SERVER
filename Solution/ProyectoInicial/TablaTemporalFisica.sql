--Mientras el servidor este corriendo la instancia, va a existir.
--Si reiniciamos el servicio se destruye
CREATE TABLE #TablaFisica (id INT IDENTITY(1,1),nombres VARCHAR(50))

INSERT INTO #TablaFisica VALUES('Gonzalo')
INSERT INTO #TablaFisica VALUES('Jose')
INSERT INTO #TablaFisica VALUES('Ivan')
INSERT INTO #TablaFisica VALUES('Gustavo')
INSERT INTO #TablaFisica VALUES('Marina')

SELECT * FROM #TablaFisica
DROP TABLE  #TablaFisica