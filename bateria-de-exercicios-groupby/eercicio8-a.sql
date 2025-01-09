/*8. Faça um agrupamento para descobrir a quantidade total de clientes e a média salarial de acordo com o seu nível escolar. Utilize a coluna Education da tabela DimCustomer para fazer esse agrupamento.*/

SELECT * FROM DimCustomer

SELECT
	Education as 'nivel escolar',
	COUNT(CustomerKey) as 'Total de clientes',
	AVG(YearlyIncome) as 'Média salarial'
FROM
	DimCustomer
WHERE Education IS NOT NULL
GROUP BY Education