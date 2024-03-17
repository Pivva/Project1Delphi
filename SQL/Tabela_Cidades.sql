# Criação da Tabela Cidades;

CREATE TABLE cadastro.cidades (
    ID_Cidade INT AUTO_INCREMENT PRIMARY KEY,
    NM_Cidade VARCHAR(30),
    ID_UF VARCHAR(2),
    CEP_Inicial VARCHAR(9),
    CEP_Final VARCHAR(9)
);

# Criação de Trigger para validar tamanho e formato do ID_UF

DELIMITER //

CREATE TRIGGER valida_ID_UF BEFORE INSERT ON cadastro.cidades
FOR EACH ROW
BEGIN
    IF LENGTH(NEW.ID_UF) > 2 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O código da unidade federativa (ID_UF) deve ter no máximo 2 caracteres.';
    END IF;
    
    IF NOT NEW.ID_UF REGEXP '^[A-Za-z]+$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O código da unidade federativa (ID_UF) deve conter apenas letras.';
    END IF;
END;
//

DELIMITER ;

# Criação de Trigger para validar formato de CEP_Inicial e CEP_Final

DELIMITER //

CREATE TRIGGER valida_cep BEFORE INSERT ON sua_tabela
FOR EACH ROW
BEGIN
    IF NOT (NEW.CEP_Inicial REGEXP '^[0-9]{5}-[0-9]{3}$' AND NEW.CEP_Final REGEXP '^[0-9]{5}-[0-9]{3}$') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O CEP inicial e final devem estar no formato correto (XXXXX-XXX).';
    END IF;
END;
//

DELIMITER ;

# Criação de Trigger para validar se CEP Inicial e CEP Final já existe

DELIMITER //

CREATE TRIGGER valida_cep_existente BEFORE INSERT ON cadastro.cidades
FOR EACH ROW
BEGIN
    DECLARE contador INT;

    SELECT COUNT(*) INTO contador
    FROM cadastro.cidades
    WHERE CEP_Inicial = NEW.CEP_Inicial;

    IF contador > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O valor de CEP_Inicial já existe no sistema.';
    END IF;

    SELECT COUNT(*) INTO contador
    FROM cadastro.cidades
    WHERE CEP_Final = NEW.CEP_Final;

    IF contador > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O valor de CEP_Final já existe no sistema.';
    END IF;
END;
//

DELIMITER ;

# Criação de Trigger para validar somente letras em Nome Cidade e UF

DELIMITER //

CREATE TRIGGER valida_cidade_uf BEFORE INSERT ON cadastro.cidades
FOR EACH ROW
BEGIN
    IF NOT (NEW.NM_Cidade REGEXP '^[A-Za-z ]+$' AND NEW.ID_UF REGEXP '^[A-Za-z]+$') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A cidade e a unidade federativa devem conter apenas letras.';
    END IF;
END;
//

DELIMITER ;

# Criação de Trigger para não permitir dados nullos na tabela

DELIMITER //

CREATE TRIGGER valida_nao_nulo BEFORE INSERT ON cadastro.cidades
FOR EACH ROW
BEGIN
    IF NEW.ID_Cidade IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo ID_Cidade não pode ser nulo.';
    END IF;
    IF NEW.NM_Cidade IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo NM_Cidade não pode ser nulo.';
    END IF;
    IF NEW.ID_UF IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo ID_UF não pode ser nulo.';
    END IF;
    IF NEW.CEP_Inicial IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo CEP_Inicial não pode ser nulo.';
    END IF;
    IF NEW.CEP_Final IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo CEP_Final não pode ser nulo.';
    END IF;
END;
//

DELIMITER ;