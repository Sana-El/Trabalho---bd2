create sequence sequencia start with 1 increment by 1;
create sequence sequencia2 start with 1 increment by 1;
create sequence sequencia3 start with 1 increment by 1;
create sequence sequencia4 start with 1 increment by 1;


create table cliente(
	codigo int default (next value for sequencia),
	nome varchar(60),
	endereco varchar(60),
	primary key(codigo)
);

create table piloto(
	codigo int default (next value for sequencia2),
	nome varchar(60),
	num_voos int,
	primary key(codigo)
);

create table voo(
	codigo int default (next value for sequencia3),
	piloto int,
	tipo varchar (60),
	num_passageiros int default 0,
	distancia int default 0,
	primary key(codigo),
	foreign key(piloto) references piloto(codigo)
);

create table milhas(
	codigo int default (next value for sequencia4),
	cliente int default 0,
	quantidade int default 0,
	primary key(codigo),
	foreign key(cliente) references cliente(codigo)
);

create table cliente_voo(
	cliente int default 0,
	voo int default 0,
	classe varchar(60),
	primary key(cliente,voo),
	foreign key(cliente) references cliente(codigo),
	foreign key(voo) references voo(codigo)
);
