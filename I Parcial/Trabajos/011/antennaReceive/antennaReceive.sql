USE SQLTesting;

SELECT

    (
        SELECT
            MQ.id AS id
        FROM
            MessageQueue AS MQ
        ORDER BY 
            MQ.id DESC
        LIMIT
            1
    ) AS "ID de último mensaje recibido",

    ( 
        SELECT
            MQ.tim_reception as receptionTime
        FROM
            MessageQueue AS MQ
        ORDER BY 
            MQ.id DESC
        LIMIT
            1
    ) AS "Fecha de último mensaje recibido",

    (
        SELECT
            MQ.id AS id
        WHERE
            MQ.bit_status = 0
        FROM
            MessageQueue AS MQ
        ORDER BY 
            MQ.id ASC
        LIMIT
            1
    ) AS "ID de último mensaje no leido",

    (
        SELECT
            MQ.tim_reception as receptionTime
        WHERE
            MQ.bit_status = 0
        FROM
            MessageQueue AS MQ
        ORDER BY 
            MQ.id ASC
        LIMIT
            1
    ) AS "Fecha del último mensaje recibido"
