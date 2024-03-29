DROP DATABASE IF EXISTS TriggerProcessing;
CREATE DATABASE TriggerProcessing CHARACTER SET utf8;
USE TriggerProcessing;

/*
    tablas -> no prefix
    views -> vw_
    store procedures -> sp_
    triggers -> tg_
    cursors -> cu_
*/

CREATE TABLE Numbers
(

    id SERIAL PRIMARY KEY COMMENT "Una serie de números."

) COMMENT "Contiene un listado de números.";

CREATE TABLE NumbersSquared
(

    num_id_fk BIGINT UNSIGNED PRIMARY KEY COMMENT "Una serie de números.",
    num_squared DOUBLE COMMENT "La raíz cuadrada del número secuencial.",
    FOREIGN KEY (num_id_fk) REFERENCES Numbers(id)

) COMMENT "Contiene un listado de números junto con el cálculo de la raíz cuadrada.";

CREATE TABLE NumbersSquared_insert
(

    num_id_fk BIGINT UNSIGNED PRIMARY KEY COMMENT "Una serie de números.",
    num_squared DOUBLE COMMENT "La raíz cuadrada del número secuencial.",
    FOREIGN KEY (num_id_fk) REFERENCES Numbers(id)

) COMMENT "Contiene un listado de números junto con el cálculo de la raíz cuadrada.";

CREATE VIEW vw_NumbersSquared AS
    SELECT
        id,
        SQRT(id)
    FROM
        Numbers