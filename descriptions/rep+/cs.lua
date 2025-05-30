---------------------------------------
-----  Basic Czech descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "cs"

---------- Collectibles ----------

local collectibles = {
	-- Change: added "Creep persists until you exit the room"
	[56] = {"56", "Citronová Nehoda", "Vytvoří kaluž limonády#Kaluž působí 24 poškození za sekundu#Kaluž tu zůstane, dokud neopustíš aktuální místnost"}, -- Lemon Mishap
	-- Change: added "Přetrvává mezi místnostmi, pokud má hráč 1/2 srdce"
	[117] = {"117", "Mrtvý Pták", "Vytvoří mrtvého ptáka, když dostaneš zasáh, a útočí na nepřátele#Pták způsobí 4.3 kontaktního poškození za sekundu#Přetrvává mezi místnostmi, pokud má hráč 1/2 srdce"}, -- Dead Bird
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
	-- Change: Complete rewrite
	[510] = {"510", "Blouznivec", "Vytvoří přátelskou Delíriovskou verzi bosse#Přetrvává mezi místnostmi#{{Warning}} V jednu chvíli může být aktivní pouze jeden boss#Nabíjení předmětu zavisí na kvalitě dříve vytvořeného bosse"}, -- Delirious
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = {"560", "To bolí", "{{Timer}} Při poškození získáš za místnost:#↑ {{Tears}} +1.2 Více Slz za první zásah#↑ {{Tears}} +0.4 za každý další zásah#Uvolní kolem Izáka kruh 10 slz#Slzy při dopadu zanechávají kaluž"}, -- It Hurts
	-- Change: Heals 2 hearts instead of 1/2
	[594] = {"594", "Jupiter", "↑ {{EmptyHeart}} +2 prázdná místa pro srdce#↓ {{Speed}} Snížení rychlosti o -0.3#{{HealingRed}} Vyléčí 2 srdce#{{Speed}} Zvýšení až +0,5 rychlosti, pokud stojíš na místě#{{Poison}} Při pohybu se za tebou uvolňují jedovaté prdy#{{Poison}} Imunita vůči jedu"}, -- Jupiter
	-- Change: Complete rewrite
	[632] = {"632", "Zlé Kouzlo", "↑ {{Luck}} +2 Štěstí#Imunita vůči: {{Burning}} ohni, {{Confusion}} zmatení, {{Fear}} strachu, {{Slow}} pavučin a {{Poison}} jedovatého efektu#Poskytuje 1 sekundu imunity proti kalužím"}, -- Evil Charm
	-- Change: Added Shop as a new destination
	[660] = {"660", "Čtení z Karet", "Vytvoří dva portály na začátku každého patra#Portály zmizí, když opustíš místnost#{{Blank}} {{ColorRed}}Červený: {{CR}}{{BossRoom}} Boss místnost#{{Blank}} {{ColorYellow}}Žlutý: {{CR}}{{TreasureRoom}} Pokladnice#{{Blank}} {{ColorBlue}}Modrý: {{CR}}{{SecretRoom}} Tajná místnost#{{Blank}} {{ColorGreen}}Zelená: {{CR}}{{Shop}} Obchod"}, -- Card Reading
	-- Change: Complete rewrite
	[681] = {"681", "Malý Portál", "Dvojitým klepnutím tlačítkem střelby vymrštíš před sebou Malý Portál#Způsobuje kontaktní poškození když letí dopředu#Konzumuje při tom pickupy, které má před sebou#Každý z nich mu zvětší jeho velikost, poškození a vytvoří modrou mušku#Po 2-3 pickupech vytvoří portál do speciální místnosti a spojenec zmizí po zbytek patra#Obsah v této místnosti přetrvává po zbytek běhu"}, -- Lil Portal
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

---------- Cards ----------

local cards = {
	-- Change: Complete rewrite
	[38] = {"38", "Berkano", "{{Collectible706}} Vytvoří 3 mušky Hlubiny pro aktuální místnost"}, -- Berkano
}
EID:updateDescriptionsViaTable(cards, EID.descriptions[languageCode].cards)


---------- Conditions ----------
EID.descriptions[languageCode].ConditionalDescs["5.100.566"] = nil -- Dream Catcher (Greed) - In Rep+, the dream preview works in greed mode as well, so no changes needed


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
