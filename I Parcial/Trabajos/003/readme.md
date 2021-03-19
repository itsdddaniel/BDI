@author Daniel Arteaga
@version 1.0
@date 2021/01/27

Termux
=======

- Descargar la aplicación e instalarla.

        $ pkg install mariadb openssh nano neofetch
        $ sshd
        $ mysql_safe -- datadir= ..........

- En el dispositivo remoto

        $ ssh -p 8022 termux@[IP ADDRESS]

- Dentro de MySQL, para crear un usuario se debe usar una sentencia de SQL que defina el nombre del usuario, la contraseña y los privilegios que posee dicho usuario.

        >>> CREATE USER 'admin'@'%' IDENTIFIED BY 'admin';
        >>> GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%';
        >>> FLUSH PRIVILEGES;

- En el dispositivo remoto

        $ apt search mysql-server
        $ apt install default-mysql-server
        $ mysql --help
        $ mysql --host=[IP ADDRESS] -u admin -p
