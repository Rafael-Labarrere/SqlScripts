/*
BD2 - 2o Bim -Atividade de SQL - Exercícios de DML - Insert - Incluindo dados na tabela
ITEM_PRODUTO do Projeto Pedido - Inserção parte 2
Queries implementadas na linguagem SQL aplicadas no SGBDR Oracle, apoiadas no
SqlDeveloper. Utilizar o MER Físico e BD Pedido disponibilizado para treinamento da disciplina
de Banco de Dados.
Inserir dados na tabela ITEM_PRODUTO em conformidade com os enunciados a seguir:
*/

SELECT * FROM ITEM_PRODUTO;
DESC ITEM_PRODUTO;

SELECT * FROM PEDIDO;
SELECT * FROM PRODUTO;

-- 1. Produto 207 para todos os pedidos pares e ano menor 2018, com a quantidade 100 e
-- preço unitário R$ 10.00
-- RESOLUÇÃO:
INSERT INTO ITEM_PRODUTO (
    CODIGO_PRO,
    NUMERO_PED,
    QUANTIDADE,
    PRECO_UNITARIO
) SELECT 
    207,
    NUMERO,
    100,
    10
    FROM PEDIDO WHERE MOD(NUMERO, 2) = 0 AND EXTRACT (YEAR FROM DATA) < 2018;


-- SELECT * FROM ITEM_PRODUTO;

-- 2. Produto 206 para todos os pedidos ímpares e ano igual 2018, com a quantidade 50 e
-- preço unitário R$ 12.00
-- RESOLUÇÃO:
INSERT INTO ITEM_PRODUTO (
    CODIGO_PRO,
    NUMERO_PED,
    QUANTIDADE,
    PRECO_UNITARIO
) SELECT 
    206,
    NUMERO,
    50,
    12
    FROM PEDIDO WHERE MOD(NUMERO, 2) = 1 AND EXTRACT (YEAR FROM DATA) = 2018;

-- SELECT * FROM ITEM_PRODUTO;

-- 3. Produto 207 para todos os pedidos pares e ano igual 2018, com a quantidade 150 e
-- preço unitário R$ 14.00
-- RESOLUÇÃO:
INSERT INTO ITEM_PRODUTO (
    CODIGO_PRO,
    NUMERO_PED,
    QUANTIDADE,
    PRECO_UNITARIO
) SELECT 
    207,
    NUMERO,
    150,
    14
    FROM PEDIDO WHERE MOD(NUMERO, 2) = 0 AND EXTRACT (YEAR FROM DATA) = 2018;

-- SELECT * FROM ITEM_PRODUTO;

-- 4. Produto 206 para todos os pedidos ímpares e ano menor 2018, com a quantidade 200 e
-- preço unitário R$ 8.00
-- RESOLUÇÃO:
INSERT INTO ITEM_PRODUTO (
    CODIGO_PRO,
    NUMERO_PED,
    QUANTIDADE,
    PRECO_UNITARIO
) SELECT 
    206,
    NUMERO,
    200,
    8
    FROM PEDIDO WHERE MOD(NUMERO, 2) = 1 AND EXTRACT (YEAR FROM DATA) < 2018;

-- SELECT * FROM ITEM_PRODUTO;

-- 5. Produto 208 para todos sem endereço de entrega e ano igual 2017, com a quantidade 80 e
-- preço unitário R$ 18.00
-- RESOLUÇÃO:
INSERT INTO ITEM_PRODUTO (
    CODIGO_PRO,
    NUMERO_PED,
    QUANTIDADE,
    PRECO_UNITARIO
) SELECT 
    208,
    NUMERO,
    80,
    18
    FROM PEDIDO WHERE ENDERECO_ENTREGA IS NULL AND EXTRACT (YEAR FROM DATA) = 2017;

-- SELECT * FROM ITEM_PRODUTO;

-- 6. Produto 208 para todos sem endereço de entrega e ano igual 2018, com a quantidade 70 e
-- preço unitário R$ 20.00
-- RESOLUÇÃO:
INSERT INTO ITEM_PRODUTO (
    CODIGO_PRO,
    NUMERO_PED,
    QUANTIDADE,
    PRECO_UNITARIO
) SELECT 
    208,
    NUMERO,
    70,
    20
    FROM PEDIDO WHERE ENDERECO_ENTREGA IS NULL AND EXTRACT (YEAR FROM DATA) = 2018;

-- SELECT * FROM ITEM_PRODUTO;

-- 7. Produto 202 para todos pedidos com endereço de entrega e dia ímpar de entrega, com a
-- quantidade 60 e preço unitário R$ 15.00
-- RESOLUÇÃO:
INSERT INTO ITEM_PRODUTO (
    CODIGO_PRO,
    NUMERO_PED,
    QUANTIDADE,
    PRECO_UNITARIO
) SELECT 
    202,
    NUMERO,
    60,
    15
    FROM PEDIDO WHERE ENDERECO_ENTREGA IS NOT NULL AND MOD(EXTRACT (DAY FROM DATA), 2) = 1;


-- SELECT * FROM ITEM_PRODUTO;

-- 8. Produto 205 para todos pedidos com endereço de entrega e dia par da data do pedido, com a
-- quantidade 90 e preço unitário R$ 11.50
-- RESOLUÇÃO:
INSERT INTO ITEM_PRODUTO (
    CODIGO_PRO,
    NUMERO_PED,
    QUANTIDADE,
    PRECO_UNITARIO
) SELECT 
    205,
    NUMERO,
    90,
    11.5
    FROM PEDIDO WHERE ENDERECO_ENTREGA IS NOT NULL AND MOD(EXTRACT (DAY FROM DATA), 2) = 0;

-- SELECT * FROM ITEM_PRODUTO;

-- 9. Produto 203 para todos pedidos com endereço de entrega e dia ímpar da data de pedido, com a
-- quantidade 550 e preço unitário R$ 21.35
-- RESOLUÇÃO:
INSERT INTO ITEM_PRODUTO (
    CODIGO_PRO,
    NUMERO_PED,
    QUANTIDADE,
    PRECO_UNITARIO
) SELECT 
    203,
    NUMERO,
    550,
    21.35
    FROM PEDIDO WHERE ENDERECO_ENTREGA IS NOT NULL AND MOD(EXTRACT (DAY FROM DATA), 2) = 1;

-- SELECT * FROM ITEM_PRODUTO;

-- 10. Produto 204 para todos pedidos sem endereço de entrega e dia par da data do pedido, com a
-- quantidade 150 e preço unitário R$ 25.85
-- RESOLUÇÃO:
INSERT INTO ITEM_PRODUTO (
    CODIGO_PRO,
    NUMERO_PED,
    QUANTIDADE,
    PRECO_UNITARIO
) SELECT 
    204,
    NUMERO,
    150,
    25.85
    FROM PEDIDO WHERE ENDERECO_ENTREGA IS NULL AND MOD(EXTRACT (DAY FROM DATA), 2) = 0;

-- SELECT * FROM ITEM_PRODUTO;