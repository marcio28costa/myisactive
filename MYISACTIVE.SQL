-- MySQL dump 10.13  Distrib 5.7.38, for el7 (x86_64)
--
-- Host: localhost    Database: MYISACTIVE
-- ------------------------------------------------------
-- Server version	5.7.43-47-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `MYISACTIVE`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `MYISACTIVE` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `MYISACTIVE`;

--
-- Table structure for table `LOG_ESTATISTICAS_MYSQL`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LOG_ESTATISTICAS_MYSQL` (
  `id_stats` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `data_coleta` datetime DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `valor` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_stats`)
) ENGINE=InnoDB AUTO_INCREMENT=496 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LOG_LOCKS_ATIVOS`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LOG_LOCKS_ATIVOS` (
  `data_coleta` datetime DEFAULT NULL,
  `trx_id` varchar(100) DEFAULT NULL,
  `trx_state` varchar(50) DEFAULT NULL,
  `trx_started` datetime DEFAULT NULL,
  `trx_wait_started` datetime DEFAULT NULL,
  `trx_mysql_thread_id` bigint(20) DEFAULT NULL,
  `trx_query` text,
  `bloqueando_por` varchar(100) DEFAULT NULL,
  `bloqueando_estado` varchar(50) DEFAULT NULL,
  `id_locks` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_locks`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LOG_SESSOES_ATIVAS`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LOG_SESSOES_ATIVAS` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `data_coleta` datetime NOT NULL,
  `thread_id` bigint(20) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `db` varchar(100) DEFAULT NULL,
  `command` varchar(100) DEFAULT NULL,
  `time_sec` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `info` longtext,
  `full_scan` enum('YES','NO') DEFAULT NULL,
  `locked` enum('YES','NO') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `VW_ESTATISTICAS_MYSQL_RESUMO`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `VW_ESTATISTICAS_MYSQL_RESUMO` AS SELECT 
 1 AS `tipo`,
 1 AS `nome`,
 1 AS `valor`,
 1 AS `data_coleta`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `VW_LOCKS_ATIVOS_RESUMO`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `VW_LOCKS_ATIVOS_RESUMO` AS SELECT 
 1 AS `data_coleta`,
 1 AS `trx_esperando`,
 1 AS `estado_esperando`,
 1 AS `trx_started`,
 1 AS `trx_wait_started`,
 1 AS `trx_mysql_thread_id`,
 1 AS `query`,
 1 AS `trx_bloqueadora`,
 1 AS `bloqueando_estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `VW_SESSOES_ATIVAS_RESUMO`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `VW_SESSOES_ATIVAS_RESUMO` AS SELECT 
 1 AS `minuto`,
 1 AS `command`,
 1 AS `qtd`,
 1 AS `tempo_total_segundos`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `controle_execucao`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controle_execucao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_execucao` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'MYISACTIVE'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8 */ ;;
/*!50003 SET character_set_results = utf8 */ ;;
/*!50003 SET collation_connection  = utf8_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = '' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`dbacitel`@`localhost`*/ /*!50106 EVENT `evt_coletar_sessoes` ON SCHEDULE EVERY 1 MINUTE STARTS '2025-04-11 16:09:45' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
  DECLARE v_lock_status INT;

  
  SELECT GET_LOCK('evt_coletar_sessoes_lock', 0) INTO v_lock_status;

  
  IF v_lock_status = 1 THEN

    BEGIN
      
      CALL MYISACTIVE.COLETAR_SESSOES_ATIVAS();
      CALL MYISACTIVE.COLETAR_LOCKS_ATIVOS();
      CALL MYISACTIVE.COLETAR_ESTATISTICAS_MYSQL();
    END;

    
    DO RELEASE_LOCK('evt_coletar_sessoes_lock');

  END IF;
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = '' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`dbacitel`@`localhost`*/ /*!50106 EVENT `evt_truncar_logs` ON SCHEDULE EVERY 1 WEEK STARTS '2025-04-06 08:00:00' ON COMPLETION NOT PRESERVE ENABLE COMMENT 'Trunca logs toda segunda-feira às 08:00' DO BEGIN
    TRUNCATE TABLE MYISACTIVE.LOG_ESTATISTICAS_MYSQL;
    TRUNCATE TABLE MYISACTIVE.LOG_LOCKS_ATIVOS;
    TRUNCATE TABLE MYISACTIVE.LOG_SESSOES_ATIVAS;
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'MYISACTIVE'
--
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`dbacitel`@`localhost` PROCEDURE `CAPTURAR_LOCKS_ATIVOS`()
BEGIN
    DECLARE v_tem_lock INT DEFAULT 0;

    
    SELECT COUNT(*) INTO v_tem_lock
    FROM INFORMATION_SCHEMA.INNODB_LOCK_WAITS;

    
    IF v_tem_lock > 0 THEN

        
        INSERT INTO MYISACTIVE.LOG_LOCKS_ATIVOS (
            data_coleta,
            trx_id,
            trx_state,
            trx_started,
            trx_wait_started,
            trx_mysql_thread_id,
            trx_query,
            bloqueando_por,
            bloqueando_estado
        )
        SELECT 
            NOW(),
            w.requesting_trx_id,
            r.trx_state,
            r.trx_started,
            r.trx_wait_started,
            r.trx_mysql_thread_id,
            r.trx_query,
            w.blocking_trx_id,
            b.trx_state
        FROM 
            INFORMATION_SCHEMA.INNODB_LOCK_WAITS w
            JOIN INFORMATION_SCHEMA.INNODB_TRX r ON r.trx_id = w.requesting_trx_id
            JOIN INFORMATION_SCHEMA.INNODB_TRX b ON b.trx_id = w.blocking_trx_id;

        
        

    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`dbacitel`@`localhost` PROCEDURE `COLETAR_ESTATISTICAS_MYSQL`()
BEGIN
    DECLARE v_data DATETIME;
    SET v_data = NOW();

    
    INSERT INTO MYISACTIVE.LOG_ESTATISTICAS_MYSQL (data_coleta, tipo, nome, valor)
    SELECT 
        v_data,
        'Comando',
        VARIABLE_NAME,
        VARIABLE_VALUE
    FROM performance_schema.global_status
    WHERE VARIABLE_NAME IN (
        'Com_select', 'Com_insert', 'Com_update', 'Com_delete',
        'Com_replace', 'Com_load', 'Com_commit', 'Com_rollback',
        'Com_create_table', 'Com_drop_table', 'Com_alter_table'
    );

    
    INSERT INTO MYISACTIVE.LOG_ESTATISTICAS_MYSQL (data_coleta, tipo, nome, valor)
    SELECT 
        v_data,
        'Status',
        VARIABLE_NAME,
        VARIABLE_VALUE
    FROM performance_schema.global_status
    WHERE VARIABLE_NAME IN (
        'Connections', 'Threads_connected', 'Threads_running',
        'Created_tmp_tables', 'Created_tmp_disk_tables',
        'Select_full_join', 'Select_scan',
        'Slow_queries', 'Sort_merge_passes',
        'Innodb_buffer_pool_reads', 'Innodb_buffer_pool_read_requests'
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`dbacitel`@`localhost` PROCEDURE `COLETAR_SESSOES_ATIVAS`()
BEGIN
    DECLARE lock_status INT;

    
    SET lock_status = GET_LOCK('myisactive_lock', 0);

    IF lock_status = 1 THEN
        

        INSERT INTO controle_execucao (data_execucao, status, info)
        VALUES (NOW(), 'INICIO', 'Coleta iniciada');

        
        INSERT INTO MYISACTIVE.LOG_SESSOES_ATIVAS (
            data_coleta, thread_id, user, host, db, command, time_sec, state, info
        )
        SELECT 
            NOW(),
            ID,
            USER,
            HOST,
            DB,
            COMMAND,
            TIME,
            STATE,
            INFO
        FROM INFORMATION_SCHEMA.PROCESSLIST
        WHERE COMMAND NOT IN ('Sleep', 'Binlog Dump', 'Connect')
          AND USER NOT IN ('system user');

        INSERT INTO controle_execucao (data_execucao, status, info)
        VALUES (NOW(), 'FIM', 'Coleta finalizada');

        
        DO RELEASE_LOCK('myisactive_lock');

    ELSE
        
        INSERT INTO controle_execucao (data_execucao, status, info)
        VALUES (NOW(), 'IGNORADA', 'Execução concorrente detectada');

    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `MYISACTIVE`
--

USE `MYISACTIVE`;

--
-- Final view structure for view `VW_ESTATISTICAS_MYSQL_RESUMO`
--

/*!50001 DROP VIEW IF EXISTS `VW_ESTATISTICAS_MYSQL_RESUMO`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dbacitel`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `VW_ESTATISTICAS_MYSQL_RESUMO` AS select `e`.`tipo` AS `tipo`,`e`.`nome` AS `nome`,`e`.`valor` AS `valor`,`e`.`data_coleta` AS `data_coleta` from `LOG_ESTATISTICAS_MYSQL` `e` where (`e`.`data_coleta` = (select max(`LOG_ESTATISTICAS_MYSQL`.`data_coleta`) from `LOG_ESTATISTICAS_MYSQL` where ((`LOG_ESTATISTICAS_MYSQL`.`tipo` = `e`.`tipo`) and (`LOG_ESTATISTICAS_MYSQL`.`nome` = `e`.`nome`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `VW_LOCKS_ATIVOS_RESUMO`
--

/*!50001 DROP VIEW IF EXISTS `VW_LOCKS_ATIVOS_RESUMO`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dbacitel`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `VW_LOCKS_ATIVOS_RESUMO` AS select `LOG_LOCKS_ATIVOS`.`data_coleta` AS `data_coleta`,`LOG_LOCKS_ATIVOS`.`trx_id` AS `trx_esperando`,`LOG_LOCKS_ATIVOS`.`trx_state` AS `estado_esperando`,`LOG_LOCKS_ATIVOS`.`trx_started` AS `trx_started`,`LOG_LOCKS_ATIVOS`.`trx_wait_started` AS `trx_wait_started`,`LOG_LOCKS_ATIVOS`.`trx_mysql_thread_id` AS `trx_mysql_thread_id`,left(`LOG_LOCKS_ATIVOS`.`trx_query`,200) AS `query`,`LOG_LOCKS_ATIVOS`.`bloqueando_por` AS `trx_bloqueadora`,`LOG_LOCKS_ATIVOS`.`bloqueando_estado` AS `bloqueando_estado` from `LOG_LOCKS_ATIVOS` order by `LOG_LOCKS_ATIVOS`.`data_coleta` desc limit 100 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `VW_SESSOES_ATIVAS_RESUMO`
--

/*!50001 DROP VIEW IF EXISTS `VW_SESSOES_ATIVAS_RESUMO`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dbacitel`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `VW_SESSOES_ATIVAS_RESUMO` AS select date_format(`LOG_SESSOES_ATIVAS`.`data_coleta`,'%Y-%m-%d %H:%i') AS `minuto`,`LOG_SESSOES_ATIVAS`.`command` AS `command`,count(0) AS `qtd`,sum(`LOG_SESSOES_ATIVAS`.`time_sec`) AS `tempo_total_segundos` from `LOG_SESSOES_ATIVAS` group by date_format(`LOG_SESSOES_ATIVAS`.`data_coleta`,'%Y-%m-%d %H:%i'),`LOG_SESSOES_ATIVAS`.`command` order by `minuto` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-11 17:16:59
