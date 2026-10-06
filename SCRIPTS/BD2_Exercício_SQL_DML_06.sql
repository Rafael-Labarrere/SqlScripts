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