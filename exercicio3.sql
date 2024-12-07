/*De acordo com a quantidade de funcionários, cada loja receberá uma determinada quantidade de máquinas de café. As lojas serão divididas em 3 categorias:
CATEGORIA 1: De 1 a 20 funcionários -> 1 máquina de café
CATEGORIA 2: De 21 a 50 funcionários -> 2 máquinas de café
CATEGORIA 3: Acima de 51 funcionários -> 3 máquinas de café
Identifique, para cada caso, quais são as lojas de cada uma das 3 categorias acima (basta fazer uma verificação).*/

SELECT * FROM DimStore

SELECT
	StoreName,
	EmployeeCount
FROM
	DimStore
WHERE EmployeeCount BETWEEN 1 AND 20
ORDER BY EmployeeCount  -- de 1 a 20: 75 lojas

SELECT
	StoreName,
	EmployeeCount
FROM
	DimStore
WHERE EmployeeCount BETWEEN 21 AND 50
ORDER BY EmployeeCount  -- de 21 a 50: 187 lojas

SELECT
	StoreName,
	EmployeeCount
FROM
	DimStore
WHERE EmployeeCount >=  51
ORDER BY EmployeeCount  --acima de 51: 43 lojas