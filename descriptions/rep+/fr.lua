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
	[56] = 	{"56", "Petit Acident", "Répand une flaque jaune au sol et inflige des dégâts aux ennemis qui marchent dedans#La flaque disparaît quand Isaac quitte la salle"}, -- Lemon Mishap
	-- Change: added "Persists between rooms if player is at 1/2 hearts"
	[117] = {"117", "Dead Bird", "Subir un dégât invoque un oiseau qui pourchasse et inflige des dégâts aux ennemis#L'oiseau reste actif si Isaac est n'a qu'un demi-cœur rouge ou moins#{{DamageSmall}} 4.3 dégâts par seconde"}, -- Dead Bird
	-- Change: Complete rewrite
	[351] = {"351", "Mega Bean", "Crée un énorme pet qui pétrifie et inflige des dégâts à tous les ennemis de la salle, empoisonne les ennemis à proximité et détruit les obstacles et les portes"}, -- Mega Bean
	-- Change: Complete rewrite
	[436] = {"436", "Milk!", "Suit Isaac et bloque les projectiles#Après 10 projectiles bloqués, donne {{ColorLime}}débit augmenté{{CR}} pour l'étage"}, -- Milk!
	-- Change: Complete rewrite
	[447] = {"447", "Linger Bean", "Tirer pendant 4 secondes crée un nuage qui grandit pendant 10 secondes#Le nuage inflige des dégâts inverses à sa taille"}, -- Linger Bean
	-- Change: added " and fires radial bursts of tears"
	[470] = {"470", "Hushy", "Rebondit contre les murs de la salle et inflige des dégâts de contact#Tirer l'immobilise et le fait tirer des anneaux de larmes#{{DamageSmall}} 30 dégâts par seconde"}, -- Hushy
	-- Change: added "Turns item pedestals into glitched items"
	[481] = {"481", "Dataminer", "↑ Augmente une stat#↓ Diminue une stat#Rejoue les objets de la salle en objets corrompus#Donne aux larmes d'Isaac des effets aléatoires#Déforme visuellement les éléments de la salle#{{Timer}} L'effet dure une salle"}, -- Dataminer
	-- Change: Complete rewrite
	[510] = {"510", "Delirious", "Invoque un boss amical qui persiste entre les salles#Ne peut invoquer qu'un boss à la fois#La barre de charge dépend de la puissance du dernier boss invoqué"}, -- Delirious
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = {"560", "It Hurts", "Subir un dégât projette 10 larmes autour d'Isaac et répand des flaques de sang sous ses larmes#↑ Débit {{ColorLime}}+1.2{{ColorWhite}} au premier dégât subi, {{ColorLime}}+0.4{{ColorWhite}} pour chaque dégât suivant"}, -- It Hurts
	-- Change: Heals 2 hearts instead of 1/2
	[594] = {"594", "Jupiter", "↓ Vitesse {{ColorError}}-0.3#{{Heart}} +2 réceptacles de cœur#{{HealingRed}} Soigne 2 cœurs rouges#Immunise Isaac contre le poison#Rester immobile accumule de la vitesse#Se déplacer relâche un nuage de gaz empoisonné"}, -- Jupiter
	-- Change: Complete rewrite
	[632] = {"632", "Evil Charm", "↑ Chance {{ColorLime}}+2.0#Immunise Isaac contre le poison, la terreur, les toiles d'araignée, la confusion et les dégâts de feu#Les flaques n'infligent de dégâts à Isaac qu'au bout d'1 seconde"},
	-- Change: Complete rewrite
	[681] = {"681", "Lil Portal", "Appuyer 2 fois sur un bouton de tir projette le vortex#Inflige des dégâts de contact et consomme les ressources sur son chemin#Chaque ressource absorbée augmente sa taille, ses dégâts et fait apparaître une mouche bleue#Consommer 3 ressources fait apparaître un vortex vers une salle spéciale dont le contenu persiste pour le reste de la partie"}, -- Lil Portal

	
	
	-- TODO: check how exactly the quality affects the damage of the wisp
	-- OFFICIAL CHANGELOG TEXT: Abyss - Item quality now impacts the damage of the summoned locust. Locusts now inherit many different effects based on the item destroyed by Abyss.
	--[706] = {"706", "Abyss", "Consumes all item pedestals in the room and spawns a locust familiar for each one#Locusts deal Isaac's damage 2-3 times an attack#Some items spawn a special locust when consumed"}, -- Abyss
	
	
}
EID:updateDescriptionsViaTable(collectibles, EID.descriptions[languageCode].collectibles)

---------- Trinkets ----------

local trinkets = {
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = {"53", "Tick", "{{HealingRed}} Entrer dans une salle de boss soigne 1 cœur rouge#Retire 15% des PV des boss#{{Warning}} Ne peut être retirée qu'avec l'{{ColorYellow}}Allumette{{ColorWhite}} {{Trinket41}} ou le {{ColorYellow}} Briquet {{Trinket135}}"}, -- Tick
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = {"97", "Tonsil", "Subir entre 6 et 12 dégâts invoque jusqu'à deux familiers#Les familiers bloquent les tirs ennemis et n'infligent pas de dégâts"}, -- Tonsil
	-- Change: added "Bombs deal 15% more damage"
	[133] = {"133", "Short Fuse", "Les bombes placées par Isaac explosent plus rapidement et infligent {{ColorLime}} dégâts +15%"}, -- Short Fuse
	
	
	-- TODO: check the new exact percentage of wish bone and bag lunch drops
	-- OFFICIAL CHANGELOG TEXT: Increased the chances of the Wish Bone and Bag Lunch trinkets spawning an item.
	--[104] = {"104", "Wish Bone", "2% chance to get destroyed and spawn a pedestal item when hit"}, -- Wish Bone
	--[105] = {"105", "Bag Lunch", "{{Collectible22}} 2% chance to get destroyed and spawn Lunch when hit"}, -- Bag Lunch
}
EID:updateDescriptionsViaTable(trinkets, EID.descriptions[languageCode].trinkets)


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
