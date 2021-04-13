@author Daniel Arteaga
@version 1.0
@date 24/03/2021

Python MySQL Connector
======================

Instalación
------------

En la consola de Linux, ejectuar:

    $ sudo apt install python3 python3-pip
    $ sudo -h pip3 install mysql-connector-python

Ejecución
----------

    #-*- coding:utf-8 -*-
    import mysql.connector 
    """
        @description
        @author Daniel Arteaga
        @version 1.0
        @date 24/03/2021

    """

    #Genera una conexión

    mydb = mysql.connector.connect
    (
        host="localhost",
        port="3306",
        user="admin",
        password="admin",
        database="Example"
    )

    #Imprime el objeto de conexión
    print("Versión texto del objeto de conexión a MySQL es: {}".format(mydb))

    #Se crea un cursor de Python como un enlace para crear transacciones de SQL

    link = mydb.cursos()

    #Se crea una transacción de selección de atos.

    link.execute("SELECT id,device,temperature,date FROM Measure LIMIT 10;")
    result = linkfetchall()

    #Se recorren e imprimen los resultados
    for id,device,temperature,date in result:
        print("Registro: {},{},{},{}".format(id,device,temperature,date))

**Nota**: El estudiante deberá experimentar con el resto de transacciones de SQL estudiadas en clase, las cuales hacen uso del mismo principio antes mostrado.