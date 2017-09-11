  USE OngAnimais;

  DROP TABLE IF EXISTS `RelIllnessesPets`;
  CREATE TABLE `RelIllnessesPets` (
    `idIllnessPet` bigint NOT NULL AUTO_INCREMENT,
	  `idIllness` bigint NOT NULL,
	  `idPet` bigint NOT NULL,
	  `status` bigint NOT NULL,
	  PRIMARY KEY (`idIllnessPet`)
  );

  DROP TABLE IF EXISTS `Illnesses`;
  CREATE TABLE `Illnesses` (
	  `idIllness` bigint NOT NULL AUTO_INCREMENT,
	  `name` varchar (20) NOT NULL,
	  `isContagious` bool NOT NULL,
	  `status` bool NOT NULL,
	  PRIMARY KEY (`idIllness`)
  );

  ALTER TABLE `RelIllnessesPets` ADD CONSTRAINT `RelIllnessesPets_fk0` FOREIGN KEY (`idIllness`) REFERENCES `Illnesses` (`idIllness`);
  ALTER TABLE `RelIllnessesPets` ADD CONSTRAINT `RelIllnessesPets_fk1` FOREIGN KEY (`idPet`) REFERENCES `Pets`(`idPet`);
  ALTER TABLE `RelIllnessesPets` ADD CONSTRAINT `RelIllnessesPets` UNIQUE (`idIllness`, `idPet`, `status`);

