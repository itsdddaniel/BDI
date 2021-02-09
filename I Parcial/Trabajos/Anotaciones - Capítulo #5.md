@author Daniel Arteaga
@version 1.0
@date 09/02/2021

EL MODELO DE DATOS RELACIONALES Y LAS RESTRICCIONES DE LAS BASES DE DATOS RELACIONALES
=======================================================================================

Conceptos del modelo relacional:
--------------------------------

- El **modelo relacional** representa la base de datos como una colección de relaciones. De manera informal, cada relación se asemeja a una tabla de valores o, hasta cierto punto, a un archivo plano de registros.

- **Archivo plano** es por que cada registro tiene una estructura lineal o plana simple.

- Cada fila de la tabla representa una colección de datos relacionados. Una **fila representa un hecho que normalmente corresponde a una entidad o relación del mundo real**.

- El nombre de la tabla y los nombres de las columnas se utilizan para ayudar a interpretar el significado de los valores en cada fila.

- Todos los **valores de una columna son del mismo tipo de datos**.

- En el modelo relacional formal, una **fila se llama tupla, un encabezado de columna se llama atributo y la tabla se llama relación**.

Dominios, atributos, tuplas y relaciones:
-----------------------------------------

- Un **dominio** es un conjunto de valores atómicos, es decir, que cada valor en el dominio es indivisible en lo que respecta al modelo relacional formal.

- Un método común de especificar un dominio es especificar un tipo de dato del cual se extraen los valores de datos que forman el dominio.

Características de las relaciones:
----------------------------------

La definición anterior de relaciones implica ciertas características que hacen que una relación sea diferente de un archivo o una tabla.

**Ordenamiento de tuplas en una relación:** Una relación se define como un conjunto de tuplas. Los elementos de un conjunto no tienen orden entre ellos, por lo tanto, las tuplas de una relación no tienen ningún orden en particular.

 - Los registros se almacenan físicamente en el disco por lo que siempre hay un orden entre los registros.

 - El ordenamiento de tuplas no es parte de una definición de relación por que una relación intenta representar hechos a un nivel lógico o abstracto.

**Orden de valores dentro de una tupla y una definición alternativa de una relación:** De acuerdo con la definición anterior de una relación, una n-tupla es una lista ordenada de nvalores, por lo que el orden de los valores en una tupla, y por lo tanto de los atributos en un esquema de relación, es importante. Sin embargo, a un nivel más abstracto, el orden de los atributos y sus valores no es tan importante mientras se mantenga la correspondencia entre atributos y valores.

**Valores y NULL en las tuplas:** Cada valor de una tupla es un valor atómico; es decir, no es divisible en componentes dentro del marco del modelo relacional básico. Por lo tanto, los atributos compuestos y multivalor no están permitidos.

 - El **modelo relacional** se desarrolló teniendo en cuenta este supuesto, que se denomina el primer supuesto de forma normal. Por lo tanto, los atributos multivalor deben representarse mediante relaciones separadas y los atributos compuestos se representan solo por sus atributos componentes simples en el modelo relacional básico.

 - Los **valores NULL**, que se utilizan para representar los valores de atributos que pueden ser desconocidos o que pueden no aplicarse a una tupla.

**Interpretación (significado) de una relación:** El esquema de relación se puede interpretar como una declaración o un tipo de aserción. Las **relaciones pueden representar hechos sobre entidades, mientras que otras relaciones pueden representar hechos sobre relaciones**.

Restricciones del modelo relacional y esquemas de bases de datos relacionales:
==============================================================================

Las restricciones en las bases de datos generalmente se pueden dividir en tres categorías principales:

● Restricciones que son inherentes al modelo de datos. Llamamos a estas restricciones inherentes basadas en modelos o restricciones implícitas.

● Restricciones que pueden expresarse directamente en los esquemas del modelo de datos, típicamente especificándolas en el DDL (lenguaje de
definición de datos). Llamamos a estas restricciones basadas en esquemas o restricciones explícitas.

● Restricciones que no pueden expresarse directamente en los esquemas del modelo de datos y, por lo tanto, deben ser expresadas y aplicadas por los programas de aplicación o de alguna otra manera. Las denominamos restricciones semánticas o basadas en aplicaciones o reglas comerciales.

Restricciones de dominio:
-------------------------

- Las restricciones de dominio especifican que dentro de cada tupla, el valor de cada atributo A debe ser un valor atómico del dominio.

- Los tipos de datos asociados con dominios generalmente incluyen tipos de datos numéricos estándar para enteros (como entero corto, entero y entero largo) y números reales (flotante y flotante de doble precisión).

- Los dominios también se pueden describir mediante un subrango de valores de un tipo de datos o como un tipo de datos enumerados en el que se enumeran explícitamente todos los valores posibles.

Restricciones y restricciones clave en valores NULL:
----------------------------------------------------

- En el modelo relacional formal, una **relación se define como un conjunto de tuplas**. Por definición, **todos los elementos de un conjunto son distintos**; por tanto, todas **las tuplas de una relación también deben ser distintas**.

Bases de datos relacionales y esquemas de bases de datos relacionales:
----------------------------------------------------------------------

Una base de datos relacional generalmente contiene muchas relaciones, con tuplas en relaciones que están relacionadas de varias formas.

- Un esquema de base de datos relacional es un conjunto de esquemas de relación S = {R​1​, R​2​, ..., R​m​} y un conjunto de restricciones de integridad IC. 

- Cuando nos referimos a una base de datos relacional, implícitamente incluimos tanto su esquema como su estado actual.

- Un estado de base de datos que no obedece a todas las restricciones de integridad se denomina no válido, y un estado que satisface todas las restricciones del conjunto definido de restricciones de integridad IC se denomina estado válido

- Cada DBMS relacional debe tener un lenguaje de definición de datos (DDL) para definir un esquema de base de datos relacional

- Las restricciones de integridad se especifican en un esquema de base de datos y se espera que se mantengan en cada estado válido de la base de datos de ese esquema.

- Las restricciones de dominio, clave y NOT NULL, otros dos tipos de restricciones se consideran parte del modelo relacional: la integridad de la entidad y la integridad referencial.

Integridad de la entidad, integridad referencial y claves externas:
-------------------------------------------------------------------

- La **restricción de integridad** de la entidad establece que **ningún valor de clave principal puede ser NULO**.

- Esto se debe a que el valor de la clave principal se utiliza para identificar tuplas individuales en una relación. 

- Las restricciones clave y las restricciones de integridad de la entidad se especifican en relaciones individuales.

- La **restricción de integridad referencial** se specifica entre dos relaciones y se utiliza para mantener la coherencia entre tuplas en las dos relaciones. 

- De manera informal, la restricción de integridad referencial establece que una tupla en una relación que se refiere a otra relación debe hacer referencia a una tupla existente en esa relación.

Actualizar operaciones, transacciones y abordar las infracciones de restricciones:
==================================================================================

- Una expresión de **álgebra relacional** forma una nueva relación después de aplicar varios operadores algebraicos a un conjunto existente de relaciones; su uso principal es consultar una base de datos para recuperar información.

La operación de inserción:
--------------------------

- La operación Insertar proporciona una lista de valores de atributo para una nueva tupla **t** que se insertará en una relación **R**. 

- Insertar puede violar cualquiera de los cuatro tipos de restricciones.

- Las restricciones de dominio se pueden violar si se proporciona un valor de atributo que no aparece en el dominio correspondiente o no es del tipo de datos apropiado.

- Las restricciones de clave se pueden violar si un valor clave en la nueva tupla **t** ya existe en otra tupla en la relación **r** (R).

- La integridad de la entidad se puede violar si cualquier parte de la clave primaria de la nueva tupla **t** es NULL.

- La integridad referencial se puede violar si el valor de cualquier clave externa en **t** se refiere a una tupla que no existe en la relación referenciada.

- Si una inserción viola una o más restricciones, la opción predeterminada es rechazar la inserción.

La operación de eliminación:
----------------------------

- La operación Eliminar solo puede violar la integridad referencial. Esto ocurre si las claves externas de otras tuplas de la base de datos hacen referencia a la tupla que se está eliminando.

- Para especificar la eliminación, una condición en los atributos de la relación selecciona la tupla (o tuplas) que se eliminarán.

La operación de actualización:
------------------------------

- La operación Actualizar (o Modificar) se usa para cambiar los valores de uno o más atributos en una tupla (o tuplas) de alguna relación **R**.

- Es necesario especificar una condición sobre los atributos de la relación para seleccionar la tupla (o tuplas) para ser modificado. 

El concepto de transacción:
---------------------------

Un programa de aplicación de base de datos que se ejecuta en una base de datos relacional normalmente ejecuta una o más transacciones.

- Una **transacción** es un programa en ejecución que incluye algunas operaciones de la base de datos, como la lectura de la base de datos o la aplicación de inserciones, eliminaciones o actualizaciones a la base de datos.

- Al final de la transacción, debe dejar la base de datos en un estado válido o consistente que satisfaga todas las restricciones especificadas en el esquema de la base de datos.