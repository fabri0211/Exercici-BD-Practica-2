
drop table if exists pass;
drop table if exists vaixell;
drop table if exists port;

create table pass(
	paraulaPas varchar(255)
) engine = innodb;

create table port
(
	codi char(3),
	ciutat varchar(150),
	capacitat integer,
	numVaixells integer default 0,
	primary key (codi)
) engine = innodb;

create table vaixell
(
	id integer,
	nom varchar(50),
	numPassatgers integer,
	portOrigen char(3) not null,
	portDesti char(3),
	imatge varchar(255),
	primary key (id),
	foreign key (portOrigen) references port(codi),
	foreign key (portDesti) references port(codi)
) engine = innodb;

insert into pass values ("nautilus");

insert into port values ("BCN", "Barcelona", 5, 3);
insert into port values ("MON", "Monaco", 1, 1);
insert into port values ("MLL", "Mallorca", 3, 1);
insert into port values ("ROM", "Roma", 5, 1);
insert into port values ("ATH", "Atenes", 3, 0);

insert into vaixell values (1,"Sea Traveller",4000,"BCN", null,"../images/vaixell1.jpg");
insert into vaixell values (2,"Queen Elizabeth",3500,"BCN", null,"../images/vaixell2.jpg");
insert into vaixell values (3,"Ocean Cruiser",5500,"BCN", null,"../images/vaixell3.jpg");
insert into vaixell values (4,"Queen Astrid",3000,"MLL", null,"../images/vaixell4.jpg");
insert into vaixell values (5,"Luxor One",300,"MON", null,"../images/vaixell5.jpg");
insert into vaixell values (6,"Santa Anna",100,"ROM", null,"../images/vaixell6.jpg");