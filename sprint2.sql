USE OngAnimais;

DROP TABLE IF EXISTS `Pets`;
CREATE TABLE `Pets` (
	`idPet` bigint NOT NULL AUTO_INCREMENT,
	`name` varchar(20) NOT NULL,
	`birthDate` DATE NOT NULL,
	`idSpecie` bigint NOT NULL,
	`idClient` bigint,
	`status` bool NOT NULL,
	PRIMARY KEY (`idPet`)
);