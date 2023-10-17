CREATE DATABASE UP;

use UP;

CREATE TABLE Cliente (
id_cliente INTEGER PRIMARY KEY auto_increment,
nome VARCHAR(40),
email VARCHAR(80),
senha VARCHAR(15)
);

CREATE TABLE Passagens (
destino_viagem VARCHAR(40),
saida_viagem VARCHAR(40),
preço DECIMAL(10),
id_cliente VARCHAR(40),
id_passagem INTEGER PRIMARY KEY auto_increment,
data_viagem DATETIME
);

CREATE TABLE Cadastro (
id_cliente INTEGER PRIMARY KEY auto_increment,
nome_cliente VARCHAR(40),
email_cliente VARCHAR(80),
senha_cliente VARCHAR(15),
telefone_cliente NUMERIC(10),
cpf_cliente NUMERIC(15)
);

CREATE TABLE tem (
id_passagem INTEGER,
id_cliente INTEGER,
FOREIGN KEY(id_passagem) REFERENCES Passagens (id_passagem),
FOREIGN KEY(id_cliente) REFERENCES Cadastro (id_cliente)
);

select * from Passagens;
select * from Cliente;
select * from  Cadastro;

insert into Cliente values (default, 'Julia', 'Julia@email', 'yyy');

insert into Passagens values
('São Paulo', 'Bahia', '50', 'Yuri', default, ' 12:00');

insert into Cadastro values (default, 'Julia', 'Julia@email', 'hhh', '333333333', '434343434343');
insert into Cadastro values (default, 'Yuri', 'Yuri@email', 'jmjm', '76533234', '87877765434');
insert into Cadastro values (default, 'Maria', 'Maria@email', 'kkkk', '98767878', '9898989898');
insert into Cadastro values (default, 'Gabriel', 'Gabriel@email', 'lolo', '09090909', '434343545545');


alter table Passagens modify preço decimal(10,2);

alter table Passagens modify data_viagem varchar (40);

insert into Passagens values
('São Paulo', 'rio', '50,8', 'Yuri', default, ' 12/12/2023');

insert into Passagens values
('Rio de janeiro', 'Curitiba', '508', 'Julia', default, ' 12/11/2023');

insert into Passagens values
('Brasilia', 'Maceio', '7090', 'Gabriel', default, ' 30/11/2023');

insert into Passagens values
('Japão', 'Curitiba', '9000', 'Maria', default, ' 31/12/2023');

DELETE from Cadastro WHERE id_cliente=4;
DELETE from Cliente WHERE id_cliente=2;
DELETE from Cliente WHERE id_cliente=3;
DELETE from Passagens WHERE id_passagem=3;