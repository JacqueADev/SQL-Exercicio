/*Utilize o INNER JOIN para trazer os nomes das subcategorias dos produtos, da tabela 
DimProductSubcategory para a tabela DimProduct.*/

SELECT * FROM DimProduct
SELECT * FROM DimProductSubcategory

SELECT
	DimProduct.ProductName as 'Nome produto',
	DimProduct.ProductDescription as 'Descrição produto',
	DimProductSubcategory.ProductSubcategoryDescription as 'Descrição da subcategoria'
FROM
	DimProduct
INNER JOIN DimProductSubcategory
	ON  DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey