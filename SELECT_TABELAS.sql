SELECT * FROM FORNECEDOR;
SELECT * FROM LOCAL_ESTOQUE;
SELECT * FROM SERVICO;
SELECT * FROM MECANICO;
SELECT * FROM CLIENTE;
SELECT * FROM PECA;
SELECT * FROM ESTOQUE;
SELECT * FROM PEDIDO;
SELECT * FROM PEDIDO_ITEM;
--
-- ESTOQUE DA OFICINA
SELECT I.DESCRICAO DESCRICAO_PECA,
       E.QUANTIDADE QUANTIDADE_PECA,
       FORMAT(I.VALOR, 2, 'de_DE') VALOR_UNITARIO,
       FORMAT(I.VALOR * E.QUANTIDADE, 2, 'de_DE') VALOR_TOTAL,
       L.DESCRICAO LOCAL_ESTOQUE,
       F.RAZAO_SOCIAL FORNECEDOR
  FROM FORNECEDOR F,
       LOCAL_ESTOQUE L,
       ESTOQUE E,
       PECA I
 WHERE E.PECA_ID = I.ID
   AND L.ID = E.LOCAL_ESTOQUE_ID
   AND F.ID = I.FORNECEDOR_ID
 ORDER BY (I.VALOR * E.QUANTIDADE) DESC;
--
-- PEDIDOS DE CLIENTE COM ITENS E VALORES
SELECT I.NUMERO,
	   CONCAT(C.NOME,' ',C.SOBRENOME) NOME_COMPLETO,
       CASE
         WHEN C.FIS_JUR = 'F' THEN CONCAT('CPF:   ',C.CPF)
         ELSE CONCAT('CNPJ: ',C.CNPJ)
	   END AS CPF_CNPJ,
       M.NOME MECANICO_ATENDENTE,
       PC.DESCRICAO PECA,
       P.QUANTIDADE,
       FORMAT(PC.VALOR, 2, 'de_DE') VALOR_PECA,
       S.DESCRICAO SERVICO_DESCRICAO,
       FORMAT(S.VALOR, 2, 'de_DE') VALOR_SERVICO,
       FORMAT((PC.VALOR * P.QUANTIDADE) + S.VALOR, 2, 'de_DE') VALOR_TOTAL
  FROM SERVICO S,
	   PECA PC,
	   PEDIDO_ITEM P,
	   MECANICO M,
	   CLIENTE C,
       PEDIDO I
 WHERE C.ID = I.CLIENTE_ID
   AND M.ID = I.MECANICO_ID
   AND P.PEDIDO_ID = I.ID
   AND PC.ID = P.PECA_ID
   AND S.ID = P.SERVICO_ID
 ORDER BY I.NUMERO,
          NOME_COMPLETO;
--
-- PEDIDO TOTAL POR CLIENTE
SELECT CONCAT(C.NOME,' ',C.SOBRENOME) NOME_COMPLETO,
       FORMAT(SUM(PC.VALOR * P.QUANTIDADE), 2, 'de_DE') VALOR_TOTAL_PEDIDOS
  FROM PECA PC,
       PEDIDO_ITEM P,
       CLIENTE C,
       PEDIDO I
 WHERE C.ID = I.CLIENTE_ID
   AND P.PEDIDO_ID = I.ID
   AND PC.ID = P.PECA_ID
 GROUP BY NOME_COMPLETO;