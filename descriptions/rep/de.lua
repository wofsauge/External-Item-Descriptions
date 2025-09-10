---------------------------------------
-----  Basic German descriptions  -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "de"

---------- Collectibles ----------

local repCollectibles={
	[2] = {"2", "Das Innere Auge", "↓ {{Tears}} x0.51 Feuerratenmultiplikator#Isaac schießt auf einmal 3 Tränen"}, -- The Inner Eye
	[5] = {"5", "Meine Reflexion", "↑ {{Damage}} +1.5 Schaden#↑ {{Range}} +1.5 Reichweite#↑ {{Range}} x2 Reichweitenmultiplikator#↑ {{Shotspeed}} x1.6 Schussgeschwindigkeitsmultiplikator#↓ {{Luck}} -1 Glück#Tränen erhalten einen Bumerangeffekt"}, -- My Reflection
	[6] = {"6", "Nummer Eins", "↑ {{Tears}} +1.5 Tränen#↓ {{Range}} -1.5 Reichweite#↓ {{Range}} x0.8 Reichweitenmultiplikator"}, -- Number One
	[12] = {"12", "Magischer Pilz", "↑ {{Heart}} +1 Gesundheit#↑ {{Speed}} +0.3 Geschwindigkeit#↑ {{Damage}} +0.3 Schaden#↑ {{Damage}} x1.5 Schadensmultiplikator#↑ {{Range}} +2.5 Reichweite#Größe erhöht#{{Heart}} Vollständige Gesundheit"}, -- Magic Mushroom
	[13] = {"13", "Das Virus", "↑ {{Speed}} +0.2 Geschwindigkeit#{{Poison}} Berühren von Feinden vergiftet sie#Isaac verursacht 48 Kontaktschaden pro Sekunde"}, -- The Virus
	[14] = {"14", "Wut-Raserei", "↑ {{Speed}} +0.3 Geschwindigkeit#↑ {{Range}} +2.5 Reichweite"}, -- Roid Rage
	[18] = {"18", "Ein Dollar", "{{Coin}} +100 Münzen"}, -- A Dollar
	[22] = {"22", "Mittagessen", "↑ {{Heart}} +1 Gesundheit#{{Heart}} Heilt 1 Herz"}, -- Lunch
	[23] = {"23", "Abendessen", "↑ {{Heart}} +1 Gesundheit#{{Heart}} Heilt 1 Herz"}, -- Dinner
	[24] = {"24", "Nachtisch", "↑ {{Heart}} +1 Gesundheit#{{Heart}} Heilt 1 Herz"}, -- Dessert
	[25] = {"25", "Frühstück", "↑ {{Heart}} +1 Gesundheit#{{Heart}} Heilt 1 Herz"}, -- Breakfast
	[26] = {"26", "Verdorbenes Fleisch", "↑ {{Heart}} +1 Gesundheit#{{Heart}} Heilt 1 Herz"}, -- Rotten Meat
	[29] = {"29", "Mamas Unterwäsche", "↑ {{Range}} +2.5 Reichweite#Spawnt 3-6 blaue Fliegen"}, -- Mom's Underwear
	[30] = {"30", "Mamas Absätze", "↑ {{Range}} +2.5 Reichweite#Isaac verursacht 24 Kontaktschaden pro Sekunde"}, -- Mom's Heels
	[31] = {"31", "Mamas Lippenstift", "↑ {{Range}} +3.75 Reichweite#{{UnknownHeart}} Spawnt 1 zufälliges Herz"}, -- Mom's Lipstick
	[37] = {"37", "Herr Boom", "Lässt eine große Bombe unter Isaac fallen, die 185 Schaden verursacht"}, -- Mr. Boom
	[40] = {"40", "Kamikaze!", "Verursacht eine große Explosion an Isaacs Position#Verursacht 185 Schaden"}, -- Kamikaze!
	[41] = {"41", "Mamas Binde", "{{Fear}} Ängstigt alle Feinde im Raum für 5 Sekunden#Spawnt eine blaue Fliege"}, -- Mom's Pad
	[42] = {"42", "Bobs Fauliger Kopf", "Das Benutzen des Gegenstands und das Abschießen in eine Richtung wirft den Kopf#{{Poison}} Der Kopf explodiert, wo er landet, und erzeugt eine Giftwolke#Verursacht Isaacs Schaden + 185"}, -- Bob's Rotten Head
	[46] = {"46", "Glücklicher Fuß", "↑ {{Luck}} +1 Glück#Bessere Gewinnchance beim Glücksspiel#Erhöht die Wahrscheinlichkeit von Gegenständen beim Raumabschluss#Verwandelt schlechte Pillen in gute um"}, -- Lucky Foot
	[49] = {"49", "Shoop da Whoop!", "Der nächste Schuss wird mit einem Strahl ersetzt#Er verursacht 24x Isaacs Schaden über 0.83 Sekunden"}, -- Shoop da Whoop!
	[52] = {"52", "Doktor Fetus", "↓ {{Tears}} x0.4 Feuerratenmultiplikator#{{Bomb}} Isaac schießt Bomben anstelle von Tränen#{{Damage}} Diese Bomben verursachen 10x Isaacs Tränenschaden#Wenn das zu mehr als 60 Schaden führt, verursachen sie stattdessen 5x Schaden +30"}, -- Dr. Fetus
	[53] = {"53", "Magneto", "Gegenstände werden von Isaac angezogen#Öffnet Truhen aus 2 Kacheln Entfernung, ignoriert den Schaden von Dornenkisten"}, -- Magneto
	[55] = {"55", "Mamas Auge", "50% Chance, eine zusätzliche Träne nach hinten zu schießen#{{Luck}} Bei 5 Glück 100%ige Chance"}, -- Mom's Eye
	[59] = {"59", "Das Buch von Belial", "{{AngelDevilChance}} +12.5% Teufels/Engelsraumchance bei Besitz#{{Timer}} Erhalte für den Raum:#↑ {{Damage}} +2 Schaden"}, -- The Book of Belial (Judas' Birthright)
	[62] = {"62", "Der Vampirzauber", "↑ {{Damage}} +0.3 Schaden#{{HalfHeart}} Töten von 13 Feinden heilt ein halbes Herz"}, -- Charm of the Vampire
	[64] = {"64", "Sonderangebot", "{{Shop}} Waren kosten 50% weniger#Mehrfaches Erhalten dieses Gegenstands verringert den Preis weiter"}, -- Steam Sale
	[67] = {"67", "Schwester Maggy", "Schießt normale Tränen#Verursacht 6 Schaden pro Träne"}, -- Sister Maggy
	[69] = {"69", "Schokoladenmilch", "{{Chargeable}} Aufladbare Tränen#{{Damage}} Der Schaden skaliert mit der Ladezeit, bis zu 4x"}, -- Chocolate Milk
	[70] = {"70", "Wachstumshormone", "↑ {{Speed}} +0.2 Geschwindigkeit#↑ {{Damage}} +1 Schaden"}, -- Growth Hormones
	[71] = {"71", "Mini Mush", "↑ {{Speed}} +0.3 Geschwindigkeit#↑ {{Range}} +2.5 Reichweite#↑ Größe verkleinert"}, -- Mini Mush
	[72] = {"72", "Rosenkranz", "↑ {{Tears}} +0.5 Tränen#{{SoulHeart}} +3 Seelenherzen#{{Collectible33}} Die Bibel wird allen Gegenstandspools hinzugefügt"}, -- Rosary
	[78] = {"78", "Buch der Offenbarung", "{{SoulHeart}} +1 Seelenherz#Das Benutzen des Gegenstands ersetzt den Boss des Stocks durch einen Reiter#{{AngelDevilChance}} +17.5% Teufels- oder Engelsraumchance bei Besitz"}, -- Book of Revelations
	[79] = {"79", "Das Zeichen", "↑ {{Speed}} +0.2 Geschwindigkeit#↑ {{Damage}} +1 Schaden#{{BlackHeart}} +1 Schwarzes Herz"}, -- The Mark
	[80] = {"80", "Der Pakt", "↑ {{Tears}} +0.7 Tränen#↑ {{Damage}} +0.5 Schaden#{{BlackHeart}} +2 Schwarze Herzen"}, -- The Pact
	[83] = {"83", "Der Nagel", "{{HalfBlackHeart}} + Halbes Schwarzes Herz#{{Timer}} Erhalte für den Raum:#↑ {{Damage}} +2 Schaden#↓ {{Speed}} -0.18 Geschwindigkeit#Isaac verursacht 40 Kontaktschaden pro Sekunde#Ermöglicht es Isaac, Felsen zu zerstören, indem er in sie läuft"}, -- The Nail
	[84] = {"84", "Wir müssen tiefer gehen!", "Öffnet eine Falltür zum nächsten Stock#{{LadderRoom}} Öffnet einen Durchgang, wenn er auf einem dekorativen Bodenkachel (Gras, kleine Steine, Papiere, Edelsteine usw.) verwendet wird"}, -- We Need To Go Deeper!
	[87] = {"87", "Lokis Hörner", "25% Chance, in 4 Richtungen zu schießen#{{Luck}} Bei 15 Glück 100%ige Chance"}, -- Loki's Horns
	[91] = {"91", "Spelunker-Hut", "Räume auf der Karte werden aus größerer Entfernung angezeigt#{{SecretRoom}} Kann auch geheime und supergeheime Räume aufdecken#Verhindert Schaden durch fallende Projektile"}, -- Spelunker Hat
	[98] = {"98", "Die Reliquie", "{{SoulHeart}} Spawnt alle 7-8 Räume 1 Seelenherz"}, -- The Relic
	[101] = {"101", "Der Heiligenschein", "↑ {{Heart}} +1 Gesundheit#↑ {{Speed}} +0.3 Geschwindigkeit#↑ {{Tears}} +0.2 Tränen#↑ {{Damage}} +0.3 Schaden#↑ {{Range}} +1.5 Reichweite#{{Heart}} Heilt 1 Herz"}, -- The Halo
	[106] = {"106", "Herr Mega", "↑ x1.85 Bombenschaden#{{Bomb}} +5 Bomben"}, -- Mr. Mega
	[110] = {"110", "Mamas Kontakte", "↑ {{Range}} +1.5 Reichweite#20% Chance, versteinerte Tränen zu schießen#{{Luck}} Bei 20 Glück 50%ige Chance"}, -- Mom's Contacts
	[114] = {"114", "Mamas Messer", "Isaacs Tränen werden durch ein werfbares Messer ersetzt#{{Damage}} Das Messer verursacht 2x Isaacs Schaden beim Halten und begrenzt sich bei 1/3 Ladung auf 6x Schaden#Weitere Aufladung erhöht nur die Wurfweite#Schaden reduziert sich auf 2x beim Zurückkehren zu Isaac"}, -- Mom's Knife
	[115] = {"115", "Ouija-Brett", "↑ {{Tears}} +0.5 Tränen#Spektrale Tränen"}, -- Ouija Board
	[118] = {"118", "Schwefel", "↓ {{Tears}} x0.33 Feuerratenmultiplikator#{{Chargeable}} Isaacs Tränen werden durch einen aufladbaren Blutstrahl ersetzt#{{Damage}} Er verursacht 9x Isaacs Schaden über 0.63 Sekunden"}, -- Brimstone
	[121] = {"121", "Seltsamer Pilz (Groß)", "↑ {{Heart}} +1 Gesundheit#↑ {{Damage}} +1 Schaden#↑ {{Range}} +1.5 Reichweite#↓ {{Speed}} -0.2 Geschwindigkeit"}, -- Odd Mushroom (Large)
	[123] = {"123", "Monsterhandbuch", "{{Timer}} Spawnt für den Raum ein zufälliges Begleittier"}, -- Monster Manual
	[126] = {"126", "Rasierklinge", "↑ {{Damage}} +1.2 Schaden für den Raum#{{Warning}} Verursacht 1 Herz Schaden an Isaac#Nach dem ersten Gebrauch im Raum nur noch ein halbes Herz#{{Heart}} Entfernt zuerst Rote Herzen"}, -- Razor Blade
	[129] = {"129", "Eimer mit Talg", "↑ {{Heart}} +2 Gesundheit#↓ {{Speed}} -0.2 Geschwindigkeit"}, -- Bucket of Lard
	[138] = {"138", "Stigmata", "↑ {{Heart}} +1 Gesundheit#↑ {{Damage}} +0.3 Schaden#{{Heart}} Heilt 1 Herz"}, -- Stigmata
	[139] = {"139", "Mamas Geldbeutel", "{{Trinket}} Spawnt 1 zufälliges Trinket#{{Trinket}} Isaac kann 2 Trinkets halten"}, -- Mom's Purse
	[140] = {"140", "Bobs Fluch", "{{Bomb}} +5 Bomben#{{Poison}} Isaacs Bomben erzeugen eine Giftwolke#{{Poison}} Giftimmunität"}, -- Bob's Curse
	[142] = {"142", "Skapulier", "{{SoulHeart}} Isaac erhält 1 Seelenherz, wenn er auf halbes Herz Schaden nimmt#Kann nur einmal pro Raum passieren#Verlassen und Wiederbetreten des Raumes ermöglicht das Auslösen des Effekts erneut#{{Warning}} Wird nicht durch Gesundheitsspenden ausgelöst"}, -- Scapular
	[147] = {"147", "Eingeritzte Axt", "Benutzen des Gegenstands lässt Isaac die Axt halten#Die Axt zu halten ermöglicht es Isaac, Felsen, Geheimgangzugänge und Feinde zu beschädigen#Ein Treffer mit der Axt reduziert ihre Ladung#Das Betreten eines neuen Stocks lädt die Axt vollständig auf"}, -- Notched Axe
	[148] = {"148", "Infestation", "Bei Schaden werden 2-6 blaue Fliegen erzeugt"}, -- Infestation
	[149] = {"149", "Ipecac", "↑ {{Damage}} +40 Schaden#↓ {{Tears}} x0.33 Feuerratenmultiplikator#↓ {{Range}} x0.8 Reichweitenmultiplikator#↓ {{Shotspeed}} -0.2 Schussgeschwindigkeit#Isaacs Tränen fliegen in einem Bogen#{{Poison}} Die Tränen explodieren und vergiften Feinde, wo sie landen"}, -- Ipecac
	[152] = {"152", "Technologie 2", "↓ {{Tears}} x0.67 Feuerratenmultiplikator#Ersetzt Isaacs rechte Augentränen durch einen kontinuierlichen Laser#{{Damage}} Der Laser verursacht 2x Isaacs Schaden pro Sekunde"}, -- Technology 2
	[153] = {"153", "Mutant Spider", "↓ {{Tears}} x0.42 Feuerratenmultiplikator#Isaac schießt auf einmal 4 Tränen"}, -- Mutant Spider
	[155] = {"155", "Der Peeper", "↑ {{Damage}} x1.35 Schadensmultiplikator für das linke Auge#Schwebt im Raum herum#Verursacht 17.1 Kontaktschaden pro Sekunde"}, -- The Peeper
	[158] = {"158", "Kristallkugel", "Spawnt ein {{SoulHeart}} Seelenherz, {{Rune}} Rune oder {{Card}} Karte#{{Timer}} Vollständiger Karteneffekt für den Stock (außer {{SuperSecretRoom}} Super Secret Room)#Bei Benutzung:#{{PlanetariumChance}} +15% Planetarium-Chance#{{PlanetariumChance}} +100%, wenn ein {{TreasureRoom}} Schatzraum übersprungen wurde"}, -- Crystal Ball
	[169] =	{"169", "Polyphemus", "↑ {{Damage}} +4 Schaden#↑ {{Damage}} x2 Schadensmultiplikator#↓ {{Tears}} x0.42 Feuerratenmultiplikator#Tränen durchdringen getötete Feinde, wenn überschüssiger Schaden vorhanden ist"}, -- Polyphemus
	[171] = {"171", "Spinnenhintern", "{{Slow}} Verlangsamt Feinde für 4 Sekunden#Verursacht allen Feinden 10 Schaden#Feinde, die vom Gegenstand getötet werden, erzeugen blaue Spinnen"}, -- Spider Butt
	[172] = {"172", "Opferdolch", "Orbital#Blockt feindliche Schüsse#Verursacht 112,5 Schaden pro Sekunde"}, -- Sacrificial Dagger
	[173] = {"173", "Mitra", "{{SoulHeart}} 33% Chance, dass Rote Herzen stattdessen als Seelenherzen erscheinen"}, -- Mitre
	[176] = {"176", "Stammzellen", "↑ {{Heart}} +1 Gesundheit#↑ {{Shotspeed}} +0,16 Schussgeschwindigkeit#{{Heart}} Heilt 1 Herz"}, -- Stem Cells
	[178] = {"178", "Heiliges Wasser", "{{Throwable}} Schießt sich in die Richtung, in die Isaac schießt#Bricht und verursacht 7 Schaden beim Treffen eines Feindes#Hinterlässt eine Fläche mit versteinerndem + schädlichem Schleim"}, -- Holy Water
	[180] = {"180", "Die schwarze Bohne", "Isaac furzt mehrmals, wenn er Schaden nimmt#{{Poison}} Die Fürze hinterlassen Giftwolken und lenken Projektile ab"}, -- The Black Bean
	[182] = {"182", "Heiliges Herz", "↑ {{Heart}} +1 Gesundheit#↑ {{Damage}} x2,3 Schadensmultiplikator#{{Damage}} +1 Schaden#↓ {{Tears}} -0.4 Tränen#↓ {{Shotspeed}} -0.25 Schussgeschwindigkeit#{{Heart}} Volle Gesundheit#Tränen suchen ihr Ziel"}, -- Sacred Heart
	[184] = {"184", "Heiliger Gral", "↑ {{Heart}} +1 Gesundheit#{{Heart}} Heilt 1 Herz#Flug"}, -- Holy Grail
	[186] = {"186", "Blutrechte", "Verursacht 40 Schaden an allen Feinden#{{Warning}} Verursacht 1 Herz Schaden an Isaac#Nach dem ersten Gebrauch im Raum nur noch ein halbes Herz#{{Heart}} Entfernt zuerst Rote Herzen"}, -- Blood Rights
	[188] = {"188", "Abel", "Spiegelt Isaacs Bewegungen#Schießt auf Isaac zu#Verursacht 3,5 Schaden pro Träne"}, -- Abel
	[189] = {"189", "SMB Super Fan", "↑ {{Heart}} +1 Gesundheit#↑ {{Speed}} +0.2 Geschwindigkeit#↑ {{Tears}} +0.2 Tränen#↑ {{Damage}} +0.3 Schaden#↑ {{Range}} +2.5 Reichweite#{{Heart}} Volle Gesundheit"}, -- SMB Super Fan
	[192] = {"192", "Telepathie für Dummies", "{{Timer}} Erhalte für den Raum:#↑ {{Range}} +3 Reichweite#Suchende Tränen"}, -- Telepathy for Dummies
	[193] = {"193", "FLEISCH!", "↑ {{Heart}} +1 Gesundheit#↑ {{Damage}} +0.3 Schaden#{{Heart}} Heilt 1 Herz"}, -- MEAT!
	[194] = {"194", "Magische 8-Kugel", "↑ {{Shotspeed}} +0.16 Schussgeschwindigkeit#{{Card}} Spawnt eine Karte#{{PlanetariumChance}} +15% Planetarium-Chance"}, -- Magic 8 Ball
	[197] = {"197", "Jesus-Saft", "↑ {{Damage}} +0.5 Schaden#↑ {{Range}} +1.5 Reichweite"}, -- Jesus Juice
	[203] = {"203", "Bescheidenes Bündel", "Pickups haben eine 50% ige Chance, verdoppelt zu werden"}, -- Humbleing Bundle
	[205] = {"205", "Scharfes Plug", "{{Battery}} Benutzen eines ungeladenen Aktivgegenstands lädt ihn vollständig auf, kostet jedoch ein halbes Herz pro fehlender Ladung#{{Heart}} Entfernt zuerst Rote Herzen"}, -- Sharp Plug
	[206] = {"206", "Guillotine", "↑ {{Tears}} +0.5 Feuerrate#↑ {{Damage}} +1 Schaden#Isaacs Kopf wird zu einem Orbital, der schießt, keinen Schaden nimmt und 65 Kontaktschaden pro Sekunde verursacht"}, -- Guillotine
	[211] = {"211", "Spinnenbaby", "Bei Schaden werden 3-5 blaue Spinnen erzeugt"}, -- Spiderbaby
	[214] = {"214", "Anämie", "↑ {{Range}} +1.5 Reichweite#{{Timer}} Wenn Isaac Schaden nimmt, hinterlässt er für den Raum eine Blutspur"}, -- Anemic
	[218] = {"218", "Plazenta", "↑ {{Heart}} +1 Gesundheit#{{Heart}} Heilt 1 Herz#{{HalfHeart}} 50% Chance, alle Minute ein halbes Herz zu heilen"}, -- Placenta
	[222] =	{"222", "Anti-Gravitation", "↑ {{Tears}} +1 Feuerrate#Das Halten der Feuertasten lässt Tränen in der Luft schweben#Das Loslassen der Feuertasten schießt sie in die Richtung, in die sie abgefeuert wurden"}, -- Anti-Gravity
	[223] = {"223", "Pyromane", "{{Bomb}} +5 Bomben#{{HalfHeart}} Bei Treffern durch Explosionen heilt sich Isaac um ein halbes Herz anstelle von Schaden#{{Burning}} Feuerimmunität (außer gegen Projektile)"}, -- Pyromaniac
	[224] = {"224", "Crickets Körper", "↑ {{Tears}} +0.5 Feuerrate#↑ {{Tearsize}} +0.1 Tränengröße#↓ {{Range}} x0.8 Reichweitenmultiplikator#Tränen teilen sich bei Treffern in 4 Teile#Geteilte Tränen richten halben Schaden an"}, -- Cricket's Body
	[225] = {"225", "Gimpy", "{{SoulHeart}} Bei Treffern besteht eine 8% ige Chance, ein Seelenherz zu erzeugen#{{Luck}} +2% Chance pro Glück#{{HalfHeart}} Feinde haben eine Chance, beim Tod ein halbes rotes Herz fallen zu lassen"}, -- Gimpy
	[226] = {"226", "Schwarze Lotusblüte", "↑ {{Heart}} +1 Gesundheit#{{Heart}} Heilt 1 Herz#{{SoulHeart}} +1 Seelenherz#{{BlackHeart}} +1 Schwarzes Herz"}, -- Black Lotus
	[228] = {"228", "Mamas Parfum", "↑ {{Tears}} +0.5 Feuerrate#{{Fear}} 15% ige Chance, Furchttränen zu schießen"}, -- Mom's Perfume
	[229] =	{"229", "Monstros Lunge", "↓ {{Tears}} x0.23 Feuerratenmultiplikator#{{Chargeable}} Tränen werden aufgeladen und in einem Schrotflintenangriff freigesetzt"}, -- Monstro's Lung
	[230] = {"230", "Abaddon", "↑ {{Speed}} +0.2 Geschwindigkeit#↑ {{Damage}} +1.5 Schaden#{{BlackHeart}} Wandelt alle Herzcontainer in Schwarze Herzen um#{{BlackHeart}} +2 Schwarze Herzen#{{Fear}} 15% ige Chance, Furchttränen zu schießen"}, -- Abaddon
	[232] = {"232", "Stoppuhr", "↑ {{Speed}} +0.3 Geschwindigkeit#{{Slow}} Feinde sind dauerhaft auf 80% ihrer Angriffs- und Bewegungsgeschwindigkeit verlangsamt"}, -- Stop Watch
	[233] = {"233", "Winziger Planet", "↑ {{Range}} +6.5 Reichweite#Spektrale Tränen#Isaacs Tränen kreisen um ihn"}, -- Tiny Planet
	[245] = {"245", "20/20", "↓ {{Damage}} x0.8 Schadensmultiplikator#Isaac schießt 2 Tränen auf einmal"}, -- 20/20
	[248] = {"248", "Bienenstock-Verstand", "Blaue Spinnen und Fliegen verursachen doppelten Schaden#Spinne- und Fliegen-Begleiter werden stärker"}, -- Hive Mind
	[253] = {"253", "Magische Kruste", "↑ {{Heart}} +1 Gesundheit#↑ {{Luck}} +1 Glück#{{Heart}} Heilt 1 Herz"}, -- Magic Scab
	[254] = {"254", "Blutklumpen", "↑ {{Damage}} +1 Schaden für das linke Auge#↑ {{Range}} +2.75 Reichweite für das linke Auge"}, -- Blood Clot
	[256] = {"256", "Heiße Bomben", "{{Bomb}} +5 Bomben#{{Burning}} Isaacs Bomben verursachen Kontaktschaden#{{Burning}} Isaacs Bomben hinterlassen eine Flamme, wo sie explodieren#{{Burning}} Feuerimmunität (außer gegen Projektile)"}, -- Hot Bombs
	[261] = {"261", "Proptose", "↑ {{Damage}} +0.5 Schaden#↓ Tränen verursachen weniger Schaden, je länger sie in der Luft sind#Tränen verursachen bei Nahkampf 3x Schaden und danach keinen Schaden mehr nach 0,8 Sekunden"}, -- Proptosis
	[262] = {"262", "Fehlende Seite 2", "{{BlackHeart}} +1 Schwarzes Herz#Bei Schaden auf 1 Herz werden alle Feinde im Raum beschädigt#{{Collectible35}} Schwarze Herzen und Nekronomikon-ähnliche Effekte verursachen doppelten Schaden"}, -- Missing Page 2
	[263] = {"263", "Klare Rune", "{{Rune}} Spawnt 1 Rune beim Aufsammeln#{{Rune}} Löst den Effekt der Rune aus, die Isaac hält, ohne sie zu verwenden"}, -- Clear Rune (Repentance item)
	[264] = {"264", "Kluge Fliege", "Orbital#Greift Feinde an, wenn Isaac Schaden nimmt#Verursacht 6,5 Schaden pro Sekunde"}, -- Smart Fly
	[273] = {"273", "Bobs Gehirn", "Eilt in die Richtung, in die Isaac schießt#Explodiert, wenn es einen Feind trifft#{{Poison}} Die Explosion verursacht 100 Schaden, ignoriert Boss-Rüstung und vergiftet Feinde#{{Warning}} Die Explosion kann Isaac verletzen"}, -- Bob's Brain
	[274] = {"274", "Bester Kumpel", "Bei Schaden wird ein mittelgroßes Orbital für den Raum erzeugt#Das Orbital verursacht 150 Schaden pro Sekunde"}, -- Best Bud
	[275] = {"275", "Lil Brimstone", "{{Chargeable}} Begleiter, der einen {{Collectible118}} Blutstrahl auflädt und schießt#Verursacht 3 Schaden pro Tick, insgesamt 24 Schaden"}, -- Lil Brimstone
	[276] = {"276", "Isaacs Herz", "Isaac wird unverwundbar#Erzeugt ein Herz-Begleiter, der Isaac folgt#Das Herz lädt sich auf, wenn Isaac schießt, und gibt einen Schauer von Tränen ab, wenn er aufhört#{{Warning}} Wenn das Herz getroffen wird, erleidet Isaac Schaden"}, -- Isaac's Heart
	[278] = {"278", "Dunkler Bum", "{{Heart}} Sammelt nahegelegene rote Herzen ein#Erzeugt für jedes aufgesammelte Herz ein Schwarzes Herz, Rune, Karte, Pille oder Spinne"}, -- Dark Bum
	[280] = {"280", "Sissy Langbein", "Erzeugt zufällig blaue Spinnen in feindlichen Räumen#{{Charm}} Verzaubert Feinde, mit denen es in Kontakt kommt"}, -- Sissy Longlegs
	[283] = {"283", "D100", "Dupliziert 1 Aufsammelobjekt im Raum#Würfelt Isaacs Geschwindigkeit, Tränen, Schaden, Reichweite und passive Objekte neu#Würfelt alle Sockelobjekte, Aufsammelobjekte und Felsen im Raum neu#Startet den Raum neu, belebt alle Feinde wieder und lässt sie zurückentwickeln"}, -- D100
	[285] = {"285", "D10", "Verwandelt alle Feinde im Raum zurück#Zum Beispiel werden alle roten Fliegen zu schwarzen Fliegen"}, -- D10
	[286] = {"286", "Blanko-Karte", "Löst den Effekt der Karte aus, die Isaac hält, ohne sie zu verwenden"}, -- Blank Card
	[287] = {"287", "Buch der Geheimnisse", "Markiert getönte und Kellerfelsen im Raum#{{Timer}} Erhalte einen dieser Effekte für den Raum:#{{Collectible54}} Schatzkarte#{{Collectible21}} Kompass#{{Collectible246}} Blaue Karte#Gewährt nur Effekte, die noch nicht aktiv sind#{{Collectible76}} Wenn alle Effekte aktiv sind, gewährt Röntgensicht"}, -- Book of Secrets
	[288] = {"288", "Spinnenbox", "Erzeugt 4-8 blaue Spinnen"}, -- Box of Spiders
	[289] = {"289", "Rote Kerze", "Wirft eine rote Flamme#Die Flamme verschwindet, wenn sie Schaden verursacht hat oder 5 Schüsse blockiert hat oder nach 10 Sekunden"}, -- Red Candle
	[291] = {"291", "Spülen!", "Verwandelt alle nicht-bossartigen Feinde in Kacke#Tötet sofort Kackfeinde und Bosse#Löscht Feuerstellen und füllt den Raum mit Wasser#Verwandelt Lava-Gruben in begehbaren Boden"}, -- Flush!
	[292] = {"292", "Satanische Bibel", "{{BlackHeart}} +1 Schwarzes Herz#{{DevilRoom}} Das Benutzen des Gegenstands vor einem Bosskampf führt dazu, dass der Boss eine Teufelsdeal-Belohnung gibt#Der Kauf dieser Teufelsdeals hat die gleichen Konsequenzen wie die in Teufelsräumen#Betrifft keine Gegenstandspodeste im Void-Stockwerk"}, -- Satanic Bible
	[293] = {"293", "Head of Krampus", "{{Collectible118}} Shoot a 4-way blood beam#They each deal 200 damage over 1.33 seconds"}, -- Head of Krampus
	[294] = {"294", "Butterbohne", "Stößt nahegelegene Feinde und Projektile zurück#Feinde, die gegen Hindernisse gestoßen werden, erleiden 10 Schaden"}, -- Butter Bean
	[295] = {"295", "Magische Finger", "Verursacht 2x Isaacs Schaden + 10 an allen Feinden im Raum#{{Coin}} Kosten 1 Münze"}, -- Magic Fingers
	[296] = {"296", "Konverter", "{{Heart}} Wandelt 1 Seelen- oder Schwarzes Herz in 1 Herzcontainer um"}, -- Converter
	-- NOTE FOR LOCALIZERS: There is code to highlight the text of your current floor
	-- For it to work, only use line breaks or semicolons to separate floor details, and use the same order as English
	[297] = {"297", "Pandoras Box", "Erzeugt Belohnungen basierend auf der Ebene:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#C1: Boss-Gegenstand; C2: B1+C1#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Boss-Gegenstände#W2: {{Collectible33}} Die Bibel#???/Leere: Nichts#Sheol: Teufelsgegenstand + 1{{BlackHeart}}#Kathedrale: Engelsgenstand + 1{{EternalHeart}}#Dunkler Raum: Schaltet {{Collectible523}} Die Umzugskiste frei; Truhe: 1{{Coin}}#Zuhause: {{Collectible580}} Roter Schlüssel"}, -- Pandora's Box
	[300] = {"300", "Widder", "↑ {{Speed}} +0.25 Geschwindigkeit#Bewegung über 0,85 Geschwindigkeit macht Isaac immun gegen Berührungsschaden und fügt Feinden 25 Schaden zu"}, -- Aries
	[307] = {"307", "Steinbock", "↑ {{Heart}} +1 Gesundheit#↑ {{Speed}} +0.1 Geschwindigkeit#↑ {{Tears}} +0.5 Feuerrate#↑ {{Damage}} +0.5 Schaden#↑ {{Range}} +0.75 Reichweite#+1 {{Coin}} Münze, {{Bomb}} Bombe und {{Key}} Schlüssel"}, -- Capricorn
	[308] = {"308", "Wassermann", "Isaac hinterlässt eine Spur aus Klecksen#{{Damage}} Der Klecks fügt 66% des Schadens von Isaac pro Sekunde zu und übernimmt seine Träreffekte"}, -- Aquarius
	[309] = {"309", "Fische", "↑ {{Tears}} +0.5 Feuerrate#↑ {{Tearsize}} +0.12 Tränengröße#Erhöht den Rückstoß der Tränen"}, -- Pisces
	[310] = {"310", "Evas Mascara", "↑ {{Damage}} x2 Schadensmultiplikator#↓ {{Tears}} x0.66 Tränenmultiplikator#↓ {{Shotspeed}} -0.5 Schussgeschwindigkeit"}, -- Eve's Mascara
	[314] = {"314", "Donner-Oberschenkel", "↑ {{Heart}} +1 Gesundheit#↓ {{Speed}} -0.4 Geschwindigkeit#{{Heart}} Heilt 1 Herz#Isaac kann Felsen zerstören, indem er darüber läuft"}, -- Thunder Thighs
	[315] = {"315", "Seltsamer Anzieher", "Isaacs Tränen ziehen Feinde, Aufsammelobjekte und Trinkets an#Der Anziehungseffekt ist am Ende des Tränenweges viel stärker"}, -- Strange Attractor
	[316] = {"316", "Verfluchte Träne", "Aufgeladene Welle aus 5 Tränen#{{Warning}} Bei teilweise aufgeladenem Schuss bewirkt Schaden einen zufälligen Raumwechsel für Isaac"}, -- Cursed Eye
	[319] = {"319", "Cains Anderes Auge", "Schießt Tränen in zufällige Richtungen mit denselben Effekten wie Isaac#{{Damage}} Fügt 75% des Schadens von Isaac zu"}, -- Cain's Other Eye
	[320] = {"320", "???s Einziger Freund", "Steuerbare Fliege#Fügt 15 Kontaktschaden pro Sekunde zu"}, -- ???'s Only Friend
	[323] = {"323", "Isaacs Tränen", "Schießt 8 Tränen in alle Richtungen#Die Tränen kopieren Isaacs Träreffekte, plus 5 Schaden#Lädt sich durch das Abschießen von Tränen wieder auf"}, -- Isaac's Tears
	[326] = {"326", "Atem Des Lebens", "Das Halten der BENUTZEN-Taste leert die Ladeleiste#Isaac ist vorübergehend unverwundbar, wenn die Ladeleiste leer ist#Isaac ruft Lichtstrahlen hervor, wenn er Feinde berührt, während er unverwundbar ist#Wenn Schaden mit perfektem Timing blockiert wird, schießt ein 4-Wege-Heiligkeitsstrahl und gewinnt einen kurzen Schild#{{Warning}} Das Halten für zu lange fügt Isaac Schaden zu"}, -- Breath of Life
	[328] = {"328", "Das Negative", "↑ {{Damage}} +1 Schaden#Wenn er bei einem halben roten Herz oder gar keinem Schaden nimmt, erleiden alle Feinde im Raum Schaden"}, -- The Negative
	[330] = {"330", "Sojamilch", "↑ {{Tears}} x5.5 Feuerratenmultiplikator#↓ {{Damage}} x0.2 Schadensmultiplikator#↓ {{Tearsize}} -0.3 Tränengröße#Reduziert den Rückstoß drastisch"}, -- Soy Milk
	[331] = {"331", "Götterkopf", "↑ {{Damage}} +0.5 Schaden#↓ {{Tears}} -0.3 Tränen#↓ {{Shotspeed}} -0.3 Schussgeschwindigkeit#Heilige Tränen#Tränen erhalten eine Aura, die pro Sekunde 60 Schaden verursacht"}, -- Godhead
	[336] = {"336", "Tote Zwiebel", "↑ {{Tearsize}} +0.22 Tränengröße#↓ {{Range}} -1.5 Reichweite#↓ {{Shotspeed}} -0.4 Schussgeschwindigkeit#Durchdringende + spektrale Tränen"}, -- Dead Onion
	[339] = {"339", "Sicherheitsnadel", "↑ {{Range}} +2.5 Reichweite#↑ {{Shotspeed}} +0.16 Schussgeschwindigkeit#{{BlackHeart}} +1 Schwarzes Herz"}, -- Safety Pin
	[342] = {"342", "Blaue Mütze", "↑ {{Heart}} +1 Gesundheit#↑ {{Tears}} +0.7 Tränen#↓ {{Shotspeed}} -0.16 Schussgeschwindigkeit#{{Heart}} Heilt 1 Herz"}, -- Blue Cap
	[344] = {"344", "Streichholzschachtel", "{{BlackHeart}} +1 Schwarzes Herz#{{Bomb}} Erzeugt 3 Bomben#{{Trinket41}} Erzeugt den Streichholztrinket"}, -- Match Book
	[345] = {"345", "Synthöl", "↑ {{Damage}} +1 Schaden#↑ {{Range}} +2.5 Reichweite"}, -- Synthoil
	[346] = {"346", "Ein Snack", "↑ {{Heart}} +1 Gesundheit#{{Heart}} Heilt 1 Herz"}, -- A Snack
	[349] = {"349", "Wooden Nickel", "{{Coin}} 59% chance to spawn a random coin"}, -- Wooden Nickel
	[352] = {"352", "Glas-Kanone", "{{Damage}} Schießt eine große durchdringende spektrale Träne ab, die 10x Isaacs Schaden verursacht#{{Warning}} Beim Halten bewirkt Schaden:#↓ Entfernt zusätzlich 2 Herzen Gesundheit#↓ Zerbricht die Kanone für einige Räume#↑ {{Range}} +1.5 Reichweite und hinterlässt einen Blutpfad für den Raum#Der zusätzliche Schaden kann Isaac nicht töten#Selbstschaden löst den Effekt nicht aus"}, -- Glass Cannon
	[354] = {"354", "Crack Jacks", "↑ {{Heart}} +1 Gesundheit#{{Heart}} Heilt 1 Herz#{{Trinket}} Erzeugt ein Trinket"}, -- Crack Jacks
	[355] = {"355", "Mamas Perlen", "↑ {{Range}} +2.5 Reichweite#↑ {{Luck}} +1 Glück#{{SoulHeart}} +1 Seelengefäß"}, -- Mom's Pearls
	[360] = {"360", "Brutus", "Schießt Tränen mit denselben Effekten wie Isaac ab#{{Damage}} Verursacht 75% des Schadens von Isaac"}, -- Incubus
	[365] = {"365", "Verlorene Fliege", "Bewegt sich entlang von Wänden/Hindernissen im Raum#Fügt 30 Kontaktschaden pro Sekunde zu#Nahegelegene Feinde nehmen die Fliege ins Visier"}, -- Lost Fly
	[366] = {"366", "Streubomben", "{{Bomb}} +5 Bomben#Isaacs Bomben zerplatzen in 4-5 winzige Bomben"}, -- Scatter Bombs
	[367] = {"367", "Klebrige Bomben", "{{Bomb}} +5 Bomben#{{Slow}} Isaacs Bomben haften an Feinden und hinterlassen weißes, verlangsamendes Klecksen#Das Töten eines Feindes mit einer Bombe beschwört blaue Spinnen herbei"}, -- Sticky Bombs
	[368] = {"368", "Epiphora", "↑ {{Tears}} Das Schießen in eine Richtung erhöht allmählich die Feuerrate auf bis zu 200%"}, -- Epiphora
	[369] = {"369", "Kontinuum", "↑ {{Range}} +3 Reichweite#Spektraltränen#Tränen können durch eine Bildschirmseite reisen und auf der anderen Seite wieder herauskommen"}, -- Continuum
	[370] = {"370", "Mr. Dolly", "↑ {{Tears}} +0.7 Tränen#↑ {{Range}} +2.5 Reichweite#{{UnknownHeart}} Erzeugt 3 zufällige Herzen"}, -- Mr. Dolly
	[374] = {"374", "Heiliges Licht", "10% Chance, heilige Tränen abzufeuern, die beim Treffen einen Lichtstrahl erzeugen#{{Luck}} 50% Chance bei 9 Glück#{{Damage}} Der Strahl fügt 3x Isaacs Schaden zu"}, -- Holy Light
	[375] = {"375", "Sternenhut", "Verleiht Immunität gegen Explosionen und fallende Projektile#25% Chance, feindliche Schüsse abzuprallen"}, -- Host Hat
	[376] = {"376", "Auffüllen", "Der Kauf eines Gegenstands im Laden füllt ihn sofort wieder auf#Aufgefüllte Gegenstände steigen mit jedem Mal im Preis"}, -- Restock
	[380] = {"380", "Bezahle zum Spielen", "{{Coin}} +5 Münzen#Verschlossene Blöcke, Türen und Truhen müssen mit Münzen anstelle von Schlüsseln geöffnet werden"}, -- Pay To Play
	[382] = {"382", "Freundesball", "Kann auf Feinde geworfen werden, um sie zu fangen#Die Verwendung des Gegenstands nach dem Fangen eines Feindes beschwört ihn als freundlichen Begleiter#Das Überqueren des Balls nach dem Fangen lädt den Gegenstand sofort wieder auf"}, -- Friendly Ball
	[384] = {"384", "Lil Gurdy", "{{Chargeable}} Schießt durch den Raum und prallt abhängig von der Ladungsgeschwindigkeit ab#Fügt bei Treffern 5-25 Kontaktschaden pro Treffer zu"}, -- Lil Gurdy
	[386] = {"386", "D12", "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)#Small chance to reroll obstacles into buttons, killswitches, crawlspaces or trapdoors"}, -- D12
	[389] = {"389", "Runenbeutel", "{{Rune}} Erzeugt alle 7-8 Räume eine zufällige Rune oder Seelenstein"}, -- Rune Bag
	[391] = {"391", "Verrat", "Feinde können sich gegenseitig mit ihren Geschossen treffen und bekämpfen"}, -- Betrayal
	[393] = {"393", "Schlangenkuss", "{{Poison}} 15% Chance, Gifttränen abzufeuern#{{Poison}} Vergiftet Feinde bei Kontakt#{{BlackHeart}} Feinde, die durch Kontaktgift getötet werden, haben die Chance, ein Schwarzes Herz beim Tod fallen zu lassen"}, -- Serpent's Kiss
	[394] = {"394", "Markiert", "↑ {{Tears}} +0,7 Tränen#↑ {{Range}} +3 Reichweite#Isaac schießt automatisch Tränen auf ein bewegliches rotes Ziel am Boden#Begleiter schießen ebenfalls auf das Ziel#Das Schießen kann gestoppt und der Standort des Ziels zurückgesetzt werden, indem die Abwurftaste ({{ButtonRT}}) gedrückt wird"}, -- Marked
	[395] = {"395", "Tech X", "Isaacs Tränen werden durch einen aufladbaren Laserreifen ersetzt#Die Größe und der Schaden des Rings nehmen mit der Ladezeit um bis zu 100% zu"}, -- Tech X
	[397] = {"397", "Traktorstrahl", "↑ {{Tears}} +1 Schussrate#↑ {{Range}} +2,5 Reichweite#↑ {{Shotspeed}} +0,16 Schussgeschwindigkeit#Isaacs Tränen bewegen sich immer entlang eines Lichtstrahls vor ihm"}, -- Tractor Beam
	[399] = {"399", "Schlund der Leere", "{{Chargeable}} Feuern von Tränen für 2,35 Sekunden und Freigeben der Feuertaste erzeugt einen schwarzen Brimstonering um Isaac"}, -- Maw of the Void
	[401] = {"401", "Explosivo", "25% Chance, klebrige Tränen zu schießen#Klebrige Tränen wachsen und explodieren nach wenigen Sekunden, verursachen Isaacs Schaden +60"}, -- Explosivo
	[404] = {"404", "Furz-Baby", "Blockiert Geschosse#Bei Treffer 10% Chance zu furzen und {{Charm}} zu verursachen, {{Poison}} zu vergiften oder Feinde wegzustoßen#Die Fürze verursachen 5-6 Schaden"}, -- Farting Baby
	[405] = {"405", "GB Bug", "{{Throwable}} Werfbar (doppeltippe zum Schießen)#Verändert Feinde und Pickups, mit denen er in Kontakt kommt, neu"}, -- GB Bug
	[407] = {"407", "Reinheit", "↑ Erhöht einen von Isaacs Werten abhängig von der Farbe der Aura#Schaden entfernt den Effekt, gewährt aber im nächsten Raum einen neuen Effekt#{{ColorYellow}}Gelb{{CR}} = ↑ {{Speed}} +0,5 Geschwindigkeit#{{ColorBlue}}Blau{{CR}} = ↑ {{Tears}} +2 Schussrate#{{ColorRed}}Rot{{CR}} = ↑ {{Damage}} +4 Schaden#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +3 Reichweite"}, -- Purity
	[408] = {"408", "Athame", "25% Chance, dass ein schwarzer Brimstonering um getötete Feinde erscheint#{{Luck}} +2,5% Chance pro Glück"}, -- Athame
	[415] = {"415", "Krone des Lichts", "{{SoulHeart}} +2 Seelenherzen#Wenn Isaac keine beschädigten Herzcontainer hat:#↑ {{Damage}} x2 Schadensmultiplikator#↓ {{Shotspeed}} -0,3 Schussgeschwindigkeit#Schaden wird bei jedem Schaden entfernt und gewährt keinen Effekt im Raum"}, -- Crown Of Light
	[416] = {"416", "Tiefe Taschen", "{{Coin}} Wenn das Leeren eines Raums keine Belohnung bringen würde, erscheinen 1-3 Münzen#{{Coin}} Erhöht das Münzenlimit auf 999"}, -- Deep Pockets
	[417] = {"417", "Succubus", "Springt im Raum herum, umgeben von einer schädlichen Aura, die 7,5-10 Schaden pro Sekunde verursacht#↑ {{Damage}} x1,5 Schadensmultiplikator, wenn man in der Aura steht"}, -- Succubus
	[419] = {"419", "Teleport 2.0", "Teleportiert Isaac in einen Raum, der noch nicht geräumt wurde#Hierarchie: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{Planetarium}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"}, -- Teleport 2.0
	[421] = {"421", "Nierenbohne", "{{Charm}} Verzaubert alle Feinde in unmittelbarer Nähe"}, -- Kidney Bean
	[422] = {"422", "Leuchtende Sanduhr", "Bringt Isaac zurück in den vorherigen Raum und kehrt alle Handlungen um, die im Raum durchgeführt wurden, in dem das Item verwendet wurde#Die Rückspulung kann dreimal pro Ebene verwendet werden#{{Collectible66}} Wirkt wie die Sanduhr, wenn die Rückspulungen aufgebraucht sind und verlangsamt Feinde für 8 Sekunden"}, -- Glowing Hourglass
	[426] = {"426", "Besessener Fan", "Imitiert Isaacs Bewegungen mit einer Verzögerung von 0,66 Sekunden#Verursacht 30 Kontaktschaden pro Sekunde"}, -- Obsessed Fan
	[430] = {"430", "Papa-Fliege", "Imitiert Isaacs Bewegungen mit einer Verzögerung von 0,66 Sekunden#{{Damage}} Schießt Tränen auf nahegelegene Feinde, die Isaacs Schaden verursachen"}, -- Papa Fly
	[431] = {"431", "Multidimensionales Baby", "Imitiert Isaacs Bewegungen mit einer Verzögerung von 0,66 Sekunden#Tränen, die durch es hindurch gehen, werden verdoppelt und erhalten einen Reichweiten- und Schussgeschwindigkeitsschub"}, -- Multidimensional Baby
	[432] = {"432", "Glitzerbomben", "{{Bomb}} +5 Bomben#{{Charm}} Bomben haben eine 63% ige Chance, eine zufällige Belohnung fallen zu lassen und eine 15% ige Chance, Feinde zu verzaubern, wenn sie explodieren#Die Wahrscheinlichkeit, dass eine Belohnung erscheint, sinkt um 1% für jede Belohnung in dieser Ebene"}, -- Glitter Bombs
	[433] = {"433", "Mein Schatten", "Ein kleiner Schatten folgt Isaac#{{Timer}} Wenn ein Feind den Schatten berührt, erscheint für den Raum ein freundlicher schwarzer Charger#Der Charger verursacht 8,7 Schaden pro Treffer"}, -- My Shadow
	[437] = {"437", "D7", "Startet einen Raum neu und lässt alle Feinde wieder auferstehen#Kann verwendet werden, um mehrere Raum-Belohnungen aus einem einzigen Raum zu erhalten"}, -- D7
	[440] = {"440", "Nierenstein", "Isaac hört gelegentlich auf zu schießen und lädt einen Angriff auf, der eine Salve von Tränen und einen Nierenstein freisetzt"}, -- Kidney Stone
	[442] = {"442", "Krone des Dunklen Prinzen", "Wenn Isaac 1 volles Rotes Herz hat:#↑ {{Tears}} +2 Schussrate#↑ {{Range}} +1,5 Reichweite#↑ {{Shotspeed}} +0,2 Schussgeschwindigkeit"}, -- Dark Prince's Crown
	[444] = {"444", "Bleistift", "Isaac schießt alle 15 Tränen einen Cluster von Tränen"}, -- Lead Pencil
	[448] = {"448", "Glasscherbe", "Bei Schaden:#{{Heart}} 25% Chance, ein Rotes Herz fallen zu lassen#{{BleedingOut}} Isaac blutet und schießt Tränen in die Richtung, in die er schießt#Das Bluten verursacht alle 20 Sekunden einen halben roten Herzschaden#Das Bluten stoppt, wenn ein Rotes Herz geheilt wird, alle roten Herzen leer sind oder der nächste Schaden Isaac töten würde"}, -- Shard of Glass
	[450] = {"450", "Auge der Gier", "{{Damage}} Alle 20 Tränen schießt Isaac eine Münzträne ab, die x1,5 +10 Schaden verursacht#Feinde, die mit der Münze getroffen werden, werden zu Gold#{{Coin}} Das Töten eines goldenen Feindes lässt 1-3 Münzen fallen#{{Warning}} Das Abschießen einer Münzträne kostet 1 Münze"}, -- Eye of Greed
	[451] = {"451", "Tarot-Tuch", "{{Card}} Lässt eine Karte erscheinen#{{Card}} Tarot-Karteneffekte sind verdoppelt oder verbessert"}, -- Tarot Cloth
	[453] = {"453", "Knochenbruch", "↑ {{Range}} +1,5 Reichweite#Tränen zersplittern beim Aufprall in 1-3 Knochensplitter"}, -- Compound Fracture
	[455] = {"455", "Papas Verlorenes Geld", "↑ {{Range}} +2,5 Reichweite#{{Luck}} Lässt eine Glückspfennig erscheinen"}, -- Dad's Lost Coin
	[456] = {"456", "Mitternachtssnack", "↑ {{Heart}} +1 Gesundheit#{{Heart}} Heilt 1 Herz"}, -- Midnight Snack
	[459] = {"459", "Naseninfektion", "20% Chance, einen klebrigen Popel zu schießen#{{Damage}} Popel verursachen Isaacs Schaden einmal pro Sekunde und kleben 10 Sekunden lang#{{Luck}} Nicht vom Glück beeinflusst"}, -- Sinus Infection
	[462] = {"462", "Auge von Belial", "↑ {{Range}} +1,5 Reichweite#Durchdringende Tränen#Ein Treffer macht die Träne suchend und verdoppelt ihren Schaden"}, -- Eye of Belial
	[464] = {"464", "Glyphe des Gleichgewichts", "{{SoulHeart}} +2 Seelenherzen#Champion-Gegner und Raum-Belohnungen werden zu der Belohnung, die Isaac am meisten braucht"}, -- Glyph of Balance
	[468] = {"468", "Schatten", "Folgt Isaacs Bewegungen mit einer Verzögerung von 1 Sekunde#Verursacht 75 Kontaktschaden pro Sekunde#Nachdem er 666 Schaden verursacht hat, wird er von Isaac absorbiert und erhöht seinen Kontaktschaden"}, -- Shade
	[472] = {"472", "Königsbaby", "Andere Begleiter folgen ihm und schießen automatisch auf Feinde#Hält an, wenn Isaac schießt#Teleportiert zu Isaac zurück, wenn er aufhört zu schießen"}, -- King Baby
	[474] = {"474", "Zerbrochene Glasskanone", "Die Verwendung des Gegenstands verwandelt ihn zurück in die Glasskanone"}, -- Broken Glass Cannon
	[476] =	{"476", "D1", "Dupliziert ein zufälliges Pickup im Raum#Duplizierte Pickups müssen nicht identisch mit dem Original sein"}, -- D1
	[477] = {"477", "Leere", "Verzehrt alle Sockelobjekte im Raum#Active Items: Ihre Effekte aktivieren sich bei jeder zukünftigen Verwendung von Leere#↑ Passive Objekte gewähren zwei zufällige Stat-Upgrades"}, -- Void
	[487] = {"487", "Kartoffelschäler", "{{EmptyHeart}} Entfernt 1 Herzcontainer für: #↑ {{Damage}} +0,2 Schaden#{{Collectible73}} Ein Fleischwürfel#{{Timer}} Für den Raum erhalten:#↑ {{Range}} +1,5 Reichweite#{{Collectible214}} Hinterlässt eine Blutspur"}, -- Potato Peeler
	[489] = {"489", "D Unendlichkeit", "Kann so eingestellt werden, dass es sich wie ein beliebiges Würfelobjekt verhält (außer {{Collectible723}} Spindown Dice) mit der Abwurftaste ({{ButtonRT}})#Die Ladezeit variiert je nach zuletzt verwendeten Würfel und wird bei jedem Gebrauch aktualisiert"}, -- D Infinity
	[491] = {"491", "Säure-Baby", "{{Pill}} Spawnt alle 7 Räume eine zufällige Pille#{{Poison}} Die Verwendung einer Pille vergiftet alle Feinde im Raum"}, -- Acid Baby
	[493] = {"493", "Adrenalin", "↑ {{Damage}} Schaden für jeden leeren Herzcontainer#Je mehr leere Herzcontainer, desto größer der Bonus für jeden neuen"}, -- Adrenaline
	[494] = {"494", "Jacobs Leiter", "Tränen erzeugen einen Funken Elektrizität bei Kontakt#Funken verursachen die Hälfte von Isaacs Schaden#Funken können auf andere Feinde überspringen"}, -- Jacob's Ladder
	[495] = {"495", "Geisterpfeffer", "8,33% Chance, eine blaue Flamme zu schießen, die feindliche Geschosse blockiert und Kontaktschaden verursacht#{{Luck}} 50% Chance bei 10 Glück#Flammen schrumpfen und verschwinden nach 2 Sekunden"}, -- Ghost Pepper
	[496] = {"496", "Euthanasie", "3,33% Chance, eine Nadel zu schießen#{{Luck}} 25% Chance bei 13 Glück#Nadeln töten normale Feinde sofort, platzen in 10 Tränen auf und verursachen 3x Isaacs Schaden gegen Bosse"}, -- Euthanasia
	[497] = {"497", "Camo-Unterhosen", "{{Verwirrung}} Das Betreten eines Raums tarnt Isaac und verwirrt alle Feinde, bis eine Träne abgefeuert wird#↑ {{Speed}} +0,5 Geschwindigkeit im getarnten Zustand#Das Enttarnen verursacht Schaden um Isaac herum und gewährt kurzzeitig Feuerrate- und Schadensbonus"}, -- Camo Undies
	[501] = {"501", "Gier-Magen", "{{Heart}} +1 Herzcontainer für jeweils 25 Münzen, die Isaac besitzt"}, -- Greed's Gullet
	[503] = {"503", "Kleines Horn", "5% Chance, eine Träne zu schießen, die eine Hand von Big Horn beschwört#{{Luck}} 20% Chance bei 15 Glück#Die Hand tötet Feinde sofort und verursacht 36 Schaden an Bossen#Isaac verursacht 7 Kontaktschaden pro Sekunde"}, -- Little Horn
	[504] = {"504", "Braune Pepitas", "Spawnt eine Fliege, die auf Feinde schießt#Jeder Schuss verursacht 3,5 Schaden"}, -- Brown Nugget
	[506] = {"506", "Hinterlistiger Mörder", "{{BleedingOut}} Ein Treffer von hinten verursacht doppelten Schaden und Blutungen, wodurch Feinde Kriechspuren hinterlassen und Schaden erleiden, wenn sie sich bewegen"}, -- Backstabber
	[507] = {"507", "Scharfe Strohhalme", "{{Damage}} Verursacht Isaacs Schaden + 10% der maximalen Gesundheit des Feindes an alle Feinde#{{HalfHeart}} Schaden mit dem Strohhalm kann halbe Herzen spawnen"}, -- Sharp Straw
	[508] = {"508", "Mamas Rasiermesser", "{{BleedingOut}} Orbitale, die Blutungen verursachen und Feinde Schaden nehmen lassen, wenn sie sich bewegen#{{Damage}} Verursacht 1,5x Isaacs Schaden pro Sekunde"}, -- Mom's Razor
	[509] = {"509", "Blutiges Auge", "Orbitale, die alle 0,33 Sekunden eine Träne auf nahegelegene Feinde schießen#Verursacht 3,5 Schaden pro Träne#Verursacht 20 Kontaktschaden pro Sekunde"}, -- Bloodshot Eye
	[514] = {"514", "Kaputtes Modem", "Veranlasst einige Feinde und Geschosse, sich in zufälligen Intervallen kurzzeitig zu pausieren#Pausierte Geschosse verschwinden#25% Chance, Raum-Belohnungen zu verdoppeln#(Verdoppelt keine Kisten-, Karten- oder Pillenbelohnungen)"}, -- Broken Modem
	[517] = {"517", "Schnellbomben", "{{Bomb}} +7 Bomben#Entfernt die Verzögerung zwischen dem Platzieren von Bomben#Bomben stoßen sich nicht gegenseitig ab"}, -- Fast Bombs
	[522] = {"522", "Telekinesis", "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards#Pushes close enemies away during the effect"}, -- Telekinesis
	[523] = {"523", "Umzugskarton", "Speichert bis zu 10 Pickups und Gegenstände aus dem aktuellen Raum#Bei erneuter Verwendung lässt der Gegenstand alles auf den Boden fallen#Ermöglicht es Isaac, Dinge zwischen Räumen zu bewegen"}, -- Moving Box
	[524] = {"524", "Technologie Null", "Isaacs Tränen sind mit elektrischen Strahlen verbunden#Elektrizität verursacht 4,5x Isaacs Schaden pro Sekunde"}, -- Technology Zero
	[531] = {"531", "Hämolyse", "↑ {{Damage}} +1 Schaden#↑ {{Damage}} x1,5 Schadensmultiplikator#↓ {{Tears}} x0,33 Feuerratenmultiplikator#↓ {{Range}} x0,8 Reichweitenmultiplikator#Isaacs Tränen fliegen in einem Bogen und platzen bei Aufprall in kleinere Tränen"}, -- Haemolacria
	[543] = {"543", "Heiliger Boden", "Bei Schaden wird eine weiße Kacke gespawnt#Während sich Isaac im Bereich der Kacke befindet:#↑ {{Tears}} x2,5 Feuerratenmultiplikator#↑ {{Damage}} x1,2 Schadensmultiplikator#Homing-Tränen#Chance, Schaden zu blockieren"}, -- Hallowed Ground
	[549] = {"549", "Brüchige Knochen", "{{EmptyBoneHeart}} Ersetzt alle roten Herzcontainer von Isaac durch 6 leere Knochenherzen#Beim Verlieren eines Knochenherzens:#↑ {{Tears}} +0,4 Feuerrate#Schießt 8 Knochentränen in alle Richtungen"}, -- Brittle Bones
	[552] = {"552", "Mamas Schaufel", "Spawnt eine Falltür zum nächsten Stockwerk#{{LadderRoom}} Spawnt einen Kriechraum, wenn er auf einem dekorativen Bodenbelag (Gras, kleine Steine, Papier, Edelsteine usw.) verwendet wird#{{Warning}} Verwende die Schaufel auf dem Erdhügel im \"Dunklen Raum\""}, -- Mom's Shovel
	[553] = {"553", "Mukormykose", "25% Chance, eine klebrige Sporenträne zu schießen#{{Luck}} Nicht von Glück beeinflusst#{{Poison}} Sporen explodieren nach 2,5 Sekunden und verursachen Schaden, vergiften nahegelegene Feinde und setzen weitere Sporen frei"}, -- Mucormycosis
	[554] = {"554", "2Spooky", "{{Fear}} Verängstigt Feinde in einem kleinen Radius um Isaac"}, -- 2Spooky
	[555] = {"555", "Goldenes Rasiermesser", "{{Coin}} +5 Münzen beim Aufsammeln#{{Timer}} Zahle 5 Münzen und erhalte für den Raum:#↑ {{Damage}} +1,2 Schaden"}, -- Golden Razor
	[556] = {"556", "Schwefelsäure", "{{Timer}} {{Collectible118}} Brimstone für den Raum#Using it multiple times in one room grants increased damage and a larger beam"}, -- Sulfur
	[557] = {"557", "Glückskeks", "Gewährt eine der folgenden Belohnungen:#Eine Prophezeiung#{{SoulHeart}} Ein Soul Heart#{{Rune}} Eine Rune oder Seelenstein#{{Card}} Eine Tarot-Karte#{{Trinket}} Ein Trinket"}, -- Fortune Cookie
	[558] = {"558", "Störendes Auge", "Chance, 1-3 zusätzliche Tränen in zufällige Richtungen zu schießen#{{Luck}} Nicht von Glück beeinflusst"}, -- Eye Sore
	[559] = {"559", "120 Volt", "Zappt wiederholt nahegelegene Feinde#{{Damage}} Elektrizität verursacht bis zu 3,75x Isaacs Schaden pro Sekunde"}, -- 120 Volt
	[560] = {"560", "Es tut weh", "{{Timer}} Bei Schaden erhalten für den Raum:#↑ {{Tears}} +1,2 Feuerrate beim ersten Treffer#↑ {{Tears}} +0,4 Feuerrate für jeden zusätzlichen Treffer#Entlässt einen Ring aus 10 Tränen um Isaac"}, -- It Hurts
	[561] = {"561", "Mandelmilch", "↑ {{Tears}} x4 Feuerratenmultiplikator#↓ {{Damage}} x0,3 Schadensmultiplikator#↓ {{Tearsize}} -0,16 Tränengröße#Tränen erhalten zufällige Wurmschmuckeffekte und einige Gegenstandseffekte"}, -- Almond Milk
	[562] = {"562", "Grundgestein", "↑ Verhindert, dass Statistiken für den Rest des Durchlaufs gesenkt werden"}, -- Rock Bottom
	[563] = {"563", "Nancy-Bomben", "{{Bomb}} +5 Bomben#Isaacs Bomben explodieren mit zufälligen Effekten"}, -- Nancy Bombs
	[564] = {"564", "Ein Stück Seife", "↑ {{Tears}} +0,5 Tränen#↑ {{Shotspeed}} +0,2 Schussgeschwindigkeit"}, -- A Bar of Soap
	[565] = {"565", "Blutwelpe", "Verfolgt Feinde#Nach dem Töten von 15 Feinden verursacht sie mehr Schaden, spawnt alle 10 Kills ein halbes rotes Herz, versucht aber, Isaac zu verletzen#Nach dem Töten von 40 Feinden verursacht sie noch mehr Schaden, spawnt volle rote Herzen und kann Felsen zerstören#Ausreichender Schaden an sie bringt sie in ihre erste Phase zurück"}, -- Blood Puppy
	[566] = {"566", "Traumfänger", "{{HalfSoulHeart}} +1 halbes Soul Heart beim Betreten einer neuen Ebene#Der Albtraumübergang zeigt den Bosskampf und den Schatzraum des nächsten Stockwerks"}, -- Dream Catcher
	[567] = {"567", "Osterkerze", "↑ {{Tears}} Raum ohne Schaden zu nehmen abschließen gewährt +0,4 Feuerrate#Begrenzt auf +2 Feuerrate {{ColorSilver}}(5 Räume)"}, -- Paschal Candle
	[568] = {"568", "Göttliche Intervention", "Doppelklick auf eine Feuertaste erzeugt einen Schild#Der Schild dauert 1 Sekunde, stößt Feinde ab und reflektiert feindliche Projektile und Laser"}, -- Divine Intervention
	[569] = {"569", "Blutpakt", "{{Warning}} Das Betreten einer neuen Ebene entleert alle roten Herzen von Isaac, gewährt jedoch Geschwindigkeits- und Schadensboni für jedes verlorene Herz#Jedes halbe Herz zählt als einzelner Treffer für Effekte bei Treffern"}, -- Blood Oath
	[570] = {"570", "Play-Doh-Keks", "Jede von Isaacs Tränen hat eine andere Farbe und Statuswirkung"}, -- Playdough Cookie
	[571] = {"571", "Waisensocken", "↑ {{Speed}} +0,3 Geschwindigkeit#↑ {{SoulHeart}} +2 Soul Hearts#Immun gegen Kriech- und Bodenstacheln"}, -- Orphan Socks
	[572] = {"572", "Auge des Okkulten", "↑ {{Damage}} +1 Schaden#↑ {{Range}} +2 Reichweite#↓ {{Shotspeed}} -0,16 Schussgeschwindigkeit#Isaacs Tränen können in der Luft gesteuert werden"}, -- Eye of the Occult
	[573] = {"573", "Unbeflecktes Herz", "↑ {{Heart}} +1 Gesundheit#↑ {{Damage}} x1.2 Schadensmultiplikator#{{Heart}} Volle Gesundheit#20% Chance, eine zusätzliche kreisende Spektralträne abzuschießen"}, -- Immaculate Heart
	[574] = {"574", "Monstranz", "Isaac ist von einer schadensverursachenden Aura umgeben#Je näher Feinde an Isaac sind, desto mehr Schaden verursacht die Aura bei ihnen"}, -- Monstrance
	[575] = {"575", "Der Eindringling", "{{Slow}} Vergräbt sich in Isaacs Kopf und verschießt 4 zusätzliche verlangsamende Tränen#Durch den erlittenen Schaden kann die Spinne den Kopf verlassen und Feinde jagen"}, -- The Intruder
	[576] = {"576", "Schmutziger Verstand", "Alle Dip-Feinde (kleine Kacke) sind freundlich#Die Zerstörung von Kacke erzeugt 1-4 Dips#Dip-Typ hängt vom Kack-Typ ab#Felsen können durch Kacke ersetzt werden"}, -- Dirty Mind
	[577] = {"577", "Damokles", "Hängt ein Schwert über Isaacs Kopf, das alle Sockel-Items verdoppelt#Verdoppelt nicht die Shop-, Kisten- oder Teufelsdeal-Items#{{Warning}} Nachdem Schaden genommen wurde, besteht eine extrem geringe Chance, dass das Schwert Isaac in jedem Frame sofort tötet"}, -- Damocles
	[578] = {"578", "Gratislimonade", "Erzeugt eine große Pfütze gelben Schleims#Der Schleim verursacht 24 Schaden pro Sekunde"}, -- Free Lemonade
	[579] = {"579", "Geistschwert", "Statt Tränen abzuschießen, schwingt Isaac ein Schwert#{{Damage}} Das Schwert verursacht 3x Isaacs Schaden +3,5 und schwingt so schnell wie der Feuerknopf gedrückt wird#{{Chargeable}} Beim Aufladen erfolgt ein Drehschlag + Projektilschuss#Schießt Projektile mit normalen Schwingungen bei voller Gesundheit#{{Tears}} Tränen beeinflussen die Ladezeit und wie oft ein Projektil bei voller Gesundheit abgefeuert wird"}, -- Spirit Sword
	[580] = {"580", "Roter Schlüssel", "Erzeugt einen roten Raum neben einem normalen Raum, der durch eine Türumrisslinie gekennzeichnet ist#Rote Räume können besondere Räume sein#{{ErrorRoom}} Betreten eines Raums außerhalb der 13x13-Ebenenkarte teleportiert Isaac zum I AM ERROR-Raum"}, -- Red Key
	[581] = {"581", "Psy-Fliege", "Verfolgt und lenkt feindliche Geschosse ab#Verursacht 15 Kontaktschaden pro Sekunde"}, -- Psy Fly
	[582] = {"582", "Wellenmütze", "↑ {{Tears}} +0,75 Schussrate#↓ {{Speed}} -0,03 Geschwindigkeit#Verzerrt den Bildschirm#Dauert länger, um bei jeder Verwendung aufzuladen#Verlassen oder Löschen von Räumen reduziert die Effekte"}, -- Wavy Cap
	[583] = {"583", "Rakete im Glas", "{{Bomb}} +5 Bomben#Das Platzieren einer Bombe beim Schießen feuert eine Rakete in diese Richtung ab"}, -- Rocket in a Jar
	[584] = {"584", "Buch der Tugenden", "{{AngelChance}} +12,5% Engelsraumchance bei Benutzung#Beschwört einen orbitalen Wisphelfer, der spektrale Tränen abfeuert, aber zerstört werden kann#Kann mit einem zweiten active Item kombiniert werden, um spezielle Wisps zu erstellen#{{AngelRoom}} Verwandelt den ersten Teufelsraum in einen Engelsraum#{{AngelRoom}} Ermöglicht das Erscheinen von Engelsräumen, nachdem ein Teufelsdeal angenommen wurde"}, -- Book of Virtues
	[585] = {"585", "Alabaster-Box", "Muss durch das Aufnehmen von Seelenherzen aufgeladen werden, dann beschwört:#{{SoulHeart}} Drei Seelenherzen#{{AngelRoom}} Zwei Engelsraum-Items#{{DevilRoom}} Beschwört nur 2 Seelenherzen und 1 Engelsitem, wenn zuvor ein Teufelsdeal angenommen wurde"}, -- Alabaster Box
	[586] = {"586", "Die Treppe", "Beschwört eine Leiter im ersten Raum jeder Ebene, die zu einem einzigartigen {{AngelRoom}} Engelsraumshop mit Gegenständen und Verbrauchsmaterialien führt"}, -- The Stairway
	[587] = {"587", "", "<Gegenstand existiert nicht>"},
	[588] = {"588", "Sol", "{{BossRoom}} Zeigt den Standort des Bossraums an#{{Timer}} Wenn der Boss besiegt ist, erhältst du für die Ebene:#↑ {{Damage}} +3 Schaden#↑ {{Luck}} +1 Glück#{{Card20}} Die Sonnenwirkung#{{Battery}} Lädt das acitve Item vollständig auf#{{CurseBlind}} Entfernt alle Flüche"}, -- Sol
	[589] = {"589", "Mond", "Fügt jeder Ebene einen zusätzlichen {{SecretRoom}} Geheimraum und {{SuperSecretRoom}} Supergeheimraum hinzu#Jede Ebene erhält einen Geheimraum#{{Timer}} Geheimräume enthalten einen Lichtstrahl, der für die Ebene folgendes gewährt:#↑ {{Tears}} +0,5 Schussrate#↑ {{Tears}} Zusätzliche +0,5 Schussrate ab dem ersten Strahl pro Ebene#{{HalfSoulHeart}} Halbes Seelenherz"}, -- Luna
	[590] = {"590", "Merkur", "↑ {{Speed}} +0,4 Geschwindigkeit#Die meisten Türen bleiben dauerhaft geöffnet"}, -- Mercurius
	[591] = {"591", "Venus", "↑ {{Heart}} +1 Gesundheit#{{Heart}} Heilt 1 Herz#{{Charm}} Verzaubert nahegelegene Feinde"}, -- Venus
	[592] = {"592", "Erde", "↑ {{Damage}} +1 Schaden#Ersetzt Isaacs Tränen durch Steine#Steine verursachen variablen Schaden, können Hindernisse zerstören und haben eine erhöhte Rückstoßkraft"}, -- Terra
	[593] = {"593", "Mars", "Doppeltes Tippen auf eine Bewegungstaste lässt Isaac sprinten#{{Damage}} Während eines Sprints ist Isaac unverwundbar und verursacht 4x seinen Schaden +8#{{Timer}} 3 Sekunden Abklingzeit"}, -- Mars
	[594] = {"594", "Jupiter", "↑ {{EmptyHeart}} +2 Leere Herzcontainer#↓ {{Speed}} -0,3 Geschwindigkeit#{{HalfHeart}} Heilt ein halbes Herz#{{Speed}} Die Geschwindigkeit baut sich bis zu +0,5 auf, während man still steht#{{Poison}} Bewegung setzt Giftwolken frei#{{Poison}} Giftimmunität"}, -- Jupiter
	[595] = {"595", "Saturn", "Das Betreten eines Raums lässt 7 Tränen um Isaac kreisen#Diese Tränen halten 13 Sekunden an und verursachen 1,5x Isaacs Schaden +5#Feindliche Geschosse haben die Chance, um Isaac zu kreisen"}, -- Saturnus
	[596] = {"596", "Uranus", "{{Freezing}} Isaac schießt Eis-Tränen, die Feinde bei ihrem Tod einfrieren#Berühren eines gefrorenen Feindes lässt ihn wegrutschen und in 10 Eissplitter explodieren"}, -- Uranus
	[597] = {"597", "Neptun", "{{Tears}} Kein Schießen baut über 3 Sekunden einen Tränenbonus auf#Der Tränenbonus nimmt ab, wenn Isaac schießt"}, -- Neptunus
	[598] = {"598", "Pluto", "↑ {{Tears}} +0,7 Tränen#Verkleinert Isaac erheblich, sodass er zwischen Objekten hindurchpasst#Projektile können über ihn hinwegfliegen"}, -- Pluto
	[599] = {"599", "Voodoopuppe", "{{CursedRoom}} Beschwört jede Ebene einen zusätzlichen Fluchraum#Verbessert Fluchraum-Layouts und Belohnungen#{{Coin}} Spawnt eine Münze in jedem Fluchraum"}, -- Voodoo Head
	[600] = {"600", "Augentropfen", "↑ {{Tears}} x1,4 Schussrate-Multiplikator für das linke Auge"}, -- Eye Drops
	[601] = {"601", "Akt der Reue", "↑ {{Tears}} +0,7 Tränen#{{EternalHeart}} +1 Ewiges Herz#{{AngelChance}} Ermöglicht das Erscheinen von Engelsräumen, auch nachdem ein Teufelsdeal angenommen wurde#Durch roten Herzschaden wird die Teufels/Engelsraumchance nicht so stark reduziert"}, -- Act of Contrition
	[602] = {"602", "Mitgliedskarte", "{{Shop}} Öffnet in jedem Laden eine Falltür#Die Falltür führt zu einem unterirdischen Laden, der Schmuckstücke, Runen, Karten, besondere Herzen und Gegenstände aus jedem Pool verkauft"}, -- Member Card
	[603] = {"603", "Batteriepaket", "{{Battery}} Spawnt 2-4 Batterien#{{Battery}} Lädt das active Item vollständig auf"}, -- Battery Pack
	[604] = {"604", "Mamas Armband", "Ermöglicht es Isaac, Felsen, TNT, Kacke, freundliche Dips, Gastgeber und andere Hindernisse aufzuheben und zu werfen#Erlaubt das Tragen zwischen Räumen"}, -- Mom's Bracelet
	[605] = {"605", "Die Schaufel", "↑ {{Damage}} x1,35 Schadensmultiplikator für das rechte Auge#{{Timer}} Ruft einen Peeper-Vertrauten für den Raum herbei, der eine Spur aus rotem Schleim hinterlässt"}, -- The Scooper
	[606] = {"606", "Okularriss", "5% Chance, Tränen abzuschießen, die Risse an den Aufschlagstellen erzeugen#{{Luck}} 20% Chance bei 15 Glück#Risse verursachen 3x Isaacs Schaden pro Sekunde und ziehen nahegelegene Feinde, Pickups und Geschosse an"}, -- Ocular Rift
	[607] = {"607", "Gekochtes Baby", "Schießt chaotische Salven von Tränen in alle Richtungen#Verursacht 3,5 oder 5,3 Schaden pro Träne"}, -- Boiled Baby
	[608] = {"608", "Gefrierbaby", "Schießt versteinerte Tränen ab#{{Freezing}} Gefriert Feinde bei ihrem Tod"}, -- Freezer Baby
	[609] = {"609", "Ewiges D6", "Würfelt alle Sockel-Items im Raum neu#Hat eine 25%ige Chance, Gegenstände zu löschen, anstatt sie neu zu würfeln"}, -- Eternal D6
	[610] = {"610", "Vogelkäfig", "Springt auf den Feind, der Isaac im Raum als Erstes Schaden zufügt#Verursacht 45 Schaden und setzt eine Wellenwelle frei#Verfolgt danach Feinde"}, -- Bird Cage
	[611] = {"611", "Kehlkopf", "Isaac schreit, beschädigt und stößt nahegelegene Feinde zurück#Der Schrei wird stärker, je mehr Ladungen der Gegenstand hat"}, -- Larynx
	[612] = {"612", "Verlorene Seele", "Stirbt bei einem Treffer und spawnt am Anfang der nächsten Ebene neu#Wenn sie lebendig zur nächsten Ebene gebracht wird, kann sie spawnt:#{{SoulHeart}} 3 Seelenherzen#{{EternalHeart}} 2 Ewige Herzen#{{TreasureRoom}} Ein Schatzraum-Gegenstand#{{AngelRoom}} Ein Engelsraum-Gegenstand"}, -- Lost Soul
	[613] = {"613", "", "<Gegenstand existiert nicht>"},
	[614] = {"614", "Blutbomben", "↑ {{Heart}} +1 Leben#{{Heart}} Heilt 4 Herzen#{{HalfHeart}} Wenn Isaac keine Bomben hat, kann eine gegen einen halben Herzcontainer platziert werden#Isaacs Bomben hinterlassen roten Schleim#"}, -- Blood Bombs
	[615] = {"615", "Lil Dumpy", "Lenkt einen Feind oder Geschoss ab, kurz bevor Isaac Schaden nehmen würde#Chance, Geschosse in der Nähe abzulenken#Muss nach dem Ablenken berührt werden, um wieder aktiviert zu werden"}, -- Lil Dumpy
	[616] = {"616", "Vogelperspektive", "8% Chance, ein rotes Feuer zu schießen, das feindliche Schüsse blockiert und Kontaktschaden verursacht#{{Luck}} 50% Chance bei 10 Glück#Feuer verschwinden nach dem Blockieren von 4 Schüssen, verursachen 4-mal Schaden oder nach 10 Sekunden"}, -- Bird's Eye
	[617] = {"617", "Magneteisen", "{{Magnetisieren}} 17% Chance, magnetisierende Tränen zu schießen#{{Luck}} 100% Chance bei 5 Glück#Magnetisierte Feinde ziehen nahegelegene Gegenstände, Geschosse und Feinde an"}, -- Lodestone
	[618] = {"618", "Verfaulte Tomate", "{{Bait}} 17% Chance, Tränen zu schießen, die Feinde markieren#{{Luck}} 100% Chance bei 5 Glück#Markierte Feinde werden von anderen Feinden angegriffen"}, -- Rotten Tomato
	[619] = {"619", "Geburtsrecht", "Hat für jeden Charakter eine andere Wirkung"}, -- Birthright
	[620] = {"620", "", "<Gegenstand existiert nicht>"},
	[621] = {"621", "Roter Eintopf", "↑ {{Damage}} +21.6 Schadensmultiplikator#{{Heart}} Vollgesundheit#Der Schadensbonus lässt in 3 Minuten nach#Töten von Feinden während des aktiven Effekts verlängert diesen"}, -- Red Stew
	[622] = {"622", "Genesis", "Entfernt alle von Isaac's Gegenständen und Aufsammlungen#Teleportiert Isaac zu einem Schlafzimmer mit Aufsammlungen und Truhen#Für jeden entfernten Gegenstand kann Isaac zwischen 3 Gegenständen aus demselben Pool wählen#Verlassen des Schlafzimmers teleportiert Isaac zum nächsten Stock"}, -- Genesis
	[623] = {"623", "Scharfer Schlüssel", "{{Key}} +5 Schlüssel#Wirft einen von Isaacs Schlüsseln in die Richtung, in die er schießt#Die geworfenen Schlüssel verursachen Schaden, zerstören Hindernisse und öffnen Türen#Feinde, die mit Schlüsseln getötet werden, können den Inhalt einer Truhe, einschließlich Gegenständen, fallen lassen"}, -- Sharp Key
	[624] = {"624", "Booster-Pack", "{{Card}} Spawnt 5 zufällige Karten"}, -- Booster Pack
	[625] = {"625", "Mega-Pilz", "Macht Isaac riesig und gewährt:#↑ {{Damage}} x4 Schadensmultiplikator#↑ {{Range}} +2 Reichweite#↓ {{Tears}} -1.9 Tränen#Unverwundbarkeit#Fähigkeit, Feinde und Hindernisse zu zermalmen#{{Timer}} Dauert 30 Sekunden und bleibt zwischen Räumen und Stockwerken bestehen"}, -- Mega Mush
	[626] = {"626", "Messerstück 1", "Verwandelt sich beim Kombinieren mit {{Collectible627}} Messerstück 2 in ein werfbares Messer#Das Messer kann eine Tür aus Fleisch öffnen"}, -- Knife Piece 1
	[627] = {"627", "Messerstück 2", "Verwandelt sich beim Kombinieren mit {{Collectible626}} Messerstück 1 in ein werfbares Messer#Das Messer kann eine Tür aus Fleisch öffnen"}, -- Knife Piece 2
	[628] = {"628", "Totenschein", "Teleportiert Isaac auf ein Stockwerk, das jeden Gegenstand im Spiel enthält#Das Auswählen eines Gegenstands aus diesem Stockwerk teleportiert Isaac zurück in den Raum, aus dem er kam"}, -- Death Certificate
	[629] = {"629", "Bot Fliege", "Schießt geschützte Tränen ab, um feindliche Geschosse zu zerstören"}, -- Bot Fly
	[630] = {"630", "", "<Gegenstand existiert nicht>"},
	[631] = {"631", "Fleischermesser", "Teilt alle Feinde im Raum in 2 kleinere Versionen with 40% health#Enemies that naturally split (like Envy) take enough damage to split instead#Deals 25 damage to enemies that can't be split"}, -- Meat Cleaver
	[632] = {"632", "Böser Talisman", "↑ {{Luck}} +2 Glück#Immun gegen {{Brennen}} Verbrennung, {{Verwirrung}} Verwirrung, {{Furcht}} Furcht und {{Vergiftung}} Vergiftungseffekte"}, -- Evil Charm
	[633] = {"633", "Dogma", "↑ {{Speed}} +0.1 Geschwindigkeit#↑ {{Damage}} +2 Schaden#Flug und einmaliger {{HolyMantleSmall}} Heiliger Mantelschild#{{Heart}} Heilt Isaac mit roten und Seelenherzen, wenn er weniger als 6 Herzen hat"}, -- Dogma
	[634] = {"634", "Fegefeuer", "Auf feindlichen Böden entstehen rote Risse#Das Betreten der Risse beschwört suchende explodierende Geister"}, -- Purgatory
	[635] = {"635", "Stiche", "Beschwört einen Begleiter, der sich in Richtung bewegt, in die Isaac schießt#Bei Benutzung tauscht Isaac die Plätze mit dem Begleiter und wird kurzzeitig unverwundbar#Das Teleportieren auf Gegenstände kann diese beschädigen oder zerstören"}, -- Stitches
	[636] = {"636", "R-Taste", "Startet den gesamten Lauf neu#Alle gesammelten Gegenstände, Trinkets, Stats und Aufsammlungen bleiben erhalten#Der Timer wird nicht zurückgesetzt"}, -- R Key
	[637] = {"637", "K.O.-Tropfen", "{{Verwirrung}} 10% Chance, eine Faust zu schießen, die Verwirrung und extremen Rückstoß verursacht#{{Luck}} 100% Chance bei 9 Glück#Feinde erleiden Schaden, wenn sie gegen eine Wand/Hindernis geschleudert werden"}, -- Knockout Drops
	[638] = {"638", "Radiergummi", "Wirft einen Radiergummi, der einen Feind sofort tötet#Verhindert, dass der gelöschte Feind für den Rest des Laufs erscheint#Fügt Bossen 15 Schaden zu#Kann nur einmal pro Stock verwendet werden"}, -- Eraser
	[639] = {"639", "Ekelherz", "{{RottenHeart}} +1 Verdorbenes Herz"}, -- Yuck Heart
	[640] = {"640", "Urne Der Seelen", "Speit einen Flammenstrahl aus#Das Töten eines Feindes fügt der Urne eine Ladung hinzu"}, -- Urn of Souls
	[641] = {"641", "Blutacker", "Erzeugt eine Kette von Tränen hinter Isaac in feindlichen Räumen#Die Tränen verursachen 3,5 Schaden"}, -- Akeldama
	[642] = {"642", "Zauberhaut", "Beschwört einen Gegenstand aus dem aktuellen Gegenstands-Pool des Raums#{{BrokenHeart}} Verwandelt 1 Herzcontainer oder 1 Knochenherz oder 2 Seelenherzen in ein Gebrochenes Herz#{{Warning}} Ersetzt zukünftige Gegenstände, wenn Isaac ihn nicht hält {{ColorSilver}}(33% nach 1 Verwendung, 50% nach 2, 100% nach 3)#Geringere Chance, wenn die Magic Skin auf einem Podest im aktuellen Stockwerk liegt"}, -- Magic Skin
	[643] = {"643", "Offenbarung", "{{SoulHeart}} +2 Seelenherzen#Flug#{{Chargeable}} Aufladbare hochschädliche heilige Strahlen#Ersetzt nicht die Tränen von Isaac"}, -- Revelation
	[644] = {"644", "Trostpreis", "↑ Erhöht die niedrigste Statistik von Isaac aus Geschwindigkeit, Schussrate, Schaden und Reichweite#Spawnt entweder 3 {{Coin}} Münzen, 1 {{Bomb}} Bombe oder 1 {{Key}} Schlüssel, abhängig davon, von welchem Isaac am wenigsten hat"}, -- Consolation Prize
	[645] = {"645", "Tinytoma", "Großes Orbital, das Schüsse blockiert#Verursacht 3,5 Kontakt-Schaden pro Sekunde#Teilt sich in kleinere Versionen auf, nachdem es 3 Treffer genommen hat#Die kleineren Versionen brechen in blaue Spinnen auf#Respawnt 5 Sekunden nach dem vollständigen Verschwinden"}, -- Tinytoma
	[646] = {"646", "Schwefelbomben", "{{Bomb}} +5 Bomben#{{Collectible118}} Isaacs Bomben geben einen 4-Wege-Blutstrahl ab#Die Strahlen verletzen Isaac nicht"}, -- Brimstone Bombs
	[647] = {"647", "4.5 Volt", "Das Abschließen von Räumen lädt active Items nicht mehr auf#Schaden an Feinden füllt langsam die Ladeleiste#Der für jede Ladung benötigte Schaden steigt auf jedem Stockwerk"}, -- 4.5 Volt
	[648] = {"648", "", "<Gegenstand existiert nicht>"},
	[649] = {"649", "Fruchtiger Plum", "Katapultiert sich diagonal durch den Raum und schießt Tränen auf ihrem Weg, die 3 Schaden verursachen#Verursacht 6 Kontakt-Schaden pro Sekunde"}, -- Fruity Plum
	[650] = {"650", "Plum-Flöte", "{{Timer}} Beschwört für 10 Sekunden einen freundlichen Baby Plum im Raum"}, -- Plum Flute
	[651] = {"651", "Stern von Bethlehem", "Bewegt sich langsam vom ersten Raum des Stockwerks zum {{BossRoom}} Bossraum#Bewegt sich schneller, wenn du vor ihm bist, und langsamer, wenn du hinter ihm bist#Im Stehen in seiner Aura gibt es:#↑ {{Tears}} x2,5 Tränenmultiplikator#↑ {{Damage}} x1,8 Schadensmultiplikator#Suchende Tränen#50% Chance, Schaden zu ignorieren"}, -- Star of Bethlehem
	[652] = {"652", "Würfelbaby", "Kann durch Anstoßen bewegt werden#{{Freezing}} Verursacht Langsamkeit, fügt Kontaktschaden zu und friert Feinde ein, die es tötet"}, -- Cube Baby
	[653] = {"653", "Vade Retro", "Das Halten des Gegenstands lässt bei Tod nicht-geisterhafter Feinde kleine rote Geister erscheinen#Das Benutzen des Gegenstands lässt die Geister explodieren#Das Benutzen des Gegenstands tötet auch alle Geisterfeinde (einschließlich Bosse), die weniger als 50% HP haben"}, -- Vade Retro
	[654] = {"654", "Falsches PHD", "{{BlackHeart}} +1 Schwarzes Herz#{{Pill}} Identifiziert alle Pillen#Konvertiert alle guten Pillen in schlechte Pillen#↑ {{Damage}} Das Essen einer Stat-Down-Pille gewährt +0,6 Schaden#{{BlackHeart}} Das Essen anderer schlechter Pillen beschwört ein Schwarzes Herz herbei"}, -- False PHD
	[655] = {"655", "Drehe Zum Gewinnen", "Gewährt passiv ein Orbit, das feindliche Schüsse blockiert und 10,5 Kontaktschaden pro Sekunde verursacht#Das Benutzen des Gegenstands gewährt:#↑ {{Speed}} +0,5 Geschwindigkeit#Erhöht die Rotationsgeschwindigkeit von Orbitalen erheblich"}, -- Spin to Win
	[656] = {"656", "Damokles", "Hängt ein Schwert über Isaacs Kopf, das alle Sockelgegenstände verdoppelt#Verdoppelt keine Gegenstände im Laden, Truhen oder Teufelsraum#{{Warning}} Nach dem Erleiden von Schaden besteht eine extrem geringe Chance, dass das Schwert Isaac in jedem Frame sofort tötet"}, -- Damocles (hidden passive version)
	[657] = {"657", "Vaskulitis", "Feinde explodieren bei Tod in Tränen, die die Effekte von Isaacs Tränen erben"}, -- Vasculitis
	[658] = {"658", "Riesenzelle", "Das Nehmen von Schaden beschwört ein Minisaac herbei#Minisaacs jagen und schießen auf nahe Feinde"}, -- Giant Cell
	[659] = {"659", "Tropicamid", "↑ {{Range}} +2,5 Reichweite#↑ {{Tearsize}} +0,22 Tränengröße"}, -- Tropicamide
	[660] = {"660", "Kartendeutung", "Beschwört zwei Portale im ersten Raum jeder Ebene herbei#Das Verlassen des Raumes lässt die Portale verschwinden#{{Blank}} {{ColorRed}}Rot: {{CR}}{{BossRoom}} Bossraum#{{Blank}} {{ColorYellow}}Gelb: {{CR}}{{TreasureRoom}} Itemraum#{{Blank}} {{ColorBlue}}Blau: {{CR}}{{SecretRoom}} Geheimraum"}, -- Card Reading
	[661] = {"661", "Quints", "Das Töten eines Feindes beschwört einen stationären Begleiter an seiner Stelle herbei#Maximal 5 Begleiter"}, -- Quints
	[662] = {"662", "", "<Gegenstand existiert nicht>"},
	[663] = {"663", "Zahn und Nagel", "1 Sekunde Unverwundbarkeit alle 6 Sekunden#Isaac blinkt kurz, bevor der Effekt ausgelöst wird"}, -- Tooth and Nail
	[664] = {"664", "Vielfraß", "↑ {{Heart}} +1 Gesundheit#{{Heart}} Volle Gesundheit#Essensgegenstände heilen 2 Herzen#Gegenstandspodeste wechseln zwischen ihrem Gegenstand und einem Nahrungsgegenstand#Das Aufnehmen eines Nahrungsgegenstands gewährt:#↑ {{Damage}} Vorübergehend +3,6 Schaden#↑ 2 Dauerhafte Statistikverbesserungen (abhängig von der Nahrung)#↓ {{Speed}} -0,03 Geschwindigkeit"}, -- Binge Eater
	[665] = {"665", "Guppys Auge", "Enthüllt den Inhalt von {{Chest}} Kisten, {{GrabBag}} Säcken, Ladenbesitzern und Kaminen, bevor sie geöffnet oder zerstört werden"}, -- Guppy's Eye
	[666] = {"666", "", "<Gegenstand existiert nicht>"},
	[667] = {"667", "Strohmann", "{{Bomb}} +1 Bombe#{{Player14}} Beschwört Keeper als zweiten Charakter herbei#Wenn er stirbt, beschwört er blaue Spinnen herbei und entfernt dauerhaft Strohmann und jeden Gegenstand, den er aufgenommen hat, aus dem Inventar#{{DevilRoom}} Teufelsraumgegenstände kosten Münzen, solange Strohmann lebt#{{Warning}} Strohmann kann Story-Gegenstände aufnehmen"}, -- Strawman
	[668] = {"668", "Papas Notiz", "Beginnt den Aufstieg#In vorherigen {{TreasureRoom}} Schatz- oder {{BossRoom}} Bossräumen zurückgelassene Glückspillen werden zu {{Card78}} Rissigen Schlüsseln"}, -- Dad's Note
	[669] = {"669", "Wurst", "↑ {{Heart}} +1 Gesundheit#↑ {{Speed}} +0,2 Geschwindigkeit#↑ {{Tears}} +0,5 Tränen#↑ {{Damage}} +0,5 Schaden#↑ {{Range}} +2,5 Reichweite#↑ {{Shotspeed}} +0,16 Schussgeschwindigkeit#↑ {{Luck}} +1 Glück#{{Heart}} Volle Gesundheit#↑ {{AngelDevilChance}} +6,9% Teufels-/Engelsraum-Chance#↑ {{PlanetariumChance}} +6,9% Planetarium-Chance"}, -- Sausage
	[670] = {"670", "Optionen?", "Ermöglicht es Isaac, zwischen zwei verschiedenen Belohnungen für das Leeren eines Raumes zu wählen"}, -- Options?
	[671] = {"671", "Bonbonherz", "↑ Aufsammeln von {{Heart}} Rote Herzen gewährt zufällige dauerhafte Statistikverbesserungen#{{Heart}} Spawnt ein Rotes Herz"}, -- Candy Heart
	[672] = {"672", "Ein Pfund Fleisch", "{{DevilRoom}} Teufelsraumgegenstände kosten Münzen#{{Shop}} Ladenobjekte kosten Herzen#Verbrauchsmaterialien in Läden sind von Stacheln umgeben"}, -- A Pound of Flesh
	[673] = {"673", "Erlösung", "{{DevilRoom}} Das Betreten einer neuen Ebene nach dem Besuch eines Teufelsraums und dem Nichtannehmen von Gegenständen/Abholungen gewährt:#↑ {{Damage}} +1 Schaden#{{SoulHeart}} +1 Seelenherz"}, -- Redemption
	[674] = {"674", "Geistschellen", "Wenn Isaac tödlichen Schaden erleidet, verwandelt er sich in einen Geist, der an seinen toten Körper gekettet ist, und kann mit einem halben Herz weiterkämpfen#Wenn der Geist überlebt, wird Isaac nach 10 Sekunden wiederbelebt#Muss durch das Aufnehmen eines Seelenherzens wieder aufgeladen werden"}, -- Spirit Shackles
	[675] = {"675", "Rissige Kugel", "Beim Einstecken von Schaden:#Entsperrt alle verschlossenen Türen im Raum#Enthüllt einen zufälligen Raum auf der Karte#Zerstört alle getönten und Kriechraum-Felsen"}, -- Cracked Orb
	[676] = {"676", "Leeres Herz", "{{EmptyHeart}} +1 Leeres Herz-Container, wenn zu Beginn einer neuen Ebene 1 Rotes Herz oder weniger vorhanden ist#Keine Wirkung für Charaktere, die keine roten Herzen haben können"}, -- Empty Heart
	[677] = {"677", "Astrale Projektion", "{{Timer}} Beim Einstecken von Schaden in einem nicht geleerten Raum gibt es für den Kampf:#Spektraltränen#Flug#Negiert den nächsten erlittenen Schaden#Stoppt die Zeit für 2 Sekunden#Erhöht die Geschwindigkeit und Schussrate erheblich für 2 Sekunden"}, -- Astral Projection
	[678] = {"678", "Kaiserschnitt", "{{Chargeable}} Ersetzt Isaacs Tränen durch einen Ladeangriff, der homing, spektrale Fötustränen schießt#{{Damage}} Fötustränen verursachen etwa 2,8-fachen Schaden von Isaacs pro Sekunde"}, -- C Section
	[679] = {"679", "Lil Abaddon", "{{Collectible399}} Begleiter, der sich auflädt und einen Maw of the Void-Kreis freisetzt"}, -- Lil Abaddon
	[680] = {"680", "Montezumas Rache", "{{Chargeable}} Das Feuern lädt einen kurzreichweitigen, starken rückwärts gerichteten Strahl auf#Ersetzt nicht Isaacs Tränen"}, -- Montezuma's Revenge
	[681] = {"681", "Lil Portal", "Verursacht Kontaktschaden und fliegt nach vorne#Verbraucht Pickups auf ihrem Weg#Jedes konsumierte Pickup erhöht ihre Größe, ihren Schaden und beschwört eine blaue Fliege herbei#Das Konsumieren von vier Pickups beschwört ein Portal zu einem unerforschten Raum herbei"}, -- Lil Portal
	[682] = {"682", "Wurmfreund", "Taucht manchmal aus dem Boden auf, greift einen Feind an#Gegriffene Feinde erleiden Schaden, werden verlangsamt und können sich nicht bewegen"}, -- Worm Friend
	[683] = {"683", "Knochensporn", "Feinde lassen bei Tod Knochensplitter fallen#Knochen blockieren Projektile und verursachen Kontaktschaden"}, -- Bone Spurs
	[684] = {"684", "Hungrige Seele", "Das Töten eines Feindes hat eine Chance, einen Geist herbeizurufen#Geister jagen Feinde, verursachen Kontaktschaden und explodieren nach 5 Sekunden#Isaac nimmt keinen Schaden von der Explosion"}, -- Hungry Soul
	[685] = {"685", "Glas mit Wisps", "Beschwört eine zufällige Wisp herbei#Beschwört bei jeder Verwendung eine zusätzliche Wisp herbei, bis zu 12"}, -- Jar of Wisps
	[686] = {"686", "Seelenamulett", "↑ Aufsammeln von {{SoulHeart}} Seelenherzen gewährt zufällige dauerhafte Statistikverbesserungen#{{SoulHeart}} Spawnt ein Seelenherz"}, -- Soul Locket
	[687] = {"687", "Freundesfinder", "Beschwört ein zufälliges freundliches Monster herbei, das Isaacs Bewegungen und Angriffe nachahmt"}, -- Friend Finder
	[688] = {"688", "Inneres Kind", "+1 Leben#Nach dem Tod:#Respawnt Isaac im selben Raum mit einem halben Herz#↑ {{Speed}} +0,2 Geschwindigkeit#↑ Massiver Größenrückgang"}, -- Inner Child
	[689] = {"689", "Geflickte Krone", "Gegenstandspodeste wechseln schnell zwischen 5 zufälligen Gegenständen"}, -- Glitched Crown
	[690] = {"690", "Bauchgelee", "Feinde prallen von Isaac ab#50% Chance, Kontaktschaden zu negieren#50% Chance, feindliche Projektile abzulenken"}, -- Belly Jelly
	[691] = {"691", "Heilige Kugel", "Verhindert das Erscheinen von Gegenständen von Qualität {{Quality0}}/{{Quality1}}#Gegenstände von Qualität {{Quality2}} haben eine 33%ige Chance, neu gewürfelt zu werden"}, -- Sacred Orb
	[692] = {"692", "Sanguine Bindung", "Beschwört ein Spikeset im {{DevilRoom}} Teufelsraum herbei#Bei Schaden auf den Spikes gibt es:#35%: Nichts#33%: ↑ {{Damage}} +0,5 Schaden#15%: 6 {{Coin}} Pennys#10%: 2 {{BlackHeart}} Schwarze Herzen#5%: {{DevilRoom}} Zufälliger Teufelsgegenstand#2%: Leviathan-Transformation"}, -- Sanguine Bond
	[693] = {"693", "Der Schwarm", "Gewährt 8 orbitale Fliegen#Das Leeren eines Raumes beschwört eine neue Fliege herbei#Fliegen verwandeln sich nach dem Blockieren eines Schusses in blaue Fliegen"}, -- The Swarm
	[694] = {"694", "Herzschmerz", "↑ {{Damage}} +0,25 Schaden für jedes gebrochene Herz#{{BrokenHeart}} +3 Gebrochene Herzen#{{BrokenHeart}} Jeder tödliche Treffer gewährt +2 Gebrochene Herzen#Isaac stirbt bei 12 Gebrochenen Herzen"}, -- Heartbreak
	[695] = {"695", "Blutiger Windstoß", "Beim Einstecken von Schaden für die Ebene erhalten:#↑ {{Speed}} +0,4 Geschwindigkeit#↓ {{Tears}} x0,5 Feuerratenmultiplikator#↑ {{Tears}} +2 Feuerrate#↑ {{Damage}} +3 Schaden#Schaltet Angriffe auf Nahkampf um#{{Timer}} Jeder Mord erhöht die Dauer um 1 Sekunde"}, -- Bloody Gust
	[696] = {"696", "Heilung", "Isaac ist von einem Halo umgeben#Feinde, die sich zu lange im Halo aufhalten, werden von einem kreuzförmigen Lichtstrahl getroffen#Das Aufnehmen von Schaden erhöht die Größe des Halos für die Ebene"}, -- Salvation
	[697] = {"697", "Verschwindender Zwilling", "Das Betreten eines Bossraums beschwört einen Klon des Bosses herbei#Das Besiegen des Klons beschwört einen zusätzlichen Gegenstand herbei#Der Klon ist langsamer und hat 75% Gesundheit"}, -- Vanishing Twin
	[698] = {"698", "Verdrehtes Paar", "Zwei Begleiter, die Tränen mit denselben Statistiken und Effekten wie Isaac schießen#{{Damage}} Sie verursachen 37,5% von Isaacs Schaden"}, -- Twisted Pair
	[699] = {"699", "Azazels Zorn", "{{Collectible118}} Das Leeren von 4 Räumen feuert beim Betreten des nächsten Raumes einen großen Brimstone-Strahl ab"}, -- Azazel's Rage
	[700] = {"700", "Echo-Kammer", "Die Verwendung einer {{Rune}} Rune, {{Card}} Karte oder {{Pill}} Pille verwendet auch eine Kopie der letzten 3 verwendeten Runen/Karten/Pillen nach dem Aufnehmen von Echo-Kammer"}, -- Echo Chamber
	[701] = {"701", "Isaacs Grab", "Spawnt zu Beginn jeder Ebene eine {{DirtyChest}} Alte Truhe#Alte Truhen müssen mit einem Schlüssel geöffnet werden und können {{SoulHeart}} Seelenherzen, {{Trinket}} Trinkets oder Mamas, Papas und Engelgegenstände enthalten"}, -- Isaac's Tomb
	[702] = {"702", "Racheerfüllter Geist", "Das Einstecken von Schaden beschwört eine orbitale Wisp herbei#Wisps schießen Tränen, blockieren keine Schüsse und verschwinden auf der nächsten Ebene#Maximal 6 Wisps"}, -- Vengeful Spirit
	[703] = {"703", "Esau Jr.", "Wechselt zwischen dem aktuellen Charakter und Esau Jr.#Esau Jr. hat {{BlackHeart}} 3 Schwarze Herzen, {{Damage}} +2 Schaden, Flug und zufällige Gegenstände in Höhe der Anzahl der Gegenstände, die der Spieler das erste Mal verwendet hat#Charaktere haben unabhängige Gegenstände und Gesundheit#{{Warning}} Das Sterben als einer der Charaktere beendet den Lauf"}, -- Esau Jr.
	[704] = {"704", "Berserker!", "{{Battery}} Lädt sich mit zugefügtem Schaden auf#{{Timer}} Für 5 Sekunden erhalten:#↑ {{Speed}} +0,4 Geschwindigkeit#↓ {{Tears}} x0,5 Feuerratenmultiplikator#↑ {{Tears}} +2 Feuerrate#↑ {{Damage}} +3 Schaden#Beschränkt Angriffe auf Nahkampf#{{Timer}} Jeder Mord erhöht die Dauer um 1 Sekunde"}, -- Berserk!
	[705] = {"705", "Dunkle Künste", "{{Timer}} Für 1 Sekunde (oder bis zum Schießen):↑ {{Speed}} +1 Geschwindigkeit#Isaac kann durch Feinde/Projektile hindurchgehen und paralysiert sie#Wenn der Effekt endet, werden paralysierte Feinde beschädigt, paralysierte Projektile entfernt und es entsteht eine Explosion an Isaacs Position#Die Angriffe und Explosionen sind stärker, je mehr Feinde/Projektile getroffen wurden"}, -- Dark Arts
	[706] = {"706", "Abyss", "Verbraucht alle Gegenstandspodeste im Raum und beschwört einen Angriffsfliegen-Begleiter für jeden herbei#Einige Gegenstände beschwören beim Verzehr eine spezielle Fliege"}, -- Abyss
	[707] = {"707", "Abendessen", "↑ {{Heart}} +1 Gesundheit#{{Heart}} Heilt 1 Herz"}, -- Supper
	[708] = {"708", "Tacker", "↑ {{Damage}} +1 Schaden#Alle Tränen von Isaac werden aus dem rechten Auge abgefeuert"}, -- Stapler
	[709] = {"709", "Suplex!", "Isaac sprintet in die Bewegungsrichtung#Ein Sprint in einen Feind oder Boss hebt ihn auf und schmettert ihn zu Boden#Der Schlag verursacht Schaden und erzeugt Wellen von Steinen basierend auf Isaacs Größe#Du bist während des Sprints und Schlags unverwundbar"}, -- Suplex!
	[710] = {"710", "Tasche des Handwerks", "Sammelt bis zu 8 Pickups, die nicht fallengelassen werden können#Die Verwendung des Gegenstands mit 8 Pickups in der Tasche stellt einen Gegenstand her#Die Qualität des Gegenstands basiert auf der Qualität der Pickups"}, -- Bag of Crafting
	[711] = {"711", "Wenden", "Das Betreten eines Raumes mit Gegenstandspodesten zeigt einen geisterhaften zweiten Gegenstand auf den Podesten an#Die Verwendung des Gegenstands wendet den echten und geisterhaften Gegenstand um#Die Verwendung von Wenden nach dem Aufnehmen des ersten Gegenstands ermöglicht es Isaac, den anderen Gegenstand aufzuheben#{{Warning}} Geisterhafte Gegenstände allein auf Podesten verschwinden nach Verlassen des Raumes"}, -- Flip
	[712] = {"712", "Lemegeton", "Beschwört ein Orbitale herbei, das den Effekt eines zufälligen Gegenstands gewährt#Die Gegenstände haben eine 25%ige Chance, aus dem aktuellen Raum-Gegenstandspool und eine 75%ige Chance, aus den Schatz-, Boss- oder Laden-Gegenstandspools zu stammen"}, -- Lemegeton
	[713] = {"713", "Sumptorium", "Entfernt ein halbes Herz und erzeugt einen Klumpen#Klumpen kopieren Isaacs Tränen#Jede Art von Herz erzeugt einen Klumpen mit unterschiedlicher HP, Schaden und Tränenwirkung"}, -- Sumptorium
	[714] = {"714", "Abruf", "Ruft den Körper von The Forgotten aus jeder Entfernung zurück#The Soul is invincible while the Forgotten is returning"}, -- Recall
	[715] = {"715", "Festhalten", "Die Verwendung des Gegenstands, wenn er leer ist, speichert die nächste Kacke darin#Die Verwendung des Gegenstands mit Kacke darin verwendet diese Kacke"}, -- Hold
	[716] = {"716", "Sack Des Keepers", "Beschwört 3 {{Coin}} Münzen und 1 {{Key}} Schlüssel herbei#{{Shop}} Ausgeben von 3 Münzen gewährt entweder:#↑ {{Speed}} +0,03 Geschwindigkeit#↑ {{Damage}} +0,5 Schaden#↑ {{Range}} +0,25 Reichweite"}, -- Keeper's Sack
	[717] = {"717", "Keepers Sippe", "Felsen und andere Hindernisse beschwören beim Zerstören 2 blaue Spinnen herbei#Felsen können gelegentlich in feindlichen Räumen blaue Spinnen beschwören"}, -- Keeper's Kin
	[718] = {"718", "", "<Gegenstand existiert nicht>"},
	[719] = {"719", "Keepers Kiste", "{{Shop}} Beschwört ein zufälliges Shop-Item/Pickup zum Kauf herbei"}, -- Keeper's Box
	[720] = {"720", "Allesglas", "Beschwört Pickups basierend auf der Anzahl der Ladungen herbei#Belohnungen je Ladung:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} Löst bei 12 Ladungen einen mächtigen zufälligen Effekt aus"}, -- Everything Jar
	[721] = {"721", "TMTRAINER", "Bewirkt, dass alle zukünftigen Gegenstände fehlerhaft sind#Fehlerhafte Gegenstände haben völlig zufällige Effekte"}, -- TMTRAINER
	[722] = {"722", "Anima Sola", "Fesselt das nächstgelegene Feind für 5 Sekunden#Gefesselte Feinde können sich nicht bewegen oder angreifen"}, -- Anima Sola
	[723] = {"723", "Spindown-Würfel", "Würfelt alle Gegenstände im Raum neu, indem ihre interne ID um eins verringert wird"}, -- Spindown Dice
	[724] = {"724", "Hyperkoagulation", "{{Heart}} Das Einstecken von Schaden lässt ein halbes oder ganzes rotes Herz fallen, abhängig davon, wie viel Isaac verloren hat#Die Herzen schießen heraus und verschwinden nach 1,5 Sekunden"}, -- Hypercoagulation
	[725] = {"725", "IBS", "Ausreichender Schaden verursacht, dass Isaac rot leuchtet#Lösen des Feuerknopfs, während Isaac leuchtet, bewirkt entweder:#Wirft eine zufällige Kacke#Erzeugt buffenden Schleim#{{Poison}} Fart eine Giftwolke aus#Beschwört 5 lebende Bomben"}, -- IBS
	[726] = {"726", "Hämoptysis", "Doppeltes Antippen einer Feuertaste lässt Isaac Blut niesen#Das Niesen verursacht 1,5x Isaacs Schaden#1 Sekunde Abklingzeit#{{BrimstoneCurse}} Betroffene Feinde erleiden zusätzlichen Schaden durch Brimstone-Strahlen"}, -- Hemoptysis
	[727] = {"727", "Geisterbomben", "{{Bomb}} +5 Bomben#Isaacs Bomben beschwören Geister herbei, die Feinde jagen#Geister verursachen 2x Isaacs Schaden pro Sekunde und explodieren nach 10 Sekunden"}, -- Ghost Bombs
	[728] = {"728", "Gello", "Ein dämonischer Begleiter platzt aus Isaac für den Raum#Der Dämon ahmt Isaacs Tränen, Statistiken und Effekte nach"}, -- Gello
	[729] = {"729", "Enthauptungsangriff", "Wirft Isaacs Kopf in eine Richtung#Der Kopf verursacht Kontaktschaden und schießt Tränen aus der Stelle, an der er landet#Erneutes Verwenden des Gegenstands oder Betreten des Kopfes befestigt ihn wieder"}, -- Decap Attack
	[730] = {"730", "Glasauge", "↑ {{Damage}} +0,75 Schaden#↑ {{Luck}} +1 Glück"}, -- Glass Eye
	[731] = {"731", "Gerstenkorn", "↑ {{Damage}} x1,28 Schadensmultiplikator für das rechte Auge#↑ {{Range}} +6,5 Reichweite für das rechte Auge#↓ {{Shotspeed}} -0,3 Schussgeschwindigkeit für das rechte Auge"}, -- Stye
	[732] = {"732", "Mamas Ring", "↑ {{Damage}} +1 Schaden#{{Rune}} Beschwört eine zufällige Rune oder Seelenstein herbei"}, -- Mom's Ring
}
EID:updateDescriptionsViaTable(repCollectibles, EID.descriptions[languageCode].collectibles)

---------- Modifiers ----------

EID.descriptions[languageCode].birthright ={
	{"Isaac", "", "Alle Gegenstandspodeste wechseln zwischen zwei Optionen"},
	{"Magdalene", "", "↑ {{Heart}} +1 Gesundheit#Die maximale Anzahl der Herzcontainer wird auf 18 erhöht"},
	{"Cain", "", "↑ {{Luck}} +1 Glück#{{ArcadeRoom}} Alle zukünftigen Ebenen enthalten einen verbesserten Arkadenraum (außer Dunkler Raum und Truhe)#{{Collectible46}} Erhöht die Gewinnchancen des Glückspfennigs erheblich"},
	{"Judas", "", "{{Collectible34}} Das Buch Belials wird zu einem passiven Gegenstand ähnlich dem {{Collectible584}} Buch der Tugenden#{{Collectible34}} Gewährt das Buch Belials, wenn Judas es derzeit nicht hält#↑ {{Damage}} Der von ihm gewährte Schadensbonus skaliert mit der Anzahl der Ladungen des active Items, mit dem er kombiniert ist#Gewährt spezielle Effekte für bestimmte active Items"},
	{"???", "", "{{SoulHeart}} Seelenherzen, die durch Gesundheits-Upgrades gewonnen werden, werden verdoppelt"},
	{"Eva", "", "{{Collectible122}} Die Hure von Babylon ist unabhängig von der Gesundheit aktiv#{{Collectible117}} Der Tote Vogel ist immer aktiv"},
	{"Samson", "", "{{Collectible157}} Blutige Wut kann auf jeder Ebene 4-mal ausgelöst werden, bis zu +14 Schaden nach 10 Auslösern"},
	{"Azazel", "", "Azazels Brimstone-Strahl wird deutlich breiter#Erhöht den Schaden nicht"},
	{"Lazarus", "", "↑ Die Wiederbelebung als Lazarus Auferstanden gewährt {{Damage}} +7,2 Schaden#↑ Der Schadensbonus lässt in 60 Sekunden nach#{{Blank}} Das Töten von Feinden, während der Effekt aktiv ist, verlängert ihn"},
	{"Eden", "", "Spawnt 3 zufällige Gegenstände aus zufälligen Gegenstands-Pools#Es kann nur eines genommen werden"},
	{"The Lost", "", "Verhindert, dass für The Lost nutzlose Gegenstände erscheinen#Beispiele: Gegenstände, die nur Gesundheit, Flug, spektrale Tränen verleihen oder bei Schaden aktiviert werden"},
	{"Lazarus Auferstanden", "", "↑ {{Damage}} +7,2 Schaden#Der Schadensbonus lässt in 60 Sekunden nach#Das Töten von Feinden, während der Effekt aktiv ist, verlängert ihn#Der Effekt wird jedes Mal ausgelöst, wenn Lazarus als Lazarus Risen wiederbelebt wird"},
	{"Black Judas", "", "{{Collectible34}} Das Buch Belials wird zu einem passiven Gegenstand ähnlich dem {{Collectible584}} Buch der Tugenden#{{Collectible34}} Gewährt das Buch Belials, wenn Judas es derzeit nicht hält#↑ {{Damage}} Der von ihm gewährte Schadensbonus skaliert mit der Anzahl der Ladungen des active Items, mit dem er kombiniert ist#Gewährt spezielle Effekte für bestimmte active Items"},
	{"Lilith", "", "Familiars sind vor Liliths Gesicht positioniert"},
	{"Keeper", "", "↑ {{CoinHeart}} +1 Gesundheit#Die maximale Anzahl der Münzherz-Container wird auf 4 erhöht"},
	{"Apollyon", "", "{{Collectible477}} Die Verwendung von Void hat die Chance, einen zuvor gelöschten Gegenstand zu spawnen#Entfernt nicht die Statistikboni#Je mehr Gegenstände gelöscht wurden, desto höher ist die Chance, dass bei der Verwendung ein Gegenstand erscheint"},
	{"The Forgotten", "", "Entfernt die Kette, die die Seele an den The Forgotten bindet"},
	{"The Forgotten Soul", "", "Entfernt die Kette, die die Seele an The Forgotten bindet"},
	{"Bethany", "", "{{Battery}} Das Aktivieren eines Gegenstands mit Seelenladungen ist manchmal kostenlos"},
	{"Jacob", "", "Die Figur, die den Gegenstand aufnimmt, erhält Kopien von drei passiven Gegenständen der anderen Figur"},
	{"Esau", "", "Die Figur, die den Gegenstand aufnimmt, erhält Kopien von drei passiven Gegenständen der anderen Figur"},
	{"Tainted Isaac", "", "Fügt 4 passive Gegenstandsslots hinzu#Verbraucht selbst keinen Slot"},
	{"Tainted Magdalena", "", "{{Heart}} Fügt 1 Herzcontainer hinzu, der nicht entleert wird"},
	{"Tainted Kain", "", "Verdoppelt die Menge an Pickups, die beim Aufsammeln eines Gegenstands fallen gelassen werden"},
	{"Tainted Judas", "", "{{Collectible705}} Erhöht die Reichweite, in der Dark Arts Feinde und Tränen trifft"},
	{"Tainted ???", "", "{{PoopPickup}} Erhöht die maximale Anzahl der mitgeführte Kacke auf 29"},
	{"Tainted Eva", "", "{{HalfHeart}} Rote Herzklumpen lassen beim Tod halbe Rote Herzen erscheinen, die nach 2 Sekunden verschwinden"},
	{"Tainted Samson", "", "{{Collectible704}} Das Töten eines Feindes fügt dem Berserk!-Timer 3 Sekunden hinzu anstelle von 1"},
	{"Tainted Azazel", "", "{{Collectible726}} Verdoppelt die Größe des Hemoptysis-Angriffs von Tainted Azazel"},
	{"Tainted Lazarus", "", "Die nicht-aktive Form von Tainted Lazarus erscheint als geisterhafte zweite Figur#Er ist unverwundbar und verursacht 25% Schaden#Beide Formen erhalten den Birthright-Gegenstand"},
	{"Tainted Eden", "", "Alle vor Birthright erhaltenen Gegenstände können nicht mehr umgerollt werden#active Items können erneut umgerollt werden, wenn sie fallen gelassen und wieder aufgenommen werden"},
	{"Tainted Lost", "", "Gewährt ein Extraleben, das den Tainted Lost im selben Raum wiederbelebt und 200 Schaden an nahegelegenen Feinden verursacht"},
	{"Tainted Lilith", "", "{{Collectible728}} Vertraute, die normalerweise Tainted Lilith folgen, folgen stattdessen ihrem Gello#Der Nahkampfangriff erhält +3 Schaden pro vertrautem Freund"},
	{"Tainted Keeper", "", "{{Coin}} Zieht die Münzen, die durch das Besiegen von Feinden fallen gelassen werden, stark an#Keine Auswirkung auf andere Münzen"},
	{"Tainted Apollyon", "", "Heuschrecken beschädigen kontinuierlich Feinde, ohne zurückzukehren, solange die Feuertaste gedrückt wird"},
	{"Tainted Forgotten", "", "{{Collectible714}} Tainted Soul gewinnt die Fähigkeit zur Rückholung, um Tainted Forgotten aus der Ferne zurückzuholen#The Soul is invincible while the Forgotten is returning"},
	{"Tainted Bethany", "", "Spawnt vier zufällige Gegenstandswisps der Qualitäten {{Quality3}} und {{Quality4}} mit deutlich höherer HP als normal"},
	{"Tainted Jacob", "", "Dark Esau teilt sich in zwei, erschafft einen schattenhaften Klon von sich selbst#Beide Esaus laden immer gleichzeitig auf#{{Collectible722}} Die Verwendung von Anima Sola verbindet beide Esaus"},
	{"Dead Tainted Lazarus", "", "Die nicht-aktive Form von Tainted Lazarus erscheint als geisterhafte zweite Figur#Er ist unverwundbar und verursacht 25% Schaden#Beide Formen erhalten den Birthright-Gegenstand"},
	{"Tainted Jacob 2", "", "Dark Esau teilt sich in zwei, erschafft einen schattenhaften Klon von sich selbst#Beide Esaus laden immer gleichzeitig auf#{{Collectible722}} Die Verwendung von Anima Sola verbindet beide Esaus"},
	{"Tainted Forgotten Soul", "", "{{Collectible714}} Forgotten Soul gewinnt die Fähigkeit zur Rückholung, um den Tainted Forgotten aus der Ferne zurückzuholen#The Soul is invincible while the Forgotten is returning"},
}

-- Buffs caused by Binge Eater
-- Note: "#" will be replaced with "#{{Collectible664}} " automatically, in order to add Binge eater icon in front of each buff-bulletpoint
EID.descriptions[languageCode].bingeEaterBuffs = {
	[22] = "↑ {{Tears}} +0,5 Tränen#↑ {{Range}} +2,5 Reichweite#↑ {{Damage}} +3.6 temporärer Schaden#↓ {{Speed}} -0,03 Geschwindigkeit", -- Lunch
	[23] = "↑ {{Tears}} +0,5 Tränen#↑ {{Shotspeed}} +0,2 Schussgeschwindigkeit#↑ {{Damage}} +3.6 temporärer Schaden#↓ {{Speed}} -0,03 Geschwindigkeit", -- Dinner
	[24] = "↑ {{Damage}} +1 Schaden#↑ {{Shotspeed}} +0,2 Schussgeschwindigkeit#↑ {{Damage}} +3.6 temporärer Schaden#↓ {{Speed}} -0,03 Geschwindigkeit", -- Dessert
	[25] = "↑ {{Range}} +2,5 Reichweite#↑ {{Shotspeed}} +0,2 Schussgeschwindigkeit#↑ {{Damage}} +3.6 temporärer Schaden#↓ {{Speed}} -0,03 Geschwindigkeit", -- Breakfast
	[26] = "↑ {{Damage}} +1 Schaden#↑ {{Range}} +2,5 Reichweite#↑ {{Damage}} +3.6 temporärer Schaden#↓ {{Speed}} -0,03 Geschwindigkeit", -- Rotten Meat
	[456] = "↑ {{Damage}} +1 Schaden#↑ {{Luck}} +1 Glück#↑ {{Damage}} +3.6 temporärer Schaden#↓ {{Speed}} -0,03 Geschwindigkeit", -- Midnight Snack
	[346] = "↑ {{Shotspeed}} +0,2 Schussgeschwindigkeit#↑ {{Luck}} +1 Glück#↑ {{Damage}} +3.6 temporärer Schaden#↓ {{Speed}} -0,03 Geschwindigkeit", -- A Snack
	[707] = "↑ {{Tears}} +0,5 Tränen#↑ {{Luck}} +1 Glück#↑ {{Damage}} +3.6 temporärer Schaden#↓ {{Speed}} -0,03 Geschwindigkeit", -- Supper
}

-- Buffs caused by Book of Belial with Judas' Birthright
-- Note: "#" will be replaced with "#{{Collectible34}} " automatically, in order to add Book of Belial icon in front of each buff-bulletpoint
EID.descriptions[languageCode].bookOfBelialBuffs = {
	[40] = "Ruft auch den Effekt von {{Collectible35}} Necronomicon hervor", -- Kamikaze!
	[126] = "Ruft auch den Effekt von {{Collectible35}} Necronomicon auf", -- Razor Blade
	[127] = "↑ {{Damage}} +2 Schaden für den nächsten Stock", -- Forget me Now
	[133] = "↑ {{Damage}} +0,5 Schaden", -- Guppy's Paw
	[135] = "Vorübergehend ↑ {{Damage}} +0,66 Schaden pro Verwendung", -- IV Bag
	[147] = "Die Axt hat eine erhöhte Haltbarkeit und Rückstoß, kann schneller verwendet werden, setzt Feinde in {{Burning}} Brand und lässt mehr Pickups fallen, wenn Kacke und Hindernisse zerstört werden", -- Notched Axe
	[186] = "Ruft auch den Effekt von {{Collectible126}} Razor Blade auf", -- Blood Rights
	[282] = "Hinterlässt eine Feuerspur, die Kontakt-Schaden verursacht und Feinde in {{Burning}} Brand setzt", -- How to Jump
	[290] = "Die Verwendung des Gegenstands verbraucht ein Herz, gewährt einen {{Damage}} Schadensbonus und hinterlässt rotes Glibber auf dem Boden", -- The Jar
	[295] = "Hat eine Chance, den Effekt von {{Collectible555}} Golden Razor zu aktivieren", -- Magic Fingers
	[297] = "Gewährt dauerhaft einen dämonischen Begleiter zusätzlich zu den regulären Belohnungen", -- Pandora's Box
	[323] = "Schießt stattdessen 10 Tränen ab, die durchdringend + spektral sind und einen Schadensbonus haben", -- Isaac's Tears
	[326] = "Statt Licht zu erzeugen, hast du eine feurige Aura, während du unverwundbar bist#Vorübergehender {{Damage}} Schadensbonus und aktiviert den Effekt von {{Collectible35}} Necronomicon bei perfektem Block", -- Breath of Life
	[352] = "Aktiviert {{Collectible34}} Das Buch von Belial, wenn es zerbrochen ist#Schadensbonus bleibt bestehen, bis das Geschütz repariert ist", -- Glass Cannon
	[475] = "Respawnt Judas als Dark Judas, wenn er ein Extraleben hat", -- Plan C
	[482] = "Ersetzt das zuletzt erhaltene Item durch {{Collectible51}} Pentagramm, anstatt es zu entfernen", -- Clicker
	[487] = "Zusätzliches ↑ {{Damage}} +0,5 Schaden", -- Potato Peeler
	[536] = "Für jeden geopferten Vertrauten:#↑ {{Damage}} +10,8 Schaden, der langsam verschwindet", -- Sacrificial Altar
	[555] = "Fügt allen Feinden im Raum Schaden zu#Feinde, die dadurch getötet werden, können 1-2 Pennys fallen lassen", -- Golden Razor
	[577] = "Permanent ↑ {{Damage}} Schadenssteigerung", -- Damocles
	[582] = "Permanent ↑ {{Damage}} Schadenssteigerung basierend auf der höchsten Anzahl an Stapelungen des Effekts des Items", -- Wavy Cap
	[585] = "Ändert die Auszahlung auf 2 Schwarze Herzen und 1 Devil Deal Item#Wird zu 3 Herzen und 2 Items, wenn ein Devil Deal angenommen wurde", -- Alabaster Box
	[622] = "Gewährt ein kostenloses {{Collectible51}} Pentagramm", -- Genesis
	[623] = "Ruft auch den Effekt von {{Collectible126}} Razor Blade auf", -- Sharp Key
	[635] = "Erzeugt eine {{Collectible705}} Dark Arts-Linie zwischen Judas und Stitches", -- Stitches
	[640] = "Startet einen {{Collectible118}} Brimstone-Strahl anstelle davon", -- Urn of Souls
	[642] = "↑ {{Damage}} x1,4 Schadensmultiplikator#↑ {{Damage}} +1 Schaden", -- Magic Skin
	[653] = "Geister suchen Feinde auf", -- Vade Retro
	[685] = "Spawnt {{Collectible292}} Satanic Bible-Wisps#{{DevilChance}} +10% Devil Room Chance pro Wisp", -- Jar of Wisps
	[705] = "Temporärer ↑ {{Damage}} Schadensbonus für jeden getroffenen Feind/Projektil", -- Dark Arts
	[710] = "Das Aufsammeln von {{Heart}} Rote Herzen hat die Chance, sie durch ein {{BlackHeart}} Schwarzes Herz zu ersetzen", -- Bag of Crafting
	[729] = "Solange der Kopf abgetrennt ist:#↑ {{Tears}} x3 Feuerratenmultiplikator#↑ {{Damage}} +2 Schaden", -- Decap Attack
}

EID.descriptions[languageCode].BookOfVirtuesWispTexts = {
	-- values inside {} brackets will be replaced with text parts below
	-- Wisp texts are affected by the PluralizeFunction (ab+ file)
	-- The placeholder therefore can be used in all parts that make up the wisp descriptions
	StatDescription = "{{Heart}} {health} {{Damage}} {damage}",	-- {health} will be replaced with the health text, {damage} with the damage text or the "CantShoot" text
	Health = "{1} Leben", 		-- {1} will be replaced with the health
	Damage = "{1} DPS",				-- {1} will be replaced with the calculated damage
	Damage2 = "dmg", -- prepend text for damage multiplier based on proc chance
	CantShoot = "Schießt nicht!",
	Shotspeed = "{1}% Schussgeschwindigkeit", 				-- {1} will be replaced with the shot speed changes in %
	Chance = " ({1}% Chance)",					-- {1} will be replaced with the chance
	SingleRoom = "Einzelraum-Wisp{plural_s}",
	NoWisps = "Kein Wisp",
	Ring = {
		[-1] = "{amount} stationäre{singular_r} Wisp{plural_s}",
		[0] = "{amount} innere{singular_r} Ring-Wisp{plural_s} {{InnerWisp}}",
		[1] = "{amount} mittlere{singular_r} Ring-Wisp{plural_s} {{MiddleWisp}}",
		[2] = "{amount} äußere{singular_r} Ring-Wisp{plural_s} {{OuterWisp}}",
	},
}

-- Old table that now is used to store additional information and effects for Book of Virtues Wisps
EID.descriptions[languageCode].bookOfVirtuesWisps = {
	[35] = "{{Collectible35}} Necronomicon-Effekt beim Zerstören", -- The Necronomicon
	[37] = "Wirft gestreute lenkbare Bomben beim Zerstören", -- Mr. Boom
	[38] = "Ungenaue Tränen", -- Tammy's Head
	[40] = "Explodiert beim Zerstören", -- Kamikaze!
	[47] = "Schießt 3 explosive Tränen zum Fadenkreuz bei Verwendung", -- Doctor's Remote
	[49] = "Feuert bei Verwendung einen Strahl ab", -- Shoop da Whoop!
	[56] = "Wisp tropft gelbes Kriechen", -- Lemon Mishap
	[58] = "Immun gegen Geschosse#Immun gegen Schaden während {{Collectible58}}-Effekt", -- Book of Shadows
	[65] = "Lässt eine Trollbombe fallen beim Zerstören", -- Anarchist Cookbook
	[66] = "{{Slow}} Verlangsamt Gegner für 3 Sekunden beim Zerstören", -- The Hourglass
	[77] = "Zusätzlicher Kontakt-Schaden", -- My Little Unicorn
	[78] = "Beschwört eine Heuschrecke für den Raum beim Zerstören", -- Book of Revelations
	[85] = "Lässt eine {{Card}}-Karte fallen beim Zerstören", -- Deck of Cards
	[97] = "Beschwört 1 von 8 Wisps:#{{Collectible65}}{{Collectible42}}{{Collectible85}}{{Collectible102}}{{Collectible37}}{{Collectible177}}{{Collectible49}}{{Collectible45}}#{{Warning}} Explosive Effekte sind wahrscheinlich", -- The Book of Sin
	[102] = "Beschwört 1 von 6 Wisps:#normale Tränen, die beim Zerstören eine feindliche Spinne beschwören oder Chance auf Gift, Versteinern, Verwirrung, Verbrennen, Trollbomben-Tränen#Alle 6 lassen beim Zerstören eine {{Pill}}-Pille fallen", -- Mom's Bottle of Pills
	[105] = "+1 Wisp pro umgerolltem Gegenstand", -- The D6
	[111] = "{{Poison}} Giftiger Furz beim Zerstören", -- The Bean
	[123] = "Zufällige Tränen", -- Monster Manual
	[124] = "Beschwört den Wisp des imitierten Gegenstands", -- Dead Sea Scrolls
	[130] = "Stürmt in die Richtung, in die Isaac schießt", -- A Pony
	[137] = "+1 Wisp pro detonierte Bombe#Tränen des Wisps können auch ferngezündet werden", -- Remote Detonator
	[145] = "Wisps werden anstelle von Fliegen beschworen#Beschwört eine blaue Fliege beim Zerstören", -- Guppy's Head
	[147] = "Chance, Dip-Wisps aus Kacke und 1 von 5 Mineral-Wisps aus Felsen zu beschwören:#{{Collectible132}} Kohle, {{Collectible201}} Eisen, {{Collectible202}} Gold, {{Collectible68}} Rotstein, {{Collectible415}} Diamant", -- Notched Axe
	[160] = "Ruft bei Berührung einen Lichtstrahl herbei", -- Crack the Sky
	[166] = "Zerstört alle Pickups im Raum, mit einer Chance, für jeden eine zufällige Wisp zu beschwören", -- D20
	[175] = "Wisps öffnen verschlossene Truhen/Türen bei Berührung, einschließlich der Türen zum Mega Satan, Aufstieg und Leichnam#Wisps spenden sich selbst an {{KeyBeggar}} Schlüsselmeister", -- Dad's Key
	[177] = "Beschwört einen Wisp basierend auf der gewonnenen Belohnung", -- Portable Slot
	[263] = "Lässt eine {{Rune}} Rune fallen beim Zerstören", -- Clear Rune
	[283] = "Rerollt alle Wisps und beschwört 1 zufälligen Wisp herbei#Rerollt nicht Book of Virtues", -- D100
	[284] = "Entfernt alle Wisps und beschwört einen zufälligen Wisp für jeweils 2 besessene Gegenstände herbei#Rerollt nicht Book of Virtues", -- D4
	[285] = "10% Chance auf D10-Effekt-Tränen", -- D10
	[286] = "Beschwört eine {{Card}} Karte herbei, wenn zerstört", -- Blank Card
	[287] = "{{Collectible675}} Cracked Orb-Effekt beim Zerstören", -- Book of Secrets
	[288] = "Anstelle von Spinnen werden Wisps beschworen#Beschwört eine blaue Spinne herbei, wenn zerstört", -- Box of Spiders
	[290] = "Erzeugt pro Herz einen Wisp anstelle sie als Pickups fallen zu lassen#Chance, eine {{HalfHeart}} halbe Rote Herz zu beschwören, wenn zerstört", -- The Jar
	[291] = "Beschwört einen zusätzlichen Wisp pro weggespültem Feind", -- Flush!
	[292] = "+10% {{AngelDevilChance}} Devil/Angel Room Chance pro satanischem Bibel-Wisp", -- Satanic Bible
	[293] = "Feuert einen {{Collectible118}} Brimstone-Strahl in 4 Richtungen ab, wenn zerstört", -- Head of Krampus
	[294] = "Butter Bean-Effekt beim Zerstören", -- Butter Bean
	[295] = "Chance, eine {{Coin}} Münze fallen zu lassen, wenn zerstört", -- Magic Fingers
	[296] = "Kann mit {{Heart}} roten Herzen geheilt werden kann", -- Converter
	[297] = "Beschwört 0-8 Wisps, abhängig vom Stockwerk", -- Pandora's Box
	[298] = "Immun gegen Berührungsschaden#Verursacht keinen Berührungsschaden, es sei denn, Einhorn-Stumpf oder ein ähnlicher Effekt ist aktiv", -- Unicorn Stump
	[323] = "3 Sekunden Lebensdauer", -- Isaac's Tears
	[324] = "{{Collectible570}} Playdough Cookie-Tränen", -- Undefined
	[325] = "Bogenschuss-Clustertränen", -- Scissors
	[326] = "Beschwört 4 Wisps bei perfektem Block", -- Breath of Life
	[347] = "{{Collectible245}} 20/20-Tränen#Dupliziert alle anderen Wisps", -- Diplopia
	[348] = "Beschwört eine {{Pill}} Pille herbei, wenn zerstört", -- Placebo
	[349] = "50% Chance, eine {{Coin}} Münze fallen zu lassen, wenn zerstört", -- Wooden Nickel
	[351] = "Sendet beim Gebrauch eine Felswelle aus#Versteinert + {{Poison}} Giftfurz beim Zerstören", -- Mega Bean
	[352] = "Alle Glass Cannon Wisps werden zerstört, wenn einer zerstört wird", -- Glass Cannon
	[357] = "Dupliziert alle Wisps für den Raum", -- Box of Friends
	[382] = "Freundliche Gegner beschwören je nach ihren Angriffen einen von 4 Wisps herbei, mit normalen, lenkenden, explosiven oder Brimstone-Tränen beim Tod#Dupliziert alle anderen Wisps", -- Friendly Ball
	[383] = "Tränen des Wisps können detoniert werden und verwandeln sich in 6 von Isaacs Tränen#Explodiert in Isaacs Tränen, wenn zerstört", -- Tear Detonator
	[386] = "5% Chance, dass Tränen Felsen, Urnen, Schädel oder Pilze umrollen", -- D12
	[396] = "Jedes Portal hat 1 Wisp", -- Ventricle Razor
	[406] = "Zufälliger Schaden und Feuerrate", -- D8
	[421] = "{{Charm}} Charm-Furz beim Zerstören", -- Kidney Bean
	[422] = "Beschwört alle Wisps neu herbei, die im vorherigen Raum zerstört wurden", -- Glowing Hourglass
	[427] = "Springt im Raum herum und explodiert, wenn von Isaac getroffen#Kann keinen Berührungsschaden verursachen", -- Mine Crafter
	[434] = "Anstelle von Fliegen werden Wisps beschworen#Bis zu 5 Fliegen ergeben 1 Wisp mit erhöhter Gesundheit und Schaden", -- Jar of Flies
	[437] = "D7-Effekt, wenn er zum ersten Mal getroffen wird", -- D7
	[441] = "{{Chargeable}} Aufladbare Brimstone-Tränen#Schießt kontinuierlich während eines Mega-Blasts", -- Mega Blast
	[476] = "Beschwört einen zweiten Wisp, wenn keine Aufnahme dupliziert wurde", -- D1
	[477] = "Beschwört die Wisps aller absorbierten Aktivgegenstände herbei#Beschwört selbst keinen Wisp herbei", -- Void
	[478] = "Pausiert alle Feinde und Schüsse für 3 Sekunden beim Zerstören", -- Pause
	[479] = "Chance, eine {{Trinket}} Trinket herbeizubeschwören, wenn zerstört", -- Smelter
	[480] = "Erhöhte LP für jeden umgewandelten Pickup#Beschwört nur einen Wisp herbei, wenn mindestens ein Pickup umgewandelt wurde", -- Compost
	[481] = "5% Chance, dass Tränen Feinde in zufällige Wisps verwandeln", -- Dataminer
	[482] = "Beschwört einen zufälligen Wisp herbei", -- Clicker
	[483] = "Lässt eine goldene Trollbombe fallen beim Zerstören", -- Mama Mega!
	[484] = "Wait What?-Effekt beim Zerstören", -- Wait What?
	[485] = "Alle Crooked Penny Wisps werden zerstört oder dupliziert, wenn einer beschädigt wird", -- Crooked Penny
	[486] = "Chance, dass Isaac keinen Schaden nimmt und dafür zerstört wird", -- Dull Razor
	[487] = "Unzerstörbarer, permanenter Wisp#Verfolgt Feinde, um sie zu beschießen#Blockiert keine Schüsse und verursacht keinen Berührungsschaden", -- Potato Peeler
	[488] = "Beschwört den Wisp des nachgeahmten Gegenstands herbei (zufälliger Wisp, wenn kein Aktivgegenstand)", -- Metronome
	[489] = "Zusätzlicher Effekt basierend auf dem nachgeahmten Würfel", -- D Infinity
	[490] = "Beschwört einen zufälligen Wisp herbei#Beschwört sich nach dem Leeren eines Raums neu, wenn zerstört", -- Eden's Soul
	[504] = "Gezielte Tränen", -- Brown Nugget
	[507] = "Chance, bei einem Kill einen Wisp zu beschwören", -- Sharp Straw
	[510] = "{{Collectible229}} Monstro's Lung, {{Collectible268}} Rotten Baby, {{Collectible87}} Loki's Horns oder {{Collectible118}} Brimstone-Tränen", -- Delirious
	[515] = "Beschwört einen zufälligen Wisp herbei#Beschwört sich nach dem Leeren eines Raums neu, wenn zerstört", -- Mystery Gift
	[516] = "Tränen schießen in 8 Richtungen wie ein Sprinkler", -- Sprinkler
	[521] = "Dreifachschuss#Der Kauf von etwas zerstört alle Coupon-Wisps", -- Coupon
	[522] = "Gefangene Projektile verwandeln sich in Wisps", -- Telekinesis
	[523] = "Wisp wird nur beim Ablegen von Gegenständen beschworen#Beschwört einen zufälligen Pickup beim Zerstören", -- Moving Box
	[527] = "Beim Raumklar öffnen Wisps Truhen/Türen", -- Mr. ME!
	[536] = "Wandelt alle Wisps in {{HalfHeart}} halbe Rote Herzen um", -- Sacrificial Altar
	[545] = "Beschwört einen freundlichen Bony herbei, wenn zerstört", -- Book of the Dead
	[550] = "10% Chance, dass Tränen dazu führen, dass Mom auf den Feind stampft", -- Broken Shovel
	[552] = "10% Chance, dass Tränen dazu führen, dass Mom auf den Feind stampft", -- Mom's Shovel
	[556] = "Kurzreichweite {{Collectible118}} Brimstone-Tränen", -- Sulfur
	[557] = "↑ {{Luck}} +0,2 Glück pro Fortune Cookie-Wisp", -- Fortune Cookie
	[578] = "Wisp tropft gelbes Creep", -- Free Lemonade
	[580] = "Chance, Rote Türen zu erstellen, wenn ein neuer Raum betreten wird", -- Red Key
	[582] = "Maximal 1 Wavy Cap-Wisp", -- Wavy Cap
	[584] = "Kein Nutzen bei mehreren Kopien", -- Book of Virtues
	[604] = "Beschwört 3 Wisps herbei, wo etwas landet", -- Mom's Bracelet
	[609] = "Nur 50% Wahrscheinlichkeit, einen unbesiegbaren Wisp herbeizubeschwören#50% Chance, dass alle Eternal D6-Wisps beim Gebrauch zerstört werden", -- Eternal D6
	[611] = "Gesundheits- und Schadenssteigerung basierend auf Ladungen", -- Larynx
	[622] = "Ersetzt alle Wisps mit 3 normalen Wisps", -- Genesis
	[631] = "Teilt alle Wisps in der Hälfte (halbiert den Schaden)#Wisps werden zerstört, wenn sie zum dritten Mal geteilt werden", -- Meat Cleaver
	[638] = "Immun gegen Projektile#Löscht Nicht-Boss-Gegner bei Berührung aus", -- Eraser
	[639] = "Beschwört blaue Fliegen herbei, anstatt Tränen zu schießen", -- Yuck Heart
	[640] = "Chance für blaue Flammentränen", -- Urn of Souls
	[650] = "Wenn Baby Plum diagonal springt, sind alle Plum Flute-Wisps unbesiegbar und tun dies ebenfalls", -- Plum Flute
	[653] = "Rote Geister können Tränen schießen", -- Vade Retro
	[655] = "Temporäre Wisps während der Verwendung", -- Spin to Win
	[685] = "Verdreifacht die beschworenen Wisps", -- Jar of Wisps
	[687] = "Beschwört einen zufälligen Wisp herbei", -- Friend Finder
	[705] = "Einzelner Raum Wisp pro getötetem Feind", -- Dark Arts
	[709] = "Beschwört 3 Wisps herbei, wo Isaac landet", -- Suplex!
	[710] = "Beschwört einen zufälligen Wisp beim Herstellen", -- Bag of Crafting
	[712] = "Die Wisp-Items schießen homing Tränen", -- Lemegeton
	[719] = "20% Chance, dass Feinde beim Töten eine {{Coin}} Münze fallen lassen", -- Keeper's Box
	[720] = "Beschwört einen zufälligen Wisp herbei", -- Everything Jar
	[722] = "Orbitiert um den geketteten Feind und schießt auf ihn#Wisp stirbt, wenn der Feind stirbt", -- Anima Sola
	[723] = "Beschwört einen zufälligen Wisp herbei und würfelt alle Wisps in den Typ um", -- Spindown Dice
	[728] = "Alle Wisps umkreisen Gello, solange er aktiv ist", -- Gello
}

---------- Abyss Locust description parts ----------
EID.descriptions[languageCode].AbyssTexts = {
	-- values inside {} brackets will be replaced with text parts below
	-- Abyss texts are affected by the PluralizeFunction (ab+ file)
	InfoText = "Eine {size}{speed}Heuschrecke ({dmg})",
	InfoTextPlural = "{amount} {size}{speed}Heuschrecken ({dmg})", -- Can be used by translators to provide a pluralized version of the InfoText
	Chance = " ({1}% Chance)", -- {1} will be replaced with the chance
	SpeedSlow = "schnelle ", -- Speed < 1
	SpeedFast = "langsame ", -- Speed > 1
	SpeedDash = "flotte ", -- Speed >= 6
	SizeSmall = "kleine ", -- Size < 1
	SizeBig = "große ", -- Size > 1
	DamageMult = "{1}x Isaac's Schaden", -- {1} will be replaced with the calculated damage multiplier 
}

---------- Abyss Locust special effects ----------
--- Special locust effects that dont correspond to TearFlags.
--- Displays an icon in front of the description that shows an item with the same effect
EID.descriptions[languageCode].AbyssLocustEffects = {
	[0] = "{{Bomb}} Explodiert, wenn es Schaden verursacht",
	[1] = "{{QuestionMark}} Zufälliger Heuschrecken Effekt",
	-- 2 = Multiple locusts act like one. Uninteresting info for the player in my opinion
	[3] = "{{Collectible284}} Feind neu würfeln, wenn es Schaden verursacht",
	[4] = "{{Collectible35}} Fügt allen Feinden Schaden zu, wenn es Schaden verursacht",
	[5] = "{{Collectible638}} Löscht einen Gegner aus, wenn es Schaden verursacht",
	[6] = "{{Collectible114}} Messer dreht sich um Heuschrecke, wenn es angreift",
	[7] = "{{Collectible611}} Nutzt Kehlkopfschrei, der Gegner in der Nähe verletzt",
	[8] = "{{Collectible399}} Beschwört einen \"Schlund der Leere\" Ring",
	[9] = "{{Collectible522}} Erhält beim Angriff eine Aura, die Geschosse abwehrt",
	[10] = "{{Collectible447}} Erzeugt giftigen Furz, wenn es Schaden verursacht",
	[11] = "{{Collectible447}} Erzeugt einen Furz, wenn es Schaden verursacht",
	[12] = "{{Collectible118}} Spawns an anti-gravity brimstone, wenn es Schaden verursacht",
	[13] = "{{Collectible317}} Erzeugt grüne Pfütze, wenn es Schaden verursacht",
	[14] = "{{Collectible56}} Erzeugt gelbe Pfütze, wenn es Schaden verursacht",
	[15] = "{{Collectible214}} Erzeugt rote Pfütze, wenn es Schaden verursacht",
	[16] = "{{Collectible178}} Erzeugt blaue Pfütze, wenn es Schaden verursacht",
	[17] = "{{Collectible420}} Erzeugt zufällig ein Pentagramm",
	[18] = "{{Collectible144}} Erhält +0.25 Schaden für jedes konsumiertes Pickup. Maximal 25 Pickups",
}


-- list of Tear flag descriptions used for Abyss locust effect description
EID.descriptions[languageCode].TearFlagNames = {
	[0] = "gespensterhaft",                 -- Ouija board type tear (goes thru obstacles)
    [1] = "durchdringend",                 -- Cupid's arrow type tear (goes thru enemy)
    [2] = "zielsuchend",                   -- Spoon bender type tear (homes to enemy)
    [3] = "Verlangsamung",                  -- Spider bite type tear (slows on contact)
    [4] = "Gift",                   -- Common cold type tear (poisons on contact)
    [5] = "versteinern",                  -- Mom's contact type tear (freezes on contact)
    [6] = "spaltet sich",                    -- Parasite type tear (splits on collision)
    [7] = "wächst durch Reichweite",            -- Lump of coal type tear (grows by range)
    [8] = "Bumerang",                -- My reflection type tear (returns back)
    [9] = "Ausdauernd",               -- Polyphemus type tear (Damages the entity and if the damage is more then enemy hp it continues with less damage
    [10] = "Schlängelbewegung",         -- Wiggle worm type tear (wiggles)
    [11] = "Beschwört Fliege bei Treffer",        -- Mulligan type tear (creates fly on hit)
    [12] = "Explosiv",               -- IPECAC type tear (explodes on hit)
    [13] = "bezaubernd",                -- Mom's Eyeshadow tear
    [14] = "verwirrend",               -- Iron Bar tear
    [15] = "Gegner lassen Herzen fallen",     -- These tears cause enemy to drop hearts if killed (33% chance)
    [16] = "Kreist um Spieler",     -- Used for Little Planet (orbit arounds the player)
    [17] = "Anti-Gravitation",     -- Anti gravity type tear (floats in place for some time before finally moving) (unset after first update)
    [18] = "Aufteilung in 4 bei Treffer",     -- Splits into 4 smaller tears if it hits the ground
    [19] = "Abprallen von Feinden",       -- Bounce off of enemies, walls, rocks (Higher priority than PERSISTENT & PIERCING)
    [20] = "Angst",                    -- Mom's Perfume type tear of fear (fear on contact)
    [21] = "Verkleinernd",                  -- Proptosis tears start large and shrink
    [22] = "Brennend",                    -- Fire Mind tears cause Burn effect on enemies
    [23] = "Feind und Pickup-Magnet", -- Attracts enemies and pickups
    [24] = "Rückstoß",               -- Tear impact pushes enemies back further
    [25] = "pulsierend",               -- Makes the tear pulse
    [26] = "Spiralbewegung",         -- Makes the tear path spiral
    [27] = "ovale Form",              -- Makes the tear oval in the direction of travel
    [28] = "Traurige Bombe",                -- Used by Bombs (Sad Bomb)
    [29] = "Po Bombe",               -- Used by Bombs (Butt Bomb)
    [30] = "Eckige Bewegung",         -- Used for Hook Worm
    [31] = "Schaden verursachende Aura",     -- Used for GodHead (they will have a glow around them)
    [32] = "Verlangsamung + färbt Feind Schwarz", -- Used for Gish player tears (to color enemy black on slowing)
    [33] = "Erzeugt grüne Pfütze bei Treffer", -- Mysterious Liquid tears spawn damaging green creep when hit
    [34] = "Geschützt",                -- Lost Contact tears, block enemy projectiles
    [35] = "Glitzer Bombe",            -- Used by Bombs (Glitter Bomb)
    [36] = "Streuungsbombe",            -- Used for Scatter bombs
    [37] = "klebrig",                  -- Used for Sticky bombs and Explosivo tears
    [38] = "Endlosschleife um den Bildschirm",     -- Tears loop around the screen
    [39] = "Erzeugt Lichtstrahl bei Treffer", -- Create damaging light beam on hit
    [40] = "Erzeugt Geld bei Treffer",        -- Used by Bumbo, spawns a coin when tear hits
    [41] = "Erzeugt schwarzes Herz bei Mord",    -- Enemy drops a black hp when dies
    [42] = "Traktorstrahl",            -- Tear with this flag will follow parent player's beam
    [43] = "Feinde schrumpfen",          -- God's flesh flag to minimize enemies
    [44] = "Erzeugt Geld bei Treffer",      -- Greed coin tears that has a chance to generate a coin when hit
    [45] = "Kreuz Bombe",              -- Bomber Boy
    [46] = "Große Spiralbewegung",     -- Ouroboros Worm, big radius oscilating tears
    [47] = "Dauerhafte Verwirrung bei Treffer",   -- Glaucoma tears, permanently confuses enemies
    [48] = "Popel",                  -- Booger tears, stick and do damage over time
    [49] = "Erzeugt Spinne oder Fliege bei Treffer",               -- Egg tears, leave creep and spawns spiders or flies
    [50] = "Kann Steine bei Treffer zerstören",            -- Sulfuric Acid tears, can break grid entities
    [51] = "Erzeugt 1-2 Knochensplitter bei Mord",                    -- Bone tears, splits in 2
    [52] = "durchdringend + anschließend doppelter Schaden und verfolgen", -- Belial tears, piecing tears gets double damage + homing
    [53] = "Feinde bei Berührung in Gold verwandeln",           -- Midas touch tears
    [54] = "Erzeugt kreisförmig 10 Tränen bei Treffer",                -- Needle tears
    [55] = "Elektrizität bei Treffer",           -- Jacobs ladder tears
    [56] = "Beschwört Große Hornhand bei Treffer", -- Little Horn tears
    [57] = "verbunden mit Elektrizität",   -- Technology Zero
    [58] = "prallt von einander ab",        -- Pop!
    [59] = "Absorbiert andere",               -- Hungry Tears
    [60] = "Laserangriff",               -- Trisagion, generates a laser on top of the tear
    [61] = "hüpft auf Boden",          -- Flat Stone
    [62] = "kreisförmige Spaltung",             -- Haemolacria
    [63] = "Pfützenspur",             -- Bob's Bladder
    [64] = "Schlageffekt bei Treffer",     -- Knockout Drops
    [65] = "Gefriert Gegner bei Mord",   -- Uranus
    [66] = "Gegner und Pickup Magnet", -- Lodestone
    [67] = "Köderwirkung bei Treffer",       -- Rotten Tomato
    [68] = "Auge des Okkulten",       -- Eye of the Occult
    [69] = "enge Umlaufbahn",   -- Orbiting tears with a more narrow and stable orbit (used by Saturnus and Immaculate Heart)
    [70] = "Zerstört Steine",             -- Rock tears, chance to break rocks, deal extra damage to rock type enemies
    [71] = "90 Grad Bewegung",      -- Brain Worm, tears turn and go horizontally when moving past an enemy
    [72] = "Blut Bombe",              -- Blood Bombs, leave blood creep on the ground
    [73] = "Feind in Kacke verwandeln",    -- E. Coli tears, turn enemies into poop
    [74] = "Erzeugt Münze bei Mord",      -- Killed enemies have a chance to drop a random coin (Reverse Hanged Man)
    [75] = "Schwefelbombe",          -- Brimstone Bombs, explosion creates a brimstone cross
    [76] = "Schwarzes Loch bei Treffer",       -- Rift tears, creates a black hole on impact
    [77] = "Klebt an Feind und vermehrt sich beim Tod des Feindes",  -- Spore tears, stick to enemies and multiply on enemy death
    [78] = "Geister Bombe",              -- Ghost bombs
    [79] = "Erzeugt Karte bei Mord",      -- Killed enemies will drop a random tarot card
    [80] = "Erzeugt Rune bei Mord",      -- Killed enemies will drop a random rune
    [81] = "Teleportiere Gegner bei Treffer",   -- Hit enemies will teleport to a different part of the room
    [82] = "Langsamer über die Zeit",    -- Decelerate over time
    [83] = "Schneller über die Zeit",    -- Accelerate over time
    [104] = "Prallt ab (nur Wände)",    -- Similar to TEAR_BOUNCE but only bounces off walls, not enemies
	[106] = "zusätzlicher Schaden von Hinten + Blutungen",   -- Deals extra damage from behind and inflicts bleeding
}

-- Special Locust effects when Item was eaten by Abyss. Entries here will override the auto-generated descriptions
-- Kept in for backwards compatibility
EID.descriptions[languageCode].abyssSynergies = {}


-- Effect of Car battery on Active Items
local repCarBattery = {
	[34] = {2, 4}, -- The Book of Belial -- TODO: Is this +1 damage or another +2 from additional uses?
	[59] = {2, 4}, -- The Book of Belial (Birthright)
	[83] = {" Half", "1"}, -- The Nail
	[263] = "Triggers it twice", -- Clear Rune
	[283] = {1, 2, "pickup", "{{CR}}pickups"}, -- D100 TODO: TEST THIS is this really the only change
	[285] = "Devolves enemies twice", -- D10
	[288] = {"4-8", "8-16"}, -- Box of Spiders
	[293] = {200, 400}, -- Head of Krampus
	[296] = {1, 2, "Heart", "{{CR}}Hearts", 1, 2, "container", "{{CR}}containers"}, -- Converter
	[323] = "Tränen verursachen doppelten Schaden", -- Isaac's Tears
	[386] = "Increased chance for rare obstacles", -- D12
	[485] = "25% chance to quadruple, 75% chance to remove", -- Crooked Penny
	[489] = "Löst zwei Würfeleffekte aus. Der zweite Würfeleffekt ändert sich nie", -- D Infinity
	[522] = {3, 6}, -- Telekinesis
	[557] = {"one", "two"}, -- Fortune Cookie
	[582] = "Triggers twice", -- Wavy Cap
	[584] = "Doppelte Wisps", -- Book of Virtues
	[605] = "Beschwört zwei Peepers. Verleiht keinen zusätzlichen Schaden", -- The Scooper
	[609] = "Chancen, Gegenstände zu löschen, sind verdoppelt", -- Eternal D6
	[611] = "Triggers an additional 1-charge scream", -- Larynx
	[625] = "Effekt dauert 60 Sekunden", -- Mega Mush
	[631] = {25, 50}, -- Meat Cleaver
	[635] = "Instantly swaps twice#Great for teleporting into enemies, but can't collect out-of-reach items", -- Stitches
	[639] = {1, 2, "Heart", "{{CR}}Hearts"}, -- Yuck Heart
	[642] = "Triggers twice", -- Magic Skin
	[650] = {" a ", " 2 ", "Plum", "{{CR}}Plums"}, -- Plum Flute
	[685] = "Spawns double the wisps, but the use count only goes up by 1", -- Jar of Wisps
	[687] = {" a ", " 2 ", "monster", "{{CR}}monsters"}, -- Friend Finder
	[704] = "Lasts 10 seconds, but killing an enemy caps time remaining at 5 seconds max", -- Berserk!
	[705] = "Schattenwirkung dauert 2 Sekunden", -- Dark Arts
	[712] = {" an ", " 2 ", "orbital", "{{CR}}orbitals"}, -- Lemegeton
	[713] = {"half a heart", "a heart", "a clot", "2 {{CR}}clots"}, -- Sumptorium
	[719] = {" a ", " 2 ", "item/pickup", "{{CR}}items/pickups"}, -- Keeper's Box
	[720] = "Beschwört Kacke neben dem Pickup", -- Everything Jar
	[722] = "Chains 2 enemies down#If there's only one enemy, chains it for 10 seconds", -- Anima Sola
	[723] = "Verringert die interne ID um zwei", -- Spindown Dice
}
EID:updateDescriptionsViaTable(repCarBattery, EID.descriptions[languageCode].carBattery)

---------- Trinkets ----------

local repTrinkets={
	[10] = {"10", "Wiggle Worm", "↑ {{Tears}} +0.4 Tränen#Spektrale Tränen#Isaacs Tränen bewegen sich in Wellen"}, -- Wiggle Worm
	[11] = {"11", "Ring Worm", "↑ {{Tears}} +0.47 Tränen#Spektrale Tränen#Isaacs Tränen bewegen sich in Spiralen mit hoher Geschwindigkeit"}, -- Ring Worm
	[15] = {"15", "Lucky Rock", "{{Coin}} Zerstören von Felsen hat eine 33%ige Chance, eine Münze erscheinen zu lassen"}, -- Lucky Rock
	[16] = {"16", "Mamas Zehennagel", "Mamas Fuß stampft alle 20 Sekunden an einer zufälligen Stelle im Raum"}, -- Mom's Toenail
	[24] = {"24", "Po-Penny", "{{Coin}} 20% höhere Chance, dass Münzen aus Kacke erscheinen#{{Poison}} Das Aufsammeln von Münzen lässt Isaac furzen, was Feinde und Projektile vergiftet und zurückstößt"}, -- Butt Penny
	[26] = {"26", "Hakenschwanz", "↑ {{Tears}} +0.4 Tränen#↑ {{Range}} +1,5 Reichweite#Spektrale Tränen#Isaacs Tränen bewegen sich in winkligen Mustern"}, -- Hook Worm
	[32] = {"32", "Freiheitskappe", "25% Chance auf einen zufälligen Pilzeffekt pro Raum"}, -- Liberty Cap
	[33] = {"33", "Nabelschnur", "{{HalfHeart}} Wenn ein halbes rotes Herz oder weniger vorhanden ist, gewährt dies {{Collectible100}} Little Steven#{{Collectible318}} Schaden nehmen hat eine hohe Chance, für den Raum einen Gemini-Begleiter erscheinen zu lassen"}, -- Umbilical Cord
	[39] = {"39", "Krebs", "↑ {{Tears}} +1 Schussrate"},
	[48] = {"48", "Eine fehlende Seite", "Schaden nehmen hat eine 5%ige Chance, 80 Schaden an allen Feinden im Raum zuzufügen#{{Collectible35}} Schwarze Herzen und Necronomicon-ähnliche Effekte fügen doppelten Schaden zu"}, -- A Missing Page
	[49] = {"49", "Blutige Münze", "{{HalfHeart}} Das Aufsammeln einer Münze hat eine 25%ige Chance, ein halbes rotes Herz erscheinen zu lassen"}, -- Bloody Penny
	[50] = {"50", "Verbrannte Münze", "{{Bomb}} Das Aufsammeln einer Münze hat eine 25%ige Chance, eine Bombe erscheinen zu lassen"}, -- Burnt Penny
	[51] = {"51", "Flache Münze", "{{Key}} Das Aufsammeln einer Münze hat eine 25%ige Chance, einen Schlüssel erscheinen zu lassen"}, -- Flat Penny
	[65] = {"65", "Klebebandwurm", "↑ {{Range}} +3 Reichweite"}, -- Tape Worm
	[66] = {"66", "Faule Made", "↓ {{Shotspeed}} -0,5 Schusssgeschwindigkeit"}, -- Lazy Worm
	[67] = {"67", "Rissiger Würfel", "Schaden nehmen hat eine 50%ige Chance, einen dieser Effekte auszulösen:#{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible285}} D10#{{Collectible386}} D12#{{Collectible166}} D20"}, -- Cracked Dice
	[69] = {"69", "Verblasste Polaroid", "Tarnung von Isaac in zufälligen Abständen#{{Confusion}} Verwirrt Feinde#Kann verwendet werden, um die \"Seltsame Tür\" in \"Tiefen II\" zu öffnen"}, -- Faded Polaroid
	[80] = {"80", "Schwarze Feder", "↑ {{Damage}} +0,5 Schaden für jedes \"Böse hoch\"-Objekt im Besitz"}, -- Black Feather
	[92] = {"92", "Rissige Krone", "↑ x1,33 Stat-Multiplikator (außer Schussrate) für die Werte, die über 1 liegen: {{Speed}} Geschwindigkeit, 2,73 {{Tears}} Tränen, 3,5 {{Damage}} Schaden, 6,5 {{Range}} Reichweite, 1 {{Shotspeed}} Schusssgeschwindigkeit"}, -- Cracked Crown
	[96] = {"96", "Ouroboros-Wurm", "↑ +0,4 Tränen#↑ {{Range}} +1,5 Reichweite#Spektrale Tränen#Chance auf suchende Tränen#{{Luck}} 100%ige Chance bei 9 Glück#Isaacs Tränen bewegen sich schnell in einer Spirale"}, -- Ouroboros Worm
	[98] = {"98", "Nasengoblin", "5%ige Chance, suchende klebrige Tränen abzufeuern#{{Damage}} Rotz fügt Isaac's Schaden einmal pro Sekunde zu#Rotz kleben für 10 Sekunden"},
	[101] = {"101", "Dimmbare Glühbirne", "Das Halten eines komplett ungeladenen active Items gewährt:#↑ {{Speed}} +0,5 Geschwindigkeit#↑ {{Tears}} +0,5 Tränen#↑ {{Damage}} +1,5 Schaden#↑ {{Range}} +1,5 Reichweite#↑ {{Shotspeed}} +0,3 Schusssgeschwindigkeit#↑ {{Luck}} +2 Glück"},
	[107] = {"107", "Krähenherz", "Schaden nehmen verbraucht rote Herzen, bevor Seelen-/Schwarze Herzen verbraucht werden#{{Warning}} Der Schaden durch rote Herzen kann deine Chance auf ein Devil-/Angel Room senken"}, -- Crow Heart
	[110] = {"110", "Silberdollar", "{{Shop}} Shops erscheinen in der Womb und Corpse"},
	[111] = {"111", "Blutige Krone", "{{TreasureRoom}} Schatzräume erscheinen in der Womb und im Leichnam"}, -- Bloody Crown
	[119] = {"119", "Stammzelle", "{{Heart}} Beim Betreten einer neuen Ebene heilen sich die leeren roten/Knochenherzen von Isaac um die Hälfte#{{HalfHeart}} Heilt mindestens ein halbes Herz"}, -- Stem Cell
	[128] = {"128", "Fingerknochen", "{{EmptyBoneHeart}} Schaden nehmen hat eine 4%ige Chance, ein Knochenherz zu gewähren"}, -- Finger Bone
	[129] = {"129", "Kieferbrecher", "{{Damage}} 10%ige Chance, Zähne abzufeuern, die 3,2x Isaacs Schaden zufügen#{{Luck}} 100%ige Chance bei 9 Glück"}, -- Jawbreaker
	[130] = {"130", "Zerkauter Stift", "{{Slow}} 10%ige Chance, verlangsamende Tränen abzufeuern#{{Luck}} 100%ige Chance bei 18 Glück"}, -- Chewed Pen
	[131] = {"131", "Gesegnete Münze", "{{HalfSoulHeart}} Das Aufsammeln einer Münze hat eine 17%ige Chance, ein halbes Seelenherz erscheinen zu lassen"}, -- Blessed Penny
	[132] = {"132", "Defekte Spritze", "25% Chance, jeden Raum einen zufälligen Spritzeneffekt zu erhalten"}, -- Broken Syringe
	[133] = {"133", "Kurze Lunte", "Isaacs Bomben explodieren schneller"}, -- Short Fuse
	[134] = {"134", "Riesenbohne", "Erhöht die Furzgröße"}, -- Gigante Bean
	[135] = {"135", "Ein Feuerzeug", "{{Burning}} Das Betreten eines Raumes hat eine 20%ige Chance, zufällige Feinde zu verbrennen"}, -- A Lighter
	[136] = {"136", "Kaputtes Vorhängeschloss", "Türen, Schlüsselblöcke und goldene Truhen können mit Explosionen geöffnet werden#Explosionen können auch die \"Seltsame Tür\" in \"Tiefen II\" öffnen"}, -- Broken Padlock
	[137] = {"137", "Vergissmeinnicht", "Beim Betreten einer neuen Ebene erscheinen bis zu 4 nicht eingesammelte Pickups aus dem vorherigen Stock im Startraum"}, -- Myosotis
	[138] = {"138", "'M", "Benutzen eines active Items würfelt ihn um"}, -- 'M
	[139] = {"139", "Tränentropfen-Charme", "{{Luck}} +4 Glück für auf Glück basierende Träneneffekte"}, -- Teardrop Charm
	[140] = {"140", "Apfel von Sodom", "Das Aufsammeln von roten Herzen kann sie in blaue Spinnen umwandeln#Funktioniert auch bei vollem Leben#Der Effekt kann Herzen verbrauchen, die für die Heilung benötigt werden"}, -- Apple of Sodom
	[141] = {"141", "Vergessene Wiegenlied", "Erhöht die Feuerrate von Begleitern"}, -- Forgotten Lullaby
	[142] = {"142", "Beths Glaube", "{{Collectible584}} Beim Betreten einer neuen Ebene erscheinen 4 Book of Virtues-Wisps"}, -- Beth's Faith
	[143] = {"143", "Alte Kapazität", "{{Battery}} Verhindert, dass sich active Items aufladen, indem ein Raum geräumt wird#{{Battery}} Das Leeren eines Raumes hat eine 20%ige Chance, eine Batterie erscheinen zu lassen#{{Luck}} 33%ige Chance bei 5 Glück"}, -- Old Capacitor
	[144] = {"144", "Gehirnwurm", "Tränen drehen sich um 90 Grad, um Feinde anzuvisieren, die sie verpasst haben"}, -- Brain Worm
	[145] = {"145", "Vollkommenheit", "↑ {{Luck}} +10 Glück#Schaden nehmen zerstört das Trinket"}, -- Perfection
	[146] = {"146", "Teufelskrone", "{{RedTreasureRoom}} Schatzraum-Items werden durch Teufelsdeals ersetzt"}, -- Devil's Crown
	[147] = {"147", "Geladene Münze", "{{Battery}} Das Aufsammeln einer Münze hat eine 17%ige Chance, 1 Ladung zum active Item hinzuzufügen"}, -- Charged Penny
	[148] = {"148", "Freundschaftskette", "Alle Begleiter kreisen um Isaac"}, -- Friendship Necklace
	[149] = {"149", "Panikknopf", "Schaden nehmen verwendet den active Item, wenn er aufgeladen ist"}, -- Panic Button
	[150] = {"150", "Blauer Schlüssel", "Verschlossene Türen können kostenlos geöffnet werden, aber Isaac muss einen Raum auf der Hush-Ebene leeren, bevor er Zugang zum Raum dahinter hat"}, -- Blue Key
	[151] = {"151", "Flache Feile", "Zieht die meisten Stacheln ein, macht sie harmlos#Betrifft auch {{CursedRoom}} Fluchraumtüren, Mimics und jedes Stachelhindernis"}, -- Flat File
	[152] = {"152", "Teleskoplinse", "{{PlanetariumChance}} +24% Planetarium-Chance, wenn noch keines erschienen ist#+9%, wenn bereits ein Planetarium erschienen ist#Planetarien können in der Womb und im Leichnam erscheinen"}, -- Telescope Lens
	[153] = {"153", "Mamas Schloss", "25% Chance für einen zufälligen Mama-Item-Effekt pro Raum"}, -- Mom's Lock
	[154] = {"154", "Würfelbeutel", "50%ige Chance pro neuem Raum, einen einmal verwendbaren Würfel-Verbrauchsgegenstand zu gewähren#Der Würfel verschwindet beim Verlassen des Raumes#Der Würfel belegt keinen Pillen-/Kartenplatz"}, -- Dice Bag
	[155] = {"155", "Heilige Krone", "Erzeugt einen {{TreasureRoom}} Schatzraum und {{Shop}} Laden im Kathedralen-Level"}, -- Holy Crown
	[156] = {"156", "Mutters Kuss", "{{Heart}} +1 Herzcontainer solange es gehalten wird"}, -- Mother's Kiss
	[157] = {"157", "Zerrissene Karte", "Alle 15 Schüsse feuert Isaac eine {{Collectible149}} Ipecac + {{Collectible5}} My Reflection-Träne mit sehr hohem Reichweitenwert ab"}, -- Torn Card
	[158] = {"158", "Zerrissene Tasche", "Schaden nehmen lässt Isaac 2 seiner Münzen, Schlüssel oder Bomben fallen#Die Pickups können durch andere Varianten wie goldene Schlüssel, Nickel, Dimes, etc. ersetzt werden"}, -- Torn Pocket
	[159] = {"159", "Vergoldeter Schlüssel", "{{Key}} +1 Schlüssel beim Aufsammeln#{{GoldenChest}} Ersetzt alle Truhen (außer Alt/Mega) durch goldene Truhen#{{GoldenChest}} Goldene Truhen können zusätzliche Karten, Pillen oder Trinkets enthalten"}, -- Gilded Key
	[160] = {"160", "Glückssack", "{{GrabBag}} Das Betreten einer neuen Ebene lässt einen Sack erscheinen"}, -- Lucky Sack
	[161] = {"161", "Böse Krone", "Erzeugt einen {{TreasureRoom}} Schatzraum und {{Shop}} Laden in Sheol"}, -- Wicked Crown
	[162] = {"162", "Azazels Stumpf", "{{Player7}} Einen Raum leeren hat eine 50%ige Chance, den Spieler in Azazel zu verwandeln#{{Timer}} Der Effekt dauert an, bis ein anderer Raum geräumt und verlassen wird"}, -- Azazel's Stump
	[163] = {"163", "Dingle Berry", "Alle Dip (kleine Kack-) Feinde sind freundlich#Das Leeren eines Raumes lässt einen zufälligen Dip erscheinen"}, -- Dingle Berry
	[164] = {"164", "Ringkappe", "{{Bomb}} Erzeugt 1 zusätzliche Bombe für jede platzierte Bombe"}, -- Ring Cap
	[165] = {"165", "Nuh Uh!", "Auf Womb und darüber hinaus ersetzt alle Münz- und Schlüsselspawns durch eine Bombe, ein Herz, eine Pille, eine Karte, ein Trinket, eine Batterie oder einen Feindflieger"}, -- Nuh Uh!
	[166] = {"166", "Modelliermasse", "50%ige Chance, den Effekt eines zufälligen passiven Gegenstands pro Raum zu gewähren"}, -- Modeling Clay
	[167] = {"167", "Polierter Knochen", "Einen Raum leeren hat eine 25%ige Chance, einen freundlichen Bony erscheinen zu lassen"}, -- Polished Bone
	[168] = {"168", "Hohles Herz", "{{EmptyBoneHeart}} Das Betreten einer neuen Ebene gewährt +1 Knochenherz"}, -- Hollow Heart
	[169] = {"169", "Kinderzeichnung", "{{Guppy}} Zählt als 1 Item für die Guppy-Transformation solange es gehalten wird"}, -- Kid's Drawing
	[170] = {"170", "Kristallschlüssel", "{{Collectible580}} Einen Raum leeren hat eine 33%ige Chance, einen Red Key-Raum zu erstellen#Geringere Chance, wenn sich in einem roten Raum befindet"}, -- Crystal Key
	[171] = {"171", "Des Keepers Schnäppchen", "{{DevilRoom}} 50%ige Chance, dass Teufelsdeals Münzen statt Herzen kosten"}, -- Keeper's Bargain
	[172] = {"172", "Verfluchte Münze", "Das Aufsammeln einer Münze teleportiert Isaac in einen zufälligen Raum#Kann zu Geheimräumen teleportieren"}, -- Cursed Penny
	[173] = {"173", "Deine Seele", "{{DevilRoom}} Erlaubt Isaac, 1 Devil Room-Item kostenlos zu nehmen#{{Warning}} Der kostenlose Teufelsdeal beeinflusst immer noch die Engelraumchance"}, -- Your Soul
	[174] = {"174", "Zahlenmagnet", "{{DevilChance}} +10% Teufelsraumchance#Verhindert, dass Krampus in Teufelsräumen erscheint#Teufelsräume sind spezielle Varianten mit mehr Angeboten, schwarzen Herzen und Feinden"}, -- Number Magnet
	[175] = {"175", "Seltsamer Schlüssel", "Öffnet die Tür zur Hush-Ebene unabhängig vom Timer#Die Verwendung von {{Collectible297}} Pandoras Box verbraucht den Schlüssel und lässt 6 Items aus zufälligen Pools erscheinen"}, -- Strange Key
	[176] = {"176", "Lil Gerinnsel", "Erzeugt einen Blutklumpen, der Isaacs Bewegungen nachahmt#Kopiert Isaacs Werte, Träneneffekte und 35% seines Schadens#Respawned jeden Raum"}, -- Lil Clot
	[177] = {"177", "Temporäres Tattoo", "{{Chest}} Das Leeren eines {{ChallengeRoom}} Challenge-Raums lässt eine Truhe erscheinen#Das Leeren eines {{BossRushRoom}} Boss Challenge-Raums lässt einen Gegenstand erscheinen"}, -- Temporary Tattoo
	[178] = {"178", "Verschluckte M80", "Das Schaden nehmen hat eine 50%ige Chance, dass Isaac explodiert"}, -- Swallowed M80
	[179] = {"179", "RC-Fernbedienung", "Begleiter ahmen Isaacs Bewegungen nach#Halte die Abwurftaste ({{ButtonRT}}), um die Begleiter an Ort und Stelle zu halten"}, -- RC Remote
	[180] = {"180", "Gefundene Seele", "Folgt Isaacs Bewegungen und schießt spektrale Tränen#Kopiert Isaacs Werte, Träneneffekte und 50% seines Schadens#Stirbt bei einem Treffer#Respawnt jede Ebene"}, -- Found Soul
	[181] = {"181", "Erweiterungspack", "Die Verwendung eines active Items löst den Effekt eines zusätzlichen 1-2 Ladeactive Items aus"}, -- Expansion Pack
	[182] = {"182", "Beths Essenz", "Das Betreten eines {{AngelRoom}} Engelsraums lässt 5 Wisps erscheinen#Das Spenden an Bettler hat eine 25%ige Chance, einen Wisp erscheinen zu lassen"}, -- Beth's Essence
	[183] = {"183", "Die Zwillinge", "50%ige Chance, jeden Raum einen Begleiter zu duplizieren#Gewährt {{Collectible8}} Brother Bobby oder {{Collectible67}} Sister Maggy, wenn Isaac keine Begleiter hat"}, -- The Twins
	[184] = {"184", "Adoptionspapiere", "{{Shop}} Läden verkaufen Begleiter für 10 Münzen"}, -- Adoption Papers
	[185] = {"185", "Crickets Bein", "Das Töten eines Feindes hat eine 17%ige Chance, eine zufällige Heuschrecke erscheinen zu lassen"}, -- Cricket Leg
	[186] = {"186", "Apollyons bester Freund", "{{Collectible706}} Gewährt 1 Abyss-Heuschrecke"}, -- Apollyon's Best Friend
	[187] = {"187", "Kaputte Brille", "{{TreasureRoom}} 50%ige Chance, einen zusätzlichen Blind-Item in Schatzräumen hinzuzufügen#50%ige Chance, das Blind-Item in Alt-Path-Schatzräumen aufzudecken"}, -- Broken Glasses
	[188] = {"188", "Eiswürfel", "Das Betreten eines Raumes hat eine 20%ige Chance, zufällige Feinde zu versteinern#{{Freezing}} Das Töten eines versteinerten Feindes friert ihn ein"}, -- Ice Cube
	[189] = {"189", "Siegel von Baphomet", "Das Töten eines Feindes macht Isaac für 1 Sekunde unverwundbar#Unverwundbarkeit addiert sich mit aufeinander folgenden Feindtötungen"}, -- Sigil of Baphomet
}
EID:updateDescriptionsViaTable(repTrinkets, EID.descriptions[languageCode].trinkets)

EID.descriptions[languageCode].goldenTrinket = "Wirkung verdoppelt!"
EID.descriptions[languageCode].tripledTrinket = "Wirkung verdreifacht!"
EID.descriptions[languageCode].quadrupledTrinket = "Wirkung vervierfacht!"

-- Most trinkets that can be doubled or tripled just have the numbers in their description multiplied
-- A few trinkets have odd edge cases where their effect completely changes, or is different depending on if it's Mom's Box or Golden
EID.descriptions[languageCode].goldenTrinketEffects = {
	-- Broken Remote (replace with Teleport 2.0 info)
	[4] = { "{{Collectible419}} Die Verwendung eines Aktivgegenstands teleportiert Isaac in {{ColorGold}}einen Raum, der noch nicht geräumt wurde{{CR}}#Hierarchie: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{Planetarium}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"}, -- Teleport 2.0
	-- Broken Magnet (find+replace): find Phrase #1 in the localized description, change it to Phrase #2 for doubled
	[6] = { "Münzen", "Pickups" },
	-- Rosary Bead append
	[7] = { "{{Collectible72}} Der Rosenkranz wird allen Gegenstandspools hinzugefügt" },
	-- Golden Store Credit: full replace
	[13] = { "{{Shop}} {{ColorGold}}Ermöglicht es Isaac, Shop-Gegenstände kostenlos zu nehmen{{CR}}#Chance, sich nach jedem Kauf in eine normale {{Trinket13}} Gutschrift zu verwandeln" },
	-- Lucky Rock append (Gold / Mom's Box / Both)
	[15] = { "Steine können 2 Münzen fallen lassen", "Steine können 2 Münzen fallen lassen", "Steine können 3 Münzen fallen lassen" },
	-- Golden Mysterious Candy makes Golden Poop
	[25] = { "Poop", "Golden Poop" },
	-- Isaacs Gabel (find+replace): find Phrase #1 in the localized description, change it to Phrase #2 or 3 for doubled/tripled
	[46] = { "halb ein Herz", "ein Herz", "ein und ein halbes Herz" },
	-- Tick (replace): A full replacement for Golden / Mom's Box / Both, as the Golden version can be removed and only one effect is tripled
	[53] = {
	"Heilt {{ColorGold}}2{{CR}} Herzen beim Betreten eines {{BossRoom}}Boss-Raums#-{{ColorGold}}30{{CR}}% Boss-Gesundheit#{{ColorGold}}Entfernbar!",
	"Heilt {{ColorGold}}2{{CR}} Herzen beim Betreten eines {{BossRoom}}Boss-Raums#-{{ColorGold}}30{{CR}}% Boss-Gesundheit#{{Warning}} Sobald aufgenommen, kann es nicht entfernt werden#Nur mit {{Trinket41}} Streichholz oder dem Verschlingen entfernt werden",
	"Heilt {{ColorGold}}3{{CR}} Herzen beim Betreten eines {{BossRoom}}Boss-Raums#-{{ColorGold}}30{{CR}}% Boss-Gesundheit#{{ColorGold}}Entfernbar!",
	},
	-- Rainbow Worm (append): With Mom's Box, it gives 2 copies of the temp worm, and doubles 1 of those copies, for triple effect
	[64] = { "Die Stat-Boosts des Wurms werden verdoppelt", "Die Stat-Boosts des Wurms werden verdreifacht", "Die Stat-Boosts des Wurms werden vervierfacht", },
	-- Error (append): Same behavior as Rainbow Worm
	[75] = { "Der Trinket-Effekt wird verdoppelt, wenn möglich", "Der Trinket-Effekt wird verdreifacht, wenn möglich", "Der Trinket-Effekt wird vervierfacht, wenn möglich", },
	-- NO!
	[88] = { "Verhindert das Erscheinen von Gegenständen von Qualität {{Quality0}}" },
	-- Gilded Key (Golden version only): it doesn't give a key. bug that might get fixed (maybe it'll give a Golden Key?)
	[159] = { "Ersetzt alle Truhen (außer Alt/Mega) durch goldene Truhen#Goldene Truhen können zusätzliche Karten, Pillen oder Trinkets enthalten" },
	-- The Twins
	[183] = { "Kann 2 Vertraute kopieren/verleihen", "Kann 2 Vertraute kopieren/verleihen", "Kann 3 Vertraute kopieren/verleihen" },
}

--[[
Localizations may choose to overwrite specific data from EID.GoldenTrinketData in this table. For advanced users only.
Example: If French uses "Double" instead of "2x" for Purple Heart, they can do:
EID.descriptions[languageCode].goldenTrinketData = {
	[5] = {findReplace = true, mult = 2},
}
and then place
	[5] = { "Double", "Quadruple" },
in their goldenTrinketEffects
]]
EID.descriptions[languageCode].goldenTrinketData = { }

---------- Cards ----------

local repCards={
	[2] = {"2", "I - Der Magier", "{{Timer}} Erhalte für den Raum:#↑ {{Range}} +3 Reichweite#Heimatschüsse"}, -- I - The Magician
	[12] = {"12", "XI - Die Kraft", "{{Timer}} Erhalte für den Raum:#↑ {{Heart}} +1 Gesundheit#↑ {{Speed}} +0,3 Geschwindigkeit#↑ {{Damage}} +0,3 Schaden#↑ {{Damage}} x1,5 Schadensmultiplikator#↑ {{Range}} +2,5 Reichweite"}, -- XI - Strength
	[16] = {"16", "XV - Der Teufel", "{{Timer}} Erhalte für den Raum:#↑ {{Damage}} +2 Schaden"}, -- XV - The Devil
	[18] = {"18", "XVII - Die Sterne", "{{TreasureRoom}} Teleportiert Isaac zum Schatzraum#{{Planetarium}} Falls es ein Planetarium gibt, teleportiert es dorthin stattdessen"}, -- XVII - The Stars
	[20] = {"20", "XIX - Die Sonne", "{{HealingRed}} Volles Leben#Fügt allen Gegnern 100 Schaden zu#{{Timer}} Voller Mapping-Effekt für das Stockwerk (außer {{SuperSecretRoom}} Super / {{UltraSecretRoom}} Ultra Geheimer Raum)#{{CurseDarkness}} Entfernt Fluch der Dunkelheit"}, -- XIX - The Sun
	[22] = {"22", "XXI - Die Welt", "{{Timer}} Voller Mapping-Effekt für das Stockwerk (außer {{SuperSecretRoom}} Super / {{UltraSecretRoom}} Ultra Geheimer Raum)"}, -- XXI - The World
	[27] = {"27", "Karo Ass", "{{Bomb}} Verwandelt alle Pickups, Truhen und nicht-Boss-Gegner in zufällige Bomben"}, -- Ace of Clubs
	[28] = {"28", "Kreuz Ass", "{{Coin}} Verwandelt alle Pickups, Truhen und nicht-Boss-Gegner in zufällige Münzen"}, -- Ace of Diamonds
	[29] = {"29", "Pik Ass", "{{Key}} Verwandelt alle Pickups, Truhen und nicht-Boss-Gegner in zufällige Schlüssel"}, -- Ace of Spades
	[30] = {"30", "Herz Ass", "{{UnknownHeart}} Verwandelt alle Pickups, Truhen und nicht-Boss-Gegner in zufällige Herzen"}, -- Ace of Hearts
	[34] = {"34", "Ehwaz", "Spawnt eine Falltür zum nächsten Stock#{{LadderRoom}} Spawnt einen Kriechraum, wenn er auf ein dekoratives Bodenkacheln (Gras, kleine Steine, Papier, Edelsteine, usw.) verwendet wird"}, -- Ehwaz
	[39] = {"39", "Algiz", "{{Timer}} Macht Isaac für 20 Sekunden unverwundbar"}, -- Algiz
	[42] = {"42", "Chaoskarte", "Benutzen der Karte wirft sie in die Richtung, in die sich Isaac bewegt#Tötet sofort JEDE Feindeinheit, die sie berührt (außer Delirium oder das Biest)"}, -- Chaos Card
	[51] = {"51", "Heilige Karte", "{{HeiligerMantel}} Ein Einmaliger Heiliger Mantel-Schild (verhindert einmaligen Schaden)"}, -- Holy Card
	[52] = {"52", "Riesiges Wachstum", "{{Timer}} Erhalte für den Raum:#↑ {{Damage}} +7 Schaden#↑ {{Range}} +3 Reichweite#Größe hoch#Erlaubt es Isaac, Felsen zu zerstören, indem er in sie hineinläuft"}, -- Huge Growth
	[55] = {"55", "Runenscherbe", "{{Rune}} Aktiviert einen zufälligen Runeneffekt#Der Runeneffekt ist schwächer"}, -- Rune Shard
	[56] = {"56", "0 - Der Narr?", "Lässt alle Herzen von Isaac bis auf eines und alle seine Pickups auf den Boden fallen#Münzen und Bomben fallen als {{Collectible74}} Das Viertel oder {{Collectible19}} Boom! wenn möglich"}, -- 0 - The Fool?
	[57] = {"57", "I - Der Magier?", "{{Timer}} Gewährt eine Aura, die Feinde und Geschosse für 60 Sekunden abwehrt"}, -- I - The Magician?
	[58] = {"58", "II - Die Hohepriesterin?", "{{Timer}} Mamas Fuß versucht, Isaac für 60 Sekunden zu stampfen"}, -- II - The High Priestess?
	[59] = {"59", "III - Die Kaiserin?", "{{Timer}} Erhalte für 60 Sekunden:#↑ {{Heart}} +2 Gesundheit#↑ {{Tears}} +1,5 Schussrate#↓ {{Speed}} -0,1 Geschwindigkeit"}, -- III - The Empress?
	[60] = {"60", "IV - Der Kaiser?", "Teleportiert Isaac zu einem zusätzlichen Bossraum, der für einen Gegenstand besiegt werden kann#Der Boss wird aus zwei Ebenen tiefer als der aktuelle ausgewählt"}, -- IV - The Emperor?
	[61] = {"61", "V - Der Hierophant?", "{{EmptyBoneHeart}} Spawnt 2 Knochenherzen"}, -- V - The Hierophant?
	[62] = {"62", "VI - Die Liebenden?", "Spawnt einen Gegenstand aus dem aktuellen Raum-Gegenstandspool#{{BrokenHeart}} Konvertiert 1 Herzcontainer oder 2 Seelenherzen in ein Gebrochenes Herz"}, -- VI - The Lovers?
	[63] = {"63", "VII - Der Wagen?", "{{Timer}} Erhalte für 10 Sekunden:#↑ {{Tears}} x4 Schussrate-Multiplikator#Unverwundbar, kann sich aber nicht bewegen"}, -- VII - The Chariot?
	[64] = {"64", "VIII - Die Gerechtigkeit?", "{{GoldenChest}} Spawnt 2-4 goldene Truhen"}, -- VIII - Justice?
	[65] = {"65", "IX - Der Eremit?", "{{Coin}} Verwandelt alle Pickups und Gegenstände im Raum in eine Anzahl von Münzen, die ihrem Kaufwert entspricht#Wenn nichts umzuwandeln ist, spawnt eine Penny stattdessen"}, -- IX - The Hermit?
	[66] = {"66", "X - Rad des Schicksals?", "{{DiceRoom}} Löst einen zufälligen Würfelraumeffekt aus"}, -- X - Wheel of Fortune?
	[67] = {"67", "XI - Die Stärke?", "{{Timer}} Gegner im Raum sind {{Slow}} verlangsamt und nehmen 30 Sekunden lang doppelten Schaden"}, -- XI - Strength?
	[68] = {"68", "XII - Der Gehängte?", "{{Timer}} Erhalte für 30 Sekunden:#↓ {{Speed}} -0,1 Geschwindigkeit#Dreifachschuss#{{Coin}} Getötete Feinde lassen Münzen fallen"}, -- XII - The Hanged Man?
	[69] = {"69", "XIII - Tod?", "{{Collectible545}} Aktiviert das Buch der Toten#Spawnt Knochenwesen für jeden im Raum getöteten Feind"}, -- XIII - Death?
	[70] = {"70", "XIV - Mäßigkeit?", "{{Pill}} Zwingt Isaac, 5 zufällige Pillen zu essen"}, -- XIV - Temperance?
	[71] = {"71", "XV - Der Teufel?", "{{Timer}} Erhalte für 60 Sekunden:#{{Collectible33}} Aktiviert die Bibel (Flug)#{{Collectible390}} Seraphim-Begleiter#{{MomsHeart}} Tötet Mamas Fuß und Mamas Herz sofort#{{Warning}} Tötet Isaac, wenn es gegen Satan verwendet wird"}, -- XV - The Devil?
	[72] = {"72", "XVI - Der Turm?", "Spawnt 7 Gruppen zufälliger Felsen und Hindernisse#Gruppen enthalten oft Getönte Felsen"}, -- XVI - The Tower?
	[73] = {"73", "XVII - Die Sterne?", "Entfernt Isaacs ältesten eingesammelten passiven Gegenstand (ignoriert Startgegenstände)#Spawnt 2 zufällige Gegenstände aus dem aktuellen Raum-Gegenstandspool"}, -- XVII - The Stars?
	[74] = {"74", "XVIII - Der Mond?", "{{UltraSecretRoom}} Teleportiert Isaac in den Ultra Secret Room#Der Rückweg besteht aus roten Räumen"}, -- XVIII - The Moon?
	[75] = {"75", "XIX - Die Sonne?", "{{Timer}} Erhalte für das Stockwerk:#↑ {{Damage}} +1,5 Schaden#Flug und spektrale Tränen#{{BoneHeart}} Konvertiert Herzcontainer in Knochenherzen (kehrt zurück)#{{CurseDarkness}} Fluch der Dunkelheit"}, -- XIX - The Sun?
	[76] = {"76", "XX - Das Gericht?", "{{RestockMachine}} Spawnt eine Restock-Maschine"}, -- XX - Judgement?
	[77] = {"77", "XXI - Die Welt?", "{{LadderRoom}} Spawnt eine Falltür zu einem Kriechraum"}, -- XXI - The World?
	[78] = {"78", "Geplatzter Schlüssel", "{{Collectible580}} Einmal verwendbarer Roter Schlüssel"}, -- Cracked Key
	[79] = {"79", "Herzdame", "{{Heart}} Spawnt 1-20 Rote Herzen"}, -- Queen of Hearts
	[80] = {"80", "Wilde Karte", "Kopiert den Effekt deiner zuletzt verwendeten Pille, Karte, Rune, Seelenstein oder aktivierten Gegenstands"}, -- Wild Card
	[81] = {"81", "Seele von Isaac", "Lässt alle Gegenstandspodeste im Raum zwischen zwei verschiedenen Gegenständen wechseln"}, -- Soul of Isaac
	[82] = {"82", "Seele von Magdalena", "{{Timer}} Effekt dauert für den Raum:#{{HalfHeart}} Getötete Feinde lassen halbe Rote Herzen fallen, die nach 2 Sekunden verschwinden"}, -- Soul of Magdalene
	[83] = {"83", "Seele von Kain", "Öffnet alle Türen im Raum#{{Collectible580}} Erstellt rote Räume an jeder möglichen Wand"}, -- Soul of Cain
	[84] = {"84", "Seele von Judas", "{{Collectible705}} Aktiviert Dark Arts mit einer Dauer von 3 Sekunden#Vorübergehender ↑ {{Damage}} Schadensbonus für jeden getroffenen Feind/Projektil"}, -- Soul of Judas
	[85] = {"85", "Seele von ???", "{{Poison}} Verursacht 8 Giftwinde mit braunem Schleim, spawnt dann schnell 7 Hinternbomben#Das Stehen auf dem Schleim gewährt:#↑ {{Tears}} +1,5 Schussrate#↑ {{Damage}} +1 Schaden"}, -- Soul of ???
	[86] = {"86", "Seele von Eva", "{{Timer}} 14 tote Vogel-Begleiter fliegen herein und greifen Feinde im Raum an"}, -- Soul of Eve
	[87] = {"87", "Seele von Samson", "{{Collectible704}} Aktiviert Berserk! für 10 Sekunden#{{Timer}} Jeder Kill verlängert die Dauer um 1 Sekunde"}, -- Soul of Samson
	[88] = {"88", "Seele von Azazel", "{{Collectible441}} Feuert einen Mega Blast-Strahl für 7,5 Sekunden"}, -- Soul of Azazel
	[89] = {"89", "Seele von Lazarus", "Isaac stirbt und wird sofort mit einem halben Herz wiederbelebt#Dieser Gegenstand wird automatisch verwendet, wenn tödlicher Schaden verursacht wird (fungiert als Extraleben)"}, -- Soul of Lazarus
	[90] = {"90", "Seele von Eden", "Rerollt Gegenstandspodeste und Pickups im Raum#Die gerollten Gegenstände stammen aus zufälligen Gegenstandspools"}, -- Soul of Eden
	[91] = {"91", "Seele von The Lost", "{{Player10}} Verwandelt den Spieler in The Lost für den Raum#Ermöglicht das kostenlose Nehmen eines {{DevilRoom}} Devil Room-Gegenstands#Ermöglicht das kostenlose Betreten der Mausoleum- oder Gehenna-Tür"}, -- Soul of the Lost
	[92] = {"92", "Seele von Lilith", "Gewährt dauerhaft einen zufälligen Begleiter"}, -- Soul of Lilith
	[93] = {"93", "Seele von Keeper", "{{Coin}} Spawnt 1-25 zufällige Münzen"}, -- Soul of the Keeper
	[94] = {"94", "Seele von Apollyon", "Spawnt 15 zufällige Heuschrecken"}, -- Soul of Apollyon
	[95] = {"95", "Seele von The Forgotten ", "{{Player16}} Spawnt The Forgotten als sekundären Charakter für den Raum"}, -- Soul of the Forgotten
	[96] = {"96", "Seele von Bethany", "{{Collectible584}} Spawnt 6 zufällige Buch der Tugenden-Schweifchen"}, -- Soul of Bethany
	[97] = {"97", "Seele von Jacob und Esau", "{{Player20}} Spawnt Esau als sekundären Charakter für den Raum#Er spawnt mit so vielen passiven Gegenständen wie der Spieler"}, -- Soul of Jacob and Esau
}
EID:updateDescriptionsViaTable(repCards, EID.descriptions[languageCode].cards)

-- Card Buffs caused by Tarot Cloth
-- Strings will be appended to the original description (with line breaks replaced with a Tarot Cloth icon)
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs (the new text will be colored Shiny Purple)
EID.descriptions[languageCode].tarotClothBuffs = {
	[2] = "Gewährt auch den Effekt von {{Collectible34}} Das Buch des Belial", -- I - The Magician
	[3] = "Ein zweiter Fuß schlägt kurz nach dem ersten auf", -- II - The High Priestess
	[4] = {0.3, 0.6, 1.5, 3}, -- III - The Empress
	[5] = "{{SoulHeart}} +1 Seelenherz, wenn der Boss noch nicht besiegt wurde", -- IV - The Emperor
	[6] = {2, 3}, -- V - The Hierophant
	[7] = {2, 3}, -- VI - The Lovers
	[8] = {6, 12}, -- VII - The Chariot
	[9] = {"Erzeugt {{ColorShinyPurple}}2{{CR}} zufällige {{UnknownHeart}} Herzen, {{Coin}} Münzen, {{Bomb}} Bomben und {{Key}} Schlüssel"}, -- VIII - Justice
	[10] = "Verhindert, dass Gier im Laden erscheint#Verwandelt einen Laden in einen normalen Laden, wenn Gier bereits bekämpft wurde", -- IX - The Hermit
	[11] = {"Erzeugt {{ColorShinyPurple}}2{{CR}} {{Slotmachine}} Spielautomaten oder {{FortuneTeller}} Wahrsagerautomaten"}, -- X - Wheel of Fortune
	[12] = {1, 2, 0.3, 0.6, 0.3, 0.6, 2.5, 5}, -- XI - Strength
	[14] = {40, 80}, -- XIII - Death
	[15] = {"{{DonationMachine}} Erzeugt {{ColorShinyPurple}}2{{CR}} Blutspendemaschinen#{{GreedMode}} Erzeugt {{ColorShinyPurple}}2{{CR}} Teufelsbettler im Gier-Modus"}, -- XIV - Temperance
	[16] = {2, 4}, -- XV - The Devil
	[17] = {6, 12}, -- XVI - The Tower
	[18] = "Wenn der Schatzraum noch nicht betreten wurde, gibt es zwei Gegenstände zur Auswahl", -- XVII - The Stars
	[20] = {100, 400}, -- XIX - The Sun
	[21] = {"Erzeugt {{ColorShinyPurple}}2{{CR}} Bettler oder Teufelsbettler#2% Chance, einen speziellen Bettler zu erzeugen"}, -- XX - Judgement
	[56] = "Wirft Isaacs 6 neueste Gegenstände neben den Abholungen ab", -- 0 - The Fool?
	[59] = {2, 3}, -- III - The Empress?
	[61] = {2, 3}, -- V - The Hierophant?
	[62] = "Aktiviert den Effekt zweimal", -- VI - The Lovers?
	[64] = {4, 14, 2, 4}, -- VIII - VIII - Justice?
	[65] = "Erzeugt 1 zusätzlichen {{Coin}} Cent", -- IX - The Hermit?
	[66] = {"{{DiceRoom}} Löst {{ColorShinyPurple}}2{{CR}} zufällige Effekte eines Würfelraums aus"}, -- X - Wheel of Fortune?
	[67] = {30, 60}, -- XI - Strength?
	[68] = {30, 60}, -- XII - The Hanged Man?
	[70] = {5, 10}, -- XIV - Temperance?
	[72] = {7, 14}, -- XVI - The Tower?
	[73] = {"Entfernt Isaacs {{ColorShinyPurple}}2{{CR}} älteste gesammelte passive Gegenstände (ignoriert Startgegenstände)#Erzeugt {{ColorShinyPurple}}4{{CR}} zufällige Gegenstände aus dem aktuellen Raum-Gegenstandspool"}, -- XVII - The Stars?
	[76] = {"{{RestockMachine}} Erzeugt {{ColorShinyPurple}}2{{CR}} Auffüllmaschinen"}, -- XX - Judgement?
}

-- There's some odd behavior with Blank Card + Tarot Cloth not doubling some cards
-- These will be appended after Blank Card recharge time and "Blank Card effect:"
EID.descriptions[languageCode].tarotClothBlankCardBuffs = {
	[11] = "Spawnt 1 Maschine", -- X - Wheel of Fortune
	[12] = "Stat-Boosts werden nicht verdoppelt", -- XI - Strength
	[14] = "Fügt 40 Schaden zu", -- XIII - Death
	[15] = "Spawnt 1 Maschine", -- XIV - Temperance
	[16] = "+2 Schaden", -- XV - The Devil
	[20] = "Fügt 200 Schaden zu", -- XIX -- The Sun
	[21] = "Spawnt 1 Bettler", -- XX - Judgement
	[56] = "Lässt 3 Gegenstände fallen", -- 0 - The Fool?
	[64] = "Spawnt 2-7 Truhen", -- VIII - Justice?
	[65] = "Spawnt keine zusätzliche Münze", -- IX - The Hermit?
	[66] = "Aktiviert 1 Effekt", -- X - Wheel of Fortune?
	[68] = "Dauert 30 Sekunden", -- XII - The Hanged Man?
	[72] = "Spawnt 7 Gruppen", -- XVI - The Tower?
	[73] = "Entfernt 1 Gegenstand und spawnt 2", -- XVII - The Stars?
	[76] = "Spawnt 1 Maschine", -- XX - Judgement?
}

---------- Pills ----------

local repPills={
	[4] = {"3", "Bomben sind Schlüssel", "Tauscht Isaacs Anzahl an {{Bomb}} Bomben und {{Key}} Schlüsseln#Goldene Bomben und Schlüssel werden ebenfalls getauscht"}, -- Bombs are Key
	[12] = {"11", "Reichweite runter", "↓ {{Range}} -1 Reichweite"}, -- Range Down
	[13] = {"12", "Reichweite rauf", "↑ {{Range}} +1.25 Reichweite"}, -- Range Up
	[38] = {"37", "Retro Vision", "{{Timer}} Pixelt den Bildschirm für 30 Sekunden"},
	[42] = {"41", "Ich bin müde...", "{{Slow}} Verlangsamt Isaac und alle Feinde im Raum"}, -- I'm Drowsy...
	[43] = {"42", "Ich bin aufgeregt!!", "{{Timer}} Beschleunigt Isaac und alle Feinde im Raum#Löst sich erneut nach 30 und 60 Sekunden aus"}, -- I'm Excited!!
	[48] = {"47", "Schussspeed runter", "↓ {{Shotspeed}} -0.15 Schussspeed"}, -- Shot speed Down
	[49] = {"48", "Schussspeed rauf", "↑ {{Shotspeed}} +0.15 Schussspeed"}, -- Shot speed Up
	[50] = {"49", "Experimentelle Pille", "↑ Erhöht 1 zufällige Statistik#↓ Verringert 1 zufällige Statistik#Keine Statistikverringerung mit {{Collectible75}}PHD, {{Collectible46}}Lucky Foot oder {{Collectible303}}Virgo#Keine Statistiksteigerung mit {{Collectible654}}Falsches PHD"}, -- Experimental Pill
	[9999] = {"", "Goldene Pille", "Zufälliger Pilleneffekt#Hat eine Chance, sich bei jeder Verwendung zu zerstören"}, -- golden Pill
}
EID:updateDescriptionsViaTable(repPills, EID.descriptions[languageCode].pills)

EID.descriptions[languageCode].horsepills={
	{"0", "Übler Gestank", "{{Poison}} Vergiftet den gesamten Raum"}, -- Bad Gas
    {"1", "Schlechte Reise", "{{Heart}} Fügt Isaac 2 Herzen Schaden zu#Wird zu einer Vollgesundheit-Pferdepille (+3 Seelenherzen) bei 1 Herz oder weniger"}, -- Bad Trip
    {"2", "Stahlhoden", "{{SoulHeart}} +4 Seelenherzen"}, -- Balls of Steel
    {"3", "Bomben sind Schlüssel", "Tauscht Isaacs Anzahl an {{Bomb}} Bomben und {{Key}} Schlüsseln#Erhöht die Anzahl der Bomben und Schlüssel um 50%#Goldene Bomben und Schlüssel werden ebenfalls getauscht"}, -- Bombs are Key
    {"4", "Explosive Diarrhö", "Erzeugt ein paar homing Mega Troll Bomben"}, -- Explosive Diarrhea
    {"5", "Volle Gesundheit", "{{SoulHeart}} +3 Seelenherzen#{{Heart}} Full Health"}, -- Full Health
    {"6", "Gesundheit Down", "↓ {{EmptyHeart}} -2 Gesundheit#Wird zu einer Gesundheit-Up-Pferdepille bei 0 oder 1 Herzcontainern"}, -- Health Down
    {"7", "Gesundheit Up", "↑ {{EmptyHeart}} +2 Leere Herzcontainer"}, -- Health Up
    {"8", "Ich habe Pillen gefunden", "Keine Wirkung"}, -- I Found Pills
    {"9", "Pubertät", "Keine Wirkung"}, -- Puberty
    {"10", "Hübsche Fliege", "{{Collectible279}} Gewährt einen großen orbitalen Fan#Es gibt keine Begrenzung für die Anzahl der großen Fans, die Isaac haben kann"}, -- Pretty Fly
    {"11", "Reichweite Down", "↓ {{Range}} -2 Reichweite"}, -- Range Down
    {"12", "Reichweite Up", "↑ {{Range}} +2,5 Reichweite"}, -- Range Up
    {"13", "Geschwindigkeit Down", "↓ {{Speed}} -0,24 Geschwindigkeit"}, -- Speed Down
    {"14", "Geschwindigkeit Up", "↑ {{Speed}} +0,3 Geschwindigkeit"}, -- Speed Up
    {"15", "Tränen Down", "↓ {{Tears}} -0,56 Tränen"}, -- Tears Down
    {"16", "Tränen Up", "↑ {{Tears}} +0,70 Tränen"}, -- Tears Up
    {"17", "Glück Down", "↓ {{Luck}} -2 Glück"}, -- Luck Down
    {"18", "Glück Up", "↑ {{Luck}} +2 Glück"}, -- Luck Up
    {"19", "Telepillen", "Teleportiert Isaac zu einem zufälligen Raum"}, -- Telepills
    {"20", "48-Stunden-Energie!", "{{Battery}} Lädt active Items vollständig auf#{{Battery}} Lässt 3-4 Batterien fallen"}, -- 48 Hour Energy!
    {"21", "Hämatemese", "{{EmptyHeart}} Entleert alle außer einem Herzcontainer#{{Heart}} Spawnt 1-4 Rote Herzen"}, -- Hematemesis
    {"22", "Lähmung", "Verhindert, dass Isaac sich für 4 Sekunden bewegt und schießt"}, -- Paralysis
    {"23", "Ich kann für immer sehen!", "{{SecretRoom}} Öffnet Geheimgangzugänge auf der Ebene#Vollständiger Karteneffekt"}, -- I can see forever!
    {"24", "Pheromone", "{{Charm}} Macht jeden Feind im Raum dauerhaft freundlich"}, -- Pheromones
    {"25", "Amnesie", "{{CurseLost}} Versteckt die Bodenkarte"}, -- Amnesia
    {"26", "Zitronenparty", "Erzeugt eine Pfütze von Creep in Größe eines Raums, die Feinden Schaden zufügt"}, -- Lemon Party
    {"27", "Bist du ein Zauberer?", "{{Timer}} Isaac schießt 60 Sekunden lang diagonal"}, -- R U a Wizard?    
    {"28", "Percs!", "{{Timer}} Reduziert den erlittenen Schaden im Raum auf ein halbes Herz"}, -- Percs!
    {"29", "Süchtig!", "{{Timer}} Erhöht den erlittenen Schaden im Raum auf ein volles Herz"}, -- Addicted!
    {"30", "Re-Lax", "Isaac lässt für 10 Sekunden Kacke hinter sich erscheinen"}, -- Re-Lax
    {"31", "???", "{{CurseMaze}} Fluch des Labyrinths-Effekt für den gesamten Boden"}, -- ???
    {"32", "Einer macht dich größer", "Vergrößert Isaac erheblich#Beeinträchtigt nicht seine Trefferbox"}, -- One makes you larger
    {"33", "Einer macht dich kleiner", "Verkleinert Isaac erheblich#Verringert auch die Größe seiner Trefferbox"}, -- One makes you small
    {"34", "Infested!", "Erzeugt 2 blaue Spinnen für jede Kacke im Raum"}, -- Infested!
    {"35", "Infested?", "Erzeugt 2 blaue Spinnen für jeden Feind im Raum#Erzeugt 2-6 blaue Spinnen, wenn keine Feinde im Raum sind"}, -- Infested?
    {"36", "Power Pill!", "{{Timer}} Erhalten für den Raum:#↑ {{Damage}} +7 Schaden#↑ {{Range}} +3 Reichweite#{{Timer}} Erhalten für 6,5 Sekunden:#Unverwundbarkeit#Isaac kann nicht schießen, fügt jedoch 40 Kontaktschaden pro Sekunde zu#{{HalfHeart}} Das Essen von 2 Feinden heilt ein halbes Herz#{{Fear}} Verängstigt alle Feinde im Raum"}, -- Power Pill!
    {"37", "Retro Vision", "Pixelisiert den Bildschirm für 90 Sekunden"}, -- Retro Vision
    {"38", "Freunde für immer!", "Erzeugt 6 blaue Fliegen"}, -- Friends Till The End!
    {"39", "X-Lax", "Erzeugt eine Pfütze von lang anhaltendem rutschigem Creep"}, -- X-Lax
    {"40", "Etwas stimmt nicht...", "{{Slow}} Erzeugt eine Pfütze von lang anhaltendem verlangsamendem Creep"}, -- Something's wrong...
    {"41", "Ich bin müde...", "{{Slow}} Verlangsamt Isaac und alle Feinde im Raum"}, -- I'm Drowsy...
    {"42", "Ich bin aufgeregt!!", "Beschleunigt Isaac und alle Feinde im Raum#Löst sich nach 30 und 60 Sekunden erneut aus"}, -- I'm Excited!!
    {"43", "Runter damit!", "Verzehrt Isaacs Trinket und gewährt seine Effekte dauerhaft"}, -- Gulp!
    {"44", "Horf!", "{{Collectible149}} Schießt einen Cluster von Ipecac-Tränen ab"}, -- Horf!
    {"45", "Fühlt sich an, als würde ich auf Sonnenschein laufen!", "{{Timer}} Erhalten für 6,5 Sekunden:#Unverwundbarkeit#Isaac kann nicht schießen, fügt jedoch 40 Kontaktschaden pro Sekunde zu#{{HalfHeart}} Das Essen von 2 Feinden heilt ein halbes Herz#{{Fear}} Verängstigt alle Feinde im Raum"}, -- Feels like I'm walking on sunshine!
    {"46", "Vurp!", "Erzeugt die zuletzt von Isaac verwendete Pille als Pferdepille"}, -- Vurp!
    {"47", "Schusstempo Down", "↓ {{Shotspeed}} -0,3 Schusstempo"}, -- Shot speed Down
    {"48", "Schusstempo Up", "↑ {{Shotspeed}} +0,3 Schusstempo"}, -- Shot speed Up
    {"49", "Experimentelle Pille", "↑ Erhöht eine zufällige Stat zweimal#↓ Verringert eine zufällige Stat zweimal#Keine Stat-Verringerung mit {{Collectible75}} PHD, {{Collectible46}} Glücklicher Fuß oder {{Collectible303}} Jungfrau#Keine Stat-Erhöhung mit {{Collectible654}} Falsches PHD"}, -- Experimental Pill
    [9999] = {"", "Goldene Pille", "Zufälliger Pferdepilleneffekt#Hat eine Chance, sich bei jeder Verwendung selbst zu zerstören"}, -- Golden Pill
}

---------- Glitched Item Descriptions ----------

EID.descriptions[languageCode].GlitchedItemText = {
	-- Item Config info
	-- These texts are affected by the PluralizeFunction (ab+ file)
	AddBlackHearts = "{{BlackHeart}} {1} Schwarzes Herz{plural_en}",
	AddBombs = "{{Bomb}} {1} Bombe{plural_n}",
	AddCoins = "{{Coin}} {1} Münze{plural_n}",
	AddHearts = "Heilt {{Heart}} {1} Herz{plural_en}",
	AddKeys = "{{Key}} {1} Schlüssel",
	AddMaxHearts = "{{EmptyHeart}} {1} Herz-Container",
	AddSoulHearts = "{{SoulHeart}} {1} Seelenherz{plural_en}",

	-- Cache Flag names
	cacheFlagStart = "Kann beeinflussen ",
	[0] = "{{Damage}} Schaden", "{{Tears}} Feuerrate", "{{Shotspeed}} Schussgeschwindigkeit", "{{Range}} Reichweite", "{{Speed}} Geschwindigkeit", "Träreffekte", "Trärfarbe", "Flugfähigkeit", "Angriffstyp", "Familiare", "{{Luck}} Glück", "Größe", "Farbe", "Kisteninhalte", [16] = "Alle Stats",

	-- Attribute triggers
	active = "Bei Benutzung:#",
	pickup_collected = "Beim Einsammeln eines Gegenstands:#",
	enemy_kill = "Beim Töten eines Gegners möglicherweise:#",
	damage_taken = "Nachdem Schaden genommen wurde:#",
	entity_spawned = "Wenn ein {T1} erscheint:#",
	tear_fire = "Beim Abschießen einer Träne möglicherweise:#",
	enemy_hit = "Beim Treffen eines Gegners möglicherweise:#",
	room_clear = "Beim Abschließen eines Raums:#",
	chain = "Dann:{{CR}} ",

	-- Attribute effects
	area_damage = "Verursacht {1} Schaden in einem Bereich um Isaac",
	add_temporary_effect = "Gewährt {1} für den Raum",
	convert_entities = "Verwandelt alle {1} im Raum in {2}",
	use_active_item = "Benutze {1}",
	spawn_entity = "Beschwört ein {1}",
	fart = "Lässt einen Furz mit der Größe {1} ab",

	-- Generic entity names not obtained from entities2.xml
	-- This could also be a place to localize entity names; this table is read from before EID.XMLEntityNames
	["4.-1"] = "Brennende Bombe",
	["5.0"] = "Aufsammelbares",
	["5.10"] = "Herz",
	["5.20"] = "Münze",
	["5.30"] = "Schlüssel",
	["5.40"] = "Bombenaufsammelbares",
	["5.69"] = "Sack",
	["5.70"] = "Pille",
	["5.90"] = "Batterie",
	["5.300"] = "Karte",
	["5.301"] = "Rune", -- not a real ID
	["9.-1"] = "Gegnergeschoss",
	["999.-1"] = "Gitterobjekt",
	["1000.0"] = "Effekt",

	-- Text for the base item that is granted
	grants = "Gewährt ",
}

---------- Misc. Text ----------

EID.descriptions[languageCode].poopSpells = {
	{"Kacke", "Normales Kacke, das Aufsammelbares fallen lassen kann"},
	{"Körnige Kacke", "Spawnt blaue Fliegen, solange es intakt ist"},
	{"Brennende Kacke", "Verursacht Kontakt-Schaden, solange es intakt ist#Hinterlässt Feuer, wenn es zerstört wird"},
	{"Steinige Kacke", "Kann 3 Mal Schaden verursachen, wenn es geworfen wird#Benötigt viele Treffer, um zerstört zu werden"},
	{"Stinkende Kacke", "Erzeugt eine giftige Wolke#{{Warning}} Die Wolke explodiert, wenn sie Feuer berührt!"},
	{"Schwarze Kacke", "{{Slow}} Erzeugt verlangsamenden Creep#{{Confusion}} Verursacht 10 Schaden und verwirrt alle Gegner, wenn sie zerstört wird"},
	{"Heilige Kacke", "{{Collectible543}} Erzeugt einen weißen Kacke#Solange innerhalb der Aura des Kacke:#↑ {{Damage}} x1.2 Schadensmultiplikator#↑ {{Tears}} x2.5 Schussrate-Multiplikator#Homing-Tränen#Chance, Schaden zu blockieren"},
	{"Braune Pfütze", "Hinterlässt eine Spur von Creep#Das Stehen auf dem Creep erhöht Isaacs Schussrate und Schaden#Wenn der Creep andere Poops berührt, übernimmt er ihre Eigenschaften"},
	{"Furz", "Stößt nahegelegene Gegner und Geschosse zurück und erzeugt eine giftige Wolke#{{Warning}} Die Wolke explodiert, wenn sie Feuer berührt!"},
	{"Bombe", "Normale werfbare Bombe"},
	{"Explosiver Durchfall", "Isaac lässt schnell 5 brennende Bomben erscheinen"},

	--Undetected poop, for Poop API
	--[Poop name in code] = {Icon, Name, Description}
	["Unknown"] = {"{{PoopSpell1}}", "Unbekannte Kacke", "Unbekannter Effekt"}
}

EID.descriptions[languageCode].itemPoolFor = "Pool für Gegenstand:"
EID.descriptions[languageCode].itemPoolNames = {
	[0] = "Schatz", "Shop", "Boss", "Teufel", "Engel", "Geheimnis", "Bibliothek", "Shell Game", "Goldene Truhe", "Rote Truhe", "Bettler", "Dämonenbettler", "Fluch", "Schlüsselmeister", "Batterie-Bettler", "Mamas Truhe", "Gier Schatz", "Gier Boss", "Gier Shop", "Gier Teufel", "Gier Engel", "Gier Fluch", "Gier Geheimnis", "Cranium-Spiel", "Ultra-Geheimnis", "Bomben-Bum", "Planetarium", "Alte Truhe", "Baby-Shop", "Holztruhe", "Verdorbener Bettler",
}

EID.descriptions[languageCode].VoidShopText = "Wenn sofort nach dem Aufsammeln absorbiert, erhältst du:"
EID.descriptions[languageCode].VoidOptionText = " wird stattdessen absorbiert"
EID.descriptions[languageCode].VoidNames[2] = "{1} Feuerrate"

EID.descriptions[languageCode].PurityBoosts = {[0] = "↑ {{Damage}} +4 Schaden", "↑ {{Tears}} +2 Feuerrate", "↑ {{Speed}} +0.5 Geschwindigkeit", "↑ {{Range}} +3 Reichweite"}

EID.descriptions[languageCode].spindownError = "Gegenstand verschwindet"

EID.descriptions[languageCode].CraftingBagContent = "Tasche:"
EID.descriptions[languageCode].CraftingRoomContent = "Raum:"
EID.descriptions[languageCode].CraftingFloorContent = "Ebene:"
EID.descriptions[languageCode].CraftingSearch = "Suche:"

EID.descriptions[languageCode].CraftingBagQuality = "Taschenqualität:"
EID.descriptions[languageCode].CraftingBestQuality = "Beste Qualität:"

EID.descriptions[languageCode].CraftingHideKey = "Verstecken:"
EID.descriptions[languageCode].CraftingPreviewKey = "Vorschau:"
-- {1} will be converted to the number of recipes
EID.descriptions[languageCode].CraftingMore = "...+{1} mehr"
-- {1} will be converted into the number of available items
EID.descriptions[languageCode].CraftingNumAvailableItems = "{1} von 8 Gegenstände verfügbar"
EID.descriptions[languageCode].CraftingWarningAvailableItems = "Benötigt mindestens 8 um Rezepte anzuzeigen!"
-- {1} will be converted into the name of the key that toggles the BoC visibility
EID.descriptions[languageCode].CraftingIsHidden = "Aktuell ausgeblendet (einblenden mit {1})"

-- {1} will be converted into the name of the key that toggles the BoC Search
EID.descriptions[languageCode].CraftingResults = "(Scrollen: Halte {{CONFIG_BoC_Toggle}} + {{ButtonY}} {{ButtonA}}, Sperren: {{ButtonX}}, Aktualisieren: {{ButtonB}}, Tasche zurücksetzen: Halte {{ButtonRB}}, Suche: {1})"

EID.descriptions[languageCode].BlankCardEffect = "Effekt der Blanko-Karte:"
EID.descriptions[languageCode].VariableCharge = "{1} Ladung:"

EID.descriptions[languageCode].FlipItemToggleInfo = "(Halte {{CONFIG_BoC_Toggle}} gedrückt, um die Beschreibung anzuzeigen)"
EID.descriptions[languageCode].GlitchedCrownToggleInfo = "(Drücke {{CONFIG_BoC_Toggle}}, um die Beschreibung anzuzeigen: {1})"

EID.descriptions[languageCode].GlowingHourglassTransformed = "Verwandelt sich im nächsten Stockwerk wieder in Leuchtende Sanduhr"

EID.descriptions[languageCode].FalsePHDHeart = "Spawnt 1 {{BlackHeart}} Schwarzes Herz"
EID.descriptions[languageCode].FalsePHDDamage = "↑ {{Damage}} +0,6 Schaden"
EID.descriptions[languageCode].FalsePHDHorseDamage = "↑ {{Damage}} +1,2 Schaden"

EID.descriptions[languageCode].ExperimentalPillPHD = "Keine Status-Verbesserungen"
EID.descriptions[languageCode].ExperimentalPillFalsePHD = "Keine zufälligen Status-Verbesserungen"

EID.descriptions[languageCode].PandorasBoxStrangeKeyEffect = "Stattdessen verbraucht der Schlüssel und spawnt 6 Gegenstände aus zufälligen Pools"

EID.descriptions[languageCode].AchievementWarningTitle = "{{ColorYellow}}{{Warning}} WARNUNG {{Warning}}"
EID.descriptions[languageCode].AchievementWarningText = "Erfolge sind deaktiviert!#Um Fortschritt und Erfolge zu aktivieren, musst du zuerst Mom (Tiefen II) besiegen, ohne Mods zu aktivieren.#(Wenn du Mom besiegt hast, kann diese Meldung ignoriert werden)#(Diese Warnung kann in der Konfiguration deaktiviert werden)"
EID.descriptions[languageCode].OldGameVersionWarningText = "EID ist für die neueste Steam-Version aktualisiert#Ihre Spielversion wird nicht offiziell unterstützt, daher sind einige Beschreibungen und Funktionen möglicherweise ungenau#(Diese Warnung kann in der Konfiguration deaktiviert werden)"
EID.descriptions[languageCode].ModdedRecipesWarningText = "Modifizierte Gegenstände können die Berechnung der Crafting-Rezepte ungenau machen!#Installiere REPENTOGON für verbesserte Unterstützung modifizierter Rezepte#(Diese Warnung kann in der Konfiguration deaktiviert werden)"

-- Strings for Tainted Cain's pedestal salvaging; the non-base lines will have the corresponding icon automatically
EID.descriptions[languageCode].TaintedCainPedestalBase = "Verwandelt sich bei Berührung in 3-8 zufällige Pickups"
EID.descriptions[languageCode].TaintedCainPedestalBaseBirthright = "Verwandelt sich bei Berührung in {{BlinkBirthright}}6-16{{CR}} zufällige Pickups"
EID.descriptions[languageCode].TaintedCainPedestalGuaranteed = "Garantiert ein {n} {1}" -- Room type spawns
EID.descriptions[languageCode].TaintedCainPedestalBonus = "33% Chance für ein extra {1}" -- "Safety Cap" type spawns
EID.descriptions[languageCode].TaintedCainPedestalLuckyToe = "66% Chance für ein extra Pickup"
EID.descriptions[languageCode].TaintedCainPedestalLuckyToeBirthright = "66% Chance für {{BlinkBirthright}}2{{CR}} extra Pickups"
EID.descriptions[languageCode].TaintedCainPedestalDaemonsTail = "Herzen sind 80% unwahrscheinlicher"

EID.descriptions[languageCode].ResultsWithX = "(Ergebnisse mit {1})"

-- Conditional descriptions
-- Strings will be appended to the original description
-- Tables with one entry will completely replace the original description
-- Tables with two or more entries are find-replace pairs
local repConditions={
	-- Not yet Translated!
	-- Copy & Paste entries from English and continue translating from that
}
EID:updateDescriptionsViaTable(repConditions, EID.descriptions[languageCode].ConditionalDescs)

local repBFFSSynergies = {
	-- Not yet Translated!
	-- Copy & Paste entries from English and continue translating from that
}
EID:updateDescriptionsViaTable(repBFFSSynergies, EID.descriptions[languageCode].BFFSSynergies)

---------- Character Info ----------
local repCharacterInfo = {
	[4] = {"???", "Kann keine roten Herzen haben#{{SoulHeart}} HP-Up Items geben Seelenherzen#{{DevilRoom}} Teufelsgeschäfte, die 1 oder 2 Rote Herzen kosten würden, kosten stattdessen 1 oder 2 Seelenherzen#Kacke zerstören erzeugt 1 blaue Fliege"},
	[8] = {"Lazarus", "Ein mal pro Ebene, wenn du stirbst:#Wiederauferstehen als Auferstandener Lazarus#Verliere 1 roten Herz Container#↑ {{Damage}} +0.5 Schaden"},
	[11] = {"Auferstandener Lazarus", "Erhöhte Werte und x1.4 Schadensmultiplikator#Beim Betreten einer neuen Ebene, verwandelt sich zurück in Lazarus"},
	[12] = {"Dunkler Judas", "{{Damage}} x2 Schadensmultiplikator#Kann keine roten Herzen haben#{{BlackHeart}} Health ups grant Black Hearts#{{Player3}} Counts as Judas for completion marks"},
	--[14] = {"Hüter", "{{CoinHeart}} Heal by picking up coins#Maximum of 3 Coin Hearts#Heart pickups are turned into Blue Flies#{{DevilRoom}} Devil deals cost 15 or 30 coins"},
	--[18] = {"Bethanie", "{{SoulHeart}} Use Soul Hearts to charge your active item#Can't use Soul Hearts as health"},
	--[19] = {"Jakob", "Control Jakob and Esau at the same time#Both characters drop a bomb when one is used#Esau stays in place while holding {{ButtonRT}}#{{ButtonLT}} uses Jakob's active, {{ButtonRB}} uses Esau's active, hold {{ButtonRT}} to use their card/pill#When there's a choice between items, Jakob and Esau can grab two simultaneously"},
	--[20] = {"Esau", "Control Jakob and Esau at the same time#Both characters drop a bomb when one is used#Esau stays in place while holding {{ButtonRT}}#{{ButtonLT}} uses Jakob's active, {{ButtonRB}} uses Esau's active, hold {{ButtonRT}} to use their card/pill#When there's a choice between items, Jakob and Esau can grab two simultaneously"},
	
	--[21] = {"Befleckter Isaac", "Item pedestals cycle between 2 options#You can only carry 8 passive items#Change which item will be dropped for a 9th item with {{ButtonRT}}"},
	[22] = {"Befleckte Magdalene", "Gesundheit über 2 Rote Herzen wird langsam abgebaut#Führt bei Kontakt einen Nahkampfangriff für 6x Schaden aus#{{HalfRedHeart}} Chance für Feinde, halbe rote Herzen fallen zu lassen, die nach 2 Sekunden verschwinden#Herz wird bei Nahkampftötung garantiert#{{Sammelbares45}} Doppelt so viel Heilung aus nicht-aufnehmbaren Quellen#{{AngelDevilChance}} Schaden, der durch das Ablassen von Herzen verursacht wird, wirkt sich nicht auf die Chance auf einen Teufelsschlag aus"},
	[23] = {"Befleckter Cain", "Das Berühren eines Items verwandelt es in mehrere Pickups"},
	[24] = {"Befleckter Judas", "Kann keine roten Herzen haben#{{BlackHeart}} HP-Up Items geben schwarze Herzen"},
	--[25] = {"Befleckter ???", "Bombs are replaced with Poop Spells#{{Crafting29}} Doing damage spawns poop pickups#{{Collectible715}} You can store the next spell for later by using Hold"},
	--[26] = {"Befleckte Eve", "Holding Fire converts your hearts into Clot familiars#Different Heart types spawn Clots with more health and tear effects#Clots lose health over time#Clots stay in place while holding {{ButtonRT}}#At half a heart left with no Clots, you gain a Mom's Knife-like attack until you heal and leave the room"},
	--[27] = {"Befleckter Samson", "Dealing or taking damage builds up Berserk mode#{{Timer}} When you go berserk, receive for 5 seconds:#↑ {{Speed}} +0.4 Speed#↓ {{Tears}} x0.5 Fire rate multiplier#↑ {{Tears}} +2 Fire rate#↑ {{Damage}} +3 Damage#Restricts attacks to a melee that reflects shots#{{Timer}} Each kill increases the duration by 1 second and grants brief invincibility"},
	--[28] = {"Befleckter Azazel", "When you start charging, you sneeze blood#Hitting an enemy with the sneeze halves your charge time#The sneeze deals 1.5x Azazel's damage#{{BrimstoneCurse}} Affected enemies take extra damage from Brimstone beams#On death, cursed enemies explode and pass on the curse to nearby enemies"},
	--[29] = {"Befleckter Lazarus", "Lazarus has two states, each with their own items and health#Clearing a room/wave or using Flip switches to the other state"},
	--[30] = {"Befleckte Eden", "When you take damage, reroll your stats, items, trinket, and consumables#Items reroll into an item from the same item pool#Self-damage doesn't reroll"},
	--[31] = {"Befleckter Lost", "{{Card51}} Cards that spawn have a 10% chance to be Holy Card#Quality {{Quality2}} or less items have a 20% chance to be rerolled#Only \"offensive\" items can spawn"},
	--[32] = {"Befleckter Lilith", "Pressing Fire launches a short-range fetus melee attack that does 3x damage#Holding Fire keeps the fetus out shooting tears towards the nearest enemy"},
	--[33] = {"Befleckter Hüter", "Maximum of 2 Coin Hearts#Enemies drop coins that disappear in 2 seconds#Most item pedestals cost 15 coins#Devil deals and Angel items cost 15 or 30 coins#Shops don't require a key and have increased stock"},
	[34] = {"Befleckter Apollyon", ""},
	--[35] = {"Befleckter Vergessener", "The Forgotten is an immobile bone pile that is picked up and thrown by The Soul for 3x damage#Only The Soul can take damage#Bombs are placed at Forgotten's location#Can't have Red Hearts#{{SoulHeart}} Health ups grant Soul Hearts"},
	--[36] = {"Befleckte Bethanie", "{{Heart}} Use Red Hearts to charge your active item#Can't have Red Hearts#{{SoulHeart}} Health ups grant Soul Hearts and blood charges#Stat increases are only 75% effective"},
	--[37] = {"Befleckter Jakob", "Dark Esau chases you, charging towards you when close#The charge does a lot of damage to enemies#If he hits you, you turn into a ghost that dies in one hit for the rest of the floor#While a ghost, one devil deal per room can be taken for free"},
	--[38] = {"Toter befleckter Lazarus", "Lazarus has two states, each with their own items and health#Clearing a room/wave or using Flip switches to the other state"},
	--[39] = {"Befleckte Seele von Jakob", "Flight#Spectral tears#{{Warning}} No health#{{Warning}} Die if hit by Dark Esau#{{DevilRoom}} One devil deal per room can be taken for free#Turn back into Tainted Jakob in the next floor"},
	--[40] = {"Befleckte vergessene Seele", "The Forgotten is an immobile bone pile that is picked up and thrown by The Soul for 3x damage#Only The Soul can take damage#Bombs are placed at Forgotten's location#Can't have Red Hearts#{{SoulHeart}} Health ups grant Soul Hearts"},
}
EID:updateDescriptionsViaTable(repCharacterInfo, EID.descriptions[languageCode].CharacterInfo)





-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repCollectibles = repCollectibles
	EID.descriptions[languageCode].repTrinkets = repTrinkets
	EID.descriptions[languageCode].repCards = repCards
	EID.descriptions[languageCode].repPills = repPills
end

if REPENTOGON then
	EID.descriptions[languageCode].custom["6.8.0"] = {"0", "Spendenmaschine", "Nächster Erfolg bei {1} Münzen, noch {2} Münzen#{{Luck}} 2% Chance für +1 Glück nach Spende#{{AngelRoom}} 10 Münzen spenden erhöht Engelraum-Chance"}
	EID.descriptions[languageCode].custom["6.11.0"] = {"0", "Gier Spendenmaschine", "Nächster Erfolg bei {1} Münzen, noch {2} Münzen"}
end
