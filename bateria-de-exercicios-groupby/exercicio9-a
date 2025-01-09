/*9. Faça uma tabela resumo mostrando a quantidade total de funcionários de acordo com o Departamento (DepartmentName). Importante: Você deverá considerar apenas os funcionários ativos.*/

SELECT * FROM DimEmployee

SELECT
	DepartmentName as 'nome do departamento',
	COUNT (DepartmentName) as 'total de funcionários'
FROM
	DimEmployee
WHERE Status = 'Current'
GROUP BY DepartmentName 

