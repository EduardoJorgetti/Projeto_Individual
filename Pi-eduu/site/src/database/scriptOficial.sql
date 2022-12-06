create database projetoIndividual;
use projetoIndividual;

create table usuario(
idUsuario int primary key auto_increment,
nome varchar (50),
email varchar (50),
senha varchar (10)
);

create table quiz(
idQuiz int primary key
);

create table pontosQuiz(
id int primary key auto_increment,
acertos int,
fkUsuario int,
foreign key (fkUsuario) references usuario (idUsuario),
fkQuiz int,
foreign key (fkQuiz) references quiz (idQuiz)
);

insert into quiz values
	(1);
    
select * from usuario;
select * from pontosQuiz;

insert into usuario values
	(1, 'gabriel', 'gabi@gmail.com', '123'),
	(2, 'eduardo', 'edu@gmail.com', '123'),
	(3, 'igor', 'igao@gmail.com', '123'),
	(4, 'nathan', 'nathan@gmail.com', '123'),
	(5, 'mateus', 'mateus@gmail.com', '123');

insert into pontosQuiz values
	(1, 14, 1, 1),
	(2, 12, 2, 1),
	(3, 10, 3, 1),
	(4, 8, 4, 1),
	(5, 6, 5, 1);
    
select nome, max(acertos) as 'acertos' from usuario join pontosQuiz on idUsuario = fkusuario group by nome order by 'acertos' desc limit 5; 