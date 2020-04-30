CREATE DATABASE interpolitecnico; 

USE interpolitecnico;

CREATE TABLE competidor (
    No_boleta INT(14)NOT NULL PRIMARY KEY,
    Nombre VARCHAR(50),
    id_Categoria VARCHAR(15),
    Edad INT(2),
    Peso FLOAT(5),
    Grado VARCHAR(15),
    id_escuela VARCHAR(7),
    id_profesor INT(10),
    NSS INT(15),
    Sexo VARCHAR(9),
    Telefono INT(10)
);

SELECT competidor;