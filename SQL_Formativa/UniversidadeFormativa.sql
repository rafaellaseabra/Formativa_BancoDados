create database  Universidade_1e;
use Universidade_1e;

create table Universidade(
id_uni int primary key auto_increment not null,
nome varchar(255) not null,
telefone varchar(50),
rua varchar(255),
numero int not null,
cep varchar(255),
bairro varchar(255),
cidade varchar (255)
);

insert Universidade(nome, telefone, rua, numero, cep, bairro,cidade)
value ("USP", "(12)3333-333", " Nova era", 100,"123456", "Avenida Brasil", "São Paulo"),
      ("UNICAMP", "(12)0003-003", "Educação em ação", 3000,"000456", "Praça Nossa", "Campinas"),
      ("PUC-SP", "(12)1113-133", "Aurora", 1890, "120006", "Rua das Universidades", "São Paulo"),
      ("USP", "(12)3333-333", "João rodrigues de lima", 10, "000000","Avenida Brasil", "São Paulo"),
      ("Harvard University", "+1 (617) 495-1000", "Massachusetts Hall", 02138,"19865", " Cambridge", "Estados Unidos");
      
create table Estudantes(
id_estudantes int primary key auto_increment not null,
nome varchar(255) not null,
telefone varchar(50),
rua varchar(255),
numero int not null,
cep varchar(255),
bairro varchar(255),
cidade varchar (255),
id_uni int,
foreign key (id_uni) references Universidade (id_uni)
);

insert Estudantes(nome, telefone, rua, numero, cep, bairro,cidade, id_uni)value
    ('Gustavo Silva', '11987654321', 'Rua das Flores', 123, '12345-678', 'Centro', 'São Paulo', 1),
    ('Valentina Oliveira', '21987654321', 'Avenida Brasil', 456, '23456-789', 'Copacabana', 'São Paulo', 3),
    ('Ana Souza', '31987654321', 'Rua da Paz', 789, '34567-890', 'Savassi', 'Belo Horizonte', 2),
    ('Pedro Santos', '41987654321', 'Rua Verde', 101, '45678-123', 'Centro', 'Campinas',4),
    ('Luiza Fernandes', '51987654321', 'Avenida Central', 202, '56789-234', 'Jardins', 'Porto Alegre', 4);
    
Select*from Universidade;
Select*from Estudantes;

-- alterando nome
update Estudantes
set nome = "Gustavo Henrique da Silva"
where id_estudantes = "1";

-- alterirando o nome da terceira universidade

update Universidade
set nome = "UNIP"
where id_uni = "3";

-- deletando

delete from Estudantes
where id_estudantes = 5;

-- listar com (JOIN)
Select
   Estudantes.nome AS Nome_Estudantes,
   Universidade.nome AS Nome_Universidade,
   Universidade.cidade AS Cidade_Universidade,
   Universidade.telefone AS Telefone_Uni
from
   Estudantes
INNER JOIN
   Universidade ON Estudantes.id_uni = Universidade.id_uni;

  
  -- view
create view vw_Estudante_estuda as 
select
   Estudantes.nome AS Nome_Estudantes,
   Universidade.nome AS Nome_Universidade,
   Universidade.cidade AS Cidade_Universidade,
   Universidade.telefone AS Telefone_Uni
from
   Estudantes
INNER JOIN
   Universidade ON Estudantes.id_uni = Universidade.id_uni;

  Select*from  vw_Estudante_estuda;


      
      