/*Agora você precisa fazer uma análise dos produtos. Será necessário descobrir as seguintes informações:
a) Quantidade distinta de cores de produtos.
b) Quantidade distinta de marcas
c) Quantidade distinta de classes de produto
Para simplificar, você pode fazer isso em uma mesma consulta.*/


SELECT * FROM DimProduct
--a


SELECT
	ColorName as 'cores'
FROM
	DimProduct


SELECT
	COUNT(DISTINCT ColorName)
FROM
	DimProduct --16 cores (eu também poderia ter usado o distinct simples ao invez do count e verificar o número)


--b
SELECT
	COUNT(DISTINCT BrandName)
FROM
	DimProduct --11 marcas


--c
SELECT
	COUNT(DISTINCT ClassName)
FROM
	DimProduct --3 classes



--PARA FAZER ISSO NA MESMA  CONSULTA:

SELECT
	COUNT(DISTINCT ColorName) as 'cores',
	COUNT(DISTINCT BrandName) as 'marca',
	COUNT(DISTINCT ClassName) as 'classe'
	
FROM
	DimProduct 

