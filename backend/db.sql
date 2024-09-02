/* Delimitador alterado para ; */
/* Conectando em 127.0.0.1 via MariaDB or MySQL (TCP/IP), usuário root, usando a senha: No... */
SELECT CONNECTION_ID();
SHOW VARIABLES;
/* Changing character set from latin1 to utf8mb4 */
/* CharacterSet: utf8mb4 */
SHOW /*!50002 GLOBAL */ STATUS;
SELECT NOW();
/* Conectado. Thread-ID: 11 */
/* Reading function definitions from C:\laragon\bin\heidisql\functions-mysql.ini */
SHOW TABLES FROM `information_schema`;
SHOW DATABASES;
/* Entrando na sessão "Laragon.MySQL" */
/* Redimensionando controles para tela DPI: 125% */
SHOW COLLATION;
CREATE DATABASE `db_numeros` /*!40100 COLLATE 'utf8mb4_0900_ai_ci' */;
SHOW DATABASES;
/* Entrando na sessão "Laragon.MySQL" */
USE `db_numeros`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='db_numeros';
SHOW TABLE STATUS FROM `db_numeros`;
SHOW FUNCTION STATUS WHERE `Db`='db_numeros';
SHOW PROCEDURE STATUS WHERE `Db`='db_numeros';
SHOW TRIGGERS FROM `db_numeros`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='db_numeros';
SHOW ENGINES;
SHOW VARIABLES;
/* #17: Abstract Error Message CharCode:0 Msg:514 */
/* #2: Access violation at address 000000000040F199 in module 'heidisql.exe'. Read of address FFFFFFFFFFFFFFFF Message CharCode:0 Msg:514 */
/* #44: Access violation at address 000000000040F199 in module 'heidisql.exe'. Read of address FFFFFFFFFFFFFFFF Message CharCode:0 Msg:514 */
/* #11: Access violation at address 000000000040F199 in module 'heidisql.exe'. Read of address FFFFFFFFFFFFFFFF Message CharCode:0 Msg:514 */
/* #12: Abstract Error Message CharCode:0 Msg:514 */
/* #25: Abstract Error Message CharCode:0 Msg:514 */
/* #82: Access violation at address 000000000040F199 in module 'heidisql.exe'. Read of address FFFFFFFFFFFFFFFF Message CharCode:0 Msg:514 */
/* #29: Abstract Error Message CharCode:0 Msg:514 */
/* #36: Abstract Error Message CharCode:0 Msg:514 */
CREATE TABLE `numeros` (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`numero` INT NULL,
	`nome` VARCHAR(50) NULL DEFAULT NULL,
	`endereco` VARCHAR(50) NULL DEFAULT NULL,
	`rede_social` VARCHAR(50) NULL DEFAULT NULL,
	PRIMARY KEY (`id`),
	UNIQUE INDEX `numero` (`numero`)
)
COLLATE='utf8mb4_0900_ai_ci'
;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='db_numeros';
SHOW TABLE STATUS FROM `db_numeros`;
SHOW FUNCTION STATUS WHERE `Db`='db_numeros';
SHOW PROCEDURE STATUS WHERE `Db`='db_numeros';
SHOW TRIGGERS FROM `db_numeros`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='db_numeros';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='db_numeros' AND TABLE_NAME='numeros' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `numeros` FROM `db_numeros`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='db_numeros'   AND TABLE_NAME='numeros'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='db_numeros'   AND TABLE_NAME='numeros'   AND REFERENCED_TABLE_NAME IS NOT NULL;
/* Entrando na sessão "Laragon.MySQL" */
SHOW CREATE TABLE `db_numeros`.`numeros`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='db_numeros' AND tc.TABLE_NAME='numeros' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
/* #1634496361: Access violation at address 00000056C1800000 in module 'heidisql.exe'. Execution of address 00000056C1800000 Message CharCode:13 Msg:256 */
/* #67: Abstract Error Message CharCode:0 Msg:514 */
/* #45: Abstract Error Message CharCode:0 Msg:514 */
/* #87: Abstract Error Message CharCode:0 Msg:514 */
/* #77: Abstract Error Message CharCode:0 Msg:514 */
/* #14: Access violation at address 000000000040F15C in module 'heidisql.exe'. Read of address 000000000B420000 Message CharCode:0 Msg:514 */
ALTER TABLE `numeros`
	ADD COLUMN `numero_status` VARCHAR(50) NULL DEFAULT NULL AFTER `rede_social`,
	ADD COLUMN `created_at` DATETIME NULL DEFAULT NULL AFTER `numero_status`,
	ADD COLUMN `update_at` DATETIME NULL DEFAULT NULL AFTER `created_at`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='db_numeros';
SHOW TABLE STATUS FROM `db_numeros`;
SHOW FUNCTION STATUS WHERE `Db`='db_numeros';
SHOW PROCEDURE STATUS WHERE `Db`='db_numeros';
SHOW TRIGGERS FROM `db_numeros`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='db_numeros';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='db_numeros' AND TABLE_NAME='numeros' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `numeros` FROM `db_numeros`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='db_numeros'   AND TABLE_NAME='numeros'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='db_numeros'   AND TABLE_NAME='numeros'   AND REFERENCED_TABLE_NAME IS NOT NULL;
/* Entrando na sessão "Laragon.MySQL" */
SHOW CREATE TABLE `db_numeros`.`numeros`;
SELECT tc.CONSTRAINT_NAME, cc.CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` AS cc, `information_schema`.`TABLE_CONSTRAINTS` AS tc WHERE tc.CONSTRAINT_SCHEMA='db_numeros' AND tc.TABLE_NAME='numeros' AND tc.CONSTRAINT_TYPE='CHECK' AND tc.CONSTRAINT_SCHEMA=cc.CONSTRAINT_SCHEMA AND tc.CONSTRAINT_NAME=cc.CONSTRAINT_NAME;
SELECT * FROM `db_numeros`.`numeros` LIMIT 1000;
SHOW CREATE TABLE `db_numeros`.`numeros`;