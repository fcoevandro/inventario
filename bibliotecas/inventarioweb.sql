# MySQL-Front 3.2  (Build 14.8)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='SYSTEM' */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: inventarioweb
# ------------------------------------------------------
# Server version 5.0.45-community-nt

DROP DATABASE IF EXISTS `inventarioweb`;
CREATE DATABASE `inventarioweb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `inventarioweb`;

#
# Table structure for table area
#

CREATE TABLE `area` (
  `ID` bigint(20) NOT NULL auto_increment,
  `AREA` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

#
# Dumping data for table area
#

INSERT INTO `area` VALUES (1,'TECM-1');
INSERT INTO `area` VALUES (2,'TEMN');
INSERT INTO `area` VALUES (3,'TATE');
INSERT INTO `area` VALUES (4,'TATE-1');
INSERT INTO `area` VALUES (5,'TATE-2');
INSERT INTO `area` VALUES (6,'TEOP');
INSERT INTO `area` VALUES (7,'TEOP-1');
INSERT INTO `area` VALUES (8,'TEOP-2');
INSERT INTO `area` VALUES (9,'TESO');
INSERT INTO `area` VALUES (10,'TETI');

#
# Table structure for table configuracao
#

CREATE TABLE `configuracao` (
  `ID` bigint(20) NOT NULL auto_increment,
  `CONFIGURACAO` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

#
# Dumping data for table configuracao
#

INSERT INTO `configuracao` VALUES (1,'AMD Athlon™ 64 X2 Dual Core Processor 4000+');
INSERT INTO `configuracao` VALUES (2,'AMD Athlon™ 64 X2 Dual Core Processor 4200+');
INSERT INTO `configuracao` VALUES (3,'AMD Athlon™ Dual Core Processor 4450B');
INSERT INTO `configuracao` VALUES (4,'AMD Athlon™ Dual Core Processor 5000B');
INSERT INTO `configuracao` VALUES (5,'AMD Athlon™ XP 1500+');
INSERT INTO `configuracao` VALUES (6,'AMD Phenom™ 9600B Quad_Core Processor');
INSERT INTO `configuracao` VALUES (7,'AMD Phenom™ II X2 B55 Processor');
INSERT INTO `configuracao` VALUES (8,'AMD Phenom™ II X4 B97 Processor 3.2 GHZ');
INSERT INTO `configuracao` VALUES (9,'AMD Sempron™ Processor 3000+');
INSERT INTO `configuracao` VALUES (10,'AMD Turion™ 64 X2 Mobile Technology TL-56');
INSERT INTO `configuracao` VALUES (11,'Genuine Intel® CPU T2300 @ 1.66 GHz');
INSERT INTO `configuracao` VALUES (12,'Intel® Atom™ CPU 230 @ 1.60 GHz');
INSERT INTO `configuracao` VALUES (13,'Intel® Atom™ CPU D525 @ 1.80 GHz');
INSERT INTO `configuracao` VALUES (14,'Intel® Atom™ CPU N2600 @ 1.60 GHz');
INSERT INTO `configuracao` VALUES (15,'Intel® Celeron® CPU 1.70 GHz');
INSERT INTO `configuracao` VALUES (16,'Intel® Celeron® CPU 2.00 GHz');
INSERT INTO `configuracao` VALUES (17,'Intel® Celeron® CPU 2.40 GHz');
INSERT INTO `configuracao` VALUES (18,'Intel® Celeron® CPU 2.66 GHz');
INSERT INTO `configuracao` VALUES (19,'Intel® Celeron® D CPU 3.06 GHz');
INSERT INTO `configuracao` VALUES (20,'Intel® Celeron® M processor 1.60 GHz');
INSERT INTO `configuracao` VALUES (21,'Intel® Core™ 2 Duo CPU E4400 @ 2.00 GHz');
INSERT INTO `configuracao` VALUES (22,'Intel® Core™ 2 Duo CPU L9400 @ 1.86 GHz');
INSERT INTO `configuracao` VALUES (23,'Intel® Core™ 2 Duo CPU T8100 @ 2.10 GHz');
INSERT INTO `configuracao` VALUES (24,'Intel® Core™ i3 CPU 540 @ 3.07 GHz');
INSERT INTO `configuracao` VALUES (25,'Intel® Core™ i3 CPU M 370 @ 2.4GHz');
INSERT INTO `configuracao` VALUES (26,'Intel® Core™ i3 CPU M 370 @ 3.30 GHz');
INSERT INTO `configuracao` VALUES (27,'Intel® Core™ i5 CPU M 430 @ 2.27 GHz');
INSERT INTO `configuracao` VALUES (28,'Intel® Core™ i5-2500 CPU @ 3.30 GHz');
INSERT INTO `configuracao` VALUES (29,'Intel® Core™ i5-2520M CPU @ 2.50 GHz');
INSERT INTO `configuracao` VALUES (30,'Intel® Core™ i5-3570 CPU @ 3.40 GHz');
INSERT INTO `configuracao` VALUES (31,'Intel® Pentium III Xeon');
INSERT INTO `configuracao` VALUES (32,'Intel® Pentium® 4 CPU 2.00 GHz');
INSERT INTO `configuracao` VALUES (33,'Intel® Pentium® 4 CPU 2.40 GHz');
INSERT INTO `configuracao` VALUES (34,'Intel® Pentium® 4 CPU 2.80 GHz');
INSERT INTO `configuracao` VALUES (35,'Intel® Pentium® 4 CPU 3.00 GHz');
INSERT INTO `configuracao` VALUES (36,'Intel® Pentium® 4 CPU 3.20 GHz');
INSERT INTO `configuracao` VALUES (37,'Intel® Pentium® D CPU 2.80 GHz');
INSERT INTO `configuracao` VALUES (38,'Intel® Pentium® Dual CPU E2200 @ 2.20 GHz');
INSERT INTO `configuracao` VALUES (39,'Intel® Pentium® M processor 1.73GHz');
INSERT INTO `configuracao` VALUES (40,'Intel® Xeon E5-2400');
INSERT INTO `configuracao` VALUES (41,'Pentium® Dual-Core CPU E5400 @ 2.70 GHz');
INSERT INTO `configuracao` VALUES (42,'Pentium® Dual-Core CPU E5700 @ 3.00 GHz');
INSERT INTO `configuracao` VALUES (43,'SEM CONFIGURAÇÃO');

#
# Table structure for table dependencia
#

CREATE TABLE `dependencia` (
  `ID` bigint(20) NOT NULL auto_increment,
  `DEPENDENCIA` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

#
# Dumping data for table dependencia
#

INSERT INTO `dependencia` VALUES (1,'SBTE');
INSERT INTO `dependencia` VALUES (2,'TATE');

#
# Table structure for table equipamento
#

CREATE TABLE `equipamento` (
  `ID` bigint(20) NOT NULL,
  `OBSERVACAO` varchar(255) default NULL,
  `PATRIMONIO` varchar(255) default NULL,
  `SERIAL` varchar(255) default NULL,
  `USUARIO` varchar(255) default NULL,
  `AREA_ID` bigint(20) default NULL,
  `CONFIGURACAO_ID` bigint(20) default NULL,
  `DEPENDENCIA_ID` bigint(20) default NULL,
  `FABRICANTE_ID` bigint(20) default NULL,
  `MODELO_ID` bigint(20) default NULL,
  `TIPOEQUIPAMENTO_ID` bigint(20) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_EQUIPAMENTO_FABRICANTE_ID` (`FABRICANTE_ID`),
  KEY `FK_EQUIPAMENTO_CONFIGURACAO_ID` (`CONFIGURACAO_ID`),
  KEY `FK_EQUIPAMENTO_DEPENDENCIA_ID` (`DEPENDENCIA_ID`),
  KEY `FK_EQUIPAMENTO_AREA_ID` (`AREA_ID`),
  KEY `FK_EQUIPAMENTO_MODELO_ID` (`MODELO_ID`),
  KEY `FK_EQUIPAMENTO_TIPOEQUIPAMENTO_ID` (`TIPOEQUIPAMENTO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table equipamento
#

INSERT INTO `equipamento` VALUES (101,'TESTE','1-0381052','123456','EVANDRO',1,2,1,4,1,1);
INSERT INTO `equipamento` VALUES (102,'TESTE','1-0481078','1111111','TESTE',7,13,2,5,3,2);
INSERT INTO `equipamento` VALUES (151,'21\"','1-0481089','222222','evandro',10,43,1,2,18,6);

#
# Table structure for table fabricante
#

CREATE TABLE `fabricante` (
  `ID` bigint(20) NOT NULL auto_increment,
  `FABRICANTE` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

#
# Dumping data for table fabricante
#

INSERT INTO `fabricante` VALUES (1,'BENQ');
INSERT INTO `fabricante` VALUES (2,'DELL');
INSERT INTO `fabricante` VALUES (3,'ELCOMA');
INSERT INTO `fabricante` VALUES (4,'HP');
INSERT INTO `fabricante` VALUES (5,'ITAUTEC');
INSERT INTO `fabricante` VALUES (6,'LG');
INSERT INTO `fabricante` VALUES (7,'PHILIPS');
INSERT INTO `fabricante` VALUES (8,'POSITIVO');
INSERT INTO `fabricante` VALUES (9,'SAMSUNG');
INSERT INTO `fabricante` VALUES (10,'SONY');
INSERT INTO `fabricante` VALUES (11,'TOSHIBA');
INSERT INTO `fabricante` VALUES (12,'WAYTEC');
INSERT INTO `fabricante` VALUES (13,'ZMAX');

#
# Table structure for table modelo
#

CREATE TABLE `modelo` (
  `ID` bigint(20) NOT NULL auto_increment,
  `MODELO` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

#
# Dumping data for table modelo
#

INSERT INTO `modelo` VALUES (1,'8200');
INSERT INTO `modelo` VALUES (2,'8300');
INSERT INTO `modelo` VALUES (3,'1550S');
INSERT INTO `modelo` VALUES (4,'1553S');
INSERT INTO `modelo` VALUES (5,'2530P');
INSERT INTO `modelo` VALUES (6,'2560P');
INSERT INTO `modelo` VALUES (7,'26LD330');
INSERT INTO `modelo` VALUES (8,'26LK331C');
INSERT INTO `modelo` VALUES (9,'310E');
INSERT INTO `modelo` VALUES (10,'42LK451C');
INSERT INTO `modelo` VALUES (11,'4320S');
INSERT INTO `modelo` VALUES (12,'47ZV650DA');
INSERT INTO `modelo` VALUES (13,'540N');
INSERT INTO `modelo` VALUES (14,'550V');
INSERT INTO `modelo` VALUES (15,'6005 PRO');
INSERT INTO `modelo` VALUES (16,'6710B');
INSERT INTO `modelo` VALUES (17,'710N');
INSERT INTO `modelo` VALUES (18,'753DFZ');
INSERT INTO `modelo` VALUES (19,'753FX');
INSERT INTO `modelo` VALUES (20,'AT SERIES D');
INSERT INTO `modelo` VALUES (21,'Bravia');
INSERT INTO `modelo` VALUES (22,'CRT');
INSERT INTO `modelo` VALUES (23,'DC5100');
INSERT INTO `modelo` VALUES (24,'DC5750');
INSERT INTO `modelo` VALUES (25,'DC5850');
INSERT INTO `modelo` VALUES (26,'E2040VA');
INSERT INTO `modelo` VALUES (27,'E2041');
INSERT INTO `modelo` VALUES (28,'E773C');
INSERT INTO `modelo` VALUES (29,'Ecobit');
INSERT INTO `modelo` VALUES (30,'F101');
INSERT INTO `modelo` VALUES (31,'G773C');
INSERT INTO `modelo` VALUES (32,'GX620');
INSERT INTO `modelo` VALUES (33,'IPTV');
INSERT INTO `modelo` VALUES (34,'K-MEX');
INSERT INTO `modelo` VALUES (35,'L1553S');
INSERT INTO `modelo` VALUES (36,'L1710');
INSERT INTO `modelo` VALUES (37,'L1752S');
INSERT INTO `modelo` VALUES (38,'L190HB');
INSERT INTO `modelo` VALUES (39,'LA2205WG');
INSERT INTO `modelo` VALUES (40,'LK331C');
INSERT INTO `modelo` VALUES (41,'LN40A');
INSERT INTO `modelo` VALUES (42,'LN40A45OC1');
INSERT INTO `modelo` VALUES (43,'LS17 732NW');
INSERT INTO `modelo` VALUES (44,'Monitor2');
INSERT INTO `modelo` VALUES (45,'NX6325');
INSERT INTO `modelo` VALUES (46,'PR E2041S');
INSERT INTO `modelo` VALUES (47,'S551');
INSERT INTO `modelo` VALUES (48,'S7502');
INSERT INTO `modelo` VALUES (49,'S7503');
INSERT INTO `modelo` VALUES (50,'TFT1560');
INSERT INTO `modelo` VALUES (51,'W1907');
INSERT INTO `modelo` VALUES (52,'Z-MAX');

#
# Table structure for table sequence
#

CREATE TABLE `sequence` (
  `SEQ_NAME` varchar(50) NOT NULL,
  `SEQ_COUNT` decimal(38,0) default NULL,
  PRIMARY KEY  (`SEQ_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Dumping data for table sequence
#

INSERT INTO `sequence` VALUES ('SEQ_GEN',200);

#
# Table structure for table tipoequipamento
#

CREATE TABLE `tipoequipamento` (
  `ID` bigint(20) NOT NULL auto_increment,
  `TIPOEQUIPAMENTO` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

#
# Dumping data for table tipoequipamento
#

INSERT INTO `tipoequipamento` VALUES (1,'Microcomputador');
INSERT INTO `tipoequipamento` VALUES (2,'Scanner');
INSERT INTO `tipoequipamento` VALUES (3,'Impressora Laser');
INSERT INTO `tipoequipamento` VALUES (4,'Impressora Fiscal');
INSERT INTO `tipoequipamento` VALUES (5,'Impressora Matricial');
INSERT INTO `tipoequipamento` VALUES (6,'Monitor');

#
#  Foreign keys for table equipamento
#

ALTER TABLE `equipamento`
  ADD FOREIGN KEY (`AREA_ID`) REFERENCES `area` (`ID`),
  ADD FOREIGN KEY (`CONFIGURACAO_ID`) REFERENCES `configuracao` (`ID`),
  ADD FOREIGN KEY (`DEPENDENCIA_ID`) REFERENCES `dependencia` (`ID`),
  ADD FOREIGN KEY (`FABRICANTE_ID`) REFERENCES `fabricante` (`ID`),
  ADD FOREIGN KEY (`MODELO_ID`) REFERENCES `modelo` (`ID`),
  ADD FOREIGN KEY (`TIPOEQUIPAMENTO_ID`) REFERENCES `tipoequipamento` (`ID`);


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
