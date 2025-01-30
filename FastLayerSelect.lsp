;|
Universeel Laagwissel Script - Houdt altijd automatisch de laatste twee lagen bij.
Gebruik g1 t/m g14 om direct naar Groep_1 t/m Groep_14 te wisselen.
Gebruik g0 om naar de standaardlaag 0 te wisselen.
Als er objecten geselecteerd zijn, worden ze verplaatst naar de nieuwe laag.
Als er geen objecten geselecteerd zijn, verandert alleen de actieve laag.
Gebruik y om tussen de laatste twee gebruikte lagen te wisselen.
MIT License
Copyright (c) 2025 Barry
|;

(setq lastLayer nil)      ; Variabele om de vorige laag op te slaan
(setq currentLayer (getvar "clayer"))   ; Start met de huidige laag van AutoCAD

(defun UpdateLayerTracking ()
  "Houdt de laatste twee gebruikte lagen bij."
  (setq newLayer (getvar "clayer"))  ; Haal de huidige laag op
  (if (and newLayer (not (equal newLayer currentLayer))) ; Controleer of de laag écht veranderd is
    (progn
      (setq lastLayer (if currentLayer currentLayer lastLayer))  ; Update lastLayer alleen als currentLayer al een waarde had
      (setq currentLayer newLayer)   ; Update currentLayer met de nieuwe laag
    )
  )
)

(defun ChangeLayer (layername)
  "Als er een object is geselecteerd, verplaats het naar 'layername'. 
   Zo niet, verander alleen de actieve laag."
  (setq sel (ssget "I"))  ; Pak alleen de huidige actieve selectie
  (if sel
    (progn
      (setq i 0)
      (while (< i (sslength sel))
        (setq ent (ssname sel i))  ; Pak elk object uit de selectie
        (setq entData (entget ent))  ; Haal de eigenschappen van het object op
        (setq entData (subst (cons 8 layername) (assoc 8 entData) entData))  ; Wijzig de laag
        (entmod entData)  ; Pas de wijziging toe
        (setq i (1+ i))
      )
      (redraw)  ; Forceer AutoCAD om de wijziging direct door te voeren
    )
    (progn
      (if (tblsearch "layer" layername)
        (setvar "clayer" layername)  ; Zet de actieve laag in AutoCAD
      )
      (UpdateLayerTracking)        ; Update de laatste twee lagen
    )
  )
  (princ)
)

;; Commando's voor laagwissel (werkt nu correct zonder extra selectieprompt)
(defun C:g1 () (ChangeLayer "Groep_1"))
(defun C:g2 () (ChangeLayer "Groep_2"))
(defun C:g3 () (ChangeLayer "Groep_3"))
(defun C:g4 () (ChangeLayer "Groep_4"))
(defun C:g5 () (ChangeLayer "Groep_5"))
(defun C:g6 () (ChangeLayer "Groep_6"))
(defun C:g7 () (ChangeLayer "Groep_7"))
(defun C:g8 () (ChangeLayer "Groep_8"))
(defun C:g9 () (ChangeLayer "Groep_9"))
(defun C:g10 () (ChangeLayer "Groep_10"))
(defun C:g11 () (ChangeLayer "Groep_11"))
(defun C:g12 () (ChangeLayer "Groep_12"))
(defun C:g13 () (ChangeLayer "Groep_13"))
(defun C:g14 () (ChangeLayer "Groep_14"))
(defun C:g0 () (ChangeLayer "0"))

;; Wissel tussen de laatste twee gebruikte lagen
(defun C:y () 
  (UpdateLayerTracking)  ; Zorg ervoor dat de laatste twee lagen up-to-date zijn
  (if (and lastLayer currentLayer)
    (ChangeLayer lastLayer)  ; Wissel naar de vorige laag, ongeacht de naam
  )
  (princ)
)
