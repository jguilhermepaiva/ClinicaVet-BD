-- Lista o número total de produtos oferecidos para cada tipo e marca | SUBCONSULTA DO TIPO ESCALAR 
SELECT tipo, marca, (SELECT COUNT(*) 
FROM oferecem 
WHERE CODPRODUTO = produto.CODPRODUTO) as numero_total_produtos_oferecidos
FROM produto;

-- Lista dos clientes que possuem pelo menos um animal em sua posse e a lista dos animais que eles possuem | SUBCONSULTA DO TIPO TABELA
SELECT c.nome, c.cep, c.CPF, a.CODANIMAL as cod_animal, a.nome as nome_animal
FROM cliente c
INNER JOIN (
    SELECT CPF, CODANIMAL, NOME
    FROM animal
) a
ON c.CPF = a.CPF;

-- Lista os produtos que são oferecidos pelo menos 2 vezes | JUNÇÃO INTERNA (INNER JOIN)
SELECT produto.tipo, produto.marca
FROM produto
INNER JOIN oferecem
ON produto.CODPRODUTO = oferecem.CODPRODUTO
GROUP BY produto.tipo, produto.marca
HAVING COUNT(*) >= 2;

--- JUNÇÃO EXTERNA (OUTER JOIN) --- 

-- Lista de todos os animais e seus proprietários, mesmo que alguns animais não tenham um proprietário associado (LEFT OUTER JOIN)
SELECT a.nome as nome_animal, c.nome as nome_cliente
FROM animal a
LEFT OUTER JOIN cliente c
ON a.CPF = c.CPF;

-- Lista de todos os funcionários que possuem uma graduação universitária e suas informações de emprego correspondentes, mesmo que alguns funcionários não tenham uma correspondência na tabela "empregado" (RIGHT OUTER JOIN)
SELECT e.nome as nome_empregado, e.chefe, e.salario, g.diploma, g.funcao
FROM empregado e
RIGHT OUTER JOIN graduado g
ON e.CODEMPREGADO = g.CODEMPREGADO;

-- Lista de todas as clínicas e seus funcionários correspondentes, incluindo as clínicas que não possuem funcionários e os funcionários que não estão atribuídos a uma clínica específica (FULL OUTER JOIN)
SELECT c.nome as nome_clinica, c.localizacao, e.nome as nome_empregado
FROM clinica c
FULL OUTER JOIN empregado e
ON c.CNPJ = e.CNPJ;

---