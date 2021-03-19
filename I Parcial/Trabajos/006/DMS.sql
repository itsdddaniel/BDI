
-- Verficación de LIKE: Retorna todos los registros de la tabla que contienen un espacio en blanco dentro del campo texto.

SELECT
    id AS "ID",
    text_name AS "Campo de Texto"
FROM
    DataTableSectionA
WHERE
    text_name LIKE '% %' 
;

-- Verficación de LIKE: Retorna todos los registros de la tabla que no contienen un espacio en blanco dentro del campo texto.

SELECT
    id AS "ID",
    text_name AS "Campo de Texto"
FROM
    DataTableSectionA
WHERE
    text_name NOT LIKE '% %' 
;

-- Verificación de IN: Retorona una lista de elementos de la tabla B, donde el campo B.tex_name se encuentra en los tex_name de la tabla A.

SELECT
    id
FROM 
    DataTableSectionB
WHERE
    tex_name IN
    (
        SELECT
            text_name AS "Campo de Text"
        FROM
            DataTableSectionA
        WHERE
            text_name NOT LIKE '% %' 
    )
;

-- Debido a los resultados de la tabla duplicada, el estudiante alterar la tabla y modificar el campo 'ID' con la funcionalidad de PRIMARY KEY AUTO_INCREMENT

-- Existen ejemplos de programación donde es necesario verificar si los elementos de una lista 1 se encuentran dentro de los elementos de una lista 2. El código SELECT anterior podrá en cierto escenarios, resolver dicho ejercicio, sin embargo, se le pide al estudiante aplicar su criterio de cuándo usar, en su lugar, el JOIN y sus derivaciones.

-- GROUP BY MIN()

SELECT
    min(num_int) AS "Valor entero, menor."
FROM 
    DataTableSectionB
GROUP BY
    num_int