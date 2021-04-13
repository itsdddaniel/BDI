# -*- coding: utf-8 -*-
import mysql.connector 

# $ sudo -H pip3 install tabulate
from tabulate import tabulate

import re

"""
@author Daniel Arteaga
@version 1.0
@date 24/03/2021
"""

class MySQLEngine: 

    def __init__(self,config):
        self.config = config
        self.mydb = mysql.connector.connect(
            host=self.config.host,
            port=self.config.port,
            user=self.config.user,
            password=self.config.password,
            database=self.config.database
        )
        self.link = self.mydb.cursor()

    def ddsDms(self,query):

        result = self.link.execute(query)
        print("Se ha ejecutado la transacción '{}', con resultado {}.".format(query,result))
        return result

    def select(self,query):

        self.link.execute(query)
        return self.link.fetchall()

    def selectPage(self,query,page=0,count=10):

        #Limpiar el query y remover el LIMIT que exista.
        query = re.sub(r"\s+([Ll][Ii][Mm][Ii][Tt]\s+\d+(,\d+)?)?\s*;?\s*","",query)

        #Crear nuestro propio componente de LIMIT.
        query = "{} LIMIT {},{};".format(query,page,count)

        self.link.execute(query)
        return self.link.fetchall()

    def printValues(self,result):

        for id,device,temperature,date in result:
            print("Registro: {},{},{},{}".format(id,device,temperature,date))

    def printAsTable(self,result,headers=[]):
        
        if not headers:
            print(tabulate(result))
        else:
            print(tabulate(result,headers=headers))

    def saveAsTable(self,fileName,result,headers=[]):

        content = ""

        if not headers:
            content = tabulate(result)
        else:
            content = tabulate(result,headers=headers)

        f = open(fileName,"w")
        f.write("\n\n{}\n\n".format(content))
        f.close()

        return True
