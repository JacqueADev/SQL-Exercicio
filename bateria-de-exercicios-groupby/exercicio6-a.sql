/*Você seria capaz de confirmar se todas as marcas dos produtos possuem à disposição todas as 16 opções de cores?*/

SELECT TOP(100) * FROM DimProduct

SELECT DISTINCT ColorName FROM DimProduct

--queremos listar todas as marcas e listar todas as cores distintas que temos de cores
SELECT
	BrandName,
	COUNT (DISTINCT ColorName) 
FROM
	DimProduct
GROUP BY BrandName

--Para saber quais as cores distintas por marca

SELECT
	DISTINCT ColorName
FROM
	DimProduct
WHERE BrandName = 'Adventure Works' --ir trocando o nome das marcas