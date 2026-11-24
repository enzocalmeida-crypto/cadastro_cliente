CREATE TABLE cliente (
    id_cliente INTEGER GENERATED ALWAYS AS IDENTITY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    email VARCHAR(150) NOT NULL,
    telefone VARCHAR(15),
    data_nascimento DATE,
    ativo BOOLEAN NOT NULL DEFAULT TRUE,

    CONSTRAINT pk_cliente PRIMARY KEY (id_cliente),
    CONSTRAINT uq_cliente_cpf UNIQUE (cpf),
    CONSTRAINT uq_cliente_email UNIQUE (email)
);

INSERT INTO cliente 
(nome, cpf, email, telefone, data_nascimento, ativo)
VALUES
('Lucas Almeida', '12345678901', 'lucas.almeida@email.com', '11987654321', '2001-04-15', TRUE),
('Mariana Costa', '23456789012', 'mariana.costa@email.com', '11976543210', '1999-08-22', TRUE),
('Gabriel Santos', '34567890123', 'gabriel.santos@email.com', '11965432109', '2002-01-10', TRUE),
('Beatriz Oliveira', '45678901234', 'beatriz.oliveira@email.com', '11954321098', '2000-11-30', TRUE),
('Rafael Souza', '56789012345', 'rafael.souza@email.com', '11943210987', '1998-06-05', FALSE);

SELECT * FROM cliente;

DROP TABLE cliente;