-- Excluindo banco de dados
DROP DATABASE cine_senai_max;

-- Criando banco de dados
create database cine_senai_max;

-- Ativando banco de dados
use cine_senai_max;

-- Criando tabela filmes
CREATE TABLE filmes (
	id_filme int,
    titulo VARCHAR(60),
    genero VARCHAR(45),
    duracao int,
    ano_lancamento INT,
    preco_aluguel DOUBLE,
    primary key(id_filme)
);

-- Criando tabela atores
CREATE TABLE atores (
	id_ator INT,
    nome_ator VARCHAR(60),
    ano_nascimento INT,
    nacionalidade VARCHAR(20),
    sexo VARCHAR(10),
    PRIMARY KEY(id_ator)
);

-- Crie aqui a tabela de atuações

create table atuacoes (
id_filme int,
id_ator int,
foreign key(id_filme) references filmes(id_filme),
foreign key(id_ator) references atores(id_ator)
);

DESCRIBE filmes;

DESCRIBE atores;

insert into filmes values("80", "Carandiru", "Drama", "145", "2003", "4.99");

insert into atores values("150", "Rodrigo Santoro", "1975", "Brasileiro", "masculino"), ("151", "Wagner Moura", "1976", "Brasileiro", "masculino");

insert into atuacoes values ("80", "150");

insert into atuacoes values ("80", "151");

insert into filmes values("81", "O Homem do Futuro", "Ficção científica/Romance", "106", "2011", "4.99");

insert into atuacoes values ("81", "151");

select * from filmes;
select * from atores;
select * from atuacoes;


