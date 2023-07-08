drop procedure if exists addServiciu;
DELIMITER \\
create procedure addServiciu(cnpMedic int(20), serviciuMedical varchar(100),domeniu varchar(100), pret int, durata int, out s int)
begin
	set s := 0;
    set @flag := null;
    set @flag := (select idServiciu from servicii where cnp = cnpMedic and serviciu like serviciuMedical);
	if (@flag is null) then
		insert into servicii(cnp, serviciu,specialitate, pret, durata) VALUES (cnpMedic, serviciuMedical,domeniu, pret, durata);
        set s := 1;
    end if;
end; \\
DELIMITER ;


drop procedure if exists addProgramare;
DELIMITER \\
create procedure addProgramare(numeMedic varchar(255), numeP varchar(255), prenumeP varchar(255), cnpMedic int(20), serviciuF varchar(100), unit varchar(255),ora time,durata time, zi date, out s int)
begin
		set s:= 0;
        set @flag := ora;
        set @orar := null;
        set @CNP := (select cnp from user1 where nume like numeMedic);
       
       set @ziP := dayofweek(zi);
		case
			when @ziP = 1 THEN SET @orar := (select id_orar from Orare_generice as o where @CNP = cnp and o.zi like 'duminica' 
			and unit LIKE unit and ora >= ora_inceput and ora <= ora_sfarsit);
			when @ziP = 2 THEN SET @orar := (select id_orar from Orare_generice as o where @CNP = cnp and o.zi like 'luni' 
			and unit LIKE unit and ora >= ora_inceput and ora <= ora_sfarsit);
            when @ziP = 3 THEN SET @orar := (select id_orar from Orare_generice as o where @CNP = cnp and o.zi like 'marti' 
			and unit LIKE unit and ora >= ora_inceput and ora <= ora_sfarsit);
            when @ziP = 4 THEN SET @orar := (select id_orar from Orare_generice as o where @CNP = cnp and o.zi like 'miercuri' 
			and unit LIKE unit and ora >= ora_inceput and ora <= ora_sfarsit);
            when @ziP = 5 THEN SET @orar := (select id_orar from Orare_generice as o where @CNP = cnp and o.zi like 'joi' 
			and unit LIKE unit and ora >= ora_inceput and ora <= ora_sfarsit);
            when @ziP = 6 THEN SET @orar := (select id_orar from Orare_generice as o where @CNP = cnp and o.zi like 'vineri' 
			and unit LIKE unit and ora >= ora_inceput and ora <= ora_sfarsit);
            when @ziP = 7 THEN SET @orar := (select id_orar from Orare_generice as o where @CNP = cnp and o.zi like 'sambata' 
			and unit LIKE unit and ora >= ora_inceput and ora <= ora_sfarsit);
		end case;
        insert into programare(ziua ,ora ,durata ,CNP ,serviciu ,unitate_medicala ,nume_pacient ,prenume_pacient)
        values (zi, ora, durata, @CNP, serviciuF, unit, numeP, prenumeP);
end;\\
DELIMITER ;