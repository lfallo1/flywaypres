drop table if exists `position`;
CREATE TABLE `position` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `position_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));
  
INSERT INTO `position` (`position_name`)
SELECT `position`
from `yearly_contract`
where `position` != ""
group by `position`
order by `position`