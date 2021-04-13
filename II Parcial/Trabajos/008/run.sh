mariadb -t -v < 0_tables.sql
mariadb -t -v < 1_storeProcedures.sql
mariadb -t -v < 2_triggers.sql
mariadb -t -v < 3_run.sql