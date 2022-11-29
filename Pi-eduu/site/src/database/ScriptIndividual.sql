create database projetoIndividual;

use projetoIndividual;

create table usuario(
idUsuario int primary key,
nome varchar (50),
email varchar (50),
senha varchar (10)
);

create table quiz(
idQuiz int primary key,
nomeQuiz varchar (50)
);

create table pontosQuiz(
id int,
acertos int,
fkUsuario int,
foreign key (fkUsuario) references usuario (idUsuario),
fkQuiz int,
foreign key (fkQuiz) references quiz (idQuiz)
);