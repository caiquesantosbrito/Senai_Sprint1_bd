--DML

INSERT INTO Estilos (Estilo)
VALUES ('Indie'), ('Folk'), ('Pagode');

INSERT INTO Usuarios (Nome, Email, Senha, Permissao)
VALUES ('Frederico', 'Fred@gmail.com', '12345678', 'comum'), ('Administrador', 'Adm@optus.com', '12345678', 'administrador');

INSERT INTO Artistas (Nome)
VALUES ('Alberto'), ('Bernardo');

INSERT INTO Albuns (idArtista, Titulo, DataLancamento, Localizacao, Duracao, Disponibilidade)
VALUES (1, 'Musicas para dormir', '01/01/2020', 'SP', '2:31', 'Disponivel'), (1, 'Acorda', '01/02/2020', 'RJ', '3:00', 'Indisponivel'), (2, 'Pagode 2020', '01/01/2020', 'SP', '02:00', 'Disponivel');

INSERT INTO EstilosAlbuns (idAlbum, idEstilo)
VALUES (1, 1), (1, 2), (2, 2), (3, 3);