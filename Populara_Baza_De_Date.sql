insert into Program(luni_inceput, luni_sfarsit, marti_inceput ,marti_sfarsit ,miercuri_inceput ,miercuri_sfarsit ,joi_inceput ,joi_sfarsit ,vineri_inceput ,
					vineri_sfarsit ,sambata_inceput ,sambata_sfarsit ,duminica_inceput ,duminica_sfarsit )
values('07:00:00','14:00:00', '07:00:00','14:00:00', '07:00:00','14:00:00', '07:00:00','14:00:00', '07:00:00','14:00:00'
		, '07:00:00','14:00:00', '07:00:00','14:00:00'), ('07:00:00','14:00:00', '07:00:00','14:00:00', '07:00:00','14:00:00', '07:00:00','14:00:00', '07:00:00','14:00:00'
		, '07:00:00','14:00:00', '07:00:00','14:00:00'),('07:00:00','14:00:00', '07:00:00','14:00:00', '07:00:00','14:00:00', '07:00:00','14:00:00', '07:00:00','14:00:00'
		, '07:00:00','14:00:00', '07:00:00','14:00:00');


insert into unit(nume, adresa, idP) 
values ('Somesana', 'Strada 1 nr.1', 1),
('Catena', 'Bvd. Bucuresti nr.1', 2),
('Policlinica 1', 'Str. Victoriei nr.1', 3);

insert into user1(username, parola, cnp, nume, prenume, adresa, numarTel, contIban, nrCon, dataAngajarii, functie, salariu, nrOre)
values('medic1','medic1',101,'Paul','Stefanescu','Strada nr 3','0766123123','50BTRL..', 2, '2020-11-11', 'medic', 2000, 180),
('medic2','medic2',102,'Raul','Dumitrescu','Strada nr 4','0762223123','75BTRL..', 3, '2019-1-2', 'medic', 2500, 190),
('medic3','medic3',103,'Anghel','Pop','Strada nr 5','0722223123','80BTRL..', 4, '2018-1-2', 'medic', 3000, 200),
('asist1','asist1',104,'Ana','Mateescu','Strada nr 6','07999999999','60BTRL..', 5, '2019-10-20', 'asistent', 2000, 200),
('asist2','asist2',105,'Andrei','Ioan','Strada nr 7','07888888888','12BTRL..', 6, '2019-10-21', 'asistent', 2000, 200),
('asist3','asist3',106,'Maria','Pop','Strada nr 8','07776543212','22BTRL..', 7, '2019-10-22', 'asistent', 2000, 200);

insert into asistent(CNP,tipul,grad)
values(104,'asistent general',1),
(105,'generalist',2),
(106,'pediatrie',2);

insert into medic(CNP,codParafa ,titlu ,post ,procent)
values(101,'1','doctorand','conferentiar',10),
(102,'2','masterand','conferentiar',15),
(103,'3','doctorand','conferentiar',20);

insert into cabinet(specialitate ,unit)
values('cardiologie', 'Catena'),
('pediatrie', 'Somesana'),
('chirurgie', 'Policlinica 1');

set @flag = null;
call addServiciu(101, 'RMN Torace','Ecografie',100,2,@flag);
call addServiciu(102, 'Chirurgie Plastica','Chirurgie',1000,4,@flag);
call addServiciu(102, 'Consult general','Consult',50,1,@flag);


insert into Orare_generice(CNP ,zi , ora_inceput ,ora_sfarsit, unitate_medicala)
values(101,'luni', '07:00:00','14:00:00', 'Catena'),
(101,'marti', '07:00:00','14:00:00', 'Catena'),
(101,'miercuri', '07:00:00','14:00:00', 'Catena'),
(101,'joi', '07:00:00','14:00:00', 'Catena'),
(101,'vineri', '07:00:00','14:00:00', 'Catena'),
(101,'sambata', '07:00:00','14:00:00', 'Catena'),
(101,'duminica', '07:00:00','14:00:00', 'Catena'),
#primul medic
(102,'luni', '07:00:00','14:00:00', 'Somesana'),
(102,'marti', '07:00:00','14:00:00', 'Somesana'),
(102,'miercuri', '07:00:00','14:00:00', 'Somesana'),
(102,'joi', '07:00:00','14:00:00', 'Somesana'),
(102,'vineri', '07:00:00','14:00:00', 'Somesana'),
(102,'sambata', '07:00:00','14:00:00', 'Somesana'),
(102,'duminica', '07:00:00','14:00:00', 'Somesana'),
#al doilea medic
(103,'luni', '07:00:00','14:00:00', 'Policlinica 1'),
(103,'marti', '07:00:00','14:00:00', 'Policlinica 1'),
(103,'miercuri', '07:00:00','14:00:00', 'Policlinica 1'),
(103,'joi', '07:00:00','14:00:00', 'Policlinica 1'),
(103,'vineri', '07:00:00','14:00:00', 'Policlinica 1'),
(103,'sambata', '07:00:00','14:00:00', 'Policlinica 1'),
(103,'duminica', '07:00:00','14:00:00', 'Policlinica 1');

set @s:=null;
call addProgramare('Paul', 'Pop', 'Vasile', 101, 'RMN','Somesana', '09:00:00', '00:20:00', '2020-11-12',@s);
call addProgramare('Paul', 'Pop', 'Maria', 101, 'RMN','Somesana', '10:00:00', '00:20:00', '2020-09-10',@s);
call addProgramare('Raul', 'Ioan', 'Andrei', 102, 'Chirurgie','Catena', '12:00:00', '02:00:00', '2020-05-12',@s);
call addProgramare('Raul', 'Victoria', 'Mariana', 102, 'RMN','Catena', '11:00:00', '01:0:00', '2020-06-12',@s);
call addProgramare('Anghel', 'Marian', 'Ion', 103, 'Chirurgie','Policlinica 1', '08:00:00', '00:30:00', '2020-12-12',@s);
call addProgramare('Anghel', 'Popescu', 'Iordache', 103, 'Operatie de Menisc','Policlinica 1', '09:00:00', '03:00:00', '2020-01-25',@s);

insert into concediu(CNP, inceputConcediu, finalConcediu)
values(101, '2023-08-10','2023-08-24'),
(102, '2023-06-10','2023-06-24'),
(103, '2023-07-10','2023-07-24');
