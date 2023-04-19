--- Lista o número total de produtos oferecidos para cada tipo e marca | SUBCONSULTA DO TIPO ESCALAR 
SELECT tipo, marca, (SELECT COUNT(*) 
FROM oferecem 
WHERE CODPRODUTO = produto.CODPRODUTO) as numero_total_produtos_oferecidos
FROM produto;

--- Lista os produtos que são oferecidos pelo menos 2 vezes | JUNÇÃO INTERNA (INNER JOIN)
SELECT produto.tipo, produto.marca
FROM produto
INNER JOIN oferecem
ON produto.CODPRODUTO = oferecem.CODPRODUTO
GROUP BY produto.tipo, produto.marca
HAVING COUNT(*) >= 2;

--- Lista dos clientes que possuem pelo menos um animal em sua posse e a lista dos animais que eles possuem | SUBCONSULTA DO TIPO TABELA
SELECT c.nome, c.CPF, a.CODANIMAL as cod_animal, a.nome as nome_animal
FROM cliente c
INNER JOIN (
    SELECT CPF_CLIENTE, CODANIMAL, NOME
    FROM animal
) a
ON c.CPF = a.CPF_CLIENTE;

--- JUNÇÃO EXTERNA (OUTER JOIN) --- 

--- Lista de todos os proprietários e animais, mesmo que alguns proprietário não tenham um animal associado (LEFT OUTER JOIN)
SELECT c.nome as nome_cliente, a.nome as nome_animal
FROM  cliente c
LEFT OUTER JOIN animal a
ON a.CPF_CLIENTE = c.CPF;

--- Lista de todos os funcionários que possuem uma graduação universitária e suas informações de emprego correspondentes, mesmo que alguns funcionários não tenham uma correspondência na tabela "empregado" (RIGHT OUTER JOIN)
SELECT e.nome as nome_empregado, e.salario, g.diploma, g.funcao
FROM empregado e
RIGHT OUTER JOIN graduado g
ON e.CPF = g.CPF_EMPREGADO;

--- Lista de todas as clínicas e seus funcionários correspondentes, incluindo as clínicas que não possuem funcionários. (FULL OUTER JOIN)
SELECT c.nome as nome_clinica, e.nome as nome_empregado
FROM clinica c
FULL OUTER JOIN empregado e
ON c.CNPJ = e.CNPJ_CLINICA;

-------

--- Lista os serviços oferecidos pela loja com ID específico | SEMI JOIN
SELECT *
FROM servico 
WHERE CODSERVICO IN (
   SELECT CODSERVICO
   FROM oferecem
   WHERE CODLOJA = 'L000000005'
);

--- Lista dos clientes que não contrataram nada | ANTI JOIN
SELECT cliente.nome,
FROM cliente
LEFT JOIN contratam ON cliente.CPF = contratam.CPF_CLIENTE
WHERE contratam.CPF_CLIENTE IS NULL;

--- Lista das Clinicas que possuem 2 ou mais funcionários | GROUP BY
SELECT C.NOME, COUNT(*)
FROM CLINICA C INNER JOIN EMPREGADO E
ON C.CNPJ = E.CNPJ_CLINICA
GROUP BY C.NOME
HAVING COUNT(*) > 1;

--- Lista dos clientes que também são empregados na clinica | INTERSECT OPERAÇÃO DE CONJUNTO
SELECT NOME as CLIENTE_EMPREGADO
FROM CLIENTE
INTERSECT
SELECT NOME
FROM EMPREGADO;

--- Lista das lojas correspondentes onde os produtos são oferecidos | SUBCONSULTA DO TIPO LINHA
SELECT CODPRODUTO, CODLOJA, DATASERVICO,
(SELECT VALORUNITARIO
FROM produto 
WHERE CODPRODUTO = oferecem.CODPRODUTO)
AS preco_unitario
FROM oferecem;

--- Lista dos telefones de cada cliente
SELECT C.NOME, T.*
FROM CLIENTE C, TABLE(C.TELEFONES) T;

--- Consultando os numeros de telefone do cliente de CPF '35925740105'
SELECT *
FROM TABLE(
    SELECT C.TELEFONES
    FROM CLIENTE C
    WHERE CPF = '35925740105'
);

--- Consultando o endereço do cliente de nome 'João da Silva Santos'
SELECT E.nome as NOME_DO_EMPREGADO, DEREF(E.CHEFE).nome as NOME_DO_CHEFE
FROM EMPREGADO E;

-- Consultando o endereço do cliente de nome 'João da Silva Santos'
DECLARE
    mb TP_CLIENTE;
BEGIN 
    SELECT VALUE(c) INTO mb FROM CLIENTE c
    WHERE c.nome = 'João da Silva Santos';
    mb.endereco.exibirEndereco();
END;

