import customtkinter
import GeneralMenu
import First_screen
import Connection


class Medic(customtkinter.CTk):
    def __init__(self):
        super().__init__()
        self.resizable(False, False)
        self.title("Policlinica")
        self.geometry("1280x900")
        self.titleFrame = customtkinter.CTkFrame(self, width=940, height=150)
        self.titleFrame.pack(padx=(20, 20), pady=(15, 15), fill="both", expand=True)
        self.titleLabel = customtkinter.CTkLabel(self.titleFrame,
                                                 text="Bine ati venit la " + Connection.db_policlinic_name + " !",
                                                 font=("arial", 25))
        self.titleLabel.pack(padx=100, pady=20)

        def createFrame():
            return customtkinter.CTkFrame(ShowFrame, width=940, height=570)

        def packOptions(frame):
            frame.pack(side="left", padx=20, pady=(15, 15), fill="both", expand=True)

        OptionsFrame = customtkinter.CTkFrame(self, width=300, height=690)
        OptionsFrame.pack(side="right", padx=20, pady=(15, 15))

        ShowFrame = customtkinter.CTkFrame(self, width=940, height=570)
        ShowFrame.pack(side="left", padx=20, pady=(15, 15))

        def addButton(index):
            button = customtkinter.CTkButton(OptionsFrame, text=add_buttons[index], height=50, width=200,
                                             font=("arial", 25), command=lambda: display(index))
            button.pack(pady=11, padx=10)
            return button

        add_buttons = (
            "Date Personale", "Vizualizeaza Programare", "Servicii",
            "Orar", "Concediu")

        datePersonale = createFrame()
        programare_viz = createFrame()
        servicii = createFrame()
        orar = createFrame()
        conc = createFrame()

        totalFrames = (datePersonale, programare_viz, servicii, orar, conc)

        def forget():
            for fr in range(5):
                totalFrames[fr].pack_forget()

        def display(index):
            forget()
            packOptions(totalFrames[index])

        for i in range(5):
            addButton(i)

        def logOut():
            self.destroy()
            First_screen.Screen().mainloop()

        customtkinter.CTkButton(OptionsFrame, text="Log Out", height=50, width=200, font=("arial", 20),
                                command=lambda: logOut(), fg_color="red").pack(pady=11, padx=10)

        (GeneralMenu.PersonalData(datePersonale),
         GeneralMenu.Concediu(conc), GeneralMenu.Orar(orar),
         GeneralMenu.VizualizareProgrmare(programare_viz),
         GeneralMenu.Servicii(servicii))
