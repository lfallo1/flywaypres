CREATE TABLE `favorite` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `contact` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC),
  INDEX `fk_favorite_contact_idx` (`contact` ASC),
  CONSTRAINT `fk_favorite_contact`
    FOREIGN KEY (`contact`)
    REFERENCES `contact` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
