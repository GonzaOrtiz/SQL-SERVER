DECLARE @mitabla TABLE (id INT IDENTITY(1,1),pais VARCHAR(50))

INSERT INTO @mitabla VALUES('BRASIL')
INSERT INTO @mitabla VALUES('ESPA�A')
INSERT INTO @mitabla VALUES('ARGENTINA')
INSERT INTO @mitabla VALUES('BOLIVIA')
INSERT INTO @mitabla VALUES('COLOMBIA')

SELECT * FROM @mitabla