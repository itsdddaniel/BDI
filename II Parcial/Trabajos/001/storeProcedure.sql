/*

    Chapter 13 - SQL Statements
    13.1.16 - CREATE PROCEDURE

    UDF: User-Defined Functions
    CALL: To invoke a stored procedure
    INOUT / OUT: Parameters

*/

DROP DATABASE IF EXISTS AdvancedSQLProcedures;
CREATE DATABASE AdvancedSQLProcedures CHARACTER SET utf8;
USE AdvancedSQLProcedures;

DELIMITER $$

    SET @@SESSION.max_sp_recursion_depth=25$$

    DROP PROCEDURE IF EXISTS sp_factorial$$
    CREATE PROCEDURE sp_factorial(IN N INT, OUT FACT INT)
    BEGIN

        IF N = 1 THEN

            SELECT 1 INTO FACT;

        ELSE

            CALL sp_factorial(N-1,@TEMP);
            SELECT N*@TEMP INTO FACT;

        END IF;

    END$$

    DROP PROCEDURE IF EXISTS sp_randomInt$$
    CREATE PROCEDURE sp_randomInt(IN NMIN INT, NMAX INT, OUT RESULT INT)
    BEGIN

        SET RESULT = 
        (
            SELECT CAST(RAND()*(NMAX-NMIN)+NMIN AS INT)
        );

    END$$


    DROP PROCEDURE IF EXISTS sp_randomFloat$$
    CREATE PROCEDURE sp_randomFloat(IN NMIN INT, IN NMAX INT, OUT RESULT DECIMAL(8,2))
    BEGIN

        SELECT CAST(RAND()*(NMAX-NMIN)+NMIN AS DECIMAL(8,2)) INTO RESULT;

    END$$

    DROP PROCEDURE IF EXISTS sp_sum$$
    CREATE PROCEDURE sp_sum(A INT, INOUT B INT)
    BEGIN

        SET B = B+A;

    END$$

    DROP PROCEDURE IF EXISTS sp_subCall$$
    CREATE PROCEDURE sp_subCall(X1 INT, Y1 INT, X2 INT, Y2 INT, OUT RESULT FLOAT)
    BEGIN

        CALL sp_sum(X1,X2);
        CALL sp_sum(Y1,Y2);

        SET RESULT = X2/Y2;

    END$$

DELIMITER ;

SET @fact = 0;
CALL sp_factorial(5,@fact);
SELECT @fact AS "Factorial de 5";

SET @aRandomNumber = 0;
SET @nmin = 1;
SET @nmax = 100;
CALL sp_randomInt(@nmin,@nmax,@aRandomNumber);
SELECT @aRandomNumber AS "A Random INT Number";

CALL sp_randomFloat(@nmin,@nmax,@aRandomNumber);
SELECT @aRandomNumber AS "A Random FLOAT Number";

SET @result = 0;
SET @x1 = 2;
SET @x2 = 1;
SET @y1 = 2;
SET @y2 = 1;

CALL sp_subCall(@x1,@y1,@x2,@y2,@result);
SELECT @result AS "Result of SubOperation";