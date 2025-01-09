/*2. Você precisa fazer uma análise de vendas por produtos. O objetivo final é descobrir o valor total vendido (SalesAmount) por produto (ProductKey).
a) A tabela final deverá estar ordenada de acordo com a quantidade vendida e, além disso, mostrar apenas os produtos que tiveram um resultado final de vendas maior do que $5.000.000.
b) Faça uma adaptação no exercício anterior e mostre os Top 10 produtos com mais vendas. Desconsidere o filtro de $5.000.000 aplicado.*/

select TOP (100) * from FactSales

-- a

select
	ProductKey as 'id',
	SUM (SalesAmount)as 'total vendido'
from 
	FactSales
Group By ProductKey
having SUM(SalesAmount) >= 5000000
Order By SUM (SalesAmount) 

--b

select TOP(10)
	ProductKey as 'id',
	SUM (SalesAmount)as 'total vendido'
from 
	FactSales
Group By ProductKey
Order By SUM (SalesAmount) DESC