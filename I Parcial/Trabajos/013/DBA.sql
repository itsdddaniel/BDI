
-- Lista toda las bases de datos
SHOW DATABASES;

-- Muestra las tablas de la base de datos information_schema

SHOW TABLES FROM information_schema;

-- Lista todos los campos de la tabla "TABLES"

SELECT * FROM information_schema.TABLES;

-- Muestra los campos de la tabla "TABLES" dentro de la base de datos information_schema

DESC information_schema.TABLES;

-- Lista las tablas y sus engines

SELECT TABLE_SCHEMA, TABLE_NAME, ENGINE FROM information_schema.TABLES 

-- Muestra las tablas de la base de datos EmpresaBD

SELECT 
    TABLE_SCHEMA, TABLE_NAME, ENGINE, TABLE_COMMENT
FROM 
    information_schema.TABLE AS Source
WHERE
    Source.TABLE_SCHEMA = "EmpresaBD"
;

-- Sumariza el tamaño físico de la base de datos

SELECT
    Source.TABLE_SCHEMA AS "Base de Datos",
    SUM(Source.DATA_LENGHT) AS "Tamaño en Bytes",
    CAST(SUM(Source.DATA_LENGHT)/1024 AS DECIMAL(8,2)) AS "Tamaño en KBytes"
FROM
    information_schema.TABLES AS Source
WHERE
    Source.TABLE_SCHEMA = "EmpresaBD"
;

-- Generar una estadística de completación de comentarios sobre las tablas de base de datos
SELECT
    Source.TABLE_SCHEMA AS "Base de Datos",
    CONCAT
    (
        CAST
        (
            COUNT(*)/
            (
                SELECT
                    COUNT(*)
                FROM
                    information_schema.TABLES AS Source
                WHERE
                    Source.TABLE_SCHEMA = "EmpresaBD"
            )*100 AS DECIMAL(8,2)
        ), " %"
    ) AS "Porcentaje de Comentarios Incompletos"
FROM
    information_schema.TABLES AS Source
WHERE
    Source.TABLE_SCHEMA = "EmpresaBD"
    AND LENGTH(Source.TABLE_COMMENT) <= 10
GROUP BY 
    Source.TABLE_SCHEMA
;

-- Generar una estadística de completación de comentarios sobre las tablas de base de datos, preparado para cuando no hay casos

SELECT
    SafeSource.TABLE_SCHEMA AS "Base de Datos",
    IF
    (
        (
            SELECT
                CONCAT
                (
                    CAST
                    (
                        COUNT(*)/
                        (
                            SELECT
                                COUNT(*)
                            FROM
                                information_schema.TABLES AS SubSource
                            WHERE
                                Source.TABLE_SCHEMA = SafeSource.TABLE_SCHEMA
                        )*100 AS DECIMAL(8,2)
                    ), " %"
                ) AS "Porcentaje de Comentarios Incompletos"
            FROM
                information_schema.TABLES AS Source
            WHERE
                Source.TABLE_SCHEMA = SafeSource.TABLE_SCHEMA
                AND LENGTH(Source.TABLE_COMMENT) <= 10
            GROUP BY 
                Source.TABLE_SCHEMA
        ) IS NULL,
        "0. 00%",
        (

        )
    ) AS "Porcentaje de Comentarios Incompletos"
FROM
    information_schema.TABLES AS SafeSource
WHERE
    Source.TABLE_SCHEMA = "SQLTesting"
GROUP BY 
    Source.TABLE_SCHEMA
;