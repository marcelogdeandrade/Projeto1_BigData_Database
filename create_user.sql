DROP USER IF EXISTS 'onganimais'@'localhost'

CREATE USER 'onganimais'@'localhost' IDENTIFIED BY 'onganimais';
GRANT ALL PRIVILEGES ON * . * to 'onganimais'@'localhost'