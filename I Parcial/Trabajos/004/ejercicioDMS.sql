USE EmpresaBD;

-- En caso de que las tablas posean datos que no deben existir, se elimina la información actual de las tablas.

TRUNCATE Gerencia;
TRUNCATE Departamento;
TRUNCATE Usuario;
TRUNCATE Lista;
TRUNCATE Tarea;

-- Se agregan datos a las tablas.

INSERT INTO Gerencia(nombre) VALUES
    ("Tecnologías de Información"),
    ("Ventas");

INSERT INTO Departamento(id_gerencia,nombre) VALUES
    (1,"Desarrollo Web"),
    (1,"Desarrollo Móvil"),
    (2,"Canales Digitales");

INSERT INTO Usuario(id_departamento,nombre) VALUES
    (1,"Marco López"),
    (2,"Alejandro Suazo"),
    (3,"Alejandra Flores");

INSERT INTO Lista(id_usuario,nombre) VALUES
    (2,"Pendientes de Bases de Datos I"),
    (2,"Videojuegos"),
    (1,"Pendientes de la casa");

INSERT INTO Tarea(id_lista,descripcion) VALUES
    (1,"Leer el Capítulo I"),
    (1,"Leer el Manual de MySQL"),
    (1,"Aprender de Entidad-Relación"),

    (2,"Metal Gear Solid Collection"),

    (3,"Limpieza de dormitorio")
    (3, "Limpieza de patio");

-- Contar las tareas por empleado.
    SELECT 
        Usuario.id AS "ID Empleado",
        Usuario.nombre AS "Nombre del Empleado",
        Departamento.nombre AS "Departamento",
        Tarea.descripcion AS "Tarea",
        Lista.nombre AS "Nombre de Lista",
        COUNT(*) AS "Cantidad de Tareas"
    FROM
        Tarea
    JOIN
        Lista ON Tarea.id_lista = Lista.id
    JOIN 
        Usuario ON Lista.id_usuario = Usuario.id 
    JOIN
        Departamento ON Usuario.id_departamento = Departamento.id
    GROUP BY
        Usuario.id
    ;

-- Pruebas de SQL

    SELECT
        Lista.id_usuario AS "Identificador del Usuario",
        Tarea.estado AS "Estado de la tarea",
        COUNT(*) AS "Cantidad de Tareas",
        (   
            SELECT
                COUNT(*)
            FROM
                Tarea
            JOIN
                Lista ON Tarea.id_lista = Lista.id
            WHERE
                Lista.id_usuario = Usuario.id
        ) AS "Total de Tareas",
        CONCAT(
            COUNT(*)/
            (
                SELECT
                    COUNT(*)
                FROM
                    Tarea
                JOIN
                    Lista ON Tarea.id_lista = Lista.id
                WHERE
                    Lista.id_usuario = Usuario.id

            )*100,
            " %" 
        ) AS "Porcentaje"

    FROM
        Tarea 
    JOIN
        Lista ON Tarea.id_lista = Lista.id
    JOIN
        Usuario ON Lista.id_usuario = Usuario.id
    GROUP BY
        Lista.id_usuario,
        Tarea.estado
    ;


-- Porcentaje de completación de tareas para cada usuario.

    SELECT
        Usuario.nombre AS "Nombre del Usuario",
        Tarea.estado AS "Estado de la tarea",
        CONCAT(
            COUNT(*)/
            (
                SELECT
                    COUNT(*)
                FROM
                    Tarea
                JOIN
                    Lista ON Tarea.id_lista = Lista.id
                WHERE
                    Lista.id_usuario = Usuario.id

            )*100,
            " %" 
        ) AS "Porcentaje"

    FROM
        Tarea 
    JOIN
        Lista ON Tarea.id_lista = Lista.id
    JOIN
        Usuario ON Lista.id_usuario = Usuario.id
    GROUP BY
        Lista.id_usuario,
        Tarea.estado
    ;

-- Porcentaje de completación de tareas para cada departamento.

    SELECT
        Departamento.nombre AS "Nombre del Departamento",
        Tarea.estado AS "Estado de la tarea",
        CONCAT(
            COUNT(*)/
            (
                SELECT
                    COUNT(*)
                FROM
                    Tarea
                JOIN
                    Lista ON Tarea.id_lista = Lista.id
                JOIN
                    Usuario ON Lista.id_usuario = Usuario.id
                WHERE
                    Usuario.id_departamento = Departamento.id

            )*100,
            " %" 
        ) AS "Porcentaje"

    FROM
        Tarea 
    JOIN
        Lista ON Tarea.id_lista = Lista.id
    JOIN
        Usuario ON Lista.id_usuario = Usuario.id
    JOIN
        Departamento ON Usuario.id_departamento = Departamento.id
    GROUP BY
        Departamento.id,
        Tarea.estado
    ;

-- Porcentaje de completación de tareas por Gerencia.

    SELECT
        Gerencia.nombre AS "Nombre de la Gerencia",
        Tarea.estado AS "Estado de la tarea",
        CONCAT(
            COUNT(*)/
            (
                SELECT
                    COUNT(*)
                FROM
                    Tarea
                JOIN
                    Lista ON Tarea.id_lista = Lista.id
                JOIN
                    Usuario ON Lista.id_usuario = Usuario.id
                JOIN
                    Departamento ON Usuario.id_departamento = Departamento.id
                WHERE
                    Departamento.id_gerencia = Gerencia.id

            )*100,
            " %" 
        ) AS "Porcentaje"

    FROM
        Tarea 
    JOIN
        Lista ON Tarea.id_lista = Lista.id
    JOIN
        Usuario ON Lista.id_usuario = Usuario.id
    JOIN
        Departamento ON Usuario.id_departamento = Departamento.id
    JOIN
        Gerencia ON Departamento.id_gerencia = Gerencia.id
    GROUP BY
        Gerencia.id,
        Tarea.estado
    ;

-- Una vez el sistema esté en marcha, la alta gerencia desea saber el porcentaje de tareas pedientes y completadas sobre el total de tareas de cada departamento, empleado y de la gerencia en total.

/*

    SELECT
        Campos
    FROM 
        Tabla de Origen de Datos
    WHERE   
        Condicionales
    GROUP BY
        Campos
    ORDER BY
        Campos
    ;


-- Se listan todos los elementos de la tabla Usuario que cumplen con el condicional.
    SELECT
        nombre
    FROM
        Usuario
    -- Muestra todos los usuarios.
    WHERE
        --nombre = ""
        id = 1 OR id = 2
        -- id <= 2
    -- Filtra
    ;

-- Lista las tareas por empleado.

    SELECT 
        Tarea.id,
        Tarea.descripcion,
        Usuario.nombre
    FROM
        Tarea
    JOIN
        Lista ON Tarea.id_lista = Lista.id
    JOIN 
        Usuario ON Lista.id_usuario = Usuario.id 
    ;

    SELECT * FROM Tarea;
    SELECT id, estado FROM Tarea;

    UPDATE Tarea SET estado = "Completado" WHERE id = 2 OR id = 5;

    SELECT
        Lista.id_usuario AS "Identificador del Usuario",
        Tarea.estado AS "Estado de la tarea",
        COUNT(*) AS "Cantidad de Tareas",

*/