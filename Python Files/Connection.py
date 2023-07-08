import mysql.connector

db = mysql.connector.Connect(host="localhost", user="root", password="Florin2002razvan", database="unitate_medic")

cursor = db.cursor()

db_insert_cnp = 0
db_policlinic = 0
db_policlinic_name = ""


def choose(nume):
    cursor.execute("select nume,adresa,idP from unit")
    db_data = cursor.fetchall()
    user_input = nume
    for i in db_data:
        if i[0] == user_input:
            global db_policlinic_name
            db_policlinic_name = user_input
            global db_policlinic
            db_policlinic = i[2]
            return True
    return False


def login(username, password):
    cursor.execute("select username,parola,functie,cnp from user1")
    db_data = cursor.fetchall()
    user_input = (username, password)
    for i in db_data:
        if i[:2] == user_input:
            global db_insert_cnp
            db_insert_cnp = i[3]
            return i[2]
    return 0


def signed(F_name, L_name, username, password, CNP, adress, Phone, contB, nrContract, data_ang, function, nr_ore,
           salariu):
    cursor.execute("insert into user1(username, parola, cnp, nume, prenume, adresa, numarTel, contIban, nrCon, "
                   "dataAngajarii, functie,nrOre,salariu)"
                   "values(%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s ,%s)",
                   (username, password, CNP, F_name, L_name, adress, Phone, contB, nrContract, data_ang, function,
                    nr_ore, salariu))
    db.commit()
    return 1


def personal_data():
    cursor.execute("select * from user1 where cnp = '%d'" % db_insert_cnp)
    return cursor.fetchall()


def show_search_results(searched_username):
    cursor.execute("select * from user1 where username = '%s'" % searched_username)
    return cursor.fetchall()


def orar():
    cursor.execute("select * from Program where id_program = '%d'" % db_policlinic)
    return cursor.fetchall()


def programare():
    cursor.execute("select * from programare where CNP = '%d'" % db_insert_cnp)
    return cursor.fetchall()


def concediu():
    cursor.execute("select inceputConcediu, finalConcediu from concediu where CNP = '%d'" % db_insert_cnp)
    return cursor.fetchall()


def servicii():
    cursor.execute("select serviciu,specialitate,pret,durata from servicii where CNP = '%d'" % db_insert_cnp)
    return cursor.fetchall()
