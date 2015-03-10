DELETE FROM `position` where id < 2000;

ALTER TABLE `position` 
ADD COLUMN `role` VARCHAR(45) NOT NULL AFTER `position_name`;

insert into position (position_name, role)
SELECT position, role FROM yearly_contract where position != "" group by position;