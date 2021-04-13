## Install Jupyter Notebook

    $ pip install notebook
    $ jupyter notebook

@author Daniel Arteaga
@version 1.0
@date 06/04/2021

# Generar datos de inserción para MySQL/MariaDB

## Objectivo

- Generar datos de inserción para la base de datos, que permitan automatizar el completado del universo de datos de una tabla, mediante comandos parametrizados.
- Hacer uso de **Jupyter Notebook** para documentar el desarrollo, mostrar comentarios, ejecutar el código e incluir la respuesta de la ejecución.
- Hacer uso de Python para crear las Clases de Métodos necesarios para el cumplimiento del objetivo.

# Python

    import random, re, os
    from datetime import datetime, timedelta
    print("dfasf")

## Ejercicio

- Usando **Jupyter Notebook**, cree un programa de Python que:
    - Cree un archivo SQL con código DMS, para la inserción de datos sobre la tabla de base de datos **Measure**, que pertenecen a la base de datos **Example**, usada en clases de esta asignatura.
    - Crear 10 años de registros para la base de datos.
    - Verificar el tamaño del archivo creado.

## Aclaración

El estudiante debe reconocer que este ejercicio, a diferencia de ejercicios anteriores de Python, solicita la creación de archivos SQL para la ejecución de los mismos fuera de Python. En ejercicios anteriores se le solicitó al estudiante crear programas Python usando POO para ejecutar instrucciones SQL directamente desde dicho programa.

**Se documenta la prueba matemática para la cantidad de registros de inserción que debe poseer el archivo final.**

# Python

    10*365*24*60

    Se crea mediante POO, el componente de Python que generará el archivo
        class DataGenerator:
            def __init__(self, fileName="DMS.sql"):
                self.fileName = fileName
                print("Se ha creado una instancia de la clase DataGenerator.")

            def generate(self,count):
                fileName = self.fileName
                f = open(fileName,"w")
                f.write()
                f.close()

                f = open(fileName,"a")
                for i in range(count):
                    f.write
                    (
                        """
                        INSERT INTO Measure(deviceId, temperature, date) VALUES
                        ({},{},{})
                        ;
                        """.format
                        (
                            int(random.random()*(4-1)+1),
                            round(random.random()*(39-36)+36,2),
                            datetime.now() + timedelta(seconds=60*i)

                        )
                    )
                f.close()
                print("Se ha finalizado correctamente la creación del archivo {}.".format(fileName))

            def check(self):
                fileName = self.fileName
                fileSize = os.path.getsize(fileName)
                print("El archivo {} tiene un tamaño físico {} MB.".format(fileName,round(fileSize/1024/1024,2)))

    Se genera una instancia del programa para ejecutar el método *generate*, para la creación del archivos SQL
        dg = DataGenerator()

        dg.generate(10*365*24*60)

    **Se genera una instancia del programa para ejecutar el método de verificación del tamaño del archivo creado.

        dg.check()
