local languageCode = "ro_ro"
---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 56] = "Varsă o baltă de lămâie#Balta provoacă 24 de daune pe secundă#Balta persistă pe durata camerei", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second#Creep persists until you exit the room"

	[C_ID .. 117] = "Vătamarea oferă o pasăre care atacă inamicii#Persistă între camere dacă Isaac are 1/2 inimi", -- Dead Bird
	-- Full old Desc: "Vătamarea oferă o pasăre care atacă inamicii#Pasărea provoacă 4.3 daune pe secundă#Persistă între camere dacă Isaac are 1/2 inimi"
	-- English: "Taking damage spawns a bird that attacks enemies#Persists between rooms if player is at 1/2 hearts"

	[C_ID .. 351] = "Provoacă 100 de daune și pietrifică toți inamicilor din cameră#{{Poison}} Provoacă 5 daune și otrăvește toți inamicii din apropiere#Poate deschide camerele secrete și să spargă pietre", -- Mega Bean
	-- English: "{{Petrify}} Deals 100 damage and petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Can open secret rooms and break rocks"

	[C_ID .. 420] = "<MISSING>", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds#Grants bigger explosions#Fireplaces explode when extinguished"

	[C_ID .. 436] = "Blochează proiectilele inamicilor#{{Tears}} După 10 lovituri laptele se spare și oferă Lacrimi pe durata etajului", -- Milk!
	-- English: "Blocks enemy projectiles#{{Tears}} After 10 hits, it breaks and grants a Tears up for the remainder of the floor"

	[C_ID .. 447] = "Dacă tragi pentru 4 secunde fară pauză Isaac lasă un nor de rahat#Norul se mărește pe durata a 10 secunde#Norul provoacă daune mai puține pe măsură ce crește#Poate fi înpins cu lacrimi", -- Linger Bean
	-- English: "Firing without pause for 4 seconds spawns a poop cloud#The cloud increases its size over 10 seconds#The cloud deals less damage the bigger it gets#It can be moved by shooting it"

	[C_ID .. 470] = "Se mișcă prin cameră#Se oprește cand Isaac trage#Blochează proiectilele când este oprit și trage cu rafale de lacrimi in cerc", -- Hushy
	-- Full old Desc: "Se mișcă prin cameră#Provoacă 30 de daune de contact pe secundă#Se oprește cand Isaac trage#Blochează proiectilele când este oprit și trage cu rafale de lacrimi in cerc"
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped and fires radial bursts of tears"

	[C_ID .. 481] = "{{Blank}} Corupe toate aspecte visuale si muzica pe durata camerei", -- Dataminer
	-- Full old Desc: "↑ Crește statusuri la întâmplare#↓ Scade statusuri la întâmplare#{{Timer}} Efecte aleatorii pe lacrimi pe durata camerei#Transformă piedestalele in iteme glitched#{{Blank}} Corupe toate aspecte visuale si muzica pe durata camerei"
	-- English: "{{Timer}} Random tear effects for the room#Turns item pedestals into glitched items#{{Blank}} Corrupts all sprites and music in the room"

	[C_ID .. 482] = "<MISSING>", -- Clicker
	-- English: "Changes your character to a random character#50% chance of removing the most recent item collected"

	[C_ID .. 510] = "Oferă o varianta prietenoasă a unui boss Delirium#Persista între camere#{{Warning}} Numai un boss poate fi activ o dată#Numărul de incărcări este bazat pe calitatea bossului anterior", -- Delirious
	-- English: "Spawns a friendly delirium version of a boss#Persists between rooms#{{Warning}} Only one boss can be active at a time#The health of the boss deteriorates over time"

	[C_ID .. 560] = "{{Timer}} Când Isaac este vătămat primește pe durata camerei:#↑ {{Tears}} +1.2 Viteză de atac la prima vătămare#↑ {{Tears}} +0.4 Viteză de atac pentru fiecare altă vătămare#Eliberează un inel de 10 lacrimi în jurul lui Isaac#Lacrimile lasă o baltă la impact", -- It Hurts
	-- English: "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac#Tears leave a pool of creep on impact"

	[C_ID .. 593] = "<MISSING>", -- Mars
	-- English: "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown#{{Burning}} Creates a ring of fire on impact"

	[C_ID .. 632] = "Imunitate la {{Burning}} foc, {{Confusion}} confuzie, {{Fear}} teamă, {{Slow}} pânza de păianjen {{Poison}} Otrava#Oferă 1 secundă de imunitate la balți", -- Evil Charm
	-- Full old Desc: "↑ {{Luck}} +2 Noroc#Imunitate la {{Burning}} foc, {{Confusion}} confuzie, {{Fear}} teamă, {{Slow}} pânza de păianjen {{Poison}} Otrava#Oferă 1 secundă de imunitate la balți"
	-- English: "Immune to {{Burning}} fire damage, {{Confusion}} confusion, {{Fear}} fear, {{Slow}} spider-webs and {{Poison}} poison effects#Grants 1 second immunity to creep"

	[C_ID .. 660] = "<MISSING>", -- Card Reading
	-- English: "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room#{{Blank}} {{ColorGreen}}Green: {{CR}}{{Shop}} Shop"

	[C_ID .. 681] = "Dubla apăsare a butonului de tragere aruncă portalul#Provoacă daune de contact cand este aruncat#Consumă pickupurile în durmul său#Fiecare pickup îi mărește dimensiunea, daunele și oferă o muscă albastră#Consumarea a 2-3 pickupuri oferă un portal spre o cameră specială și familiarul dispare pe durata etajului#Conținutul camerei speciale persistă pe durata partidei", -- Lil Portal
	-- English: "Double-tapping a fire button launches the portal#Deals contact damage when launched#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming 2-3 pickups spawns a portal to a special room and the familiar disappears for the rest of the floor#The content of the room persists for the rest of the run"

	[C_ID .. 685] = "<MISSING>", -- Jar of Wisps
	-- English: "Spawns 2 random wisps#Spawns one additional wisp with each use, up to 12"

	[C_ID .. 706] = "Consumă toate piedestalele din cameră și oferă o lăcustă pentru fiecare item#Unele iteme oferă lăcuste speciale#{{Damage}} Lăcustele provoacă deaunele lui Isaac înmulțit cu caliatea itemului consumat:#{{Quality0}} - 0.5x#{{Quality1}} - 0.75x#{{Quality2}} - 1.0x#{{Quality3}} - 1.5x#{{Quality4}} - 2.0x", -- Abyss
	-- English: "Consumes all item pedestals in the room and spawns a locust familiar for each one#Some items spawn a special locust when consumed#{{Damage}} Locusts deal Isaac's damage multiplied by the item quality consumed:#{{Quality0}} - 0.5x#{{Quality1}} - 0.75x#{{Quality2}} - 1.0x#{{Quality3}} - 1.5x#{{Quality4}} - 2.0x"

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 5] = "<MISSING>", -- Purple Heart
	-- English: "2x chance for champion enemies#50% chance for champion enemies to drop loot#Doubles champion enemy loot"

	[T_ID .. 16] = "<MISSING>", -- Mom's Toenail
	-- English: "{{MomBoss}} Dropping the trinket in hostile rooms will cause Mom's Foot to stomp its location"

	[T_ID .. 23] = "<MISSING>", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death#{{SuperSecretRoom}} 33% chance to reveal Super Secret Room on new floor"

	[T_ID .. 53] = "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick, {{Trinket135}} A Lighter, or gulping", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick, {{Trinket135}} A Lighter or gulping"

	[T_ID .. 70] = "<MISSING>", -- Louse
	-- English: "Spawns a blue spider every 30 seconds in hostile rooms#Spawns a blue spider on room clear"

	[T_ID .. 76] = "<MISSING>", -- Poker Chip
	-- English: "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly#Increases payout odds of slots and other machines#If chest contains an item, its forced to be quality 3 or higher#Chest content can occasionally be items outside the golden chest item pool"

	[T_ID .. 85] = "<MISSING>", -- Karma
	-- English: "{{DonationMachine}} Using any type of Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)#{{DonationMachine}} Donation machines are less likely to jam#Also affects Beggar donations and Restock machines"

	[T_ID .. 89] = "<MISSING>", -- Child Leash
	-- English: "Familiars stay closer to Isaac#{{Damage}} 25% Increased familiar damage"

	[T_ID .. 93] = "<MISSING>", -- Used Diaper
	-- English: "33% chance per room for all fly enemies to become friendly#Spawns 1 blue fly when entering a new room"

	[T_ID .. 103] = "<MISSING>", -- Equality!
	-- English: "When Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal:#↑ {{Tears}} +2 Tears#Turns single pickups into double pickups"

	[T_ID .. 133] = "Isaac's bombs explode faster#Bombs deal 15% more damage", -- Short Fuse
	-- English: "Isaac's bombs explode faster#Bombs deal 15% more damage"

	[T_ID .. 135] = "<MISSING>", -- A Lighter
	-- English: "{{Burning}} Entering a room has a 20% chance to burn random enemies#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 172] = "<MISSING>", -- Cursed Penny
	-- English: "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms#The type of coin affects the selected room type"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 11] = "<MISSING>", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 24% chance for it to be a Fortune Telling Machine#{{CraneGame}} 1% chance for it to be a Crane Game"

	[Card_ID .. 32] = "<MISSING>", -- Hagalaz
	-- English: "Destroy all rocks and stone enemies in the room"

	[Card_ID .. 38] = "<MISSING>", -- Berkano
	-- English: "{{Collectible706}} Summons 3 Abyss locusts for the room"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Horse Pills ----------

local Pill_ID = "5.70."
local HorseID = PillColor.PILL_GIANT_FLAG
local additionalHorsePillInformations = {
	[Pill_ID .. (HorseID + 20)] = "<MISSING>", -- Telepills
	-- English: "Teleports Isaac to a special room"

	[Pill_ID .. (HorseID + 26)] = "<MISSING>", -- Amnesia
	-- English: "{{CurseLost}} Hides the floor map#{{Pill}} Forgets all previously identified pills"

	[Pill_ID .. (HorseID + 32)] = "<MISSING>", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor#Additional curses after multiple uses"

	[Pill_ID .. (HorseID + 42)] = "<MISSING>", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies for the whole floor"

	[Pill_ID .. (HorseID + 43)] = "<MISSING>", -- I'm Excited!!
	-- English: "Speeds up Isaac and all enemies for the whole floor"

	[Pill_ID .. (HorseID + 44)] = "<MISSING>", -- Gulp!
	-- English: "Consumes Isaac's trinket and grants its {{ColorGold}}golden{{CR}} effect permanently"

}
EID:updateDescriptionsViaTable(additionalHorsePillInformations, EID.descriptions[languageCode].AdditionalInformations)
