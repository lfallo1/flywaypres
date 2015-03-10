CREATE TABLE `department` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));

INSERT INTO `flyway_challenge`.`department` (`id`, `name`) VALUES ('1', 'IT'), ('2', 'Marketing');
