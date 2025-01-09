/*4. a) Faça um agrupamento e descubra a quantidade total de produtos por marca.
b) Determine a média do preço unitário (UnitPrice) para cada ClassName.
c) Faça um agrupamento de cores e descubra o peso total que cada cor de produto possui.*/


SELECT TOP(100) * FROM DimProduct

--a

SELECT
	BrandName as 'Nome da marca',
	COUNT (BrandName) as 'ID'
FROM	
	DimProduct
GROUP BY BrandName

--b
SELECT
	ClassName as 'classe de produto',
	AVG(UnitPrice) as 'média de preço'
FROM	
	DimProduct
GROUP BY ClassName

--c
SELECT
	ColorName as 'cor de produto',
	SUM(Weight) as 'peso'
FROM	
	DimProduct
GROUP BY ColorName