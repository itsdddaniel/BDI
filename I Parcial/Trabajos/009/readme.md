@author Daniel Arteaga
@version 1.0
@date 22/02/2021

Otras sentencias de Manipulación de Datos en SQL
================================================

Definición de Alias (Aliasing)
------------------------------

Se aplica mediante la palabra reservada **AS** en atributos o relaciones para generar un alias temporal para mostrar un datos con un nombre distinto o para aplicar una nomenclatura específica.

Definición de Limit
--------------------

Se aplica mediante la palabra reservada **LIMIT**. Si solo necesita un número específico de filas de un conjunto de resultados, utilice la cláusula LIMIT en la consulta. en lugar de recuperar el conjunto de resultados y desechar los datos adicionales.

Mediante LIMIT es posible generar la visualización de resultados mediante "páginas" de datos, limitando la cantidad de filas que se muestran para una pantalla.

Otras Sentencias de SQL para la Administración de los Datos
============================================================

Algunas de las sentencias son:

 - SHOW DATABASES;
 - SHOW TABLES;
 - DESCRIBE;
 - DROP DATABASE IF EXISTS;

SHOW CREATE DATABASE
---------------------

Se utiliza mediante SHOW CREATE DATABASE {dataBaseName}; y permite visualizar código DDS (Data Definition Statement) para la creación de la base de datos.

SHOW CERATE TABLE
------------------

Se utiliza mediante SHOW CREATE TABLE {tableName}; y permite visualizar el código DDS (Data Definition Statement) para la creación de la tabla de bases de datos.