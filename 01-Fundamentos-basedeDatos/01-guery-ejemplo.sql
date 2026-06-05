CREATE DATABASE bdejmplo;

USE bdjemplo;

CREATE TABLE categoria(
   id INT NOT NULL,
   nombre VARCHAR(50) NOT NULL,
   CONSTRAINT pk_categoria
   PRIMARY KEY (id)
);

INSERT INTO categotia
VALUES (1, `Carnes frias´),
       (2, `Vinos y Licores´);

SELECT * FROM categoria;

-- Manejo de valores NULOS
USE bdejmplo;
GO

CREATE TABLE alumno (
 idiAlumno INT NOT NULL PRIMARY KEY,
 nombre VARCHAR(30) NOT NULL,
	apellidoPaterno VARCHAR(20) NOT NULL,
	apellidoMaterno VARCHAR(20) NULL,
	fechaNaci DATE NOT NULL,
	calle VARCHAR(50) NOT NULL,
	numeroInt INT,
    numeroExt INT

);

INSERT INTO alumno
VALUES (1,'MOSERRAT','MUÑOZ',NULL,'2007-07-17','CALLE DEL INFIERNO',NULL,666);
INSERT INTO alumno
VALUES (2,'IRVING','ANDABLO','ISLAS','2007-06-16','CALLE DEL	CIELO',NULL,NULL);
INSERT INTO alumno (idiAlumno,nombre,apellidoPaterno,fechaNaci,calle)
VALUES (3, 'CRISTOFER','GARCIA','2007-11-03','CONOCIDA');

SELECT *
FROM  alumno;

USE bdejmplo;
GO

CREATE TABLE alumno (
 idiAlumno INT NOT NULL PRIMARY KEY,
 nombre VARCHAR(30) NOT NULL,
	apellidoPaterno VARCHAR(20) NOT NULL,
	apellidoMaterno VARCHAR(20) NULL,
	fechaNaci DATE NOT NULL,
	calle VARCHAR(50) NOT NULL,
	numeroInt INT,
    numeroExt INT

);

INSERT INTO alumno
VALUES (1,'MOSERRAT','MUÑOZ',NULL,'2007-07-17','CALLE DEL INFIERNO',NULL,666);
INSERT INTO alumno
VALUES (2,'IRVING','ANDABLO','ISLAS','2007-06-16','CALLE DEL	CIELO',NULL,NULL);
INSERT INTO alumno (idiAlumno,nombre,apellidoPaterno,fechaNaci,calle)
VALUES (3, 'CRISTOFER','GARCIA','2007-11-03','CONOCIDA');

SELECT *
FROM  alumno;


--RAZON DE CARDINALIDAD 1:N

CREATE  TABLE categoria2(
categoriaId INT NOT NULL,
nombre VARCHAR(20) NOT NULL,
CONSTRAINT pk_categoria2
PRIMARY KEY(categoriaId)

);
CREATE  TABLE producto2(
productoId INT NOT NULL,
nombre VARCHAR(35) NOT NULL,
existencia INT NOT NULL,
precio DECIMAL (10,2) NOT NULL,
categoriaId INT,
CONSTRAINT pk_producto2_categoria2
FOREIGN KEY (categoriaId)
REFERENCES categoria2(categoriaId)

);



