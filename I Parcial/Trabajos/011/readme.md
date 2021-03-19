@author Daniel Arteaga
@version 1.0
@date 25/02/2021

Ejercicio
==========

Mediante el uso de los conceptos de BDI Unidad I, se desea implementar los conceptos DDS Y DMS que permitan simular una cola de mensajes de la **X-Band Low-Gain Antenna** del Mars 2020 rover **Perserverance**, captando el mensaje en bits, la fecha de recepción, estado del mensaje (leído o no leído), fecha de lectura.

Además:

- Cree un archivo sendMessage.sql que permita simular la llegada de mensajes a la tabla de mensajes.
- Cree un archivo readMessage.sql que permita leer el último mensaje recibido.
- Cree un archivo antennaReceive.sql que retorne una tupla con los siguientes componentes.

    - El ID del último mensaje recibido.
    - La fecha del úlitmo mensaje recibido.
    - El ID del último mensaje de no leído.
    - La fecha del último mensaje no leído.