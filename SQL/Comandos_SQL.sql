#1. Criar um comando SELECT que retorne APENAS o nome dos clientes da cidade “TUPA”:

SELECT NM_Cliente
FROM clientes
WHERE NM_Cidade = 'TUPA';


#2. Criar um comando SELECT que retorne TODOS os nomes e os códigos dos clientes ordenados por nome do cliente:

SELECT id_Cliente, NM_Cliente
FROM clientes
ORDER BY NM_Cliente;


#3. Criar um comando DELETE que exclua clientes com código do cliente entre a numeração 100 e 200:

DELETE FROM clientes
WHERE id_Cliente BETWEEN 100 AND 200;


#4. Criar um comando UPDATE que altere o estado de todas as cidades para o estado “SP” quando estiverem com estado igual a “PR”:

UPDATE clientes
SET NM_Cidade = 'SP'
WHERE NM_Cidade = 'PR';


# 5. Criar um comando INSERT na tabela de clientes de um registro qualquer com todos os campos da tabela. (valores livres):

INSERT INTO clientes (NM_Cliente, CGC_CPF_Cliente, Telefone, Email, Endereco, Bairro, Complemento, CEP, NM_Cidade)
VALUES ('PAULO', '54789512478', 14997548744, 'joao@teste.com', 'RUA DAS FLORES', 'CENTRO', 'Apto 101', '17700-000', 'BARUERI');

#6. Criar uma view para consultar os registros contidos na tabela CIDADES. (Criar um arquivo separado)

CREATE VIEW consulta_cidades AS
SELECT * FROM cidades;

-- Consultar registros na view
SELECT * FROM consulta_cidades;


#7. Criar um procedimento armazenado (procedure) para realizar as operações de INSERT, UPDATE E DELETE na tabela de CIDADES. Criar uma procedure única que faça todas as operações. Ela pode ser usada no aplicativo criado, se desejar. (Criar um arquivo separado)

DELIMITER //

CREATE PROCEDURE gerenciar_cidades (
    IN p_id INT,
    IN p_nome VARCHAR(30),
    IN p_id_uf VARCHAR(2),
    IN p_cep_inicial VARCHAR(9),
    IN p_cep_final VARCHAR(9),
    IN p_operacao VARCHAR(10)
)
BEGIN
    IF p_operacao = 'INSERT' THEN
        INSERT INTO cidades (ID_Cidade, NM_Cidade, ID_UF, CEP_Inicial, CEP_Final) 
        VALUES (p_id, p_nome, p_id_uf, p_cep_inicial, p_cep_final);
    ELSEIF p_operacao = 'UPDATE' THEN
        UPDATE cidades 
        SET NM_Cidade = p_nome, ID_UF = p_id_uf, CEP_Inicial = p_cep_inicial, CEP_Final = p_cep_final
        WHERE ID_Cidade = p_id;
    ELSEIF p_operacao = 'DELETE' THEN
        DELETE FROM cidades WHERE ID_Cidade = p_id;
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Operação inválida. Use INSERT, UPDATE ou DELETE.';
    END IF;
END;
//

DELIMITER ;
