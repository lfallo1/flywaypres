
DROP TABLE IF EXISTS `salary_cap_constants`;
CREATE TABLE `salary_cap_constants` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `salary_cap` double NOT NULL,
  `previous_year_carryover` double NOT NULL,
  `incentive_adjustments` double NOT NULL,
  `workout_bonus_adjustments` double NOT NULL,
  `adjusted_cap` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
);
INSERT INTO `salary_cap_constants` VALUES (1,2013,123000000,1182377,-797821,-504000,122880556),(2,2014,133000000,1531423,-3687698,-504000,130339725),(4,2015,140000000,5791927,0,0,144372517),(5,2016,150000000,0,0,0,150000000),(6,2017,160000000,0,0,0,160000000),(7,2018,170000000,0,0,0,170000000);

DROP TABLE IF EXISTS `qualifying_contract_max_bonus`;
CREATE TABLE `qualifying_contract_max_bonus` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `max_bonus` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
);
INSERT INTO `qualifying_contract_max_bonus` VALUES (2,2012,65000),(3,2013,65000),(4,2014,65000),(5,2015,80000),(6,2016,80000),(7,2017,80000),(8,2018,90000),(9,2019,90000),(10,2020,90000);

