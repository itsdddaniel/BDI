@author Daniel Arteaga
@version 1.0
@date 23/02/2021
@comments All excersises are done with MariaDB 10.3 in compatibility with MySQL 5.7 using Ubuntu Linux OS, As well all annotations are from the MySQL 5.7 Reference Manual

String Data Type Syntax
========================

The string data types are **CHAR, VARCHAR, BINARY, VARBINARY, BLOB, TEXT, ENUM** and **SET**.

- For definition of character string columns *(CHAR, VARCHAR and TEXT)*, MySQL interprets length specifications in character units. 

- For definition of binary string columns *(BINARY, VARBINARY and BLOB)*, MySQL interprets length speceifications in byte units.

- Columns definitions for character string data types *(CHAR, VARCHAR, TEXT, ENUM, SET and any other synonym) can specify the column character set and collation.

- CHARSET is a synonym for CHARACTER SET.

- Specifying SET binary attribute for a character string data type causes the column to be created as the corresponding binary string data type:

        - CHAR becomes BINARY.
        - VARCHAR becomes VARBINARY.
        - TEXT becomes BLOB.
        - For ENUM and SET data types, this does not occur; they are created as declared-

- The ASCII attribute is shorthand for CHARACTER SET latin1.

- The UNICODE attribute is shorthand for CHARACTER SET ucs2.

*[NATIONAL] CHAR[(M)] [CHARACTER SET charset_name] [COLLATE collation_name]*: A fixed-length string that is always right-padded with spaces to the specified length when stored. M represents the column length in characters. 
    
    - The range of M is 0 to 255. If M is omitted, the length is 1.

*[NATIONAL] VARCHAR(M) [CHARACTER SET charset_name] [COLLATE collation_name]*: A variable-length string.

    - M represents the maximum column length in characters.
    - The range of M is 0 to 65,535.
    - VARCHAR column that uses the utf8 character set can be declared to be a maximum of 21,844 characters.

*BINARY[(M)]*: The BINARY type is similar to the CHAR type, but stores binary byte strings rather than nonbinary character strings.

    - An optional length M represents the column length in bytes.
    - If omitted, M defaults to 1.

*VARBINARY(M)*: The VARBINARY type is similar to VARCHAR type, but stores binary byte strings rather than nonbinary character strings.

    - M represents the maximum column length in bytes.

*TINYBLOB*: A BLOB column with a maximum length of 255([2^8]-1) bytes. 

    - Each TINYBLOB value is stored using a 1-byte length prefix that indicates the number of bytes in the value.

*TINYTEXT [CHARACTER SET charset_name] [COLLATE collation_name]*:: A TEXT column with a maximum length of 255([2^8]-1) characters.

    - Each TINYTEXT value is stored using a 1-byte length prefix that indicates the number of bytes in the value.

*BLOB[(M)]*: A BLOB column with a maximum length of 65,535([2^16]-1) bytes.

    - Each BLOB value is stored using a 2-byte length prefix that indicates the number of bytes in the value.
    - An optional M can be given for this type. MySQL creates the column as the smallest BLOB type large enough to hold values M-bytes long.

*TEXT[(M)] [CHARACTER SET charset_name] [COLLATE collation_name]*: A TEXT column with a maximum length of 65,535([2^16]-1) characters. 

    - Each TEXT value is stored using a 2-byte length prefix that indicates the number of bytes in the value.
    - An optional length M can be given for this type. MySQL creates a the column as the smallest TEXT type large enough to hold values M-characters long.

*MEDIUMBLOB*: A BLOB column with a maximum length of 16,777,215([2^24]-1) bytes. 

    - Each MEDIUMBLOB value is stored using a 3-byte length prefix that indicates the number of bytes in the value.

*MEDIUMTEXT [CHARACTER SET charset_name] [COLLATE collation_name]*: A TEXT column with a maximum length of 16,777,215[2^24]-1) characters.

    - Each MEDIUMTEXT value is stored using a 3-byte length prefix that indicates the number of bytes in the value.

*LONGBLOB*: A BLOB column with a maximum length of 4,294,967,295 or 4GB([2^32]-1) bytes.

    - The effective maximum length of LONGBLOB columns depends on the configured maximum packet size in the client/server protocol and available memory. 
    - Each LONGBLOB value is stored using a 4-byte length prefix that indicates the number of bytes in the value.

*LONGTEXT [CHARACTER SET charset_name] [COLLATE collation_name]*: A TEXT column with a maximum length of 4,294,967,295 or 4GB([2^32]-1) characters.

    - The effective maximum length of LONGTEXT columns also depends on the configured maximum packet size in the client/server protocol and available memory. 
    - Each LONGTEXT value is stored using a 4-byte length prefix that indicates the number of bytes in the value.

*ENUM('value1','value2',...) [CHARACTER SET charset_name] [COLLATE collation_name]*: An enumeration. A string object that can hae only one value, chosen from the list of values 'value1','value2',...,NULL

        - ENUM values are represented internally as integers.
        - An ENUM column can have a maximum of 65,535 distinct elements.
        - A table can have no more than 255 unique element list definitions amont its ENUM and SET columns considered as a group.
