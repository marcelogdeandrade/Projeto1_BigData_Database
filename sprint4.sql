  USE OngAnimais;
  
  DROP TABLE IF EXISTS `Foods`;
  CREATE TABLE `Foods` (
    `idFood` bigint NOT NULL AUTO_INCREMENT,
    `name` varchar(20) NOT NULL,
    `quantity` int NOT NULL,
    `idSpecies` bigint NOT NULL,
    `status` bool NOT NULL,
    PRIMARY KEY (`idFood`)
  );
  DROP TABLE IF EXISTS `FoodLog`;
  CREATE TABLE `FoodLog` (
    `idFoodLog` bigint NOT NULL AUTO_INCREMENT,
    `idFood` bigint NOT NULL,
    `isIn` bool NOT NULL,
    `idClient` bigint,
    `idPet` bigint,
    `quantity` int NOT NULL,
    `status` bool NOT NULL,
    PRIMARY KEY (`idFoodLog`)
  );

  ALTER TABLE `Foods` ADD CONSTRAINT `Foods_fk0` FOREIGN KEY (`idSpecies`) REFERENCES `Species`(`idSpecies`);
  ALTER TABLE `FoodLog` ADD CONSTRAINT `FoodLog_fk0` FOREIGN KEY (`idFood`) REFERENCES `Foods`(`idFood`);
  ALTER TABLE `FoodLog` ADD CONSTRAINT `FoodLog_fk1` FOREIGN KEY (`idClient`) REFERENCES `Clients`(`idClient`);
  ALTER TABLE `FoodLog` ADD CONSTRAINT `FoodLog_fk2` FOREIGN KEY (`idPet`) REFERENCES `Pets`(`idPet`);