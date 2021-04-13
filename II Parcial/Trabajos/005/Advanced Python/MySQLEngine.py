# -*- coding: utf-8 -*-
import mysql.connector 

# $ sudo -H pip3 install tabulate
from tabulate import tabulate

import re

"""
    @description
    @author Daniel Arteaga
    @version 1.0
    @date 24/03/2021
"""

class MySQLEngine: 

    def __init__(self,config):
        self.config = config
        mydb = mysql.connector.connect
        (
            host=config.host,
            port=config.port,
            user=config.user,
            password=config.password,
            database=config.database
        )

        self.link = self.mydb.cursor()

    def select(self,query):

        self.link.execute(query)
        return self.link.fetchall()

    def selectPage(self,query,page=0,count=10):

        #Limpiar el query y remover el LIMIT que exista.
        query = re.sub(r"\s+[Ll][Ii][Mm][Ii][Tt]\s+\d+(,\d+)?\s*;?\s*","",query)

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
