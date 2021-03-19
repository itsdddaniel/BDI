
DROP DATABASE IF EXISTS SQLTesting;
CREATE DATABASE SQLTesting CHARACTER SET utf8;
USE SQLTesting;

CREATE TABLE CampusAService
(

    id INT AUTO_INCREMENT PRIMARY KEY,
    tex_name TEXT NOT NULL COMMENT "Nombre del servicio dentro del campus.",
    bit_status BIT DEFAULT 0 COMMENT "El estado del servicio, activo o inactivo."

) COMMENT "Define una estructura de servicios para el CampusA";

CREATE TABLE CampusBService LIKE CampusAService;
ALTER TABLE CampusBService COMMENT "Define una estructura de servicios para el campus B";

DESC CampusAService;
DESC CampusBService;

SHOW CREATE TABLE CampusAService;
SHOW CREATE TABLE CampusBService;

INSERT INTO CampusAService(tex_name,bit_status) VALUES

    ("HTTP Apache 8081",1),
    ("HTTP CGI 9000",0),
    ("HTTP Nodejs 3000",1)
;

INSERT INTO CampusBService(tex_name,bit_status) VALUES

    ("HTTP Nodejs 3000",0),
    ("HTTP CGI 9000",1),
    ("HTTP Apache 2 8080",1)
;

SELECT * FROM CampusAService;
SELECT * FROM CampusBService;

-- Verificar los servicios inactivos de CampusA y que están activos en el CampusB.
SELECT
    CampusA.tex_name AS "Nombre del servicio A",
    CampusB.tex_name AS "Nombre del servicio B",
    IF(CampusA.bit_status = 1, "ACTIVO", "INACTIVO") AS "Estado del Servicio A",
    IF(CampusB.bit_status = 1, "ACTIVO", "INACTIVO") AS "Estado del Servicio B"

FROM
    CampusAService AS CampusA
JOIN
    CampusBService AS CampusB ON CampusA.tex_name = CampusB.tex_name
WHERE
    CampusA.bit_status = 0 AND CampusB.bit_status = 1
;

-- Listar los servicios del CampusB que no existen en el CampusA.
SELECT
    *
FROM
    CampusBService AS CampusB
JOIN
    CampusAService AS CampusA ON CampusA.tex_name = CampusB.tex_name
;