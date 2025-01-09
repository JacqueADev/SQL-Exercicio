/*5. Você deverá descobrir o peso total para cada tipo de produto (StockTypeName).
A tabela final deve considerar apenas a marca ‘Contoso’ e ter os seus valores classificados em ordem decrescente.*/

SELECT TOP(100) * FROM DimProduct


SELECT 
	StockTypeName as 'tipo de estoque',
	SUM(Weight) as 'peso'
FROM
	DimProduct
WHERE BrandName = 'Contoso'
GROUP BY StockTypeName 
ORDER BY SUM(Weight) DESC