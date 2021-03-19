@author Daniel Arteaga
@version 1.0
@date 02/02/2021

Conceptos Y Arquitectura Del Sistema De Base De Datos:
======================================================

MODELOS DE DATOS, ESQUEMAS E INSTANCIAS:
========================================

- Una característica fundamental del enfoque de la base de datos es que proporciona cierto nivel de abstracción de datos. La abstracción de datos generalmente se refiere a la supresión de detalles de la organización y el almacenamiento de datos,y al resaltado de las características esenciales para una mejor comprensión de los datos.

- Un modelo de datos, una colección de conceptos se pueden utilizar para describir la estructura de una base de datos, proporciona los medios necesarios para lograr esta abstracción.

- Por **estructura de bases de datos** se refiere a los tipos de datos, relaciones y restricciones que se aplican a los datos. La mayoría de los modelos de datos también incluyen un conjunto de operaciones básicas para especificar recuperaciones y actualizaciones en la base de datos.

Categorías de modelos de datos:
-------------------------------

- Los **modelos de datos conceptuales** o de alto nivel proporcionan conceptos que se acercan a la forma en que muchos usuarios perciben datos, mientras que los modelos de datos físicos o de bajo nivel proporcionan conceptos que describen los detalles de cómo se almacenan los datos en los medios de almacenamiento de la computadora.

- **Clase de modelos de datos** representativos que proporcionan conceptos que los usuarios finales pueden entender fácilmente pero que no se aleja demasiado a la forma en que se organizan los datos en el almacenamiento informático.

- Los **modelos de datos conceptuales utilizan** conceptos como *entidades*, *atributos* y *relaciones*.

- Una **entidad** representa un objeto o concepto del mundo real.

- Un **atributo** representa alguna propiedad de interés que describe con más detalle una entidad.

- Una **relación** representa una asociación entre las entidades.

- Los **modelos de datos representativos o de implementación** son los modelos que se utilizan con más frecuencia en los DBMS comerciales tradicionales.

- Los **modelos de datos representativos** representan datos mediante el uso de estructura de registros y, por lo tanto, son a veces llamados modelos de datos basados en registros.

- Los **modelos de datos físicos describen cómo los datos se almacenan como archivos en la computadora al representar información como formatos de registro, orden de registro y rutas de acceso.

- Una **ruta de acceso** es una estructura de búsqueda que hace que la búsqueda de registros de bases de datos en particular sea eficiente, como indexación o hash. 

- Un **índice** es un ejemplo de una ruta de acceso que permite el acceso directo a los datos utilizando un término de índice o una palabra clave. 

Esquemas, instancias y estado de la base de datos:
--------------------------------------------------

- La descripción de una base de datos se denomina esquema de base de datos, que se especifica durante el diseño de la base de datos y no se espera que cambie con frecuencia.

- El **esquema** a veces se denomina *intensión* y el **estado de una base de datos** se denomina *extensión del esquema*.

ARQUITECTURA DE TRES ESQUEMAS E INDEPENDENCIA DE DATOS:
=======================================================

La arquitectura de tres esquemas:
---------------------------------

- El objetivo de la **arquitectura de tres esquemas** es para separar las aplicaciones de usuario de la base de datos física. En esta arquitectura, los esquemas se definen en tres niveles:

    - El **nivel interno tiene un esquema interno**, que describe la estructura de almacenamiento físico de la base de datos. El **esquema internto** utiliza un modelo de datos físicos y describe los detalles completos del almacenamiento de datos y las rutas de acceso a la base de datos.

    - El **nivel conceptual tiene un esquema conceptual**, que describe la estructura de toda la base de datos para la comunidad de los usuarios. El **esquema conceptual** oculta los detalles de las estructuras de almacenamiento físico y se concentra en describir entidades, tipos de datos, relaciones, operaciones de usuario y restricciones.

    - El **nivel externo o de vista**, incluye varios esquemas externos o vista de usuario. Cada esquema externo describe la parte de la base de datos en la que está interesado un grupo de usuarios en particular y oculta el resto de la base de datos de ese grupo de usuarios.

- La arquitectura de tres esquemas es una herramienta conveniente con la que el usuario puede visualizar los niveles de esquema en un sistema de base de datos.

- La mayoría de los DBMS no separan los tres niveles de forma completa y explícita.

- La **arquitectura ANSI de tres niveles** separa claramente el nivel externo de los usuarios. 

- Los tres esquemas son solo descripciones de datos, los datos reales se almacenan a nivel físico.

- La arquitectura de tres esquemas se puede utilizar para explicar mejor el concepto de independencia de datos, que se puede definir como la capacidad de cambiar el esquema en un nivel de un sistema de base de datos sin tener que cambiar el esquema en el siguiente nivel superior.

Independencia de datos:
-----------------------

- Podemos definir dos tipos de **independencia de datos**:

    - La independencia lógica de los datos es la capacidad de cambiar el esquema conceptual sin tener que cambiar esquemas externos o programas de aplicación.

    - La independencia física de los datos es la capacidad de cambiar el esquema interno sin tener que cambiar los esquemas externos.

- La **independencia de datos físicos** existe en la mayoría de las bases de datos y entornos de archivos donde los detalles físicos, como la ubicación exacta de datos en el disco etc. están ocultos al usuario.

- La **independencia lógica de los datos** es más difícil de lograr porque permite cambios estructurales y de restricciones sin afectar los programas de aplicación, un requisito mucho más estricto.

Idiomas DBMS:
-------------

- En muchos DBMS donde no se mantiene una separación estricta de niveles, el DBA y los diseñadores de bases de datos utilizan un lenguaje, llamado **lenguaje de definición de datos (DDL)**, para definir ambos esquemas. El DBMS tendrá un compilador DDL cuya función es procesar declaraciones DDL para identificar descripciones de las construcciones del esquema y almacenar la descripción del esquema en el catálogo DBMS.

- En los DBMS donde se mantiene una clara separación entre los niveles conceptual e interno, el DDL se utiliza para especificar únicamente el esquema conceptual.

- El **lenguaje de definición de almacenamiento (SDL)**, se utiliza para especificar el esquema interno.

- Para una verdadera arquitectura de tres esquemas, necesitaríamos un tercer lenguaje, el **lenguaje de definición de vista (VDL)**, para especificar las vistas del usuario y sus asignaciones al esquema conceptual, pero en la mayoría de los DBMS, el DDL se usa para definir esquemas tanto conceptuales como externos.

Interfaces DBMS:
----------------
Las interfaces fáciles de usar proporcionadas por un DBMS pueden incluir lo siguiente:

<ins>*Interfaces basadas en menús para clientes web o navegación:*<ins>

- Estas interfaces presentan al usuario listas de opciones (menús) que guían al usuario a través de la formulación de una solicitud. Los menús eliminan la necesidad de memorizar lineas de comando.

<ins>*Aplicaciones para dispositivos móviles:*<ins>

- Estas interfaces ofrecen a los usuarios móviles acceso a sus datos. Estas aplicaciones tienen interfaces programadas integradas que normalmente permiten a los usuarios iniciar sesión con su nombre y contraseña.

<ins>*Interfaces basadas en formularios:*<ins>

- Una interfaz basada en formularios muestra un formulario a cada usuario. Los usuarios pueden completas todas las entradas del formulario para insertar nuevos datos, o pueden completas solo ciertas entradas.

<ins>*Interfaces gráficas de usuario:*<ins>

- Un GUI generalmente muestra un esquema al usuario en forma de diagrama. 

<ins>*Interfaces de lenguaje natural:*<ins>

- Estas interfaces aceptan solicitudes escritas en inglés o en algún otro idioma e intentan comprenderlas. Una interfaz de lenguaje natural generalmente tiene su propio esquema.

<ins>*Búsqueda de base de datos basada en palabras clave:*<ins>

- Aceptan cadenas de palabras en lenguaje natural y las relacionan con documentos en sitios específicos o páginas web.

<ins>*Entrada y salida de voz:*<ins>

- El uso limitado de la voz como una consulta de entrada y la voz como respuesta a una pregunta o resultado de una solicitud se está convirtiendo en algo común.

<ins>*Interfaces para usuarios paramétricos:*<ins>

- Los usuarios paramétricos a menudo tienen un pequeño conjunto de operaciones que deben realizar repetidamente.

<ins>*Interfaces para el DBA:*<ins>

- La mayoría de estos sistemas de bases de datos contienen comandos privilegiados que solo puede usar el personal de DBA.

EL ENTORNO DEL SISTEMA DE BASE DE DATOS:
========================================

Módulos de componentes DBMS:
----------------------------

-Un **módulo de administrador de datos** almacenados de nivel superior del DBMS controla el acceso a la información delDBMS que se almacena en el disco, ya sea que sea parte de la base de datos o del catálogo.

Utilidades del sistema de base de datos:
----------------------------------------
Los servicios públicos comunes tienen los siguientes tipos de funciones:

<ins>*Cargando:*<ins>

- Se utiliza una utilidad de carga para cargar archivos de datos existentes, como archivos de texto o archivos secuenciales, en la base de datos.

<ins>*Apoyo:*<ins>

- Una utilidad de respaldo crea una copia de respaldo de la base de datos, generalmente volcando toda la base de datos en una cinta u otro medio de almacenamiento masivo.

<ins>*Reorganización del almacenamiento de la base de datos:*<ins>

- Esta utilidad se puede utilizar para reorganizar un conjunto de archivos de base de datos en diferentes organizaciones de archivos y crear nuevas rutas de acceso para mejorar el rendimiento.

<ins>*Supervisión del rendimiento:*<ins>

- Esta utilidad monitorea el uso de la base de datos y proporciona estadísticas al DBA. El DBA utiliza las estadísticas para tomar decisiones en organizar o no los archivos o si agregar o elminar índices para mejorar el rendimiento.

Herramientas, entornos de aplicación e instalaciones de comunicaciones:
-----------------------------------------------------------------------

- Las herramientas CASE se utilizan en la fase de diseño de los sistemas de base de datos. 

- Una herramienta útil en organizaciones grandes es un sistema de diccionario de datos ampliado. Además de almacenar información de catálogo sobre esquemas y restricciones, el diccionario de datos almacena otra información, como decisiones de diseño, estándares de uso, descripciones de programas de aplicación e información de usuario.

- Los entornos de desarrollo de aplicaciones, como **PowerBuilder (Sybase) o JBuilder (Borland)**, han sido bastante populares. Estos sistemas proporcionan un entorno para desarrollar aplicaciones de bases de datos e incluyen instalaciones que ayudan en muchas facetas de los sistemas de bases de datos, incluido el diseño de bases de datos, el desarrollo de GUI, la consulta y actualización y el desarrollo de programas de aplicaciones.

ARQUITECTURAS CENTRALIZADAS Y CLIENTE / SERVIDOR PARA DBMS:
===========================================================

Arquitectura de DBMS centralizada:
----------------------------------

- Las arquitecturas más antiguas utilizaban computadoras centrales para proporcionar el procesamiento principal de todas las funciones del sistema, incluidos los programas de aplicación de usuario y los programas de interfaz de usuario, así como toda la funcionalidad DBMS.

- La mayoría de los usuarios accedían al DBMS a través de terminales de computadora que no tenían capacidad de procesamiento y solo proporcionaban capacidades de visualización. Por lo tanto, todo el procesamiento se realizó de forma remota en el sistema informático que alberga el DBMS, y solo se envió información y controles de pantalla desde la computadora a los terminales de pantalla, que estaban conectados a la computadora central a través de varios tipos de redes de comunicaciones.

Arquitecturas básicas de cliente / servidor:
--------------------------------------------

- Un **cliente** en este marco es típicamente una máquina de usuario que proporciona capacidades de interfaz de usuario y procesamiento local. Cuando un cliente requiere acceso a una funcionalidad adicional, como el acceso a la base de datos, que no existe en el cliente, se conecta a un servidor que proporciona la funcionalidad necesaria.

- Un **servidor** es un sistema que contiene hardware y software que puede proporcionar servicios a las máquinas cliente, como acceso a archivos, impresión, archivo o acceso a bases de datos.

Arquitecturas cliente / servidor de dos niveles para DBMS:
----------------------------------------------------------

- En los sistemas de gestión de bases de datos relacionales (RDBMS), muchos de los cuales comenzaron como sistemas centralizados, los componentes del sistema que se trasladaron primero al lado del cliente fueron la interfaz de usuario y los programas de aplicación.

- La funcionalidad de consulta y transacción relacionada con el procesamiento de SQL permaneció en el lado del servidor.

- En una arquitectura de este tipo, el servidor a menudo se denomina servidor de consultas oservidor de transacciones 
porque proporciona estas dos funcionalidades. En un RDBMS, el servidor también se denomina a menudo servidor SQL.

- Un estándar llamado Open Database Connectivity (ODBC) proporciona una interfaz de programación de aplicaciones (API), que permite que los programas del lado del cliente llamen al DBMS, siempre que tanto las máquinas cliente como las servidores tengan instalado el software necesario.

Arquitecturas de tres y n niveles para aplicaciones web:
--------------------------------------------------------

- Muchas aplicaciones web usan una arquitectura llamada arquitectura de tres niveles, que agrega una capa intermedia entre el cliente y el servidor de la base de datos:


- Esta **capa intermedia o nivel medio se denomina servidor de aplicaciones o servidor web**, según la aplicación. Este servidor desempeña un papel de intermediario al ejecutar programas de aplicación y almacenar reglas comerciales 
(procedimientos o restricciones) que se utilizan para acceder a los datos del servidor de la base de datos.

- El **servidor intermedio acepta solicitudes del cliente**, procesa la solicitud y envía las consultas y comandos de la base de datos al servidor de la base de datos, y luego actúa como un conducto para pasar datos (parcialmente) procesados ​ desde el servidor de la base de datos a los clientes, donde pueden estar procesado más y filtrado para ser presentado a los usuarios.

- La **capa inferior** incluye todos los servicios de gestión de datos. 

- La **capa intermedia** también puede actuar como un servidor web, que recupera los resultados de la consulta del servidor de la base de datos y los formatea en páginas web dinámicas que el navegador web visualiza en el lado del cliente. 

- La máquina cliente suele ser una PC o un dispositivo móvil conectado a la Web.

CLASIFICACIÓN DE LOS SISTEMAS DE GESTIÓN DE BASES DE DATOS:
===========================================================

- El modelo de datos principal utilizado en muchos DBMS comerciales actuales es el modelo de datos relacionales, y los sistemas basados ​​en este modelo se conocen como sistemas SQL. 

- Podemos categorizar los DBMS basados ​​en el modelo de datos: relacional, objeto, objeto-relacional, NOSQL, clave-valor, jerárquico, de red y otros.

- El segundo criterio utilizado para clasificar los DBMS es el número de usuarios admitidos por el sistema.

- El tercer criterio es el número de sitios en los que se distribuye la base de datos. Un DBMS está centralizado si los datos se almacenan en un solo sitio de computadora.

- Un DBMS centralizado puede admitir varios usuarios, pero el DBMS y la base de datos residen totalmente en un solo sitio de computadora. 