--DQL

USE SENAI_HROADS_TARDE;

SELECT * FROM Personagens;

SELECT * FROM Classes;

SELECT NomeClasse FROM Classes;

SELECT * FROM Habilidades;

SELECT COUNT (IdHabilidade) AS QuantHabilidades FROM Habilidades;

SELECT IdHabilidade FROM Habilidades ORDER BY IdHabilidade;

SELECT NomeHabilidade FROM Habilidades;

SELECT Habilidades.NomeHabilidade, TipoHabilidade.QualTipoHabilidade
FROM Habilidades
LEFT JOIN TipoHabilidade
ON Habilidades.IdTipoHabilidade = TipoHabilidade.IdTipoHabilidade;

SELECT Personagens.Nome, Classes.NomeClasse
FROM Personagens
LEFT JOIN Classes
ON Personagens.IdClasse = Classes.IdClasse;

SELECT Personagens.Nome, Classes.NomeClasse
FROM Personagens
RIGHT JOIN Classes
ON Personagens.IdClasse = Classes.IdClasse

SELECT Classes.NomeClasse, Habilidades.NomeHabilidade
FROM ClasseHabilidade
INNER JOIN Classes
ON ClasseHabilidade.IdClasse = Classes.IdClasse
INNER JOIN Habilidades
ON ClasseHabilidade.IdHabilidade = Habilidades.IdHabilidade

SELECT Habilidades.NomeHabilidade, Classes.NomeClasse
FROM ClasseHabilidade
INNER JOIN Habilidades
ON ClasseHabilidade.IdHabilidade = Habilidades.IdHabilidade
INNER JOIN Classes
ON ClasseHabilidade.IdClasse = Classes.IdClasse

SELECT Habilidades.NomeHabilidade, Classes.NomeClasse
FROM ClasseHabilidade
FULL OUTER JOIN Habilidades
ON ClasseHabilidade.IdHabilidade = Habilidades.IdHabilidade
FULL OUTER JOIN Classes
ON ClasseHabilidade.IdClasse = Classes.IdClasse