import customtkinter
from tkinter import *
from tkinter import messagebox
from PIL import Image

import Admin
import SuperAdmin
import Pacient
import Medic
import Asistent
import Connection
import GeneralMenu

customtkinter.set_appearance_mode("white")
customtkinter.set_default_color_theme("blue")


class Screen(customtkinter.CTk):
    def __init__(self):
        super().__init__()
        self.geometry("1280x720")
        self.title("Policlinica")
        self.resizable(False, False)

        poza1 = customtkinter.CTkImage(Image.open("images\\pz2_test.png"), size=(300, 300))

        # Log Menu
        Log = customtkinter.CTkFrame(self)
        Log.pack(pady=30, padx=60, fill="both", expand=True)
        pz2 = customtkinter.CTkLabel(Log, text="", image=poza1)
        pz2.pack(side="top", pady=12, padx=10)
        userin = customtkinter.CTkEntry(Log, placeholder_text="Enter username...")
        userin.pack(pady=12, padx=10)

        passin = customtkinter.CTkEntry(Log, placeholder_text="Enter password...", show="·")
        passin.pack(pady=12, padx=10)

        logInB = customtkinter.CTkButton(Log, text="Login", command=lambda: logIn())
        logInB.pack(pady=12, padx=10)

        signUpB = customtkinter.CTkButton(Log, text="Sign Up", command=lambda: SignUp())
        signUpB.pack(pady=12, padx=10)

        def logIn():
            functie = Connection.login(userin.get(), passin.get())
            if functie != "":
                self.destroy()
                if functie == "admin":
                    Admin.Admin().mainloop()
                elif functie == "super":
                    SuperAdmin.SuperAdmin().mainloop()
                elif functie == "medic":
                    Medic.Medic().mainloop()
                # elif functie == :
                #     Pacient.Pacient().mainloop()
                elif functie == "asistent":
                    Asistent.Asistent().mainloop()
            elif Connection.login(userin.get(), passin.get()) == 0:
                messagebox.showwarning(title="Error", message="Username or password incorrect")
            elif passin.get() == "" or userin.get() == "":
                messagebox.showwarning(title="Error", message="Enter you're username and password")

        def SignUp():
            # SignUp Menu
            Log.pack_forget()
            sMenu = customtkinter.CTkFrame(self, fg_color="white")
            sMenu.pack(side="left", padx=50, fill="both", pady=20)

            sMenu_Title = customtkinter.CTkLabel(sMenu, text="Sign up",
                                                 font=customtkinter.CTkFont(size=24, weight="bold"))
            sMenu_Title.grid(row=0, column=0, padx=20)

            first_name_entry = customtkinter.CTkEntry(sMenu, placeholder_text="Pop..")
            first_name_text = customtkinter.CTkLabel(sMenu, text="Nume")
            first_name_text.grid(row=1, column=0, padx=20, pady=10)
            first_name_entry.grid(row=1, column=1, padx=20, pady=10)

            last_name_entry = customtkinter.CTkEntry(sMenu, placeholder_text="Andrei...")
            last_name_text = customtkinter.CTkLabel(sMenu, text="Prenume")
            last_name_text.grid(row=2, column=0, padx=20, pady=10)
            last_name_entry.grid(row=2, column=1, padx=20, pady=10)

            usernameText = customtkinter.CTkLabel(sMenu, text="Username:")
            usernameEntry = customtkinter.CTkEntry(sMenu, placeholder_text="andrei123...")
            usernameEntry.grid(row=3, column=1, padx=20, pady=10)
            usernameText.grid(row=3, column=0, padx=20, pady=10)

            passwordText = customtkinter.CTkLabel(sMenu, text="Password:")
            password_Entry = customtkinter.CTkEntry(sMenu, placeholder_text="Write your password...")
            password_Entry.grid(row=4, column=1, padx=20, pady=10)
            passwordText.grid(row=4, column=0, padx=20, pady=10)

            CNP_Text = customtkinter.CTkLabel(sMenu, text="CNP:")
            CNP_Entry = customtkinter.CTkEntry(sMenu, placeholder_text="Write your CNP...")
            CNP_Entry.grid(row=5, column=1, padx=20, pady=10)
            CNP_Text.grid(row=5, column=0, padx=20, pady=10)

            adress_text = customtkinter.CTkLabel(sMenu, text="Adresa:")
            adress_Entry = customtkinter.CTkEntry(sMenu, placeholder_text="Write your adress...")
            adress_Entry.grid(row=6, column=1, padx=20, pady=10)
            adress_text.grid(row=6, column=0, padx=20, pady=10)

            phone_text = customtkinter.CTkLabel(sMenu, text="Telefon:")
            phone_Entry = customtkinter.CTkEntry(sMenu, placeholder_text="Write your phone number...")
            phone_Entry.grid(row=7, column=1, padx=20, pady=10)
            phone_text.grid(row=7, column=0, padx=20, pady=10)

            Iban_text = customtkinter.CTkLabel(sMenu, text="Iban:")
            Iban_Entry = customtkinter.CTkEntry(sMenu, placeholder_text="Write your Iban...")
            Iban_Entry.grid(row=8, column=1, padx=20, pady=10)
            Iban_text.grid(row=8, column=0, padx=20, pady=10)

            nr_cont_text = customtkinter.CTkLabel(sMenu, text="Nr. Contract")
            nr_cont_entry = customtkinter.CTkEntry(sMenu, placeholder_text="Write your contract number...")
            nr_cont_entry.grid(row=9, column=1, padx=20, pady=10)
            nr_cont_text.grid(row=9, column=0, padx=20, pady=10)

            data_angajarii_entry = customtkinter.CTkEntry(sMenu, placeholder_text="...")
            data_angajarii_text = customtkinter.CTkLabel(sMenu, text="Data angajarii")
            functie_entry = customtkinter.CTkEntry(sMenu, placeholder_text="...")
            functie_text = customtkinter.CTkLabel(sMenu, text="Specialitatea")

            SignUpB = customtkinter.CTkButton(sMenu, text="Sign Me Up", command=lambda: submit())
            SignUpB.grid(row=13, column=2, padx=12, pady=10)

            # SignUpB.grid(row=12, column=0, padx=12, pady=10)

            data_angajarii_text.grid(row=10, column=0, padx=20, pady=10)
            data_angajarii_entry.grid(row=10, column=1, padx=20, pady=10)
            functie_entry.grid(row=11, column=1, padx=20, pady=10)
            functie_text.grid(row=11, column=0, padx=20, pady=10)

            data_angajarii_text.grid(row=10, column=0, padx=20, pady=10)
            data_angajarii_entry.grid(row=10, column=1, padx=20, pady=10)
            functie_entry.grid(row=11, column=1, padx=20, pady=10)
            functie_text.grid(row=11, column=0, padx=20, pady=10)

            salariu_entry = customtkinter.CTkEntry(sMenu, placeholder_text="Introduceti salariul negociat")
            salariu_text = customtkinter.CTkLabel(sMenu, text="Salariu")
            salariu_text.grid(row=12, column=0, padx=20, pady=10)
            salariu_entry.grid(row=12, column=1, padx=20, pady=10)

            nrOre_entry = customtkinter.CTkEntry(sMenu, placeholder_text="Introduceti numarul de ore")
            nrOre_text = customtkinter.CTkLabel(sMenu, text="Numar ore")
            nrOre_entry.grid(row=13, column=1, padx=20, pady=10)
            nrOre_text.grid(row=13, column=0, padx=20, pady=10)

            def submit():
                Connection.signed(first_name_entry.get(), last_name_entry.get(), usernameEntry.get(),
                                  password_Entry.get(),
                                  CNP_Entry.get(), adress_Entry.get(), phone_Entry.get(), Iban_Entry.get(),
                                  nr_cont_entry.get(), data_angajarii_entry.get(), functie_entry.get(),
                                  nrOre_entry.get(), salariu_entry.get())
                sMenu.pack_forget()
                Log.pack(pady=30, padx=60, fill="both", expand=True)
