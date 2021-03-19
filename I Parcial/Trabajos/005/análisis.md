@author Daniel Arteaga
@version 1.0
@date 08/02/2021

Ejercicio
=========

Dentro de una oficina se desea registrar una lista de TODO'S la cual puede ser utilizada por multiples usuarios a la vez. Un usuario puede poseer una o múltiples listas. Una vez que el sistema esté en marcha, la alta gerencia desea saber el porcentaje de tareas pendientes y completadas de cada departamento, empleado t dela gerencia en total. Haga uso de ER para crear el modelado usando los SGBD indicados en clase.

Análisis
========

Se implementan las distintas secciones de documentación que le permitirán plasmar los hallazgos positivos o negativos que tomará en cuenta para resolver la problemática mediante la solución de software.

Lluvia de ideas
---------------

- Lista de "tareas por hacer" que contemple la cardinalidad de **1 usuario que puede poseer múltiples listas de tareas, y múltiples tareas por lista**, siendo este usuario un empleado de la empresa, que pertenece a un único departamento (cardinalidad de 1 departamento posee muchos empleados), y que pertence a una única gerencia (cardinalidad de 1 gerencia posee muchos departamentos).

Definición de tablas
--------------------

- Tarea: 
 - Debe existir un identificador primario único que distigue a cada tarea, tomando en cuenta que una tarea puede ser modificada en el futuro.

 - La tarea pertenece a una lista, por lo que debe existir un identificador de pertenencia hacia dicha lista como una llave foránea.

 - La tarea posee el contenido de la actividad a realizar. Dicha actividad se conocerá como la **descripción** de la tarea.