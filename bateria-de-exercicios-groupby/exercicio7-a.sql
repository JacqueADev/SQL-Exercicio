/*7. Faça um agrupamento para saber o total de clientes de acordo com o Sexo e também a média salarial de acordo com o Sexo. Corrija qualquer resultado “inesperado” com os seus conhecimentos em SQL.*/

SELECT * FROM DimCustomer

SELECT
 Gender as 'sexo',
 COUNT (Gender) as 'total por gênero',
 AVG(YearlyIncome) as 'Média salarial por gênero'
FROM
	DimCustomer
WHERE Gender IS NOT NULL --desconsidera as linhas null referente a empresas
Group BY Gender