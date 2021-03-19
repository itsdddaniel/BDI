@author Daniel Arteaga
@version 1.0
@date 22/02/2021
@comments All excersises are done with MariaDB 10.3 in compatibility with MySQL 5.7 using Ubuntu Linux OS, As well all annotations are from the MySQL 5.7 Reference Manual

Important Definitions
======================

- **Single Precision**: Single Precision is a format proposed by IEEE for representation of floating-point number. It occupies 32 bits in computer memory.

- **Double Precision**: Double Precision is also a format given by IEEE for representation of floating-point number. It occupies 64 bits in computer memory.

Data Types
===========

Numeric Data Types
-------------------

- Exact numeric data types: **INTEGER, SMALLINT, DECIMAL** and **NUMERIC** and approximate data types: **FLOAT, REAL** and **DOUBLE PRECISION**. 

- Keyword **INT** is a synonym for INTEGER and the keywords **DEC** and **FIXED** are synonyms for **DECIMALS**.

- MySQL treats **DOUBLE** as a synonym for **DOUBLE PRECISION** and also **REAL** is treated as **DOUBLE PRECISION**.

- **BIT** data types stores bit values.

Numeric Data Types Syntax
--------------------------

- For floating-point and fixed-point data types, M is the total number of digits that can be stored.

- If **ZEROFILL** is specified for a numeric column, MySQL automatically adds the **UNSIGNED** attribute to the column.

- Numeric data types that permit **UNSIGNED** attribute also permit **SIGNED**. However, these data types are signed by default, so **SIGNED** attribute has no effect.

- *BIT[(M)]*: A bit-value type. M indicates the number of bits per value, from 1 to 64. The default is 1 if M is omitted.

- *TINYINT[(M)] [UNSIGNED] [ZEROFILL]*: A very small integer. The signed range is -128 to 127. The unsigned range is 0 to 255.

- *BOOL, BOOLEAN*: A value of zero is considered false. Nonzero values are considered true.

            - SELECT IF(0,'true','false'); -> false
            - SELECT IF(1,'true','false'); -> true
            - SELECT IF(2,'true','false'); -> true

- *SMALLINT[(M)] [UNSIGNED] [ZEROFILL]*: A small integer. The signed range is -32,768 to 32,767. The unsigned range is 0 to 65535.

- *MEDIUMINT[(M)] [UNSIGNED] [ZEROFILL]*: A medium-sized integer. The signed range is -8,388,608 to 8,388,607. The unsigned range is 0 to 4294967295.

- *INT[(M)] [UNSIGNED] [ZEROFILL]*: A normal-size integer. The signed range is -2147483648 to 2147483647. The unsigned range is 0 to 4294967295.

- *INTEGER[(M)] [UNSIGNED] [ZEROFILL]*: This type is a synonym for INT.

- *BIGINT[(M)] [UNSIGNED] [ZEROFILL]*: A large integer. The signed range is -9223372036854775808 to 9223372036854775807. The unsigned range is 0 to 18446744073709551615.

        - Don't use unsigned big integers with double, if so last digits may be wrong because of rounding errors when converting a BIGINT value to a DOUBLE.

        - MySQL can handle BIGINT in the following cases:

            * When using integers to store large unsigned values in a BIGINT column.
            * In MIN(col_name) or MAX(col_name), where col_name refers to a BIGINT column.
            * When using operators (+,-,*, and so on), where both operands are integers.

        - You can always store an exact integer value in a BIGINT column by storing it using a string.
        
- *DECIMAL[(M[,D])] [UNSIGNED] [ZEROFILL]*: A packed "exact" fixed-point number. 

        - M is the total of number of digits (the precision) and D is the number of digits after the decimal poin (the scale).
        - The decimal point and the - sign are not counted in M. 
        - If D is 0, values have no decimal point or fraction part.
        - The maximum number of digits(M) is 65.
        - The maximum number of digits(D) is 30.
        - If D is omitted, the default is 0.
        - If M is omitted, the default is 10.
        - UNSIGNED, if specified, disallows negative values.

- *FLOAT[(M,D)] [UNSIGNED] [ZEROFILL]*: A small (single-precision) floating-point number.

        - Permissible values are -3.402823466E+38 to -1.175494351E-38, 0, and 1.175494351E-38 to 3.402823466E+38.
        - M is the total of number of digits and D is the number of digits following the decimal point.
        - If M and D are omitted, values are stored to the limits permitted by the hardware.
        - A single-precision floating-point number is accurate to aproximately 7 decimal places.

- *FLOAT(p) [UNSIGNED] [ZEROFILL]*: A floating-point number.

        - P represents the precision in bits, but MySQL uses this value only to determine whether to use FLOAT or DOUBLE for the resulting data type.
        - If P is from 0 to 24, the data type becomes FLOAT with no M or D values.
        - If P is from 25 to 53, the data type becomes DOUBLE with no M or D values.

- *DOUBLE[(M,D)] [UNSIGNED] [ZEROFILL]*: A normal-sized (double-precision) floating-point number.

        - Permissible values are -1.7976931348623157E+308 to -2.2250738585072014E-308, 0, and 2.2250738585072014E-308 to 1.7976931348623157E+308.
        - The actual range might be smaller depending on your hardware or operating system.
        - M is the total number of digits and D is the number of digits following the decimal point.
        - If M and D are omitted, values are stored to the limits permitted by the hardware.
        - A double-precision floating-point number is acurrate to approximately 15 decimal places.

Integer Types (Exact Values)
-----------------------------

![image](https://drive.google.com/uc?id=1DGAUFBs44xCQrv6JBqTgMe9Px4gyS3bE)

<ins>Fixed-Point Types (Exact Values)</ins>
--------------------------------

- The DECIMAL and NUMERIC types store exact numeric data values. These types are used when it is important to preserve exact precision, for example with monetary data. 

- In MySQL, NUMERIC is implemented as DECIMAL, so the following remarks about DECIMAL apply equally to NUMERIC.

- MySQL stores DECIMAL values in binary format.

- In standard SQL, the syntax DECIMAL(M) is equivalent to DECIMAL(M,0).

- The default value of M is 10.

- If the scale is 0, DECIMAL values contain no decimal point or fractional part.

- The maximum number of digits for DECIMAL is 65, but the actual range for a given DECIMAL column can be constrained by the precision or scale for a given column.

<ins>Floating-Point Types (Approximate Value)</ins>
----------------------------------------------------

- The FLOAT and DOUBLE types represent approximate numeric data values. MySQL uses **four bytes for single-precision values and eight bytes for double-precision values**.

- For FLOAT, the SQL standard permits an optional specification of the precision in bits following the keyword FLOAT; that is, FLOAT(p). 

- A precision from 0 to 23 results in a 4-byte single-precision FLOAT column.

- A precision from 24 to 53 results in a 8-byte double-precision DOUBLE column.

<ins>Bit-Value Type</ins>
--------------------------

- The BIT data type is used to store bit values. A type of BIT(M) enables storage of M-bit values. 

- M can range from 1 to 64.

- To specify bit values, " b'value' " notation can be used. Value is a binary value written using zeros and ones.

