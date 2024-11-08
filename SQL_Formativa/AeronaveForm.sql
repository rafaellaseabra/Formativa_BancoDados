create database aeronave_1e;

-- criando tabela
create table Aeronave(
id_nave int primary key auto_increment not null,
nome varchar(255) not null,
comunicador varchar (255),
destino varchar (255) 
);

insert Aeronave (nome,comunicador,destino) value
   ("Aero CATALINA", "Comunicador 1", "Espanha"),
   (" Azul", "Comunicador 2", "Paris"),
   ("Aero AVnativa", "Comunicador 3", "Orlando"),
   ("Airbus", "Comunicador 4", "Maldivas"),
   ("Asa branca", "Comunicador 5", "Londres");
   
create table Passageiros(
id_pass int primary key auto_increment not null,
nome varchar(255) not null,
telefone varchar (50),
endereco varchar (255),
id_nave int,
foreign key (id_nave) references Aeronave(id_nave)
);  

insert Passageiros (nome,telefone,endereco,id_nave) value
   ("Albert Eisten", "(12)3456-789", "123 Rua de Ciência",1),
   ("Marie Curie", "(10)987654-321", "456 Avenida da Radiação", 2),
   ("Isaac Newton", "(33) 4567-890", "789 Praça da Gravidade", 1),
   ("Galileu Galilei ", "(45) 0000-090", "190 Rua da Astronomia", 3),
   ("Louis Pasteur", "(55)2222-000", "7 Avenida Lei da vida", 4),
   ("Isac Newton", "(33) 0007-890", "789 Praça da Gravidade", 5);
   
   -- consultando
select*from Aeronave;
select*from Passageiros;

-- alterando nome
update Passageiros
set nome = "Alberto Roberto"
where id_pass = "1";

-- alterirando o nome da terceira nave 

update aeronave
set nome = "Antonov An-124"
where id_nave = "3";

-- deletando

delete from Passageiros
where id_pass = 4;

-- listar passageiros com aeronave(JOIN)
select
   Passageiros.nome as Nome_Passageiros,
   aeronave.nome as Nome_Aeronave,
   aeronave.destino as Destino_Aeronave
from
  Passageiros
inner join
  aeronave on passageiros.id_nave = aeronave.id_nave;

-- view
create view vw_passageiros_voa as 
select
   Passageiros.nome as Nome_Passageiros,
   aeronave.nome as Nome_Aeronave,
   aeronave.destino as Destino_Aeronave
from
  Passageiros
inner join
  aeronave on passageiros.id_nave = aeronave.id_nave;

-- visualizar view 
select * from vw_passageiros_voa;


   
   