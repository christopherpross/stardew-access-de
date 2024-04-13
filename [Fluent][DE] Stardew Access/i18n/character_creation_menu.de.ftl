# Character Creation Menu (or new game menu)

## Default Controls

menu-character_creation-farmer_name_text_box = Name deines Charakters {$value ->
    [null] Leeres Eingabefeld.
    *[other] : {$value}
  }
menu-character_creation-farm_name_text_box = Name deines Bauernhofs {$value ->
    [null] Leeres Eingabefeld.
    *[other] : {$value}
  }
menu-character_creation-favorite_thing_text_box =  Lieblingsding {$value ->
    [null] Leeres Eingabefeld
    *[other] : {$value}
  }
menu-character_creation-previous_pet_button = Vorheriges Haustier Schalter
menu-character_creation-next_pet_button = Nächstes Haustier Schalter
menu-character_creation-current_pet-prefix = Ausgewähltes Haustier: {$content}
menu-character_creation-random_skin_button = Charakter aussehen zufällig auswählen Schalter
menu-character_creation-gender_button = Geschlecht: {$is_selected ->
    [0] {EMPTYSTRING()}
    *[1] ausgewählt
  } {$is_male ->
    [0] Weiblich
    *[1] Männlich
  } Schalter
menu-character_creation-farm_type_buttons = Typ des Bauernhofs: {$is_selected ->
    [0] {EMPTYSTRING()}
    *[1] ausgewählt
  } {$value}
menu-character_creation-next_farm_type_page_button = Nächster Bauernhoftyp Schalter
menu-character_creation-previous_farm_type_page_button = Vorhergehender Bauernhoftyp Schalter
menu-character_creation-farm_type_locked_info = Erreiche Stufe 10 {$farm_name} um diesen Typ Freizuschalten.
menu-character_creation-skip_intro_button = Intro überspringen: {$is_enabled ->
    [0] deaktiviert
    *[1] aktiviert
  } Schalter
menu-character_creation-advanced_options_button = Erweiterte Einstellungen Schalter
menu-character_creation-character_design_controls_usage_info = Drücke die linke Steuertaste + Leertaste, um das Erscheinungsbild deines Charakters einzustellen.
menu-character_creation-character_design_controls_toggle_info = Einstellungen betreffend des Charakter Erscheinungsbildes sind {$is_enabled ->
    [0] ausgeblendet
    *[1] eingeblendet
  }

## Co-op controls

menu-character_creation-decrease_starting_cabins_button = Anzahl der Hütten für die Spieler verringern Schalter
menu-character_creation-starting_cabins_label = Anzahl der Hütten für die Spieler: {$value}
menu-character_creation-increase_starting_cabins_button = Anzahl der Hütten für die Spieler erhöhen Schalter
menu-character_creation-cabin_layout_nearby_button = Hütten-layout auf in der nähe setzen Schalter
menu-character_creation-cabin_layout_separate_button = Hütten-layout auf separat setzen Schalter
menu-character_creation-increase_profit_margin_button = Gewinnspanne erhöhen Schalter
# The 'value' will be 'normal' instead of `1`. So translate that here as shown in example below.
# Example: {$value ->
#     [normal] <normal equivalent to your language here>
#     *[other] {$value}
#   }
menu-character_creation-profit_margin_label = Gewinnspanne: {$value}
menu-character_creation-decrease_profit_margin_button = Gewinnspanne verringern Schalter
menu-character_creation-money_style_separate_wallets_button = Geldbörse auf {$separate_wallets ->
[0] teilen
*[1] separat 
  } setzen Schalter

## Character design controls

menu-character_creation-rotate_left_button = Nach links Drehen Schalter
menu-character_creation-rotate_right_button = Nach rechts Drehen Schalter
menu-character_creation-eye_color_hue_slider = Augenfarbe, Farbton Schieberegler
menu-character_creation-eye_color_saturation_slider = Augenfarbe, Sättigung Schieberegler
menu-character_creation-eye_color_value_slider = Augenfarbe, Wert Schieberegler
menu-character_creation-hair_color_hue_slider = Haarfarbe, Farbton Schieberegler
menu-character_creation-hair_color_saturation_slider = Haarfarbe, Sättigung Schieberegler
menu-character_creation-hair_color_value_slider = Haarfarbe, Wert Schieberegler
menu-character_creation-pants_color_hue_slider = Farbe der Hose, Farbton Schieberegler
menu-character_creation-pants_color_saturation_slider = Farbe der Hose, Sättigung Schieberegler
menu-character_creation-pants_color_value_slider = Farbe der Hose, Wert Schieberegler

menu-character_creation-previous_button_with_label = Vorherige {$label} Schalter
menu-character_creation-next_button_with_label = Nächste {$label} Schalter
menu-character_creation-label-skin = Hautfarbe
menu-character_creation-label-hair = Frisur
menu-character_creation-label-shirt = Shirt
menu-character_creation-label-pants_style = Design der Hose
menu-character_creation-label-acc = Zubehör

menu-character_creation-label-eye_color = Augenfarbe
menu-character_creation-label-hair_color = Haarfarbe
menu-character_creation-label-pants_color = Farbe der Hose
menu-character_creation-label-hue = Farbton
menu-character_creation-label-saturation = Sättigung
menu-character_creation-label-value = Wert

### Descriptions

menu-character_creation-description-cat = {$less_info ->
    [0] {$breed ->
      [1] Orangefarbene Katze
      [2] Graugetigerte Katze mit weißem Bauch
      [3] Gelbe Katze mit lila Halsband
      [4] Cremefarbene Katze
      [5] Schwarze Katze mit gelben Augen
      *[other] nicht beschriebene Katze {$breed}
    }
    *[1] Katze {$breed}
  }

menu-character_creation-description-dog = {$less_info ->
    [0] {$breed ->
      [1] Goldbrauner Hund mit blauem Halsband
      [2] Brauner Schäferhund
      [3] Hellbrauner Körper, braune Ohren, langhaariger Terrier
      [4] Grau-weißer Schäferhund mit einem roten Halstuch
      [5] Brauner Retriever
      *[other] nicht beschriebener Hund {$breed}
    }
    *[1] Hund {$breed}
  }

menu-character_creation-description-turtle = {$less_info ->
    [0] {$breed ->
      [1] Grüne Schildkröte
      [2] Lila Schildkröte
      *[other] nicht beschriebene Schildkröte {$breed}
    }
    *[1] Schildkröte {$breed}
  }

menu-character_creation-description-skin = {$less_info ->
    [0] {$index ->
      [1] Blass, beige Unterton
      [2] Gebräunt, rosa Unterton
      [3] Blass, rosa Unterton
      [4] Blass
      [5] Braun, roter Unterton
      [6] Braun, rosa Unterton
      [7] Braun, warmer Ton
      [8] Beige, orangener Unterton
      [9] Hellbraun
      [10] Blass, rosa Oberton
      [11] Blass, grauer Unterton
      [12] Gebräunt, warmer Ton
      [13] Blassgrün
      [14] Helles Fuchsia
      [15] Braun, voller Ton
      [16] Gebräunt, roter Oberton
      [17] Blassblau
      [18] Grün
      [19] Blassrot
      [20] Blasslila
      [21] Gelb, voller Ton
      [22] Grau
      [23] Blass, gelber Unterton
      [24] Blass, Elfenbein-Unterton
      *[other] nicht beschriebene Hautfarbe {$index}
    }
    *[1] Hautfarbe: {$index}
  }

menu-character_creation-description-hair = {$less_info ->
    [0] {$index ->
      [1] Rechts gescheitelt, kurz und ungepflegt
      [2] Mittelscheitel, etwa 15 cm Länge
      [3] Links gescheitelt, mit zur Seite gekehrtem Pony, nach hinten gekämmt
      [4] Afro
      [5] Rechts gescheitelt, ungepflegt mit Pony
      [6] Hinten und an den Seiten rasiert
      [7] Rechts gescheitelter, offener Pompadour, Kinnlänge
      [8] Rechts gescheitelt, kurz und nach hinten gekämmt
      [9] Rechts gescheitelt mit Pony, große, widerspenstige Spitzen
      [10] Rechts gescheitelt, Bob zur Seite
      [11] Pompadour, kurz und nach hinten gekämmt
      [12] Kurz mit verblassenden Seiten, nach hinten gekämmt
      [13] Mittelscheitel, niedriger Pferdeschwanz
      [14] Widerspenstige Dreadlocks, etwa 15 cm Länge, unterschnitten
      [15] Links gescheitelt mit langem Pony, nach hinten gekämmt
      [16] Mittelscheitel, etwa 10 cm Länge, undercut
      [17] Rechts gescheitelt, hoher Pferdeschwanz, zur Seite gekehrtes Pony
      [18] Rechts gescheitelt und schulterlange, niedrige Zöpfe
      [19] Rechts gescheitelt, kurz mit langem zur Seite gekehrtem Pony
      [20] Hochsteckfrisur, drei straffe Dutts auf dem Kopf
      [21] Kurz und gekämmt
      [22] Rechts gescheitelt, kurz, hohe Zöpfe
      [23] Rechts gescheitelt mit Pony, straffer, hoher Dutt
      [24] Rechts gescheitelt mit Pony, ungepflegt, etwa 15 cm
      [25] Rechts gescheitelt, zur Seite gekehrtes Pony, mittlere Rückenlänge
      [26] Fünfziger-Stil, toupiert, Locken am Bob-Ende
      [27] Mittelscheitel, oberschenkellang
      [28] Rechts gescheitelt, zur Seite gekehrtes Pony, Kinnlänge
      [29] Mittelscheitel, taillenlang, niedriger Pferdeschwanz
      [30] Taillenlänge mit Pony, glatt, spitz zulaufende Enden
      [31] Rechts gescheitelt mit Pony, niedrige Zöpfe
      [32] Zwei seitlich gedrehte Dutts, Prinzessin Leia-Stil
      [33] Rechts gescheitelt, zur Seite gekehrtes Pony, kurz
      [34] Rechts gescheitelt, hüftlang, geflochtene Zöpfe
      [35] Rechts gescheitelt, mittlere Rückenlänge, geflochtene Zöpfe
      [36] Hoher Pferdeschwanz, Mini-Pony
      [37] Mittelscheitel, nach rechts über die Schulter gekehrt
      [38] Rechts gescheitelt mit Pony, hohe Zöpfe
      [39] Schwarzes Haarband, Kinnlänge
      [40] Schwarzes Haarband mit Pony, schulterlang
      [41] Links gescheitelt, lockere Locken, schulterlang
      [42] Schulterlänge mit Mini-Pony, lockig
      [43] Lang oben mit Strähnchen, nach hinten gekämmt
      [44] Rechts gescheitelt, zur Seite gekehrtes Pony, kurz
      [45] Mittelscheitel, Übergang mit etwa 10 cm oben
      [46] Cornrows, Kinnlänge
      [47] Links gescheitelt, kurz und gekämmt
      [48] Mittelscheitel, zur Seite gekehrtes Pony, Kinnlänge
      [49] Mittelscheitel, ungepflegt, teilweiser Pferdeschwanz
      [50] Liberty Spike-Stil, rasierte Seiten
      [51] Donutschnitt, schulterlang
      [52] Donutschnitt, kurz
      [53] Glatze oder rasiert
      [54] Rasiert, etwa 1 cm Länge, Spitzer Haaransatz
      [55] Rasiert, etwa 1 cm Länge, ungepflegt
      [56] Rasiert, etwa 1 cm Länge, gerader Haaransatz
      [101] Links gescheitelt mit Pony, wellig, taillenlang
      [102] Rechts gescheitelt, hüftlang, lockig
      [103] Rechts gescheitelt, taillenlang, glatt
      [104] Mittelscheitel, taillenlang, niedriger Pferdeschwanz
      [105] Mittelscheitel, taillenlang, hoher Zopf
      [106] Rechts gescheitelt mit Pony, zur Schulter gekehrt
      [107] Rechts gescheitelt, ungepflegt, zur Schulter gekehrt
      [108] Bob mit Pony
      [109] Links gescheitelt, kurz, gekämmt
      [110] Wellenförmig mit Pony, etwa 20 cm
      [111] Wellenförmig mit Pony, schulterlang
      [112] Dreadlocks, ordentlich, etwa 10 cm Länge
      [113] Kurz und ungepflegt
      [114] Mittelscheitel, etwa 15 cm Länge
      [115] Rechts gescheitelt, schulterlang, ungepflegt
      [116] Mittelscheitel, toupiert, schulterlang
      [117] Mittelscheitel mit Pony, kurz
      [118] Links gescheitelt mit Pony, ungepflegt, kurz
      *[other] Unbeschriebene Frisur {$index}
    }
    *[1] Frisur: {$index}
  }

menu-character_creation-description-shirt = {$less_info ->
    [0] {$index ->
      [1001] Rot, Jeans-Latzhose
      [1002] Braun mit Knopfleiste
      [1003] Hellgrün, brauner Gürtel
      [1004] Schwarz mit grauem Spritzmuster
      [1005] Schwarz mit Totenkopf-Design
      [1006] Blaugrau mit Wolken-Design
      [1007] Creme mit hellblauem horizontalen Streifen
      [1008] Grün, mit Jeans-Latzhose
      [1009] Gelb, brauner horizontaler Zickzack
      [1010] Blaugrün mit Wolken-Design
      [1011] Schwarz, weißer Buchstabe A
      [1012] Grün, Kragen mit Zugband
      [1013] Limettengrün, grüne Streifen
      [1014] Rot, weiße horizontale Streifen
      [1015] Schwarz, Design mit weißem Brustkorb
      [1016] Braun, Beige, Hellbraun gestreift
      [1017] Blau, gelbe Punkte
      [1018] Grün, braune Hosenträger
      [1019] Braune Jacke, graues T-Shirt
      [1020] Weiß, blaues Halstuch
      [1021] Grünes Tanktop, graues T-Shirt
      [1022] Ocker, grüner horizontaler Streifen
      [1023] Rot mit Knopfleiste
      [1024] Grün mit Knopfleiste
      [1025] Hellblau mit Knopfleiste
      [1026] Blau mit Knopfleiste
      [1027] Seegrün, horizontaler weißer Streifen
      [1028] Lila, Design mit hellem Gleichheitszeichen
      [1029] Schwarz, Design mit lila Herz
      [1030] Weißer vertikaler Verlauf
      [1031] Braune Jacke, schwarzes Shirt
      [1032] Braungrau, mit schräger Knopfleiste
      [1033] Rot, brauner Gürtel
      [1034] Grün, Schnürkragen
      [1035] Grünes Oberteil, goldener Gürtel, braune Ärmel
      [1036] Rot, weißer Kragen, geknöpft
      [1037] Helllila, mit Reißverschluss
      [1038] Grau zu Schwarz vertikaler Verlauf
      [1039] Weiß, breiter Kragen
      [1040] Seegrün und Braun gestreift
      [1041] Lila vertikaler Verlauf
      [1042] Weiß, horizontaler cremefarbener Streifen
      [1043] Grüner vertikaler Verlauf, Gürtel
      [1044] Blauer vertikaler Verlauf
      [1045] Blau, Schnürkragen, weißer Punkt
      [1046] Braun vertikaler Verlauf
      [1047] Lila vertikaler Verlauf
      [1048] Braun, silberner Gürtel
      [1049] Schwarz, graues Fledermaus-Design
      [1050] Helllila, lila Streifen
      [1051] Hellrosa Tanktop, lila Shirt
      [1052] Rosa Tanktop, helllila T-Shirt
      [1053] Lila, vertikale Regenbogensäule
      [1054] Schwarz, grüner Gürtel
      [1055] Seegrün, weißer Schulterstreifen
      [1056] Rot, horizontaler gelber Streifen
      [1057] Limettengrün, breiter Kragen
      [1058] Weiß und Grau gestreift, rote Weste
      [1059] Blau, hellblauer Schulterstreifen
      [1060] Ocker, gelber Schulterstreifen
      [1061] Blau, breiter Kragen
      [1062] Beige, Streifen und Punkte
      [1063] Blau, weißer Kragen und Streifen
      [1064] Rot, silberner Kragen
      [1065] Patchwork-Blau
      [1066] Grün, weißes Unterhemd
      [1067] Grau, Design mit Mausgesicht
      [1068] Gelb, tiefe Latzhose
      [1069] Hellgrün, oberes Froschgesicht
      [1070] Grün, brauner Gürtel
      [1071] Fuchsia, helllila Streifen
      [1072] Weiß, Jeans-Latzhose, brauner Gürtel
      [1073] Creme Crop-Hoodie, blaues Tanktop
      [1074] Dunkelblau und Lila horizontal geteilt
      [1075] Blau, rote Latzhose, brauner Gürtel
      [1076] Schwarz, grünes Pilzwolken-Design
      [1077] Helllila, brauner Gürtel
      [1078] Weiß, herausgestreckte Zunge, trauriges Gesicht
      [1079] Lila, weißes Halstuch
      [1080] Schwarz, blaue Latzhose
      [1081] Grau, weißer Schulterstreifen
      [1082] Grün, hellgrüner Taillenstreifen
      [1083] Dunkelblau
      [1084] Schwarz, breiter Kragen
      [1085] Schwarz
      [1086] Rot, mit Knopfleiste, offener Kragen
      [1087] Türkis, braune Hosenträger
      [1088] Weiß mit Knopfleiste, rotes Halstuch
      [1089] Gelb, grüne Weste
      [1090] Lila Bowling-Stil
      [1091] Schwarzer Hoodie
      [1092] Grün, Kragen, weißes Halstuch
      [1093] Pink, hellrosa Schulterstreifen
      [1094] Weiß, schwarze Punkte
      [1095] Braun, rote und gelbe Krawatte
      [1096] Gelb, schwarze Augen mit Rouge
      [1097] Grün, dunkelgrüne Flecken
      [1098] Grau, Knopfleiste, dunkler vertikaler Streifen
      [1099] Schwarzer Peacoat, weißer Hemdkragen
      [1100] Lila, schwarze Latzhose
      [1101] Hellblau, horizontaler dunkler Streifen
      [1102] Schwarz, weiße Front
      [1103] Canvas, blondlederner Gürtel
      [1104] Graue Streifen, schwarze Latzhose
      [1105] Grün und Türkis gestreift
      [1106] Blau, weißer Buchstabe J
      [1107] Grün und Schwarz horizontal geteilt
      [1108] Fuchsia, weißer Schulterstreifen
      [1109] Braunorange
      [1110] Lila mit Knopfleiste, dunkler vertikaler Streifen
      [1111] Braun, mit Knopfleiste, dunkler vertikaler Streifen
      [1112] Olivgrün, dunkler vertikaler Streifen
      *[other] unbeschriebenes shirt {$index}
    }
    *[1] Shirt: {$index}
  }

menu-character_creation-description-pant = {$less_info ->
    [0] {$index ->
      [1] Lang
      [2] Shorts
      [3] Langer Rock
      [4] Rock
      *[other] {EMPTYSTRING()}
    }
    *[1] Hosen-Style: {$index}
  }

# For accessories
menu-character_creation-description-acc = {$less_info ->
    [0] {$index ->
      [1] Leer
      [2] Vollbart und Schnurrbart
      [3] Vollständiger Schnurrbart
      [4] Vollständiger Schnurrbart mit Falten
      [5] Ziegenbart
      [6] Koteletten
      [7] Ungepflegter Vollbart und Schnurrbart
      [8] Goldene Ohrringe
      [9] Türkise Ohrringe
      [10] Schwarze Vollrandbrille
      [11] Lippenstift
      [12] Brille mit oberem Rahmen
      [13] Buschige Augenbrauen
      [14] Robo-Visier
      [15] Runde Brille mit schwarzem Rahmen
      [16] Rote Halskette
      [17] Schwarze Sonnenbrille
      [18] Blaue Halskette
      [19] Graue Sonnenbrille
      [20] Orangefarbener Schnabel
      [21] Drei-Tage-Bart
      [22] Buschiger Bart
      [23] Bleistiftschnurrbart
      [24] Schnurrbart mit geschwungenen Enden
      [25] Sonnengebräuntes Gesicht (schließt den Kopf bei Glatze ein)
      [26] Rote Clownsnase
      [27] Quadratische Brille mit Drahtgestell
      [28] Markante schwarze Augenbrauen
      [29] Errötete Wangen
      [30] Rosa Lippenstift
      [31] Bronzer        
      *[other] unbeschriebenes Zubehör {$index}
    }
    *[1] Zubehör: {$index}
  }
