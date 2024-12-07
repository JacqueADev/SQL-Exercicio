/*O gerente da área de controle de qualidade notificou à Contoso que todos os produtos Home Theater da marca Litware,
disponibilizados para venda no dia 15 de março de 2009, foram identificados com defeitos de fábrica.
O que você deverá fazer é identificar os ID’s desses produtos e repassar ao gerente para que ele possa notificar as lojas
e consequentemente solicitar a suspensão das vendas desses produtos.*/

SELECT * from DimProduct

SELECT
	ProductKey AS 'ID',
	ProductName as 'nome do produto',
	BrandName as 'Marca',
	AvailableForSaleDate as 'Disponibilizado em:'
FROM
	DimProduct
WHERE BrandName = 'LitWare' AND ProductName LIKE '%Home Theater%' AND AvailableForSaleDate = '20090315'
--Quando temos uma coluna com date time, não funciona colocar 'yyyy-mm-dd' mas temos que: tirar os traços entre mês dia e ano
