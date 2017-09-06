USE OngAnimais;

DROP TABLE IF EXISTS `Pets`;
CREATE TABLE `Pets` (
	`idPet` bigint NOT NULL AUTO_INCREMENT,
	`name` varchar(20) NOT NULL,
	`birthDate` DATE NOT NULL,
	`idSpecies` bigint NOT NULL,
	`idClient` bigint,
	`status` bool NOT NULL,
	PRIMARY KEY (`idPet`)
);

DROP TABLE IF EXISTS `Medicines`;
CREATE TABLE `Medicines` (
	`idMedicine` bigint NOT NULL AUTO_INCREMENT,
	`name` varchar(20) NOT NULL,
	`status` bool NOT NULL,
	PRIMARY KEY (`idMedicine`)
);

DROP TABLE IF EXISTS `RelMedicinesPets`;
CREATE TABLE `RelMedicinesPets` (
	`idMedicine` bigint NOT NULL,
	`idPet` bigint NOT NULL,
	`quantity` int NOT NULL,
	`nextDose` DATE NOT NULL,
	`status` bool NOT NULL,
	PRIMARY KEY (`idMedicine`,`idPet`)
);

DROP TABLE IF EXISTS `Clients`;
CREATE TABLE `Clients` (
	`idClient` bigint NOT NULL AUTO_INCREMENT,
	`name` varchar(20) NOT NULL,
	`birthDate` DATE NOT NULL,
	`status` bool NOT NULL,
	PRIMARY KEY (`idClient`)
);

ALTER TABLE `Pets` ADD CONSTRAINT `Pets_fk0` FOREIGN KEY (`idSpecies`) REFERENCES `Species`(`idSpecies`);
ALTER TABLE `Pets` ADD CONSTRAINT `Pets_fk1` FOREIGN KEY (`idClient`) REFERENCES `Clients`(`idClient`);
ALTER TABLE `RelMedicinesPets` ADD CONSTRAINT `RelMedicinesPets_fk0` FOREIGN KEY (`idMedicine`) REFERENCES `Medicines`(`idMedicine`);
ALTER TABLE `RelMedicinesPets` ADD CONSTRAINT `RelMedicinesPets_fk1` FOREIGN KEY (`idPet`) REFERENCES `Pets`(`idPet`);


