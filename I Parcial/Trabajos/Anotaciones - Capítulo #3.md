@author Daniel Arteaga
@version 1.0
@date 02/02/2021

Modelado De Datos Mediante El Modelo Entidad-relación (Er):
===========================================================
Las metodologías de modelado de objetos como el lenguaje de modelado unificado (UML) se están volviendo cada vez más populares tanto en el diseño de bases de datos como de software.

USO DE MODELOS DE DATOS CONCEPTUALES DE ALTO NIVEL PARA EL DISEÑO DE BASES DE DATOS:
====================================================================================

- El primer paso que se muestra es la recopilación y el análisis de requisitos. Durante este paso, los diseñadores de la base de datos entrevistan a los posibles usuarios de la base de datos para comprender y documentar sus requisitos de datos. 

- Una vez recopilados y analizados los requisitos, el siguiente paso es crear un esquema conceptual para la base de datos, utilizando un modelo de datos conceptual de alto nivel. Este paso se llama **diseño conceptual**.

- El **esquema conceptual** es una descripción concisa de los requisitos de datos de los usuarios e incluye descripciones detalladas de los tipos de entidad, relaciones y restricciones; estos se expresan utilizando los conceptos proporcionados por el modelo de datos de alto nivel. 

- Durante o después del diseño del esquema conceptual, las operaciones básicas del modelo de datos se pueden utilizar para especificar las consultas y operaciones de usuario de alto nivel identificadas durante el análisis funcional.

UNA APLICACIÓN DE BASE DE DATOS DE MUESTRA:
===========================================

- Los diseñadores de la base de datos proporcionan la siguiente descripción del minimundo, la parte de la empresa que estará representada en la
base de datos:

    - La empresa está organizada en departamentos. Cada departamento tiene un nombre único, un número único y un empleado en particular que administra el departamento. Llevamos un registro de la fecha de inicio cuando ese empleado comenzó a administrar el departamento. Un departamento puede tener varias ubicaciones.

    - Un departamento controla varios proyectos, cada uno de los cuales tiene un nombre único, un número único y una ubicación única.

    - La base de datos almacenará el nombre, el número de seguro social, la dirección, el salario, el sexo (género) y la fecha de nacimiento de cada empleado. Un empleado está asignado a un departamento, pero puede trabajar en varios proyectos, que no necesariamente están controlados por el mismo departamento. Se requiere realizar un seguimiento del número actual de horas por semana que un empleado trabaja en cada proyecto, así como del supervisor directo de cada empleado (que es otro empleado).

    - La base de datos hará un seguimiento de los dependientes de cada empleado para fines de seguro, incluido el nombre, el sexo, la fecha de nacimiento y la relación con el empleado de cada dependiente.

TIPOS DE ENTIDAD, CONJUNTOS DE ENTIDADES, ATRIBUTOS Y CLAVES:
=============================================================

Entidades y atributos:
----------------------

- Entidades y sus atributos. El concepto básico que representa el modelo ER es una entidad, que es una cosa u objeto en el mundo real con una existencia independiente. 

- Una **entidad** puede ser un objeto con existencia física (por ejemplo, una persona, automóvil, casa o empleado en particular) o puede ser un objeto con una existencia conceptual (por ejemplo, una empresa, un trabajo o una universidad, curso). **Cada entidad tiene atributos**, las propiedades particulares que la describen.

- En el modelo ER se producen varios tipos de atributos: simples frente a compuestos, de valor único frente a valores múltiples y almacenados frente a derivados.

<ins>*Atributos compuestos versus simples (atómicos):*<ins>

- Los **atributos compuestos** se pueden dividir en subpartes más pequeñas, que representan atributos más básicos con significados independientes.

- Los atributos que no son divisibles se denominan **atributos simples o atómicos**. 

- Los atributos compuestos son útiles para modelar situaciones en las que un usuario a veces se refiere al atributo compuesto como una unidad, pero otras veces se refiere específicamente a sus componentes. 

<ins>*Atributos de valor único frente a atributos de valor múltiple:*<ins>

- La mayoría de los atributos tienen un valor único para una entidad en particular; tales atributos se denominan de **valor único**.

- Un **atributo de varios valores** puede tener límites inferior y superior para limitar el número de valores permitidos para cada entidad individual.

<ins>*Atributos almacenados versus derivados:*<ins>

- En algunos casos, dos (o más) valores de atributo están relacionados, por ejemplo, los atributos Edad y Fecha de nacimiento de una persona. Para una entidad de persona en particular, el valor de Edad se puede determinar a partir de la fecha actual (hoy) y el valor de la Fecha de nacimiento de esa persona.

<ins>*Valores NULL:*<ins>

- En algunos casos, una entidad en particular puede no tener un valor aplicable para un atributo. Por ejemplo, el atributo Apartment_number de una dirección se aplica solo a direcciones que se encuentran en edificios de apartamentos y no a otros tipos de residencias, como viviendas unifamiliares.

<ins>*Atributos complejos:*<ins>

- Los atributos compuestos y multivalor pueden anidarse arbitrariamente. Podemos representar el anidamiento arbitrario agrupando los componentes de un atributo compuesto entre paréntesis () y separando los componentes con comas, y mostrando atributos de varios valores entre llaves {}. Estos atributos se denominan atributos complejos.

Tipos de entidad, conjuntos de entidades, claves y conjuntos de valores:
------------------------------------------------------------------------

<ins>*Tipos de entidad y conjuntos de entidades:*<ins>

- Una base de datos generalmente contiene grupos de entidades que son similares. Por ejemplo, una empresa queemplea a cientos de empleados puede querer almacenar información similar sobrecada uno de los empleados.

<ins>*Atributos clave de un tipo de entidad:*<ins>

- Una restricción importante sobre la sentidades de un tipo de entidad es la restricción de clave o unicidad de los atributos.Un tipo de entidad generalmente tiene uno o más atributos cuyos valores sondistintos para cada entidad individual en el conjunto de entidades.

<ins>*Conjuntos de valores (dominios) de atributos:*<ins>

- Cada atributo simple de un tipo de entidad está asociado con un conjunto de valores (o dominio de valores), que especifica el conjunto de valores que se pueden asignar a ese atributo para cada entidad individual.

TIPOS DE RELACIONES, CONJUNTOS DE RELACIONES, ROLES Y RESTRICCIONES ESTRUCTURALES:
==================================================================================

Tipos de relaciones, conjuntos e instancias:
--------------------------------------------

- Un tipo de relación R entre n tipos de entidad (E​1, E​2​,. . . , En) define un conjunto de asociaciones, o un conjunto de relaciones, entre entidades de estos tipos de entidad. De manera similar al caso de los tipos de entidad y los conjuntos de entidades, un tipo de relación y su correspondiente conjunto de relaciones se denominan habitualmente con el mismo nombre, R.

Grado de relación, nombres de roles y relaciones recursivas:
------------------------------------------------------------

- Grado de un tipo de relación. El grado de un tipo de relación es el número de tipos de entidades participantes.

<ins>*Relaciones como atributos:*<ins>

- A veces es conveniente pensar en un tipo de relación binaria en términos de atributos.

- Nombres de roles y relaciones recursivas. Cada tipo de entidad que participa en un tipo de relación juega un papel particular en la relación. El nombre de la función indica la función que desempeña una entidad participante del tipo de entidad en cada instancia de relación y ayuda a explicar qué significa la relación.

Restricciones sobre tipos de relaciones binarias:
-------------------------------------------------

- Los tipos de relación suelen tener ciertas restricciones que limitan las posibles combinaciones de entidades que pueden participar en el conjunto de relaciones correspondiente. Estas limitaciones se determinan a partir de la situación del mini mundo que representan las relaciones.

<ins>*Razones de cardinalidad para relaciones binarias:*<ins>

- La relación de cardinalidad para una relación binaria especifica el número máximo de instancias de relación en las que una entidad puede participar.

- Restricciones de participación y dependencias de existencia. La restricción de participación especifica si la existencia de una entidad depende de que esté relacionada con otra entidad a través del tipo de relación.

- Esta restricción especifica el número mínimo de instancias de relación en las que cada entidad puede participary, en ocasiones, se denomina restricción de cardinalidad mínima.

- Hay dos **tipos de restricciones de participación, totales y parciales**.

Atributos de los tipos de relaciones:
-------------------------------------

- Los tipos de relación también pueden tener atributos, similares a los de los tipos de entidad.

TIPOS DE ENTIDADES DÉBILES:
===========================

- Los tipos de entidad que no tienen atributos clave propios se denominan tipos de entidad débil.

- Las entidades que pertenecen a un tipo de entidad débil se identifican por estar relacionadas con entidades específicas de otro tipo de entidad en combinación con uno de sus valores de atributo.

- Llamamos a este otro **tipo de entidad el tipo de entidad identificadora o propietaria**, y llamamos al tipo de relación que relaciona un tipo de entidad débil con su propietario la relación de **identificación del tipo de entidad débil**.

DIAGRAMAS ER, CONVENCIONES PROBLEMAS DE DISEÑO:
===============================================

Nomenclatura adecuada de construcciones de esquema:
---------------------------------------------------

- Al diseñar un esquema de base de datos, la elección de nombres para tipos de entidad, atributos, tipos de relación y (en particular) roles no siempre es sencilla.

- Elegimos usar **nombres en singular para los tipos de entidad, en lugar de en plural, porque el nombre del tipo de entidad se aplica a cada entidad individual que pertenece a ese tipo de entidad**.

Opciones de diseño para el diseño conceptual de ER:
---------------------------------------------------

- En ocasiones es difícil decidir si un concepto particular en el mini mundo debe modelarse como un tipo de entidad, un atributo o un tipo de relación.

- El proceso de diseño de esquemas debe considerarse un proceso de refinamiento iterativo, donde se crea un diseño inicial y luego se refina iterativamente hasta que se alcanza el diseño más adecuado.

- Algunas de las mejoras que se utilizan con frecuencia incluyen las siguientes:

    * Un concepto puede modelarse primero como un atributo y luego refinarse en una relación porque se determina que el atributo es una referencia a otro tipo de entidad. A menudo ocurre que un par de atributos que son inversos entre sí se refinan en una relación binaria.

    * De manera similar, un atributo que existe en varios tipos de entidad puede elevarse o promoverse a un tipo de entidad independiente.

Notaciones alternativas para diagramas ER:
------------------------------------------

- Hay muchas notaciones esquemáticas alternativas para mostrar diagramas ER. La notación del **Lenguaje de modelado unificado (UML)** para diagramas de clases, que se ha propuesto coestándar para el modelado de objetos conceptuales.

EJEMPLO DE OTRA NOTACIÓN: DIAGRAMAS DE CLASES UML:
==================================================

- La **metodología UML se utiliza ampliamente en el diseño de software** y tiene muchos tipos de diagramas para diversos fines de diseño de software. Aquí solo presentamos brevemente los conceptos básicos de los diagramas de clases UML y los comparamos con los diagramas ER.

- En UML, hay dos tipos de relaciones: asociación y agregación.

- La **agregación** está destinada a representar una relación entre un objeto completo y sus partes componentes, y tiene una notación diagramática distinta.

- La **agregación y la asociación no tienen propiedades estructurales diferentes**, y la elección de qué tipo de relación utilizar, agregación o asociación, es algo subjetiva. **En el modelo ER, ambos se representan como relaciones**.

- UML también distingue entre **asociaciones (o agregaciones) unidireccionales y bidireccionales**.

- El caso **unidireccional**, la línea que conecta las clases se muestra con una flecha para indicar que solo se necesita una dirección para acceder a los objetos relacionados. **Si no se muestra ninguna flecha, se asume el caso bidireccional, que es el predeterminado**.


EXTRA
=====

- **Cardinalidad** se refiere al número máximo de veces que una instancia en una entidad se puede relacionar con instancias de otra entidad.

- **Ordinalidad** es el número mínimo de veces que una instancia en una entidad se puede asociar con una instancia en la entidad relacionada.

    ![image](https://drive.google.com/uc?id=1Nu9JnKGd9GHayndabCC0IrY7buof3abL)