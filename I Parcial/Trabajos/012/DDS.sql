DROP DATABASE IF EXISTS InformationTechnologiesStore;
CREATE DATABASE InformationTechnologiesStore CHARACTER SET utf8;
USE InformationTechnologiesStore;

-- Aplicación de la normalización

CREATE TABLE PCInventory
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_brand_fk INT NOT NULL COMMENT "",
    id_screen_fk INT NOT NULL COMMENT "",
    id_ram_fk INT NOT NULL COMMENT "",
    id_ssd_fk INT NOT NULL COMMENT "",
    tex_modelName TEXT NOT NULL COMMENT "",
    tex_description TEXT NOT NULL COMMENT "",
    num_count INT NOT NULL COMMENT ""
);

CREATE TABLE Brand
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    tex_name VARCHAR(12) NOT NULL COMMENT "Nombre de la marca"

) COMMENT "Corresponde con los nombres de los fabricantes de las partes de las computadoras" ;


CREATE TABLE Screen
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_screenType_fk INT REFERENCES ScreenType(tex_name) COMMENT "Corresponde al tipo de pantalla",
    id_screenRatio_fk INT REFERENCES ScreenRatio(id) COMMENT "Corresponde ratio de la pantalla"
 
) COMMENT "Describen la tecnología y forma de la pantalla" ;

CREATE TABLE ScreenType
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    tex_name VARCHAR(6) NOT NULL COMMENT "Nombre de tipo de pantalla"

) COMMENT "Corresponde con los tipos de paneles y pantallas de una computadora" ;

CREATE TABLE ScreenRatio
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    num_width NUM NOT NULL COMMENT "",
    num_height NUM NOT NULL COMMENT ""

) COMMENT "" ;

CREATE TABLE RAM
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_brand_fk INT NOT NULL COMMENT "",
    num_amount SMALLINT UNSIGNED NOT NULL DEFAULT 4 COMMENT "GB",
    num_speed SMALLINT UNSIGNED NOT NULL DEFAULT 1666 COMMENT"Hrtz"

) COMMENT "" ;

CREATE TABLE SSD
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_brand_fk INT NOT NULL COMMENT "",
    id_ssdType_fk INT NOT NULL COMMENT "",
    num_amount SMALLINT UNSIGNED NOT NULL DEFAULT 256 COMMENT "GB",
    num_speed SMALLINT UNSIGNED NOT NULL DEFAULT 3 COMMENT ""

) COMMENT "" ;

CREATE TABLE SSDType
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    tex_name VARCHAR(8) NOT NULL COMMENT "",

);