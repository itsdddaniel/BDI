USE SQLTesting;

-- Actualizar el resultado del último mensaje no leído.
UPDATE MessageQueue AS MQ SET MQ.bit_status = 1 WHERE MQ.id =
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
);