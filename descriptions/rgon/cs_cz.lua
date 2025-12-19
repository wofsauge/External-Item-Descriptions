---------------------------------------
-----  Basic Czech descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "cs_cz"

---------- Collectibles ----------

local collectibles = {
	-- Change: added "Creep persists until you exit the room"
	[56] = {"56", "Citronová Nehoda", "Vytvoří kaluž limonády#Kaluž působí 24 poškození za sekundu#Kaluž tu zůstane, dokud neopustíš aktuální místnost"}, -- Lemon Mishap
	-- Change: added "Přetrvává mezi místnostmi, pokud má hráč 1/2 srdce"
	[117] = {"117", "Mrtvý Pták", "Vytvoří mrtvého ptáka, když dostaneš zasáh, a útočí na nepřátele#Pták způsobí 4.3 kontaktního poškození za sekundu#Přetrvává mezi místnostmi, pokud má hráč 1/2 srdce"}, -- Dead Bird
	-- Change: added "Blocks enemy tears"
	[281] = { "281", "Boxovací Pytel", "Spojenec jakožto návnada#Nepřátelé se zaměřují na něj místo na Izáka#Blokuje nepřátelské slzy" }, -- Punching Bag
	-- Change: added "+0.2 Shot speed"
	[329] = { "329", "Technika Ludovico", "↑ {{Shotspeed}} +0.2 Rychlost střel#Nahradí Izákovy slzy jednou obrovskou, kontrolovatelnou slzou" }, -- The Ludovico Technique
	-- Change: Complete rewrite
	[351] = {"351", "Mega Fazole", "Uděluje 100 poškození a zmrazí všechny nepřátele v místnosti#{{Poison}} Způsobí 5 poškození a otráví všechny nepřátele v okolí#Dokáže otevřít tajné místnosti a rozbíjet kameny"}, -- Mega Bean
	-- Change: Complete rewrite
	[436] = {"436", "Mléko!", "Blokuje nepřátelské střely#{{Tears}} Po 10 úderech se rozbije a získáš Více Slz po zbytek běhu"}, -- Milk!
	-- Change: Complete rewrite
	[447] = {"447", "Loudavá Fazole", "Střílení bez pauzy po dobu 4 sekund vytvoří malý smradlavý oblak#Oblak zvětšuje svou velikost po dobu 10 sekund#Čím větší bude oblak, tím však bude menší poškození#Dá se posunout pomocí střílením na něj"}, -- Linger Bean
	-- Change: added " and fires radial bursts of tears"
	[470] = {"470", "Hushy", "Poskakuje po místnosti#Způsobí kontaktního poškození 30 za sekundu#Při střelbě se přestane pohybovat#Blokuje střely při zastavení a sám vystřeluje salvu slz do kruhu"}, -- Hushy
	-- Change: added "Turns item pedestals into glitched items"
	[481] = {"481", "Data Těžič", "↑ Náhodné zvýšení statu#↓ Náhodné snížení statu#{{Timer}} Náhodné slzné efekty pro místnost#Promění předměty na podstavci na poškozené předměty (jako u TMTRAINERu)#{{Blank}} Posere všechny textury a hudbu v místnosti"}, -- Dataminer
	-- Change: Reduced the chance of removing the most recent item to 50%
	[482] = { "482", "TV Ovladač", "Promění tě v jinou náhodnou postavu#50% šance na odstranění posledního sebraného předmětu" }, -- Clicker
	-- Change: Complete rewrite
	[510] = {"510", "Blouznivec", "Vytvoří přátelskou Delíriovskou verzi bosse#Přetrvává mezi místnostmi#{{Warning}} V jednu chvíli může být aktivní pouze jeden boss#Nabíjení předmětu zavisí na kvalitě dříve vytvořeného bosse"}, -- Delirious
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = {"560", "To bolí", "{{Timer}} Při poškození získáš za místnost:#↑ {{Tears}} +1.2 Více Slz za první zásah#↑ {{Tears}} +0.4 za každý další zásah#Uvolní kolem Izáka kruh 10 slz#Slzy při dopadu zanechávají kaluž"}, -- It Hurts
	-- Change: Added ring of fire on impact description
	[593] = { "593", "Mars", "Vystřelí Izáka dopředu dvojitým kliknutím klávesou pohybu#{{Damage}} Během úprku je Izák neporazitelný a způsobuje 4x své poškození +8.#{{Timer}} 3 sekundy cooldown#{{Burning}} Při nárazu vytvoří ohnivý kruh" }, -- Mars
	-- Change: Heals 2 hearts instead of 1/2
	[594] = {"594", "Jupiter", "↑ {{EmptyHeart}} +2 prázdná místa pro srdce#↓ {{Speed}} Snížení rychlosti o -0.3#{{HealingRed}} Vyléčí 2 srdce#{{Speed}} Zvýšení až +0,5 rychlosti, pokud stojíš na místě#{{Poison}} Při pohybu se za tebou uvolňují jedovaté prdy#{{Poison}} Imunita vůči jedu"}, -- Jupiter
	-- Change: Complete rewrite
	[632] = {"632", "Zlé Kouzlo", "↑ {{Luck}} +2 Štěstí#Imunita vůči: {{Burning}} ohni, {{Confusion}} zmatení, {{Fear}} strachu, {{Slow}} pavučin a {{Poison}} jedovatého efektu#Poskytuje 1 sekundu imunity proti kalužím"}, -- Evil Charm
	-- Change: Adjusted the stat boost to match Hallowed Ground
	[651] = { "651", "Betlémská Hvězda", "Pomalu putuje z první místnosti v patře do {{BossRoom}} místnosti s Bossem#Pohybuje se rychleji, pokud jsi před ní, a pomaleji, pokud jsi za ní.#Pokud stojíš v její auře, uděluje:#↑ {{Tears}} x2.5 Slzný násobič#↑ {{Damage}} x1.2 násobič poškození#Navádeně slzy#50% šance na ignorování poškození" }, -- Star of Bethlehem
	-- Change: Added Shop as a new destination
	[660] = {"660", "Čtení z Karet", "Vytvoří dva portály na začátku každého patra#Portály zmizí, když opustíš místnost#{{Blank}} {{ColorRed}}Červený: {{CR}}{{BossRoom}} Boss místnost#{{Blank}} {{ColorYellow}}Žlutý: {{CR}}{{TreasureRoom}} Pokladnice#{{Blank}} {{ColorBlue}}Modrý: {{CR}}{{SecretRoom}} Tajná místnost#{{Blank}} {{ColorGreen}}Zelená: {{CR}}{{Shop}} Obchod"}, -- Card Reading
	-- Change: Complete rewrite
	[681] = {"681", "Malý Portál", "Dvojitým klepnutím tlačítkem střelby vymrštíš před sebou Malý Portál#Způsobuje kontaktní poškození když letí dopředu#Konzumuje při tom pickupy, které má před sebou#Každý z nich mu zvětší jeho velikost, poškození a vytvoří modrou mušku#Po 2-3 pickupech vytvoří portál do speciální místnosti a spojenec zmizí po zbytek patra#Obsah v této místnosti přetrvává po zbytek běhu"}, -- Lil Portal
	-- Change: Added into for first usage
	[685] = { "685", "Nádoba s Bludičkami", "Vytvoří 2 náhodné bludičky#Při každém použití vytvoří jednu další bludičku, maximálně 12" }, -- Jar of Wisps
	-- Change: Added info about the damage based on item quality
	[706] = {"706", "Hlubina", "Zkonzumuje všechny předměty v místnosti a vytvoří spojeneckou útočnou mušku za každý předmět#Některé předměty při konzumaci vytvoří speciální mušku#{{Damage}} Mušky způsobí Izákovo poškození vynásobené kvalitou spotřebovaného předmětu:#{{Quality0}} - 0.5x#{{Quality1}} - 0.75x#{{Quality2}} - 1.0x#{{Quality3}} - 1.5x#{{Quality4}} - 2.0x"}, -- Abyss
}
EID:updateDescriptionsViaTable(collectibles, EID.descriptions[languageCode].collectibles)

---------- Trinkets ----------

local trinkets = {
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = {"53", "Klíště", "{{HealingRed}} Vyléčí 1 Červené Srdce při vstupu do {{BossRoom}} Boss Místnosti#-15% bossova života#{{Warning}} Pokud klíště vezmeš, nemůžeš jej pak sundat#Ale lze jej odstranit pouze se {{Trinket41}} zápalkou, {{Trinket135}} zapalovačem, nebo polknutím pomocí 'polk' pilulky"}, -- Tick
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = {"97", "Mandle", "Při utrpení poškození 6-12krát vytvoří spojence který blokuje střely#Max. +2 spojenci"}, -- Tonsil
	-- Change: added "Bombs deal 15% more damage"
	[133] = {"133", "Krátká Pojistka", "Bomby umístěné Izákem explodují rychleji#Bomby způsobí o 15 % větší poškození"}, -- Short Fuse
	-- Change: "2%" to "5%"
	[104] = {"104", "Kost Přání", "5% šance na sebe-zničení a zároveň i vytvoření předmětu, když dostaneš zásah"}, -- Wish Bone
	-- Change: "2%" to "5%"
	[105] = {"105", "Oběd v Sáčku", "{{Collectible22}} 5% šance na vytvoření oběda, když dostaneš zásah"}, -- Bag Lunch
}
EID:updateDescriptionsViaTable(trinkets, EID.descriptions[languageCode].trinkets)


------- Zlaté Trinkety -------

local goldenTrinketEffects = {
	-- Tick (replace): added ", {{Trinket135}} Zapalovač"
	[53] = {
		"{{HealingRed}} Vyléčí {{ColorGold}}2{{CR}} srdce když vstoupíš do {{BossRoom}}Boss Místnosti#-{{ColorGold}}30{{CR}}% bossovo zdraví#{{ColorGold}}Odnímatelné!",
		"{{HealingRed}} Vyléčí {{ColorGold}}2{{CR}} srdce když vstoupíš do {{BossRoom}}Boss Místnosti#-{{ColorGold}}30{{CR}}% bossovo zdraví#{{Warning}} Jakmile je jednou sebráno, nelze jej odstranit#Ale lze jej odstranit pouze {{Trinket41}} Zápalkou, {{Trinket135}} Zapalovačem anebo spolknutím",
		"{{HealingRed}} Vyléčí {{ColorGold}}3{{CR}} srdce když vstoupíš do {{BossRoom}}Boss Místnosti#-{{ColorGold}}30{{CR}}% bossovo zdraví#{{ColorGold}}Odnímatelné!",
	},
}
EID:updateDescriptionsViaTable(goldenTrinketEffects, EID.descriptions[languageCode].goldenTrinketEffects)


---------- Karty ----------

local cards = {
    -- Change: Added "1% chance for it to be a Crane Game"
	[11] = { "11", "X - Kolo štěstí", "{{Slotmachine}} Vytvoří výherní automat#{{FortuneTeller}} 24% šance na Věštecký stroj#{{CraneGame}} 1% šance na Drapák" }, -- X - Wheel of Fortune
	-- Change: Complete rewrite
	[38] = {"38", "Berkano", "{{Collectible706}} Vytvoří 3 mušky Hlubiny pro aktuální místnost"}, -- Berkano
}
EID:updateDescriptionsViaTable(cards, EID.descriptions[languageCode].cards)

local tarotClothBuffs = {
	-- Change: Added Crane Game
	[11] = {"výherní automat", " 2 {{CR}}výherní automaty", " to ", " {{CR}}každé ", " to ", " {{CR}}každé"}, -- X - Wheel of Fortune
}
EID:updateDescriptionsViaTable(tarotClothBuffs, EID.descriptions[languageCode].tarotClothBuffs)


---------- Pilulky ----------

local horsepills = {
	-- Change: Forgets all previously identified pills
	[26] = { "25", "Amnézie", "{{CurseLost}} Skryje mapu patra#{{Pill}} Zapomeneš na všechny dříve identifikované pilulky" }, -- Amnesia
}
EID:updateDescriptionsViaTable(horsepills, EID.descriptions[languageCode].horsepills)


---------- Podmínky ----------

EID.descriptions[languageCode].ConditionalDescs["5.100.566"] = nil -- Dream Catcher (Greed) - In Rep+, the dream preview works in greed mode as well, so no changes needed

local conditions = {
	-- Change: Removed info about Infinte usage of Yum Heart, because its fixed. Now, bleeding hearts provide only half the charge of a regilar heart container
	["5.100.205 (Tainted Magdalene)"] = "Krvácející srdce poskytují pouze poloviční náboj oproti běžnému místo pro srdce", -- Sharp Plug + Tainted Magdalene
}
EID:updateDescriptionsViaTable(conditions, EID.descriptions[languageCode].ConditionalDescs)


---------- Synergie ----------

-- Special Locust effects when Item was eaten by Abyss. Entries here will override the auto-generated descriptions
local abyssSynergies = {
	[706] = "Vytvoří 16 kobylek s různými barvami a efekty", -- Abyss
}

-- Remove all entries from Repentance file, and only add special descriptions relevant to Repentance+
EID.descriptions[languageCode].abyssSynergies = {}
EID:updateDescriptionsViaTable(abyssSynergies, EID.descriptions[languageCode].abyssSynergies)


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
