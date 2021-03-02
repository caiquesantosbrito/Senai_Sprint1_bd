--DDL

CREATE DATABASE Optus;

USE Optus;

CREATE TABLE Estilos
(
	idEstilo		INT PRIMARY KEY IDENTITY,
	Estilo			VARCHAR(200)
);
CREATE TABLE Usuarios
(
	idUsuario		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(200),
	Email			VARCHAR(200),
	Senha			VARCHAR(200),
	Permissao		VARCHAR(200)
);
CREATE TABLE Artistas
(
	idArtista		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(200)
);
CREATE TABLE Albuns
(
	idAlbum			INT PRIMARY KEY IDENTITY,
	idArtista		INT FOREIGN KEY REFERENCES Artistas(idArtista),
	Titulo			VARCHAR(200),
	DataLancamento	DATE,
	Localizacao		VARCHAR(200),
	Duracao			VARCHAR(200),
	Disponibilidade	VARCHAR(200)
);
CREATE TABLE EstilosAlbuns
(
	idAlbum			INT FOREIGN KEY REFERENCES Albuns(idAlbum),
	idEstilo		INT FOREIGN KEY REFERENCES Estilos(idEstilo)
);