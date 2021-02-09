@author Daniel Arteaga
@version 1.0
@date 01/30/2021

INTRODUCCIÓN:
=============

Una base de datos tiene las siguientes propiedas implicitas:
------------------------------------------------------------

    ● Una base de datos representa algún aspecto del mundo real, a veces llamado minimundo o universo del discurso (UoD). Los cambios en el minimundo se reflejan en la base de datos.

    ● Una base de datos es una colección de datos lógicamente coherente con algun significado inherente. Una variedad aleatoria de datos no se puede determinar correctamente una base de datos.

    ● Una base de datos esta diseñada, construida y poblada con datos para un propósito específico. Tiene un grupo de usuarios previstos y algunas aplicaciones preconcebidas en las que estos usuarios están interesados.

- **Un sistema de administración de bases de datos (DBMS)** es un sistemas computarizado que permite a los usuarios crear y mantener bases de datos. El DBMS es un sistema de software con propósito general que facilita los procesos de definir, construir, manipular y compartir bases de datos entre varios usuarios y aplicaciones. **Definir una base de datos implica especificar tipos de datos, las estructuras y las restricciones de los datos que se almacenarán en la base de datos en forma de catálogo o diccionario de bases de datos; se llama metadatos**.

- Otras funciones importantes de un DBMS incluyen proteger la base de datos y mantenerla durante un largo período de tiempo. La protección incluye protección del sistema contra fallas de hardware o software y protección contra acceso no autorizado o malicioso.

CARACTERÍSTICAS DEL ENFOQUE DE BASE DE DATOS:
=============================================

Las principales características del enfoque de base datos frente al enfoque de procesamiento de archivos son los siguientes:
----------------------------------------------------------------------------------------------------------------------------

    ● Naturaleza autodescriptiva de un sistema de bases de datos.
    ● Aislamiento entre programas y datos, y abstracción de datos.
    ● Soporte de múltiples de vistas de los datos.
    ● Intercambio de datos y procesamiento de transacciones multiusuario.

Aislamiento entre programas y datos, y abstracción de datos:
------------------------------------------------------------

- La característica que permite la independencia de los datos del programa y la independecia del funcionamiento del programa se denomia **abstracción de datos**. 

Soporte de múltiples vistas de los datos:
-----------------------------------------

- Una vista puede ser un subconjunto de la base de datos o puede contener datos virtuales que se derivan de los archivos de la bases de datos, pero no se almacenan explícitamente.

Intercambio de datos y procesamiento de transacciones multiusuario:
-------------------------------------------------------------------

- El DBMS debe incluir un software de control de concurrencia para asegurar que varios usuarios que intentan actualizar los mismos datos lo hagan de manera controlada para que el resultado de las actualizaciones sea correcto.

- Estos tipos de aplicaciones se denominan generalmente **aplicaciones de procesamiento de transacciones en línea (OLTP)**. Una función fundamental del software DBMS multiusuario es garantizar que las transacciones simultáneas funcionen de manera correcta y eficiente.

- Una **transacción** es un programa o proceso en ejecución que incluye uno o más accesos a la base de datos, como lectura o actualización de registro de la base de datos.

ACTORES EN ESCENA:
==================

Administradores de bases de datos:
----------------------------------

- La administración de estos recursos es responsabilidad del **administrador de bases de datos (DBA)**. El DBA es responsable de autorizar el acceso a la base de datos, coordinar y monitorear su uso y adquirir recursos de software y hardware según sea necesario. El DBA es responsable de problemas como violaciones de seguridad y tiempo de respuesta deficiente del sistema.

Diseñadores de bases de datos:
------------------------------

- Los **diseñadores de bases de datos** son responsables de identificar los datos que se almacenarán en la base de datos y de elegir las estructuras adecuadas para representar y almacenar estos datos. Estas tareas se realizan principalmente antes de que la base de datos se implemente y se llene de datos. Es responsabilidad de los diseñadores de bases de datos comunicarse con todos los posibles usuarios de la base de datos para comprender sus requisitos y crear un diseño que cumpla con estos requisitos.

Usuarios Finales:
-----------------
Los usuarios finales son las personas cuyos trabajos requieren acceso a la base de datos para consultar, actulizar y generar informes; la base de datos existe principalmente para su uso. Hay varias categorías de usuarios finales:

    ● Los usuarios finales ocasionalmente acceden ocasionalmente a la base de datos, pero puede necesitar información diferente cada vez. Utilizan una interfaz de consulta de bases de datos sofisticada para especificar sus solicitudes y suelen ser administradores de nivel medio o alto u otros navegadores ocasionales.

    ● Los usuarios finales ingenuos o paramétricos constituyen una parte considerable de los usuarios finales de la base de datos. Su función principal de trabajo gira entorno a la consulta y actualización constante de la base de datos, utilizando tipos estándar de consultas y actualizaciones, llamadas transacciones enlatadas, que se han programado y probado cuidadosamente. 

Las tareas que realizan estos usuarios son variadas:

    ● Los clientes bancarios y los cajeros controlan los saldos de las cuentas y registran los retiros y depósitos. 
    
    ● Los agentes de reservaciones o los clientes de aerolíneas, hoteles y empresas de alquiler de automóviles verifican la disponibilidad para una solicitud determinada y realizan reservas. 

    ● Los empleados de las estaciones receptoras de las empresas de envío ingresan las identificaciones de los paquetes mediante códigos de barra e información descriptiva mediante botones para actualizar una base de datos central de paquetes recibidos y en tránsito.

    ● Los usuarios de redes sociales publican y leen elementos en sitios web de redes sociales.

- Los usuarios finales sofisticados incluyen ingenieros, científicos, analistas de negocios y otros que se familiarizan a fondo con las instalaciones del DBMS para implementar sus propias aplicaciones para con sus complejos requisitos.

- Los usuarios independientes mantienen bases de datos personales mendiante el uso de paquetes de programas listos para usar que proporcionan interfaces fáciles de usar basadas en menús o en gráficos.

Analistas de sistemas y programadores de aplicaciones:
------------------------------------------------------

- Los analistas de los sistemas determinan los requisitos de los usuarios finales, especialmente los usuarios finales ingenuos y paramétrico, y desarrollan especificaciones para transacciones estándar que cumplen con esos requisitos. Los programadores de aplicaciones implementan estas especificaciones como programas; luego prueban, depuran, documentan y mantienen estas transacciones predefinas. 

TRABAJADORES DETRÁS DE LA ESCENA:
=================================

Por lo general, estas personas no están interesadas en el contenido de la base de datos en si. Los llamamos trabajadores detrás de escena e incluyen las siguientes categorías:

    ● Los diseñadores e implementadores de sistemas DBMS diseñan e implementan los módulos e interfaces DBMS como un paquete de software. Un DBMS es un sistema de software muy complejo que consta de muchos componentes o módulos, incluidos los módulos para implementar el catálogo, el procesamiento del lenguaje de consulta, el procesamiento de la interfaz, el acceso y almacenamiento en búfer de datos, el control de la concurrencia y el manejo de la recuperación y seguridad de los datos. El DBMS debe interactuar con otro software del sistema, como el sistema operativo y los compiladores para varios lenguajes de programación.

    ● Los desarrolladores de herramientas diseñan e implementan herramientas: los paquetes de software que facilitan el modelado y el diseño de bases de datos, el diseño del sistema de bases de datos y la mejora del rendimiento. Las herramientas son paquetes opcionales que a menudo se compran por separado. Incluyen paquetes para el diseño de bases de datos, monitoreo del desempeño, lenguaje natural o interfaces gráficas, creación de prototipos, simulación y generación de datos de prueba. En muchos casos, los proveedores de software independientes desarrollan y comercializan estas herramientas.

    ● Los operadores y el personal de mantenimiento (personal de administración del sistema) son responsables del funcionamiento real y el mantenimiento del entorno de hardware y software para el sistema de base de datos.

Ventajas de usar el enfoque DBMS:
=================================

Control de la redundancia:
--------------------------

- Esta redundancia al almacenar los mismos datos varias veces conduce a varios problemas. Primero, existe la necesidad de realizar una única actualización lógica, como ingresar datos sobre un nuevo estudiante, varias veces: una para cada archivos donde se registran los datos del estudiante. Esto conduce a la duplicación de esfuerzos. En segundo lugar, es espacio de almacenamiento se desperdicia cuando los mismos datos se almacenan repetidamente. En tercer lugar, los archivos que representan los mismos datos pueden volverse inconsistentes. 

- Idealmente, deberíamos tener un diseño de bases de datos que almacene cada elemento de datos lógicos, como el nombre de un estudiante o la fecha de nacimiento, en un solo lugar de la base de datos. Esto se conoce como **normalización de datos** y garantiza la coherencia y ahorra espacio de almacenamiento.

- Sin embargo en la práctica, a veces es necesario utilizar redundancia controlada para mejorar el rendimiento de las consultas. Al colocar todos los datos juntos, no tenemos que buscar varios archivos para recopilar datos. Esto se le conoce como **desnormalización**.

Restringir el acceso no autorizado:
-----------------------------------

- Cuando varios usuarios comparten una gran base de datos, es probable que la mayoría de los usuarios no estén autorizados a acceder a toda la información de la base de datos. Por lo tanto, el tipo de operación de acceso tambien debe controlarse.

- Un DBMS debe proporcionar un subsistema de seguridad y autorización, que el DBA utiliza para crear cuentas nuevas y especificar restricciones de cuentas. Entonces, el DBMS deberia hacer cumplir estas restricciones automáticamente.

Proporcionar almacenamiento persistente para objetos de programa:
-----------------------------------------------------------------

- Las bases de datos se pueden utilizar para proporcionar almacenamiento persistente para objetos de programa y estructuras de datos.

- El almacenamiento persistente de objetos de programa y estructuras de datos es una función importante de los sistemas de bases de datos. Los sistemas de bases de datos tradicionales a menudo sufrían el llamado problema de desajuste de impedancia, ya que las estructuras de datos del lenguaje de programación. Los sistemas de bases de datos orientas a objetos suelen ofrecer compatibilidad de estrucutra de datos con uno o más lenguajes de programación orientas a objetos.

Proporcionar estructuras de almacenamiento y técnicas de búsqueda para un procesamiento de consultas eficiente:
---------------------------------------------------------------------------------------------------------------

- Los sistemas de bases de datos deben proporcionar capacidades para ejecutar consultas y actualizaciones de manera eficiente. Debido a que la base de datos generalmente se almacena en disco, el DBMS debe proporcionar estructuras de datos especializadas y técnicas de búsqueda para acelerar la búsqueda en disco de los registros deseados. Los archivos auxiliares llamados índices se utilizan a menudo para este propósito. Los índices se basan normalmente en estructuras de datos de árbol o estructuras de datos hash que se modifican adecuadamente para la búsqueda en disco. Para procesar los registros de la base de datos necesarios para una consulta en particular, esos registros deben copiarse del disco a la memoria principal. Por lo tanto, el DBMS a menudo tiene un módulo de almacenamiento en búfer o caché que mantiene partes de la base de datos en búferes de memoria principal. En general, el sistema operativo es responsable del almacenamiento en búfer de disco a memoria. Sin embargo debido a que el almacenamiento en búfer de datos es crucial para el rendimiento del DBMS, la mayoría de los DBMS realizan su propio almacenamiento en búfer de datos.

- El módulo de procesamiento y optimización de consultas del DBMS es responsable de elegir un plan de ejecución de consultas eficiente para cada consulta en función de las estructuras de almacenamiento existentes.

Proporcionar respaldo y recuperación:
-------------------------------------

- Un DBMS debe proporcionar instalaciones para recuperarse de fallas de hardware o software. El subsistema de respaldo y recuperación del DBMS es responsable de la recuperación.

Proporcionar múltiples interfaces de usuario:
---------------------------------------------

- Debido a que muchos tipos de usuarios con distintos niveles de conocimiento técnicos utilizan una base de datos, un DBMS debe proporcionar una variedad de interfaces de usuario. Estos incluyen aplicaciones para móviles, lenguajes de consulta para usuarios ocasionales, interfaces de lenguaje de programación para programadores de aplicaciones, formularios y códigos de comando para usuarios paramétricos e interfaces controladas por menús e interfaces de lenguaje natural para usuarios independientes.

Representar relaciones complejas entre datos:
---------------------------------------------

- Una base de datos puede incluir numerosas variedades de datos que están interrelacionados de muchas formas.

Hacer cumplir las restricciones de integridad:
----------------------------------------------

- La mayoria de aplicaciones de bases de datos tienen ciertas restricciones de integridad que deben cumplirse para los datos. Un DBMS debe proporcionar capacidades para definir y hacer cumplir estas restricciones. El tipo más simple de restricción de integridad implica especificar un tipo de dato para cada elemento de datos.

- Un tipo de restricción más complejo que suele ocurrir con frecuencia implica especificar que un registro de archivo debe estar relacionado con registros en otros archivos. Por ejemplo, podemos especificar que cada registro de sección debe estar relacionado con un registro de curso. Esto se conoce como **restricción de integridad referencial**.

- Otro tipo de restricción especifica la unicidad de los valores de los elementos de datos, como que cada registro de curso debe tener un valor único. Esto se conoce como **restricción de clave o unicidad**.

Permitir inferencias y acciones mediante reglas y activadores:
--------------------------------------------------------------

- Algunos sistemas de base de datos proporcionan capacidades para definir reglas de deducción para inferir nueva información de los hechos almacenados en la base de datos. Estos sistemas se denominan sistemas de base de datos deductivos.

Implicaciones adicionales del uso del enfoque de base de datos:
---------------------------------------------------------------

    ● Potencial para hacer cumplir los estándares: El enfoque de la base de datos le permite al DBA definir y hacer cumplir los estándares entre los usuarios de la base de datos en una organización grande. Esto facilita la comunicación y la cooperación entre varios departamentos, proyectos y usuarios dentro de la organización. Se pueden definir estándares para nombres y formatos de elementos de datos, formatos de visualización, estructuras de informes, terminología, etc. El DBA puede hacer cumplir los estándares en un entorno de base de datos centralizada más fácilmente que en un entorno donde cada grupo de usuarios tiene el control de sus propios archivos de datos y software. 
    
    ● Reducción del tiempo de desarrollo de aplicaciones: Una característica de venta principal del enfoque de la base de datos es que desarrollar una nueva aplicación, como la recuperación de ciertos datos de la base de datos para imprimir un nuevo informe, lleva muy poco tiempo. Diseñar e implementar una gran base de datos multiusuario desde cero puede llevar más tiempo que escribir una única aplicación de archivo especializada. Sin embargo, una vez que una base de datos está en funcionamiento, generalmente se requiere mucho menos tiempo para crear nuevas aplicaciones utilizando las instalaciones de DBMS. Se estima que el tiempo de desarrollo con un DBMS es de un sexto a un cuarto del de un sistema de archivos.

    ● Flexibilidad: Puede ser necesario cambiar la estructura de una base de datos a medida que cambian los requisitos. Por ejemplo, puede surgir un nuevo grupo de usuarios que necesite información que no se encuentra actualmente en la base de datos. En respuesta, puede ser necesario agregar un archivo a la base de datos o extender los elementos de datos en un archivo existente. Los DBMS modernos permiten ciertos tipos de cambios evolutivos en la estructura de la base de datos sin afectar los datos almacenados y los programas de aplicación existentes. Disponibilidad de información actualizada.

    ● Un DBMS pone la base de datos a disposición de todos los usuarios: Tan pronto como se aplica la actualización de un usuario a la base de datos, todos los demás usuarios pueden ver esta actualización inmediatamente. Esta disponibilidad de información actualizada es esencial para muchas aplicaciones de procesamiento de transacciones, como los sistemas de reserva o las bases de datos bancarias, y es posible gracias a los subsistemas de control de concurrencia y recuperación de un DBMS. 
    
    ● Economías de escala: El enfoque DBMS permite la consolidación de datos y aplicaciones, reduciendo así la cantidad de superposición inútil entre las actividades del personal de procesamiento de datos en diferentes proyectos o departamentos, así como las redundancias entre aplicaciones. Esto permite que toda la organización invierta en procesadores, dispositivos de almacenamiento o equipos de red más potentes, en lugar de que cada departamento compre su propio equipo (de menor rendimiento). Esto reduce los costos generales de operación y administración.

BREVE HISTORIA DE LAS APLICACIONES DE BASES DE DATOS:
=====================================================

Ampliación de las capacidades de la base de datos para nuevas aplicaciones:
---------------------------------------------------------------------------

Los sistemas de bases de datos ahora ofrecen extensiones para soportar mejor los requisitos especializados para algunas de estas aplicaciones. Los siguientes son algunos ejemplos de estas aplicaciones:

    ● Aplicaciones científicas que almacenan grandes cantidades de datos resultantes de experimentos científicos en áreas como la física de altas energías, el mapeo del genoma humano y el descubrimiento de estructuras de proteínas.
    
    ● Almacenamiento y recuperación de imágenes, incluidas noticias escaneadas o fotografías personales, imágenes fotográficas de satélite e imágenes de procedimientos médicos como radiografías y pruebas de resonancia magnética (MRI)
    
    ● Almacenamiento y recuperación de videos, como películas y videoclips de noticias o cámaras digitales personales
    
    ● Aplicaciones de minería de datos que analizan grandes cantidades de datos para buscar la ocurrencia de patrones o relaciones específicos y para identificar patrones inusuales en áreas como la detección de fraudes con tarjetas de crédito.
    
    ● Aplicaciones espaciales que almacenan y analizan ubicaciones espaciales de datos, como información meteorológica, mapas utilizados en sistemas de información geográfica y sistemas de navegación de automóviles.
    
    ● Aplicaciones de series de tiempo que almacenan información como datos económicos en puntos regulares en el tiempo, como ventas diarias y cifras mensuales del producto nacional bruto.

Rápidamente se hizo evidente que los sistemas relacionales básicos no eran muy adecuados para muchas de estas aplicaciones, generalmente por una o más de las siguientes razones:

    ● Se necesitaban estructuras de datos más complejas para modelar la aplicación que la simple representación relacional.

    ● Se necesitaban nuevos tipos de datos además de los tipos básicos de cadenas de caracteres y numéricos.

    ● Fueron necesarias nuevas operaciones y construcciones de lenguaje de consulta para manipular los nuevos tipos de datos.

    ● Se necesitaban nuevas estructuras de almacenamiento e indexación para una búsqueda eficiente de los nuevos tipos de datos.

CUÁNDO NO USAR UN DBMS:
=======================

A pesar de las ventajas de usar un DBMS, hay algunas situaciones en las que un DBMS puede implicar costos generales innecesarios que no se incurrirían en el procesamiento de archivos tradicional. Los costos generales de usar un DBMS se deben a lo siguiente:
    ● Alta inversión inicial en hardware, software y formación.

    ● La generalidad que proporciona un DBMS para definir y procesar datos.
    
    ● Gastos generales para proporcionar funciones de seguridad, control de simultaneidad, recuperación e integridad

Por lo tanto, puede ser más conveniente desarrollar aplicaciones de bases de datos personalizadas en las siguientes circunstancias:

    ● Aplicaciones de bases de datos simples y bien definidas que no se espera que cambien en absoluto