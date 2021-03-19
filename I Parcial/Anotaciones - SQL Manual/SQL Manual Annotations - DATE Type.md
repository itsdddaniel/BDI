@author Daniel Arteaga
@version 2.0
@date 23/02/2021
@comments All excersises are done with MariaDB 10.3 in compatibility with MySQL 5.7 using Ubuntu Linux OS, As well all annotations are from the MySQL 5.7 Reference Manual

Date and Time Data Type
========================

The date and time data types for representing temporal values are DATE, TIME, DATETIME, TIMESTAMP, and YEAR. Each temporal type has a range of valid values, as well as a 'zero' value that may be used when you specify an invalid value that MySQL cannot represent.

- Things to keep in mind:

    - Dates containing 2-digit year values are ambiguous because the century is unknown. MySQL interprets 2-digit year values using these rules:

            - Year values in the range 70-99 become 1970-1999
            - Year values in the range 00-69 become 2000-2069

    - To convert strings in other orders to year-month-day order, the STR_TO_DATE() function may be useful.

    - Date and Time Table:

        ![image](https://drive.google.com/uc?id=1rzL7_kBCFd_KLaC0r5vyi3TO8ia6u_My)

Date and Time Data Type Syntax
-------------------------------

- The date and time data types for representing temporal values are DATE, TIME, DATETIME, TIMESTAMP, and YEAR.

- MySQL permits fractional seconds for TIME, DATETIME, and TIMESTAMP values, with up to microseconds (6 digits) precision. 

- To define a column that includes a fractional seconds part, use the syntax:
                            
        type_name(fsp) is TIME, DATETIME, or TIMESTAMP, and fsp is the fractional seconds precision. For example:

            CREATE TABLE t1 (t TIME(3), dt DATETIME(6), ts TIMESTAMP(0));

- The fsp value, if given, must be in the range of 0 to 6. A value 0 signifies that there is no fractional part. If omitted, the default precision is 0.

- *DATE*: A date. The supported range is *'1000-01-01' to '9999-12-31'*. MySQL displays DATE values in 'YYYY-MM-DD' format, but permits assignment of values to DATE columns using either strings or numbers.

- *DATETIME[(fsp)]*: A date and time combination. The supported range is *'1000-01-01 00:00:00.000000' to '9999-12-31 23:59:59.999999'*. MySQL displays DATETIME values in *'YYYY-MM-DD hh:mm:ss[.fraction]'* format, but permits assignments of values of DATETIME columns using either strings or numbers.

- *TIMESTAMP[(fsp)]*: A timestamp. The range is *'1970-01-01 00:00:01.000000' UTC to '2038-01-19 03:14:07.999999' UTC*. TIMESTAMP values are stored as the number of seconds. 

        A TIMESTAMP cannot represent the value '1970-01-01 00:00:00' because that is equivalent to 0 seconds from the epoch and the value 0 is reserved for representing '0000-00-00 00:00:00', the “zero” TIMESTAMP value.

- *TIME[(fsp)]*: A time. The range is *'-838:59:59.000000' to '838:59:59.000000'*. MySQL displays TIME values in *'hh:mm:ss[.fraction]'* format, but permits assignment of values to TIME columns using either strings or numbers.

- *YEAR(4)*: A year in 4-digit foprmat. MySQL displays YEARS values in *YYYY* format, but permits assignment of values to YEAR columns using either strings or numbers. 

The DATE, DATETIME, and TIMESTAMP Types
----------------------------------------

The DATE, DATETIME, and TIMESTAMP types are related. How they are similar, and how they differ.

- Invalid DATE, DATETIME or TIMESTAMP values are converted to the "zero" value of the appropiate type, if the SQL permits this conversion. 

- Some properties of date value interpretation in MySQL:

    - MySQL permits a "relaxed" format for values specified as strings, in which any punctuation character may be used as the delimiter between date parts or time parts. In some cases, this syntax can be deceiving. For example:

            10:11:12 might look like a time value because of the ':', but is interpreted as the year '2010-11-12' if used in date context.
    
    - The only delimeter recognized between a date and time part and a fractional seconds part is the decimal point.


The TIME Type
--------------

- MySQL retrieves and displays TIME values in 'hh:mm:ss' format. TIME values may range from *'-838:59:59' to '838:59:59'*.

- MySQL recognizes TIME values in several formats, some of which can include a trailing fractional seconds part in up to microseconds (6 digits) precision.

- With the fractional part included, the range for TIME values is *'-838:59:59.000000' to '838:59:59.000000'*.

- MySQL interprets abbreviated TIME values with colons as time of the day, that is, *'11:12' means '11:12:00', not '00:11:12'*.

- '1112' and 1112 as meaning '11:12:00, but MySQL interprets them as *'00:11:12'*.

- '12' and 12 are interpreted as *'00:00:12'*.

- Invalid TIME values are converted to *'00:00:00'*.

The YEAR Type
--------------

- MySQL displays YEAR values in YYYY format, with a range of 1901 to 2155, and 0000.

- YEAR accepts input values in a variety of formats:

        - As 4-digit strings in the range '1901' to '2155'
        - As 4-digit strings in the range 1901 to 2155
        - As 1 or 2-digit strings in the range '0' to '99'. MySQL converts values in the ranges '0' to '69' and '70' to '99' to YEAR values in the ranges 2000 to 2069 nad 1970 to 1999.
        - The result of inserting a numeric 0 has a display value of 0000.
        - To insert zero and have it be interpreted as 2000, specify it as a string '0' or '00'.

Migrating from YEAR(2) to 4-Digit YEAR
---------------------------------------

- To convert 2-digit YEAR(2) columns to 4-digit YEAR columns, you can do so manually at any time without upgrading.

        - To convert 2-digit YEAR(2) columns to 4-digits YEAR manually, user ALTER TABLE or REPAIR TABLE.
        Suppose that a table t1 has this definition:

                CREATE TABLE t1
                (
                        ycol YEAR(2) NOT NULL DEFAULT '70'
                );
        Modify the column using ALTER TABLE as follows:
                
                ALTER TABLE t1 FORCE;

