# -*- coding: utf-8 -*-

from Core.ConfigConnection import ConfigConnection
from Core.MySQLEngine import MySQLEngine

#Instancia de la configuración
config = ConfigConnection("localhost","3306","admin","admin","Example")

#Instancia de conexión con la base de datos
engine = MySQLEngine(config)

#Se realiza una consulta SQL
#result = engine.select("SELECT id,device,temperature,date FROM Measure LIMIT 10;")

#result = engine.selectPage("SELECT id,device,temperature,date FROM Measure limit 5,20;",5,50)

result = engine.selectPage
("""

SELECT 
    "First Device Measure" AS "Vista",
    COUNT(*) AS "Cantidad"
FROM
    vw_firstDeviceMeasureRecent
;

""",0)

result = engine.selectPage
("""

SELECT 
    "Mes","Cantidad"
FROM
    vw_countMonth2021
;

""",0)

#Se imprimen los resultados
engine.printValues(result,["id","device","temperature","date"])

#Guarda los valores en un archivo
engine.saveAsTable("textValues.txt",result,["id","device","temperature","date"])