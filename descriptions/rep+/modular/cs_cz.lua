local languageCode = "cs_cz"
---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 56] = "Vytvoří kaluž limonády#Kaluž působí 24 poškození za sekundu#Kaluž tu zůstane, dokud neopustíš aktuální místnost", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second#Creep persists until you exit the room"

	[C_ID .. 117] = "Vytvoří mrtvého ptáka, když dostaneš zasáh, a útočí na nepřátele#Přetrvává mezi místnostmi, pokud má hráč 1/2 srdce", -- Dead Bird
	-- Full old Desc: "Vytvoří mrtvého ptáka, když dostaneš zasáh, a útočí na nepřátele#Pták způsobí 4.3 kontaktního poškození za sekundu#Přetrvává mezi místnostmi, pokud má hráč 1/2 srdce"
	-- English: "Taking damage spawns a bird that attacks enemies#Persists between rooms if player is at 1/2 hearts"

	[C_ID .. 141] = "Vytvoří náhodný mincový trinket", -- Pageant Boy
	-- Full old Desc: "{{Coin}} Vytvoří 7 náhodných mincí#Vytvoří náhodný mincový trinket"
	-- English: "Spawns a random penny trinket"

	[C_ID .. 351] = "Uděluje 100 poškození a zmrazí všechny nepřátele v místnosti#{{Poison}} Způsobí 5 poškození a otráví všechny nepřátele v okolí#Dokáže otevřít tajné místnosti a rozbíjet kameny", -- Mega Bean
	-- English: "{{Petrify}} Deals 100 damage and petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Can open secret rooms and break rocks"

	[C_ID .. 420] = "Chůze v kruhu vytvoří na podlaze symbol pentagramu, který způsobí 130 poškození po dobu 4 sekund#Způsobuje větší exploze#Ohníčky explodují, když zhasnou", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds#Grants bigger explosions#Fireplaces explode when extinguished"

	[C_ID .. 436] = "Blokuje nepřátelské střely#{{Tears}} Po 10 úderech se rozbije a získáš Více Slz po zbytek běhu", -- Milk!
	-- English: "Blocks enemy projectiles#{{Tears}} After 10 hits, it breaks and grants a Tears up for the remainder of the floor"

	[C_ID .. 447] = "Střílení bez pauzy po dobu 4 sekund vytvoří malý smradlavý oblak#Oblak zvětšuje svou velikost po dobu 10 sekund#Čím větší bude oblak, tím však bude menší poškození#Dá se posunout pomocí střílením na něj", -- Linger Bean
	-- English: "Firing without pause for 4 seconds spawns a poop cloud#The cloud increases its size over 10 seconds#The cloud deals less damage the bigger it gets#It can be moved by shooting it"

	[C_ID .. 470] = "Poskakuje po místnosti#Při střelbě se přestane pohybovat#Blokuje střely při zastavení a sám vystřeluje salvu slz do kruhu", -- Hushy
	-- Full old Desc: "Poskakuje po místnosti#Způsobí kontaktního poškození 30 za sekundu#Při střelbě se přestane pohybovat#Blokuje střely při zastavení a sám vystřeluje salvu slz do kruhu"
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped and fires radial bursts of tears"

	[C_ID .. 475] = "{{Warning}} Zabije Izáka o 3 vteřiny později#10 až 12 sekund pro Delírium a Matku", -- Plan C
	-- Full old Desc: "Způsobí 9,999,999 poškození všem nepřátelům#{{Warning}} Zabije Izáka o 3 vteřiny později#10 až 12 sekund pro Delírium a Matku"
	-- English: "{{Warning}} Kills Isaac 3 seconds later#10 to 12 seconds for Delirium and Mother"

	[C_ID .. 481] = "{{Blank}} Posere všechny textury a hudbu v místnosti", -- Dataminer
	-- Full old Desc: "↑ Náhodné zvýšení statu#↓ Náhodné snížení statu#{{Timer}} Náhodné slzné efekty pro místnost#Promění předměty na podstavci na poškozené předměty (jako u TMTRAINERu)#{{Blank}} Posere všechny textury a hudbu v místnosti"
	-- English: "{{Timer}} Random tear effects for the room#Turns item pedestals into glitched items#{{Blank}} Corrupts all sprites and music in the room"

	[C_ID .. 482] = "Promění tě v jinou náhodnou postavu#50% šance na odstranění posledního sebraného předmětu", -- Clicker
	-- English: "Changes your character to a random character#50% chance of removing the most recent item collected"

	[C_ID .. 510] = "Vytvoří přátelskou Delíriovskou verzi bosse#Přetrvává mezi místnostmi#{{Warning}} V jednu chvíli může být aktivní pouze jeden boss#Nabíjení předmětu zavisí na kvalitě dříve vytvořeného bosse", -- Delirious
	-- English: "Spawns a friendly delirium version of a boss#Persists between rooms#{{Warning}} Only one boss can be active at a time#The health of the boss deteriorates over time"

	[C_ID .. 560] = "{{Timer}} Při poškození získáš za místnost:#↑ {{Tears}} +1.2 Více Slz za první zásah#↑ {{Tears}} +0.4 za každý další zásah#Uvolní kolem Izáka kruh 10 slz#Slzy při dopadu zanechávají kaluž", -- It Hurts
	-- English: "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac#Tears leave a pool of creep on impact"

	[C_ID .. 593] = "Vystřelí Izáka dopředu dvojitým kliknutím klávesou pohybu#{{Damage}} Během úprku je Izák neporazitelný a způsobuje 4x své poškození +8.#{{Timer}} 3 sekundy cooldown#{{Burning}} Při nárazu vytvoří ohnivý kruh", -- Mars
	-- English: "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown#{{Burning}} Creates a ring of fire on impact"

	[C_ID .. 632] = "Imunita vůči: {{Burning}} ohni, {{Confusion}} zmatení, {{Fear}} strachu, {{Slow}} pavučin a {{Poison}} jedovatého efektu#Poskytuje 1 sekundu imunity proti kalužím", -- Evil Charm
	-- Full old Desc: "↑ {{Luck}} +2 Štěstí#Imunita vůči: {{Burning}} ohni, {{Confusion}} zmatení, {{Fear}} strachu, {{Slow}} pavučin a {{Poison}} jedovatého efektu#Poskytuje 1 sekundu imunity proti kalužím"
	-- English: "Immune to {{Burning}} fire damage, {{Confusion}} confusion, {{Fear}} fear, {{Slow}} spider-webs and {{Poison}} poison effects#Grants 1 second immunity to creep"

	[C_ID .. 660] = "Vytvoří dva portály na začátku každého patra#Portály zmizí, když opustíš místnost#{{Blank}} {{ColorRed}}Červený: {{CR}}{{BossRoom}} Boss místnost#{{Blank}} {{ColorYellow}}Žlutý: {{CR}}{{TreasureRoom}} Pokladnice#{{Blank}} {{ColorBlue}}Modrý: {{CR}}{{SecretRoom}} Tajná místnost#{{Blank}} {{ColorGreen}}Zelená: {{CR}}{{Shop}} Obchod", -- Card Reading
	-- English: "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room#{{Blank}} {{ColorGreen}}Green: {{CR}}{{Shop}} Shop"

	[C_ID .. 681] = "Dvojitým klepnutím tlačítkem střelby vymrštíš před sebou Malý Portál#Způsobuje kontaktní poškození když letí dopředu#Konzumuje při tom pickupy, které má před sebou#Každý z nich mu zvětší jeho velikost, poškození a vytvoří modrou mušku#Po 2-3 pickupech vytvoří portál do speciální místnosti a spojenec zmizí po zbytek patra#Obsah v této místnosti přetrvává po zbytek běhu", -- Lil Portal
	-- English: "Double-tapping a fire button launches the portal#Deals contact damage when launched#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming 2-3 pickups spawns a portal to a special room and the familiar disappears for the rest of the floor#The content of the room persists for the rest of the run"

	[C_ID .. 685] = "Vytvoří 2 náhodné bludičky#Při každém použití vytvoří jednu další bludičku, maximálně 12", -- Jar of Wisps
	-- English: "Spawns 2 random wisps#Spawns one additional wisp with each use, up to 12"

	[C_ID .. 706] = "Zkonzumuje všechny předměty v místnosti a vytvoří spojeneckou útočnou mušku za každý předmět#Některé předměty při konzumaci vytvoří speciální mušku#{{Damage}} Mušky způsobí Izákovo poškození vynásobené kvalitou spotřebovaného předmětu:#{{Quality0}} - 0.5x#{{Quality1}} - 0.75x#{{Quality2}} - 1.0x#{{Quality3}} - 1.5x#{{Quality4}} - 2.0x", -- Abyss
	-- English: "Consumes all item pedestals in the room and spawns a locust familiar for each one#Some items spawn a special locust when consumed#{{Damage}} Locusts deal Isaac's damage multiplied by the item quality consumed:#{{Quality0}} - 0.5x#{{Quality1}} - 0.75x#{{Quality2}} - 1.0x#{{Quality3}} - 1.5x#{{Quality4}} - 2.0x"

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 5] = "2x šance na nepřátelské šampiony#Nepřátelé šampionů dávají více kořisti", -- Purple Heart
	-- English: "2x chance for champion enemies#50% chance for champion enemies to drop loot#Doubles champion enemy loot"

	[T_ID .. 16] = "Mámina Noha náhodně dupne každých 60 sekund#Pokud v boji trinket upustíš, Mámina noha na něj zadupá.", -- Mom's Toenail
	-- English: "{{MomBoss}} Dropping the trinket in hostile rooms will cause Mom's Foot to stomp its location"

	[T_ID .. 23] = "{{Player10}} Znovuzrodíš se jako Ztracený když zemřeš#{{SuperSecretRoom}} 33% šance na odhalení supertajné místnosti na novém patře", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death#{{SuperSecretRoom}} 33% chance to reveal Super Secret Room on new floor"

	[T_ID .. 53] = "{{HealingRed}} Vyléčí 1 Červené Srdce při vstupu do {{BossRoom}} Boss Místnosti#-15% bossova života#{{Warning}} Pokud klíště vezmeš, nemůžeš jej pak sundat#Ale lze jej odstranit pouze se {{Trinket41}} zápalkou, {{Trinket135}} zapalovačem, nebo polknutím pomocí 'polk' pilulky", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick, {{Trinket135}} A Lighter or gulping"

	[T_ID .. 70] = "Vytvoří 1 modrého pavouka, po vyčištění místnosti", -- Louse
	-- English: "Spawns a blue spider every 30 seconds in hostile rooms#Spawns a blue spider on room clear"

	[T_ID .. 76] = "↑ 50% šance, že truhly vytvoří extra pickupy#↓ 50% šance, že truhly vytvoří jednu mouchu#Zvyšuje šance na výhru u automatů a i u ostatních automatů#Pokud truhla obsahuje předmět, jeho bude kvalita 3 nebo vyšší.#Obsah truhly může být občas předmětem mimo seznam předmětů u zlatých truhel.", -- Poker Chip
	-- English: "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly#Increases payout odds of slots and other machines#If chest contains an item, its forced to be quality 3 or higher#Chest content can occasionally be items outside the golden chest item pool"

	[T_ID .. 85] = "{{DonationMachine}} Použití jakéhokoli typu Darovacího automatu má 33% šanci na:#{{HealingRed}} Vyléčení 1 srdce (40%)#{{Coin}} Získání 1 mince (40%)#{{Luck}} Udělení +1 štěstí (15%)#{{Beggar}} Vytvoření žebráka (5%)#Týká se to i darů pro žebráky a strojů na doplňování zásob", -- Karma
	-- English: "{{DonationMachine}} Using any type of Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)#{{DonationMachine}} Donation machines are less likely to jam#Also affects Beggar donations and Restock machines"

	[T_ID .. 89] = "Spojenci zůstávají blíže k Izákovi#{{Damage}} Spojenci získají malý multiplikátor poškození", -- Child Leash
	-- English: "Familiars stay closer to Isaac#{{Damage}} 25% Increased familiar damage"

	[T_ID .. 93] = "33% šance za místnost, aby se všechny nepřátelské mouchy staly přátelské#Při vstupu do nové místnosti vytvoří 1 modrou mouchu.", -- Used Diaper
	-- English: "33% chance per room for all fly enemies to become friendly#Spawns 1 blue fly when entering a new room"

	[T_ID .. 103] = "Když Izákovy {{Coin}} mince, {{Bomb}} bomby a {{Key}} klíče jsou v rovnováze (tím myslím že jsou ve stejném počtu - pozn. red.):#↑ {{Tears}} +2 Slzy#Promění jednotlivé pickupy v dvojité pickupy", -- Equality!
	-- English: "When Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal:#↑ {{Tears}} +2 Tears#Turns single pickups into double pickups"

	[T_ID .. 133] = "Bomby umístěné Izákem explodují rychleji#Bomby způsobí o 15 % větší poškození", -- Short Fuse
	-- English: "Isaac's bombs explode faster#Bombs deal 15% more damage"

	[T_ID .. 135] = "<MISSING>", -- A Lighter
	-- English: "{{Burning}} Entering a room has a 20% chance to burn random enemies#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 172] = "Po sebrání mince teleportne Izáka do náhodné místnosti#Může teleportovat i do tajných místností#Typ mince ovlivňuje vybraný typ místnosti", -- Cursed Penny
	-- English: "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms#The type of coin affects the selected room type"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 11] = "{{Slotmachine}} Vytvoří výherní automat#{{FortuneTeller}} 24% šance na Věštecký stroj#{{CraneGame}} 1% šance na Drapák", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 24% chance for it to be a Fortune Telling Machine#{{CraneGame}} 1% chance for it to be a Crane Game"

	[Card_ID .. 32] = "Zničí všechny kameny a kamenné nepřátele v místnosti", -- Hagalaz
	-- English: "Destroy all rocks and stone enemies in the room"

	[Card_ID .. 38] = "{{Collectible706}} Vytvoří 3 mušky Hlubiny pro aktuální místnost", -- Berkano
	-- English: "{{Collectible706}} Summons 3 Abyss locusts for the room"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Horse Pills ----------

local Pill_ID = "5.70."
local HorseID = PillColor.PILL_GIANT_FLAG
local additionalHorsePillInformations = {
	[Pill_ID .. (HorseID + 20)] = "Teleportuje Izáka do náhodné místnosti", -- Telepills
	-- English: "Teleports Isaac to a special room"

	[Pill_ID .. (HorseID + 26)] = "{{CurseLost}} Skryje mapu patra#{{Pill}} Zapomeneš na všechny dříve identifikované pilulky", -- Amnesia
	-- English: "{{CurseLost}} Hides the floor map#{{Pill}} Forgets all previously identified pills"

	[Pill_ID .. (HorseID + 32)] = "{{CurseMaze}} Efekt Prokletí Bludiště pro aktuální patro#Další kletby po více použitích", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor#Additional curses after multiple uses"

	[Pill_ID .. (HorseID + 42)] = "{{Slow}} Zpomalí Izáka a všechny nepřátele na celém patře", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies for the whole floor"

	[Pill_ID .. (HorseID + 43)] = "Zrychlí Izáka a všechny nepřátele na celém patře#Znovu se spustí po 30 a 60 sekundách", -- I'm Excited!!
	-- English: "Speeds up Isaac and all enemies for the whole floor"

	[Pill_ID .. (HorseID + 44)] = "Spotřebuje Izákův držený trinket a trvale mu udělí jeho {{ColorGold}}zlatý{{CR}} efekt.", -- Gulp!
	-- English: "Consumes Isaac's trinket and grants its {{ColorGold}}golden{{CR}} effect permanently"

}
EID:updateDescriptionsViaTable(additionalHorsePillInformations, EID.descriptions[languageCode].AdditionalInformations)
