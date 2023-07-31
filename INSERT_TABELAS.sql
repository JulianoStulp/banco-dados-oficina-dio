INSERT INTO FORNECEDOR (RAZAO_SOCIAL, CNPJ, ENDERECO)               VALUES ('Empresa A', '123456789012345', 'Rua dos Exemplos, 123'),
                                                                           ('Empresa B', '987654321098765', 'Avenida das Amostras, 456'),
                                                                           ('Empresa C', '246813579024680', 'Travessa dos Testes, 789'),
                                                                           ('Empresa D', '135792468013579', 'Praça dos Exemplos, 1010'),
                                                                           ('Empresa E', '987654321012345', 'Alameda dos Testes, 222');
--                                                                           
INSERT INTO LOCAL_ESTOQUE (DESCRICAO)                               VALUES ('ALMOXARIFADO'),
                                                                           ('OFICINA');
--                                                                           
INSERT INTO SERVICO (DESCRICAO, VALOR)                              VALUES ('Troca de óleo', 100.00),
                                                                           ('Alinhamento e balanceamento', 150.00),
                                                                           ('Revisão de freios', 200.00),
                                                                           ('Troca de filtros', 80.00),
                                                                           ('Serviço de ar-condicionado', 180.00),
                                                                           ('Higienização interna', 50.00),
                                                                           ('Reparo no sistema elétrico', 120.00),
                                                                           ('Pintura de para-choque', 250.00),
                                                                           ('Polimento e cristalização', 180.00),
                                                                           ('Instalação de som automotivo', 100.00);
--
INSERT INTO MECANICO (NOME, SALARIO, DATA_ADMISSAO)                 VALUES ('João da Silva', 2500.00, '2022-01-15'),
                                                                           ('Maria Souza', 2800.00, '2021-09-10'),
                                                                           ('Pedro Oliveira', 2200.00, '2023-03-25');
--
INSERT INTO CLIENTE (NOME, SOBRENOME, ENDERECO, FIS_JUR, CPF, CNPJ) VALUES ('Lucas', 'Silva', 'Rua das Flores, 123', 'F', '12345678910', NULL),
                                                                           ('Ana', 'Santos', 'Avenida das Árvores, 456', 'F', '98765432101', NULL),
                                                                           ('João', 'Oliveira', 'Travessa dos Motores, 789', 'F', '45678912302', NULL),
                                                                           ('Auto Mecânica Rápida', 'Ltda', 'Rua dos Parafusos, 567', 'J', NULL, '12345678901234'),
                                                                           ('Mecânica Ágil', 'S/A', 'Avenida das Engrenagens, 890', 'J', NULL, '56789012345678'),
                                                                           ('Pedro', 'Martins', 'Rua das Chaves, 101', 'F', '78912345603', NULL),
                                                                           ('Bianca', 'Ferreira', 'Alameda dos Pneus, 202', 'F', '65432178904', NULL),
                                                                           ('Mecânica Veloz', 'Ltda', 'Travessa dos Rolamentos, 303', 'J', NULL, '98765432101234'),
                                                                           ('Fernanda', 'Lima', 'Avenida das Correias, 404', 'F', '32198765405', NULL),
                                                                           ('AutoMec', 'Lopes', 'Rua dos Motores, 505', 'J', NULL, '54321678901234');
--
INSERT INTO PECA (DESCRICAO, FORNECEDOR_ID, VALOR)                  VALUES ('Filtro de óleo', 3, 25.00),
                                                                           ('Pastilha de freio', 2, 50.00),
                                                                           ('Bateria automotiva', 5, 150.00),
                                                                           ('Lâmpada do farol', 1, 10.00),
                                                                           ('Amortecedor dianteiro', 4, 120.00),
                                                                           ('Correia dentada', 3, 40.00),
                                                                           ('Vela de ignição', 2, 15.00),
                                                                           ('Sensor de temperatura', 1, 30.00),
                                                                           ('Rolamento de roda', 4, 35.00),
                                                                           ('Filtro de ar', 3, 20.00),
                                                                           ('Radiador de água', 5, 180.00),
                                                                           ('Pivô de suspensão', 2, 55.00),
                                                                           ('Bomba de combustível', 1, 90.00),
                                                                           ('Termostato', 4, 25.00),
                                                                           ('Cabo de embreagem', 3, 40.00),
                                                                           ('Bucha da bandeja', 5, 30.00),
                                                                           ('Sensor de oxigênio', 2, 60.00),
                                                                           ('Coxim do motor', 1, 40.00),
                                                                           ('Filtro de combustível', 4, 18.00),
                                                                           ('Bomba de óleo', 3, 80.00);
--
INSERT INTO ESTOQUE (LOCAL_ESTOQUE_ID, PECA_ID, QUANTIDADE)         VALUES (1, 5, 3),
                                                                           (2, 12, 2),
                                                                           (1, 3, 4),
                                                                           (1, 17, 1),
                                                                           (2, 6, 5),
                                                                           (1, 10, 2),
                                                                           (2, 8, 3),
                                                                           (1, 14, 4),
                                                                           (1, 1, 1),
                                                                           (2, 18, 5),
                                                                           (1, 9, 3),
                                                                           (1, 20, 2),
                                                                           (2, 7, 4),
                                                                           (1, 15, 1),
                                                                           (1, 2, 5),
                                                                           (2, 16, 2),
                                                                           (1, 11, 3),
                                                                           (1, 19, 4),
                                                                           (2, 4, 1),
                                                                           (1, 13, 5);
--
INSERT INTO PEDIDO (NUMERO, CLIENTE_ID, MECANICO_ID)                VALUES (52131, 2, 1),
                                                                           (52213, 7, 2),
                                                                           (52345, 3, 3),
                                                                           (52501, 5, 1),
                                                                           (52678, 10, 2),
                                                                           (52890, 1, 3),
                                                                           (53015, 8, 1),
                                                                           (53221, 4, 2),
                                                                           (53410, 6, 3),
                                                                           (53675, 9, 1);
--
INSERT INTO PEDIDO_ITEM (PEDIDO_ID, PECA_ID, SERVICO_ID, QUANTIDADE)VALUES (1, 5, 3, 2),
																		   (2, 12, 7, 3),
																		   (3, 3, 5, 1),
																		   (4, 17, 2, 3),
																		   (5, 6, 9, 2),
																		   (6, 10, 1, 1),
																		   (7, 8, 4, 3),
																		   (8, 14, 8, 1),
																		   (9, 1, 10, 2),
																		   (10, 18, 6, 3);
--
/*cria 10 insert into para a tabela PEDIDO_ITEM seguinte forma para os campos
PEDIDO_ID = sortear numeros de 1 a 10
PECA_ID = sortear numeros de 1 a 20
SERVICO_ID = sortear de 1 a 10
QUANTIDADE = sortear de 1 a 3

todos insert em um só script*/