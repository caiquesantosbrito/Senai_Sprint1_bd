
-- Função Escalar (Retorna 1 Valor)
CREATE FUNCTION SomarVidaMana(
	@IDPersonagem INT
)
RETURNS DECIMAL(7,2)
AS
	BEGIN
		DECLARE @SomaVidaMana AS DECIMAL(7,2)
		SET @SomaVidaMana = (SELECT CapMaxVida + CapMaxMana FROM dbo.Personagens
			WHERE idPersonagem = @IDPersonagem)
		RETURN @SomaVidaMana
	END
SELECT	FuncaoTeste = dbo.SomarVidaMana(2)

		
CREATE FUNCTION SomarDoisValores(
	@valor1 INT,
	@valor2 INT
)
RETURNS INT
AS 
	BEGIN
		DECLARE @soma AS INT
		SET @soma = @valor1 + @valor2
		RETURN @soma
	END

SELECT Soma = dbo.SomarDoisValores(3, 5)

-- Função Inline (serve para VISUALIZAÇÃO)
CREATE FUNCTION InlineTest (
	@IDPersonagem INT
)
RETURNS TABLE
AS
RETURN
(
	SELECT Classes.Classe, Personagens.Nome, Personagens.CapMaxVida
	FROM Classes
	INNER JOIN Personagens ON @IDPersonagem = Personagens.idPersonagem
);
SELECT * FROM dbo.InlineTest(3)

-- Função Multi-Statement
CREATE FUNCTION ClassificacaoPersonagens(
	@IDPersonagem INT,
	@Vida DECIMAL(7,2)
)
RETURNS @TabelaPersonagem TABLE(Nome VARCHAR(50), Vida DECIMAL(7,2), NivelForca VARCHAR(50))
AS
	BEGIN
		IF @Vida>80
			INSERT INTO @TabelaPersonagem
				SELECT Nome, CASE WHEN 	CapMaxVida>80 THEN @TabelaPersonagem.NivelForca = 'Fraco'
				ELSE @TabelaPersonagem.NivelForca = 'Forte' END FROM dbo.Personagens WHERE idPersonagem = @IDPersonagem
	RETURN
END
				
