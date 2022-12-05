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
    
select * from pontosQuiz;