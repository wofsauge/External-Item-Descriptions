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
	-- Change: Complete rewrite
	[510] = {"510", "Délire", "Invoque un boss amical qui persiste jusqu'à ce qu'il meure#Ne peut invoquer qu'un boss à la fois#La barre de charge dépend de la puissance du dernier boss invoqué"}, -- Delirious
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = {"560", "Motus", "Subir un dégât projette 10 larmes autour d'Isaac et répand des flaques de sang sous ses larmes#↑ Débit {{ColorLime}}+1.2{{ColorWhite}} au premier dégât subi, {{ColorLime}}+0.4{{ColorWhite}} pour chaque dégât suivant"}, -- It Hurts
	-- Change: Heals 2 hearts instead of 1/2
	[594] = {"594", "Jupiter", "↓ Vitesse {{ColorError}}-0.3#{{Heart}} +2 réceptacles de cœur#{{HealingRed}} Soigne 2 cœurs rouges#Immunise Isaac contre le poison#Rester immobile accumule de la vitesse, se déplacer relâche un nuage de gaz empoisonné"}, -- Jupiter
	-- Change: Complete rewrite
	[632] = {"632", "Pendentif Maléfique", "↑ Chance {{ColorLime}}+2.0#Immunise Isaac contre les toiles d'araignée, les dégâts de feu, le poison, la terreur et la confusion#Les flaques n'infligent de dégâts à Isaac qu'au bout d'une seconde"},
	-- Change: Added Shop vortex
	[660] = {"660", "Cartomancie", "Fait apparaître deux vortex dans la première salle de chaque étage#Entrer dans un vortex téléporte Isaac :#{{Blank}} {{ColorRed}}Rouge {{ColorWhite}}= Salle du Boss#{{Blank}} {{ColorYellow}}Jaune {{ColorWhite}}= Salle du Trésor#{{Blank}} {{ColorBlue}}Bleu {{ColorWhite}} = Salle Secrète#{{Blank}} {{ColorGreen}}Vert {{ColorWhite}} = Boutique#Quitter la salle fait disparaître les vortex"}, --  Card Reading
	-- Change: Complete rewrite
	[681] = {"681", "P'tit Vortex", "Appuyer 2 fois sur un bouton de tir projette le vortex#Inflige des dégâts de contact et consomme les ressources sur son chemin#Chaque ressource absorbée augmente sa taille, ses dégâts et fait apparaître une mouche bleue#Consommer 3 ressources fait apparaître un vortex vers une salle spéciale dont le contenu persiste pour le reste de la partie"}, -- Lil Portal

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

---------- Cards ----------

local cards = {
	-- Change: Complete rewrite
	[38] = {"38", "Berkano", "Invoque 3 locustes abyssaux#{{Timer}} L'effet dure une salle"}, -- Berkano
}
EID:updateDescriptionsViaTable(cards, EID.descriptions[languageCode].cards)


---------- Conditions ----------
EID.descriptions[languageCode].ConditionalDescs["5.100.566"] = nil -- Dream Catcher (Greed) - In Rep+, the dream preview works in greed mode as well, so no changes needed

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
