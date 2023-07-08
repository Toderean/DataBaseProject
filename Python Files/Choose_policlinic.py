from tkinter import *

import customtkinter
from PIL import Image

import Connection
import First_screen

customtkinter.set_appearance_mode("white")
customtkinter.set_default_color_theme("blue")


class policlinic(customtkinter.CTk):

    def __init__(self):
        super().__init__()
        self.geometry("1280x720")
        self.title("Policlinica")
        self.resizable(False, False)
        nr = 1

        SelectFrame = customtkinter.CTkFrame(self)
        SelectFrame.pack(pady=30, padx=60, fill="both", expand=True)
        poza1 = customtkinter.CTkImage(Image.open("images\\pz2_test.png"), size=(300, 300))
        pz1 = customtkinter.CTkLabel(SelectFrame, text="", image=poza1)
        pz1.pack(side="top", pady=100)
        entry1 = customtkinter.CTkEntry(SelectFrame, placeholder_text="Numele Policlinicii...")
        entry1.pack()
        select = customtkinter.CTkButton(SelectFrame, text="Select", command=lambda: select1())
        select.pack()

        def select1():
            if Connection.choose(entry1.get()):
                self.destroy()
                First_screen.Screen().mainloop()
