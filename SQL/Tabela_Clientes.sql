# Criação da Tabela Clientes;

CREATE TABLE Clientes (
    ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(30),
    CGC_CPF_Cliente VARCHAR(11),
    Telefone BIGINT, -- Alterando para BIGINT para armazenar apenas números
    Email VARCHAR(50),
    Endereco VARCHAR(50),
    Bairro VARCHAR(50),
    Complemento VARCHAR(50),
    Cidade VARCHAR(50),
    CEP VARCHAR(9),
    NM_Cidade INT,
    FOREIGN KEY (NM_Cidade) REFERENCES Cidades(NM_Cidade)
);


# Criação de Trigger para não permitir dados nullos na tabela

DELIMITER //
CREATE TRIGGER validar_campos_nulos_cliente
BEFORE INSERT ON clientes
FOR EACH ROW
BEGIN
    IF NEW.ID_Cliente IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo ID_Cliente não pode ser nulo.';
    END IF;
    IF NEW.NM_Cliente IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo NM_Cliente não pode ser nulo.';
    END IF;
    IF NEW.CGC_CPF_Cliente IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo CPF não pode ser nulo.';
    END IF;
    IF NEW.Telefone IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo Telefone não pode ser nulo.';
    END IF;
    IF NEW.Email IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo Email não pode ser nulo.';
    END IF;
     IF NEW.Endereco IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo Endereço não pode ser nulo.';
    END IF;
     IF NEW.Bairro IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo Bairro não pode ser nulo.';
    END IF;
     IF NEW.Complemento IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo Complemento não pode ser nulo.';
    END IF;
     IF NEW.Email IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo CEP não pode ser nulo.';
    END IF;
     IF NEW.NM_Cidade IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo Cidade não pode ser nulo.';
    END IF;
END;
//
DELIMITER ;


# Criação de Trigger para permitir somente letras nos campos 'NM_Cliente' e 'NM_Cidade'

DELIMITER //

CREATE TRIGGER validar_NM_Cliente_e_NM_Cidade
BEFORE INSERT ON clientes
FOR EACH ROW
BEGIN
    IF NOT NEW.NM_Cliente REGEXP '^[A-Za-zÀ-ú\s]+$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo Nome só pode conter letras e espaços.';
    END IF;
    IF NOT NEW.NM_Cidade REGEXP '^[A-Za-zÀ-ú\s]+$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo Cidade só pode conter letras e espaços.';
    END IF;
END;
//

DELIMITER ;

# Criação de Trigger para campos númericos em 'Telefone' e 'CGC_CPF_Cliente'

DELIMITER //

CREATE TRIGGER validar_campos_numericos
BEFORE INSERT ON cadastro.clientes
FOR EACH ROW
BEGIN
    IF NOT (NEW.Telefone REGEXP '^[0-9]+$') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo Telefone só pode conter números.';
    END IF;
    IF NOT (NEW.CGC_CPF_Cliente REGEXP '^[0-9]+$') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo CGC_CPF_Cliente só pode conter números.';
    END IF;
END;
//

DELIMITER ;

# Criação de Trigger para permitir somente dados em maiusculo (exceto 'Email')

DELIMITER //

CREATE TRIGGER validar_caracteres_maiusculos
BEFORE INSERT ON clientes
FOR EACH ROW
BEGIN
    IF NOT (NEW.NM_Cliente REGEXP '^[A-Z\s]+$') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo NM_Cliente só pode conter caracteres maiúsculos.';
    END IF;
    IF NOT (NEW.CGC_CPF_Cliente REGEXP '^[0-9]+$') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo CGC_CPF_Cliente só pode conter números.';
    END IF;
    IF NOT (NEW.Telefone REGEXP '^[0-9]+$') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo Telefone só pode conter números.';
    END IF;
    IF NOT (NEW.Endereco REGEXP '^[A-Z0-9\s]+$') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo Endereco só pode conter caracteres maiúsculos e números.';
    END IF;
    IF NOT (NEW.Bairro REGEXP '^[A-Z\s]+$') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo Bairro só pode conter caracteres maiúsculos.';
    END IF;
    IF NOT (NEW.Complemento REGEXP '^[A-Z0-9\s]+$') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo Complemento só pode conter caracteres maiúsculos e números.';
    END IF;
    IF NOT (NEW.CEP REGEXP '^[0-9]{5}-[0-9]{3}$') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo CEP deve estar no formato correto (XXXXX-XXX).';
    END IF;
    IF NOT (NEW.NM_Cidade REGEXP '^[A-Z\s]+$') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O campo NM_Cidade só pode conter caracteres maiúsculos.';
    END IF;
END;
//

DELIMITER ;












