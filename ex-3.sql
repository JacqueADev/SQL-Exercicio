/*Para cada loja da tabela DimStore, descubra qual o Continente e o Nome do País associados (de acordo com DimGeography). 
Seu SELECT final deve conter apenas as seguintes colunas: StoreKey, StoreName, EmployeeCount, ContinentName e RegionCountryName. Utilize o LEFT JOIN neste exercício.*/

SELECT * FROM DimGeography
SELECT * FROM DimStore

SELECT
	DimStore.StoreKey as 'ID loja',
	DimStore.StoreName as 'nome da loja',
	DimStore.EmployeeCount as 'Qtd.Funcionarios',
	DimGeography.ContinentName as 'continente',
	DimGeography.RegionCountryName as 'região'
FROM
	DimStore
	LEFT JOIN DimGeography
	ON DimStore.GeographyKey  = DimGeography.GeographyKey 