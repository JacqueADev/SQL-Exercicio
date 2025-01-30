/*Identifique uma coluna em comum entre as tabelas DimProductSubcategory e DimProductCategory. Utilize essa coluna para complementar informações na tabela DimProductSubcategory a partir da DimProductCategory. Utilize o LEFT JOIN.*/


SELECT * FROM DimProductCategory
SELECT * FROM DimProductSubcategory --em comum: productcategorykey

SELECT
	DimProductCategory.ProductCategoryKey as 'Chave de categoria',
	DimProductCategory.ProductCategoryName as 'Nome da categoria',
	DimProductSubcategory.ProductSubcategoryName as 'Nome da subcategoria',
	DimProductSubcategory.ProductSubcategoryKey as 'chave de subcategoria'
FROM
	DimProductSubcategory
	LEFT JOIN DimProductCategory
	ON DimProductCategory.ProductCategoryKey = DimProductSubcategory.ProductCategoryKey