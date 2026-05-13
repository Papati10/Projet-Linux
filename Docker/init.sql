CREATE DATABASE etudiants;

USE etudiants;

CREATE TABLE etudiant (

    id INT PRIMARY KEY AUTO_INCREMENT,

    nom VARCHAR(50)

);

INSERT INTO etudiant(nom)

VALUES ('Ahmed');