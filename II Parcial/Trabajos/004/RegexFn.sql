DROP DATABASE IF EXISTS AdvancedSQLProcedures;
CREATE DATABASE AdvancedSQLProcedures CHARACTER SET utf8;
USE AdvancedSQLProcedures;

/*
    Contexto: Estudiantes de Excelencia Académica
*/

CREATE TABLE Student
(
    id SERIAL PRIMARY KEY,
    jso_record JSON NOT NULL COMMENT "Documento con name, age, y uid"

) COMMENT "Estudiantes de Excelencia Académica";

INSERT INTO Student(jso_record) VALUES

    (
        '{"name":"Pedro Garcia","age":20,"uid":"0302200112345"}'
    ),

    (
        '{"name":"Juan López","age":21,"uid":"0501200112345"}'
    ),

    (
        '{"name":"Maria Ala","age":20,"uid":"12031200112345"}'
    ),

    (
        '{"name":"Alejandro Lara","age":21,"uid":"1803200112345"}'
    ),

    (
        '{"name":"Alejandro Almendarez","age":20,"uid":"0802200112345"}'
    ),

    (
        '{"name":"Erick López","age":19,"uid":"0102200112345"}'
    )

;

/*
    Se desea hacer un recorrido por cierto departamentos del país para convecer a estudiantes para que realicen sus estudios de STEM(Science, Technology, Engineering, Mathematics), y para ello se requiere del apoyo de estudiantes de excelencia académica cuya procedencia es de dichos departamentos.

    Recorrido #1: Atlántida (01), El Paraíso (07), Francisco Morazán (08), y Yoro (18).
    Recorrido #2: La Paz (12), Comayagua (03), y Cortés (05).

*/

DELIMITER $$
    CREATE FUNCTION fn_jsonName(jso_field JSON) RETURNS TEXT
    BEGIN
        JSON_UNQUOTE(JSON_EXTRACT(jso_field,'$.name'));
    END $$

    CREATE FUNCTION fn_jsonUID(jso_field JSON) RETURNS TEXT
    BEGIN
        JSON_UNQUOTE(JSON_EXTRACT(jso_field,'$.uid'));
    END $$
DELIMITER ;

SELECT
    fn_jsonName(jso_record) AS "Nombre del Estudiante",
    CASE
        WHEN fn_jsonUID(jso_record) REGEXP "^((0[178])|(18))\\d{11}$" THEN "Recorrido 1"
        WHEN fn_jsonUID(jso_record) REGEXP "^((0[35])|(12))\\d{11}$" THEN "Recorrido 2"
    END AS "Recorrido"
FROM
    Student
WHERE
    fn_jsonUID(jso_record) REGEXP "^((0[17835])|(1[28]))\\d{11}$"
ORDER BY
    CASE
        WHEN fn_jsonUID(jso_record) REGEXP "^((0[178])|(18))\\d{11}$" THEN "Recorrido 1"
        WHEN fn_jsonUID(jso_record) REGEXP "^((0[35])|(12))\\d{11}$" THEN "Recorrido 2"
    END ASC 
;

-- fn_jsonUID(jso_record) REGEXP "^((01)|(07)|(08)|(18)|(12)|(03)|(05))\\d{11}$"