@author Daniel Arteaga
@version 1.0
@date 24/02/2021
@comments All excersises are done with MariaDB 10.3 in compatibility with MySQL 5.7 using Ubuntu Linux OS, As well all annotations are from the MySQL 5.7 Reference Manual

Entering Queries
=================

- The following table shows each of the prompts you may see and summarizes what they mean about the state that **mysql/mariadb* is in:

    ![image](https://drive.google.com/uc?id=13EnvpuGcMC8Jj00TiKXhKO2YmNxIX_FR)

Loading Data into a Table
==========================

- You could create a text file xxxx.txt containing one record per line, with values seperated by tabs, and given in the order in which the columns were listed in the **CREATE TABLE** statement. For missing values, you can still user **NULL** values. To represent these in your text file, use **\N**.

        Whistler    Gwen    bird    \N  1997-12-09  \N

- To load the text file into the table, use the following statement:
     
        MariaDB([test]) > LOAD DATA LOCAL INFILE '/path/xxxx.txt' INTO TABLE xxxx

Retrieving Information form a Table
====================================

- Fix only the erroneous records with and **UPDATE** statement:

        MariaDB([test]) > UPDATE tableToUpdate SET valueToUpdate = 'value' WHERE nameOfValueToUpdate = 'value'

Using MariaDB/MySQL in Batch Mode
==================================

- To do this, put the statements you want to run in a file, then tell mariadb to read its input form the file.

        $ sudo mariadb < 'batch-file'

- You can catch the output in a file for futher processing:

        $ sudo mariadb < 'batch-file' < mariadb.out

- If you want to get the interactive output format in batch mode, use **mariadb -t**. To echo to the output the statements that are executed, use **mariadb -v**.

- You can also use scripts from mariadb prompt by using the source command or \. command.

        MariaDB([]) > SOURCE filename;
        MariaDB([]) > \. filename;
