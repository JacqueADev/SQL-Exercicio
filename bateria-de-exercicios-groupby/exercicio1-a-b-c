/*1. a) Faça um resumo da quantidade vendida (SalesQuantity) de acordo com o canal de vendas (channelkey).
b) Faça um agrupamento mostrando a quantidade total vendida (SalesQuantity) e quantidade total devolvida (Return Quantity) de acordo com o ID das lojas (StoreKey).
c) Faça um resumo do valor total vendido (SalesAmount) para cada canal de venda, mas apenas para o ano de 2007.*/


select TOP(100) * from FactSales


--a

select 
	channelKey,
	SUM (SalesQuantity) as 'total de vendas por canal'
from
	FactSales
Group By channelKey

--b

select
	StoreKey,
	SUM(SalesQuantity) as 'vendido',
	SUM(ReturnQuantity) as 'devolvido'
from
	FactSales
Group By StoreKey

--c

select
	channelKey,
	SUM(SalesAmount) as 'total vendido'
from
	FactSales
where DateKey between '20070101' and '20071231'
Group By channelKey