DROP TABLE IF EXISTS `contract_status`;
CREATE TABLE `contract_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
INSERT INTO `contract_status` VALUES (1,'Contract'),(2,'UFA'),(3,'RFA'),(4,'EFA'),(6,'IR'),(7,'Practice'),(8,'SUS'),(9,'NFI'),(11,'PUP'),(13,'Other');

update yearly_contract set status = 'Other' where status = 'other' or status = "" or status = 'null';
