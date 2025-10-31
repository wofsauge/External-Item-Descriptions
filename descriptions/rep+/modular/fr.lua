local languageCode = "fr"
---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 56] = "Répand une flaque au sol et inflige des dégâts aux ennemis qui marchent dedans#La flaque disparaît quand Isaac quitte la salle", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second#Creep persists until you exit the room"

	[C_ID .. 117] = "Subir un dégât invoque un oiseau qui pourchasse et inflige des dégâts aux ennemis#{{DamageSmall}} 4.3 dégâts par seconde", -- Dead Bird
	-- Full old Desc: "Subir un dégât invoque un oiseau qui pourchasse et inflige des dégâts aux ennemis#L'oiseau reste actif si Isaac n'a qu'un demi-cœur rouge#{{DamageSmall}} 4.3 dégâts par seconde"
	-- English: "Taking damage spawns a bird that attacks enemies#Persists between rooms if player is at 1/2 hearts"

	[C_ID .. 351] = "Isaac pète, ce qui pétrifie et inflige des dégâts à tous les ennemis de la salle, empoisonne les ennemis à proximité et détruit les obstacles et les portes", -- Mega Bean
	-- English: "{{Petrify}} Deals 100 damage and petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Can open secret rooms and break rocks"

	[C_ID .. 420] = "Marcher en cercle crée un pentagramme au sol qui inflige des dégâts aux ennemis qui se tiennent dessus#Augmente la taille des explosions d'Isaac#Éteindre un feu le fait exploser", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds#Grants bigger explosions#Fireplaces explode when extinguished"

	[C_ID .. 436] = "Suit Isaac et bloque les projectiles ennemis#Après 10 projectiles bloqués, donne {{ColorLime}}débit +1{{CR}} pour l'étage", -- Milk!
	-- English: "Blocks enemy projectiles#{{Tears}} After 10 hits, it breaks and grants a Tears up for the remainder of the floor"

	[C_ID .. 447] = "Tirer pendant 4 secondes crée un nuage qui grandit pendant 10 secondes#Le nuage inflige des dégâts inverses à sa taille", -- Linger Bean
	-- English: "Firing without pause for 4 seconds spawns a poop cloud#The cloud increases its size over 10 seconds#The cloud deals less damage the bigger it gets#It can be moved by shooting it"

	[C_ID .. 470] = "Rebondit contre les murs de la salle et inflige des dégâts de contact#{{DamageSmall}} 30 dégâts par seconde", -- Hushy
	-- Full old Desc: "Rebondit contre les murs de la salle et inflige des dégâts de contact#Tirer l'immobilise et lui fait tirer des anneaux de larmes#{{DamageSmall}} 30 dégâts par seconde"
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped and fires radial bursts of tears"

	[C_ID .. 481] = "Déforme visuellement les éléments de la salle", -- Dataminer
	-- Full old Desc: "↑ Augmente une stat#↓ Diminue une stat#Rejoue les objets de la salle en objets corrompus#Donne aux larmes d'Isaac des effets aléatoires#Déforme visuellement les éléments de la salle#{{Timer}} L'effet dure une salle"
	-- English: "{{Timer}} Random tear effects for the room#Turns item pedestals into glitched items#{{Blank}} Corrupts all sprites and music in the room"

	[C_ID .. 482] = "Transforme le personnage actuel en un autre personnage au hasard#50% de chances de retirer de l'inventaire le dernier objet passif obtenu", -- Clicker
	-- English: "Changes your character to a random character#50% chance of removing the most recent item collected"

	[C_ID .. 510] = "Invoque un boss amical#Le boss meurt s'il subit trop de dégâts ou si Isaac en invoque un nouveau#La barre de charge dépend de la puissance du dernier boss invoqué", -- Delirious
	-- English: "Spawns a friendly delirium version of a boss#Persists between rooms#{{Warning}} Only one boss can be active at a time#The health of the boss deteriorates over time"

	[C_ID .. 560] = "Subir un dégât projette 10 larmes autour d'Isaac et répand des flaques de sang sous ses larmes#↑ Débit {{ColorLime}}+1.2{{ColorWhite}} au premier dégât subi, {{ColorLime}}+0.4{{ColorWhite}} pour chaque dégât suivant", -- It Hurts
	-- English: "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac#Tears leave a pool of creep on impact"

	[C_ID .. 593] = "Appuyer 2 fois sur un bouton de déplacement fait foncer Isaac dans cette direction#La ruée inflige {{ColorLime}}dégâts x3{{ColorWhite}}, crée un anneau de feu au contact, et rend Isaac invulnérable#{{Timer}} 3 secondes de recharge", -- Mars
	-- English: "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown#{{Burning}} Creates a ring of fire on impact"

	[C_ID .. 632] = "Immunise Isaac contre les toiles d'araignée, les dégâts de feu, le poison, la terreur et la confusion#Les flaques n'infligent de dégâts à Isaac qu'au bout d'une seconde", -- Evil Charm
	-- Full old Desc: "↑ Chance {{ColorLime}}+2.0#Immunise Isaac contre les toiles d'araignée, les dégâts de feu, le poison, la terreur et la confusion#Les flaques n'infligent de dégâts à Isaac qu'au bout d'une seconde"
	-- English: "Immune to {{Burning}} fire damage, {{Confusion}} confusion, {{Fear}} fear, {{Slow}} spider-webs and {{Poison}} poison effects#Grants 1 second immunity to creep"

	[C_ID .. 660] = "Fait apparaître deux vortex dans la première salle de chaque étage#Entrer dans un vortex téléporte Isaac :#{{Blank}} {{ColorRed}}Rouge {{ColorWhite}}= Salle du Boss#{{Blank}} {{ColorYellow}}Jaune {{ColorWhite}}= Salle du Trésor#{{Blank}} {{ColorBlue}}Bleu {{ColorWhite}} = Salle Secrète#{{Blank}} {{ColorGreen}}Vert {{ColorWhite}} = Boutique#Quitter la salle fait disparaître les vortex", -- Card Reading
	-- English: "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room#{{Blank}} {{ColorGreen}}Green: {{CR}}{{Shop}} Shop"

	[C_ID .. 681] = "Appuyer 2 fois sur un bouton de tir projette le vortex#Inflige des dégâts de contact et consomme les ressources sur son chemin#Chaque ressource absorbée augmente sa taille, ses dégâts et fait apparaître une mouche bleue#Consommer 3 ressources fait apparaître un vortex vers une salle spéciale dont le contenu persiste pour le reste de la partie", -- Lil Portal
	-- English: "Double-tapping a fire button launches the portal#Deals contact damage when launched#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming 2-3 pickups spawns a portal to a special room and the familiar disappears for the rest of the floor#The content of the room persists for the rest of the run"

	[C_ID .. 685] = "Invoque 2 feux follets aléatoires#Chaque utilisation invoque un feu follet de plus, jusqu'à 12", -- Jar of Wisps
	-- English: "Spawns 2 random wisps#Spawns one additional wisp with each use, up to 12"

	[C_ID .. 706] = "Absorbe tous les objets de la salle et invoque un locuste abyssal pour chaque objet détruit#Les locustes abyssaux sont invulnérables et infligent entre {{ColorError}}50%{{CR}} et {{ColorLime}}200%{{CR}} des dégâts d'Isaac selon la qualité de l'objet absorbé", -- Abyss
	-- English: "Consumes all item pedestals in the room and spawns a locust familiar for each one#Some items spawn a special locust when consumed#{{Damage}} Locusts deal Isaac's damage multiplied by the item quality consumed:#{{Quality0}} - 0.5x#{{Quality1}} - 0.75x#{{Quality2}} - 1.0x#{{Quality3}} - 1.5x#{{Quality4}} - 2.0x"

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 5] = "Double les chances de rencontrer des ennemis d'élite#Double les récompenses des ennemis d'élite", -- Purple Heart
	-- English: "2x chance for champion enemies#50% chance for champion enemies to drop loot#Doubles champion enemy loot"

	[T_ID .. 16] = "Le pied de {{ColorCyan}}Maman{{ColorWhite}} frappe un endroit au hasard dans la salle toutes les 20 secondes#Dans les salles hostiles, le pied frappe la babiole si elle est au sol", -- Mom's Toenail
	-- English: "{{MomBoss}} Dropping the trinket in hostile rooms will cause Mom's Foot to stomp its location"

	[T_ID .. 23] = "À sa mort, ressuscite Isaac en {{ColorLightOrange}}l'Égaré {{ColorWhite}}et disparaît#33% de chances de révéler l'emplacement de la Salle Super Secrète", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death#{{SuperSecretRoom}} 33% chance to reveal Super Secret Room on new floor"

	[T_ID .. 53] = "{{HealingRed}} Entrer dans une salle de boss soigne 1 cœur rouge#Retire 15% des PV des boss#{{Warning}} Ne peut être retirée qu'avec l'{{ColorYellow}}Allumette{{ColorWhite}} {{Trinket41}} ou le {{ColorYellow}} Briquet {{Trinket135}}", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick, {{Trinket135}} A Lighter or gulping"

	[T_ID .. 70] = "Terminer une salle invoque une araignée bleue", -- Louse
	-- English: "Spawns a blue spider every 30 seconds in hostile rooms#Spawns a blue spider on room clear"

	[T_ID .. 76] = "{{ColorLime}}50%{{ColorWhite}} de chances de doubler le contenu d'un coffre#{{ColorError}}50%{{ColorWhite}} de chances de remplacer le contenu d'un coffre par une mouche#Augmente les chances de gagner aux machines à sous#Augmente la qualité des objets trouvés dans les coffres", -- Poker Chip
	-- English: "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly#Increases payout odds of slots and other machines#If chest contains an item, its forced to be quality 3 or higher#Chest content can occasionally be items outside the golden chest item pool"

	[T_ID .. 85] = "Faire un don a 33% de chances de:#{{HealingRed}} Soigner un cœur rouge {{ColorSilver}}(40%)#Donner 1 pièce {{ColorSilver}}(40%)#Donner {{ColorLime}}Chance +1 {{ColorSilver}}(15%)#Invoquer un mendiant {{ColorSilver}}(5%)", -- Karma
	-- English: "{{DonationMachine}} Using any type of Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)#{{DonationMachine}} Donation machines are less likely to jam#Also affects Beggar donations and Restock machines"

	[T_ID .. 89] = "Réduit la distance entre les familiers d'Isaac et augmente leurs dégâts", -- Child Leash
	-- English: "Familiars stay closer to Isaac#{{Damage}} 25% Increased familiar damage"

	[T_ID .. 93] = "Les mouches ennemies sont parfois inoffensives#Entrer dans une nouvelle salle invoque une mouche bleue", -- Used Diaper
	-- English: "33% chance per room for all fly enemies to become friendly#Spawns 1 blue fly when entering a new room"

	[T_ID .. 103] = "Si les compteurs de pièces, bombes et clés sont égaux, transforme les ressources en leur version doublée et donne {{ColorLime}} Débit +2", -- Equality!
	-- English: "When Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal:#↑ {{Tears}} +2 Tears#Turns single pickups into double pickups"

	[T_ID .. 133] = "Les bombes placées par Isaac explosent plus rapidement et infligent {{ColorLime}} dégâts +15%", -- Short Fuse
	-- English: "Isaac's bombs explode faster#Bombs deal 15% more damage"

	[T_ID .. 135] = "<MISSING>", -- A Lighter
	-- English: "{{Burning}} Entering a room has a 20% chance to burn random enemies#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 172] = "Ramasser une pièce téléporte Isaac dans une pièce aléatoire#Les pièces plus rares peuvent téléporter Isaac dans des salles spéciales", -- Cursed Penny
	-- English: "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms#The type of coin affects the selected room type"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 11] = "Fait apparaître une des machines suivantes:#{{Slotmachine}} Machine à sous{{ColorSilver}}(75%)#{{FortuneTeller}} Diseuse de bonne aventure {{ColorSilver}} (24%)#{{CraneGame}} Machine à pince{{ColorSilver}} (1%)", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 24% chance for it to be a Fortune Telling Machine#{{CraneGame}} 1% chance for it to be a Crane Game"

	[Card_ID .. 32] = "Détruit tous les obstacles et ennemis en pierre dans la salle", -- Hagalaz
	-- English: "Destroy all rocks and stone enemies in the room"

	[Card_ID .. 38] = "Invoque 3 locustes abyssaux#{{Timer}} L'effet dure une salle", -- Berkano
	-- English: "{{Collectible706}} Summons 3 Abyss locusts for the room"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Horse Pills ----------

local Pill_ID = "5.70."
local HorseID = PillColor.PILL_GIANT_FLAG
local additionalHorsePillInformations = {
	[Pill_ID .. (HorseID + 20)] = "Téléporte Isaac dans une salle spéciale au hasard", -- Telepills
	-- English: "Teleports Isaac to a special room"

	[Pill_ID .. (HorseID + 26)] = "Masque la carte de l'étage#Oublie toutes les pilules déjà identifiées", -- Amnesia
	-- English: "{{CurseLost}} Hides the floor map#{{Pill}} Forgets all previously identified pills"

	[Pill_ID .. (HorseID + 32)] = "Inflige le Fléau du Dédale pour l'étage#Utiliser la pilule à nouveau ajoute un fléau", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor#Additional curses after multiple uses"

	[Pill_ID .. (HorseID + 42)] = "Ralentit Isaac et les ennemis pour la durée d'un étage", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies for the whole floor"

	[Pill_ID .. (HorseID + 43)] = "Accélère Isaac et les ennemis pour la durée d'un étage", -- I'm Excited!!
	-- English: "Speeds up Isaac and all enemies for the whole floor"

	[Pill_ID .. (HorseID + 44)] = "Absorbe la babiole portée par Isaac et active son effet {{ColorGold}}doré{{ColorWhite}} de manière permanente", -- Gulp!
	-- English: "Consumes Isaac's trinket and grants its {{ColorGold}}golden{{CR}} effect permanently"

}
EID:updateDescriptionsViaTable(additionalHorsePillInformations, EID.descriptions[languageCode].AdditionalInformations)
