-- Debido a que todo el diseño anterior fue creado en español, se debe mantener ese idioma en dicha nomenclatura.
-- Creación de la base de datos, únicamente si esta no existe.

CREATE DATABASE IF NOT EXISTS EmpresaBD;

-- Se selecciona la base de datos para su uso.
USE EmpresaBD;

-- Se crean las tablas de base de datos.
    CREATE TABLE IF NOT EXISTS Gerencia
    (id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL) 
    CHARACTER SET utf8;

    CREATE TABLE IF NOT EXISTS Departamento
    (id INT AUTO_INCREMENT PRIMARY KEY,
    id_gerencia INT NOT NULL,
    nombre VARCHAR(200) NOT NULL) 
    CHARACTER SET utf8;

    CREATE TABLE IF NOT EXISTS Usuario
    (id INT AUTO_INCREMENT PRIMARY KEY,
    id_departamento INT NOT NULL,
    nombre VARCHAR(200) NOT NULL) 
    CHARACTER SET utf8;

    CREATE TABLE IF NOT EXISTS Lista
    (id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    nombre TEXT NOT NULL,
    creacion TIMESTAMP DEFAULT NOW(),
    actualizacion TIMESTAMP DEFAULT NOW() ON UPDATE NOW(),
    estado ENUM('vigente','archivada','eliminida') DEFAULT 'vigente')
    CHARACTER SET utf8;

    CREATE TABLE IF NOT EXISTS Tarea
    (id INT AUTO_INCREMENT PRIMARY KEY,
    id_lista TEXT NOT NULL,
    descripcion TEXT NOT NULL,
    creacion TIMESTAMP DEFAULT NOW(),
    actualizacion TIMESTAMP DEFAULT NOW() ON UPDATE NOW(),
    estado ENUM('completado','no completado') DEFAULT 'no completado')
    CHARACTER SET utf8;
