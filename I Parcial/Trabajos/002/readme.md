@author Daniel Arteaga
@version 1.0
@date 2021/01/26

Entorno de trabajo
==================

- Visualización del entorno de Linux.
- Uso de la terminal (consola, shell, bash).
- Comando: 
    - cd
    - mkdir
    - ls
    - touch
- Okular, Thunar, Code, Nano.

Instalación del SGBD
====================

- Se descarga e instala **Termux** en Android.
- Dentro de Termux:
    - Se instalan los paquetes para acceso remoto, editor de texto de consola, para visualización de los datos del sistema.

        $ pkg install mariadb openssh nano neofetch

    - Se inicia el MySQL con el siguiente comando:

        $ mysql

    - sshd (levantar el servidor).
    - pkg search mysql (Termux).
    - pkg install mariadb (Termux).
    - CTRL + Z (exit).
    
    - Se inicia el servicio de MySQL:
    - apt search mysql-server 

