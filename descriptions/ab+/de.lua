---------------------------------------
-----  Basic German descriptions  -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  !!! = Warning  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "de"

-- init de table
EID.descriptions[languageCode] = {}
EID.descriptions[languageCode].custom = {} -- table for custom entity descriptions
EID.descriptions[languageCode].languageName = "German (WIP)"

-- Fonts to be used with this language pack
EID.descriptions[languageCode].fonts = EID.descriptions["en_us"].fonts

---------- Collectibles ----------
EID.descriptions[languageCode].collectibles={
	{"1", "Die traurige Zwiebel", "↑ +0.7 Tränen"},
	{"2", "Das innere Auge", "↓ {{Tears}} Tränen runter#Dreifacher Schuss"},
	{"3", "Löffelbieger", "Zielsuchschüsse"},
	{"4", "Grillenkopf", "↑ {{Damage}} +0.5 Schaden#↑ {{Damage}} x1.5 Schadens Multiplikator"},
	{"5", "Mein Spiegelbild", "↑ {{Range}} +1.5 Reichweite#↑ +1 Tränenhöhe#↑ {{Shotspeed}} +0.6 Schusstempo#Bumerang-Tränen"},
	{"6", "Nummer Eins", "↑ {{Tears}} +1.5 Tränen#↑ +0.76 Tränenhöhe#↓ {{Range}} -17.62 Reichweite"},
	{"7", "Blut des Märtyrers", "↑ {{Damage}} +1 Schaden#{{Collectible34}} x1.5 Schadens Multiplikator wenn \"Das Buch Belial\" oder \"XV - Der Teufel\" Effekt aktiv ist"},
	{"8", "Bruder Bobby", "Schiesst normale Tränen#Verursacht 3.5 Schaden pro Träne"},
	{"9", "Skatol", "Alle feindlichen Fliegen werden freundlich"},
	{"10", "Fliegen-Halo", "+2 orbitale Fliegen#Blockiert gegnerische Projektile"},
	{"11", "1-Up!", "↑ +1 Leben#Isaac wird beim Tod mit voller Gesundheit wiederbelebt"},
	{"12", "Fliegenpilz", "↑ {{Heart}} +1 Gesundheit#↑ {{Speed}} +0.3 Tempo#↑ {{Damage}} +0.3 Schaden#↑ {{Damage}} x1.5 Schadens Multiplikator#↑ {{Range}} +5.25 Reichweite#↑ +0.5 Tränenhöhe#Größe hoch#{{Heart}} Volle Gesundheit"},
	{"13", "Das Virus", "↓ {{Speed}} -0.1 Tempo#{{Poison}} Vergiftet Gegner bei Berührung#{{BlackHeart}} 20% Chance, dass vergiftete Gegner beim Tod Schwarze Herzen fallen lassen"},
	{"14", "Toben auf Steroiden", "↑ {{Speed}} +0.6 Tempo#↑ {{Range}} +5.25 Reichweite#↑ +0.5 Tränenhöhe"},
	{"15", "<3", "↑ {{Heart}} +1 Gesundheit#{{Heart}} Volle Gesundheit"},
	{"16", "Rohe Leber", "↑ {{Heart}} +2 Gesundheit#{{Heart}} Volle Gesundheit"},
	{"17", "Skelettschlüssel", "{{Key}} +99 Schlüssel"},
	{"18", "Ein Dollar", "{{Coin}} +99 Münzen"},
	{"19", "Bumm!", "{{Bomb}} +10 Bomben"},
	{"20", "Transzendenz", "Fliegen"},
	{"21", "Der Kompass", "Enthüllt Symbole auf der Karte#Zeigt nicht das Karten-Layout"},
	{"22", "Mittagessen", "↑ {{Heart}} +1 Gesundheit"},
	{"23", "Abendessen", "↑ {{Heart}} +1 Gesundheit"},
	{"24", "Dessert", "↑ {{Heart}} +1 Gesundheit"},
	{"25", "Frühstück", "↑ {{Heart}} +1 Gesundheit"},
	{"26", "Verdorbenes Fleisch", "↑ {{Heart}} +1 Gesundheit"},
	{"27", "Holzlöffel", "↑ {{Speed}} +0.3 Tempo"},
	{"28", "Der Gürtel", "↑ {{Speed}} +0.3 Tempo"},
	{"29", "Mamas Unterwäsche", "↑ {{Range}} +5.25 Reichweite#↑ +0.5 Tränenhöhe"},
	{"30", "Mamas Stöckelschuhe", "↑ {{Range}} +5.25 Reichweite#↑ +0.5 Tränenhöhe"},
	{"31", "Mamas Lippenstift", "↑ {{Range}} +5.25 Reichweite#↑ +0.5 Tränenhöhe"},
	{"32", "Drahtkleiderbügel", "↑ {{Tears}} +0.7 Tränen"},
	{"33", "Die Bibel", "{{Timer}} Fliegen für diesen Raum#{{MomsHeart}} Tötet sofort Mamas Fuss und Mamas Herz#{{Warning}} Tötet Isaac wenn gegen Satan benutzt"},
	{"34", "Das Buch Belial", "↑ +2 Schaden#↑ +12.5% Teufelsdeal chance#↑ +50% Multiplizierter Schaden wenn du Blood of the Martyr besitzt"},
	{"35", "Das Necronomicon", "Fügt allem im jetzigen Raum 40 Schaden zu"},
	{"36", "Der Schiss", "Erzeugt einen Kackhaufen#Kann vor einer Grube platziert und zerstört werden um eine Brücke zu erschaffen"},
	{"37", "Mr. Bumm", "Platziert eine Bombe unter den Spieler die 110 Schaden verursacht"},
	{"38", "Tammys Kopf", "Feuert 10 Tränen in einem Kreis um Isaac herum"},
	{"39", "Mamas BH", "Friert alle Gegner im jetzigen Raum für 4 sekunden ein"},
	{"40", "Kamikaze!", "Verursacht eine Explosion bei der Spielerposition"},
	{"41", "Mamas Slipeinlage", "Verängstigt alle Gegner im jetzigen Raum für 5 Sekunden"},
	{"42", "Bobs verfaulter Kopf", "Giftige Wurfbombe"},
	{"43", "", "<item existiert nicht>"},
	{"44", "Teleportieren!", "Teleportiert Isaac in einen zufälligen Raum außer den I AM ERROR Raum"},
	{"45", "Leckeres Herz", "Heile 1 Herz"},
	{"46", "Glückspfote", "↑ +1.0 Glück#Bessere Chancen bei Glücksspielen#Erhöhte chance auf Belohnungen beim abschließen eines Raumes"},
	{"47", "Doktor-Fernbedienung", "Epic Fetus auf Nachfrage!#Kontrollierbarer Luftangriff!"},
	{"48", "Amors Pfeil", "Piercende Tränen"},
	{"49", "Zack-di-wupp!", "Brimstone Laser mit sehr hohen Schaden"},
	{"50", "Steven", "↑ +1 Schaden"},
	{"51", "Pentagramm", "↑ +1.0 Schaden#↑ +10% Devil Deal chance"},
	{"52", "Dr. Fötus", "Bombentränen!"},
	{"53", "Magneto", "Pick-Ups werden magnetisch angezogen"},
	{"54", "Schatzkarte", "Zeigt den Kartenentwurf"},
	{"55", "Mamas Auge", "Chance eine Träne nach hinten zu schießen#Chance ist auf 100% bei 2 Glückpunkten"},
	{"56", "Zitronen-Missgeschick", "Kreiert einen Limo-Pfütze#Macht 66 Kontaktschaden pro sekunde"},
	{"57", "Ferne Bewunderung", "Mittelklassig-Spielerumkreisende Fliege#Macht 75 Kontaktschaden pro sekunde"},
	{"58", "Buch der Schatten", "Unverwundbarkeit für 10 sekunden"},
	{"59", "", "<item does not exist>"},
	{"60", "Die Leiter", "Erlaubt es über schmale Gruben zu laufen"},
	{"61", "", "<item does not exist>"},
	{"62", "Zauber des Vampirs", "Heilt ein halbes Herz nach jedem 13 getöteten Gegner"},
	{"63", "Die Batterie", "Spacebar Items können zweimal aufgeladen werden"},
	{"64", "Steam-Angebot", "-50% auf Shopitems#Zwei Steam Sale macht alles im Shop kostenlos"},
	{"65", "Anarchisten-Kochbuch", "Erzeugt 6 Troll Bomben in der nähe der mitte des Raumes"},
	{"66", "Die Sanduhr", "Macht Gegner langsamer für 8 sekunden"},
	{"67", "Schwester Maggy", "Normaler Tränenschießender Begleiter#Macht 3.5 Schaden pro Träne"},
	{"68", "Technologie", "Tränen werden ausgetauscht mit Laser"},
	{"69", "Schokoladenmilch", "Aufladbare Tränen#↑ Bis zu 400% Schaden#↓ Weniger Tränen"},
	{"70", "Wachstumshormone", "↑ +1.0 Schaden#↑ +0.4 Geschwindigkeit"},
	{"71", "Minipilz", "↑ +0.3 Geschwindigkeit#↓ -4.25 Reichweite*#↑ +1.5 Schusshöhe*#(*beides zusammen ergibt mehr Reichweite)#↑ Kleiner"},
	{"72", "Rosenkranz", "+3 Seelenherzen#The Bible ist häufiger zu finden"},
	{"73", "Fleischwürfel", "LVL1: Spielerumkreisender Fleischwürfel#LVL2: Spielerumkreisender Schießender Kopf#LVL3: Meat Boy Level 1#LVL4: Meat Boy Level 2"},
	{"74", "Ein Vierteldollar", "+25 Münzen"},
	{"75", "PHD", "Bessere Pillen# +1 Pille#Heilt 2 Herzen#Mehr Geld von Blutspendemaschinen"},
	{"76", "Röntgenblick", "Zeigt versteckte Räume"},
	{"77", "Mein kleines Einhorn", "Unverwundbarkeit#Macht 40 Kontaktschaden"},
	{"78", "Buch der Offenbarungen", "+1 Seelenherz#Höhere Horsemen (Boss) chance beim nutzen#↑ +17.5% Devil Deal chance"},
	{"79", "Das Zeichen", "↑ +1.0 Schaden#↑ +0.2 Geschwindigkeit#+1 Seelenherz"},
	{"80", "Der Pakt", "↑ +0.5 Schaden#↑ +0.7 Mehr Tränen#+2 Seelenherzen"},
	{"81", "Tote Katze", "↑ +9 Leben#Belebt mit einem Herzcontainer wieder"},
	{"82", "Herr der Höllengrube", "Flug#↑ +0.3 Geschwindigkeit"},
	{"83", "Der Nagel", "+1 Seelenherz#↑ +0.7 Schaden#↓ -0.18 Geschwindigkeit#Macht Kontaktschaden#Kann Steine zerstören"},
	{"84", "Wir müssen tiefer!", "Spawns a trapdoor to skip the floor#10% chance for crawlspace trapdoor"},
	{"85", "Kartenspiel", "Erzeigt 1 Karte"},
	{"86", "Monstros Zahn", "Rufe Monstro zum zerquetschen von Gegnern"},
	{"87", "Loki's Hörner", "Chance in 4 Richtungen zu schießen"},
	{"88", "Dickerchen", "Begleiter, der nach vorn stürmt #Macht 52.5 Kontaktschaden pro sekunde"},
	{"89", "Spinnenbiss", "Chance Verlangsamungstränen zu schießen"},
	{"90", "Der kleine Felsen", "↑ +1 Schaden#↑ +0.2 Mehr Tränen#↓ -0.2 Geschwindigkeit"},
	{"91", "Höhlenforscher-Hut", "Zeigt was hinter Türen ist"},
	{"92", "Superverband", "↑ +1 Herzcontainer#+2 Seelenherzen"},
	{"93", "Das Zocker-Kid", "Unverwundbarkeit + Kontaktschaden#Regeneriert Herzen beim essen von Gegnern"},
	{"94", "Sack voller Pennies", "Lässt in jeden zweiten Raum zufällig münzen fallen"},
	{"95", "Robo-Baby", "Lasertränen#Macht 3.5 Schaden pro Schuss"},
	{"96", "Kleiner C.H.A.D.", "Erzeugt ein halbes Herz in jeden dritten Raum"},
	{"97", "Das Buch der Sünde", "Erzeugt ein zufälliges Pick-Up"},
	{"98", "Das Relikt", "Erzeugt 1 Seelenherz in jeden vierten Raum"},
	{"99", "Kleiner Gish", "Verlangsamungstränen#Macht 3.5 Schaden pro Schuss"},
	{"100", "Kleiner Steven", "Gegnerjagende Tränen#Macht 3.5 Schaden pro Schuss"},
	{"101", "Der Heiligenschein", "↑ +1 Herzcontainer#↑ +0.3 Schaden#↑ +0.2 Mehr Tränen#↑ +0.25 Reichweite#↑ +0.3 Geschwindigkeit#↑ +0.5 Schusshöhe"},
	{"102", "Mamas Pillenflasche", "Lässt 1 Pille fallen"},
	{"103", "Die Erkältung", "Chance vergiftungstränen zu schießen"},
	{"104", "Der Parasit", "Tränen halbieren sich bei Kontakt#Geteilte Tränen machen halben Schaden"},
	{"105", "Der W6", "Ändert zufällig Podestitems im jetzigen Raum"},
	{"106", "Mr. Mega", "↑ x2.25 Bombenschaden#+5 Bomben"},
	{"107", "Die Zackenschere", "Flug#Dein Körper attackiert Gegner mit 82.5 Kontaktschaden pro sekunde"},
	{"108", "Die Hostie", "Aller Schaden ist reduziert auf ein halbes Herz"},
	{"109", "Geld = Macht", "↑ +0.04 Schaden für jede Münze die du besitzt"},
	{"110", "Mamas Kontaktlinsens", "Chance frierende Tränen zu schießen#↑ +0.25 Reichweite#↑ +0.5 Schusshöhe"},
	{"111", "Die Bohne", "Vergiftender Furz!"},
	{"112", "Schutzengel", "Spielerumkreisender Engel#Macht alle Spielerumkreisende Begleiter schneller#Blockiert Gegnerschüsse#Macht 105 Kontaktschaden pro sekunde"},
	{"113", "Dämonenbaby", "Auto-firing turret#Deals 3 Schaden pro Schuss"},
	{"114", "Mamas Messer", "Kontrollierbarer Messerattacke"},
	{"115", "Ouija-Brett", "Spektraltränen"},
	{"116", "9 Volt", "-1 Aufladung für aktive Items#Lädt dein aktives Item vollständig auf"},
	{"117", "Toter Vogel", "Erzeugt einen Vogel wenn du getroffen wirst#Der Vogel macht 4 Kontaktschaden pro sekunde"},
	{"118", "Schwefel", "Aufladbarer Brimstone Laser mit sehr hohen Schaden"},
	{"119", "Blutbeutel", "↑ +1 Herzcontainer#↑ +0.3 Geschwindigkeit#Heilt 5 Herzen"},
	{"120", "Seltsamer Pilz", "↑ +1.7 Mehr Tränen#↑ +0.3 Geschwindigkeit#↓ -10% Schaden"},
	{"121", "Seltsamer Pilz", "↑ +1 Leerer Herzcontainer#↑ +0.3 Schaden#↑ +0.25 Reichweite#↓ -0.1 Geschwindigkeit#↑ +0.5 Schusshöhe"},
	{"122", "Hure Babylon", "!!! Wenn du ein halbes Herz oder weniger hast:#↑ +1.5 Schaden#↑ +0.3 Geschwindigkeit"},
	{"123", "Monster-Handbuch", "Zufälliger Begleiter für den jetzigen Raum"},
	{"124", "Schriftrollen vom Toten Meer", "Zufälliger Item-Effekt (Aktives Item)"},
	{"125", "Bobby-Bombe", "Gegnerjagende Bomben#+5 Bomben"},
	{"126", "Rasierklinge", "↑ +1.2 Schaden für den jetzigen Raum#↓ Macht dir 1 Herz Schaden"},
	{"127", "Vergissmeinjetzt", "{{Warning}} EINMAL NUTZBAR {{Warning}}#Ändert zufällig den ganzen Flur"},
	{"128", "Für immer alleine", "Spielerumkreisende Fliege#Sehr weit entfernt#Macht 30 Kontaktschaden pro sekunde"},
	{"129", "Eimer voll Schmalz", "↑ +2 Leere Herzcontainer#↓ -0.2 Geschwindigkeit#heilt ein halbes Herz"},
	{"130", "Ein Pony", "Gibt flug solange es gehalten wird#Setzt deine Geschwindigkeit auf 1.5 wenn du weniger als 1.5 hast#Sprinte in eine Richtung beim benutzen"},
	{"131", "Bombentasche", "Lässt 1 Bomben Pick-up in paar Räume fallen"},
	{"132", "Ein Klumpen Kohle", "Mehr Schaden basierend auf der zurückgelegten Entfernung der Träne"},
	{"133", "Guppy's Pfote", "!!! Konvertiert #1 Rotes Herz zu 3 Seelenherzen"},
	{"134", "Guppy's Schwanz", "Mehr Kisten tauchen auf"},
	{"135", "Infusionsbeutel", "Portable Blutspendemaschine#Ein halbes Herz = 1-3 Münzen"},
	{"136", "Bester Freund", "Explodierender Köder#Lockt Gegner an"},
	{"137", "Fernzünder", "Kontrollier wann Bomben Explodieren#+5 Bomben"},
	{"138", "Stigmata", "↑ +1 Herzcontainer#↑ +0.3 Schaden"},
	{"139", "Mamas Geldbörse", "Du kannst nun 2 Schmuckstücke halten"},
	{"140", "Bob's Fluch", "Vergiftende Bomben#+5 Bomben"},
	{"141", "Geschmückter Junge", "Erzeugt 7 zufällige Münzen"},
	{"142", "Skapulier", "Lässt 1 Seelenherz fallen wenn du nurnoch ein halbes Herz hast#(Einmal pro Raum!)"},
	{"143", "Tempo machen", "↑ +0.3 Geschwindigkeit#↑ +0.2 Schussgeschwindigkeit"},
	{"144", "Pennerfreund", "Konvertiert Münzen zu Pick-ups"},
	{"145", "Guppy's Kopf", "Erzeugt 2-4 Blaue Fliegen"},
	{"146", "Gebetskarte", "+1 Ewiges Herz"},
	{"147", "Axt von Notch", "Zerbricht Steine im jetzigen Raum"},
	{"148", "Befall", "Erzeugt Fliegen wenn du getroffen wirst"},
	{"149", "Brechwurzel", "Explodierende Tränen"},
	{"150", "Auf die Fresse", "Chance Zähne zu schießen#Zähne machen 3.2x deines Schadens"},
	{"151", "Der Mulligan", "1/6 chance eine Fliege zu erzeugen wenn Tränen einen Gegner treffen"},
	{"152", "Technologie 2", "Permanente laser attacke!#↓ -35% Schaden"},
	{"153", "Mutierte Spinne", "Quad Schuss!#↓ Tränen"},
	{"154", "Chemisches Peeling", "↑ +2 Schaden aus dem linken Auge"},
	{"155", "Der Linser", "Fliegt im Raum herum#Macht 17.1 Kontaktschaden pro sekunde"},
	{"156", "Habit", "+1 Aufladung wenn man getroffen wird"},
	{"157", "Blutdurst", "↑ Schaden jedes mal wenn du getroffen wirst#Kann bis zu 6 mal pro Flur aktiviert werden#Hält an für den gesamten Flur"},
	{"158", "Kristallkugel", "Enthüllt die ganze Karte#Lässt zufällig eine Karte oder Seelenherz fallen"},
	{"159", "Geist der Nacht", "Flug#Gibt Spektraltränen"},
	{"160", "Zerbrich den Himmel", "Erzeugt 5 Lichtstrahlen neben Gegner#Macht deinen Schaden +20"},
	{"161", "Ankh", "Werde beim Tod als ??? (Blue Baby) wiederbelebt"},
	{"162", "Keltisches Kreuz", "Chance für Unverwundbarkeit wenn du getroffen wirst"},
	{"163", "Geisterbaby", "Spektraltränen Begleiter#Macht 3.5 Schaden pro Träne"},
	{"164", "Die Kerze", "Erzeugt eine Blaue Fliege#Macht Kontaktschaden#Blockiert Gegnergeschosse#Verschwindet nach 2 sekunden"},
	{"165", "9-schwänzige Katze", "↑ +1 Schaden#↑ +23% Schussgeschwindigkeit"},
	{"166", "W20", "Ändert zufällig alle Pick-ups im Raum"},
	{"167", "Harlekin-Baby", "Tränenschießender Begleiter#Schießt Tränen in V-Formation#Macht 4 Schaden pro Träne"},
	{"168", "Epischer Fötus", "Ersetzt Tränen mit einem kontrollierbaren Luftangriff"},
	{"169", "Polyphem", "Mega-Tränen!#↑ Schaden#↓ Weniger Tränen"},
	{"170", "Papi Langbein", "Stampft auf Gegner#Macht 40 Schaden pro sekunde"},
	{"171", "Spinnenpopo", "macht Gegner langsamer für 4 sekunden#10 Schaden an alle Gegner"},
	{"172", "Opferdolch", "Spielerumkreisendes Messer#Blockiert Gegnergeschosse#Macht 225 Schaden pro sekunde"},
	{"173", "Mitra", "Höhere chance Seelenherzen zu finden"},
	{"174", "Regenbogenbaby", "Normaler Tränenschießender Begleiter#Schießt zufällige Tränen#Macht 3.5 Schaden pro sekunde"},
	{"175", "Papas Schlüssel", "Öffnet alle Türen im jetzigen Raum, inklusive Geheimräume"},
	{"176", "Stammzellen", "↑ +1 Herzcontainer#↑ +0.16 Schussgeschwindigkeit"},
	{"177", "Mobiler Spielautomat", "Portable Münzautomat"},
	{"178", "Weihwasser", "Hinterlässt Gegnerschadende pfützen wenn du getroffen wirst#Macht 24 Schaden pro sekunde"},
	{"179", "Schicksal", "Flug#+1 Ewiges Herz"},
	{"180", "Die schwarze Bohne", "Furze wenn du getroffen wirst"},
	{"181", "Weißes Pony", "Ermöglicht Flug beim halten#Setzt deine Geschwindigkeit auf 1.5 wenn du langsamer als 1.5 bist#Heiliger Sturm beim benutzen"},
	{"182", "Heiliges Herz", "Gegnerjagende Tränen#↑ +1 Herzcontainer#↑ x2.3 Multiplizierter Schaden#↓ -0.4 Tränen#↓ -25% Schussgeschwindigkeit#↑ +4.125 Reichweite"},
	{"183", "Zahnstocher", "↑ +0.7 Tränen.#↑ +16% Schussgeschwindigkeit"},
	{"184", "Heiliger Gral", "Flug#↑ +1 Herzcontainer"},
	{"185", "Tote Taube", "Flug#Spektraltränen"},
	{"186", "Blutrechte", "Macht jeden Gegner im Raum 40 Schaden#Macht dir 1 Schaden beim benutzen"},
	{"187", "Guppy's Haarball", "Wachsender Haarkneul#Schwingt um dich herum#Wächst wenn es einen Gegner tötet#Je größer desto stärker"},
	{"188", "Abel", "Spiegelt deine Bewegungen#Schießt in die Richtung des Spielers#Macht 3.5 Schaden pro Schuss"},
	{"189", "SMB-Superfan", "↑ +1 Herzcontainer#↑ +0.3 Schaden#↑ +0.2 Tränen#↑ +0.5 Reichweite#↑ +0.2 Geschwindigkeit#↑ +1.0 Schusshöhe#Füllt alle Herzen"},
	{"190", "Pyro", "+99 Bomben"},
	{"191", "3-Dollar-Schein", "Zufälliger Träneneffekt jede 2-3 sekunden"},
	{"192", "Telepathie für Dummies", "Gegnerjagende Tränen im jetzigen Raum"},
	{"193", "FLEISCH!", "↑ +1 Herzcontainer#↑ +0.3 Schaden"},
	{"194", "Schwarze Zauberkugel", "↑ +0.16 Schussgeschwindigkeit#+1 Karte"},
	{"195", "Mamas Geldbörse", "Gibt 4 Pillen"},
	{"196", "Quetschi", "Erzeugt 2 Seelenherzen#↑ +0.4 Tränen"},
	{"197", "Jesus-Getränk", "↑ +0.5 Schaden#↑ +0.25 Reichweite.#↑ +0.5 Schusshöhe"},
	{"198", "Box", "Erzeugt 1 pick-up von jeder Sorte"},
	{"199", "Mamas Schlüssel", "+2 Schlüssel#Mehr sachen aus Kisten"},
	{"200", "Mamas Lidschatten", "Chance charmante Tränen zu schießen"},
	{"201", "Eisenstange", "↑ +0.3 Schaden#Chance Erschütternde Tränen zu schießen"},
	{"202", "Midas' Berührung", "Gegner verwandeln sich bei berührung in Gold#Macht Kontaktschaden basierend auf Münzanzahl#Goldene Gegner lassen Münzen fallen"},
	{"203", "Großzügiges Bündel", "Dupliziert alle pick-ups"},
	{"204", "Gürteltasche", "50% chance ein zufälliges pick-up fallen zu lassen bei Schaden"},
	{"205", "Scharfkantiger Stecker", "-2 Heartcontainer = Lädt dein Item auf beim drücken der Spacebar#!!! Funktioniert nur wenn das Item keine ladung hat!"},
	{"206", "Guillotine", "↑ +1 Schaden#↑ Tränen#Dein Kopf umkreist nun deinen Körper#Schüsse kommen noch von deinem Kopf#Der Kopf macht 105 Kontaktschaden"},
	{"207", "Verbandsknäuel", "LVL1: Spielerumkreisender Pflasterball#LVL2: Schießender Pflasterball#LVL3: Bandage Girl#LVL4: Bandage Girl LVL2"},
	{"208", "Championgürtel", "↑ +1 Schaden#!!! Mehr Championgegner tauchen auf"},
	{"209", "Arschbomben", "↑ +5 Bomben#Explosionen erschüttern Gegner und machen Schaden im ganzen Raum"},
	{"210", "Angenagtes Blatt", "Unverwundbar bei inaktivität"},
	{"211", "Spinnenbaby", "Erzeugt 1-2 Spinnen bei Schaden"},
	{"212", "Guppy's Halsband", "↑ 50% wiederbelebungschance"},
	{"213", "Verlorene Linse", "Schützende Träne#Tränen blockieren Gegnergeschosse#↓ -16% Schussgeschwindigkeit"},
	{"214", "Anämisch", "↑ +5 Reichweite#Hinterlässt Gegnerschadende pfützen wenn du getroffen wirst"},
	{"215", "Ziegenkopf", "↑ 100% chance für Teufel-{{DevilRoom}} / Engel-{{AngelRoom}} Räume"},
	{"216", "Zeremonielle Robe", "↑ +1 Schaden#+3 Schwarze Herzen"},
	{"217", "Mamas Perücke", "Zufällige chance blaue Spinnen zu erzeugen beim schießen#Heilt 1 rotes Herz"},
	{"218", "Plazenta", "↑ +1 Herzcontainer#Regeneriert langsam dein Leben"},
	{"219", "Alter Verband", "↑ +1 Leerer Herzcontainer#Zufällige chance rote Herzen bei Schaden fallen zu lassen"},
	{"220", "Traurige Bomben", "Tränenexplosion!#+5 Bomben"},
	{"221", "Gummizement", "Springende Tränen"},
	{"222", "Anti-Schwerkraft", "↑ +2 Tränen#Anti-Gravitationstränen"},
	{"223", "Pyromane", "Explosionen heilen dich#+5 Bomben"},
	{"224", "Crickets Körper", "↑ +1 Tränen#↓ -10 Reichweite#Tränen teilen sich bei Kollision in 4#Geteilte Tränen machen halben Schaden"},
	{"225", "Gimpy", "Chance Seelen/Schwarze Herzen fallen zu lassen bei Schaden#Chance ein Halbes Herz fallen zu lassen beim töten eines Gegners"},
	{"226", "Schwarzer Lotos", "↑ +1 Herzcontainer#+1 Seelenherz#+1 Schwarzes Herz"},
	{"227", "Sparschwein", "+3 Münzen#Lässt 1-2 Münzen fallen bei Schaden#Lässt 0-1 Münzen fallen beim Charakter 'Keeper'"},
	{"228", "Mamas Parfüm", "Chance Furchttränen zu schießen#↑ +1 Tränen"},
	{"229", "Monstros Lunge", "Tränen werden aufgeladen und in Shotgun-Style geschossen"},
	{"230", "Abaddon", "↑ +1.5 Schaden#↑ +0.2 Geschwindigkeit#Furchttränen#↓ Entfernt alle Herzcontainer#+6 Schwarze Herzen"},
	{"231", "Teerklumpen", "Chance Verlangsamungstränen zu schießen#Hinterlässt Verlangsamungspfützen"},
	{"232", "Stoppuhr", "Permanenter Verlangsamungseffekt#(Aktiviert bei Spielerschaden)#↑ +0.3 Geschwindigkeit"},
	{"233", "Winziger Planet", "Deine Tränen umkreisen Isaac#↑ +7.0 Tränenhöhe#Spektraltränen"},
	{"234", "Befall 2", "Erzeugt Spinnen beim töten von Gegnern"},
	{"235", "", "<item does not exist>"},
	{"236", "E. Coli", "Bei berührung verwandeln Gegner sich in Kackhaufen"},
	{"237", "Berührung des Todes", "Sensentränen!#↑ +1.5 Schaden#↓ -0.3 Tränen#Piercende Tränen"},
	{"238", "Schlüsselteil 1", "! Schlüsselstück für Mega Satan !#Mehr Engelräume{{AngelRoom}} tauchen auf"},
	{"239", "Schlüsselteil 2", "! Schlüsselstück für Mega Satan !#Mehr Engelräume{{AngelRoom}} tauchen auf"},
	{"240", "Experimentelle Behandlung", "Alle Stats bekommen einen zufälligen Wert ↑/↓ "},
	{"241", "Vertrag mit dem Bösen", "Doppelt alle fallenden Pick-ups#Funktioniert nicht im Greed Modus"},
	{"242", "Schande", "50% chance Tränen zu blockieren"},
	{"243", "Dreifaltigkeitsschild", "Blockiert Gegnergeschosse"},
	{"244", "Tech.5", "Feuert zufällige Lasertränen"},
	{"245", "20/20", "Verdoppelt alle deine Schüsse"},
	{"246", "Blaue Karte", "Zeigt Geheimräume"},
	{"247", "Beste Freunde!", "Deine Begleiter machen doppelten Schaden"},
	{"248", "Schwarmbewusstsein", "Blaue Fliegen/Spinnen machen doppelten Schaden"},
	{"249", "Es gibt Optionen", "Es tauchen 2 Boss-Items auf anstatt nur 1#! Nur EIN ITEM kann genommen werden !"},
	{"250", "Bonusbomben", "Doppelt alle fallenden Bomben-Pick-ups"},
	{"251", "Starter-Deck", "Du kannst zwei Karten halten#Konvertiert alle Pillen zu Karten#Spawnt eine Karte"},
	{"252", "Säckchen", "Du kannst zwei Pillen halten#Konvertiert alle Karten zu Pillen#Spawnt eine Pille"},
	{"253", "Magischer Schorf", "↑ +1 Glück#↑ +1 Herzcontainer"},
	{"254", "Blutgerinnsel", "↑ +1 Schaden#↑ +5 Reichweite#! Zählt nur für das linke Auge !"},
	{"255", "Schraube", "↑ +0.5 Tränen#↑ +0.2 Schussgeschwindigkeit"},
	{"256", "Heiße Bomben", "Brennende Bomben#+5 Bomben"},
	{"257", "Feuriger Geist", "Chance für explodierende Tränen#Tränen bringen Gegner zum brennen"},
	-- Translated till here!!!!
	-- Copy & Paste entries from en_us and continue translating from that
	}

---------- Trinkets ----------
EID.descriptions[languageCode].trinkets={
	-- Not yet Translated!
	-- Copy & Paste entries from en_us and continue translating from that
}

---------- Cards ----------
EID.descriptions[languageCode].cards={
	-- Not yet Translated!
	-- Copy & Paste entries from en_us and continue translating from that
}

---------- Pills ----------
EID.descriptions[languageCode].unidentifiedPill = "Unidentifizierte Pille"

EID.descriptions[languageCode].pills={
	-- Not yet Translated!
	-- Copy & Paste entries from en_us and continue translating from that
}

---------- Sacrifice Room ----------
EID.descriptions[languageCode].sacrificeHeader = "[Nächste Opferungsbelohung]"

EID.descriptions[languageCode].sacrifice={
	-- Not yet Translated!
	-- Copy & Paste entries from en_us and continue translating from that
}

---------- Dice Room ----------
EID.descriptions[languageCode].diceHeader = "[Würfel Effekt]"

EID.descriptions[languageCode].dice={
	-- Not yet Translated!
	-- Copy & Paste entries from en_us and continue translating from that
}

---------- Transformations ----------
EID.descriptions[languageCode].transformations = {
	-- Not yet Translated!
	-- Copy & Paste entries from en_us and continue translating from that
}

---------- Car Battery ----------
EID.descriptions[languageCode].carBattery={
	-- Not yet Translated!
	-- Copy & Paste entries from en_us and continue translating from that
}

---------- MISC ----------

EID.descriptions[languageCode].VoidText = "Wenn absorbiert, erhalte:"
-- {1} will become the number text (like "{1} Tears" -> "+0.5 Tears")
EID.descriptions[languageCode].VoidNames = {"{1} Geschwindigkeit", "{1} Tränen", "{1} Schaden", "{1} Reichweite", "{1} Schussgeschwindigkeit", "{1} Glück"}
