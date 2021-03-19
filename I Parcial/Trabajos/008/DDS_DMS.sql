/*
    Simulación de una base de datos mal implementada.
*/

DROP DATABASE IF EXISTS InformationTechnologies;
CREATE DATABASE InformationTechnologies CHARACTER SET utf8;
USE InformationTechnologies;

CREATE TABLE PCInventory
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    tex_name TEXT NOT NULL,
    cod_type ENUM('Laptop','Desktop','Tablet') NOT NULL DEFAULT 'Laptop',
    sma_ram SMALLINT UNSIGNED NOT NULL DEFAULT 0 COMMENT "RAM en Gigabytes.",
    sma_ssd SMALLINT UNSIGNED NOT NULL DEFAULT 0 COMMENT "SSD en Gigabytes."
    
) COMMENT "Inventario de computadores";

INSERT INTO PCInventory(tex_name,sma_ram,sma_ssd) VALUES

    ("Asus P1020",4,32),
    ("Acer P1021",8,32),
    ("HP P1022",16,64),
    ("HP P1023",32,512),
    ("Dell XPS 12",32,512),
    ("Dell XPS 1",16,2048),
    ("Dell XPS 2",64,2048),
    ("Dell XPS 3",16,128),
    ("Dell XPS 4",128,256),
    ("Dell XPS 5",128,32),
    ("Dell XPS 6",128,48),
    ("Dell XPS 7",8,64),
    ("Dell XPS 8",8,128),
    ("Dell XPS 9",8,256)
;

-- Listar todas las computadoras del inventario.
SELECT
    tex_name AS "Marca",
    sma_ram AS "RAM",
    sma_ssd AS "SSD"
FROM
    PCInventory
;

-- Listar todas las computadoras que tienen 16 0 64 GB de RAM.
SELECT
    tex_name AS "Marca",
    sma_ram AS "RAM",
    sma_ssd AS "SSD"
FROM
    PCInventory
WHERE
    sma_ram IN (16,64)
;

-- Listar todas las computadoras que tienen la marca XPS.
SELECT
    tex_name AS "Marca",
    sma_ram AS "RAM",
    sma_ssd AS "SSD"
FROM
    PCInventory
WHERE
    tex_name LIKE "%XPS%"
;

-- ¿Cuántas computadoras hay por cantidad de RAM?
SELECT
    sma_ram AS "RAM",
    COUNT(*) AS "Cantidad"
FROM
    PCInventory
GROUP BY
    sma_ram
;

-- ¿Cuántas computadoras hay por cantidad de RAM, mostrando únicamente los grupos donde donde hay dos o más dispositivos.

SELECT
    sma_ram AS "RAM",
    COUNT(*) AS "Cantidad"
FROM
    PCInventory
GROUP BY
    sma_ram
HAVING
    COUNT(*)>=2
;

-- ¿Cuántas computadoras hay por cantidad de RAM, mostrando solo tres registros donde hay dos o más dispositivos.

SELECT
    sma_ram AS "RAM",
    COUNT(*) AS "Cantidad"
FROM
    PCInventory
GROUP BY
    sma_ram
HAVING
    COUNT(*)>=2
LIMIT
    3
;

-- ¿Cuántas computadoras hay por cantidad de RAM, mostrando solo tres registros donde hay dos o más dispositivos, siendo estos los 3 grupos más grandes.

SELECT
    sma_ram AS "RAM",
    COUNT(*) AS "Cantidad"
FROM
    PCInventory
GROUP BY
    sma_ram
HAVING
    COUNT(*)>=2
ORDER BY
    COUNT(*) DESC
LIMIT
    3
;

-- Listar las computadoras que pertenecen a los tres grupos mayores de RAM. Si una computadora pertenece a la cuarta mayor agrupación de RAM, dicha computadora no debe aparecer en la búsqueda.

SELECT
    PCInventory.tex_name AS "Nombre de Computadora"
FROM
    PCInventory
JOIN
    (
        SELECT
            sma_ram AS "RAM",
            COUNT(*) AS "Cantidad"
        FROM
            PCInventory
        GROUP BY
            sma_ram
        HAVING
            COUNT(*)>=2
        ORDER BY
            COUNT(*) DESC
        LIMIT
            3
    ) PCGroup ON PCInventory.sma_ram = PCGroup.RAM
;

-- De las computadoras anteriores que pertenecen a los 3 grupos mayores de RAM se desea ver de que marca son. De forma anticipada usted como empleado de empresa, sabe que la marca de la computadora siempre es "la primer palabra" del nombre del inventario.

SELECT
    DISTINCT SUBSTRING_INDEX(tex_name,' ',1) AS "Marca"
FROM
    (
        SELECT
            PCInventory.tex_name AS tex_name
        FROM
            PCInventory
        JOIN
            (
                SELECT
                    sma_ram AS "RAM",
                    COUNT(*) AS "Cantidad"
                FROM
                    PCInventory
                GROUP BY
                    sma_ram
                HAVING
                    COUNT(*)>=2
                ORDER BY
                    COUNT(*) DESC
                LIMIT
                    3
            ) PCGroup ON PCInventory.sma_ram = PCGroup.RAM
    ) AS PCGroupBigRAM 
;

-- Todas las computadoras en inventario que no pertenecen a las marcas de los tres grupos mas grandes de RAM.

SELECT
    DISTINCT SUBSTRING_INDEX(tex_name,' ',1) AS "Marca"
FROM
    (
        SELECT
            PCInventory.tex_name AS tex_name
        FROM
            PCInventory
        JOIN
            (
                SELECT
                    sma_ram AS "RAM",
                    COUNT(*) AS "Cantidad"
                FROM
                    PCInventory
                GROUP BY
                    sma_ram
                HAVING
                    COUNT(*)>=2
                ORDER BY
                    COUNT(*) DESC
                LIMIT
                    3
            ) PCGroup ON PCInventory.sma_ram = PCGroup.RAM
    ) AS PCGroupBigRAM 
LEFT JOIN
    (

        SELECT
            PCInventory.tex_name AS tex_name2
        FROM
            PCInventory
        JOIN
            (
                SELECT
                    sma_ram AS "RAM",
                    COUNT(*) AS "Cantidad"
                FROM
                    PCInventory
                GROUP BY
                    sma_ram
                HAVING
                    COUNT(*)>=2
                ORDER BY
                    COUNT(*) DESC
                LIMIT
                    3
            ) PCGroup ON PCInventory.sma_ram = PCGroup.RAM

    ) AS Test ON PCGroup.`RAM` = Test.RAM
;