create database if not exists unitate_medic;
use unitate_medic;

create table if not exists unit(
nume varchar(255) not null primary key,
adresa varchar(255) not null,
idP int not null
);

create table if not exists user1(
username varchar(255) not null,
parola varchar(255) not null,
idU int,
cnp int(20) primary key not null,
nume varchar(255) not null,
prenume varchar(255) not null,
adresa varchar(255),
numarTel varchar(20),
contIban varchar(255),
nrCon int(20) not null,
dataAngajarii date not null,
functie varchar(30),
salariu int not null,
nrOre int not null
);
alter table user1
drop idU;

create table if not exists Orare_generice
(id_orar int primary key auto_increment,
CNP int(20) not null,
zi varchar(100) not null,
ora_inceput time not null,
ora_sfarsit time not null,
unitate_medicala varchar(100) not null,
foreign key(CNP) references user1(cnp)
);

create table if not exists Program
(id_program int auto_increment primary key,
luni_inceput time not null,
luni_sfarsit time not null,
marti_inceput time not null,
marti_sfarsit time not null,
miercuri_inceput time not null,
miercuri_sfarsit time not null,
joi_inceput time not null,
joi_sfarsit time not null,
vineri_inceput time not null,
vineri_sfarsit time not null,
sambata_inceput time not null,
sambata_sfarsit time not null,
duminica_inceput time not null,
duminica_sfarsit time not null
);
alter table unit
add foreign key (idP) references Program(id_program);


create table if not exists medic(
CNP int(20) not null,
foreign key(CNP) references user1(cnp),
gradul varchar(30),
codParafa varchar(30),
titlu varchar(100),
post varchar(100),
procent int not null
);
alter table medic
drop column gradul;

create table if not exists asistent(
CNP int(20) not null,
foreign key(CNP) references user1(CNP),
tipul varchar(30),
grad varchar(30)
);

create table if not exists concediu(
idC int primary key auto_increment,
CNP int(20) not null,
inceputConcediu date,
finalConcediu date,
foreign key (CNP) references user1(cnp)
);

create table if not exists servicii(
idServiciu int auto_increment primary key,
serviciu varchar(100),
specialitate varchar(100),
pret int,
durata int,
cnp int(20),
foreign key (cnp) references medic(cnp)
);	

create table if not exists programare(
id_p int primary key auto_increment,
ziua date,
ora time,
durata time,
CNP int(20),
serviciu varchar(100),
unitate_medicala varchar(255),
nume_pacient varchar(255) not null,
prenume_pacient varchar(255) not null,
FOREIGN KEY (CNP) REFERENCES medic(cnp)
);

create table if not exists cabinet
(id_cabinet int primary key not null auto_increment,
specialitate varchar(100) not null,
unit varchar(100) not null,
FOREIGN KEY (unit) REFERENCES unit(nume)
);

create table if not exists repartizari(
idRepartizari int primary key auto_increment,
cnp int(20),
id_cabinet int,
foreign key (cnp) references medic(CNP),
foreign key (cnp) references cabinet(id_cabinet)
);