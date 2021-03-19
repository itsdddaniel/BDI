
DROP DATABASE IF EXISTS ConceptsAndSamples;

CREATE DATABASE ConceptsAndSamples CHARACTER SET utf8;

USE ConceptsAndSamples;

CREATE TABLE DataTableSectionA
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    num_tiny TINYINT UNSIGNED NOT NULL DEFAULT 0 COMMENT "Representa un valor pequeño de 0 a 255",
    num_int INT NOT NULL DEFAULT 0 COMMENT "Corresponde con un entero",
    num_float FLOAT NOT NULL DEFAULT 0 COMMENT "Corresponde con un flotante",
    num_double DOUBLE NOT NULL DEFAULT 0 COMMENT "Corresponde con un double",
    tex_name TEXT NOT NULL DEFAULT "" COMMENT "Campo de texto para la demostración de LIKE"
) COMMENT "Tabla de datos de la sección A de laboratorio";

CREATE TABLE DataTableSectionB AS SELECT * FROM DataTableSectionA;

INSERT INTO DataTableSectionA(num_tiny,num_int,num_float,num_double,tex_name) VALUES
    (1,1,7,15,"Hola Mundo"),
    (11,1,7,15,"Adiós Mundo"),
    (255,2,15/14.7,15/14.7,"Demostración")

;

INSERT INTO DataTableSectionB(num_tiny,num_int,num_float,num_double,tex_name) VALUES
    (2,2,8,11,"Hola Mundo"),
    (12,2,8,11,"Adiós Mundo"),
    (245,3,12/2,12/14.7,"Demostración")

;

-- "mysql start command" < DDS_DMS.sql > verborse.txt