/*Você é o gerente da área de compras e precisa criar um relatório com as TOP 100 vendas, de acordo com a quantidade vendida. 
Você precisa fazer isso em 10min pois o diretor de compras solicitou essa informação para apresentar em uma reunião.
Utilize seu conhecimento em SQL para buscar essas TOP 100 vendas, de acordo com o total vendido (SalesAmount).*/

SELECT 
	*
FROM
	FactSales --usei pra ver todas as colunas que tinha

SELECT TOP(100) --determina quantas linhas vai aparecer
	SalesKey,
	DateKey,
	SalesAmount,
	SalesQuantity --selecionei as colunas que queria
FROM
	FactSales
ORDER BY
	SalesQuantity DESC --ordenei por quantidade vendida em ordem decrescente
