/*Você precisará fazer uma análise da quantidade de funcionários das lojas registradas na
empresa. O seu gerente te pediu os seguintes números e informações:
a) Quantos funcionários tem a loja com mais funcionários?
b) Qual é o nome dessa loja?
c) Quantos funcionários tem a loja com menos funcionários?
d) Qual é o nome dessa loja?
*/

Select * from DimStore

--a
SELECT
	MAX(EmployeeCount)
FROM
	DimStore --325

--b
SELECT
	StoreName
FROM
	DimStore
WHERE EmployeeCount = '325' --Contoso North America Online Store


--c
SELECT
	MIN(EmployeeCount)
FROM
	DimStore --7

--d
SELECT
	StoreName
FROM
	DimStore
WHERE EmployeeCount = '7' --Contoso Europe Online Store
