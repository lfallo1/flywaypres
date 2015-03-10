UPDATE `employee` SET `department`='2' WHERE `department` = 'Marketing';
UPDATE `employee` SET `department`='1' WHERE `department` = 'IT';

ALTER TABLE `employee` 
CHANGE COLUMN `department` `department` INT(11) NOT NULL;

ALTER TABLE `employee` 
ADD INDEX `fk_emp_dpt_idx` (`department` ASC);
ALTER TABLE `flyway_challenge`.`employee` 
ADD CONSTRAINT `fk_emp_dpt`
  FOREIGN KEY (`department`)
  REFERENCES `flyway_challenge`.`department` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
