/*3. a) Você deve fazer uma consulta à tabela FactOnlineSales e descobrir qual é o ID (CustomerKey) do cliente que mais realizou compras online (de acordo com a coluna SalesQuantity).
b) Feito isso, faça um agrupamento de total vendido (SalesQuantity) por ID do produto e descubra quais foram os top 3 produtos mais comprados pelo cliente da letra a).*/

select top (100) * from FactOnlineSales

--a
select top(1)
	CustomerKey as 'id',
	SUM (SalesQuantity) as 'qtd vendida'
from
	FactOnlineSales
Group By CustomerKey
Order By SUM(SalesQuantity) desc

--b (ID do cliente que mais comproou 19037)

select TOP(3)
	ProductKey as 'id produto',
	SUM (SalesQuantity) as 'total vendido por produto'
from
	FactOnlineSales
Where CustomerKey = 19037
Group By ProductKey
Order By SUM (SalesQuantity) desc