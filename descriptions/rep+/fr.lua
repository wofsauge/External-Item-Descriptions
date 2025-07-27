---------------------------------------
-----  Basic English descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "fr"

---------- Collectibles ----------

local collectibles = {
	-- Change: added "Creep persists until you exit the room"
	[56] = 	{"56", "Petit Acident", "Répand une flaque au sol et inflige des dégâts aux ennemis qui marchent dedans#La flaque disparaît quand Isaac quitte la salle"}, -- Lemon Mishap
	-- Change: added "Persists between rooms if player is at 1/2 hearts"
	[117] = {"117", "Oiseau Mort", "Subir un dégât invoque un oiseau qui pourchasse et inflige des dégâts aux ennemis#L'oiseau reste actif si Isaac n'a qu'un demi-cœur rouge#{{DamageSmall}} 4.3 dégâts par seconde"}, -- Dead Bird
	-- Change: added "Blocks enemy tears"
	[281] = { "281", "Théodule", "Est temporairement pris pour cible par les ennemis#Bloque les projectiles ennemis" }, -- Punching Bag
	-- Change: added "+0.2 Shot speed"
	[329] = { "329", "La Technique Ludovico", "↑ Vitesse des tirs {{ColorLime}}+0.2#Remplace les larmes d'Isaac par une grosse larme déplaçable avec les boutons de tir" }, -- The Ludovico Technique	
	-- Change: Complete rewrite
	[351] = {"351", "Haricot Géant", "Isaac pète, ce qui pétrifie et inflige des dégâts à tous les ennemis de la salle, empoisonne les ennemis à proximité et détruit les obstacles et les portes"}, -- Mega Bean
	-- Change: Complete rewrite
	[436] = {"436", "Tasse de Lait", "Suit Isaac et bloque les projectiles ennemis#Après 10 projectiles bloqués, donne {{ColorLime}}débit augmenté{{CR}} pour l'étage"}, -- Milk!
	-- Change: Complete rewrite
	[447] = {"447", "Haricot Péteux", "Tirer pendant 4 secondes crée un nuage qui grandit pendant 10 secondes#Le nuage inflige des dégâts inverses à sa taille"}, -- Linger Bean
	-- Change: added " and fires radial bursts of tears"
	[470] = {"470", "P'tit Murmure", "Rebondit contre les murs de la salle et inflige des dégâts de contact#Tirer l'immobilise et le fait tirer des anneaux de larmes#{{DamageSmall}} 30 dégâts par seconde"}, -- Hushy
	-- Change: added "Turns item pedestals into glitched items"
	[481] = {"481", "Pioche Pirate", "↑ Augmente une stat#↓ Diminue une stat#Rejoue les objets de la salle en objets corrompus#Donne aux larmes d'Isaac des effets aléatoires#Déforme visuellement les éléments de la salle#{{Timer}} L'effet dure une salle"}, -- Dataminer
	-- Change: Reduced the chance of removing the most recent item to 50%
	[482] = { "482", "Télécommande", "Transforme le personnage actuel en un autre personnage au hasard#50% de chances de retirer de l'inventaire le dernier objet passif obtenu" }, -- Clicker
	-- Change: Complete rewrite
	[510] = {"510", "Délire", "Invoque un boss amical qui persiste jusqu'à ce qu'il meure#Ne peut invoquer qu'un boss à la fois#La barre de charge dépend de la puissance du dernier boss invoqué"}, -- Delirious
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = {"560", "Motus", "Subir un dégât projette 10 larmes autour d'Isaac et répand des flaques de sang sous ses larmes#↑ Débit {{ColorLime}}+1.2{{ColorWhite}} au premier dégât subi, {{ColorLime}}+0.4{{ColorWhite}} pour chaque dégât suivant"}, -- It Hurts
	-- Change: Added ring of fire on impact description
	[593] = { "593", "Mars", "Appuyer 2 fois sur un bouton de déplacement fait foncer Isaac dans cette direction#La ruée inflige {{ColorLime}}dégâts x3{{ColorWhite}}, crée un anneau de feu au contact, et rend Isaac invulnérable#{{Timer}} 3 secondes de recharge" }, -- Mars
	-- Change: Heals 2 hearts instead of 1/2
	[594] = {"594", "Jupiter", "↓ Vitesse {{ColorError}}-0.3#{{Heart}} +2 réceptacles de cœur#{{HealingRed}} Soigne 2 cœurs rouges#Immunise Isaac contre le poison#Rester immobile accumule de la vitesse, se déplacer relâche un nuage de gaz empoisonné"}, -- Jupiter
	-- Change: Complete rewrite
	[632] = {"632", "Pendentif Maléfique", "↑ Chance {{ColorLime}}+2.0#Immunise Isaac contre les toiles d'araignée, les dégâts de feu, le poison, la terreur et la confusion#Les flaques n'infligent de dégâts à Isaac qu'au bout d'une seconde"},
	-- Change: Adjusted the stat boost to match Hallowed Ground
	[651] = { "651", "Star of Bethlehem", "Se déplace lentement vers la salle de boss#{{Blank}} Être dans son aura donne :#↑ Dégâts {{ColorLime}}x1.2#↑ Débit {{ColorLime}}x2.5#Larmes autoguidées#Chance de nullifier les dégâts subis" }, -- Star of Bethlehem
	-- Change: Added Shop vortex
	[660] = {"660", "Cartomancie", "Fait apparaître deux vortex dans la première salle de chaque étage#Entrer dans un vortex téléporte Isaac :#{{Blank}} {{ColorRed}}Rouge {{ColorWhite}}= Salle du Boss#{{Blank}} {{ColorYellow}}Jaune {{ColorWhite}}= Salle du Trésor#{{Blank}} {{ColorBlue}}Bleu {{ColorWhite}} = Salle Secrète#{{Blank}} {{ColorGreen}}Vert {{ColorWhite}} = Boutique#Quitter la salle fait disparaître les vortex"}, --  Card Reading
	-- Change: Complete rewrite
	[681] = {"681", "P'tit Vortex", "Appuyer 2 fois sur un bouton de tir projette le vortex#Inflige des dégâts de contact et consomme les ressources sur son chemin#Chaque ressource absorbée augmente sa taille, ses dégâts et fait apparaître une mouche bleue#Consommer 3 ressources fait apparaître un vortex vers une salle spéciale dont le contenu persiste pour le reste de la partie"}, -- Lil Portal
	-- Change: Added info
	[685] = {"685", "Bocal de Feux Follets", "Invoque 2 feux follets aléatoires#Chaque utilisation invoque un feu follet de plus, jusqu'à 12"}, --  Jar of Wisps

	[706] = {"706", "Abysse", "Absorbe tous les objets de la salle et invoque un locuste abyssal pour chaque objet détruit#Les locustes abyssaux sont invulnérables et infligent entre {{ColorError}}50%{{CR}} et {{ColorLime}}200%{{CR}} des dégâts d'Isaac selon la qualité de l'objet absorbé"},	
}
EID:updateDescriptionsViaTable(collectibles, EID.descriptions[languageCode].collectibles)

---------- Trinkets ----------

local trinkets = {
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = {"53", "Tique", "{{HealingRed}} Entrer dans une salle de boss soigne 1 cœur rouge#Retire 15% des PV des boss#{{Warning}} Ne peut être retirée qu'avec l'{{ColorYellow}}Allumette{{ColorWhite}} {{Trinket41}} ou le {{ColorYellow}} Briquet {{Trinket135}}"}, -- Tick
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = {"97", "Amygdale", "Subir entre 6 et 12 dégâts invoque jusqu'à deux familiers#Les familiers bloquent les tirs ennemis et n'infligent pas de dégâts"}, -- Tonsil
	-- Change: added "Bombs deal 15% more damage"
	[133] = {"133", "Pétard", "Les bombes placées par Isaac explosent plus rapidement et infligent {{ColorLime}} dégâts +15%"}, -- Short Fuse
	-- Change: "2%" to "5%"
	[104] = {"104", "Os de Poulet", "Subir un dégât a 5% de chances de détruire la babiole et faire apparaître un objet provenant de la banque d'objets de la salle"},
  -- Change: "2%" to "5%"
	[105] = {"105", "Sac de Friandises", "Subir un dégât a 5% de chances de détruire la babiole et faire apparaître {{ColorYellow}}Déjeuner{{ColorWhite}} {{Collectible22}}"},
}
EID:updateDescriptionsViaTable(trinkets, EID.descriptions[languageCode].trinkets)

------- Golden Trinkets -------

local goldenTrinketEffects = {
	-- Tick (replace): added ", {{Trinket135}} A Lighter"
	[53] = {
		"{{HealingRed}} Entrer dans une salle de Boss {{BossRoom}} soigne {{ColorGold}}2{{ColorWhite}} cœurs rouges#Retire {{ColorGold}}30{{ColorWhite}}% des PV des boss#{{ColorGold}}Peut être retirée !",
		"{{HealingRed}} Entrer dans une salle de Boss {{BossRoom}} soigne {{ColorGold}}2{{ColorWhite}} cœurs rouges#Retire {{ColorGold}}30{{ColorWhite}}% des PV des boss#{{Warning}} Ne peut être retirée qu'avec l'{{ColorYellow}}Allumette {{Trinket41}} ou briquet {{Trinket135}}",
		"{{HealingRed}} Entrer dans une salle de Boss {{BossRoom}} soigne {{ColorGold}}3{{ColorWhite}} cœurs rouges#Retire {{ColorGold}}30{{ColorWhite}}% des PV des boss#{{ColorGold}}Peut être retirée !",
	},
}
EID:updateDescriptionsViaTable(goldenTrinketEffects, EID.descriptions[languageCode].goldenTrinketEffects)


---------- Cards ----------

local cards = {
	-- Change: Complete rewrite
	-- Change: Added "1% chance to spawn a Crane Game instead"
	[11] = { "11", "X - La Roue de Fortune", "Fait apparaître une des machines suivantes:#{{Slotmachine}} Machine à sous{{ColorSilver}}(75%)#{{FortuneTeller}} Diseuse de bonne aventure {{ColorSilver}} (24%)#{{CraneGame}} Machine à pince{{ColorSilver}} (1%)" }, -- X - Wheel of Fortune
	[38] = {"38", "Berkano", "Invoque 3 locustes abyssaux#{{Timer}} L'effet dure une salle"}, -- Berkano
}
EID:updateDescriptionsViaTable(cards, EID.descriptions[languageCode].cards)

---------- Pills ----------
 
local horsepills = {
	-- Change: Forgets all previously identified pills
	[26] = { "25", "Amnésie", "Masque la carte de l'étage#Oublie toutes les pilules déjà identifiées" }, -- Amnesia
}
EID:updateDescriptionsViaTable(horsepills, EID.descriptions[languageCode].horsepills)

---------- Conditions ----------

EID.descriptions[languageCode].ConditionalDescs["5.100.566"] = nil -- Dream Catcher (Greed) - In Rep+, the dream preview works in greed mode as well, so no changes needed

local conditions = {
	-- Change: Removed info about Infinte usage of Yum Heart, because its fixed. Now, bleeding hearts provide only half the charge of a regilar heart container
	["5.100.205 (Tainted Magdalene)"] = "Les cœurs sanglants donnent moitié moins de charge que les cœurs normaux", -- Sharp Plug + Tainted Magdalene
}
EID:updateDescriptionsViaTable(conditions, EID.descriptions[languageCode].ConditionalDescs)

-- Special Locust effects when Item was eaten by Abyss. Entries here will override the auto-generated descriptions
local abyssSynergies = {
	[706] = "Invoque 16 locustes différents", -- Abyss
}

-- Remove all entries from Repentance file, and only add special descriptions relevant to Repentance+
EID.descriptions[languageCode].abyssSynergies = {}
EID:updateDescriptionsViaTable(abyssSynergies, EID.descriptions[languageCode].abyssSynergies)

-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
