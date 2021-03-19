@author Daniel Arteaga
@version 1.0
@date 11/02/2021

Operadores
==========

Los operadores de =, <>, <=, >=, <, >, >>, <<, AND, OR, LIKE se puede usar en expresiones en la lista de columnas de salida (a la izquierda de FROM) dentro de las instrucciones SELECT. También pueden aplicarse como condicionales dentro del WHERE. 

        SELECT col1 = 1 AND col2 = 2 FROM my_table;

LIKE
----

El operadores LIKE se usa en la cláusala WHERE para buscar un patrón específico sobre un atributo.

Hay dos comodines que se usan comúnmente junto al operador LIKE. Los comodines siguientes pueden variar según el SGBD.

- **%** El signo de porcentaje representa cero, uno o varios caracteres. (.*).

- **_** El guión bajo representa un único caracter.

Algunas de los ejemples tradicionales para uso de LIKE:

- atributo LIKE **'z__%'**: Busca cualquier valor que comience con 'z' que tenga al menos 3 caracteres de longitud.

- atributo LIKE **'_z%'**: Busca cualquier valor que tenga 'z' en la segunda posición.

- atributo LIKE **'%z'**: Busca cualquier valor que termine con una 'z'.

- atributo LIKE **'%hn%'**: Buscar cualquier valor que tenga 'hn' en cualquier posición del campo.


IN
---

El operador IN es una abreviatura de múltiples condiciones OR. El operador IN permite especificar varios valores en una cláusula WHERE.

        WHERE atributo IN (value1,value2, ...);
        WHERE atributo IN (SELECT STATEMENT);

GROUP BY
--------

max, min, avg, sum, count(*)

- La función COUNT() devuelve el número de filas que coincide con un criterio específico y es la que hemos usado antes para verificar la 'existencia de cantidad' de 'tareas para un usuario, gerencia, etc'.

- La función MIN() devuelve el valor más pequeño de la columna seleccionada.

- La función MAX() devuelve el valor más grande de la columna seleccionada.

- La función AVG() devuelve el valor promedio de una columna numérica.

- La función SUM() devuelve la suma total de una columna numérica.

ORDER BY
---------

La palabra ORDER BY se utiliza para ordenar el conjunto de resultados en orden ascendente (ASC) o descendente (DESC).

HAVING
------

La cláusula HAVING se usa en SQL para cuando existen condicionales que no pueden aplicarse en el WHERE.

        GROUP BY atributo(s) HAVING condicional;

Algebra Relacional
------------------

- JOIN: Retorna los registros que tienen un match en ambas tablas.

- LEFT JOIN: Devuelve todos los registros de la tabla izquierda (tabla1) y los registros coincidientes de la tabla de la derecha (tabla2). El resultado es NULL desde el lado derecho, si no hay coincidencias.

- RIGHT JOIN: Devuelve todos los registros de la tabla derecha (tabla2) y los registros coincidentes de la tabla de la izquierda (tabla1). El resultado es NULL desde el lado izquierdo, si no hay coincidencias.
