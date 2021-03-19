DROP DATABASE IF EXISTS SQLTesting;
CREATE SQLTesting CHARACTER SET utf8;
USE SQLTesting;

CREATE TABLE DataType
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    dec_temperature DECIMAL(4,2) NOT NULL,
    bit_active BIT NOT NULL,
    big_population BIGINT UNSIGNED NOT NULL,
    tin_students TINYINT UNSIGNED NOT NULL,
    tin_volts TINYINT NOT NULL,
    dat_todayDate DATE NOT NULL,
    tim_todayTime TIME NOT NULL,
    tim_todayTimestampPrecise TIMESTAMP(6) NOT NULL,
    jso_graph JSON NOT NULL,
    dec_salary DECIMAL(8,2) NOT NULL,
    flo_bigNumberA FLOAT NOT NULL,
    dou_bigNumberB DOBULE NOT NULL
);

INSERT INTO DataType

(
    dec_temperature
    bit_active ,
    big_population,
    tin_volts,
    dat_todayDate, 
    tim_todayTime, 
    tim_todayTimestampPrecise,
    jso_graph,
    dec_salary,
    flo_bigNumberA, 
    dou_bigNumberB

) VALUES

    (
        18.9,0,98000000,33,-5,NOW(),NOW(),NOW(),
        '{
            "vertex1":{"w":24,"connection":["vertex2"]}, 
            "vertex2":{"w":12}
        }',
        0.7,0.7,0.7
    ),
    (
        98.9,0,98000000,33,-5,NOW(),NOW(),NOW(),
        '{
            "vertex1":{"w":24,"connection":["vertex2"]}, 
            "vertex2":{"w":12}
        }',
        0.4,0.4,0.4
    ),
    (
        28.9,0,98000000,33,-5,NOW(),NOW(),NOW(),
        '{
            "vertex1":{"w":24,"connection":["vertex2"]}, 
            "vertex2":{"w":12}
        }',
        0.21,0.21,0.21
    ),
    (
        12.9,0,98000000,33,-5,NOW(),NOW(),NOW(),
        '{
            "vertex1":{"w":24,"connection":["vertex2"]}, 
            "vertex2":{"w":12}
        }',
        21.003,21.003,21.003
    )
;

-- Utilizando BETWEEN, filtre la cantidad de registros considerandolos elementos con ID entre 1 y 4.
SELECT
    Source.id as id,
    Source.dec_salary as dec_salary,
    Source.flo_bigNumberA as bigA,
    Source.dou_bigNumberB as bigB
FROM
    DataType AS Source
WHERE
    Source.id BETWEEN 1 and 4

-- Demostrar la presición de los campos númericos de la tabla mediante una consulta de SQL.
SELECT
    Source.id as id,
    Source.dec_salary/1000 as dec_salary,
    Source.flo_bigNumberA/1000 as bigA,
    Source.dou_bigNumberB/1000 as bigB
FROM
    DataType AS Source
WHERE
    Source.id BETWEEN 1 and 4

-- Haga uso de LIMIT para reducir la cantidad de tuplas que se muestran sobre una consulta de SQL.
SELECT
    Source.id as id,
    Source.dec_temperature as temperature,
    Source.tin_volts as volts 
FROM
    DataType AS Source
LIMIT
    2
;

-- Demueste rel manejo de páginas haciendo suo de LIMIT con dos parámetros.
SELECT
    Source.id as id,
    Source.dec_temperature as temperature,
    Source.tin_volts as volts 
FROM
    DataType AS Source
LIMIT
    0,2
;