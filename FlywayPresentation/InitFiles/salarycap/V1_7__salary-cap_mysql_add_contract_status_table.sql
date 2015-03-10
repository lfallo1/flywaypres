DROP TABLE IF EXISTS `contract_status`;
CREATE TABLE `contract_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
INSERT INTO `contract_status` VALUES (1,'Contract'),(2,'UFA'),(3,'RFA'),(4,'EFA'),(5,'Dead Money'),(6,'Injured Reserve'),(7,'Practice Squad'), (8, 'Suspended'), (9, 'NFI'), (10, 'Retired');
