USE SQLTesting;

-- Mostrar el último mensaje recibido.

SELECT
    MQ.id AS id,
    MQ.bit_message AS binaryMessage,
    MQ.tim_reception as receptionTime
FROM
    MessageQueue AS MQ
ORDER BY 
    MQ.id DESC
LIMIT
    1
;

-- Mostrar el último mensaje recibido, que aún no ha sido leído.

SELECT
    MQ.id AS id,
    MQ.bit_message AS binaryMessage,
    MQ.tim_reception as receptionTime
WHERE
    MQ.bit_status = 0
FROM
    MessageQueue AS MQ
ORDER BY 
    MQ.id ASC
LIMIT
    1
;