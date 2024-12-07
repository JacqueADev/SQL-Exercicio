/*Você foi alocado para criar um relatório das lojas registradas atualmente na Contoso.
a) Descubra quantas lojas a empresa tem no total. Na consulta que você deverá fazer à tabela DimStore, retorne as seguintes informações: StoreName, OpenDate, EmployeeCount
b) Renomeeie as colunas anteriores para deixar a sua consulta mais intuitiva.
c) Dessas lojas, descubra quantas (e quais) lojas ainda estão ativas.*/

SELECT DISTINCT
	StoreName AS 'Nome da loja',
	OpenDate AS 'Data de abertura',
	EmployeeCount AS 'Número de funcionários',
	Status AS 'Ativo',
	StoreType AS 'Tipo'
FROM
	DimStore
WHERE
	Status = 'On' AND StoreType = 'Store'