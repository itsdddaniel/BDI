@author Daniel Arteaga
@version 1.0
@date 10/02/2021

SQL BÁSICO:
===========

- El lenguaje SQL puede considerarse una de las principales razones del éxito comercial de las bases de datos relacionales.

- El nombre SQL se expande actualmente como lenguaje de consulta estructurado. Originalmente, SQL se llamaba SEQUEL (Structured English QUEry Language) y se diseñó e implementó en IBM Research como la interfaz para un sistema de base de datos relacional experimental llamado SYSTEM R. 

- SQL es un lenguaje de base de datos completo: tiene declaraciones para definiciones de datos, consultas y actualizaciones. Por lo tanto, **es un DDL y un DML**.

Definición de datos SQL y tipos de datos:
=========================================

- SQL utiliza los términos tabla, fila y columna para los términos relación, tupla y atributo del modelo relacional formal, respectivamente. Usaremos los términos correspondientes indistintamente.

- El **comando SQL principal para la definición de datos es el estado CREATE**, que se puede usar para crear esquemas, tablas (relaciones), tipos y dominios, así como otras construcciones como vistas, aserciones y disparadores.

Conceptos de esquema y catálogo en SQL:
----------------------------------------

- Un esquema SQL se identifica mediante un nombre de esquema e incluye un identificador de autorización para indicar el usuario o la cuenta que posee el esquema, así como descriptores para cada elemento del esquema.

- Los elementos del esquema incluyen tablas, tipos, restricciones, vistas, dominios y otras construcciones (como concesiones de autorización) que describen el esquema.

El comando CREATE TABLE en SQL:
--------------------------------

- El comando CREATE TABLE se usa para especificar una nueva relación dándole un nombre y especificando sus atributos y restricciones iniciales.

- Los **atributos se especifican primero**, y a cada atributo se le da un nombre, un tipo de datos para especificar su dominio de valores y posiblemente restricciones de atributos, como NOT NULL. 

Tipos de datos de atributos y dominios en SQL:
-----------------------------------------------

- Los tipos de datos numéricos incluyen números enteros de varios tamaños **(INTEGER o INT y SMALLINT)** y números de punto flotante **(reales)** de diversa precisión **(FLOAT o REAL, y DOBLE PRECISIÓN)**. 

- Los tipos de datos de cadena de caracteres son de longitud fija, **CHAR (n) o CHARACTER (n)**, donde n es el número de caracteres, o de longitud variable, **VARCHAR (n) o CHAR VARYING (n) o CHARACTER VARYING (n)**, donde *n es el número máximo de caracteres*.

- Un tipo de datos de marca de tiempo **(TIMESTAMP)** incluye los campos **DATE y TIME**, más un mínimo de seis posiciones para fracciones decimales de segundos y un calificador **WITH TIME ZONE** opcional.

- El formato de **DATE, TIME y TIMESTAMP** se puede considerar como un tipo especial de cadena. Por lo tanto, generalmente se pueden usar en comparaciones de cadenas al ser lanzados en cadenas equivalentes.

Especificación de restricciones en SQL:
========================================

Especificación de restricciones de atributo y valores predeterminados de atributo:
----------------------------------------------------------------------------------

- Debido a que SQL permite NULL como valores de atributo, se puede especificar **una restricción NO NULL si no se permite NULL para un atributo** en particular.

- También es posible definir un valor por defecto para un atributo añadiendo la cláusula **DEFAULT <valor>** a una definición de atributo. 

Especificación de restricciones de integridad clave y referencial:
------------------------------------------------------------------

- Existen cláusulas especiales dentro de la instrucción CREATE TABLE para especificarlas.

- La cláusula **PRIMARY KEY** especifica uno o más atributos que componen la clave primaria de una relación. Si una clave primaria tiene un solo atributo, la cláusula puede seguir al atributo directamente.

- La cláusula **UNIQUE** especifica claves alternativas (únicas).

- La **integridad referencial** se especifica mediante la cláusula **FOREIGN KEY**.

Especificación de restricciones en tuplas mediante CHECK:
---------------------------------------------------------

- Se pueden especificar otras restricciones de tabla mediante cláusulas **CHECK** adicionales al final de una instrucción **CREATE TABLE**.

- Estas pueden denominarse restricciones basadas en filas porque se aplican a cada fila individualmente y se comprueban cada vez que se inserta o modifica una fila.

- La cláusula **CHECK** también se puede utilizar para especificar restricciones más generales utilizando la sentencia **CREATE ASSERTION** de SQL.

Consultas de recuperación básicas en SQL:
=========================================

SQL tiene una declaración básica para recuperar información de una base de datos: la declaración SELECT.

La estructura SELECT-FROM-WHERE de las consultas SQL básicas:
-------------------------------------------------------------

- La forma básica de la instrucción SELECT, a veces denominada mapeo o bloque select-from-where, está formada por las tres cláusulas **SELECT, FROM y WHERE** y tiene la siguiente forma:

        SELECT <attribute list>
        FROM <table list>
        WHERE​ <condition>;

donde: 

    ● <attribute list> es una lista de nombres de atributos cuyos valores debe recuperar la consulta.

    ● <table list> es una lista de los nombres de relación necesarios para procesar la consulta.

    ● <condition> es una expresión condicional (booleana) que identifica las tuplas que debe recuperar la consulta.


Nombres de atributos ambiguos, aliasing, cambio de nombre y variables de tupla:
--------------------------------------------------------------------------------

- En SQL, se puede usar el mismo nombre para dos (o más) atributos siempre que los atributos estén en tablas diferentes. Si este es el caso, y una consulta de múltiples tablas hace referencia a dos o más atributos con el mismo nombre.

Cláusula WHERE no especificada y uso del asterisco:
---------------------------------------------------

- Una cláusula **missingWHERE** indica que no hay condición en la selección de tuplas; por lo tanto, todas las tuplas de la relación especificada en la cláusula FROM califican y se seleccionan para el resultado de la consulta. Si se especifica más de una relación en la cláusula FROM y no hay cláusula WHERE, entonces se selecciona el **PRODUCTO CRUZADO** de estas relaciones.

- Para recuperar **todos los valores de atributo de las tuplas seleccionadas**, no tenemos que listar los nombres de atributo explícitamente en SQL; simplemente especificamos un **asterisco (*)**, que representa todos los atributos.

Tablas como conjuntos en SQL:
------------------------------

- SQL no elimina automáticamente las tuplas duplicadas en los resultados de las consultas, por las siguientes razones:

    ● La eliminación de duplicados es una operación costosa. Una forma de implementarlo es ordenar las tuplas primero y luego eliminar los duplicados.

    ● Es posible que el usuario desee ver tuplas duplicadas en el resultado de una consulta.

    ● Cuando se aplica una función agregada a tuplas, en la mayoría de los casos no queremos eliminar los duplicados.

Orden de los resultados de la consulta:
----------------------------------------

- SQL permite al **usuario ordenar las tuplas en el resultado de una consulta por los valores de uno o más de los atributos que aparecen en el resultado de la consulta, utilizando la cláusula ORDERBY**. 

INSERTAR, ELIMINAR y ACTUALIZAR declaraciones en SQL:
======================================================

El comando INSERT:
------------------

- **INSERT** se usa para agregar una sola tupla (row) a una relación (table). Debemos especificar el nombre de la relación y una lista de valores para la tupla.

- Una segunda forma de la instrucción INSERT permite al usuario especificar nombres de atributos explícitos que corresponden a los valores proporcionados en el comando INSERT. 

El comando DELETE:
------------------

- **DELETE** elimina las tuplas de una relación. Incluye una cláusula WHERE, similar a la utilizada en una consulta SQL, para seleccionar las tuplas que se eliminarán. 

El comando UPDATE:
-------------------

- **UPDATE** se usa para modificar los valores de los atributos de una o más tuplas seleccionadas. Como en el comando DELETE, una cláusula WHERE en el comando UPDATE selecciona las tuplas que se modificarán a partir de una única relación. 
