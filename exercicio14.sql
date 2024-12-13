/*A área de RH está com uma nova ação para a empresa, e para isso precisa saber a quantidade
total de funcionários do sexo Masculino e do sexo Feminino.
a) Descubra essas duas informações utilizando o SQL.
b) O funcionário e a funcionária mais antigos receberão uma homenagem. Descubra as
seguintes informações de cada um deles: Nome, E-mail, Data de Contratação.
*/

select * from DimEmployee

SELECT
	Gender,
	FirstName,
	LastName,
	EmailAddress,
	StartDate
FROM
	DimEmployee
WHERE Gender = 'M' --206 func. O mais antigo é de 1996, Kim

SELECT
	Gender,
	FirstName,
	LastName,
	EmailAddress,
	StartDate
FROM
	DimEmployee
WHERE Gender = 'F' --87 func Terry, de 1998


--Ao invez de usar o Order by para descobrir o maiis velho e nevalha na empresa,  usei apenas a observação devido a coluna estar ordenada do mais antigo para o mais novo.