@author Daniel Arteaga
@version 1.0
@date 2021/28/01

Funcionalidades Generales usando SQL
====================================

Ejemplo de uso de SQL Select
----------------------------

Veamos algunas de las funcionalidades que se pueden aplicar a SQL.

        .. Generación de flotantes aleatorios
        SELECT rand();

        -- Generación de enteros aleatorios
        SELECT CAST(rand()*(100-0)+0 AS INT) AS "Número Aleatorio Entero";

        -- Generación de fechas
        SELECT now();

        -- Extracción de datos de fechas
        SELECT
            YERR(NOW()) AS "Año",
            MONTH(NOW()) AS "Mes",
            DAY(NOW()) AS "Día",
            HOUR(NOW()) AS "Hora",
            MINUTE(NOW()) AS "Minutos",
            SECOND(NOW()) AS "Segundos"
        ;

        -- Concatenar
        SELECT
            CONCAT("Hola"," ","Mundo") AS "Cadena de Ejemplo"
        ;

        -- Generar una sentencia de SQL, usando SQL
        SELECT
            CONCAT("SELECT","Campo1","Campo2","Campo3","FROM DATABASE.TABLE")
        ;

Ejercicio
---------

Dentro de una oficina se desea registrar una lista de TODO'S la cual puede ser utilizada por multiples usuarios a la vez. Un usuario puede poseer una o múltiples listas. Una vez que el sistema esté en marcha, la alta gerencia desea saber el porcentaje de tareas pendientes y completadas de cada departamento, empleado t dela gerencia en total. Haga uso de ER para crear el modelado usando los SGBD indicados en clase.

- Database
    - Entidades: 
        - Usuario
            - Nombre
            - Departamento
                - Nombre
                - Gerencia
                    - Nombre
            - Lista
                - Tareas:
                    - Nombre
                    - Descripción
                    - Estado: pendiente, completado.


                    class Lista:
                        def __init__(self):
                            self.first = None

                    class Tarea:
                        def __init__(self,nombre,descripción):
                            self.nombre = nombre
                            self.estado = None
                            self.descripción = descripción

                    class Usuario:
                        def __init__(self):
                            self.tareas = Lista()