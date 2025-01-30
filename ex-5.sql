/*A tabela FactStrategyPlan resume o planejamento estratégico da empresa. Cada linha representa um montante destinado a uma determinada AccountKey.
a)
Faça um SELECT das 100 primeiras linhas de FactStrategyPlan para reconhecer a tabela.
b)
Faça um INNER JOIN para criar uma tabela contendo o AccountName para cada AccountKey da tabela FactStrategyPlan. O seu SELECT final deve conter as colunas:
StrategyPlanKey
DateKey
AccountName
Amount*/

-- a
SELECT TOP (100) * FROM FactStrategyPlan
SELECT * FROM DimAccount

--b
SELECT
	FactStrategyPlan.StrategyPlanKey as 'ID plan',
	FactStrategyPlan.Datekey as 'Data',
	DimAccount.AccountName as 'Nome',
	FactStrategyPlan.Amount as 'Montante'
FROM
	FactStrategyPlan
INNER JOIN DimAccount
ON FactStrategyPl