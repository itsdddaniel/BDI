DROP DATABASE IF EXISTS SQLTesting;
CREATE DATABASE SQLTesting CHARACTER SET utf8;
USE SQLTesting;

CREATE TABLE MessageQueue
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    bit_message BIT(30) NOT NULL COMMENT "Mensaje de 10bits (antena de 34m) y 30bits (antena de 70m).",
    tim_reception TIMESTAMP(6) NOT NULL DEFAULT NOW() COMMENT "Marca de tiempo de recepción del mensaje.",
    bit_status BIT NOT NULL DEFAULT 0 COMMENT "Estado de lectura de un mensaje recibido.",
    tim_read TIMESTAMP(6) ON UPDATE NOW() COMMENT "Marca de tiempo de lectura del mensaje."

) COMMENT "Recepción de mensajes X-Band Low-Gain";