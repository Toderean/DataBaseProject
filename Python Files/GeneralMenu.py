import customtkinter

import Connection

customtkinter.set_appearance_mode("black")
customtkinter.set_default_color_theme("blue")


class PersonalData:
    def __init__(self, master):
        class Data(customtkinter.CTkFrame):
            def __init__(self, index, height, data):
                super().__init__(master)
                self.place(y=height, x=30)
                db_user = Connection.personal_data()
                customtkinter.CTkLabel(self, text=data + ": " + str(db_user[0][index]), font=("arial", 20)).pack(
                    padx=10,
                    pady=10)

        labels = (
            "Username", "Parola", "CNP", "Nume", "Prenume", "Adresa", "Nr. Tel", "IBAN", "Nr. contract",
            "Data Angajarii",
            "Functie", "Salariu negociat", "Nr. Ore")
        index = (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
        height = 40
        for i in range(12):
            Data(index[i], height, labels[i])
            height += 40


class VizualizareProgrmare:
    def __init__(self, master):
        class p1(customtkinter.CTkFrame):
            def __init__(self, height, data, index):
                super().__init__(master)
                self.place(y=height, x=30)
                db_user = Connection.programare()
                # print(db_user)
                customtkinter.CTkLabel(self,
                                       text=data + ": " + str(db_user[0][index]),
                                       font=("arial", 20)).pack(side="left",
                                                                padx=10,
                                                                pady=10)

        labels = ("ID Prog"
                  "Ziua", "Ora", "Durata", "CNP Medic", "Serviciu", "Unitate Medicala", "Nume Pacient",
                  "Prenume Pacient")
        index = (0, 1, 2, 3, 4, 5, 6, 7, 8)
        height = 40
        for i in range(7):
            p1(height, labels[i], index[i])
            height += 40


class SearchUser:
    def __init__(self, master):
        searched = customtkinter.CTkEntry(master, height=40, width=400, fg_color="white", border_width=2,
                                          placeholder_text="Introduce-ti utilizatorul", font=("arial", 20))
        searched.place(y=25, x=20)
        customtkinter.CTkButton(master, height=40, width=70, text="Search", command=lambda: search()).place(y=25,
                                                                                                            x=430)
        data = ("Username", "Parola", "CNP", "Nume", "Prenume", "Adresa", "Nr.Tel", "IBAN", "Nr.contract",
                "Data Angajarii",
                "Functie", "Salariu negociat", "Nr. Ore")

        class Data(customtkinter.CTkFrame):
            def __init__(self, index, height, data, search_results, master_frame):
                super().__init__(master_frame, fg_color="white", border_width=3)
                self.place(y=height, x=20)
                db_user = search_results
                customtkinter.CTkLabel(self, text=data + ": " + str(db_user[0][index]), font=("arial", 20)).pack(
                    padx=10,
                    pady=10)

        index = (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)

        def search():
            aux = customtkinter.CTkFrame(master, height=500, width=500)
            aux.place(x=50, y=100)
            height = 20
            desired = Connection.show_search_results(searched.get())
            if searched.get() == "":
                return
            if not desired:
                customtkinter.CTkLabel(aux, text="Nu a fost gasit",
                                       text_color="red", font=("arial", 30)).place(x=20, y=15)
                return
            for i in range(13):
                Data(index[i], height, data[i], desired, aux)
                height += 45


class Orar:
    def __init__(self, master):
        class p1(customtkinter.CTkFrame):
            def __init__(self, height, data, index):
                super().__init__(master)
                self.place(y=height, x=30)
                db_user = Connection.orar()
                customtkinter.CTkLabel(self,
                                       text=data + ": " + str(db_user[0][index]) + "-" + str(db_user[0][index + 1]),
                                       font=("arial", 20)).pack(
                    padx=10,
                    pady=10)

        labels = ("Luni", "Marti", "Miercuri", "Joi", "Vineri", "Sambata", "Duminica")
        index = (0, 1, 2, 3, 4, 5, 6)
        height = 40
        for i in range(7):
            p1(height, labels[i], index[i])
            height += 40


class Concediu:
    def __init__(self, master):
        class Data(customtkinter.CTkFrame):
            def __init__(self, index, height, data):
                super().__init__(master)
                self.place(y=height, x=30)
                db_user = Connection.concediu()
                customtkinter.CTkLabel(self, text=data + ": " + str(db_user[0][index]), font=("arial", 20)).pack(
                    padx=10,
                    pady=10)

        labels = (
            "Inceput Concediu", "Sfarsit Concediu")
        index = (0, 1)
        height = 40
        for i in range(2):
            Data(index[i], height, labels[i])
            height += 40


class Servicii:
    def __init__(self, master):
        class Data(customtkinter.CTkFrame):
            def __init__(self, index, height, data):
                super().__init__(master)
                self.place(y=height, x=30)
                db_user = Connection.servicii()
                customtkinter.CTkLabel(self,
                                       text=data + ": " + str(db_user[0][index]),
                                       font=("arial", 20)).pack(
                    padx=10,
                    pady=10)

        labels = (
            "Serviciul", "Specialitatea", "Pret", "Durata")
        index = (0, 1, 2, 3)
        height = 40
        for i in range(4):
            Data(index[i], height, labels[i])
            height += 40
