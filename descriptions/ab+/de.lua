---------------------------------------
-----  Basic German descriptions  -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "de"

-- init German table
EID.descriptions[languageCode] = {}
EID.descriptions[languageCode].custom = {} -- table for custom entity descriptions
EID.descriptions[languageCode].languageName = "German (WIP)"
EID.descriptions[languageCode].alternativeLanguageCodes = {"german"}

-- Fonts to be used with this language pack
EID.descriptions[languageCode].fonts = EID.descriptions["en_us"].fonts

---------- Collectibles ----------

EID.descriptions[languageCode].collectibles={
	{"1", "Die traurige Zwiebel", "↑ +0.7 Tränen"}, -- The Sad Onion
	{"2", "Das innere Auge", "↓ {{Tears}} x0.48 Tränen-Multiplikator#↓ {{Tears}} +3 Tränenverzögerung#Dreifacher Schuss"}, -- The Inner Eye
	{"3", "Löffelbieger", "Zielsuchende Tränen"}, -- Spoon Bender
	{"4", "Grillenkopf", "↑ {{Damage}} +0.5 Schaden#↑ {{Damage}} x1.5 Schadens-Multiplikator"}, -- Cricket's Head
	{"5", "Mein Spiegelbild", "↑ {{Range}} +1.5 Reichweite#↑ +1 Tränenhöhe#↑ {{Shotspeed}} +0.6 Schusstempo#Bumerang-Tränen"}, -- My Reflection
	{"6", "Nummer Eins", "↑ {{Tears}} +1.5 Tränen#↑ +0.76 Tränenhöhe#↓ {{Range}} -17.62 Reichweite"}, -- Number One
	{"7", "Blut des Märtyrers", "↑ {{Damage}} +1 Schaden"}, -- Blood of the Martyr
	{"8", "Bruder Bobby", "Schießt normale Tränen#Verursacht 3.5 Schaden pro Träne"}, -- Brother Bobby
	{"9", "Skatol", "Alle feindlichen Fliegen werden freundlich"}, -- Skatole
	{"10", "Fliegen-Halo", "+2 Satelliten Fliegen#Blockiert feindliche Projektile"}, -- Halo of Flies
	{"11", "1-Up!", "↑ +1 Leben#Isaac wird beim Tod mit voller Gesundheit wiederbelebt"}, -- 1up!
	{"12", "Fliegenpilz", "↑ {{Heart}} +1 Gesundheit#↑ {{Speed}} +0.3 Tempo#↑ {{Damage}} +0.3 Schaden#↑ {{Damage}} x1.5 Schadens-Multiplikator#↑ {{Range}} +5.25 Reichweite#↑ +0.5 Tränenhöhe#Größe hoch#{{Heart}} Volle Gesundheit"}, -- Magic Mushroom
	{"13", "Das Virus", "↓ {{Speed}} -0.1 Tempo#{{Poison}} Vergiftet Feinde bei Berührung#{{BlackHeart}} 20% Chance, dass vergiftete Feinde beim Tod Schwarze Herzen fallen lassen"}, -- The Virus
	{"14", "Toben auf Steroiden", "↑ {{Speed}} +0.6 Tempo#↑ {{Range}} +5.25 Reichweite#↑ +0.5 Tränenhöhe"}, -- Roid Rage
	{"15", "<3", "↑ {{Heart}} +1 Gesundheit#{{Heart}} Volle Gesundheit"}, -- <3
	{"16", "Rohe Leber", "↑ {{Heart}} +2 Gesundheit#{{Heart}} Volle Gesundheit"}, -- Raw Liver
	{"17", "Skelettschlüssel", "{{Key}} +99 Schlüssel"}, -- Skeleton Key
	{"18", "Ein Dollar", "{{Coin}} +99 Münzen"}, -- A Dollar
	{"19", "Bumm!", "{{Bomb}} +10 Bomben"}, -- Boom!
	{"20", "Transzendenz", "Flug"}, -- Transcendence
	{"21", "Der Kompass", "Enthüllt Symbole auf der Karte#Zeigt nicht das Karten-Layout"}, -- The Compass
	{"22", "Mittagessen", "↑ {{Heart}} +1 Gesundheit"}, -- Lunch
	{"23", "Abendessen", "↑ {{Heart}} +1 Gesundheit"}, -- Dinner
	{"24", "Dessert", "↑ {{Heart}} +1 Gesundheit"}, -- Dessert
	{"25", "Frühstück", "↑ {{Heart}} +1 Gesundheit"}, -- Breakfast
	{"26", "Verdorbenes Fleisch", "↑ {{Heart}} +1 Gesundheit"}, -- Rotten Meat
	{"27", "Holzlöffel", "↑ {{Speed}} +0.3 Tempo"}, -- Wooden Spoon
	{"28", "Der Gürtel", "↑ {{Speed}} +0.3 Tempo"}, -- The Belt
	{"29", "Mamas Unterwäsche", "↑ {{Range}} +5.25 Reichweite#↑ +0.5 Tränenhöhe"}, -- Mom's Underwear
	{"30", "Mamas Stöckelschuhe", "↑ {{Range}} +5.25 Reichweite#↑ +0.5 Tränenhöhe"}, -- Mom's Heels
	{"31", "Mamas Lippenstift", "↑ {{Range}} +5.25 Reichweite#↑ +0.5 Tränenhöhe"}, -- Mom's Lipstick
	{"32", "Drahtkleiderbügel", "↑ {{Tears}} +0.7 Tränen"}, -- Wire Coat Hanger
	{"33", "Die Bibel", "{{Timer}} Flug für diesen Raum#{{MomsHeart}} Tötet sofort Mamas Fuss und Mamas Herz#{{Warning}} Tötet Isaac wenn gegen Satan eingesetzt"}, -- The Bible
	{"34", "Das Buch Belial", "{{AngelDevilChance}} +12.5% Teufels-/Engelsraum Chance, wenn getragen#{{Timer}} Erhalte für diesen Raum:#↑ {{Damage}} +2 Schaden"}, -- The Book of Belial
	{"35", "Das Necronomicon", "Fügt allen Feinden im Raum 40 Schaden zu"}, -- The Necronomicon
	{"36", "Der Schiss", "Lässt einen Kot erscheinen und stößt Feinde zurück#Kann neben einer Grube platziert und mit einer Explosion zerstört werden um eine Brücke zu erschaffen"}, -- The Poop
	{"37", "Mr. Bumm", "Platziert eine große Bombe die 110 Schaden verursacht"}, -- Mr. Boom
	{"38", "Tammys Kopf", "Schießt 10 Tränen in einem Kreis um Isaac herum#Die Tränen kopieren Isaac's Tränen-Effekte und verursachen +25 Schaden"}, -- Tammy's Head
	{"39", "Mamas BH", "Versteinert alle Feinde im Raum für 4 Sekunden"}, -- Mom's Bra
	{"40", "Kamikaze!", "Verursacht eine Explosion an Isaacs Position#Sie verursacht 40 Schaden"}, -- Kamikaze!
	{"41", "Mamas Slipeinlage", "{{Fear}} Verängstigt alle Feinde im Raum für 5 Sekunden"}, -- Mom's Pad
	{"42", "Bobs verfaulter Kopf", "Wirft den Kopf in Schussrichtung#{{Poison}} Der Kopf explodiert beim Einschlag und vergiftet Feinde"}, -- Bob's Rotten Head
	{"43", "", "<Gegenstand existiert nicht>"},
	{"44", "Teleportieren!", "Teleportiert Isaac in einen zufälligen Raum, außer I AM ERROR Räume"}, -- Teleport!
	{"45", "Leckeres Herz", "{{Heart}} Heilt 1 Herz"}, -- Yum Heart
	{"46", "Glückspfote", "↑ {{Luck}} +1 Glück#+8% Chance auf Belohnung nach dem Abschließen eines Raumes#Höhere Gewinnchance bei Glücksspielen"}, -- Lucky Foot
	{"47", "Doktor-Fernbedienung", "{{Collectible168}} Bei Benutzung wird ein Fadenkreuz gesteuert#Eine Rakete schlägt nach 1.5 Sekunden beim Fadenkreuz ein#Sie verursacht 20x Isaacs Schaden"}, -- Doctor's Remote
	{"48", "Amors Pfeil", "Durchdringende Tränen"}, -- Cupid's Arrow
	{"49", "Zack-di-wupp!", "Der nächste Schuss wird mit einem Strahl ersetzt#Er verursacht 26x Isaacs Schaden über 0.9 Sekunden"}, -- Shoop da Whoop!
	{"50", "Steven", "↑ {{Damage}} +1 Schaden"}, -- Steven
	{"51", "Pentagramm", "↑ {{Damage}} +1 Schaden#{{AngelDevilChance}} +10% Teufels-/Engelsraum Chance"}, -- Pentagram
	{"52", "Dr. Fötus", "↓ {{Tears}} x0.4 Tränen-Multiplikator#{{Bomb}} Isaac schießt Bomben anstatt Tränen#{{Damage}} Diese Bomben verursachen 5x Isaacs Schaden + 30"}, -- Dr. Fetus
	{"53", "Magneto", "Verbrauchsgut wird von Isaac angezogen"}, -- Magneto
	{"54", "Schatzkarte", "Deckt den Grundriss des Stockwerks auf#Deckt keine Raum-Symbole auf"}, -- Treasure Map
	{"55", "Mamas Auge", "50% Chance, eine zusätzliche Träne nach hinten zu schießen#{{Luck}} 100% Chance ab 2 Glück"}, -- Mom's Eye
	{"56", "Zitronen-Missgeschick", "Hinterlässt eine Pfütze#Die Pfütze verursacht 24 Schaden pro Sekunde"}, -- Lemon Mishap
	{"57", "Ferne Bewunderung", "Satelliten Fliege#Verursacht bei Kontakt 75 Schaden pro Sekunde"}, -- Distant Admiration
	{"58", "Buch der Schatten", "{{Timer}} Unverwundbarkeit für 10 Sekunden"}, -- Book of Shadows
	{"59", "", "<Gegenstand existiert nicht>"},
	{"60", "Die Leiter", "Erlaubt es Isaac, ein Feld breite Lücken zu überqueren"}, -- The Ladder
	{"61", "", "<Gegenstand existiert nicht>"},
	{"62", "Zauber des Vampirs", "{{HalfHeart}} Das Töten von 13 Feinden heilt ein halbes Herz"}, -- Charm of the Vampire
	{"63", "Die Batterie", "{{Battery}} Aktive Gegenstände können bis zu zwei vollen Ladungen überladen werden"}, -- The Battery
	{"64", "Steam-Angebot", "{{Shop}} Laden-Gegenstände kosten 50% weniger#Besitzt man diesen Gegenstand zwei mal, sind alle Laden-Gegenstände kostenlos"}, -- Steam Sale
	{"65", "Anarchisten-Kochbuch", "Lässt 6 Troll-Bomben in der Nähe der Raum-Mitte erscheinen"}, -- Anarchist Cookbook
	{"66", "Die Sanduhr", "{{Slow}} Verlangsamt Feinde für 8 Sekunden"}, -- The Hourglass
	{"67", "Schwester Maggy", "Schießt normale Tränen#Verursacht 3.5 Schaden pro Träne"}, -- Sister Maggy
	{"68", "Technologie", "Isaac schießt Laser statt Tränen"}, -- Technology
	{"69", "Schokoladenmilch", "{{Chargeable}} Aufladbare Tränen#{{Damage}} Schaden skaliert mit der Ladezeit, bis zu 4x#{{Tears}} Maximale Ladezeit hat 2.5x Tränenverzögerung"}, -- Chocolate Milk
	{"70", "Wachstumshormone", "↑ {{Speed}} +0.4 Tempo#↑ {{Damage}} +1 Schaden"}, -- Growth Hormones
	{"71", "Minipilz", "↑ {{Speed}} +0.3 Tempo#↑ +1.5 Tränenhöhe#↑ Größe runter#↓ {{Range}} -4.25 Reichweite#Die Tränenhöhe hoch und Reichweite runter = wenig Reichweite hoch"}, -- Mini Mush
	{"72", "Rosenkranz", "{{SoulHeart}} +3 Seelenherzen#{{Collectible33}} Die Bibel wird allen Gegenstandspools hinzugefügt"}, -- Rosary
	{"73", "Fleischwürfel", "Lv1: Satellit#Lv2: Schießender Satellit#Lv3: Meat Boy#Lv4: Super Meat Boy"}, -- Cube of Meat
	{"74", "Ein Vierteldollar", "{{Coin}} +25 Münzen"}, -- A Quarter
	{"75", "PHD", "{{Heart}} Heilt 2 Herzen#{{Pill}} Lässt 1 Pille erscheinen#{{Pill}} Wandelt schlechte Pillen in gute Pillen um#{{BloodDonationMachine}} Blutspendemaschinen geben mehr {{Coin}} Münzen"}, -- PHD
	{"76", "Röntgenblick", "{{SecretRoom}} Öffnet alle Geheimraum-Eingänge"}, -- X-Ray Vision
	{"77", "Mein kleines Einhorn", "{{Timer}} Erhalte für 6 Sekunden:#↑ {{Speed}} +0.28 Tempo#Unverwundbarkeit#Isaac kann nicht schießen, verursacht aber bei Kontakt 40 Schaden pro Sekunde"}, -- My Little Unicorn
	{"78", "Buch der Offenbarungen", "{{SoulHeart}} +1 Seelenherz#{{AngelDevilChance}} +17.5% Teufels-/Engelsraum Chance, wenn getragen#Benutzung des Gegenstands hat eine hohe Chance, den Boss des Stockwerks durch einen Reiter zu ersetzen"}, -- Book of Revelations
	{"79", "Das Zeichen", "↑ {{Speed}} +0.2 Tempo#↑ {{Damage}} +1 Schaden#{{SoulHeart}} +1 Seelenherz"}, -- The Mark
	{"80", "Der Pakt", "↑ {{Tears}} +0.7 Tränen#↑ {{Damage}} +0.5 Schaden#{{SoulHeart}} +2 Seelenherzen"}, -- The Pact
	{"81", "Tote Katze", "↑ +9 Leben#Isaac wird nach dem Tod mit einem Herzcontainer wiederbelebt#{{Warning}} Setzt Isaacs Herzcontainer auf 1 beim Aufheben"}, -- Dead Cat
	{"82", "Herr der Höllengrube", "↑ {{Speed}} +0.3 Tempo#Flug"}, -- Lord of the Pit
	{"83", "Der Nagel", "Bei Benutzung:#{{SoulHeart}} +1 Seelenherz#{{Timer}} Erhalte für diesen Raum:#↑ {{Damage}} +0.7 Schaden#↓ {{Speed}} -0.18 Tempo#Isaac verursacht bei Kontakt 40 Schaden pro Sekunde#Ermöglicht Isaac, Steine durch Hineinlaufen zu zerstören"}, -- The Nail
	{"84", "Wir müssen tiefer!", "Öffnet eine Falltür zum nächsten Stockwerk#{{LadderRoom}} 10% Chance, eine Falltür zu einem Kriechkeller zu öffnen"}, -- We Need To Go Deeper!
	{"85", "Kartenspiel", "{{Card}} Lässt 1 Karte erscheinen"}, -- Deck of Cards
	{"86", "Monstros Zahn", "Monstro fällt auf einen Feind und verursacht 120 Schaden#{{Warning}} Monstro fällt auf Isaac, wenn im Raum keine Feinde sind"}, -- Monstro's Tooth
	{"87", "Lokis Hörner", "25% Chance, in 4 Richtungen zu schießen#{{Luck}} 100% Chance bei 7 Glück"}, -- Loki's Horns
	{"88", "Dickerchen", "Stürmt vorwärts in Isaacs Schussrichtung#Verursacht bei Kontakt 52.5 Schaden pro Sekunde"}, -- Little Chubby
	{"89", "Spinnenbiss", "{{Slow}} 25% Chance, verlangsamende Tränen zu schießen#{{Luck}} 100% Chance bei 15 Glück"}, -- Spider Bite
	{"90", "Der kleine Felsen", "↑ {{Tears}} +0.2 Tränen#↑ {{Damage}} +1 Schaden#↓ {{Speed}} -0.2 Tempo"}, -- The Small Rock
	{"91", "Höhlenforscher-Hut", "Zeigt den Raumtyp angrenzender Räume an#{{SecretRoom}} Kann Geheim- und Supergeheimräume aufdecken"}, -- Spelunker Hat
	{"92", "Superverband", "↑ {{Heart}} +1 Gesundheit#{{Heart}} Heilt 1 Herz#{{SoulHeart}} +2 Seelenherzen"}, -- Super Bandage
	{"93", "Das Zocker-Kid", "{{Timer}} Erhalte für 6.5 Sekunden:#Unverwundbarkeit#Isaac kann nicht schießen, verursacht aber bei Kontakt 40 Schaden pro Sekunde#{{HalfHeart}} Das Töten von 2 Feinden heilt ein halbes Herz#{{Fear}} Verängstigt alle Feinde im Raum"}, -- The Gamekid
	{"94", "Sack voller Pennies", "{{Coin}} Lässt alle 2 Räume eine zufällige Münze erscheinen"}, -- Sack of Pennies
	{"95", "Robo-Baby", "Schießt Laser#Verursacht 3.5 Schaden pro Schuss"}, -- Robo-Baby
	{"96", "Kleiner C.H.A.D.", "{{HalfHeart}} Lässt alle 3 Räume ein halbes Rotes Herz erscheinen"}, -- Little C.H.A.D.
	{"97", "Das Buch der Sünde", "Lässt ein zufälliges Verbrauchsgut erscheinen"}, -- The Book of Sin
	{"98", "Das Relikt", "{{SoulHeart}} Lässt alle 5-6 Räume ein Seelenherz erscheinen"}, -- The Relic
	{"99", "Kleiner Gish", "{{Slow}} Schießt verlangsamende Tränen#Verursacht 3.5 Schaden pro Träne"}, -- Little Gish
	{"100", "Kleiner Steven", "Schießt zielsuchende Tränen#Verursacht 3.5 Schaden pro Träne"}, -- Little Steven
	{"101", "Der Heiligenschein", "↑ {{Heart}} +1 Gesundheit#↑ {{Speed}} +0.3 Tempo#↑ {{Tears}} +0.2 Tränen#↑ {{Damage}} +0.3 Schaden#↑ {{Range}} +0.25 Reichweite#↑ +0.5 Tränenhöhe"}, -- The Halo
	{"102", "Mamas Pillenflasche", "{{Pill}} Lässt 1 Pille erscheinen"}, -- Mom's Bottle of Pills
	{"103", "Die Erkältung", "{{Poison}} 25% Chance, giftige Tränen zu schießen#{{Luck}} 100% Chance bei 12 Glück"}, -- The Common Cold
	{"104", "Der Parasit", "Tränen teilen sich bei Kontakt in zwei auf#Geteilte Tränen verursachen halben Schaden"}, -- The Parasite
	{"105", "Der W6", "Würfelt Podest-Gegenstände im Raum neu"}, -- The D6
	{"106", "Mr. Mega", "↑ {{Bomb}} x1.83 Bombenschaden#{{Bomb}} +5 Bomben"}, -- Mr. Mega
	{"107", "Die Zackenschere", "{{Timer}} Erhalte für diesen Raum:#Flug#Isaacs Körper trennt sich vom Kopf, attackiert Feinde und verursacht bei Kontakt 82.5 Schaden pro Sekunde"}, -- The Pinking Shears
	{"108", "Die Hostie", "Reduziert den meisten erlittenen Schaden auf ein halbes Herz"}, -- The Wafer
	{"109", "Geld = Macht", "↑ {{Damage}} +0.04 Schaden für jede {{Coin}} Münze, die Isaac besitzt"}, -- Money = Power
	{"110", "Mamas Kontaktlinsen", "↑ {{Range}} +0.25 Reichweite#↑ +0.5 Tränenhöhe#20% Chance, versteinernde Tränen zu schießen#{{Luck}} 50% Chance bei 20 Glück"}, -- Mom's Contacts
	{"111", "Die Bohne", "{{Poison}} Verursacht 5 Schaden an nahegelegenen Feinden und vergiftet sie#Das Gift verursacht Isaacs Schaden 6 Mal"}, -- The Bean
	{"112", "Schutzengel", "Satellit#Beschleunigt alle anderen Satelliten#Blockt Projektile#Verursacht bei Kontakt 105 Schaden pro Sekunde"}, -- Guardian Angel
	{"113", "Dämonenbaby", "Schießt auf Feinde, die ihm zu nahe kommen#Verursacht 3 Schaden pro Träne"}, -- Demon Baby
	{"114", "Mamas Messer", "Isaacs Tränen werden durch ein werfbares Messer ersetzt#{{Damage}} Das Messer verursacht 2x Isaacs Schaden, während es gehalten wird, und 6x bei der maximal möglichen Entfernung"}, -- Mom's Knife
	{"115", "Ouija-Brett", "Spektrale Tränen"}, -- Ouija Board
	{"116", "9 Volt", "{{Battery}} Lädt automatisch die erste Leiste aktiver Gegenstände auf#{{Battery}} Lädt beim Aufheben den aktiven Gegenstand vollständig auf"}, -- 9 Volt
	{"117", "Toter Vogel", "Beim Erleiden von Schaden erscheint ein Vogel, der Feinde angreift#Der Vogel verursacht bei Kontakt 4.3 Schaden pro Sekunde"}, -- Dead Bird
	{"118", "Schwefel", "↓ {{Tears}} x0.33 Tränen-Multiplikator#{{Chargeable}} Isaacs Tränen werden durch einen aufladbaren Blutstrahl ersetzt#{{Damage}} Er verursacht 13x Isaacs Schaden über 0.9 Sekunden"}, -- Brimstone
	{"119", "Blutbeutel", "↑ {{Heart}} +1 Gesundheit#↑ {{Speed}} +0.3 Tempo#{{Heart}} Heilt 4 Herzen"}, -- Blood Bag
	{"120", "Seltsamer Pilz (Dünn)", "↑ {{Speed}} +0.3 Tempo#↑ {{Tears}} +1.7 Tränen#↓ {{Damage}} x0.9 Schadens-Multiplikator#↓ {{Damage}} -0.4 Schaden"}, -- Odd Mushroom (Thin)
	{"121", "Seltsamer Pilz (Groß)", "↑ {{EmptyHeart}} +1 Leerer Herzcontainer#↑ {{Damage}} +0.3 Schaden#↑ {{Range}} +0.25 Reichweite#↑ +0.5 Tränenhöhe#↓ {{Speed}} -0.1 Tempo"}, -- Odd Mushroom (Large)
	{"122", "Hure Babylon", "Bei einem halben Roten Herz oder weniger:#↑ {{Speed}} +0.3 Tempo#↑ {{Damage}} +1.5 Schaden"}, -- Whore of Babylon
	{"123", "Monster-Handbuch", "{{Timer}} Lässt einen zufälligen Begleiter für diesen Raum erscheinen"}, -- Monster Manual
	{"124", "Schriftrollen vom Toten Meer", "Löst den Effekt eines zufälligen aktiven Gegenstands aus"}, -- Dead Sea Scrolls
	{"125", "Bobby-Bombe", "{{Bomb}} +5 Bomben#Zielsuchende Bomben"}, -- Bobby-Bomb
	{"126", "Rasierklinge", "↑ {{Damage}} +1.2 Schaden für diesen Raum#{{Warning}} Verursacht 1 Herz Schaden bei Isaac#{{Heart}} Entfernt Rote Herzen zuerst"}, -- Razor Blade
	{"127", "Vergissmeinjetzt", "{{Warning}} EINMALIGE VERWENDUNG {{Warning}}#Würfelt und startet das gesamte Stockwerk neu"}, -- Forget Me Now
	{"128", "Für immer alleine", "Langstrecken-Satelliten Fliege#Verursacht bei Kontakt 30 Schaden pro Sekunde"}, -- Forever Alone
	{"129", "Eimer voll Schmalz", "↑ {{EmptyHeart}} +2 Leere Herzcontainer#↓ {{Speed}} -0.2 Tempo#{{HalfHeart}} Heilt ein halbes Herz"}, -- Bucket of Lard
	{"130", "Ein Pony", "Wenn getragen:#{{Speed}} Setzt dein Tempo auf mindestens 1.5#Flug#Bei Benutzung stürmt Isaac in Bewegungsrichtung"}, -- A Pony
	{"131", "Bombentasche", "{{Bomb}} Lässt alle 3 Räume 1 Bomben-Verbrauchsgut erscheinen"}, -- Bomb Bag
	{"132", "Ein Klumpen Kohle", "{{Damage}} Tränen verursachen mehr Schaden, basierend auf der zurückgelegten Distanz"}, -- A Lump of Coal
	{"133", "Guppys Pfote", "{{SoulHeart}} Wandelt 1 Herzcontainer in 3 Seelenherzen um"}, -- Guppy's Paw
	{"134", "Guppys Schwanz", "{{Chest}} 33% Chance, die Belohnung nach dem Abschließen eines Raumes durch eine Truhe zu ersetzen#33% Chance, keine Belohnung nach dem Abschließen eines Raumes erscheinen zu lassen"}, -- Guppy's Tail
	{"135", "Infusionsbeutel", "{{Coin}} Fügt Isaac ein halbes Herz Schaden zu und lässt 1-2 Münzen erscheinen#{{Heart}} Entfernt Rote Herzen zuerst"}, -- IV Bag
	{"136", "Bester Freund", "Lässt einen Lockvogel-Isaac erscheinen, der Feinde anlockt und nach 5 Sekunden explodiert"}, -- Best Friend
	{"137", "Fernzünder", "{{Bomb}} +5 Bomben#Isaacs Bomben explodieren nicht mehr automatisch#Bei Benutzung, entzündet alle Bomben von Isaac gleichzeitig"}, -- Remote Detonator
	{"138", "Stigmata", "↑ {{Heart}} +1 Gesundheit#↑ {{Damage}} +0.3 Schaden"}, -- Stigmata
	{"139", "Mamas Geldbörse", "{{Trinket}} Isaac kann 2 Schmuckstücke tragen"}, -- Mom's Purse
	{"140", "Bobs Fluch", "{{Bomb}} +5 Bomben#{{Poison}} Isaacs Bomben vergiften Feinde, die von der Explosion getroffen werden"}, -- Bob's Curse
	{"141", "Geschmückter Junge", "{{Coin}} Lässt 7 zufällige Münzen erscheinen"}, -- Pageant Boy
	{"142", "Skapulier", "{{SoulHeart}} Isaac erhält 1 Seelenherz, wenn er auf ein halbes Herz geschädigt wird#Kann nur einmal pro Raum geschehen#Verlassen und Betreten des Raums ermöglicht, den Effekt erneut auszulösen"}, -- Scapular
	{"143", "Tempo machen", "↑ {{Speed}} +0.3 Tempo#↑ {{Shotspeed}} +0.2 Schusstempo"}, -- Speed Ball
	{"144", "Pennerfreund", "{{Coin}} Hebt nahegelegene Münzen auf#Lässt alle 3-4 Münzen zufällige Verbrauchsgüter erscheinen"}, -- Bum Friend
	{"145", "Guppys Kopf", "Lässt 2-4 blaue Fliegen erscheinen"}, -- Guppy's Head
	{"146", "Gebetskarte", "{{EternalHeart}} +1 Ewiges Herz"}, -- Prayer Card
	{"147", "Axt von Notch", "{{Timer}} Für diesen Raum kann Isaac Steine und Wände zu Geheimräumen durch Hineinlaufen zerstören"}, -- Notched Axe
	{"148", "Befall", "Beim Erleiden von Schaden erscheinen 1-3 blaue Fliegen"}, -- Infestation
	{"149", "Brechwurzel", "↑ {{Damage}} +40 Schaden#↓ {{Tears}} x0.5 Tränen-Multiplikator#↓ {{Tears}} +10 Tränenverzögerung#Isaacs Tränen werden in einem Bogen geschossen#{{Poison}} Die Tränen explodieren und vergiften Feinde am Aufprallort"}, -- Ipecac
	{"150", "Auf die Fresse", "{{Damage}} 10% Chance, Zähne zu schießen, die 3.2x Isaacs Schaden verursachen#{{Luck}} 100% Chance bei 9 Glück"}, -- Tough Love
	{"151", "Der Mulligan", "Tränen haben beim Treffen eines Feindes eine 1/6 Chance, eine blaue Fliege erscheinen zu lassen"}, -- The Mulligan
	{"152", "Technologie 2", "↓ {{Tears}} x0.5 Tränen-Multiplikator#↓ {{Damage}} x0.65 Schadens-Multiplikator#Ersetzt Tränen aus Isaacs rechtem Auge durch einen kontinuierlichen Laser#{{Damage}} Er verursacht 3x Isaacs Schaden pro Sekunde"}, -- Technology 2
	{"153", "Mutierte Spinne", "↓ {{Tears}} x0.48 Tränen-Multiplikator#↓ {{Tears}} +3 Tränenverzögerung#Vierfacher Schuss"}, -- Mutant Spider
	{"154", "Chemisches Peeling", "↑ {{Damage}} +2 Schaden für das linke Auge"}, -- Chemical Peel
	{"155", "Der Linser", "Schwebt durch den Raum#Verursacht bei Kontakt 17 Schaden pro Sekunde"}, -- The Peeper
	{"156", "Habit", "{{Battery}} Beim Erleiden von Schaden wird 1 Ladung dem aktiven Gegenstand hinzugefügt"}, -- Habit
	{"157", "Blutdurst", "↑ {{Damage}} Beim Erleiden von Schaden erhöht sich der Schaden#Bis zu 6 Mal pro Stockwerk möglich#Hält für das gesamte Stockwerk an"}, -- Bloody Lust
	{"158", "Kristallkugel", "Lässt ein {{SoulHeart}} Seelenherz, eine {{Rune}} Rune oder eine {{Card}} Karte erscheinen#{{Timer}} Volle Kartenaufdeckung für das Stockwerk (außer {{SuperSecretRoom}} Supergeheimraum)"}, -- Crystal Ball
	{"159", "Geist der Nacht", "Spektrale Tränen#Flug"}, -- Spirit of the Night
	{"160", "Zerbrich den Himmel", "Lässt 5 Lichtstrahlen in der Nähe von Feinden erscheinen#Jeder Strahl verursacht 8x Isaacs Schaden + 160 über 0.8 Sekunden"}, -- Crack the Sky
	{"161", "Ankh", "{{Player4}} Werde nach dem Tod als ??? (Blue Baby) wiederbelebt"}, -- Ankh
	{"162", "Keltisches Kreuz", "Beim Erleiden von Schaden besteht eine 20% Chance, dass Isaac vorübergehend unverwundbar wird#{{Luck}} 100% Chance bei 27 Glück"}, -- Celtic Cross
	{"163", "Geisterbaby", "Schießt spektrale Tränen#Verursacht 3.5 Schaden pro Träne"}, -- Ghost Baby
	{"164", "Die Kerze", "Wirft eine blaue Flamme#Sie verursacht Schaden bei Kontakt, blockt feindliche Tränen und verschwindet nach 2 Sekunden"}, -- The Candle
	{"165", "9-schwänzige Katze", "↑ {{Damage}} +1 Schaden#↑ {{Shotspeed}} +0.23 Schusstempo"}, -- Cat-o-nine-tails
	{"166", "W20", "Würfelt alle Verbrauchsgüter im Raum neu"}, -- D20
	{"167", "Harlekin-Baby", "Schießt zwei Tränen in einem V-förmigen Muster#Verursacht 4 Schaden pro Träne"}, -- Harlequin Baby
	{"168", "Epischer Fötus", "Anstatt Tränen zu schießen, steuere ein Fadenkreuz#Eine Rakete schlägt nach 1.5 Sekunden beim Fadenkreuz ein#{{Damage}} Raketen verursachen 20x Isaacs Schaden"}, -- Epic Fetus
	{"169", "Polyphem", "↑ {{Damage}} +4 Schaden#↑ {{Damage}} x2 Schadens-Multiplikator#↓ {{Tears}} x0.48 Tränen-Multiplikator#↓ {{Tears}} +3 Tränenverzögerung#Tränen durchbohren getötete Feinde, wenn Restschaden vorhanden ist"}, -- Polyphemus
	{"170", "Papi Langbein", "Tritt alle 4 Sekunden auf einen nahen Feind#Verursacht 40 Schaden pro Sekunde"}, -- Daddy Longlegs
	{"171", "Spinnenpopo", "{{Slow}} Verlangsamt Feinde für 4 Sekunden#Verursacht 10 Schaden an allen Feinden"}, -- Spider Butt
	{"172", "Opferdolch", "Satellit#Blockt feindliche Schüsse#Verursacht bei Kontakt 225 Schaden pro Sekunde"}, -- Sacrificial Dagger
	{"173", "Mitra", "{{SoulHeart}} 50% Chance, dass Rote Herzen stattdessen als Seelenherzen erscheinen"}, -- Mitre
	{"174", "Regenbogenbaby", "Schießt zufällige Tränen#Verursacht 3-5 Schaden pro Träne"}, -- Rainbow Baby
	{"175", "Papas Schlüssel", "Öffnet alle Türen im Raum, einschließlich {{SecretRoom}}{{SuperSecretRoom}}Geheimräume, {{ChallengeRoom}}{{BossRushRoom}}Herausforderungsräume und die Mega-Satan-Tür"}, -- Dad's Key
	{"176", "Stammzellen", "↑ {{Heart}} +1 Gesundheit#↑ {{Shotspeed}} +0.16 Schusstempo"}, -- Stem Cells
	{"177", "Mobiler Spielautomat", "{{Coin}} Gib 1 Münze aus für die Chance, ein Verbrauchsgut erscheinen zu lassen"}, -- Portable Slot
	{"178", "Weihwasser", "Beim Erleiden von Schaden hinterlässt Isaac eine Pfütze#Die Pfütze verursacht 24 Schaden pro Sekunde"}, -- Holy Water
	{"179", "Schicksal", "{{EternalHeart}} +1 Ewiges Herz#Flug"}, -- Fate
	{"180", "Die schwarze Bohne", "Isaac furzt beim Erleiden von Schaden#{{Poison}} Der Furz vergiftet Feinde"}, -- The Black Bean
	{"181", "Weißes Pony", "{{Speed}} Setzt dein Tempo auf mindestens 1.5#Flug, solange im Besitz#Bei Benutzung stürmt Isaac in die Richtung seiner Bewegung und hinterlässt Lichtstrahlen"}, -- White Pony
	{"182", "Heiliges Herz", "↑ {{Heart}} +1 Gesundheit#↑ {{Damage}} x2.3 Schadens-Multiplikator#↑ {{Damage}} +1 Schaden#↑ {{Range}} +0.38 Reichweite#↑ +0.75 Tränenhöhe#↓ {{Tears}} -0.4 Tränen#↓ {{Shotspeed}} -0.25 Schusstempo#{{Heart}} Volle Gesundheit#Zielsuchende Tränen"}, -- Sacred Heart
	{"183", "Zahnstocher", "↑ {{Tears}} +0.7 Tränen#↑ {{Shotspeed}} +0.16 Schusstempo"}, -- Tooth Picks
	{"184", "Heiliger Gral", "↑ {{Heart}} +1 Gesundheit#Flug"}, -- Holy Grail
	{"185", "Tote Taube", "Spektrale Tränen#Flug"}, -- Dead Dove
	{"186", "Blutrechte", "Verursacht jedem Feind 40 Schaden#{{Warning}} Verursacht 1 Herz Schaden bei Isaac#{{Heart}} Entfernt Rote Herzen zuerst"}, -- Blood Rights
	{"187", "Guppys Haarball", "Durch Bewegung wird der Haarballen herumgeschwungen#Der Ball wächst, wenn er einen Feind tötet#Er verursacht mehr Schaden, je größer er ist"}, -- Guppy's Hairball
	{"188", "Abel", "Spiegelt Isaacs Bewegung#Schießt Richtung Isaac#Verursacht 3.5 Schaden pro Träne"}, -- Abel
	{"189", "SMB-Superfan", "↑ {{Heart}} +1 Gesundheit#↑ {{Speed}} +0.2 Tempo#↑ {{Tears}} +0.2 Tränen#↑ {{Damage}} +0.3 Schaden#↑ {{Range}} +0.5 Reichweite#↑ +1 Tränenhöhe#{{Heart}} Volle Gesundheit"}, -- SMB Super Fan
	{"190", "Pyro", "{{Bomb}} +99 Bomben"}, -- Pyro
	{"191", "3-Dollar-Schein", "Isaacs Tränen erhalten alle 2-3 Sekunden zufällige Effekte"}, -- 3 Dollar Bill
	{"192", "Telepathie für Dummies", "{{Timer}} Zielsuchende Tränen für diesen Raum"}, -- Telepathy For Dummies
	{"193", "FLEISCH!", "↑ {{Heart}} +1 Gesundheit#↑ {{Damage}} +0.3 Schaden"}, -- MEAT!
	{"194", "Schwarze Zauberkugel", "↑ {{Shotspeed}} +0.16 Schusstempo#{{Card}} Lässt eine Karte erscheinen"}, -- Magic 8 Ball
	{"195", "Mamas Geldbörse", "{{Pill}} Lässt 4 Pillen erscheinen"}, -- Mom's Coin Purse
	{"196", "Quetschi", "↑ {{Tears}} +0.4 Tränen#{{SoulHeart}} Lässt 2 Seelenherzen erscheinen"}, -- Squeezy
	{"197", "Jesus-Getränk", "↑ {{Damage}} +0.5 Schaden#↑ {{Range}} +0.25 Reichweite#↑ +0.5 Tränenhöhe"}, -- Jesus Juice
	{"198", "Box", "Lässt 1 Verbrauchsgut jeder Art erscheinen"}, -- Box
	{"199", "Mamas Schlüssel", "{{Key}} +2 Schlüssel#Truhen enthalten mehr Verbrauchsgüter"}, -- Mom's Key
	{"200", "Mamas Lidschatten", "{{Charm}} 10% Chance, bezaubernde Tränen zu schießen#{{Luck}} 100% Chance bei 27 Glück"}, -- Mom's Eyeshadow
	{"201", "Eisenstange", "↑ {{Damage}} +0.3 Schaden#{{Confusion}} 10% Chance, erschütternde Tränen zu schießen#{{Luck}} 100% Chance bei 27 Glück"}, -- Iron Bar
	{"202", "Midas' Berührung", "Das Berühren von Feinden versteinert sie und verwandelt sie in Gold#Isaac verursacht bei Kontakt Schaden basierend auf seiner Münzanzahl#{{Coin}} Das Töten eines goldenen Feindes lässt Münzen erscheinen#Von Isaac erzeugter Kot hat eine hohe Chance, goldener Kot zu sein"}, -- Midas' Touch
	{"203", "Großzügiges Bündel", "Erscheinende Verbrauchsgüter werden, wenn möglich, verdoppelt"}, -- Humbleing Bundle
	{"204", "Gürteltasche", "Beim Erleiden von Schaden besteht eine 50% Chance, ein zufälliges Verbrauchsgut erscheinen zu lassen"}, -- Fanny Pack
	{"205", "Scharfkantiger Stecker", "{{Battery}} Das Benutzen eines ungeladenen aktiven Gegenstands lädt ihn vollständig auf, kostet jedoch 2 Herzen#Funktioniert nur, wenn der Gegenstand keine Ladungen hat"}, -- Sharp Plug
	{"206", "Guillotine", "↑ {{Tears}} -1 Tränenverzögerung#↑ {{Damage}} +1 Schaden#Isaacs Kopf wird zu einem Satelliten, der schießt, keinen Schaden nimmt und bei Kontakt 105 Schaden pro Sekunde verursacht"}, -- Guillotine
	{"207", "Verbandsknäuel", "Lv1: Satellit#{{Charm}} Lv2: Satellit, der bezaubernde Tränen schießt#{{Charm}} Lv3: Bandage Girl#{{Charm}} Lv4: Super Bandage Girl"}, -- Ball of Bandages
	{"208", "Championgürtel", "↑ {{Damage}} +1 Damage#Die Chance auf Champion-Feinde steigt von 5% auf 20%#Erhöht nicht die Chance auf Champion-Bosse"}, -- Champion Belt
	{"209", "Arschbomben", "{{Bomb}} +5 Bomben#{{Confusion}} Explosionen erschüttern und schaden allen Feinden im Raum"}, -- Butt Bomben
	{"210", "Angenagtes Blatt", "Nach 1 Sekunde Inaktivität wird Isaac unverwundbar"}, -- Gnawed Leaf
	{"211", "Spinnenbaby", "Beim Erleiden von Schaden erscheinen 1-2 blaue Spinnen"}, -- Spiderbaby
	{"212", "Guppys Halsband", "50% Chance, nach dem Tod mit einem halben Herz wiederbelebt zu werden"}, -- Guppy's Collar
	{"213", "Verlorene Linse", "↓ {{Shotspeed}} -0.15 Schusstempo#Isaacs Tränen zerstören feindliche Schüsse"}, -- Lost Contact
	{"214", "Anämisch", "↑ {{Range}} +5 Reichweite#{{Timer}} Beim Erleiden von Schaden hinterlässt Isaac eine Blutspur für diesen Raum#Die Spur verursacht 6 Schaden pro Sekunde"}, -- Anemic
	{"215", "Ziegenkopf", "{{AngelDevilChance}} 100% Teufels-/Engelsraum Chance"}, -- Goat Head
	{"216", "Zeremonielle Robe", "↑ {{Damage}} +1 Schaden#{{BlackHeart}} +3 Schwarze Herzen"}, -- Ceremonial Robes
	{"217", "Mamas Perücke", "{{Heart}} Heilt 1 Herz#5% Chance, eine blaue Spinne erscheinen zu lassen, wenn Tränen geschossen werden#{{Luck}} 100% Chance bei 10 Glück"}, -- Mom's Wig
	{"218", "Plazenta", "↑ {{Heart}} +1 Gesundheit#{{HalfHeart}} 50% Chance, jede Minute ein halbes Herz zu heilen"}, -- Placenta
	{"219", "Alter Verband", "↑ {{EmptyHeart}} +1 Leerer Herzcontainer#{{Heart}} Beim Erleiden von Schaden besteht eine Chance, ein Rotes Herz erscheinen zu lassen"}, -- Old Bandage
	{"220", "Traurige Bomben", "{{Bomb}} +5 Bomben#Isaacs Bomben schießen 10 Tränen in einem Kreis, wenn sie explodieren"}, -- Sad Bomben
	{"221", "Gummizement", "Isaacs Tränen prallen von Feinden und Hindernissen ab"}, -- Rubber Cement
	{"222", "Anti-Schwerkraft", "↑ {{Tears}} -2 Tränenverzögerung#Halten der Schusstasten lässt Tränen in der Luft schweben#Lösen der Schusstasten schießt sie in die Richtung, in die sie abgefeuert wurden"}, -- Anti-Gravity
	{"223", "Pyromaniac", "{{Bomb}} +5 Bomben#{{Heart}} Getting hit by explosions heals 1 heart instead of damaging Isaac#Immune to rock wave attacks and Mom and Satan's stomp attacks"}, -- Pyromaniac
	{"224", "Cricket's Body", "↑ {{Tears}} -1 Tränenverzögerung#↑ {{Tearsize}} x1.2 Tear size#↓ {{Range}} -10 Reichweite#Tränen split up in 4 on hit#Split tears deal half damage"}, -- Cricket's Body
	{"225", "Gimpy", "{{SoulHeart}} Taking damage has a chance to spawn a Seelenherz#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"}, -- Gimpy
	{"226", "Black Lotus", "↑ {{Heart}} +1 Gesundheit#{{SoulHeart}} +1 Seelenherz#{{BlackHeart}} +1 Schwarzes Herz"}, -- Black Lotus
	{"227", "Piggy Bank", "{{Coin}} +3 Münzen#{{Coin}} Taking damage spawns 1-2 Münzen"}, -- Piggy Bank
	{"228", "Mom's Perfume", "↑ {{Tears}} -1 Tränenverzögerung#{{Fear}} 15% chance to shoot fear tears"}, -- Mom's Perfume
	{"229", "Monstro's Lung", "↓ {{Tears}} x0.23 Tränen-Multiplikator#{{Chargeable}} Tränen are charged and released in a shotgun style attack"}, -- Monstro's Lung
	{"230", "Abaddon", "↑ {{Speed}} +0.2 Tempo#↑ {{Damage}} +1.5 Schaden#↓ {{EmptyHeart}} Removes all Herzcontainer#{{BlackHeart}} +6 Schwarze Herzen#{{Fear}} 15% chance to shoot fear tears"}, -- Abaddon
	{"231", "Ball of Tar", "{{Slow}} 10% chance to shoot slowing tears#{{Luck}} 100% chance at 18 Glück#{{Slow}} Isaac leaves a trail of slowing creep"}, -- Ball of Tar
	{"232", "Stop Watch", "↑ {{Speed}} +0.3 Tempo#{{Slow}} Taking damage slows all enemies in the room permanently"}, -- Stop Watch
	{"233", "Tiny Planet", "↑ +7 Tränenhöhe#Spektrale Tränen#Isaac's tears orbit around him"}, -- Tiny Planet
	{"234", "Infestation 2", "Killing an enemy spawns a blue spider"}, -- Infestation 2
	{"235", "", "<item does not exist>"},
	{"236", "E. Coli", "Touching an enemy turns it into poop"}, -- E. Coli
	{"237", "Death's Touch", "↑ {{Damage}} +1.5 Schaden#↑ {{Tearsize}} x2 Tear size#↓ {{Tears}} -0.3 Tränen#Durchdringende Tränen"}, -- Death's Touch
	{"238", "Key Piece 1", "{{Warning}} Getting both parts of the key opens a big golden door#{{AngelChance}} +25% Engelsraum chance#{{EternalHeart}} +2% chance for Ewige Herzen"}, -- Key Piece 1
	{"239", "Key Piece 2", "{{Warning}} Getting both parts of the key opens a big golden door#{{AngelChance}} +25% Engelsraum chance#{{EternalHeart}} +2% chance for Ewige Herzen"}, -- Key Piece 2
	{"240", "Experimental Treatment", "↑ Increases 4 random stats#↓ Decreases 2 random stats"}, -- Experimental Treatment
	{"241", "Contract from Below", "Doubles all room clear rewards#33% chance for no room clear reward"}, -- Contract from Below
	{"242", "Infamy", "50% chance to block enemy shots"}, -- Infamy
	{"243", "Trinity Shield", "Blocks enemy shots coming from the direction Isaac is shooting"}, -- Trinity Shield
	{"244", "Tech.5", "Occasionally shoot lasers in addition to Isaac's tears"}, -- Tech.5
	{"245", "20/20", "Isaac shoots 2 tears at once"}, -- 20/20
	{"246", "Blue Map", "{{SecretRoom}} Reveals Geheimraum locations on the map"}, -- Blue Map
	{"247", "BFFS!", "Familiars deal double damage"}, -- BFFS!
	{"248", "Hive Mind", "Blue spiders and flies deal double damage"}, -- Hive Mind
	{"249", "There's Options", "Allows Isaac to choose between 2 items after beating a boss"}, -- There's Options
	{"250", "Bogo Bomben", "{{Bomb}} All bomb drops become double Bomben"}, -- Bogo Bomben
	{"251", "Starter Deck", "{{Card}} Spawns 1 card on pickup#Isaac can carry 2 cards#Turns all pills into cards"}, -- Starter Deck
	{"252", "Little Baggy", "{{Pill}} Spawns 1 pill on pickup#Isaac can carry 2 pills#Turns all cards into pills"}, -- Little Baggy
	{"253", "Magic Scab", "↑ {{Heart}} +1 Gesundheit#↑ {{Luck}} +1 Glück"}, -- Magic Scab
	{"254", "Blood Clot", "↑ {{Damage}} +1 Schaden for the left eye#↑ {{Range}} +5 Reichweite for the left eye#↑ +0.5 Tränenhöhe"}, -- Blood Clot
	{"255", "Screw", "↑ {{Tears}} +0.5 Tränen#↑ {{Shotspeed}} +0.2 Schusstempo"}, -- Screw
	{"256", "Hot Bomben", "{{Bomb}} +5 Bomben#{{Burning}} Isaac's Bomben leave a flame where they explode"}, -- Hot Bomben
	{"257", "Fire Mind", "{{Burning}} Isaac's tears light enemies on fire#10% chance for tears to explode on enemy impact#{{Luck}} 100% chance at 13 Glück#{{Warning}} The explosion can hurt Isaac"}, -- Fire Mind
	{"258", "Missing No.", "Rerolls all of Isaac's items and stats on pickup and at every new floor"}, -- Missing No.
	{"259", "Dark Matter", "↑ {{Damage}} +1 Schaden#{{Fear}} 33% chance to shoot fear tears#{{Luck}} 100% chance at 20 Glück"}, -- Dark Matter
	{"260", "Black Candle", "{{CurseBlind}} Immune to curses#{{BlackHeart}} +1 Schwarzes Herz#{{AngelDevilChance}} +15% Teufels-/Engelsraum Chance"}, -- Black Candle
	{"261", "Proptosis", "↑ {{Damage}} x2 Schadens-Multiplikator#↓ Tränen deal less damage the further they travel"}, -- Proptosis
	{"262", "Missing Page 2", "{{BlackHeart}} +1 Schwarzes Herz#Taking damage down to 1 heart damages all enemies in the room"}, -- Missing Page 2
	{"263", "", "<item does not exist>"},
	{"264", "Smart Fly", "Orbital#Attacks enemies when Isaac takes damage#Deals 22.5 contact damage per second"}, -- Smart Fly
	{"265", "Dry Baby", "10% chance to damage all enemies in the room when it is hit by an enemy tear"}, -- Dry Baby
	{"266", "Juicy Sack", "{{Slow}} Leaves slowing creep#Spawns 1-2 friendly spiders after clearing a room"}, -- Juicy Sack
	{"267", "Robo-Baby 2.0", "Shoots lasers#Deals 3.5 damage per shot#Moves in the direction Isaac is shooting"}, -- Robo-Baby 2.0
	{"268", "Rotten Baby", "Spawns blue flies when Isaac shoots"}, -- Rotten Baby
	{"269", "Headless Baby", "Leaves creep which deals 6 damage per second"}, -- Headless Baby
	{"270", "Leech", "Chases enemies#{{HalfHeart}} Heals Isaac for half a heart when it kills an enemy#Deals 3.2 damage per second"}, -- Leech
	{"271", "Mystery Sack", "Spawns a random pickup every 5-6 rooms"}, -- Mystery Sack
	{"272", "BBF", "Friendly exploding fly#The explosion deals 60 damage#{{Warning}} The explosion can hurt Isaac"}, -- BBF
	{"273", "Bob's Brain", "Dashes in the direction Isaac is shooting#Explodes when it hits an enemy#{{Poison}} The explosion deals 60 damage and poisons enemies#{{Warning}} The explosion can hurt Isaac"}, -- Bob's Brain
	{"274", "Best Bud", "Taking damage spawns one midrange orbital für diesen Raum#It deals 75 contact damage per second"}, -- Best Bud
	{"275", "Lil Brimstone", "{{Chargeable}} Familiar that charges and shoots a {{Collectible118}} blood beam#It deals 31.5 damage over 0.63 seconds"}, -- Lil Brimstone
	{"276", "Isaac's Heart", "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#{{Warning}} If the heart familiar gets hit, Isaac takes damage"}, -- Isaac's Heart
	{"277", "Lil Haunt", "{{Fear}} Chases and fears enemies#Deals 4 contact damage per second"}, -- Lil Haunt
	{"278", "Dark Bum", "{{Heart}} Picks up nearby Red Hearts#{{SoulHeart}} Spawns a Seelenherz or spider for every 1.5 Red Hearts picked up"}, -- Dark Bum
	{"279", "Big Fan", "Large orbital#Deals 30 contact damage per second"}, -- Big Fan
	{"280", "Sissy Longlegs", "Randomly spawns blue spiders in hostile rooms"}, -- Sissy Longlegs
	{"281", "Boxsack", "Lockvogel#Feinde zielen auf ihn statt auf Isaac"}, -- Punching Bag
	{"282", "How to Jump", "Allows Isaac to jump over gaps and obstacles"}, -- How to Jump
	{"283", "D100", "Reroll all pickups and pedestal items in the room, and all of Isaac's passive items"}, -- D100
	{"284", "D4", "Reroll all of Isaac's passive items"}, -- D4
	{"285", "D10", "Reroll all enemies in the room"}, -- D10
	{"286", "Blank Card", "Triggers the effect of the rune or card Isaac holds without using it"}, -- Blank Card
	{"287", "Book of Secrets", "{{Timer}} Grants one of these effects for the floor:#{{Collectible54}} Treasure Map#{{Collectible21}} Compass#{{Collectible246}} Blue Map"}, -- Book of Secrets
	{"288", "Box of Spiders", "Spawns 1-4 blue spiders"}, -- Box of Spiders
	{"289", "Red Candle", "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 5 times"}, -- Red Candle
	{"290", "The Jar", "{{Heart}} Picking up Red Hearts while at full health stores up to 4 of them in the Jar#Using the item drops all stored hearts on the floor"}, -- The Jar
	{"291", "Flush!", "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses"}, -- Flush!
	{"292", "Satanic Bible", "{{BlackHeart}} +1 Schwarzes Herz"}, -- Satanic Bible
	{"293", "Head of Krampus", "{{Collectible118}} Shoot a 4-way blood beam#They each deal 440 damage over 1.33 seconds"}, -- Head of Krampus
	{"294", "Butter Bean", "Knocks back nearby enemies and projectiles#10% chance to turn into the stronger {{Collectible484}} Wait What? when swapping it with a different active item and picking it up again"}, -- Butter Bean
	{"295", "Magic Fingers", "Deals 2x Isaac's damage to all enemies#{{Coin}} Costs 1 coin"}, -- Magic Fingers
	{"296", "Converter", "{{Heart}} Converts 2 Schwarze/Seeelenherzen into 1 Herzcontainer"}, -- Converter
	-- NOTE FOR LOCALIZERS: There is code to highlight the text of your current floor
	-- For it to work, only use line breaks or semicolons to separate floor details, and use the same order as English
	{"297", "Pandora's Box", "Spawns rewards based on floor:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#C1: Boss item; C2: B1+C1#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Boss items#W2: {{Collectible33}} The Bible#???/Void: Nothing#Sheol: Devil item + 1{{BlackHeart}}#Cathe: Angel item + 1{{EternalHeart}}#Dark Room: Unlocks {{Collectible523}} Moving Box; Chest: 1{{Coin}}"}, -- Pandora's Box
	{"298", "Unicorn Stump", "{{Timer}} Receive for 6 seconds:#↑ {{Speed}} +0.28 Tempo#Unverwundbarkeit#Isaac can't shoot (No contact damage)"}, -- Unicorn Stump
	{"299", "Taurus", "↓ {{Speed}} -0.3 Tempo#↑ {{Speed}} Slowly gain speed while in hostile rooms#At 2 speed, Isaac becomes invincible and deals contact damage#Afterwards, lose the Taurus speed boost für diesen Raum"}, -- Taurus
	{"300", "Aries", "↑ {{Speed}} +0.25 Tempo#Touching enemies deals contact damage"}, -- Aries
	{"301", "Cancer", "{{SoulHeart}} +3 Seelenherzen#Taking damage reduces all future damage in the room to half a heart"}, -- Cancer
	{"302", "Leo", "Size up#Isaac can destroy rocks by walking into them"}, -- Leo
	{"303", "Virgo", "Taking damage can make Isaac temporarily invincible#{{Luck}} 100% chance at 10 Glück#{{Pill}} Converts negative pills into positive ones"}, -- Virgo
	{"304", "Libra", "+6 {{Coin}} Münzen, {{Bomb}} Bomben and {{Key}} Schlüssel#Balances Isaac's stats#Future stat changes will be spread across all stats"}, -- Libra
	{"305", "Scorpio", "{{Poison}} Poison tears"}, -- Scorpio
	{"306", "Sagittarius", "↑ {{Speed}} +0.2 Tempo#Durchdringende Tränen"}, -- Sagittarius
	{"307", "Capricorn", "↑ {{Heart}} +1 Gesundheit#↑ {{Speed}} +0.1 Tempo#↑ {{Tears}} -1 Tränenverzögerung#↑ {{Damage}} +0.5 Schaden#↑ {{Range}} +1.5 Reichweite#+1 {{Coin}} coin, {{Bomb}} bomb and {{Key}} key"}, -- Capricorn
	{"308", "Aquarius", "Isaac leaves a trail of creep#The creep deals 6 damage per second"}, -- Aquarius
	{"309", "Pisces", "↑ {{Tears}} -1 Tränenverzögerung#↑ {{Tearsize}} x1.25 Tear size#Increases tear knockback"}, -- Pisces
	{"310", "Eve's Mascara", "↑ {{Damage}} x2 Schadens-Multiplikator#↓ {{Tears}} x0.5 Tränen-Multiplikator#↓ {{Shotspeed}} -0.5 Schusstempo"}, -- Eve's Mascara
	{"311", "Judas' Shadow", "{{Player12}} When dead, respawn as Dark Judas with a 2x Schadens-Multiplikator"}, -- Judas' Shadow
	{"312", "Maggy's Bow", "↑ {{Heart}} +1 Gesundheit#{{Heart}} Heals 1 heart#All Red Hearts heal double their value"}, -- Maggy's Bow
	{"313", "Holy Mantle", "Negates the first hit taken once per room"}, -- Holy Mantle
	{"314", "Thunder Thighs", "↑ {{Heart}} +1 Gesundheit#↓ {{Speed}} -0.4 Tempo#Isaac can destroy rocks by walking into them"}, -- Thunder Thighs
	{"315", "Strange Attractor", "Isaac's tears attract enemies, pickups and trinkets"}, -- Strange Attractor
	{"316", "Cursed Eye", "Charged wave of 4 tears#{{Warning}} Taking damage while partially charged teleports Isaac to a random room"}, -- Cursed Eye
	{"317", "Mysterious Liquid", "Isaac's tears leave creep#The creep deals 30 damage per second"}, -- Mysterious Liquid
	{"318", "Gemini", "Close combat familiar#Deals 6 contact damage per second"}, -- Gemini
	{"319", "Cain's Other Eye", "Bounces around the room#Low accuracy tears that deal Isaac's damage"}, -- Cain's Other Eye
	{"320", "???'s Only Friend", "Controllable fly#Deals 37.5 contact damage per second"}, -- ???'s Only Friend
	{"321", "Samson's Chains", "Draggable ball that can destroy rocks#Deals 10.7 contact damage per second"}, -- Samson's Chains
	{"322", "Mongo Baby", "Mimics your baby familiars' tears#If you have none, shoots normal 3.5 damage tears"}, -- Mongo Baby
	{"323", "Isaac's Tränen", "Shoots 8 tears in all directions#The tears copy Isaac's tear effects#Recharges by shooting tears"}, -- Isaac's Tränen
	{"324", "Undefined", "Teleports Isaac to the {{TreasureRoom}} Treasure, {{SecretRoom}} Secret, {{SuperSecretRoom}} Super Secret or {{ErrorRoom}} I AM ERROR Raum"}, -- Undefined
	{"325", "Scissors", "{{Timer}} Isaac's head turns into a stationary familiar für diesen Raum#The body is controlled separately"}, -- Scissors
	{"326", "Breath of Life", "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#{{Warning}} Holding it for too long deals damage to Isaac"}, -- Breath of Life
	{"327", "The Polaroid", "Taking damage at half a Red Heart or none makes isaac temporarily invincible"}, -- The Polaroid
	{"328", "The Negative", "Taking damage at half a Red Heart or none damages all enemies in the room"}, -- The Negative
	{"329", "Die Ludovico-Technik", "Ersetzt Isaac's Tränen mit einer großen steuerbaren Träne"}, -- The Ludovico Technique
	{"330", "Soy Milk", "↑ {{Tears}} x4 Tears multiplier#↑ {{Tears}} -2 Tränenverzögerung#↓ {{Damage}} x0.2 Schadens-Multiplikator#↓ {{Tearsize}} x0.5 Tear size"}, -- Soy Milk
	{"331", "Godhead", "↑ {{Damage}} +0.5 Schaden#↑ {{Range}} +1.2 Reichweite#↑ +0.8 Tränenhöhe#↓ {{Tears}} -0.3 Tränen#↓ {{Shotspeed}} -0.3 Schusstempo#Zielsuchende Tränen#{{Damage}} Tränen gain an aura that deals 4.5x Isaac's damage per second"}, -- Godhead
	{"332", "Lazarus' Rags", "{{Player11}} When dead, revive as Lazarus (Risen)"}, -- Lazarus' Rags
	{"333", "The Mind", "Full mapping effect"}, -- The Mind
	{"334", "The Body", "↑ {{Heart}} +3 Gesundheit"}, -- The Body
	{"335", "The Soul", "{{SoulHeart}} +2 Seelenherzen#Grants an aura that repels enemies and projectiles"}, -- The Soul
	{"336", "Dead Onion", "↑ {{Range}} +0.25 Reichweite#↑ {{Tearsize}} x1.5 Tear size#↓ -0.5 Tränenhöhe#↓ {{Shotspeed}} -0.4 Schusstempo#Durchdringende + spektrale Tränen"}, -- Dead Onion
	{"337", "Broken Watch", "{{Slow}} Slows down every 4th room#13% chance to speed up the room instead"}, -- Broken Watch
	{"338", "The Boomerang", "Throwable boomerang#Petrifies enemies and deals 2x Isaac's damage#Can grab and bring back items"}, -- The Boomerang
	{"339", "Safety Pin", "↑ {{Range}} +5.25 Reichweite#↑ +0.5 Tränenhöhe#↑ {{Shotspeed}} +0.16 Schusstempo#{{BlackHeart}} +1 Schwarzes Herz"}, -- Safety Pin
	{"340", "Caffeine Pill", "↑ {{Speed}} +0.3 Tempo#↑ Größe runter#{{Pill}} Spawns a random pill"}, -- Caffeine Pill
	{"341", "Torn Photo", "↑ {{Tears}} +0.7 Tränen#↑ {{Shotspeed}} +0.16 Schusstempo"}, -- Torn Photo
	{"342", "Blue Cap", "↑ {{Heart}} +1 Gesundheit#↑ {{Tears}} +0.7 Tränen#↓ {{Shotspeed}} -0.16 Schusstempo"}, -- Blue Cap
	{"343", "Latch Key", "↑ {{Luck}} +1 Glück#{{SoulHeart}} +1 Seelenherz#{{Key}} Spawns 2 Schlüssel"}, -- Latch Key
	{"344", "Match Book", "{{BlackHeart}} +1 Schwarzes Herz#{{Bomb}} Spawns 3 Bomben"}, -- Match Book
	{"345", "Synthoil", "↑ {{Damage}} +1 Schaden#↑ {{Range}} +5.25 Reichweite#↑ +0.5 Tränenhöhe"}, -- Synthoil
	{"346", "A Snack", "↑ {{Heart}} +1 Gesundheit"}, -- A Snack
	{"347", "Diplopia", "Duplicates all item pedestals and pickups in the room"}, -- Diplopia
	{"348", "Placebo", "{{Pill}} Triggers the effect of the pill Isaac holds without using it"}, -- Placebo
	{"349", "Wooden Nickel", "{{Coin}} 56% chance to spawn a random coin"}, -- Wooden Nickel
	{"350", "Toxic Shock", "{{Poison}} Entering a room poisons all enemies#Enemies killed leave a puddle of creep#The creep deals 30 damage per second"}, -- Toxic Shock
	{"351", "Mega Bean", "Petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Sends a rock wave in the direction Isaac is moving#The rock wave can open Geheimräume and break rocks"}, -- Mega Bean
	{"352", "Glass Cannon", "{{Warning}} Firing the cannon reduces Isaac's health down to half a heart#Shoots a large durchdringende + spektrale Träne that does 10x Isaac's damage"}, -- Glass Cannon
	{"353", "Bomber Boy", "{{Bomb}} +5 Bomben#Bomben explode in a cross-shaped pattern"}, -- Bomber Boy
	{"354", "Crack Jacks", "↑ {{Heart}} +1 Gesundheit#{{Trinket}} Spawns a trinket"}, -- Crack Jacks
	{"355", "Mom's Pearls", "↑ {{Range}} +1.25 Reichweite#↑ +0.5 Tränenhöhe#↑ {{Luck}} +1 Glück"}, -- Mom's Pearls
	{"356", "Car Battery", "{{Battery}} Using an active item triggers its effect twice"}, -- Car Battery
	{"357", "Box of Friends", "{{Timer}} Duplicates all your familiars für diesen Raum#{{Collectible113}} Grants a Demon Baby für diesen Raum if Isaac has no familiars"}, -- Box of Friends
	{"358", "The Wiz", "Spektrale Tränen#Isaac shoots 2 tears at once diagonally"}, -- The Wiz
	{"359", "8 Inch Nails", "↑ {{Damage}} +1.5 Schaden#Increases knockback"}, -- 8 Inch Nails
	{"360", "Incubus", "Shoots tears with the same tear rate, damage and effects as Isaac"}, -- Incubus
	{"361", "Fate's Reward", "Shoots tears with the same damage and effects as Isaac#Shoots at half the rate of other familiars"}, -- Fate's Reward
	{"362", "Lil Chest", "35% chance to spawn a pickup every room"}, -- Lil Chest
	{"363", "Sworn Protector", "Orbital#Deals 105 contact damage per second#Blocks and attracts enemy shots#{{EternalHeart}} Blocking 10 shots in one room spawns an Ewiges Herz"}, -- Sworn Protector
	{"364", "Friend Zone", "Midrange fly orbital#Deals 45 contact damage per second"}, -- Friend Zone
	{"365", "Lost Fly", "Moves along walls/obstacles#Deals 105 contact damage per second"}, -- Lost Fly
	{"366", "Scatter Bomben", "{{Bomb}} +5 Bomben#Isaac's Bomben scatter into 2-4 tiny Bomben"}, -- Scatter Bomben
	{"367", "Sticky Bomben", "{{Bomb}} +5 Bomben#Isaac's Bomben stick to enemies#Killing an enemy with a bomb spawns blue spiders"}, -- Sticky Bomben
	{"368", "Epiphora", "↑ {{Tears}} Shooting in one direction gradually decreases tränenverzögerung up to 200% and decreases accuracy"}, -- Epiphora
	{"369", "Continuum", "↑ {{Range}} +2.25 Reichweite#↑ +1.5 Tränenhöhe#Spektrale Tränen#Tränen can travel through one side of the screen and come out the other side"}, -- Continuum
	{"370", "Mr. Dolly", "↑ {{Tears}} +0.7 Tränen#↑ {{Range}} +5.25 Reichweite#↑ +0.5 Tränenhöhe#{{UnknownHeart}} Spawns 3 random hearts"}, -- Mr. Dolly
	{"371", "Curse of the Tower", "{{Warning}} Taking damage spawns 6 Troll-Bomben#The Troll-Bomben inherit Isaac's bomb effects"}, -- Curse of the Tower
	{"372", "Charged Baby", "Every 30 seconds while in an uncleared room, the familiar can:#{{Battery}} Spawn a Battery (max 2 per room)#{{Battery}} Add one charge to the active item (max 2 per room)#Petrify all enemies in the room"}, -- Charged Baby
	{"373", "Dead Eye", "↑ {{Damage}} Consecutive tear hits on enemies grant +25% damage (max +100%)#Missing has a chance to reset the multiplier"}, -- Dead Eye
	{"374", "Holy Light", "10% chance to shoot holy tears, which spawn a beam of light on hit#{{Luck}} 50% chance at 9 Glück#{{Damage}} The beam deals 4x Isaac's damage"}, -- Holy Light
	{"375", "Host Hat", "Grants immunity to explosions, rock wave attacks and Mom and Satan's stomp attacks#25% chance to reflect enemy shots"}, -- Host Hat
	{"376", "Restock", "Spawns 3 random pickups#Buying an item from a Laden restocks it instantly"}, -- Restock
	{"377", "Bursting Sack", "Spider enemies no longer target or deal contact damage to Isaac"}, -- Bursting Sack
	{"378", "No. 2", "Holding a fire button for 2.35 seconds spawns a lit Butt Bomb"}, -- No. 2
	{"379", "Pupula Duplex", "↑ {{Tearsize}} x2 Tear size#Spektrale Tränen"}, -- Pupula Duplex
	{"380", "Pay To Play", "{{Coin}} +5 Münzen#{{Coin}} Single-key doors must be opened with Münzen instead of Schlüssel"}, -- Pay To Play
	{"381", "Eden's Blessing", "↑ {{Tears}} +0.7 Tränen#Grants a random item at the start of the next run"}, -- Eden's Blessing
	{"382", "Friendly Ball", "Can be thrown at enemies to capture them#Using the item after capturing an enemy spawns it as a friendly companion"}, -- Friendly Ball
	{"383", "Tear Detonator", "Splits all of Isaac's tears currently on screen in a circle of 6 tears"}, -- Tear Detonator
	{"384", "Lil Gurdy", "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-90 contact damage per second depending on speed"}, -- Lil Gurdy
	{"385", "Bumbo", "{{Coin}} Picks up nearby Münzen#Levels up after getting 6, 12, and 24 Münzen#Lv2: Chance to spawn item after room clears#Lv3: Shoots tears that can spawn Münzen on hit#Lv4: Chases enemies, occasionally dropping Bomben, can spawn item on coin pickup"}, -- Bumbo
	{"386", "D12", "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)"}, -- D12
	{"387", "Censer", "{{Slow}} Familiar surrounded by a huge aura of light that slows down enemies and projectiles in it"}, -- Censer
	{"388", "Key Bum", "{{Key}} Picks up nearby Schlüssel#{{Chest}} Spawns random chests in return"}, -- Key Bum
	{"389", "Rune Bag", "{{Rune}} Spawns a random rune every 5-6 rooms"}, -- Rune Bag
	{"390", "Seraphim", "Shoots Sacred Heart tears#Deals 10 damage per tear"}, -- Seraphim
	{"391", "Betrayal", "{{Charm}} Taking damage charms all enemies in the room"}, -- Betrayal
	{"392", "Zodiac", "Grants a random zodiac item effect every floor"}, -- Zodiac
	{"393", "Serpent's Kiss", "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Poisoned enemies have a chance to drop a Schwarzes Herz on death"}, -- Serpent's Kiss
	{"394", "Marked", "↑ {{Tears}} +0.7 Tränen#↑ {{Range}} +3.15 Reichweite#↑ +0.3 Tränenhöhe#Isaac automatically shoots tears at a movable red target on the ground"}, -- Marked
	{"395", "Tech X", "{{Chargeable}} Isaac's tears are replaced by a chargeable laser ring#Ring size increases with charge amount"}, -- Tech X
	{"396", "Ventricle Razor", "Creates up to two portals to travel between#Can be placed in different rooms"}, -- Ventricle Razor
	{"397", "Tractor Beam", "↑ {{Tears}} +0.5 Tränen#↑ {{Range}} +5.25 Reichweite#↑ +0.5 Tränenhöhe#↑ {{Shotspeed}} +0.16 Schusstempo#Isaac's tears always travel along a beam of light in front of him"}, -- Tractor Beam
	{"398", "God's Flesh", "Tränen can shrink enemies#Shrunken enemies can be crushed and killed by walking over them"}, -- God's Flesh
	{"399", "Maw of the Void", "↑ {{Damage}} +1 Damage#{{Chargeable}} Shooting tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the black ring have a 5% chance to drop a Schwarzes Herz"}, -- Maw of the Void
	{"400", "Spear of Destiny", "Isaac holds a spear in front of him#{{Fear}} The spear deals twice his damage and can fear enemies on contact"}, -- Spear of Destiny
	{"401", "Explosivo", "25% chance to shoot sticky bomb tears#Sticky bomb tears do not deal damage on hit and explode after a few seconds"}, -- Explosivo
	{"402", "Chaos", "All items are chosen from random Gegenstandspools#Spawns 1-6 random pickups"}, -- Chaos
	{"403", "Spider Mod", "Displays tear damage and health bars of all enemies#Inflicts random status effects to enemies on contact#Randomly spawns batteries"}, -- Spider Mod
	{"404", "Farting Baby", "Blocks projectiles#When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies"}, -- Farting Baby
	{"405", "GB Bug", "Bounces around the room#Deals 120 damage per second and applies random status effects to enemies on contact"}, -- GB Bug
	{"406", "D8", "Multiplies Isaac's damage, tears, range and speed stats by between 0.5x and 2x#The multipliers are rerolled each use"}, -- D8
	{"407", "Purity", "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and gives Isaac a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Tempo#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} -4 Tränenverzögerung#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Schaden#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +7.5 Reichweite, ↑ +1 Tränenhöhe"}, -- Purity
	{"408", "Athame", "Taking damage creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the ring have a 15% chance to drop a Schwarzes Herz"}, -- Athame
	{"409", "Empty Vessel", "{{BlackHeart}} +2 Schwarze Herzen#{{EmptyHeart}} When Isaac has no Red Hearts:#Flug#Every 40 seconds while in a hostile room, gain a shield for 10 seconds"}, -- Empty Vessel
	{"410", "Evil Eye", "3.33% chance to shoot an eye#{{Luck}} 10% chance at 20 Glück#The eye moves in a straight line and shoots tears in the same direction as Isaac"}, -- Evil Eye
	{"411", "Lusty Blood", "↑ {{Damage}} +0.5 Schaden for each enemy killed in the room#Caps at +5 Schaden after 10 kills"}, -- Lusty Blood
	{"412", "Cambion Conception", "Taking damage 15 times spawns a permanent demon familiar#After two familiars, it takes 30 instead of 15#Caps at 4 familiars"}, -- Cambion Conception
	{"413", "Immaculate Conception", "Picking up 15 hearts spawns a permanent angelic familiar#Caps at 5 familiars#{{SoulHeart}} If all familiars have been granted, spawns a Seelenherz instead"}, -- Immaculate Conception
	{"414", "More Options", "{{TreasureRoom}} Allows Isaac to choose between 2 items in Schatzräumen"}, -- More Options
	{"415", "Crown Of Light", "{{SoulHeart}} +2 Seelenherzen#If Isaac has no damaged Herzcontainer:#↑ {{Damage}} x2 Schadens-Multiplikator#↑ {{Range}} +5.25 Reichweite#↑ +0.5 Tränenhöhe#↓ {{Shotspeed}} -0.3 Schusstempo#Taking any damage removes the effect für diesen Raum"}, -- Crown Of Light
	{"416", "Deep Pockets", "Allows Isaac to carry two runes/cards/pills"}, -- Deep Pockets
	{"417", "Succubus", "Bounces around the room surrounded by a damaging aura that deals 1.29x Isaac's damage per second#↑ {{Damage}} x1.5 Schadens-Multiplikator while standing in the aura"}, -- Succubus
	{"418", "Fruit Cake", "Each one of Isaac's tears gets a different effect"}, -- Fruit Cake
	{"419", "Teleport 2.0", "Teleports Isaac to a room that has not been cleared yet#Hierarchy: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"}, -- Teleport 2.0
	{"420", "Black Powder", "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds"}, -- Black Powder
	{"421", "Kidney Bean", "{{Charm}} Charms and deals 5 damage to all enemies in close range"}, -- Kidney Bean
	{"422", "Glowing Hour Glass", "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in"}, -- Glowing Hour Glass
	{"423", "Circle of Protection", "Surrounds Isaac with a large halo that deals his damage on contact per second#Chance to reflect enemy projectiles"}, -- Circle of Protection
	{"424", "Sack Head", "Pickups have a chance to be replaced with a {{GrabBag}}sack:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Spawns a sack"}, -- Sack Head
	{"425", "Night Light", "{{Slow}} Spawns a slowing cone of light in front of Isaac"}, -- Night Light
	{"426", "Obsessed Fan", "Mimics Isaac's exact movement on a 3 second delay#Deals 30 contact damage per second"}, -- Obsessed Fan
	{"427", "Mine Crafter", "Spawns a pushable TNT barrel#Using the item a second time in the same room remotely detonates the barrel"}, -- Mine Crafter
	{"428", "PJs", "{{Heart}} Volle Gesundheit#{{SoulHeart}} +4 Seelenherzen"}, -- PJs
	{"429", "Head of the Keeper", "{{Coin}} Hitting an enemy with a tear has a 5% chance to spawn a Penny"}, -- Head of the Keeper
	{"430", "Papa Fly", "Mimics Isaac's movement on a 1 second delay#Shoots tears at nearby enemies that deal Isaac's damage"}, -- Papa Fly
	{"431", "Multidimensional Baby", "Mimics Isaac's movement on a 2 second delay#Tränen that pass through it are doubled and gain a range + shot speed boost"}, -- Multidimensional Baby
	{"432", "Glitter Bomben", "{{Bomb}} +5 Bomben#{{Charm}} Isaac's Bomben have a 25% chance to drop a random pickup and a 15% chance to charm enemies when they explode"}, -- Glitter Bomben
	{"433", "My Shadow", "{{Fear}} Taking damage fears all enemies in the room and spawns a friendly black charger#The charger deals 5 damage per second"}, -- My Shadow
	{"434", "Jar of Flies", "Killing an enemy adds a blue fly to the jar, up to 20 flies#Using the item releases all the flies"}, -- Jar of Flies
	{"435", "Lil Loki", "Shoots 4 tears in a cross pattern#Deals 3.5 damage per tear"}, -- Lil Loki
	{"436", "Milk!", "{{Tears}} Taking damage grants a Tränen up for the duration of the room"}, -- Milk!
	{"437", "D7", "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room#If used after a Greed fight, rerolls the room into a normal Laden/Geheimraum"}, -- D7
	{"438", "Binky", "↑ {{Tears}} +0.75 Tränen#↑ Größe runter#{{SoulHeart}} +1 Seelenherz"}, -- Binky
	{"439", "Mom's Box", "{{Trinket}} Spawns a random trinket#While held:#↑ {{Luck}} +1 Glück#{{Trinket}} Doubles trinket effects"}, -- Mom's Box
	{"440", "Kidney Stone", "↑ +2 Tränenhöhe#↓ {{Speed}} -0.2 Tempo#↓ {{Range}} -17 Reichweite#Isaac occasionally stops firing and charges an attack that releases a burst of tears and a kidney stone"}, -- Kidney Stone
	{"441", "Mega Blast", "{{Timer}} Fires a huge Mega Satan blood beam for 15 seconds#The beam persists between rooms and floors"}, -- Mega Blast
	{"442", "Dark Prince's Crown", "While at 1 full Red Heart:#↑ {{Tears}} +0.75 Tränen#↑ {{Range}} +1.5 Reichweite#↑ +1 Tränenhöhe#↑ {{Shotspeed}} +0.2 Schusstempo"}, -- Dark Princes Crown (apostrophe added to the name in Repentance) -- Dark Prince's Crown
	{"443", "Apple!", "↑ {{Tears}} +0.3 Tränen#{{Damage}} 6.66% chance to shoot razor blades that deal 4x Isaac's damage#{{Luck}} 100% chance at 14 Glück"}, -- Apple!
	{"444", "Lead Pencil", "Isaac shoots a cluster of tears every 15 tears#Tränen in the cluster deal double damage"}, -- Lead Pencil
	{"445", "Dog Tooth", "↑ {{Speed}} +0.1 Tempo#↑ {{Damage}} +0.3 Schaden#{{SecretRoom}}{{SuperSecretRoom}} A wolf howls in rooms adjacent to a Geheimraum/Supergeheimraum#{{LadderRoom}} A dog barks in rooms with a Kriechkeller under a rock"}, -- Dog Tooth
	{"446", "Dead Tooth", "{{Poison}} While firing, Isaac is surrounded by a green aura that poisons enemies"}, -- Dead Tooth
	{"447", "Linger Bean", "Firing without pause for 7.5 seconds spawns a poop cloud#The cloud deals Isaac's damage 5 times a second#The cloud lasts 15 seconds and can be moved by shooting it"}, -- Linger Bean
	{"448", "Shard of Glass", "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{Collectible214}} 10% chance to get ↑ {{Range}} +5 Reichweite and leave a trail of blood creep für diesen Raum"}, -- Shard of Glass
	{"449", "Metal Plate", "{{SoulHeart}} +1 Seelenherz#{{Confusion}} Enemy bullets have a 25% chance to be reflected as concussive tears"}, -- Metal Plate
	{"450", "Eye of Greed", "Every 20 tears, Isaac shoots a coin tear that deals double damage#Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-4 Münzen#{{Warning}} Firing a coin tear costs 1 coin"}, -- Eye of Greed
	{"451", "Tarot Cloth", "{{Card}} Spawns a card#{{Card}} Card effects are doubled or enhanced"}, -- Tarot Cloth
	{"452", "Varicose Veins", "Taking damage shoots 10 tears in a circle around Isaac#The tears deal Isaac's damage + 25"}, -- Varicose Veins
	{"453", "Compound Fracture", "↑ {{Range}} +1.5 Reichweite#↑ +1 Tränenhöhe#Tränen shatter into 1-3 small bone shards upon hitting anything"}, -- Compound Fracture
	{"454", "Polydactyly", "Spawns a {{Rune}} rune, {{Card}} card or {{Pill}} pill on pickup#Allows Isaac to carry 2 runes/cards/pills"}, -- Polydactyly
	{"455", "Dad's Lost Coin", "↑ {{Range}} +1.5 Reichweite#↑ +1 Tränenhöhe#{{Luck}} Spawns a Lucky Penny"}, -- Dad's Lost Coin
	{"456", "Moldy Bread", "↑ {{Heart}} +1 Gesundheit"}, -- Moldy Bread
	{"457", "Cone Head", "{{SoulHeart}} +1 Seelenherz#20% chance to negate damage taken"}, -- Cone Head
	{"458", "Belly Button", "{{Trinket}} Allows Isaac to carry 2 trinkets#{{Trinket}} Spawns a random trinket"}, -- Belly Button
	{"459", "Sinus Infection", "20% chance to shoot a sticky booger#{{Damage}} Boogers deal Isaac's damage once a second and stick for 60 seconds#{{Luck}} Not affected by Glück"}, -- Sinus Infection
	{"460", "Glaucoma", "{{Confusion}} 5% chance to shoot concussive tears#Makes the screen slightly darker"}, -- Glaucoma
	{"461", "Parasitoid", "15% chance to shoot egg sacks#{{Luck}} 50% chance at 5 Glück#{{Slow}} Egg sacks spawn slowing creep and a blue spider or fly on hit"}, -- Parasitoid
	{"462", "Eye of Belial", "↑ {{Range}} +1.5 Reichweite#↑ +1 Tränenhöhe#Durchdringende Tränen#Hitting an enemy makes the tear homing and doubles its damage"}, -- Eye of Belial
	{"463", "Sulfuric Acid", "↑ {{Damage}} +0.3 Schaden#Isaac's tears can destroy rocks and open doors"}, -- Sulfuric Acid
	{"464", "Glyph of Balance", "{{SoulHeart}} +2 Seelenherzen#Champion enemies drop whatever pickup Isaac needs the most"}, -- Glyph of Balance
	{"465", "Analog Stick", "↑ {{Tears}} +0.3 Tränen#Allows Isaac to shoot tears in any direction"}, -- Analog Stick
	{"466", "Contagion", "{{Poison}} The first enemy killed in a room explodes and poison all nearby enemies"}, -- Contagion
	{"467", "Finger!", "{{Damage}} Constantly deals 10% of Isaac's damage in the direction it points"}, -- Finger!
	{"468", "Shade", "Follows Isaac's movement on a 1 second delay#Deals 30 contact damage per second#After it deals 600 damage, it is absorbed by Isaac, increasing his contact damage"}, -- Shade
	{"469", "Depression", "Leaves a trail of creep#The creep deals 6 damage per second#Enemies that touch the cloud can be hit by a holy light beam"}, -- Depression
	{"470", "Hushy", "Bounces around the room#Deals 30 contact damage per second#Stops moving when Isaac shoots#Blocks projectiles when stopped"}, -- Hushy
	{"471", "Lil Monstro", "{{Chargeable}} Charges a shotgun attack similar to {{Collectible229}} Monstro's Lung#Each tear deals 3.5 damage"}, -- Lil Monstro
	{"472", "King Baby", "Other familiars follow it#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"}, -- King Baby
	{"473", "Big Chubby", "Very slowly charges forwards#Blocks shots#Deals 40.5 contact damage per second"}, -- Big Chubby
	{"474", "Tonsil", "Blocks enemy projectiles"}, -- Tonsil
	{"475", "Plan C", "Deals 9,999,999 damage to all enemies#{{Warning}} Kills Isaac 3 seconds later"}, -- Plan C
	{"476", "D1", "Duplicates a random pickup in the room"}, -- D1
	{"477", "Void", "Consumes all pedestal items in the room#Active items: Their effects activate, and will activate with every future use of Void#↑ Passive items grant two random stat ups"}, -- Void
	{"478", "Pause", "Pauses all enemies in the room until Isaac shoots#Touching a paused enemy still deals damage to Isaac#Enemies unpause after 30 seconds"}, -- Pause
	{"479", "Smelter", "{{Trinket}} Consumes Isaac's held trinkets and grants their effects permanently#Increases the spawn rate of trinkets"}, -- Smelter
	{"480", "Compost", "Converts pickups into blue flies or spiders#Doubles all blue flies and spiders#Spawns 1 blue fly or spider if Isaac has none"}, -- Compost
	{"481", "Dataminer", "↑ Random stat up#↓ Random stat down#{{Timer}} Random tear effects für diesen Raum#{{Blank}} Corrupts all sprites and music in the room"}, -- Dataminer
	{"482", "Klicker", "Ändert deinen Charakter in einen anderen zufälligen Charakter#Entfernt das zuletzt gesammelte Objekt"}, -- Clicker
	{"483", "Mama Mega!", "Affects the whole floor#Explodes all objects#Deals 200 damage to all enemies#Opens the door to Boss-Ansturm, Hush and all Geheimräume#Having a golden bomb when using the item consumes it and allows for another use of Mama Mega"}, -- Mama Mega!
	{"484", "Wait What?", "Upon use, pushes enemies away and spawns a rock wave around Isaac#The rock wave can open rooms and break rocks"}, -- Wait What?
	{"485", "Crooked Penny", "50% chance to double all items, pickups and chests in room#50% chance to remove items / pickups in room and spawn 1 coin"}, -- Crooked Penny
	{"486", "Dull Razor", "Hurts Isaac without removing health#Triggers any on-hit item effects"}, -- Dull Razor
	{"487", "Potato Peeler", "{{EmptyHeart}} Removes 1 Herzcontainer for:#↑ {{Damage}} +0.2 Schaden#{{Collectible73}} A Cube of Meat#{{Timer}} Erhalte für diesen Raum:#↑ {{Range}} +5 Reichweite#{{Collectible214}} Leave a trail of blood creep"}, -- Potato Peeler
	{"488", "Metronome", "Grants a random item effect für diesen Raum"}, -- Metronome
	{"489", "D Infinity", "Triggers a random dice effect each use"}, -- D Infinity
	{"490", "Eden's Soul", "Spawns 2 random items depending on the current room's Gegenstandspool#Starts with no charges"}, -- Eden's Soul
	{"491", "Acid Baby", "{{Pill}} Spawns a random pill every 3 rooms#{{Poison}} Using a pill poisons all enemies in the room"}, -- Acid Baby
	{"492", "YO LISTEN!", "↑ {{Luck}} +1 Glück#Highlights the location of {{SecretRoom}} Geheimräume, tinted rocks and {{LadderRoom}} Kriechkeller"}, -- YO LISTEN!
	{"493", "Adrenaline", "For every empty Herzcontainer:#↑ {{Damage}} +0.2 Schaden"}, -- Adrenaline
	{"494", "Jacob's Ladder", "Tränen spawn 1-2 sparks of electricity on impact#Sparks deal half of Isaac's damage"}, -- Jacob's Ladder
	{"495", "Ghost Pepper", "Chance to shoot a red flame that blocks enemy shots and deals contact damage#The flame disappears after dealing damage or blocking shots 5 times"}, -- Ghost Pepper
	{"496", "Euthanasia", "3.33% chance to shoot a needle#{{Luck}} 100% chance at 15 Glück#Needles kill normal enemies instantly, bursting them into 10 tears#{{Damage}} Needles deal 3x Isaac's damage against bosses"}, -- Euthanasia
	{"497", "Camo Undies", "{{Confusion}} Entering a room confuses all enemies until Isaac starts shooting"}, -- Camo Undies
	{"498", "Duality", "{{AngelDevilChance}} Spawns both an Teufels- und Engelsraum if either would have spawned#Entering one makes the other disappear"}, -- Duality
	{"499", "Eucharist", "{{AngelChance}} 100% chance for Engelsräume to spawn"}, -- Eucharist
	{"500", "Sack of Sacks", "Spawns a sack every 5-6 rooms"}, -- Sack of Sacks
	{"501", "Greed's Gullet", "{{Heart}} +1 Herzcontainer for every 25 Münzen gained after getting Greed's Gullet"}, -- Greed's Gullet
	{"502", "Large Zit", "{{Slow}} Firing occasionally shoots a white creep tear that deals double damage and slows enemies#Taking damage shoots a white creep tear"}, -- Large Zit
	{"503", "Little Horn", "5% chance to shoot tears that instantly kill enemies#{{Luck}} 20% chance at 15 Glück#Isaac deals 3.5 contact damage"}, -- Little Horn
	{"504", "Brown Nugget", "Spawns a fly turret that shoots at enemies#Each shot deals 2 damage"}, -- Brown Nugget
	{"505", "Poke Go", "Entering a hostile room has a chance to spawn a charmed enemy"}, -- Poke Go
	{"506", "Backstabber", "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds"}, -- Backstabber
	{"507", "Sharp Straw", "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts#{{HalfSoulHeart}} Having no Herzcontainer drops Seelenherzen instead"}, -- Sharp Straw
	{"508", "Mom's Razor", "{{BleedingOut}} Orbital that causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds#{{Damage}} Deals 3x Isaac's damage per second#Does not block shots"}, -- Mom's Razor
	{"509", "Bloodshot Eye", "Orbital that shoots a tear in a random direction every 2 seconds#Deals 3.5 damage per tear#Deals 30 contact damage per second#Does not block shots"}, -- Bloodshot Eye
	{"510", "Delirious", "{{Timer}} Spawns a friendly delirium version of a boss für diesen Raum"}, -- Delirious
	{"511", "Angry Fly", "Orbits a random enemy until that enemy dies#Deals 30 contact damage per second to other enemies"}, -- Angry Fly
	{"512", "Black Hole", "Throwable black hole, which sucks in everything#Deals 6 damage per second#Destroys nearby rocks#Lasts 6 seconds"}, -- Black Hole
	{"513", "Bozo", "↑ {{Damage}} +0.1 Schaden#{{SoulHeart}} +1 Seelenherz#{{Charm}} Randomly charms/fears enemies#Taking damage has a random chance to spawn a Rainbow Poop"}, -- Bozo
	{"514", "Broken Modem", "Causes some enemies and projectiles to briefly pause at random intervals#25% chance to double room clear drops"}, -- Broken Modem
	{"515", "Mystery Gift", "Spawns a random item from the current room's Gegenstandspool#Chance to spawn Lump of Coal or The Poop instead"}, -- Mystery Gift
	{"516", "Sprinkler", "Spawns a Sprinkler that shoots the same tears as Isaac in a circle around itself"}, -- Sprinkler
	{"517", "Fast Bomben", "{{Bomb}} +7 Bomben#Removes the delay between bomb placements"}, -- Fast Bomben
	{"518", "Buddy in a Box", "Familiar which looks like a random co-op baby#Has random tear effects#Effects change every floor"}, -- Buddy in a Box
	{"519", "Lil Delirium", "Transforms into a random familiar every 10 seconds"}, -- Lil Delirium
	{"520", "Jumper Cables", "Killing 15 enemies adds 1 charge to the active item"}, -- Jumper Cables
	{"521", "Coupon", "Makes one random item in the {{Shop}} Laden or {{DevilRoom}} Teufelsraum free#Holding the item guarantees one Laden-Gegenstand is on sale"}, -- Coupon
	{"522", "Telekinesis", "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards"}, -- Telekinesis
	{"523", "Moving Box", "Stores all pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"}, -- Moving Box
	{"524", "Technology Zero", "Isaac's tears are connected with beams of electricity#The beams deal Isaac's damage"}, -- Technology Zero
	{"525", "Leprosy", "Taking damage spawns a projectile blocking orbital#Caps at 3 orbitals#They deal 35 contact damage per second#Orbitals are destroyed if they take too much damage"}, -- Leprosy
	{"526", "7 Seals", "Spawns a small horseman familiar that spawns locusts#The horseman and its locust changes every 10 seconds"}, -- 7 Seals
	{"527", "Mr. ME!", "Displays a movable cursor for a few seconds, then summons a ghost that will, depending on the cursor position:#Open doors or chests#Fetch an item#50% chance to steal from the Laden / devil#Attack an enemy until it dies#Explode walls, rocks, shopkeepers, angel statues, machines, beggars"}, -- Mr. ME!
	{"528", "Angelic Prism", "Orbital prism#Friendly tears hitting it split into 4"}, -- Angelic Prism
	{"529", "Pop!", "Isaac's tears bounce off each other and disappear when they stop moving"}, -- Pop!
	{"530", "Death's List", "Killing enemies in the order dictated by the mark {{DeathMark}} above them grants a random pickup or stat increase"}, -- Death's List
	{"531", "Haemolacria", "↑ {{Damage}} x1.31 Schadens-Multiplikator#↓ {{Tears}} x0.5 Tränen-Multiplikator#↓ {{Tears}} +10 Tränenverzögerung#Isaac's tears fly in an arc and burst into smaller tears on impact"}, -- Haemolacria
	{"532", "Lachryphagy", "Isaac's tears progressively slow down, stop, then explode into 8 smaller tears#Tränen can merge and become bigger"}, -- Lachryphagy
	{"533", "Trisagion", "Replaces Isaac's tears with piercing beams of light#The beams deal 33% damage but can hit enemies multiple times"}, -- Trisagion
	{"534", "Schoolbag", "Allows Isaac to hold 2 active items#The items can be swapped using the Drop button ({{ButtonRT}})"}, -- Schoolbag
	{"535", "Blanket", "{{HealingRed}} Heals 1 heart#{{SoulHeart}} +1 Seelenherz#{{HolyMantle}} Entering a Bossraum grants a Holy Mantle shield (prevents damage once)"}, -- Blanket
	{"536", "Sacrificial Altar", "Sacrifices up to 2 familiars and spawns a devil item for each sacrifice#{{Coin}} Turns blue spiders/flies into Münzen"}, -- Sacrificial Altar
	{"537", "Lil Spewer", "{{Pill}} Spawns a random pill on pickup#Fires a line of creep#The type of creep changes with each pill use"}, -- Lil Spewer
	{"538", "Marbles", "{{Trinket}} Spawns 3 random trinkets#{{Collectible479}} Taking damage has a 10% chance to consume Isaac's held trinket and grant its effects permanently"}, -- Marbles
	{"539", "Mystery Egg", "Taking damage spawns a charmed enemy#Spawns stronger friends the more rooms are cleared without taking damage"}, -- Mystery Egg
	{"540", "Flat Stone", "Isaac's tears bounce off the floor and cause splash damage on every bounce"}, -- Flat Stone
	{"541", "Marrow", "{{Heart}} Spawns 3 Red Hearts#{{EmptyBoneHeart}} +1 Knochenherz"}, -- Marrow
	{"542", "Slipped Rib", "Orbital#Reflects enemy projectiles"}, -- Slipped Rib
	{"543", "Hallowed Ground", "Taking damage spawns a white poop#While inside the poop's aura:#↑ {{Tears}} x2 Tränen-Multiplikator#Chance to block damage"}, -- Hallowed Ground
	{"544", "Pointy Rib", "Levitates in front of Isaac#Deals 6x Isaac's damage per second"}, -- Pointy Rib
	{"545", "Book of the Dead", "Spawns a bone orbital or charmed bony per enemy killed in the room (up to 8)"}, -- Book of the Dead
	{"546", "Dad's Ring", "Grants an aura that petrifies enemies"}, -- Dad's Ring
	{"547", "Divorce Papers", "↑ {{Tears}} +0.7 Tränen#{{EmptyBoneHeart}} +1 Knochenherz#{{Trinket21}} Spawns the Mysterious Paper trinket"}, -- Divorce Papers
	{"548", "Jaw Bone", "Boomerang-like familiar#Deals 7 contact damage#Can grab and bring back pickups"}, -- Jaw Bone
	{"549", "Brittle Bones", "{{EmptyBoneHeart}} Replaces all of Isaac's Red Herzcontainer with 6 empty Knochenherzen#Upon losing a Knochenherz:#↑ {{Tears}} +0.5 Tränen#Shoots 8 bone tears in all directions"}, -- Brittle Bones
	{"550", "Broken Shovel", "Mom's Foot constantly tries to stomp Isaac#Using the item stops the stomping für diesen Raum (or one Boss-Ansturm wave)#{{Warning}} (Try to beat Boss-Ansturm with it!)"}, -- Broken Shovel
	{"551", "Broken Shovel", "Completes Mom's Shovel#{{Warning}} Use the shovel on the mound of dirt in the \"Dark Room\""}, -- Broken Shovel
	{"552", "Mom's Shovel", "Spawns a trapdoor to the next floor#10% chance for {{LadderRoom}} Kriechkeller trapdoor#{{Warning}} Use the shovel on the mound of dirt in the \"Dark Room\""}, -- Mom's Shovel
}

---------- Modifiers ----------

-- Effect of Car battery on Active Items
EID.descriptions[languageCode].carBattery = {
	-- Not yet Translated!
	-- Copy & Paste entries from English and continue translating from that
}

---------- Trinkets ----------

EID.descriptions[languageCode].trinkets={
	-- Not yet Translated!
	-- Copy & Paste entries from English and continue translating from that
}

---------- Cards ----------

EID.descriptions[languageCode].cards={
	-- Not yet Translated!
	-- Copy & Paste entries from English and continue translating from that
}

--[[ Card Buffs caused by Tarot Cloth (separate table from Rep due to how different they are)
-- Strings will be appended to the original description (with line breaks replaced with a Tarot Cloth icon)
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs (the new text will be colored Shiny Purple) ]]
EID.descriptions[languageCode].tarotClothBuffsAB = {
	[4] = {0.3, 0.6, 1.5, 3}, -- III - The Empress
	[6] = {2, 4}, -- V - The Hierophant
	[7] = {2, 4}, -- VI - The Lovers
	[8] = {6, 12}, -- VII - The Chariot
	[9] = {"Spawnt {{ColorShinyPurple}}2{{CR}} zufällige {{UnknownHeart}} Herzen, {{Coin}} Münzen, {{Bomb}} Bomben und {{Key}} Schlüssel"}, -- VIII - Justice
	--TODO    [11] = {" a ", " 2 ", "Slot Machine", "{{CR}}Slot Machines", "Fortune Machine", "{{CR}}Fortune Machines"}, -- X - Wheel of Fortune
	[12] = {1, 2, 0.3, 0.6, 0.3, 0.6, 5.25, 10.5}, -- XI - Strength
	[14] = {40, 80}, -- XIII - Death
	--TODO    [15] = {" a ", " 2 ", " Machine", " {{CR}}Machines", "Devil Beggar", "{{CR}}Devil Beggars"}, -- XIV - Temperance (+ Greed version)
	[17] = {6, 12}, -- XVI - The Tower
	[20] = {100, 200}, -- XIX - The Sun
	--TODO    [21] = {" a ", " 2 ", "Beggar ", "{{CR}}Beggars ", "Devil Beggar", "{{CR}}Devil Beggars"}, -- XX - Judgement
	--TODO    [23] = {"Verdoppelt", "Vervierfacht"}, -- 2 of Clubs
	--TODO    [24] = {"Verdoppelt", "Vervierfacht"}, -- 2 of Diamonds
	--TODO    [25] = {"Verdoppelt", "Vervierfacht"}, -- 2 of Spades
	--TODO    [26] = {"Verdoppelt", "Vervierfacht"}, -- 2 of Hearts
	--TODO    [33] = {"Verdoppelt", "Vervierfacht"}, -- Jera
	[35] = {1, 2}, -- Dagaz
	[37] = "Würfelt zwei mal neu", -- Perthro
	[38] = {3, 6, 3, 6}, -- Berkano
	[39] = {30, 60}, -- Algiz
	[40] = "Aktiviert 2 Runeneffecte und versucht sich 2-mal zu verdoppeln", -- Blank Rune
	[41] = {40, 80}, -- Black Rune
	[46] = {10, 20}, -- Suicide King
	[48] = "Aktiviert es zweimal", -- ? Card
	[53] = {3, 6}, -- Ancient Recall
}

---------- Pills ----------

EID.descriptions[languageCode].unidentifiedPill = "Unidentifizierte Pille"

EID.descriptions[languageCode].pills={
	-- Not yet Translated!
	-- Copy & Paste entries from English and continue translating from that
}

---------- Character Info ----------
-- These descriptions are shown in the Item Reminder
-- The character names here are also used in getPlayerName to provide localized character names
-- The numbers are provided to make this a quick reference for Player IDs
EID.descriptions[languageCode].CharacterInfo = {
	[0] = {"Isaac", ""},
	[1] = {"Magdalene", ""},
	[2] = {"Cain", ""},
	[3] = {"Judas", ""},
	[4] = {"???", "Kann keine roten Herzen haben#{{SoulHeart}} Gesundheitssteigerungen gewähren Seelenherzen"},
	[5] = {"Eve", ""},
	[6] = {"Samson", ""},
	[7] = {"Azazel", "Flug#{{Collectible118}} Schwefel mit kurzer Reichweite statt Tränen"},
	[8] = {"Lazarus", "Wenn du stirbst, erwache als auferstandener Lazarus mit 1 Red Heart-Behälter"},
	[9] = {"Eden", "Beginne bei jedem Lauf mit zufälligen Statistiken und Gegenständen"},
	[10] = {"The Lost", "Flug#Spektrale Tränen#{{Warning}} Keine Gesundheit#{{DevilRoom}} Ein Teufelsdeal pro Raum kann kostenlos angenommen werden"},
	[11] = {"Lazarus Risen", "Erhöhte Statistiken und x1,2 Schadensmultiplikator"},
	[12] = {"Dunkler Judas", "{{Damage}} x2 Schadensmultiplikator#{{Player3}} Zählt als Judas für Abschlussmarken"},
	[13] = {"Lilith", "Kann keine Tränen schießen#{{Collectible360}} Ihr Incubus schießt für sie"},
	[14] = {"Keeper", "{{CoinHeart}} Heile durch Aufheben von Münzen#Maximal 2 Münzherzen#Aufgehobene Herzen werden in blaue Fliegen verwandelt"},
	[15] = {"Apollyon", ""},
	[16] = {"Der Vergessene", "Du hast einen Nahkampfangriff, der aufgeladen und geworfen werden kann#{{BoneHeart}} Kann bis zu 6 Knochenherzen haben#{{Player17}} Drücke {{ButtonRT}}, um zur Seele zu wechseln#{{SoulHeart}} Die Seele kann bis zu 6 Seelen-/Schwarzherzen haben und hat Flug- und Spektraltränen#Die Seele ist an einen kleinen Radius um den Vergessenen gekettet"},
	[17] = {"Die Vergessene Seele", "Du hast einen Nahkampfangriff, der aufgeladen und geworfen werden kann#{{BoneHeart}} Kann bis zu 6 Knochenherzen haben#{{Player17}} Drücke {{ButtonRT}}, um zu The Seele#{{SoulHeart}} Die Seele kann bis zu 6 Seelen-/Schwarzherzen haben und verfügt über Flug- und geisterhafte Tränen#Die Seele ist an einen kleinen Radius um den Vergessenen gekettet"},
}

---------- Sacrifice Room ----------

EID.descriptions[languageCode].sacrificeHeader = "[Nächste Opferungsbelohung]"

EID.descriptions[languageCode].sacrifice = {
	{"1", "", "{{Coin}} 50 % Chance für 1 Münze#{{Bomb}} 100 % Chance für 1 Bombe, wenn auf B1 und der Boss in weniger als 1 Minute getötet wurde"},
	{"2", "", "{{Coin}} 50 % Chance für 1 Münze#{{Bomb}} 100 % Chance für 1 Bombe, wenn auf B1 und der Boss in weniger als 1 Minute getötet wurde"},
	{"3", "", "{{AngelChance}} 67 % Chance für erhöhte Engelsraum-Chance"},
	{"4", "", "{{Chest}} 50 % Chance für 1 zufällige Truhe"},
	{"5", "", "{{Coin}} 33 % Chance für 3 Münzen#{{AngelChance}} 67 % Chance für erhöhte Engelsraum-Chance"},
	{"6", "", "{{AngelRoom}} 33 % Chance für einen Teleport zum Engelsraum#{{DevilRoom}} Teleportiert zum Teufel Raum stattdessen, wenn seine Tür auf der aktuellen Etage gespawnt wurde#{{Chest}} 67 % Chance für zufällige Truhe"},
	{"7", "", "{{AngelRoom}} 33 % Chance für 1 zufälligen Engelsraum-Gegenstand#{{SoulHeart}} 67 % Chance für 1 Seelenherz"},
	{"8", "", "100 % Chance für 7 Trollbomben"},
	{"9", "", "100 % Chance, \"Uriel\" zu spawnen"},
	{"10", "", "{{SoulHeart}} 50 % Chance für 7 Seelenherzen#{{Coin}} 50 % Chance für 30 Münzen"},
	{"11", "", "100 % Chance, \"Gabriel\" zu spawnen"},
	{"12", "", "50 % Chance, in den \"Dunkelraum\" zu teleportieren"},
}

---------- Dice Room ----------

EID.descriptions[languageCode].diceHeader = "[Würfelraum Effekte]"

EID.descriptions[languageCode].dice = {
	{"1", "", "Verwandelt alle deine Gegenstände in zufällige Gegenstände aus dem Raum Itempool, in dem sie erworben wurden"},
	{"2", "", "Verwandelt alle Gegenstände im Raum in zufällige Gegenstände"},
	{"3", "", "Verwandelt alle Podest-Gegenstände und Schmuckstücke auf der gesamten Etage in zufällige Gegenstände#Wirkt sich nicht auf {{AngelDevilChance}} Teufels- und Engelsräume oder die {{LadderRoom}} Kriechgänge aus"},
	{"4", "", "Verwandelt alle Podest-Gegenstände auf der Etage in zufällige Gegenstände#Wirkt sich nicht auf {{AngelDevilChance}} Teufels- und Engelsräume oder die {{LadderRoom}} Kriechgänge aus"},
	{"5", "", "Startet und generiert die aktuelle Etage neu"},
	{"6", "", "Verwandelt alle deine Gegenstände in zufällige Gegenstände#Verwandelt alle Gegenstände, Schmuckstücke und Podest-Gegenstände auf der Etage in zufällige Gegenstände"},
}

---------- Transformations ----------

EID.descriptions[languageCode].transformations={
	"",					-- 0 = none
	"Guppy",			-- 1
	"Pilzkopf",			-- 2
	"Beelzebub",		-- 3
	"Verbunden",		-- 4
	"Spinner",			-- 5
	"Ja Mutter?",		-- 6
	"Oh Mist",			-- 7
	"Bob",				-- 8
	"Leviathan",		-- 9
	"Seraphim",			-- 10
	"Super Penner",		-- 11
	"Bücherworm",		-- 12
	"Spinnen-Baby",		-- 13
	"Erwachsener",		-- 14
	"Stampfer"			-- 15
}

---------- MISC ----------
-- a function that will get applied onto specific descriptions (glitched items, Abyss locusts,...) to pluralize them
-- Each language can do their own algorithm to modify the given text to their needs
EID.descriptions[languageCode].PluralizeFunction = function(text, amount)
	text = EID:ReplaceVariableStr(text, "singular_r", amount > 1 and "" or "r") -- add "r" to word if singular
	text = EID:ReplaceVariableStr(text, "plural_n", amount > 1 and "e" or "") -- add "n" to word
	text = EID:ReplaceVariableStr(text, "plural_en", amount > 1 and "en" or "") -- add "en" to word
	text = EID:ReplaceVariableStr(text, "plural_s", amount > 1 and "s" or "") -- add "s" to word
	return text
end

EID.descriptions[languageCode].VoidText = "Wenn absorbiert, erhalte:"
-- {1} will become the number text (like "{1} Tränen" -> "+0.5 Tränen")
EID.descriptions[languageCode].VoidNames = {"{1} Tempo", "{1} Tränen", "{1} Schaden", "{1} Reichweite", "{1} Schusstempo", "{1} Glück"}

EID.descriptions[languageCode].PurityBoosts = {[0] = "↑ {{Damage}} +4 Schaden", "↑ {{Tears}} -4 Schieß-Verzögerung", "↑ {{Speed}} +0.5 Geschwindigkeit", "↑ {{Range}} +7.5 Reichweite#↑ +1 Tränenhöhe"}

EID.descriptions[languageCode].CrookedPennyHeads = "Kopf"
EID.descriptions[languageCode].CrookedPennyTails = "Zahl"

EID.descriptions[languageCode].LuckModifier = "{1}% Wahrscheinlichkeit mit {2} Glück"

EID.descriptions[languageCode].CollectionPageInfo = "Dieses Item muss für die Sammelseite eingesammelt werden!"

EID.descriptions[languageCode].BlackFeatherInformation = "Aktuell {{ColorLime}}{1}{{CR}} Items (+{2} Schaden)"

EID.descriptions[languageCode].SingleUseInfo = "{{Warning}} Einmalgebrauch {{Warning}}"

EID.descriptions[languageCode].MCM = {
	DemoObjectName = "Demo Objektname",
	DemoObjectTransformation = "Demo Transformation",
	DemoObjectText = "Dieser Text ist auf Deutsch#Eine sehr coole und lange Beschreibung, um Zeilenumbrüche zu simulieren, die durch die Breite des EID-Textfelds verursacht werden!#{{Collectible4}} Das ist auch eine coole Zeile#{{Heart}} Diese Zeile liebt dich#{{AngelDevilChance}} Diese Zeile kann dein Engel oder dein Teufel sein#\1 {{Damage}} +1 mehr Schaden (vielleicht)",
}

-- the ItemReminder description will predict the abilities of items with a header like "Item Name Result"
EID.descriptions[languageCode].ItemReminder = {
	ResultHeader = "{1} Ergebnis",
	InventoryEmpty = "(Spieler hat keine Gegenstände)",
	CategoryNames = {
		Overview = "Inventarübersicht",
		Wisps = "Lemegeton Irrlichter",
		Special = "Spezial",
		Actives = "Aktive Gegenstände in Besitz",
		Pockets = "Taschengegenstände in Besitz",
		Trinkets = "Trinkets in Besitz",
		Passives = "Passive Gegenstände in Besitz",
		Character = "Charakterinfo",
	}
}

-- https://wofsauge.github.io/IsaacDocs/rep/enums/RoomType.html
-- Includes Repentance room types for localization convenience
EID.descriptions[languageCode].RoomTypeNames = { "Normaler Raum", "Laden", "I AM ERROR Raum", "Schatzraum", "Bossraum", "Minibossraum", "Geheimraum", "Supergeheimraum", "Spielhalle", "Fluchraum", "Herausforderungsraum", "Bibliothek", "Opferraum", "Teufelsraum", "Engelsraum", "Kriechkeller", "Boss-Ansturm-Raum", "Isaacs Raum", "Kahler Raum", "Truhenraum", "Würfelraum", "Schwarzmarkt", "Ausgangsraum", "Planetarium", "Teleporter-Eingang", "Teleporter-Ausgang", "Alternativpfad-Falltür", "Blauer-Schlüssel-Raum", "Ultrageheimraum",
-- Not technically room types but still potentially useful to have localized
[666] = "Teufels-/Engelsraum", [1024] = "Roter Raum", [1025] = "Besonderer Roter Raum" }

-- currently used for D1
EID.descriptions[languageCode].PickupNames = {
	["5.0"] = "Keine",

	["5.10"] = "{{Heart}} Herz",

	["5.10.1"] = "{{Heart}} Herz", ["5.10.2"] = "{{HalfHeart}} Halbes Herz", ["5.10.3"] = "{{SoulHeart}} Seelenherz", ["5.10.4"] = "{{EternalHeart}} Ewiges Herz", ["5.10.5"] = "{{Heart}} Doppeltes Herz", ["5.10.6"] = "{{BlackHeart}} Schwarzes Herz", ["5.10.7"] = "{{GoldHeart}} Goldenes Herz", ["5.10.8"] = "{{HalfSoulHeart}} Halbes Seelenherz", ["5.10.9"] = "{{Heart}} Verängstigtes Herz", ["5.10.10"] = "{{BlendedHeart}} Gemischtes Herz", ["5.10.11"] = "{{EmptyBoneHeart}} Knochenherz", ["5.10.12"] = "{{RottenHeart}} Faules Herz",

	["5.20"] = "{{Coin}} Münze",
	["5.20.1"] = "{{Crafting8}} Münze", ["5.20.2"] = "{{Crafting9}} Nickel", ["5.20.3"] = "{{Crafting10}} Zehncentstück", ["5.20.4"] = "{{Crafting8}} Doppelpenny", ["5.20.5"] = "{{Crafting11}} Glückspenny", ["5.20.6"] = "{{Crafting9}} Klebriger Nickel", ["5.20.7"] = "{{Crafting26}} Gold Penny",
	
	["5.30"] = "{{Key}} Schlüssel",

	["5.30.1"] = "{{Crafting12}} Schlüssel", ["5.30.2"] = "{{Crafting13}} Goldener Schlüssel", ["5.30.3"] = "{{Crafting12}} Schlüsselring", ["5.30.4"] = "{{Crafting14}} Aufgeladener Schlüssel",

	["5.40"] = "{{Bomb}} Bombe",

	["5.40.1"] = "{{Crafting15}} Bombe", ["5.40.2"] = "{{Crafting15}} Doppelbombe", ["5.40.3"] = "{{Crafting15}} Trollbombe", ["5.40.4"] = "{{Crafting16}} Goldene Bombe", ["5.40.5"] = "{{Crafting15}} Mega-Trollbombe", ["5.40.7"] = "{{Crafting17}} Gigabombe",

	["5.42"] = "{{Crafting29}} Kotklumpen", ["5.42.1"] = "{{Crafting29}} Großer Kotklumpen",

	["5.90"] = "{{Battery}} Batterie",
	["5.90.0"] = "{{Crafting19}} Kleine Batterie", --AB+ hatte keine Untertypen für Batterien
	["5.90.1"] = "{{Crafting19}} Kleine Batterie", ["5.90.2"] = "{{Crafting18}} Mikrobatterie", ["5.90.3"] = "{{Crafting20}} Megabatterie", ["5.90.4"] = "{{Crafting28}} Goldene Batterie",

	["5.50"] = "{{Chest}} Truhe", ["5.51"] = "{{BombChest}} Bombentruhe", ["5.52"] = "{{SpikedChest}} Stacheltruhe", ["5.53"] = "{{EternalChest}} Ewige Truhe", ["5.54"] = "{{MimicChest}} Mimic-Truhe", ["5.55"] = "{{OldChest}} Alte Truhe", ["5.56"] = "{{WoodenChest}} Holztruhe", ["5.57"] = "{{MegaChest}} Megatruhe", ["5.58"] = "{{HauntedChest}} Spuktruhe", ["5.60"] = "{{GoldenChest}} Goldene Truhe", ["5.360"] = "{{RedChest}} Rote Truhe",

	["5.69"] = "{{GrabBag}} Sack", ["5.69.1"] = "{{GrabBag}} Sack", ["5.69.2"] = "{{BlackSack}} Schwarzer Sack",

	["5.70"] = "{{Pill}} Pille",

	["5.300"] = "{{Card}} Karte",

	["5.301"] = "{{Rune}} Rune", -- keine echte ID

	["5.350"] = "{{Trinket}} Schmuckstück",
}

-- Card Buffs caused by Tarot Cloth (separate table from Rep due to how different they are)
-- Strings will be appended to the original description (with line breaks replaced with a Tarot Cloth icon)
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs (the new text will be colored Shiny Purple)
EID.descriptions[languageCode].tarotClothBuffsAB = {
	-- Not yet Translated!
	-- Copy & Paste entries from English and continue translating from that
}

-- Conditional descriptions
-- Strings will be appended to the original description
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs
-- For collectible/player conditionals, lines will automatically have their bulletpoint, and {1} is replaced with their name
EID.descriptions[languageCode].ConditionalDescs = {
	["5.100.7"] = "x1.5 Schadens-Multiplikator wenn \"Das Buch Belial\" oder \"XV - Der Teufel\" Effekt aktiv ist", -- Blood of the Martyr
	["5.100.34"] = "x1.5 Schadens-Multiplikator", -- Book of Belial
	["5.300.16"] = "x1.5 Schadens-Multiplikator", -- XV - The Devil
	-- Not yet Translated!
	-- Copy & Paste entries from English and continue translating from that
}

EID.descriptions[languageCode].BFFSSynergies = {
	-- Not yet Translated!
	-- Copy & Paste entries from English and continue translating from that
}

-- TODO: make these more consistent with other descs, add icons, and is there any traits of the characters missing?
-- Soon, these descriptions, along with their starting item descriptions, will be in a tab in the Item Reminder
-- The character names here are also used in getPlayerName to provide localized character names
-- The numbers are provided to make this a quick reference for Player IDs
EID.descriptions[languageCode].CharacterInfo = {
	-- Not yet Translated!
	-- Copy & Paste entries from English and continue translating from that
}
