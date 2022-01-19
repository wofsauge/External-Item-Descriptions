--------------------------------------
-----  Basic German descriptions  ----
--------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  ! = Warning  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "de"

-- init de table
EID.descriptions[languageCode] = {}
EID.descriptions[languageCode].custom = {} -- table for custom entity descriptions
EID.descriptions[languageCode].languageName = "German (WIP) (AB+)"

-- Fonts to be used with this language pack
EID.descriptions[languageCode].fonts = EID.descriptions["en_us"].fonts

---------- Collectibles ----------
EID.descriptions[languageCode].collectibles={
	{"1", "The Sad Onion", "↑ +0.7 Mehr Tränen"},
	{"2", "The Inner Eye", "Dreifachschuss#↓ Weniger Tränen"},
	{"3", "Spoon Bender", "Gegnerjagende Tränen"},
	{"4", "Cricket's Head", "↑ +0.5 Schaden#↑ +50% Multiplizierter Schaden"},
	{"5", "My Reflection", "Gibt Tränen einen Bumerang Effekt#↑ +1.5 Reichweite#↑ x1.6 Schussgeschwindigkeit#↑ +1 Schusshöhe"},
	{"6", "Number One", "↑ +1.5 Mehr Tränen#↓ -17.62 Reichweite#↑ +0.76 Schusshöhe"},
	{"7", "Blood of the Martyr", "↑ +1.0 Schaden#↑ +50% wenn du Book of Belial besitzt"},
	{"8", "Brother Bobby", "Normaler Tränenschießender Begleiter#Macht 3.5 Schaden pro Träne"},
	{"9", "Skatole", "Alle Feindlichen Fliegen werden Freundlich"},
	{"10", "Halo of Flies", "+2 Spielerumkreisende Fliegen#Blockiert Gegnergeschosse"},
	{"11", "1up!", "↑ +1 Leben#Belebt mit vollen Herzen wieder"},
	{"12", "Magic Mushroom", "↑ +1 Herzcontainer#↑ +0.3 Schaden#↑ +50% Multiplizierter Schaden#↑ +5.25 Reichweite#↑ +0.3 Geschwindigkeit#↑ +0.5 Schusshöhe#Volle Herzen"},
	{"13", "The Virus", "Giftige Berührung#↓ -0.1 Geschwindigkeit#Gegner können Schwarze Herzen beim vergiften fallen lassen"},
	{"14", "Roid Rage", "↑ +0.6 Geschwindigkeit#↑ +5.25 Reichweite#↑ +0.5 Schusshöhe"},
	{"15", "<3", "↑ +1 Herzcontainer#Füllt alle Herzcontainer"},
	{"16", "Raw Liver", "↑ +2 Herzcontainer#Füllt alle Herzcontainer"},
	{"17", "Skeleton Key", "+99 Schlüssel"},
	{"18", "A Dollar", "+99 Münzen"},
	{"19", "Boom!", "+10 Bomben"},
	{"20", "Transcendence", "Du bekommst Körperlos und kannst Fliegen!"},
	{"21", "The Compass", "Enthüllt alle Symbole auf der Karte#Zeigt nicht den Kartenentwurf"},
	{"22", "Lunch", "↑ +1 Herzcontainer"},
	{"23", "Dinner", "↑ +1 Herzcontainer"},
	{"24", "Dessert", "↑ +1 Herzcontainer"},
	{"25", "Breakfast", "↑ +1 Herzcontainer"},
	{"26", "Rotten Meat", "↑ +1 Herzcontainer"},
	{"27", "Wooden Spoon", "↑ +0.3 Geschwindigkeit"},
	{"28", "The Belt", "↑ +0.3 Geschwindigkeit"},
	{"29", "Mom's Underwear", "↑ +5.25 Reichweite#↑ +0.5 Schusshöhe"},
	{"30", "Mom's Heels", "↑ +5.25 Reichweite#↑ +0.5 Schusshöhe"},
	{"31", "Mom's Lipstick", "↑ +5.25 Reichweite#↑ +0.5 Schusshöhe"},
	{"32", "Wire Coat Hanger", "↑ +0.7 Mehr Tränen"},
	{"33", "The Bible", "Flug für den jetzigen Raum#Besitzt die fähigkeit Mom's Foot und Mom's Heart zu töten#! Tötet DICH wenn The Bible bei Satan genutzt wird!"},
	{"34", "The Book of Belial", "↑ +2 Schaden#↑ +12.5% Teufelsdeal chance#↑ +50% Multiplizierter Schaden wenn du Blood of the Martyr besitzt"},
	{"35", "The Necronomicon", "Fügt allem im jetzigen Raum 40 Schaden zu"},
	{"36", "The Poop", "Erzeugt einen Kackhaufen#Kann vor einer Grube platziert und zerstört werden um eine Brücke zu erschaffen"},
	{"37", "Mr. Boom", "Platziert eine Bombe unter den Spieler die 110 Schaden verursacht"},
	{"38", "Tammy's Head", "Feuert 10 Tränen in einem Kreis um Isaac herum"},
	{"39", "Mom's Bra", "Friert alle Gegner im jetzigen Raum für 4 sekunden ein"},
	{"40", "Kamikaze!", "Verursacht eine Explosion bei der Spielerposition"},
	{"41", "Mom's Pad", "Verängstigt alle Gegner im jetzigen Raum für 5 Sekunden"},
	{"42", "Bob's Rotten Head", "Giftige Wurfbombe"},
	{"43", "", "<item existiert nicht>"},
	{"44", "Teleport!", "Teleportiert Isaac in einen zufälligen Raum außer den I AM ERROR Raum"},
	{"45", "Yum Heart", "Heile 1 Herz"},
	{"46", "Lucky Foot", "↑ +1.0 Glück#Bessere Chancen bei Glücksspielen#Erhöhte chance auf Belohnungen beim abschließen eines Raumes"},
	{"47", "Doctor's Remote", "Epic Fetus auf Nachfrage!#Kontrollierbarer Luftangriff!"},
	{"48", "Cupid's Arrow", "Piercende Tränen"},
	{"49", "Shoop da Whoop!", "Brimstone Laser mit sehr hohen Schaden"},
	{"50", "Steven", "↑ +1 Schaden"},
	{"51", "Pentagram", "↑ +1.0 Schaden#↑ +10% Devil Deal chance"},
	{"52", "Dr. Fetus", "Bombentränen!"},
	{"53", "Magneto", "Pick-Ups werden magnetisch angezogen"},
	{"54", "Treasure Map", "Zeigt den Kartenentwurf"},
	{"55", "Mom's Eye", "Chance eine Träne nach hinten zu schießen#Chance ist auf 100% bei 2 Glückpunkten"},
	{"56", "Lemon Mishap", "Kreiert einen Limo-Pfütze#Macht 66 Kontaktschaden pro sekunde"},
	{"57", "Distant Admiration", "Mittelklassig-Spielerumkreisende Fliege#Macht 75 Kontaktschaden pro sekunde"},
	{"58", "Book of Shadows", "Unverwundbarkeit für 10 sekunden"},
	{"59", "", "<item does not exist>"},
	{"60", "The Ladder", "Erlaubt es über schmale Gruben zu laufen"},
	{"61", "", "<item does not exist>"},
	{"62", "Charm of the Vampire", "Heilt ein halbes Herz nach jedem 13 getöteten Gegner"},
	{"63", "The Battery", "Spacebar Items können zweimal aufgeladen werden"},
	{"64", "Steam Sale", "-50% auf Shopitems#Zwei Steam Sale macht alles im Shop kostenlos"},
	{"65", "Anarchist Cookbook", "Erzeugt 6 Troll Bomben in der nähe der mitte des Raumes"},
	{"66", "The Hourglass", "Macht Gegner langsamer für 8 sekunden"},
	{"67", "Sister Maggy", "Normaler Tränenschießender Begleiter#Macht 3.5 Schaden pro Träne"},
	{"68", "Technology", "Tränen werden ausgetauscht mit Laser"},
	{"69", "Chocolate Milk", "Aufladbare Tränen#↑ Bis zu 400% Schaden#↓ Weniger Tränen"},
	{"70", "Growth Hormones", "↑ +1.0 Schaden#↑ +0.4 Geschwindigkeit"},
	{"71", "Mini Mush", "↑ +0.3 Geschwindigkeit#↓ -4.25 Reichweite*#↑ +1.5 Schusshöhe*#(*beides zusammen ergibt mehr Reichweite)#↑ Kleiner"},
	{"72", "Rosary", "+3 Seelenherzen#The Bible ist häufiger zu finden"},
	{"73", "Cube of Meat", "LVL1: Spielerumkreisender Fleischwürfel#LVL2: Spielerumkreisender Schießender Kopf#LVL3: Meat Boy Level 1#LVL4: Meat Boy Level 2"},
	{"74", "A Quarter", "+25 Münzen"},
	{"75", "PHD", "Bessere Pillen# +1 Pille#Heilt 2 Herzen#Mehr Geld von Blutspendemaschinen"},
	{"76", "X-Ray Vision", "Zeigt versteckte Räume"},
	{"77", "My Little Unicorn", "Unverwundbarkeit#Macht 40 Kontaktschaden"},
	{"78", "Book of Revelations", "+1 Seelenherz#Höhere Horsemen (Boss) chance beim nutzen#↑ +17.5% Devil Deal chance"},
	{"79", "The Mark", "↑ +1.0 Schaden#↑ +0.2 Geschwindigkeit#+1 Seelenherz"},
	{"80", "The Pact", "↑ +0.5 Schaden#↑ +0.7 Mehr Tränen#+2 Seelenherzen"},
	{"81", "Dead Cat", "↑ +9 Leben#Belebt mit einem Herzcontainer wieder"},
	{"82", "Lord of the Pit", "Flug#↑ +0.3 Geschwindigkeit"},
	{"83", "The Nail", "+1 Seelenherz#↑ +0.7 Schaden#↓ -0.18 Geschwindigkeit#Macht Kontaktschaden#Kann Steine zerstören"},
	{"84", "We Need To Go Deeper!", "Spawns a trapdoor to skip the floor#10% chance for crawlspace trapdoor"},
	{"85", "Deck of Cards", "Erzeigt 1 Karte"},
	{"86", "Monstro's Tooth", "Rufe Monstro zum zerquetschen von Gegnern"},
	{"87", "Loki's Horns", "Chance in 4 Richtungen zu schießen"},
	{"88", "Little Chubby", "Begleiter, der nach vorn stürmt #Macht 52.5 Kontaktschaden pro sekunde"},
	{"89", "Spider Bite", "Chance Verlangsamungstränen zu schießen"},
	{"90", "The Small Rock", "↑ +1 Schaden#↑ +0.2 Mehr Tränen#↓ -0.2 Geschwindigkeit"},
	{"91", "Spelunker Hat", "Zeigt was hinter Türen ist"},
	{"92", "Super Bandage", "↑ +1 Herzcontainer#+2 Seelenherzen"},
	{"93", "The Gamekid", "Unverwundbarkeit + Kontaktschaden#Regeneriert Herzen beim essen von Gegnern"},
	{"94", "Sack of Pennies", "Lässt in jeden zweiten Raum zufällig münzen fallen"},
	{"95", "Robo-Baby", "Lasertränen#Macht 3.5 Schaden pro Schuss"},
	{"96", "Little C.H.A.D.", "Erzeugt ein halbes Herz in jeden dritten Raum"},
	{"97", "The Book of Sin", "Erzeugt ein zufälliges Pick-Up"},
	{"98", "The Relic", "Erzeugt 1 Seelenherz in jeden vierten Raum"},
	{"99", "Little Gish", "Verlangsamungstränen#Macht 3.5 Schaden pro Schuss"},
	{"100", "Little Steven", "Gegnerjagende Tränen#Macht 3.5 Schaden pro Schuss"},
	{"101", "The Halo", "↑ +1 Herzcontainer#↑ +0.3 Schaden#↑ +0.2 Mehr Tränen#↑ +0.25 Reichweite#↑ +0.3 Geschwindigkeit#↑ +0.5 Schusshöhe"},
	{"102", "Mom's Bottle of Pills", "Lässt 1 Pille fallen"},
	{"103", "The Common Cold", "Chance vergiftungstränen zu schießen"},
	{"104", "The Parasite", "Tränen halbieren sich bei Kontakt#Geteilte Tränen machen halben Schaden"},
	{"105", "The D6", "Ändert zufällig Podestitems im jetzigen Raum"},
	{"106", "Mr. Mega", "↑ x2.25 Bombenschaden#+5 Bomben"},
	{"107", "The Pinking Shears", "Flug#Dein Körper attackiert Gegner mit 82.5 Kontaktschaden pro sekunde"},
	{"108", "The Wafer", "Aller Schaden ist reduziert auf ein halbes Herz"},
	{"109", "Money = Power", "↑ +0.04 Schaden für jede Münze die du besitzt"},
	{"110", "Mom's Contacts", "Chance frierende Tränen zu schießen#↑ +0.25 Reichweite#↑ +0.5 Schusshöhe"},
	{"111", "The Bean", "Vergiftender Furz!"},
	{"112", "Guardian Angel", "Spielerumkreisender Engel#Macht alle Spielerumkreisende Begleiter schneller#Blockiert Gegnerschüsse#Macht 105 Kontaktschaden pro sekunde"},
	{"113", "Demon Baby", "Auto-firing turret#Deals 3 Schaden pro Schuss"},
	{"114", "Mom's Knife", "Kontrollierbarer Messerattacke"},
	{"115", "Ouija Board", "Spektraltränen"},
	{"116", "9 Volt", "-1 Aufladung für aktive Items#Lädt dein aktives Item vollständig auf"},
	{"117", "Dead Bird", "Erzeugt einen Vogel wenn du getroffen wirst#Der Vogel macht 4 Kontaktschaden pro sekunde"},
	{"118", "Brimstone", "Aufladbarer Brimstone Laser mit sehr hohen Schaden"},
	{"119", "Blood Bag", "↑ +1 Herzcontainer#↑ +0.3 Geschwindigkeit#Heilt 5 Herzen"},
	{"120", "Odd Mushroom", "↑ +1.7 Mehr Tränen#↑ +0.3 Geschwindigkeit#↓ -10% Schaden"},
	{"121", "Odd Mushroom", "↑ +1 Leerer Herzcontainer#↑ +0.3 Schaden#↑ +0.25 Reichweite#↓ -0.1 Geschwindigkeit#↑ +0.5 Schusshöhe"},
	{"122", "Whore of Babylon", "!!! Wenn du ein halbes Herz oder weniger hast:#↑ +1.5 Schaden#↑ +0.3 Geschwindigkeit"},
	{"123", "Monster Manual", "Zufälliger Begleiter für den jetzigen Raum"},
	{"124", "Dead Sea Scrolls", "Zufälliger Item-Effekt (Aktives Item)"},
	{"125", "Bobby-Bomb", "Gegnerjagende Bomben#+5 Bomben"},
	{"126", "Razor Blade", "↑ +1.2 Schaden für den jetzigen Raum#↓ Macht dir 1 Herz Schaden"},
	{"127", "Forget Me Now", "{{Warning}} EINMAL NUTZBAR {{Warning}}#Ändert zufällig den ganzen Flur"},
	{"128", "Forever alone", "Spielerumkreisende Fliege#Sehr weit entfernt#Macht 30 Kontaktschaden pro sekunde"},
	{"129", "Bucket of Lard", "↑ +2 Leere Herzcontainer#↓ -0.2 Geschwindigkeit#heilt ein halbes Herz"},
	{"130", "A Pony", "Gibt flug solange es gehalten wird#Setzt deine Geschwindigkeit auf 1.5 wenn du weniger als 1.5 hast#Sprinte in eine Richtung beim benutzen"},
	{"131", "Bomb Bag", "Lässt 1 Bomben Pick-up in paar Räume fallen"},
	{"132", "A Lump of Coal", "Mehr Schaden basierend auf der zurückgelegten Entfernung der Träne"},
	{"133", "Guppy's Paw", "!!! Konvertiert #1 Rotes Herz zu 3 Seelenherzen"},
	{"134", "Guppy's Tail", "Mehr Kisten tauchen auf"},
	{"135", "IV Bag", "Portable Blutspendemaschine#Ein halbes Herz = 1-3 Münzen"},
	{"136", "Best Friend", "Explodierender Köder#Lockt Gegner an"},
	{"137", "Remote Detonator", "Kontrollier wann Bomben Explodieren#+5 Bomben"},
	{"138", "Stigmata", "↑ +1 Herzcontainer#↑ +0.3 Schaden"},
	{"139", "Mom's Purse", "Du kannst nun 2 Schmuckstücke halten"},
	{"140", "Bob's Curse", "Vergiftende Bomben#+5 Bomben"},
	{"141", "Pageant Boy", "Erzeugt 7 zufällige Münzen"},
	{"142", "Scapular", "Lässt 1 Seelenherz fallen wenn du nurnoch ein halbes Herz hast#(Einmal pro Raum!)"},
	{"143", "Speed Ball", "↑ +0.3 Geschwindigkeit#↑ +0.2 Schussgeschwindigkeit"},
	{"144", "Bum Friend", "Konvertiert Münzen zu Pick-ups"},
	{"145", "Guppy's Head", "Erzeugt 2-4 Blaue Fliegen"},
	{"146", "Prayer Card", "+1 Ewiges Herz"},
	{"147", "Notched Axe", "Zerbricht Steine im jetzigen Raum"},
	{"148", "Infestation", "Erzeugt Fliegen wenn du getroffen wirst"},
	{"149", "Ipecac", "Explodierende Tränen"},
	{"150", "Tough Love", "Chance Zähne zu schießen#Zähne machen 3.2x deines Schadens"},
	{"151", "The Mulligan", "1/6 chance eine Fliege zu erzeugen wenn Tränen einen Gegner treffen"},
	{"152", "Technology 2", "Permanente laser attacke!#↓ -35% Schaden"},
	{"153", "Mutant Spider", "Quad Schuss!#↓ Tränen"},
	{"154", "Chemical Peel", "↑ +2 Schaden aus dem linken Auge"},
	{"155", "The Peeper", "Fliegt im Raum herum#Macht 17.1 Kontaktschaden pro sekunde"},
	{"156", "Habit", "+1 Aufladung wenn man getroffen wird"},
	{"157", "Bloody Lust", "↑ Schaden jedes mal wenn du getroffen wirst#Kann bis zu 6 mal pro Flur aktiviert werden#Hält an für den gesamten Flur"},
	{"158", "Crystal Ball", "Enthüllt die ganze Karte#Lässt zufällig eine Karte oder Seelenherz fallen"},
	{"159", "Spirit of the Night", "Flug#Gibt Spektraltränen"},
	{"160", "Crack the Sky", "Erzeugt 5 Lichtstrahlen neben Gegner#Macht deinen Schaden +20"},
	{"161", "Ankh", "Werde beim Tod als ??? (Blue Baby) wiederbelebt"},
	{"162", "Celtic Cross", "Chance für Unverwundbarkeit wenn du getroffen wirst"},
	{"163", "Ghost Baby", "Spektraltränen Begleiter#Macht 3.5 Schaden pro Träne"},
	{"164", "The Candle", "Erzeugt eine Blaue Fliege#Macht Kontaktschaden#Blockiert Gegnergeschosse#Verschwindet nach 2 sekunden"},
	{"165", "Cat-o-nine-tails", "↑ +1 Schaden#↑ +23% Schussgeschwindigkeit"},
	{"166", "D20", "Ändert zufällig alle Pick-ups im Raum"},
	{"167", "Harlequin Baby", "Tränenschießender Begleiter#Schießt Tränen in V-Formation#Macht 4 Schaden pro Träne"},
	{"168", "Epic Fetus", "Ersetzt Tränen mit einem kontrollierbaren Luftangriff"},
	{"169", "Polyphemus", "Mega-Tränen!#↑ Schaden#↓ Weniger Tränen"},
	{"170", "Daddy Longlegs", "Stampft auf Gegner#Macht 40 Schaden pro sekunde"},
	{"171", "Spider Butt", "macht Gegner langsamer für 4 sekunden#10 Schaden an alle Gegner"},
	{"172", "Sacrificial Dagger", "Spielerumkreisendes Messer#Blockiert Gegnergeschosse#Macht 225 Schaden pro sekunde"},
	{"173", "Mitre", "Höhere chance Seelenherzen zu finden"},
	{"174", "Rainbow Baby", "Normaler Tränenschießender Begleiter#Schießt zufällige Tränen#Macht 3.5 Schaden pro sekunde"},
	{"175", "Dad's Key", "Öffnet alle Türen im jetzigen Raum, inklusive Geheimräume"},
	{"176", "Stem Cells", "↑ +1 Herzcontainer#↑ +0.16 Schussgeschwindigkeit"},
	{"177", "Portable Slot", "Portable Münzautomat"},
	{"178", "Holy Water", "Hinterlässt Gegnerschadende pfützen wenn du getroffen wirst#Macht 24 Schaden pro sekunde"},
	{"179", "Fate", "Flug#+1 Ewiges Herz"},
	{"180", "The Black Bean", "Furze wenn du getroffen wirst"},
	{"181", "White Pony", "Ermöglicht Flug beim halten#Setzt deine Geschwindigkeit auf 1.5 wenn du langsamer als 1.5 bist#Heiliger Sturm beim benutzen"},
	{"182", "Sacred Heart", "Gegnerjagende Tränen#↑ +1 Herzcontainer#↑ x2.3 Multiplizierter Schaden#↓ -0.4 Tränen#↓ -25% Schussgeschwindigkeit#↑ +4.125 Reichweite"},
	{"183", "Tooth Picks", "↑ +0.7 Tränen.#↑ +16% Schussgeschwindigkeit"},
	{"184", "Holy Grail", "Flug#↑ +1 Herzcontainer"},
	{"185", "Dead Dove", "Flug#Spektraltränen"},
	{"186", "Blood Rights", "Macht jeden Gegner im Raum 40 Schaden#Macht dir 1 Schaden beim benutzen"},
	{"187", "Guppy's Hairball", "Wachsender Haarkneul#Schwingt um dich herum#Wächst wenn es einen Gegner tötet#Je größer desto stärker"},
	{"188", "Abel", "Spiegelt deine Bewegungen#Schießt in die Richtung des Spielers#Macht 3.5 Schaden pro Schuss"},
	{"189", "SMB Super Fan", "↑ +1 Herzcontainer#↑ +0.3 Schaden#↑ +0.2 Tränen#↑ +0.5 Reichweite#↑ +0.2 Geschwindigkeit#↑ +1.0 Schusshöhe#Füllt alle Herzen"},
	{"190", "Pyro", "+99 Bomben"},
	{"191", "3 Dollar Bill", "Zufälliger Träneneffekt jede 2-3 sekunden"},
	{"192", "Telepathy For Dummies", "Gegnerjagende Tränen im jetzigen Raum"},
	{"193", "MEAT!", "↑ +1 Herzcontainer#↑ +0.3 Schaden"},
	{"194", "Magic 8 Ball", "↑ +0.16 Schussgeschwindigkeit#+1 Karte"},
	{"195", "Mom's Coin Purse", "Gibt 4 Pillen"},
	{"196", "Squeezy", "Erzeugt 2 Seelenherzen#↑ +0.4 Tränen"},
	{"197", "Jesus Juice", "↑ +0.5 Schaden#↑ +0.25 Reichweite.#↑ +0.5 Schusshöhe"},
	{"198", "Box", "Erzeugt 1 pick-up von jeder Sorte"},
	{"199", "Mom's Key", "+2 Schlüssel#Mehr sachen aus Kisten"},
	{"200", "Mom's Eyeshadow", "Chance charmante Tränen zu schießen"},
	{"201", "Iron Bar", "↑ +0.3 Schaden#Chance Erschütternde Tränen zu schießen"},
	{"202", "Midas' Touch", "Gegner verwandeln sich bei berührung in Gold#Macht Kontaktschaden basierend auf Münzanzahl#Goldene Gegner lassen Münzen fallen"},
	{"203", "Humbleing Bundle", "Dupliziert alle pick-ups"},
	{"204", "Fanny Pack", "50% chance ein zufälliges pick-up fallen zu lassen bei Schaden"},
	{"205", "Sharp Plug", "-2 Heartcontainer = Lädt dein Item auf beim drücken der Spacebar#!!! Funktioniert nur wenn das Item keine ladung hat!"},
	{"206", "Guillotine", "↑ +1 Schaden#↑ Tränen#Dein Kopf umkreist nun deinen Körper#Schüsse kommen noch von deinem Kopf#Der Kopf macht 105 Kontaktschaden"},
	{"207", "Ball of Bandages", "LVL1: Spielerumkreisender Pflasterball#LVL2: Schießender Pflasterball#LVL3: Bandage Girl#LVL4: Bandage Girl LVL2"},
	{"208", "Champion Belt", "↑ +1 Schaden#!!! Mehr Championgegner tauchen auf"},
	{"209", "Butt Bombs", "↑ +5 Bomben#Explosionen erschüttern Gegner und machen Schaden im ganzen Raum"},
	{"210", "Gnawed Leaf", "Unverwundbar bei inaktivität"},
	{"211", "Spiderbaby", "Erzeugt 1-2 Spinnen bei Schaden"},
	{"212", "Guppy's Collar", "↑ 50% wiederbelebungschance"},
	{"213", "Lost Contact", "Schützende Träne#Tränen blockieren Gegnergeschosse#↓ -16% Schussgeschwindigkeit"},
	{"214", "Anemic", "↑ +5 Reichweite#Hinterlässt Gegnerschadende pfützen wenn du getroffen wirst"},
	{"215", "Goat Head", "↑ 100% chance für Teufel-{{DevilRoom}} / Engel-{{AngelRoom}} Räume"},
	{"216", "Ceremonial Robes", "↑ +1 Schaden#+3 Schwarze Herzen"},
	{"217", "Mom's Wig", "Zufällige chance blaue Spinnen zu erzeugen beim schießen#Heilt 1 rotes Herz"},
	{"218", "Placenta", "↑ +1 Herzcontainer#Regeneriert langsam dein Leben"},
	{"219", "Old Bandage", "↑ +1 Leerer Herzcontainer#Zufällige chance rote Herzen bei Schaden fallen zu lassen"},
	{"220", "Sad Bombs", "Tränenexplosion!#+5 Bomben"},
	{"221", "Rubber Cement", "Springende Tränen"},
	{"222", "Anti-Gravity", "↑ +2 Tränen#Anti-Gravitationstränen"},
	{"223", "Pyromaniac", "Explosionen heilen dich#+5 Bomben"},
	{"224", "Cricket's Body", "↑ +1 Tränen#↓ -10 Reichweite#Tränen teilen sich bei Kollision in 4#Geteilte Tränen machen halben Schaden"},
	{"225", "Gimpy", "Chance Seelen/Schwarze Herzen fallen zu lassen bei Schaden#Chance ein Halbes Herz fallen zu lassen beim töten eines Gegners"},
	{"226", "Black Lotus", "↑ +1 Herzcontainer#+1 Seelenherz#+1 Schwarzes Herz"},
	{"227", "Piggy Bank", "+3 Münzen#Lässt 1-2 Münzen fallen bei Schaden#Lässt 0-1 Münzen fallen beim Charakter 'Keeper'"},
	{"228", "Mom's Perfume", "Chance Furchttränen zu schießen#↑ +1 Tränen"},
	{"229", "Monstro's Lung", "Tränen werden aufgeladen und in Shotgun-Style geschossen"},
	{"230", "Abaddon", "↑ +1.5 Schaden#↑ +0.2 Geschwindigkeit#Furchttränen#↓ Entfernt alle Herzcontainer#+6 Schwarze Herzen"},
	{"231", "Ball of Tar", "Chance Verlangsamungstränen zu schießen#Hinterlässt Verlangsamungspfützen"},
	{"232", "Stop Watch", "Permanenter Verlangsamungseffekt#(Aktiviert bei Spielerschaden)#↑ +0.3 Geschwindigkeit"},
	{"233", "Tiny Planet", "Deine Tränen umkreisen Isaac#↑ +7.0 Tränenhöhe#Spektraltränen"},
	{"234", "Infestation 2", "Erzeugt Spinnen beim töten von Gegnern"},
	{"235", "", "<item does not exist>"},
	{"236", "E. Coli", "Bei berührung verwandeln Gegner sich in Kackhaufen"},
	{"237", "Death's Touch", "Sensentränen!#↑ +1.5 Schaden#↓ -0.3 Tränen#Piercende Tränen"},
	{"238", "Key Piece 1", "! Schlüsselstück für Mega Satan !#Mehr Engelräume{{AngelRoom}} tauchen auf"},
	{"239", "Key Piece 2", "! Schlüsselstück für Mega Satan !#Mehr Engelräume{{AngelRoom}} tauchen auf"},
	{"240", "Experimental Treatment", "Alle Stats bekommen einen zufälligen Wert ↑/↓ "},
	{"241", "Contract from Below", "Doppelt alle fallenden Pick-ups#Funktioniert nicht im Greed Modus"},
	{"242", "Infamy", "50% chance Tränen zu blockieren"},
	{"243", "Trinity Shield", "Blockiert Gegnergeschosse"},
	{"244", "Tech.5", "Feuert zufällige Lasertränen"},
	{"245", "20/20", "Verdoppelt alle deine Schüsse"},
	{"246", "Blue Map", "Zeigt Geheimräume"},
	{"247", "BFFS!", "Deine Begleiter machen doppelten Schaden"},
	{"248", "Hive Mind", "Blaue Fliegen/Spinnen machen doppelten Schaden"},
	{"249", "There's Options", "Es tauchen 2 Boss-Items auf anstatt nur 1#! Nur EIN ITEM kann genommen werden !"},
	{"250", "BOGO Bombs", "Doppelt alle fallenden Bomben-Pick-ups"},
	{"251", "Starter Deck", "Du kannst zwei Karten halten#Konvertiert alle Pillen zu Karten#Spawnt eine Karte"},
	{"252", "Little Baggy", "Du kannst zwei Pillen halten#Konvertiert alle Karten zu Pillen#Spawnt eine Pille"},
	{"253", "Magic Scab", "↑ +1 Glück#↑ +1 Herzcontainer"},
	{"254", "Blood Clot", "↑ +1 Schaden#↑ +5 Reichweite#! Zählt nur für das linke Auge !"},
	{"255", "Screw", "↑ +0.5 Tränen#↑ +0.2 Schussgeschwindigkeit"},
	{"256", "Hot Bombs", "Brennende Bomben#+5 Bomben"},
	{"257", "Fire Mind", "Chance für explodierende Tränen#Tränen bringen Gegner zum brennen"},
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
