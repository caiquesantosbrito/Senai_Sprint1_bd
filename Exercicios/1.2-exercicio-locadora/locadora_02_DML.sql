--DML

INSERT INTO Empresas (Nome)
VALUES ('Locadora'), ('Outra Locadora');

INSERT INTO Marcas (Marca)
VALUES ('gm'), ('ford'), ('fiat');

INSERT INTO Modelos (idMarca, Modelo)
VALUES (1, 'Onix'), (2, 'Fiesta'), (3, 'Argo');

INSERT INTO Veiculos (Placa, idModelo, idEmpresa)
VALUES ('1', 1, 1), ('2', 2, 2), ('3', 3, 2);

INSERT INTO Clientes (Nome, CPF)
VALUES ('Nome', 1), ('Outro', 2);

INSERT INTO Alugueis (Placa, idCliente, Datainicio, DataTermino)
VALUES (1, 1, 01/01/2000, 03/01/2000), (2, 1, 04/01/2000, 06/01/2000), (3, 2, 01/01/2000, 06/01/2000);