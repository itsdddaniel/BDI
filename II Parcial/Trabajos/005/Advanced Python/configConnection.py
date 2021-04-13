"""
    @author Daniel Arteaga
    @version 1.0
    @date 24/03/2021

"""

class ConfigConnection:

    def __init__ (self,host,port,user,password,database):
        self.host = host
        self.port = port
        self.user = user
        self.password = password
        self.database = database
