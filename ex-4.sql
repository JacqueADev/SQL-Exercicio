/*Complementa a tabela DimProduct com a informação de ProductCategoryDescription. Utilize o LEFT JOIN e retorne em seu SELECT apenas as 5 colunas que considerar mais relevantes.*/

SELECT * FROM DimProduct
SELECT * FROM DimProductCategory


SELECT
	DimProduct.ProductKey as 'ID Produto',
	DimProduct.ProductName as 'nome do produto',
	DimProduct.BrandName as 'marca',
	DimProductCategory.ProductCategoryName as 'nome da categoria',
	DimProductCategory.ProductCategoryDescription as 'descrição de categoria'
FROM
	DimProduct
LEFT JOIN DimProductSubcategory
ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
	LEFT JOIN DimProductCategory
	ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey