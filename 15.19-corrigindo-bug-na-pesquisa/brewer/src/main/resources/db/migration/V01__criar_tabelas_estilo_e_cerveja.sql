CREATE TABLE estilo (
    codigo serial PRIMARY KEY not null,
    nome VARCHAR(50) NOT NULL unique
);

CREATE TABLE cerveja (
    codigo serial PRIMARY KEY not null,
    sku VARCHAR(50) NOT NULL unique,
    nome VARCHAR(80) NOT NULL,
    descricao TEXT NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    teor_alcoolico DECIMAL(10, 2) NOT NULL,
    comissao DECIMAL(10, 2) NOT NULL,
    sabor VARCHAR(50) NOT NULL,
    origem VARCHAR(50) NOT NULL,
    codigo_estilo integer NOT NULL,
    FOREIGN KEY (codigo_estilo) REFERENCES estilo(codigo)
);

INSERT INTO estilo (nome) VALUES ('Amber Lager');
INSERT INTO estilo (nome) VALUES ('Dark Lager');
INSERT INTO estilo (nome) VALUES ('Pale Lager');
INSERT INTO estilo (nome) VALUES ('Pilsner');


