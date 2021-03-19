@author Daniel Arteaga
@version 1.0
@date 24/02/2021
@comments All excersises are done with MariaDB 10.3 in compatibility with MySQL 5.7 using Ubuntu Linux OS, As well all annotations are from the MySQL 5.7 Reference Manual

SQL Statements
===============

ALTER DATABASE Statement
-------------------------

- **ALTER DATABASE** enables you to change the overall characteristics of a database. These characteristics are stored in the **db.opt** file in the database directory. This statement requires the **ALTER** privilege on the database. **ALTER SCHEMA** is a synonym for **ALTER DATABASE**.

        ALTER {DATABASE | SCHEMA} [db_name]
            alter_option ...
        ALTER {DATABASE | SCHEMA} db_name
            UPGRADE DATA DIRECTORY NAME
        alter_option: 
        {
            [DEFAULT] CHARACTER SET [=] charset_name | [DEFAULT] COLLATE [=] collation_name
        }

ALTER TABLE Statement
----------------------

    ALTER TABLE tbl_name
        [alter_option [, alter_option] ...]
        [partition_options]

    alter_option: 
    {
        table_options
        | ADD [COLUMN] col_name column_definition
        [FIRST | AFTER col_name]
        | ADD [COLUMN] (col_name column_definition,...)
        | ADD {INDEX | KEY} [index_name]
        [index_type] (key_part,...) [index_option] ...
        | ADD {FULLTEXT | SPATIAL} [INDEX | KEY] [index_name]
        (key_part,...) [index_option] ...
        | ADD [CONSTRAINT [symbol]] PRIMARY KEY
        [index_type] (key_part,...)
        [index_option] ...
        | ADD [CONSTRAINT [symbol]] UNIQUE [INDEX | KEY]
        [index_name] [index_type] (key_part,...)
        [index_option] ...
        | ADD [CONSTRAINT [symbol]] FOREIGN KEY
        [index_name] (col_name,...)
        reference_definition
        | ADD CHECK (expr)
        | ALGORITHM [=] {DEFAULT | INPLACE | COPY}
        | ALTER [COLUMN] col_name {
        SET DEFAULT {literal | (expr)}
        | DROP DEFAULT
        }
        | CHANGE [COLUMN] old_col_name new_col_name column_definition
        [FIRST | AFTER col_name]
        | [DEFAULT] CHARACTER SET [=] charset_name [COLLATE [=] collation_name]
        | CONVERT TO CHARACTER SET charset_name [COLLATE collation_name]
        | {DISABLE | ENABLE} KEYS
        | {DISCARD | IMPORT} TABLESPACE
        | DROP [COLUMN] col_name
        | DROP {INDEX | KEY} index_name
        | DROP PRIMARY KEY
        | DROP FOREIGN KEY fk_symbol
        | FORCE
        | LOCK [=] {DEFAULT | NONE | SHARED | EXCLUSIVE}
        | MODIFY [COLUMN] col_name column_definition
        [FIRST | AFTER col_name]
        | ORDER BY col_name [, col_name] ...
        | RENAME {INDEX | KEY} old_index_name TO new_index_name
        | RENAME [TO | AS] new_tbl_name
        | {WITHOUT | WITH} VALIDATION
    }

    table_option: 
    {
        AUTO_INCREMENT [=] value
        | AVG_ROW_LENGTH [=] value
        | [DEFAULT] CHARACTER SET [=] charset_name
        | CHECKSUM [=] {0 | 1}
        | [DEFAULT] COLLATE [=] collation_name
        | COMMENT [=] 'string'
        | COMPRESSION [=] {'ZLIB' | 'LZ4' | 'NONE'}
        | CONNECTION [=] 'connect_string'
        | {DATA | INDEX} DIRECTORY [=] 'absolute path to directory'
        | DELAY_KEY_WRITE [=] {0 | 1}
        | ENCRYPTION [=] {'Y' | 'N'}
        | ENGINE [=] engine_name
        | INSERT_METHOD [=] { NO | FIRST | LAST }
        | KEY_BLOCK_SIZE [=] value
        | MAX_ROWS [=] value
        | MIN_ROWS [=] value
        | PACK_KEYS [=] {0 | 1 | DEFAULT}
        | PASSWORD [=] 'string'
        | ROW_FORMAT [=] {DEFAULT | DYNAMIC | FIXED | COMPRESSED | REDUNDANT | COMPACT}
        | STATS_AUTO_RECALC [=] {DEFAULT | 0 | 1}
        | STATS_PERSISTENT [=] {DEFAULT | 0 | 1}
        | STATS_SAMPLE_PAGES [=] value
        | TABLESPACE tablespace_name [STORAGE {DISK | MEMORY}]
        | UNION [=] (tbl_name[,tbl_name]...)
    }