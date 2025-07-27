---------------------------------------
-----  Basic English descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "de"

---------- Collectibles ----------

local collectibles = {
	-- Change: added "Creep persists until you exit the room"
	[56] = { "56", "Zitronen-Missgeschick", "Hinterlässt eine Pfütze#Die Pfütze verursacht 24 Schaden pro Sekunde#Bleibt bestehen bis du den Raum verlässt" }, -- Lemon Mishap
	-- Change: added "Persists between rooms if player is at 1/2 hearts"
	[117] = { "117", "Toter Vogel", "Beim Erleiden von Schaden erscheint ein Vogel, der Feinde angreift#Der Vogel verursacht bei Kontakt 4.3 Schaden pro Sekunde#Bleibt bestehen, solange der Spieler nur 1/2 Herz hat" }, -- Dead Bird
	-- Change: added "Blocks enemy tears"
	[281] = { "281", "Boxsack", "Lockvogel#Feinde zielen auf ihn statt auf Isaac#Blockiert feindliche Tränen" }, -- Punching Bag
	-- Change: added "+0.2 Shot speed"
	[329] = { "329", "Die Ludovico-Technik", "↑ {{Shotspeed}} +0.2 Schusstempo#Ersetzt Isaac's Tränen mit einer großen steuerbaren Träne" }, -- The Ludovico Technique
	-- Change: Complete rewrite
	[351] = { "351", "Mega Bohne", "Verursacht 100 Schaden und versteinert alle Gegner im Raum#{{Poison}} Verursacht 5 Schaden und vergiftet alle Gegner in der Nähe#Kann geheime Räume öffnen und Felsen zerbrechen" }, -- Mega Bean
	-- Change: Complete rewrite
	[436] = { "436", "Milch!", "Blockiert gegnerische Geschosse#{{Tears}} Zerbricht nach 10 Treffern und gewährt für den Rest des Levels einen Tränen-Boost" }, -- Milk!
	-- Change: Complete rewrite
	[447] = { "447", "Gartenbohne", "Schießen ohne Pause für 4 Sekunden erzeugt eine Kackwolke#Die Wolke vergrößert sich über 10 Sekunden#Die Wolke verursacht weniger Schaden, je größer sie wird#Sie kann durch Schießen bewegt werden" }, -- Linger Bean
	-- Change: added " and fires radial bursts of tears"
	[470] = { "470", "Hushy", "Prallt durch den Raum umher#Verursacht 30 Kontaktschaden pro Sekunde#Hält an, wenn Isaac schießt#Blockiert Geschosse, wenn er angehalten wird, und feuert radiale Tränenstöße ab" }, -- Hushy
	-- Change: added "Turns item pedestals into glitched items"
	[481] = { "481", "Data-Miner", "↑ Zufällige Erhöhung der Werte#↓ Zufällige Verringerung der Werte#{{Timer}} Zufällige Träneneffekte für den Raum#Verwandelt Items in Glitch-Items#{{Blank}} Macht alle Sprites und Musik im Raum kaputt" }, -- Dataminer
	-- Change: Reduced the chance of removing the most recent item to 50%
	[482] = { "482", "Klicker", "Ändert deinen Charakter in einen anderen zufälligen Charakter#50% Chance, das zuletzt gesammelte Objekt zu verlieren" }, -- Clicker
	-- Change: Complete rewrite
	[510] = { "510", "Im Delirium", "Beschwört eine freundliche Delirium-Version eines Bosses#Persistiert zwischen Räumen#{{Warning}} Es kann immer nur ein Endgegner aktiv sein#Das Leben des Endgegners reduziert sich über die Zeit" }, -- Delirious
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = { "560", "Das tut weh", "{{Timer}} Beim Erleiden von Schaden, erhalte für den Raum:#↑ {{Tears}} +1.2 Feuerrate beim ersten Treffer#↑ {{Tears}} +0.4 Feuerrate bei jeden weiteren Treffer#Lässt einen Ring aus 10 Tränen um Isaac entstehen#Tränen hinterlassen beim Aufprall eine Pfütze" }, -- It Hurts
	-- Change: Added ring of fire on impact description
	[593] = { "593", "Mars", "Durch zweimaliges Tippen auf eine Bewegungstaste sprintet Isaac#{{Damage}} Während eines Sprints ist Isaac unbesiegbar und verursacht das Vierfache seines Schadens +8#{{Timer}} 3 Sekunden Abklingzeit#{{Burning}} Erzeugt beim Aufprall einen Feuerring" }, -- Mars
	-- Change: Heals 2 hearts instead of 1/2
	[594] = { "594", "Jupiter", "↑ {{EmptyHeart}} +2 Leere Herzcontainer#↓ {{Speed}} -0.3 Geschwindigkeit#{{HealingRed}} Heilt 2 Herzen#{{Speed}} Geschwindigkeit erhöht sich auf +0.5, wenn man stillsteht#{{Poison}} Bewegung setzt Giftwolken frei#{{Poison}} Gift Immunität" }, -- Jupiter
	-- Change: Complete rewrite
	[632] = { "632", "Böser Schutzstein", "↑ {{Luck}} +2 Glück#Immunität gegen {{Burning}} Feuerschaden, {{Confusion}} Verwirrung, {{Fear}} Angst, {{Slow}} Spinnenweben und {{Poison}} Gift Effekte#Gewährt 1 Sekunde Immunität gegen Pfützen" }, -- Evil Charm
	-- Change: Adjusted the stat boost to match Hallowed Ground
	[651] = { "651", "Stern von Bethlehem", "Bewegt sich langsam vom ersten Raum der Etage zum {{BossRoom}}Boss-Raum#Bewegt sich schneller, wenn du vor ihm bist, und langsamer, wenn du dahinter bist#Das Stehen in seiner Aura gewährt:#↑ {{Tears}} x2,5 Tränenmultiplikator#↑ {{Damage}} x1,2 Schadensmultiplikator#Zielsuchende Tränen#50% Chance, Schaden zu ignorieren" }, -- Star of Bethlehem
	-- Change: Added Shop as a new destination
	[660] = { "660", "Kartenlesen", "Erzeugt zwei Portale im ersten Raum jeder Etage#Das Verlassen des Raums deaktiviert die Portale#{{Blank}} {{ColorRed}}Rot: {{CR}}{{BossRoom}} Boss Raum#{{Blank}} {{ColorYellow}}Gelb: {{CR}}{{TreasureRoom}} Itemraum#{{Blank}} {{ColorBlue}}Blau: {{CR}}{{SecretRoom}} Geheimraum#{{Blank}} {{ColorGreen}}Grün: {{CR}}{{Shop}} Shop" }, -- Card Reading
	-- Change: Complete rewrite
	[681] = { "681", "Kleines Portal", "Doppeltes Tippen auf eine Feuertaste startet das Portal#Verursacht Kontaktschaden, wenn es gestartet wird#Verzehrt Pickups auf seinem Weg#Jeder verzehrtes Pickup erhöht seine Größe, seinen Schaden und bringt eine blaue Fliege hervor#Das Verzehren von 2-3 Pickups erzeugt ein Portal zu einem speziellen Raum und der Begleiter verschwindet für den Rest des Levels#Der Inhalt des Raums bleibt für den Rest des Laufs bestehen" }, -- Lil Portal
	-- Change: Added into for first usage
	[685] = { "685", "Glas mit Irrlichtern", "Erzeugt ein zufälliges Irrlicht#Erzeugt bei jeder Verwendung ein zusätzliches Irrlicht, bis zu 12 möglich#Die erste Verwendung gewährt 2 Irrlichter" }, -- Jar of Wisps
	-- Change: Added info about the damage based on item quality
	[706] = { "706", "Abgrund", "Konvertiert alle Itempodeste im Raum in freundliche Heuschrecken#Einige Items erzeugen eine spezielle Heuschrecke#{{Damage}} Heuschrecken verursachen Isaacs Schaden multipliziert mit der Qualität des konvertierten Items:#{{Quality0}} - 0.5x#{{Quality1}} - 0.75x#{{Quality2}} - 1.0x#{{Quality3}} - 1.5x#{{Quality4}} - 2.0x" }, -- Abyss
}
EID:updateDescriptionsViaTable(collectibles, EID.descriptions[languageCode].collectibles)

---------- Trinkets ----------

local trinkets = {
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = { "53", "Zecke", "{{HealingRed}} Heilt 1 Herz beim Betreten eines {{BossRoom}} Bossraums#-15% Boss Leben#{{Warning}} Kann nach dem Aufheben nicht entfernt werden#Nur entfernbar mit {{Trinket41}} Streichholz, {{Trinket135}} Feuerzeug, oder \"Schlucken\"" }, -- Tick
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = { "97", "Mandel", "Beschwört nach 6-12 Schaden nehmen einen Begleiter, der Projektile blockiert# Maximal 2 Begleiter" },                                                                                                                                      -- Tonsil
	-- Change: added "Bombs deal 15% more damage"
	[133] = { "133", "Kurze Zündschnur", "Isaacs Bomben explodieren schneller#Bombem machen 15% mehr Schaden" },                                                                                                                                                         -- Short Fuse
	-- Change: "2%" to "5%"
	[104] = { "104", "Wunschknochen", "Beim Schaden nehmen, 5% Chance kaputt zu gehen und ein Item zu beschwören" },                                                                                                                                                     -- Wish Bone
	-- Change: "2%" to "5%"
	[105] = { "105", "Lunchpaket", "{{Collectible22}} Beim Schaden nehmen, 5% Chance kaputt zu gehen und \"Mittagessen\" zu beschwören" },                                                                                                                               -- Bag Lunch
}
EID:updateDescriptionsViaTable(trinkets, EID.descriptions[languageCode].trinkets)

---------- Cards ----------

local cards = {
	-- Change: Added "1% chance to spawn a Crane Game instead"
	[11] = { "11", "X - Glücksrad", "Beschwört einen {{Slotmachine}} Spielautomaten oder {{FortuneTeller}} Wahrsager-Maschine#{{CraneGame}} 1% Chance ein Kranspiel zu beschwören" }, -- X - Wheel of Fortune
	-- Change: Complete rewrite
	[38] = { "38", "Berkano", "{{Collectible706}} Beschwört 3 Heuschrecken für den Raum" }, -- Berkano
}
EID:updateDescriptionsViaTable(cards, EID.descriptions[languageCode].cards)

local tarotClothBuffs = {
	-- Change: Added Crane Game
	[11] = { " einen ", " 2 ", "Spielautomaten", "{{CR}}Spielautomaten", "Wahrsager-Maschine", "{{CR}}Wahrsager-Maschinen", "ein Kranspiel", "zwei {{CR}}Kranspiele" }, -- X - Wheel of Fortune
}
EID:updateDescriptionsViaTable(tarotClothBuffs, EID.descriptions[languageCode].tarotClothBuffs)

---------- Pills ----------

local horsepills = {
	-- Change: Forgets all previously identified pills
	[26] = { "25", "Amnesie", "{{CurseLost}} Versteckt die Ebenen-Karte#{{Pill}} Vergesse alle zuvor identifizierten Pillen" }, -- Amnesia
}
EID:updateDescriptionsViaTable(horsepills, EID.descriptions[languageCode].horsepills)

---------- Conditions ----------
EID.descriptions[languageCode].ConditionalDescs["5.100.566"] = nil -- Dream Catcher (Greed) - In Rep+, the dream preview works in greed mode as well, so no changes needed

local conditions = {
	-- Change: Removed info about Infinte usage of Yum Heart, because its fixed. Now, bleeding hearts provide only half the charge of a regilar heart container
	["5.100.205 (Tainted Magdalene)"] = "Blutende Herzen liefern nur die Hälfte der Ladung eines normalen Herzbehälters", -- Sharp Plug + Tainted Magdalene
}
EID:updateDescriptionsViaTable(conditions, EID.descriptions[languageCode].ConditionalDescs)

---------- Synergies ----------

-- Special Locust effects when Item was eaten by Abyss. Entries here will override the auto-generated descriptions
local abyssSynergies = {
	[706] = "Beschwört 16 Heuschrecken mit verschiedenen Farben und Effekten", -- Abyss
}

-- Remove all entries from Repentance file, and only add special descriptions relevant to Repentance+
EID.descriptions[languageCode].abyssSynergies = {}
EID:updateDescriptionsViaTable(abyssSynergies, EID.descriptions[languageCode].abyssSynergies)

-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
