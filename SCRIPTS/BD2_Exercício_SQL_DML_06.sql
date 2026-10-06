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

SELECT * FROM ITEM_PRODUTO;