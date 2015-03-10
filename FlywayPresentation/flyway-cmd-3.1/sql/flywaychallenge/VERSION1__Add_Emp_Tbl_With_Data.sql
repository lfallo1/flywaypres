CREATE TABLE `employee` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `job_title` VARCHAR(45) NOT NULL,
  `department` VARCHAR(45) NOT NULL,
  `start_date` DATE NOT NULL,
  `active` BIT(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));

INSERT INTO `flyway_challenge`.`employee` (`name`, `job_title`, `department`, `start_date`, `active`) VALUES ('Paul', 'Developer', 'IT', '2012-7-14', 1), ('Mary', 'Sales Rep', 'Marketing', '2010-8-12', 1), ('John', 'Graphic Design', 'Marketing', '2011-7-30', 1);





