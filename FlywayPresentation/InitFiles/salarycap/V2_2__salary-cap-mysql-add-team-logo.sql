ALTER TABLE `team` 
ADD COLUMN `logo` VARCHAR(45) NULL AFTER `name`;
update team set logo = concat(name,'.png') where id <> 0;