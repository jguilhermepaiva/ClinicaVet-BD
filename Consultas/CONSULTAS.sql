-- Retornando o número total de produtos oferecidos para cada tipo e marca | SUBCONSULTA DO TIPO ESCALAR 
SELECT tipo, marca, (SELECT COUNT(*) 
FROM oferecem 
WHERE CODPRODUTO = produto.CODPRODUTO) as numero_total_produtos_oferecidos
FROM produto;

-- Retornando os produtos que são oferecidos pelo menos 2 vezes | JUNÇÃO INTERNA (INNER JOIN)
SELECT produto.tipo, produto.marca
FROM produto
INNER JOIN oferecem
ON produto.CODPRODUTO = oferecem.CODPRODUTO
GROUP BY produto.tipo, produto.marca
HAVING COUNT(*) >= 2;

-- Lista dos clientes que possuem pelo menos um animal em sua posse e a lista dos animais que eles possuem | SUBCONSULTA DO TIPO TABELA
SELECT c.nome, c.cep, c.CPF, a.CODANIMAL as cod_animal, a.nome as nome_animal
FROM cliente c
INNER JOIN (
    SELECT CPF, CODANIMAL, NOME
    FROM animal
) a
ON c.CPF = a.CPF;