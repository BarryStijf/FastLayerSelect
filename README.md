# 🚀 AutoCAD Layer Switcher (`AutoLISP`)

Een **AutoCAD Laagwissel-script** waarmee je eenvoudig lagen kunt wisselen en objecten naar een andere laag kunt verplaatsen met snelle commando’s.

## ✨ Features
✅ **`g0` t/m `g14`** → Wisselt de actieve layer of verplaatst geselecteerde objecten naar de nieuwe layer.
✅ **Automatische selectieherkenning** → Als je een object hebt geselecteerd, verplaatst het script dat object naar de laag.  
✅ **Geen onnodige prompts of fouten** → Directe wijziging zonder onderbreking.  
✅ **`y` om tussen de laatste twee lagen te wisselen** → Snelle workflow-optimalisatie.  
✅ **Geschreven in AutoLISP** → Lichtgewicht en eenvoudig te installeren.  

## 🛠️ Installatie
1. Open **AutoCAD**.  
2. Typ `AP` (`APPLOAD` commando) en voeg het `.lsp` bestand toe aan je opstartlijst.  
3. Typ een `g(nummer)`-commando in de AutoCAD command-line.  

## 📌 Commando’s
| **Commando** | **Layer** | **Functie** |
|-------------|------------|------------|
| `y` | Universeel | Wisselt tussen de laatste twee lagen |
| `g0` | 0 |Verander de actieve laag of verplaats geselecteerde objecten |
| `g1` | Groep_1 |Layer |Verander de actieve laag of verplaats geselecteerde objecten |
| `g2` | Groep_2 | Verander de actieve laag of verplaats geselecteerde objecten |
| `g3` | Groep_3 | Verander de actieve laag of verplaats geselecteerde objecten |
| `g4` | Groep_4 | Verander de actieve laag of verplaats geselecteerde objecten |
| `g5` | Groep_5 | Verander de actieve laag of verplaats geselecteerde objecten |
| `g6` | Groep_6 | Verander de actieve laag of verplaats geselecteerde objecten |
| `g7` | Groep_7 | Verander de actieve laag of verplaats geselecteerde objecten |
| `g8` | Groep_8 | Verander de actieve laag of verplaats geselecteerde objecten |
| `g9` | Groep_9 | Verander de actieve laag of verplaats geselecteerde objecten |
| `g10` | Groep_10 | Verander de actieve laag of verplaats geselecteerde objecten |
| `g11` | Groep_11 | Verander de actieve laag of verplaats geselecteerde objecten |
| `g12` | Groep_12 | Verander de actieve laag of verplaats geselecteerde objecten |
| `g13` | Groep_13 | Verander de actieve laag of verplaats geselecteerde objecten |
| `g14` | Groep_14 | Verander de actieve laag of verplaats geselecteerde objecten |

## 🔧 Aanpassen van de lagen (`g`-commando's)
Wil je andere laagnamen gebruiken voor de `g0` t/m `g14` commando’s? Dit is eenvoudig aan te passen in de **AutoLISP-code**.

### Stap 1: Open het `.lsp` bestand  
Gebruik een **teksteditor** zoals **Notepad++**, **VS Code** of **AutoCAD's eigen LISP-editor**.

### Stap 2: Zoek de lijst met commando's  
In de code staat een sectie met de `g`-commando’s zoals dit:
```lisp
(defun C:g1 () (ChangeLayer "Groep_1"))
(defun C:g2 () (ChangeLayer "Groep_2"))
(defun C:g3 () (ChangeLayer "Groep_3"))
(defun C:g4 () (ChangeLayer "Groep_4"))
```

### Stap 3: Pas de laagnamen aan  
Verander `"Groep_1"`, `"Groep_2"`, enz. naar je eigen lagen. Bijvoorbeeld:
```lisp
(defun C:g1 () (ChangeLayer "Architectuur"))
(defun C:g2 () (ChangeLayer "Elektriciteit"))
(defun C:g3 () (ChangeLayer "Waterleidingen"))
(defun C:g4 () (ChangeLayer "Verwarming"))
```

### Stap 4: Sla het bestand op en laad het opnieuw in AutoCAD  
1. **Sla het `.lsp` bestand op.**  
2. **Typ `AP` in AutoCAD** en **herlaad het script**.  
3. **Test je nieuwe `g`-commando's!**  

✅ **Je hebt nu je eigen lagen gekoppeld aan de commando's!** 🚀

## 📜 Licentie
Dit project valt onder de **MIT-licentie**.  
Je mag dit script gebruiken en aanpassen, zolang je mij als originele maker vermeldt.  
