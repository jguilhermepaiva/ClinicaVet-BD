-- POVOAMENTO DE CLIENTES

INSERT INTO CLIENTE VALUES ('Tânia Dias Oliveira','85983960601', tp_endereco('24743-690', 'Rua Augusto Melo', '89', 'Recife'), tp_telefones(tp_telefone('(19)78456-2145'), tp_telefone('(19)78456-2146'), tp_telefone('(19)78456-2147')));
INSERT INTO CLIENTE VALUES ('João da Silva Santos', '75278960302', tp_endereco('11013-330', 'Rua Conselheiro Rodrigues Alves', '135', 'Santos'), tp_telefones(tp_telefone('(13)1234-5678'), tp_telefone('(13)9876-5432')));
INSERT INTO CLIENTE VALUES ('Luana Sousa Oliveira','35925740105',  tp_endereco('88025-001', 'Rua João Pio Duarte Silva', '234', 'Florianópolis'), tp_telefones(tp_telefone('(48)3214-5678'), tp_telefone('(48)9876-4321')));
INSERT INTO CLIENTE VALUES ('Pedro Henrique Rocha', '54817680910', tp_endereco('31030-270', 'Rua Diamantina', '42', 'Belo Horizonte'), tp_telefones(tp_telefone('(31)3245-6789'), tp_telefone('(31)9876-5432'), tp_telefone('(31)9215-6478')));
INSERT INTO CLIENTE VALUES ('Mariana Lima Santos', '95180220707', tp_endereco('60170-051', 'Rua Osvaldo Cruz', '67', 'Fortaleza'), tp_telefones(tp_telefone('(85)3874-1234'), tp_telefone('(85)9867-4321')));
INSERT INTO CLIENTE VALUES ( 'Fernando Silva Carvalho', '11498702315',tp_endereco('40170-010', 'Avenida Antônio Carlos Magalhães', '157', 'Salvador'), tp_telefones(tp_telefone('(71)3267-8901'), tp_telefone('(71)9876-5432')));
INSERT INTO CLIENTE VALUES ('Ana Luíza Oliveira','12345678900',  tp_endereco('40310-010', 'Rua Castro Alves', '123', 'Salvador'), tp_telefones(tp_telefone('(71)9999-8888'), tp_telefone('(71)5555-4444')));
INSERT INTO CLIENTE VALUES ('Marcos Pereira', '78965432199', tp_endereco('01310-100', 'Avenida Paulista', '456', 'São Paulo'), tp_telefones(tp_telefone('(11)7777-2222')));
INSERT INTO CLIENTE VALUES ( 'Juliana Almeida', '11122233344',tp_endereco('80060-240', 'Rua José Bonifácio', '789', 'Curitiba'), tp_telefones(tp_telefone('(41)1111-2222'), tp_telefone('(41)3333-4444'), tp_telefone('(41)5555-6666')));

-- POVOAMENTO DE ANIMAIS

INSERT INTO ANIMAL VALUES ('A000000001', '85983960601', 'Bolinha', 'Poodle', 'M', TO_DATE('2018-05-01', 'YYYY-MM-DD'));
INSERT INTO ANIMAL VALUES ('A000000002', '75278960302', 'Nina', 'Vira-lata', 'F', TO_DATE('2019-01-10', 'YYYY-MM-DD'));
INSERT INTO ANIMAL VALUES ('A000000003', '35925740105', 'Thor', 'Golden Retriever', 'M', TO_DATE('2020-06-15', 'YYYY-MM-DD'));
INSERT INTO ANIMAL VALUES ('A000000004', '54817680910', 'Lila', 'Shih-tzu', 'F', TO_DATE('2017-11-23', 'YYYY-MM-DD'));
INSERT INTO ANIMAL VALUES ('A000000005', '95180220707', 'Mel', 'Labrador', 'F', TO_DATE('2016-12-10', 'YYYY-MM-DD'));
INSERT INTO ANIMAL VALUES ('A000000006', '11498702315', 'Boby', 'Buldogue', 'M', TO_DATE('2019-03-22', 'YYYY-MM-DD'));
INSERT INTO ANIMAL VALUES ('A000000007', '12345678900', 'Billy', 'Beagle', 'M', TO_DATE('2015-09-05', 'YYYY-MM-DD'));
INSERT INTO ANIMAL VALUES ('A000000008', '78965432199', 'Sophie', 'Lhasa Apso', 'F', TO_DATE('2018-10-18', 'YYYY-MM-DD'));
INSERT INTO ANIMAL VALUES ('A000000009', '11122233344', 'Rex', 'Dálmata', 'M', TO_DATE('2021-01-30', 'YYYY-MM-DD'));


-- POVOAMENTO DE CLINICAS 

INSERT INTO CLINICA VALUES ('12345678901234', 'Teste', tp_endereco('54743-690', 'R4a Augusto Melo', '89', 'Recife'));
INSERT INTO CLINICA VALUES ('12345678901235', 'Clínica Popular', tp_endereco('88010-410', 'Rua da Praia', '456', 'Florianópolis'));
INSERT INTO CLINICA VALUES ('12345678901236', 'Clínica da Família', tp_endereco('30110-000', 'Avenida das Flores', '789', 'Belo Horizonte'));
INSERT INTO CLINICA VALUES ('12345678901237', 'Clínica São Francisco', tp_endereco('13020-150', 'Rua das Palmeiras', '321', 'Campinas'));
INSERT INTO CLINICA VALUES ('12345678901238', 'Clínica Vida Saudável', tp_endereco('04050-001', 'Rua dos Girassóis', '555', 'São Paulo'));
INSERT INTO CLINICA VALUES ('12345678901239', 'Clínica do Coração', tp_endereco('58013-040', 'Avenida Central', '777', 'João Pessoa'));
INSERT INTO CLINICA VALUES ('12345678901240', 'Clínica Bem Estar', tp_endereco('79020-210', 'Rua dos Ipês', '222', 'Campo Grande'));
INSERT INTO CLINICA VALUES ('12345678901241', 'Clínica Sorriso Perfeito', tp_endereco('22290-240', 'Avenida da Praia', '123', 'Rio de Janeiro'));
INSERT INTO CLINICA VALUES ('12345678901243', 'Clínica da felicidade', tp_endereco('15000-000', 'Avenida das Magnólias', '789', 'São José do Rio Preto'));


-- POVOAMENTO DE DESCONTOS

INSERT INTO DESCONTO VALUES ('DESC10', 10.00);
INSERT INTO DESCONTO VALUES ('DESC15', 15.00);
INSERT INTO DESCONTO VALUES ('DESC20', 20.00);
INSERT INTO DESCONTO VALUES ('DESC25', 25.00);
INSERT INTO DESCONTO VALUES ('DESC30', 30.00);
INSERT INTO DESCONTO VALUES ('DESC35', 35.00);
INSERT INTO DESCONTO VALUES ('DESC40', 40.00);
INSERT INTO DESCONTO VALUES ('DESC45', 45.00);
INSERT INTO DESCONTO VALUES ('DESC50', 50.00);

-- POVAMENTO DE CONTRATAM

INSERT INTO CONTRATAM VALUES ('85983960601', '12345678901234', 'DESC10');
INSERT INTO CONTRATAM VALUES ('75278960302', '12345678901235', 'DESC15');
INSERT INTO CONTRATAM VALUES ('35925740105', '12345678901236', 'DESC20');
INSERT INTO CONTRATAM VALUES ('54817680910', '12345678901237', 'DESC50');
INSERT INTO CONTRATAM VALUES ('95180220707', '12345678901238', 'DESC30');
INSERT INTO CONTRATAM VALUES ('11498702315', '12345678901234', 'DESC10');
INSERT INTO CONTRATAM VALUES ('12345678900', '12345678901239', 'DESC40');
INSERT INTO CONTRATAM VALUES ('78965432199', '12345678901240', 'DESC20');
INSERT INTO CONTRATAM VALUES ('11122233344', '12345678901234', 'DESC30');

-- POVOAMENTO DE EMPREGADOS

INSERT INTO EMPREGADO VALUES ('Ana', '98765432101', tp_endereco('04828-010', 'Rua Carlos Caldeira Filho', '45', 'São Paulo'), '12345678901234', 3500, tp_telefones(tp_telefone('(11)94567-8912')), NULL);
INSERT INTO EMPREGADO VALUES ('Pedro', '12345678902', tp_endereco('04108-041', 'Rua Américo Brasiliense', '320', 'São Paulo'), '12345678901235', 2800, tp_telefones(tp_telefone('(11)98567-1234')), NULL);
INSERT INTO EMPREGADO VALUES ('Maria', '34567891234', tp_endereco('30140-080', 'Rua dos Guajajaras', '1000', 'Belo Horizonte'), '12345678901236', 4000, tp_telefones(tp_telefone('(31)98765-4321')), NULL);
INSERT INTO EMPREGADO VALUES ('Luiz', '23456789102', tp_endereco('88010-300', 'Rua dos Ilhéus', '85', 'Florianópolis'), '12345678901237', 3200, tp_telefones(tp_telefone('(48)98876-5432')), NULL);
INSERT INTO EMPREGADO VALUES ('Lorena', '09876543210', tp_endereco('04567-123', 'Rua Augusta', '450', 'São Paulo'), '12345678901238', 3500.00, tp_telefones(tp_telefone('(11)94567-8912')), (SELECT REF(E) FROM EMPREGADO E WHERE CPF = '12345678912'));
INSERT INTO EMPREGADO VALUES ('Rafael', '23456789101', tp_endereco('30110-021', 'Rua da Bahia', '1000', 'Belo Horizonte'), '12345678901239', 2800.00, tp_telefones(tp_telefone('(31)98567-1234')), (SELECT REF(E) FROM EMPREGADO E WHERE CPF = '12345678913'));
INSERT INTO EMPREGADO VALUES ('Carla', '34567891235', tp_endereco('88010-301', 'Avenida Beira Mar', '150', 'Florianópolis'), '12345678901240', 4000.00, tp_telefones(tp_telefone('(48)98876-5432')), (SELECT REF(E) FROM EMPREGADO E WHERE CPF = '12345678914'));
INSERT INTO EMPREGADO VALUES ('Renato', '45678912302', tp_endereco('22220-030', 'Rua Visconde de Pirajá', '500', 'Rio de Janeiro'), '12345678901241', 3200.00, tp_telefones(tp_telefone('(21)99765-4321')), (SELECT REF(E) FROM EMPREGADO E WHERE CPF = '12345678915'));
INSERT INTO EMPREGADO VALUES ('Gabriela', '56789123406', tp_endereco('04108-042', 'Rua Américo Brasiliense', '250', 'São Paulo'), '12345678901243', 5000.00, tp_telefones(tp_telefone('(11)98876-5432')), (SELECT REF(E) FROM EMPREGADO E WHERE CPF = '12345678916'));

-- POVOAMENTO DE GRADUADO

INSERT INTO GRADUADO VALUES ('23456789101', 'Bacharel em Administração', 'Gerente Financeiro');
INSERT INTO GRADUADO VALUES ('56789123406', 'Bacharel em Medicina Veterinária', 'Médico Platonista');
INSERT INTO GRADUADO VALUES ('45678912302', 'Bacharel em Medicina Veterinária', 'Cirurgião Veterinário');
INSERT INTO GRADUADO VALUES ('09876543210', 'Bacharel em Marketing', 'Marketing da Clínica');


-- POVOAMENTO DE TECNICO

INSERT INTO TECNICO VALUES ('23456789101', 'Técnico de Enfermagem');
INSERT INTO TECNICO VALUES ('34567891234', 'Técnico de Radiologia');
INSERT INTO TECNICO VALUES ('12345678902', 'Técnico de Laboratório');
INSERT INTO TECNICO VALUES ('98765432101', 'Técnico de Análises Clínicas');
INSERT INTO TECNICO VALUES ('34567891234', 'Técnico de Nutrição');

-- POVOAMENTO DE LOJA

INSERT INTO LOJA VALUES ('L000000002', '12345678901243', tp_telefones(tp_telefone('(21)98765-4321')), tp_endereco('22031-072', 'Rua Vinícius de Moraes', '12', 'Rio de Janeiro'));
INSERT INTO LOJA VALUES ('L000000003', '12345678901234', tp_telefones(tp_telefone('(11)98567-1234')), tp_endereco('04005-005', 'Rua Peixoto Gomide', '707', 'São Paulo'));
INSERT INTO LOJA VALUES ('L000000004', '12345678901235', tp_telefones(tp_telefone('(81)98765-4321')), tp_endereco('50050-130', 'Rua do Sol', '300', 'Recife'));
INSERT INTO LOJA VALUES ('L000000005', '12345678901236', tp_telefones(tp_telefone('(31)98876-5432')), tp_endereco('30130-110', 'Rua dos Carijós', '150', 'Belo Horizonte'));
INSERT INTO LOJA VALUES ('L000000006', '12345678901240', tp_telefones(tp_telefone('(48)98876-5432')), tp_endereco('88062-001', 'Rodovia SC 401', '3730', 'Florianópolis'));
INSERT INTO LOJA VALUES ('L000000007', '12345678901239', tp_telefones(tp_telefone('(21)99765-4321')), tp_endereco('22430-060', 'Rua Dias Ferreira', '247', 'Rio de Janeiro'));
INSERT INTO LOJA VALUES ('L000000008', '12345678901237', tp_telefones(tp_telefone('(11)94567-8912')), tp_endereco('04581-000', 'Avenida Juscelino Kubitschek', '2041', 'São Paulo'));
INSERT INTO LOJA VALUES ('L000000009', '12345678901236', tp_telefones(tp_telefone('(81)98876-5432')), tp_endereco('51030-000', 'Avenida Boa Viagem', '1200', 'Recife'));
INSERT INTO LOJA VALUES ('L000000010', '12345678901241', tp_telefones(tp_telefone('(31)98567-1234')), tp_endereco('30330-000', 'Rua Pium-Í', '1420', 'Belo Horizonte'));

-- POVOAMENTO DE SERVICO

INSERT INTO SERVICO VALUES ('SRV001', '85983960601', TO_DATE('2023-04-17', 'YYYY-MM-DD'), 'Banho e Tosa', 50.00);
INSERT INTO SERVICO VALUES ('SRV002', '75278960302', TO_DATE('2023-04-18', 'YYYY-MM-DD'), 'Consulta', 100.00);
INSERT INTO SERVICO VALUES ('SRV003', '75278960302', TO_DATE('2023-04-19', 'YYYY-MM-DD'), 'Cirurgia', 500.00);
INSERT INTO SERVICO VALUES ('SRV004', '12345678900', TO_DATE('2023-04-20', 'YYYY-MM-DD'), 'Vacinação', 80.00);
INSERT INTO SERVICO VALUES ('SRV005', '12345678900', TO_DATE('2023-04-22', 'YYYY-MM-DD'), 'Banho e Tosa', 45.00);
INSERT INTO SERVICO VALUES ('SRV006', '11122233344', TO_DATE('2023-04-18', 'YYYY-MM-DD'), 'Consulta', 120.00);
INSERT INTO SERVICO VALUES ('SRV007', '78965432199', TO_DATE('2023-04-25', 'YYYY-MM-DD'), 'Cirurgia', 800.00);
INSERT INTO SERVICO VALUES ('SRV008', '95180220707', TO_DATE('2023-04-23', 'YYYY-MM-DD'), 'Consulta', 150.00);
INSERT INTO SERVICO VALUES ('SRV009', '95180220707', TO_DATE('2023-04-25', 'YYYY-MM-DD'), 'Vacinação', 90.00);

-- POVOAMENTO DE PRODUTO

INSERT INTO PRODUTO VALUES ('001', 'Nike', 199.99, 'Tênis');
INSERT INTO PRODUTO VALUES ('002', 'Adidas', 179.99, 'Tênis');
INSERT INTO PRODUTO VALUES ('003', 'Apple', 4999.99, 'Smartphone');
INSERT INTO PRODUTO VALUES ('004', 'Samsung', 3499.99, 'Smartphone');
INSERT INTO PRODUTO VALUES ('005', 'Sony', 2399.99, 'Smart TV');
INSERT INTO PRODUTO VALUES ('006', 'LG', 2999.99, 'Smart TV');
INSERT INTO PRODUTO VALUES ('007', 'Arno', 99.99, 'Liquidificador');
INSERT INTO PRODUTO VALUES ('008', 'Philips Walita', 149.99, 'Ferro de Passar');
INSERT INTO PRODUTO VALUES ('009', 'Mondial', 89.99, 'Sanduicheira');

-- POVOAMENTO DE OFERECEM 

INSERT INTO OFERECEM VALUES (TO_DATE('2023-04-16', 'YYYY-MM-DD'), 'SRV005', '005', 'L000000005');
INSERT INTO OFERECEM VALUES (TO_DATE('2023-04-17', 'YYYY-MM-DD'), 'SRV006', '006', 'L000000006');
INSERT INTO OFERECEM VALUES (TO_DATE('2023-04-18', 'YYYY-MM-DD'), 'SRV007', '007', 'L000000007');
INSERT INTO OFERECEM VALUES (TO_DATE('2023-04-18', 'YYYY-MM-DD'), 'SRV005', '005', 'L000000005');
INSERT INTO OFERECEM VALUES (TO_DATE('2023-04-19', 'YYYY-MM-DD'), 'SRV006', '006', 'L000000006');
INSERT INTO OFERECEM VALUES (TO_DATE('2023-04-19', 'YYYY-MM-DD'), 'SRV007', '007', 'L000000007');
INSERT INTO OFERECEM VALUES (TO_DATE('2023-04-19', 'YYYY-MM-DD'), 'SRV008', '008', 'L000000008');
INSERT INTO OFERECEM VALUES (TO_DATE('2023-04-20', 'YYYY-MM-DD'), 'SRV009', '009', 'L000000009');
INSERT INTO OFERECEM VALUES (TO_DATE('2023-04-20', 'YYYY-MM-DD'), 'SRV009', '001', 'L000000001');
