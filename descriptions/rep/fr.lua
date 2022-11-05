--------------------------------------
-----  Basic French descriptions -----
--------------------------------------

-- Last Sync with en_us: 08.08.2021

-- FORMAT: Item ID | Name| Description
-- '#' = starts new line of text

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  ! = Warning

local repCollectibles={
	[2] = {"2", "Troisième Œil", "↓ Débit {{ColorError}}-49%#Triple tir"},
	-- [2] = {"2", "big eye", "↑{{ColorLime}} +2 Damage#↓{{ColorError}} -12 Range#Killing an enemy grants {{Collectible495}}{{ColorYellow}} Ghost Pepper{{ColorWhite}}#Grants immunity to {{ColorCyan}}Mom{{ColorWhite}}'s stomps#↑{{ColorLime}} +2 Damage{{ColorWhite}} when picked up as {{ColorLightOrange}}Azazel#Beating a boss teleports Isaac to the {{ColorTransform}}Dark Room#Taking damage grants {{Trinket172}} {{ColorTeal}}Cursed Penny#Bombs can open {{TreasureRoom}} {{ColorOrange}}Treasure Rooms"},
	[5] = {"5", "Mon Reflet", "↑ Dégâts {{ColorLime}}+1.5#↑ Portée {{ColorLime}}x1.6 +1.5#↑ Vitesse des tirs {{ColorLime}}+0.6#↓ Chance {{ColorError}}-1#Les larmes d'Isaac reviennent vers lui comme un boomerang"}, -- My Reflection
	[6] = {"6", "Petite Commission", "↑ Débit {{ColorLime}}+1.5#↓ Portée {{ColorError}}-1.5 -20%"}, -- Number One
	[7] = {"7", "Sang du Martyr", "↑ Dégâts {{ColorLime}}+1.0#↑ Dégâts {{ColorLime}}+50%{{ColorWhite}} si Isaac tient le {{ColorYellow}}Livre de Bélial {{Collectible34}}"}, --Blood of the Martyr
	[12] = {"12", "Champignon Magique", "{{Heart}} +1 réceptacle de cœur#↑ Dégâts {{ColorLime}}+0.3 x1.5#↑ Portée {{ColorLime}}+1.5#↑ Vitesse {{ColorLime}}+0.3#Taille augmentée#Soin complet"}, -- Magic Mush
	[13] = {"13", "Le Virus", "↑ Vitesse {{ColorLime}}+0.2#Rentrer en contact avec un ennemi l'empoisonne"}, -- The Virus
	[14] = {"14", "Crise d'Hormones", "↑ Vitesse des tirs {{ColorLime}}+0.3#↑ Portée {{ColorLime}}+5.25"}, -- Roid Rage
	[18] = {"18", "Un Dollar", "{{Coin}} +100 Pièces"}, -- A Dollar
	[22] = {"22", "Déjeuner", "{{Heart}} +1 réceptacle de cœur#Soigne un cœur rouge"}, -- Lunch
	[23] = {"23", "Dîner", "{{Heart}} +1 réceptacle de cœur#Soigne un cœur rouge"}, -- Dinner
	[24] = {"24", "Dessert", "{{Heart}} +1 réceptacle de cœur#Soigne un cœur rouge"}, -- Dessert
	[25] = {"25", "Petit Déjeuner", "{{Heart}} +1 réceptacle de cœur#Soigne un cœur rouge"}, -- Breakfast
	[26] = {"26", "Viande Avariée", "{{Heart}} +1 réceptacle de cœur#Soigne un cœur rouge"}, -- Rotten Meat
	[29] = {"29", "Culotte de Maman", "↑ Portée {{ColorLime}}+1.5#Invoque 3-6 mouches bleues"}, -- Moms Underwear
	[30] = {"30", "Escarpins de Maman", "↑ Portée {{ColorLime}}+1.5#Rentrer en contact avec un ennemi lui inflige 12 dégâts"}, -- Mom's Heels
	[31] = {"31", "Rouge à Lèvres de Maman", "↑ Portée {{ColorLime}}+2.25#Fait apparaître un cœur"}, -- Mom's Lipstick
	[33] = {"33", "Bible", "Permet à Isaac de voler pour la durée d'une salle#Tue instantanément {{ColorCyan}}Maman{{ColorWhite}}, le {{ColorCyan}}Cœur de Maman{{ColorWhite}} et {{ColorCyan}}Il est Vivant{{ColorWhite}}#{{Warning}} Tue Isaac si utilisée pendant le combat contre {{ColorCyan}}Satan"}, -- The Bible
	[34] = {"34", "Livre de Bélial", "{{DevilChance}} Chance de Pacte avec le Diable {{ColorLime}}+12.5%#↑ Dégâts {{ColorLime}}+2#↑ Dégâts {{ColorLime}}+50%{{ColorWhite}} si Isaac possède {{ColorYellow}}Sang du Martyr {{ColorWhite}}{{Collectible7}}"}, -- Book of Belial
	[37] = {"37", "M. Boum", "Place une grosse bombe à la position d'Isaac#L'explosion de la bombe inflige 185 dégâts"},
	[40] = {"40", "Kamikaze !", "Déclenche une grosse explosion à l'emplacement d'Isaac#Inflige 185 dégâts aux ennemis#{{Warning}} Inflige un demi-cœur de dégâts à Isaac"}, -- Kamikaze!
	[41] = {"41", "Serviette de Maman", "Terrifie tous les ennemis de la salle pendant 5 secondes#Invoque une mouche bleue"},
	[42] = {"42", "Tête de Bob", "Bombe jetable#Crée un nuage de poison à l'endroit de l'explosion"}, -- Bob's Rotten Head
	[44] = {"44", "Téléportation !", "Téléporte Isaac dans une salle aléatoire#Bouger dans une direction peut influencer la téléportation#Ne peut pas téléporter dans une salle I AM ERROR"}, -- Teleport
	[45] = {"45", "Joli Cœur", "Soigne un cœur rouge#Soigne les autres joueurs d'un demi-cœur rouge"}, -- Yum Heart
	[46] = {"46", "Pied Chanceux", "↑ Chance {{ColorLime}}+1#Augmente les chances de gagner aux machines à sous {{Slotmachine}}#Augmente les chances d'apparition de ressources après avoir terminé une salle#Transforme certaines mauvaises pilules en bonnes pilules"}, -- Lucky Foot
    [51] = {"51", "Pentagramme", "↑ Dégâts {{ColorLime}}+1.0#{{AngelDevilChanceSmall}} {{ColorLime}}+10%{{ColorWhite}} de chance de Pacte avec le Diable et d'Offrande des Anges"},
	[52] = {"52", "Dr. Fœtus", "↓ Débit {{ColorError}}-60%#Les larmes d'Isaac sont remplacées par des bombes"},
    [53] = {"53", "Gros Aimant", "Isaac attire les ressources#Ouvre les coffres à distance sans avoir besoin de les toucher"}, -- Magneto
	[55] = {"55", "Œil de Maman", "50% de chances de tirer une larme additionnelle dans la direction opposée#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 5 Chance)"}, -- Mom's Eye
	[59] = {"59", "Livre de Bélial (passif)", "<Cet objet n'existe pas>"}, -- The Book of Belial (Judas' Birthright version)
    [62] = {"62", "Morsure de Vampire", "↑ Dégâts {{ColorLime}}+0.3#Tuer 13 ennemis soigne Isaac d'un demi-cœur rouge"}, -- Charm of the Vampire
	[64] = {"64", "Soldes", "Réduit le prix des objets de la boutique de moitié#Posséder plusieurs fois cet objet réduit davantage les prix"}, -- Steam Sale
	[65] = {"65", "Livre de Recettes Anarchistes", "Invoque 6 bombes troll dans la salle"},
	[67] = {"67", "Sœurette Maggy", "Suit Isaac et tire dans la même direction que lui"}, -- Sister Maggy
	[69] = {"69", "Chocolat Chaud", "Permet à Isaac de charger ses tirs#Une larme complètement chargée inflige {{ColorLime}}dégâts x4"}, --Chocolate Milk
	[70] = {"70", "Hormones de Croissance", "↑ Dégâts {{ColorLime}}+1.0#↑ Vitesse {{ColorLime}}+0.2"}, -- Growth Hormones
	[71] = {"71", "Mini Champi", "↑ Vitesse {{ColorLime}}+0.3#↑ Portée {{ColorLime}}+1.5#Taille diminuée"}, -- Mini Mush
	[72] = {"72", "Rosaire", "{{SoulHeart}} +3 cœurs d'âme#↑ Débit {{ColorLime}}+0.5#Ajoute {{ColorYellow}}La Bible{{ColorWhite}} {{Collectible33}} à toutes les banques d'objets"}, -- Rosary
	[73] = {"73", "Cube de Viande", "{{Blank}} Obtenir plusieurs copies de cet objet l'améliore :#{{Blank}}#1: Orbite autour d'Isaac#2: Orbite autour d'Isaac et tire#3: Pourchasse les ennemis et inflige 10 dégâts de contact#4: Pourchasse les ennemis et inflige 20 dégâts de contact"},
	[75] = {"75", "Doctorat", "{{Pill}} +1 pilule#Soigne 2 cœurs rouges#Les pilules ne peuvent plus avoir d'effet négatif#Les machines de don du sang {{BloodDonationMachine}} et {{ColorYellow}}Perfusion{{ColorWhite}} {{Collectible135}} donnent davantage de pièces"},
	[76] = {"76", "Lunettes à Rayon X", "Ouvre les entrées des salles Secrètes {{SecretRoom}} et Super Secrètes {{SuperSecretRoom}}"},
	[77] = {"77", "Licorne Arc-En-Ciel", "{{Blank}}#{{Blank}} Pendant 6 secondes :#Rend Isaac invulnérable#↑ Vitesse {{ColorLime}}+0.28"}, -- My Little Unicorn
	[78] = {"78", "Livre de la Révélation", "{{SoulHeart}} +1 cœur d'âme#Remplace le boss de l'étage par un {{ColorCyan}}Cavalier de l'Apocalypse#Les Cavaliers ne peuvent apparaître qu'une fois par chapitre et ne peuvent pas remplacer les boss majeurs#{{AngelDevilChanceSmall}} {{ColorLime}}+17.5%{{ColorWhite}} de chances de Pacte avec le Diable ou d'Offrande des Anges"},
	[79] = {"79", "Le Nombre de la Bête", "↑ Dégâts {{ColorLime}}+1.0#↑ Vitesse {{ColorLime}}+0.2#{{BlackHeart}} +1 cœur noir"}, -- The Mark
	[80] = {"80", "Le Pacte", "↑ Dégâts {{ColorLime}}+0.5#↑ Débit {{ColorLime}}+0.7#{{BlackHeart}} +2 cœurs noirs"}, -- The Pact
	[83] = {"83", "Clou Pointu", "{{HalfBlackHeart}} +1 Demi-cœur noir#{{Blank}} Pour une salle :#↑ Dégâts {{ColorLime}}+0.7#↓ Vitesse {{ColorError}}-0.18#Isaac inflige des dégâts de contact#Permet d'écraser les obstacles"}, -- The Nail
    [84] = {"84", "Aller au Fond des Choses", "Ouvre une trappe vers l'étage suivant#Utiliser l'objet sur un élément de décor au sol ouvre une trappe vers un Souterrain {{LadderRoom}}"}, -- We Need To Go Deeper
	[87] = {"87", "Cornes de Loki", "Chance de tirer dans 4 directions à la fois#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 15 Chance)"},
	[91] = {"91", "Casque de Spéléologue", "Révèle les icônes sur la carte à deux salles de distance#Révèle les Salles Secrètes {{SecretRoom}}, Super Secrètes {{SuperSecretRoom}} et de mini-boss {{MiniBoss}}#Protège des projectiles qui tombent du plafond"},
    [98] = {"98", "Relique", "Fait apparaître un cœur d'âme toutes les 7-8 salles"}, -- The Relic
	[101] = {"101", "Auréole", "{{Heart}} +1 Réceptacle de cœur#↑ Dégâts {{ColorLime}}+0.3#↑ Débit {{ColorLime}}+0.2#↑ Portée {{ColorLime}}+0.38#↑ Vitesse {{ColorLime}}+0.3"}, -- The Halo
	[106] = {"106", "M. Méga", "↑ Dégâts des bombes {{ColorLime}}x1.85#{{Bomb}} +5 Bombes"}, -- Mr. Mega
	[110] = {"110", "Lentille de Maman", "↑ Portée {{ColorLime}}+0.38#28% de chances de tirer une larme pétrifiante#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à ~20 Chance)"}, -- Mom's Contacts
	[114] = {"114", "Couteau de Maman", "Remplace les larmes d'Isaac par un couteau#Le couteau inflige entre {{ColorLime}}dégâts x2{{ColorWhite}} et {{ColorLime}}dégâts x6{{ColorWhite}} selon la distance à laquelle il est lancé"},
	[115] = {"115", "Planche de Ouija", "↑ Débit {{ColorLime}}+0.4#Larmes spectrales"},
	[118] = {"118", "Soufre", "Remplace les larmes d'Isaac par un laser de sang#Le laser inflige {{ColorLime}}dégâts x9{{ColorWhite}} sur la durée d'un tir"},
	[121] = {"121", "Champignon Suspect", "{{EmptyHeart}} +1 Réceptacle de cœur#↑ Dégâts {{ColorLime}}+1.0#↑ Portée {{ColorLime}}+0.25#↓ Vitesse {{ColorError}}-0.2"}, -- Odd Mushroom (Large)
	[123] = {"123", "Manuel des Monstres", "Invoque un familier aléatoire#Le familier disparaît à l'étage suivant"}, -- Monster Manual
	[126] = {"126", "Lame de Rasoir", "↑ Dégâts {{ColorLime}}+1.2#{{Warning}} Inflige 1 cœur de dégâts à Isaac#N'inflige qu'un demi-cœur de dégâts si elle est utilisée plusieurs fois dans la même salle#Retire les cœurs rouges en priorité"},
	[129] = {"129", "Seau de Saindoux", "{{Heart}} +2 réceptacles de cœur #↓ Vitesse {{ColorError}}-0.2#Soigne un demi-cœur rouge"}, -- Bucket of Lard
	[135] = {"135", "Perfusion", "Inflige un demi-cœur de dégâts à Isaac et fait apparaître 1-2 pièces#Ne fait apparaître qu'une pièce en mode Difficile#Fait apparaître 0 ou 1 pièce pour le {{ColorLightOrange}}Gardien#Retire les cœurs rouges en priorité"},
    [136] = {"136", "Meilleur Ami", "Place une peluche en forme d'Isaac#La peluche attire les ennemis#La peluche explose après 5 secondes et inflige 185 dégâts"},
	[138] = {"138", "Stigmates", "{{Heart}} +1 réceptacle de cœur#↑ Dégâts {{ColorLime}}+0.3#Soigne un cœur rouge"}, -- Stigmata
	[139] = {"139", "Sac à Main de Maman", "Permet à Isaac de porter deux babioles en même temps#Fait apparaître une babiole"}, -- Mom's Purse
	[140] = {"140", "Malédiction de Bob", "{{Bomb}} +5 bombes#Les bombes d'Isaac laissent un nuage de poison#Rend Isaac invulnérable au poison"}, -- Bob's Curse
	[142] = {"142", "Scapulaire", "Descendre à un demi-cœur de vie totale ajoute un cœur d'âme aux PV d'Isaac#L'effet ne peut se déclencher qu'une fois par salle#Quitter et revenir dans la salle permet à l'effet de se déclencher à nouveau#{{Warning}} L'effet ne se déclenche pas sur un don de sang"},
	[144] = {"144", "Ami Mendiant", "Ramasse les pièces au sol et les convertit en ressources ou objets"},
	[147] = {"147", "Pioche en Fer", "Brise les rochers et inflige des dégâts aux ennemis#Chaque touche avec la pioche la décharge partiellement#Se recharge entièrement au changement d'étage"}, -- Notched Axe
	[148] = {"148", "Infestation", "Subir un dégât invoque 2-6 mouches bleues"}, -- Infestation
	[149] = {"149", "Ipéca", "↑ Dégâts {{ColorLime}}+40#↓ Vitesse des tirs {{ColorError}}-0.2#↓ Débit {{ColorError}}-67%#Remplace les larmes d'Isaac par des tirs en cloche#Les larmes explosent au contact d'un ennemi ou obstacle#Les larmes empoisonnent les ennemis pris dans l'explosion"}, -- Ipecac
	[152] = {"152", "Technologie 2", "↓ Débit {{ColorError}}-33%#Remplace les larmes de l'œil droit d'Isaac par un laser continu#Le laser inflige 13% des dégâts d'Isaac"}, -- Technology 2
	[153] = {"153", "Araignée Mutante", "↓ Débit {{ColorError}}-58%#Quadruple tir"},
    [155] = {"155", "Œil Baladeur", "Rebondit contre les murs de la salle et inflige des dégâts de contact#↑ Dégâts {{ColorLime}}+34%{{ColorWhite}} pour les larmes tirées de l'œil gauche"},
	[157] = {"157", "Soif de Sang", "Subir un dégât augmente les dégâts d'Isaac#Plafonne à {{ColorLime}}dégâts +1.5{{ColorWhite}} après 6 dégâts subis#L'augmentation de dégâts persiste pour la durée de l'étage"},
	[158] = {"158", "Boule de Cristal", "Révèle l'étage sur la carte#Fait apparaître une carte ou un cœur d'âme#{{Blank}}#{{Blank}} Quand tenu :#↑ Chance de Planétarium {{ColorLime}}+15%#↑ Chance de Planétarium {{ColorLime}}+100%{{ColorWhite}} si une Salle du Trésor {{TreasureRoom}} a été ignorée"}, -- Crystal Ball
	[161] = {"161", "Ânkh", "À sa mort, Isaac est ressuscité en {{ColorLightOrange}}???{{ColorWhite}}#Ressuscite simplement {{ColorLightOrange}}??? Impur"},
	[169] = {"169", "Polyphème", "↑ Dégâts {{ColorLime}}x2 +4#↓ Débit {{ColorError}}-58%#Les larmes qui tuent un ennemi le transpercent"},
    [171] = {"171", "Filière d'Araignée", "Ralentit les ennemis pendant 4 secondes#Inflige des dégâts à tous les ennemis#Les ennemis tués par cet objet font apparaître des araignées bleues"}, -- Spider Butt
	[172] = {"172", "Dague Sacrificielle", "Orbite autour d'Isaac#Bloque les tirs ennemis#Inflige des dégâts de contact"},
    [176] = {"176", "Cellules Souches", "{{Heart}} +1 réceptacle de cœur#↑ Vitesse des tirs {{ColorLime}}+0.16#Soigne un cœur rouge"}, -- Stem Cells
	[178] = {"178", "Eau Bénite", "Se projette dans la direction où tire Isaac#Répand une flaque paralysante en se brisant"}, -- Holy Water
	[180] = {"180", "Haricot Noir", "Subir un dégât fait péter Isaac plusieurs fois et crée des nuages de poison"},
	[181] = {"181", "Poney Blanc", "Permet à Isaac de voler#↑ Vitesse ≥1.5#Utiliser l'objet déclenche une ruée dans la direction où se déplace Isaac#Des rayons de lumière frappent le sol derrière Isaac#Isaac est invulnérable pendant la ruée"},
	[182] = {"182", "Sacré-Cœur", "{{Heart}} +1 Réceptacle de cœur#↑ Dégâts {{ColorLime}}x2.3 +1#↑ Portée {{ColorLime}}+0.5#↓ Vitesse des tirs {{ColorError}}-0.25#↓ Débit {{ColorError}}-0.4#Larmes autoguidées"}, -- Sacred Heart
	[184] = {"184", "Saint Graal", "{{Heart}} +1 Réceptacle de cœur#Permet à Isaac de voler#Soigne un cœur rouge"}, -- Holy Grail
	[186] = {"186", "Droits du Sang", "Inflige 40 dégâts à tous les ennemis de la salle#{{Warning}} Inflige 1 cœur de dégâts à Isaac#N'inflige qu'un demi-cœurs de dégâts s'il est utilisé plusieurs fois dans la même salle"},
	[188] = {"188", "Abel", "Réfléchit les mouvements d'Isaac#Tire en direction d'Isaac"}, -- Abel
	[189] = {"189", "Super Fan de SMB", "{{Heart}} +1 Réceptacle de cœur#↑ Dégâts {{ColorLime}}+0.3#↑ Débit {{ColorLime}}+0.2#↑ Portée {{ColorLime}}+0.5#↑ Vitesse {{ColorLime}}+0.2#Soin complet"}, --SMB Super Fan
    [192] = {"192", "La Télépathie pour les Nuls", "{{Blank}} Pour la durée d'une salle :#↑ Portée {{ColorLime}}+3.0#Larmes autoguidées"}, -- Telepathy for Dummies
	[193] = {"193", "DE LA VIANDE !", "{{Heart}} +1 Réceptacle de cœur#↑ Dégâts {{ColorLime}}+0.3#Soigne un cœur rouge"}, -- MEAT!
	[194] = {"194", "La Boule Magique", "↑ Vitesse des tirs {{ColorLime}}+0.16#↑ Chance de Planétarium {{ColorLime}}+15%#Fait apparaître une carte"}, -- Magic 8 Ball
	[197] = {"197", "Sang du Christ", "↑ Dégâts {{ColorLime}}+0.5#↑ Portée {{ColorLime}}+0.38"}, -- Jesus Juice
	[203] = {"203", "Offre Spéciale", "50% de chances de faire apparaître les versions doublées des ressources"}, -- Humbling Bundle
	[205] = {"205", "Prise de Sang", "Recharge complètement un objet activable vide en appuyant sur le bouton pour l'utiliser#{{Warning}} Inflige un demi-cœur de dégâts à Isaac par barre de charge remplie#Retire les cœurs rouges en priorité"}, -- Sharp Plug
	[206] = {"206", "Guillotine", "↑ Dégâts {{ColorLime}}+1.0#↑ Débit {{ColorLime}}+1.0#La tête d'Isaac se sépare de son corps et l'orbite#La tête tire et inflige des dégâts de contact"}, -- Guillotine
	[207] = {"207", "Boule de Pansements", "{{Blank}} Obtenir plusieurs copies de cet objet l'améliore :#{{Blank}}#1: Orbite autour d'Isaac#2: Orbite autour d'Isaac et tire des larmes envoûtantes#3: Pourchasse les ennemis et inflige 12.5 dégâts de contact#4: Pourchasse les ennemis et inflige 25 dégâts de contact"},
	[211] = {"211", "Bébé Araignée", "Subir un dégât invoque 3-5 araignées bleues"}, -- Spider Baby
	[214] = {"214", "Anémie", "↑ Portée {{ColorLime}}+1.5#Subir un dégât répand une traînée de sang corrosive derrière Isaac pour la durée d'une salle"}, -- Anemic
	[215] = {"215", "Tête de Bouc", "{{AngelDevilChanceSmall}} Garantit d'ouvrir l'Antre du Diable {{DevilRoom}} ou le Refuge des Anges {{AngelRoom}} après avoir battu le boss de l'étage"},
	[218] = {"218", "Placenta", "{{Heart}} +1 Réceptacle de cœur#Soigne un cœur rouge#Chance de régénérer un demi-cœur rouge à chaque minute du chronomètre#Régénère une pièce pour le {{ColorLightOrange}}Gardien"}, -- Placenta
	[222] = {"222", "Antigravité", "↑ Débit {{ColorLime}}+1#Maintenir les boutons de tir fait flotter les larmes d'Isaac sur place#Relâcher les boutons de tir envoie toutes les larmes dans la direction où elles ont été tirées"},
	[223] = {"223", "Pyromanie", "{{Bomb}} +5 Bombes#Les explosions soignent Isaac d'un demi-cœur rouge#Rend Isaac invulnérable aux flammes"},
	[224] = {"224", "Corps de Cricket", "↑ Débit {{ColorLime}}+0.5#↓ Portée {{ColorError}}-20%#Les larmes se divisent en 4 en touchant un obstacle ou le sol#Les larmes divisées infligent 50% de dégâts"}, -- Cricket's Body
	[227] = {"227", "Tirelire Cochon", "{{Coin}} +3 Pièces#Subir un dégât fait apparaître 1-2 pièces#Fait apparaître 0-1 pièces pour le {{ColorLightOrange}}Gardien"},
	[228] = {"228", "Parfum de Maman", "↑ Débit {{ColorLime}}+0.5#Chance de tirer des larmes terrifiantes#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 85 Chance)"}, -- Moms Perfume
	[229] = {"229", "Poumon de Monstro", "↓ Débit {{ColorError}}-77%#Remplace les larmes d'Isaac par une attaque chargée qui crache une gerbe de larmes"},
	[230] = {"230", "Abaddon", "↑ Dégâts {{ColorLime}}+1.5#↑ Vitesse {{ColorLime}}+0.2#{{BlackHeart}} +2 cœurs noirs#Convertit tous les réceptacles de cœur d'Isaac en cœurs noirs#12.5% de chances de tirer une larme terrifiante#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 85 Chance)"}, -- Abaddon
	[232] = {"232", "Chronomètre", "↑ Vitesse {{ColorLime}}+0.3#Ralentit tous les ennemis de manière permanente"}, -- Stop Watch
	[233] = {"233", "Planète Naine", "↑ Portée {{ColorLime}}+6.5#Les larmes d'Isaac orbitent autour de lui#Larmes spectrales"},
	[238] = {"238", "1er Fragment de Clé", "Combiner ce fragment de clé avec l'autre {{Collectible239}} permet d'ouvrir la grande porte dorée dans le {{ColorTransform}}Coffre{{ColorWhite}} et la {{ColorTransform}}Chambre Noire #Augmente la fréquence d'apparition des cœurs éternels#{{AngelChanceSmall}} Augmente les chances d'Offrandes des Anges {{AngelRoom}}"},
	[239] = {"239", "2è Fragment de Clé", "Combiner ce fragment de clé avec l'autre {{Collectible238}} permet d'ouvrir la grande porte dorée dans le {{ColorTransform}}Coffre{{ColorWhite}} et la {{ColorTransform}}Chambre Noire #Augmente la fréquence d'apparition des cœurs éternels#{{AngelChanceSmall}} Augmente les chances d'Offrandes des Anges {{AngelRoom}}"},
	[240] = {"240", "Traitement Expérimental", "↑ Augmente 4 stats aléatoires#↓ Diminue 2 stats aléatoires"}, -- Experimental Treatment
	[245] = {"245", "20/20", "↓ Dégâts {{ColorError}}-20%#Duplique les larmes tirées par Isaac#Annule la réduction de débit de {{ColorYellow}}Polyphème{{ColorWhite}} {{Collectible169}}, du {{ColorYellow}}Troisième Œil{{ColorWhite}} {{Collectible2}} et d'{{ColorYellow}}Araignée Mutante{{ColorWhite}} {{Collectible153}}"}, -- 20/20
	[246] = {"246", "Carte Perdue", "Révèle l'emplacement des salles Secrète {{SecretRoom}} et Super Secrète {{SuperSecretRoom}} sur la carte"},
	[248] = {"248", "Conscience Collective", "Double les dégâts infligés par les locustes, les mouches et araignées bleues, et les familiers mouches et araignées"}, -- Hive Mind
	[253] = {"253", "Croûte Magique", "↑ Chance {{ColorLime}}+1#{{Heart}} +1 Réceptacle de cœur#Soigne un cœur rouge"}, -- Magic Scab
	[254] = {"254", "Caillot de Sang", "↑ Dégâts {{ColorLime}}+1#↑ Portée {{ColorLime}}+1.5#L'effet n'est appliqué que sur l'œil gauche"}, -- Blood Clot
	[256] = {"256", "Bombes Brûlantes", "{{Bomb}} +5 Bombes#Les bombes d'Isaac infligent des dégâts de contact aux ennemis#Les bombes d'Isaac allument une flamme à l'endroit de l'explosion#Rend Isaac invulnérable au feu"}, -- Hot Bombs
	[260] = {"260", "Bougie Noire", "{{BlackHeart}} +1 cœur noir#Empêche l'apparition de fléaux#Annule l'effet de téléportation de l'{{ColorYellow}}Œil Maudit{{ColorWhite}} {{Collectible316}} et de la {{ColorYellow}}Pièce Maudite{{ColorWhite}} {{Trinket172}}"},
	[261] = {"261", "Proptose", "↑ Dégâts {{ColorLime}}+0.5#Les larmes d'Isaac infligent {{ColorLime}}dégâts x3{{ColorWhite}} à bout portant#Les dégâts des larmes diminuent avec le temps qu'elles passent en l'air"}, -- Proptosis
	[262] = {"262", "Page Déchirée 2", "{{BlackHeart}} +1 cœur noir#Double les dégâts infligés en perdant un cœur noir#Inflige 80 dégâts à tous les ennemis de la salle quand les PV totaux d'Isaac sont réduits à 1 cœur"}, -- Missing Page 2
	[263] = {"263", "Rune de Cristal", "Active l'effet de la rune ou pierre d'âme portée par Isaac sans la consommer#Le temps de recharge de l'objet varie selon la rune#Fait apparaître une rune"}, -- Clear Rune   (REPENTANCE ITEM)
	[273] = {"273", "Cerveau de Bob", "Peut être projeté en ligne droite avec les boutons de tir#Explose au contact d'un ennemi#{{Blank}}#{{Warning}} L'explosion peut infliger des dégâts à Isaac"}, -- Bob's Brain
	[274] = {"274", "Meilleure Pote", "Subir un dégât invoque une mouche qui orbite autour d'Isaac et inflige des dégâts de contact pour la durée d'une salle"}, -- Best Bud
	[275] = {"275", "P'tit Soufre", "Tire des lasers de sang"}, -- Lil Brimstone	
	[276] = {"276", "Cœur d'Isaac", "Isaac devient invulnérable#Fait apparaître un familier qui suit Isaac#{{Warning}} Isaac subit un dégât quand le familier entre en contact avec un ennemi ou un projectile#Le cœur charge une vague de larmes quand Isaac tire et la crache quand les boutons de tir sont relâchés"}, -- Isaac's Heart
	[278] = {"278", "Mendiant des Ombres", "Ramasse les cœurs rouges au sol et convertit 1,5 cœurs rouges en 1 cœur noir, une araignée, une pilule, une carte ou une rune"}, -- Dark Bum
	[280] = {"280", "Sissy la Faucheuse", "Invoque des araignées bleues dans les salles hostiles#Envoûte les ennemis qui la touchent"}, -- Sissy Longlegs
	[283] = {"283", "D100", "Rejoue tous les objets sur piédestaux, les ressources, les rochers, les stats et tous les objets d'Isaac#Duplique une ressource aléatoire dans la salle#Rejoue la salle actuelle en y changeant les ennemis"}, -- D100
	[285] = {"285", "D10", "Rejoue tous les ennemis de la salle#Les nouveaux ennemis ont une vie max équivalente aux anciens dans la plupart des cas"}, -- D10
	[286] = {"286", "Carte Blanche", "Active l'effet de la carte portée par Isaac sans la consommer#Le temps de recharge de l'objet varie selon la carte"},
	[287] = {"287", "Livre des Secrets", "Active l'effet de la {{ColorYellow}}Carte au Trésor{{ColorWhite}} {{Collectible54}}, la {{ColorYellow}}Boussole{{ColorWhite}} {{Collectible21}} ou la {{ColorYellow}}Carte Perdue{{ColorWhite}} {{Collectible246}} pour la durée de l'étage#Ne donne que les effets qui ne sont pas déjà actifs#Quand tous les effets sont actifs, donne l'effet des {{ColorYellow}}Lunettes à Rayon X{{ColorWhite}} {{Collectible76}}"}, -- Book of Secrets
	[288] = {"288", "Boîte d'Araignées", "Fait apparaître 4-8 araignées bleues"}, -- Box of Spiders
	[289] = {"289", "Bougie Rouge", "Lance une flamme rouge#La flamme disparaît après 10 secondes, ou après avoir infligé des dégâts ou bloqué des tirs 5 fois"}, -- Red Candle
	[291] = {"291", "Chasse d'Eau", "Tue instantanément tous les ennemis et boss cacas#Transforme les ennemis en cacas#Éteint tous les feux et inonde le sol de la salle#Transforme la lave en sol franchissable"}, -- Flush!
	[292] = {"292", "Bible Satanique", "{{BlackHeart}} +1 cœur noir#Utiliser l'objet avant un combat de boss transforme la récompense du combat en un Pacte avec le Diable"}, -- Satanic Bible
	[294] = {"294", "Haricot Blanc", "Repousse les ennemis et projectiles#Inflige 10 dégâts aux ennemis projetés contre un obstacle"}, -- Butter Bean
	[295] = {"295", "Pot de Vin", "Retire une pièce à Isaac#Inflige 2x les dégâts d'Isaac à tous les ennemis de la salle"}, -- Magic Fingers
	[296] = {"296", "Adaptateur", "Convertit un cœur d'âme ou un cœur noir en un réceptacle de cœur rouge"}, -- Converter
--	[297] = {"297", "Boîte de Pandore", "{{Warning}} USAGE UNIQUE#{{Blank}} Donne selon l'étage :#{{ColorTransform}}SS1{{ColorWhite}} : 2 cœurs d'âme#{{ColorTransform}}SS2{{ColorWhite}} : 2 clés, 2 bombes#{{ColorTransform}}G1{{ColorWhite}} : 1 Objet de boss#{{ColorTransform}}G2{{ColorWhite}} : SS1 + G1#{{ColorTransform}}P1{{ColorWhite}} : 4 cœurs d'âme#{{ColorTransform}}P2{{ColorWhite}} : 30 pièces#{{ColorTransform}}U1{{ColorWhite}} : 2 Objets de boss#{{ColorTransform}}U2{{ColorWhite}} : La {{ColorYellow}}Bible{{ColorWhite}} {{Collectible33}}#{{ColorTransform}}Shéol{{ColorWhite}} : 1 Objet du Diable, 1 cœur noir#{{ColorTransform}}Cathédrale{{ColorWhite}} : 1 Objet d'Ange + 1 cœur d'âme#{{ColorTransform}}Coffre{{ColorWhite}} : 1 Pièce#{{ColorTransform}}Chambre Noire{{ColorWhite}} : Débloque {{ColorYellow}}Carton de Déménagement{{ColorWhite}} {{Collectible523}}#{{ColorTransform}}Maison{{ColorWhite}} : La {{ColorYellow}}Clé Rouge{{ColorWhite}} {{Collectible580}}"}, -- Pandora's box
	[297] = {"297", "Boîte de Pandore", "{{Warning}} USAGE UNIQUE#{{Blank}} Donne selon l'étage :#SS1 : 2 cœurs d'âme#SS2 : 2 clés, 2 bombes#G1 : 1 Objet de boss#G2 : SS1 + G1#P1 : 4 cœurs d'âme#P2 : 30 pièces#U1 : 2 Objets de boss#U2 : La {{ColorYellow}}Bible {{Collectible33}}#??? / Néant : Rien#Shéol : 1 Objet du Diable, 1 cœur noir#Cathédrale : 1 Objet d'Ange + 1 cœur d'âme#Chambre Noire : Débloque {{ColorYellow}}Carton de Déménagement {{Collectible523}}#Coffre : 1 Pièce#Maison : La {{ColorYellow}}Clé Rouge {{Collectible580}}"}, -- Pandora's box
	[300] = {"300", "Bélier", "↑ Vitesse {{ColorLime}}+0.25#Entrer en contact avec un ennemi lui inflige 25 dégâts#En marchant au-delà de 0.85 de vitesse, Isaac ne subit plus les dégâts de contact"}, -- Aries
	[307] = {"307", "Capricorne", "{{Heart}} +1 réceptacle de cœur#↑ Dégâts {{ColorLime}}+0.93#↑ Vitesse {{ColorLime}}+0.1#↑ Portée {{ColorLime}}+0.75#↑ Débit {{ColorLime}}+0.5#{{Key}} +1 clé#{{Bomb}} +1 Bombe#{{Coin}} +1 pièce"}, -- Capricorn
	[308] = {"308", "Verseau", "Isaac répand derrière lui une trainée d'eau qui inflige 66% de ses dégâts#La traînée d'eau hérite des effets des larmes d'Isaac"}, -- Aquarius
	[309] = {"309", "Poissons", "↑ Débit {{ColorLime}}+0.5#Augmente le recul infligé par les larmes d'Isaac"},
    [310] = {"310", "Mascara d'Ève", "↑ Dégâts {{ColorLime}}x2#↓ Débit {{ColorError}}-33%#↓ Vitesse des tirs {{ColorError}}-0.5"},
    [311] = {"311", "Ombre de Judas", "À sa mort, réincarne Isaac en {{ColorLightOrange}}Judas des Ombres#Judas des Ombres bénéficie de {{ColorLime}}dégâts x2"},
	[314] = {"314", "Seau de Fromage", "{{Heart}} +1 réceptacle de cœur#↓ Vitesse {{ColorError}}-0.4#Soigne un cœur rouge#Permet à Isaac d'écraser les rochers en marchant dessus"}, -- Thunder Thighs
	[315] = {"315", "Attracteur Étrange", "Les larmes d'Isaac attirent les ennemis, ressources et babioles#L'attraction augmente selon la distance parcourue par la larme"}, -- Strange Attractor
	[316] = {"316", "Œil Maudit", "Remplace les larmes d'Isaac par une attaque chargée#L'attaque complètement chargée tire 5 larmes d'un coup, mais le chargement peut être interrompu pour en tirer moins#{{Warning}} Subir un dégât pendant le chargement de l'attaque téléporte Isaac dans une salle aléatoire"},
	[319] = {"319", "Œil Gauche de Caïn", "Tire dans une direction cardinale aléatoire#Copie les stats et effets de larmes d'Isaac"},
	[320] = {"320", "La Seule Amie de ???", "Inflige des dégâts de contact#Peut être déplacée avec les boutons de tir"}, -- ???'s Only Friend
	[323] = {"323", "Bocal de Larmes", "Projette 8 larmes en cercle autour d'Isaac#Les larmes infligent {{ColorLime}}dégâts +5#Chaque larme tirée par Isaac recharge une barre de l'objet"},
	[324] = {"324", "erreur", "{{Blank}} Téléporte Isaac vers l'une de ces salles :#{{Blank}}#{{TreasureRoom}} Salle du Trésor#{{SecretRoom}} Salle Secrète#{{SuperSecretRoom}} Salle Super Secrète#Salle d'Erreur"},
	[326] = {"326", "Souffle de Vie", "Maintenir le bouton d'utilisation vide rapidement la barre de charge#Quand elle est vide, Isaac devient invulnérable pour une seconde#Bloquer un dégât pendant cette période envoie des rayons de lumière en croix#{{Warning}} Rester appuyé plus d'une seconde après que la barre a été vidée inflige des dégâts à Isaac"}, -- Breath of Life
	[327] = {"327", "Le Positif", "Si Isaac subit un dégât alors qu'il n'a qu'un demi-cœur rouge ou moins, il devient invulnérable pour 5 secondes#Permet d'entrer dans le {{ColorTransform}}Coffre"},
	[328] = {"328", "Le Négatif", "↑ Dégâts {{ColorLime}}+1.0#Si Isaac subit un dégât alors qu'il n'a qu'un demi-cœur rouge ou moins, inflige 40 dégâts à tous les ennemis de la salle#Permet d'entrer dans la {{ColorTransform}}Chambre Noire"}, -- The Negative
	[330] = {"330", "Lait de Soja", "↑ Débit {{ColorLime}}x5.5#↓ Dégâts {{ColorError}}-80%#Réduit grandement le recul infligé par les larmes d'Isaac"}, -- Soy Milk
	[331] = {"331", "Œil de la Providence", "↑ Dégâts {{ColorLime}}+0.5#↓ Débit {{ColorError}}-0.3#↓ Vitesse des tirs {{ColorError}}-0.3#Larmes autoguidées#Les larmes d'Isaac sont entourées d'une aura qui inflige 60 dégâts par seconde"}, -- Godhead
	[332] = {"332", "Loques de Lazare", "À sa mort, Isaac est réincarné en {{ColorLightOrange}}Lazare Ressuscité#Ressuscite simplement {{ColorLightOrange}}Lazare Impur"},
	[336] = {"336", "Oignon Pourri", "↓ Portée {{ColorError}}-1.5#↓ Vitesse des tirs {{ColorError}}-0.4#Larmes spectrales et transperçantes"}, -- Dead Onion
	[339] = {"339", "Épingle à Nourrice", "↑ Portée {{ColorLime}}+1.5#↑ Vitesse des tirs {{ColorLime}}+0.16#{{BlackHeart}} +1 cœur noir"}, -- Safety Pin
	[342] = {"342", "Lactarius Indigo", "{{Heart}} +1 réceptacle de cœur#↑ Débit {{ColorLime}}+0.7#↓ Vitesse des tirs {{ColorError}}-16%#Soigne 1 cœur rouge"}, -- Blue Cap
	[344] = {"344", "Boîte d'Allumettes", "{{BlackHeart}} +1 cœur noir#Fait apparaître 2-3 bombes#Fait apparaître {{ColorYellow}}Allumette {{Trinket41}}"}, -- Match Book
	[345] = {"345", "Synthol", "↑ Dégâts {{ColorLime}}+1.0#↑ Portée {{ColorLime}}+1.5"}, -- Synthoil
	[346] = {"346", "Casse-Croûte", "{{Heart}} +1 réceptacle de cœur#Soigne 1 cœur rouge"}, -- A Snack
	[348] = {"348", "Placebo", "Active l'effet de la pilule portée par Isaac sans la consommer#Le temps de recharge de l'objet varie en fonction de la pilule"},
	[350] = {"350", "Choc Toxique", "Empoisonne tous les ennemis en entrant dans une salle#Les ennemis répandent une flaque toxique à leur mort#Rend Isaac invulnérable aux nuages de poison"}, -- Toxic Shock
	[352] = {"352", "Canon de Verre", "Tire une énorme larme spectrale transperçante#{{Warning}} Augmente de deux cœurs les dégâts infligés à Isaac#Quand Isaac subit un dégât, il gagne {{ColorLime}}portée +1.5{{ColorWhite}}, laisse une traînée de sang corrosif derrière lui, et brise le canon#Le canon brisé devra recharger pendant 4 salles avant de pouvoir être utilisé à nouveau"}, -- Glass Canon
	[354] = {"354", "Boîte de Céréales", "{{Heart}} +1 Réceptacle de cœur#Soigne 1 cœur#Fait apparaître une babiole"}, -- Crack Jacks
    [355] = {"355", "Collier de Maman", "↑ Portée {{ColorLime}}+1.25#↑ Chance {{ColorLime}}+1.0#{{SoulHeart}} +1 cœur d'âme"}, -- Mom's Pearl
	[360] = {"360", "Incube", "Imite les stats et effets des larmes d'Isaac"}, -- Incubus
	[362] = {"362", "P'tit Coffre", "{{Blank}} Peut faire apparaître à la fin d'une salle :#Ressource aléatoire {{ColorSilver}}(25%)#Babiole aléatoire {{ColorSilver}}(10%)"},
	[365] = {"365", "Mouche Égarée", "Longe les murs et les obstacles#Inflige des dégâts de contact#Les ennemis à proximité d'elle la prennent pour cible"},
	[366] = {"366", "Bombes à Fragmentation", "{{Bomb}} +5 Bombes#Les bombes d'Isaac se divisent en 4-5 mini-bombes en explosant"}, -- Scatter Bombs
	[367] = {"367", "Bombes Arachnides", "{{Bomb}} +5 Bombes#Les bombes placées par Isaac répandent une flaque ralentissante et collent aux ennemis#Les ennemis tués par des bombes invoquent 2-4 araignées bleues"},
	[368] = {"368", "Épiphora", "Tirer dans la même direction augmente progressivement le débit jusqu'à 200%"},
    [369] = {"369", "Continuum", "↑ Portée {{ColorLime}}+3.0#Larmes spectrales#Les larmes qui disparaissent d'un côté de l'écran reviennent du côté opposé"}, -- Continuum
	[370] = {"370", "Mme Poupée", "↑ Débit {{ColorLime}}+0.7#↑ Portée {{ColorLime}}+1.5#Fait apparaître 3 cœurs"}, -- Mr. Dolly
	[371] = {"371", "Fléau de la Maison Dieu", "Fait apparaître 6 Bombes Troll quand Isaac subit un dégât#Les Bombes Troll imitent les effets des bombes d'Isaac"},
	[372] = {"372", "Bébé Chargé", "Peut parfois faire apparaître une pile, paralyser tous les ennemis de la salle ou ajouter une charge à l'objet activable"}, -- Charged Baby
	[374] = {"374", "Saint Éclat", "10% de chances de tirer une larme sacrée qui frappe l'ennemi touché d'un rayon de lumière#Le rayon inflige 300% des dégâts d'Isaac#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à 9 Chance)"}, -- Holy Light
	[375] = {"375", "Crâne d'Hôte", "20% de chances de bloquer les larmes ennemies#Rend Isaac invulnérable aux explosions#Rend Isaac invulnérable aux projectiles qui tombent du plafond "}, -- Host hat
	[376] = {"376", "Réapprovisionnement", "Les objets et ressources achetés à la boutique sont réapprovisionnées instantanément, permettant d'en acheter plusieurs#Le prix des objets réapprovisionnés augmente avec chaque achat"}, -- Restock
	[380] = {"380", "Fente Magique", "{{Coin}} +5 Pièces#Les portes, coffres et blocs qui doivent être ouverts par des clés se dévérouillent avec une pièce"},
	[382] = {"382", "Boule à Monstres", "Jeter la boule sur un ennemi le capture#Lancer une boule qui contient un ennemi le fait sortir et se battre aux côtés d'Isaac#Marcher sur la boule après avoir capturé un ennemi la recharge complètement"}, -- Friendly Ball
	[384] = {"384", "P'tit Boris", "Charge quand Isaac tire, puis se propulse à travers la salle et rebondit contre les murs quand les boutons de tirs sont relâchés"}, -- Lil Gurdy
	[389] = {"389", "Sac de Runes", "Fait apparaître une rune ou une pierre d'âme toutes les 7-8 salles"}, -- Rune Bag
	[391] = {"391", "Trahison", "Les larmes ennemies peuvent infliger des dégâts aux autres ennemis#Un ennemi touché par la larme d'un autre ennemi attaquera celui-ci"},
	[393] = {"393", "Baiser du Serpent", "15% de chances de tirer une larme empoisonnée#Entrer en contact avec un ennemi l'empoisonne#Les ennemis tués par le poison de contact ont 20% de chances de faire apparaitre un cœur noir"}, -- Serpent`s Kiss
	[394] = {"394", "Ligne de Mire", "↑ Débit {{ColorLime}}+0.7#↑ Portée {{ColorLime}}+3.0#Isaac tire automatiquement en direction d'une cible rouge déplaçable avec les boutons de tir#Affecte également les familiers#Appuyer sur le bouton {{ColorSilver}}[Lâcher]{{ColorWhite}} arrête le tir automatique"}, -- Marked
	[395] = {"395", "Tech X", "Les larmes d'Isaac sont remplacées par des anneaux laser#La taille et les dégâts des anneaux augmentent avec la durée de la charge#100% de dégâts avec une charge complète"}, -- Tech X
	[397] = {"397", "Rayon Tracteur", "↑ Débit {{ColorLime}}+1.0#↑ Portée {{ColorLime}}+1.5#↑ Vitesse des tirs {{ColorLime}}+0.16#Les larmes d'Isaac volent en ligne droite en suivant un rayon de lumière#Se déplacer sur les côtés déplace également les larmes"},
	[399] = {"399", "Gouffre du Néant", "Tirer pendant 3 secondes fait apparaître une croix rouge sur la tête d'Isaac#Relâcher les boutons de tir crée un anneau noir autour de lui qui inflige des dégâts de contact"}, -- Maw of the Void
	[401] = {"401", "Explosivo", "25% de chances de tirer une larme collante#Ces larmes s'attachent aux ennemis et explosent après quelques secondes#Les explosions infligent les dégâts d'Isaac {{ColorLime}}+60"}, -- Explosivo
	[404] = {"404", "Bébé Péteur", "Bloque les projectiles ennemis#S'il est touché par un projectile ennemi, le familier pète et envoûte, empoisonne ou repousse les ennemis"}, -- Farting Baby
	[405] = {"405", "Bug", "Peut être projeté avec un double appui sur un bouton de tir#Rejoue les ennemis et ressources qui entrent en contact avec l'objet"}, -- GB Bug
	[407] = {"407", "Pureté", "↑ Augmente une stat en fonction de la couleur de l'aura qui entoure Isaac#L'effet disparaît en recevant des dégâts et revient à la salle suivante#{{ColorRed}}Rouge{{ColorWhite}} = Dégâts {{ColorLime}}+4.0#{{ColorCyan}}Bleu{{ColorWhite}} = Débit {{ColorLime}}+4.0#{{ColorYellow}}Jaune{{ColorWhite}} = Vitesse {{ColorLime}}+0.5#{{ColorOrange}}Orange{{ColorWhite}} = Portée {{ColorLime}}+3.0"},
	[408] = {"408", "Athamé", "Les ennemis tués créent parfois des cercles de soufre noirs#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance"}, -- Athame
	[414] = {"414", "Plus d'Options", "Permet à Isaac de choisir entre deux objets dans les Salles du Trésor {{TreasureRoom}}"},
	[415] = {"415", "Couronne de Lumière", "{{SoulHeart}} +2 Cœurs d'âme#↑ Dégâts {{ColorLime}}x2#↓ Vitesse des tirs {{ColorError}}-0.3#Subir un dégât désactive ces effets pour la durée d'une salle#Les effets restent désactivés tant que tous les réceptacles de cœurs d'Isaac ne sont pas remplis"},
    [416] = {"416", "Poches Profondes", "#Fait apparaître 1-3 pièces si terminer une salle n'aurait pas donné de récompense#Augmente la capacité maximale du compteur de pièces à 999"}, -- Deep Pockets
	[417] = {"417", "Succube", "Rebondit contre les murs entourée d'une aura#↑ Dégâts {{ColorLime}}+50%{{ColorWhite}} tant qu'Isaac reste dans l'aura#Inflige des dégâts aux ennemis dans l'aura"}, -- Succubus
	[419] = {"419", "Téléportation 2.0", "Téléporte Isaac dans une salle inexplorée#{{Blank}}#Ordre de téléportation#{{Blank}} {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}> {{SacrificeRoom}}>{{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}> {{ChallengeRoom}}>{{IsaacsRoom}}>{{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>#{{Blank}} {{DevilRoom}}{{AngelRoom}}>Salle d'erreur"},
	[420] = {"420", "Poudre Noire", "Dessiner un cercle en marchant crée un pentagramme sur le sol#Le pentagramme inflige des dégâts aux ennemis qui volent ou marchent dessus"},
	[421] = {"421", "Haricot Rouge", "Isaac pète et envoûte les ennemis à proximité"}, -- Kidney Bean
	[422] = {"422", "Sablier Luisant", "Remonte le temps et ramène Isaac dans la salle précédente#Annule toutes les actions faites, les dégâts subis, les ressources ramassées dans la salle où l'objet a été utilisé#Peut être utilisé 3 fois par étage"},
	[426] = {"426", "Admiratrice Obsessionnelle", "Imite les mouvements d'Isaac avec 0.66 secondes de délai et inflige des dégâts de contact"}, -- Obsessed Fan
	[430] = {"430", "Papa Mouche", "Imite les mouvements d'Isaac avec 0.6 secondes de délai#Tire des larmes sur les ennemis à proximité"}, -- papa Fly
	[431] = {"431", "Bébé Interdimensionnel", "Imite les mouvements d'Isaac avec 0.66 secondes de délai#Double et accélère les larmes d'Isaac qui le traversent"},
	[432] = {"432", "Bombes à Paillettes", "{{Bomb}} +5 bombes#Les bombes d'Isaac ont {{ColorLime}}63%{{ColorWhite}} de chances de faire apparaître une ressource et {{ColorLime}}15%{{ColorWhite}} de chances d'envoûter les ennemis en explosant#Les bombes ne peuvent pas faire apparaître plus de 63 ressources par étage"},
	[433] = {"433", "Mon Ombre", "L'ombre d'Isaac le suit avec un délai#L'ombre invoque une sangsue alliée quand elle rentre en contact avec un ennemi"},
	[437] = {"437", "D7", "Fait réapparaître tous les ennemis de la salle et ferme les portes#Éliminer les ennemis fera apparaître la récompense de la salle à nouveau"}, -- D7
	[439] = {"439", "Boîte de Maman", "↑ Chance {{ColorLime}}+1{{ColorWhite}} tant qu'Isaac porte l'objet#Génère une babiole#Double les effets des babioles"},
	[440] = {"440", "Calcul Rénal", "Change régulièrement les larmes d'Isaac en une attaque chargée#Relâcher le bouton de tir quand l'attaque est chargée crache un gros caillot suivi d'une gerbe de tirs rapides"}, -- Kidney Stone
	[442] = {"442", "Couronne des Ténèbres", "Avoir exactement 1 cœur rouge rempli donne :#↑ Portée {{ColorLime}}+1.5#↑ Débit {{ColorLime}}+2.0#↑ Vitesse des tirs {{ColorLime}}+0.2"}, -- Dark Princes Crown
	[444] = {"444", "Crayon de Papier", "Toutes les 15 larmes tirées, Isaac crache une gerbe de larmes"}, -- Lead Pencil
	[445] = {"445", "Dent de Chien", "↑ Dégâts {{ColorLime}}+0.3#↑ Vitesse {{ColorLime}}+0.1#Un hurlement de chien retentit dans les salles voisines aux salles Secrète {{SecretRoom}} et Super Secrète {{SuperSecretRoom}}#Un aboiement retentit dans les salles où un rocher cache une trappe vers un Souterrain {{LadderRoom}}"},
	[448] = {"448", "Bris de Verre", "Quand Isaac subit un dégât, il gicle des larmes dont la direction peut être contrôlée avec les boutons de tir#Retire un demi-cœur rouge à Isaac toutes les 20 secondes#L'effet prend fin quand Isaac se soigne ou quand la prochaine perte le tuerait#Perdre un demi-cœur rouge a une chance de faire apparaître un cœur rouge"}, -- Shard of Glass
	[450] = {"450", "Œil d'Avarice", "Toutes les 20 larmes, Isaac tire une larme en forme de pièce#Toucher un ennemi avec une larme pièce le transforme en statue d'or et fait apparaître une pièce#Tuer un ennemi doré fait appraître 1-3 pièces#{{Warning}} Tirer une larme en forme de pièce retire 1 pièce à Isaac"},
	[451] = {"451", "Nappe de Tarot", "Fait apparaître une carte ou une rune#Double les effets des cartes de tarot {{Card}}#Certaines cartes gagnent un effet supplémentaire"}, -- Tarot Cloth
	[453] = {"453", "Fracture Ouverte", "↑ Portée {{ColorLime}}+0.38#Les larmes d'Isaac se brisent en 1-3 petits morceaux d'os en touchant un obstacle ou ennemi"}, -- Compound Fracture
	[455] = {"455", "Médaille de Papa", "↑ Portée {{ColorLime}}+0.38#Fait apparaître une pièce porte-bonheur"},
	[456] = {"456", "Encas de Minuit", "{{Heart}} +1 réceptacle de cœur#Soigne un cœur rouge"}, -- Midnight Snack
	[458] = {"458", "Nombril", "Permet à Isaac de porter deux babioles#Fait apparaître une babiole"},
	[459] = {"459", "Sinusite", "20% de chances de tirer une crotte de nez#Les crottes de nez se collent aux ennemis et infligent les dégâts d'Isaac une fois par seconde#Les crottes de nez se décollent si l'ennemi meurt, s'enterre, saute hors de l'écran ou au bout de 10 secondes"}, --Sinus Infection
	[462] = {"462", "Œil de Bélial", "↑ Portée {{ColorLime}}+1.5#Larmes transperçantes#Après avoir transpercé   un ennemi, les larmes infligent {{ColorLime}}dégâts x2{{ColorWhite}} et deviennent autoguidées"},
	[463] = {"463", "Acide Sulfurique", "↑ Dégâts {{ColorLime}}+0.3#Isaac tire parfois des larmes corrosives#Les larmes corrosives détruisent les obstacles, les portes et les entrées des salles Secrète {{SecretRoom}} et Super Secrète {{SuperSecretRoom}}"},
	[464] = {"464", "Marque d'Harmonie", "{{SoulHeart}} +2 cœurs d'âme#Les ressources lâchées par les ennemis d'élite et à la fin des salles changent selon ce qui manque à Isaac"}, -- Glyph of Balance
	[472] = {"472", "Bébé Roi", "Tirer immobilise tous les familiers#Quand ils sont immobiles, les familiers tirent automatiquement sur les ennemis#Arrêter de tirer téléporte les familiers à Isaac"}, -- King Baby
	[474] = {"474", "Canon de Verre Brisé", "Se change en Canon de Verre"}, -- broken Glass Canon
	[476] = {"476", "D1", "Duplique une ressource aléatoire dans la salle#La copie peut ne pas être identique à l'original"},
	[477] = {"477", "Néant", "Absorbe tous les objets sur piédestal présents dans la salle#Objets actifs :#{{Blank}} Les prochaines utilisations de Néant activeront l'effet de tous les objets absorbés#Objets passifs :#{{Blank}} Augmente 2 stats aléatoires"},
	[478] = {"478", "Pause !", "Immobilise tous les ennemis dans la salle pendant 30 secondes#Les ennemis immobilisés peuvent infliger des dégâts de contact à Isaac#L'effet prend fin si Isaac tire"},
	[479] = {"479", "Fondeuse", "Absorbe la babiole portée par Isaac et active son effet de manière permanente"},
	[483] = {"483", "Mama Méga", "{{Warning}} USAGE UNIQUE#{{Blank}} Provoque une onde de choc qui ravage toutes les salles de l'étage d'une énorme explosion#{{Blank}}#Si Isaac possède une bombe dorée, utiliser Mama Méga la consomme et permet à l'objet d'être utilisé une seconde fois"},
	[487] = {"487", "Épluche-Légumes", "↑ Dégâts {{ColorLime}}+0.2#Retire un réceptacle de cœur#Donne un {{ColorYellow}}Cube de Viande{{ColorWhite}}{{Collectible73}}"},
	[489] = {"489", "Dé Infini", "Imite les effets de dé (sauf {{ColorYellow}}Dé Compteur{{ColorWhite}} {{Collectible723}})#L'effet du dé peut être modifié en appuyant sur la touche pour lâcher les objets#Le temps de recharge varie selon le dé utilisé"}, -- D Infinity
	[491] = {"491", "Bébé Drogué", "Fait apparaître une pilule toutes les 7 salles#Utiliser une pilule empoisonne tous les ennemis de la salle"}, -- Acid Baby
	[492] = {"492", "Fée Agaçante", "↑ Chance {{ColorLime}}+1#Révèle la position des rochers marqués, des entrées de Souterrains {{LadderRoom}}, et des salles Secrète {{SecretRoom}} et Super Secrète {{SuperSecretRoom}}"},
	[493] = {"493", "Adrénaline", "↑ Dégâts augmentés pour chaque réceptacle de cœur vide "}, -- Adrenaline
	[494] = {"494", "Échelle de Jacob", "Les larmes d'Isaac provoquent 1-2 éclairs électriques à l'impact#Les éclairs infligent la moitié des dégâts d'Isaac#Les éclairs peuvent se propager d'un ennemi à l'autre"}, -- Jacobs Ladder
	[495] = {"495", "Piment Fantôme", "8% de chances de tirer une flamme bleue qui bloque les projectiles ennemis et inflige des dégâts de contact#Les flammes disparaissent après 2 secondes#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance"},
	[496] = {"496", "Euthanasie", "3.33% de chances de tirer une seringue#Les seringues tuent instantanément les ennemis et se divisent en 10 larmes#Les seringues infligent {{ColorLime}}dégâts x3{{ColorWhite}} aux boss#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à 10 Chance)"},
	[497] = {"497", "Slip Camouflage", "À l'entrée de chaque salle, tous les ennemis sont étourdis et Isaac gagne {{ColorLime}}vitesse +0.5#Quand Isaac tire, l'effet disaparait pour le reste de la durée de la salle, les ennemis à proximité d'Isaac subissent des dégâts, et Isaac gagne {{ColorLime}}dégâts +10{{ColorWhite}} et {{ColorLime}} débit +10{{ColorWhite}} pendant 1 seconde"},
	[498] = {"498", "Dualité", "Fait apparaître les portes de l'Antre du Diable {{DevilRoom}} et du Refuge des Anges {{AngelRoom}} si l'une des deux doit apparaître#Entrer dans une des salles fait disparaître l'autre#Ne garantit pas l'apparition des portes"},
	[499] = {"499", "Eucharistie", "Garantit l'apparition des Refuges des Anges {{AngelRoom}}"},
	[501] = {"501", "Gosier d'Avarice", "{{Heart}} +1 réceptacle de cœur toutes les 25 pièces au compteur#{{CoinHeart}} Permet au Gardien d'avoir un réceptacle de pièce supplémentaire"},
	[503] = {"503", "P'tite Corne", "5% de chances de tirer une larme qui invoque une main de Grosse Corne#La main tue instantanément les ennemis et inflige des dégâts aux boss#Permet d'infliger des dégâts de contact aux ennemis#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(20% à 15 Chance)"}, -- Little Horn
	[504] = {"504", "Bout de Crotte", "Invoque une mouche immobile qui tire sur les ennemis à proximité"}, -- Brown Nugget
	[506] = {"506", "Traîtrise", "Toucher un ennemi dans le dos avec une larme inflige le double de dégâts et le fait saigner#Le saignement inflige des dégâts à l'ennemi selon sa vitesse de déplacement"},
	[507] = {"507", "Paille Aiguisée", "Inflige les dégâts d'isaac à tous les ennemis de la salle#Retire 10% des PV totaux de tous les ennemis de la salle#Infliger des dégâts avec cet objet peut générer des demi-cœurs rouges"},
	[508] = {"508", "Rasoir de Maman", "Orbite autour d'Isaac#Bloque les projectiles#Fait saigner les ennemis qui entrent en contact avec lui#Le saignement inflige des dégâts à l'ennemi selon sa vitesse#Les ennemis qui saignent répandent du sang corrosif derrière eux"},
	[509] = {"509", "Nœnœil", "Orbite autour d'Isaac, inflige des dégâts de contact et tire sur les ennemis à proximité"}, -- Bloodshot Eye
	[514] = {"514", "Routeur Cassé", "Paralyse parfois les ennemis et projectiles#Les projectiles paralysés disparaissent#25% de chances de dupliquer une récompense de salle#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance"},
	[515] = {"515", "Cadeau Surprise", "{{Warning}} USAGE UNIQUE#Fait apparaître un objet aléatoire qui provient de la banque d'objets de la salle où il a été ouvert#Peut faire apparaître {{ColorYellow}}Morceau de Charbon{{ColorWhite}}{{Collectible132}} ou {{ColorYellow}}Tas de Caca{{ColorWhite}}{{Collectible36}} à la place#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance"},
	[517] = {"517", "Bombes Éclair", "{{Bomb}} +7 Bombes#Permet à Isaac de poser plusieurs bombes sans délai#Les bombes d'Isaac ne se repoussent plus entre elles en explosant"},
	[521] = {"521", "Coupon", "Rend gratuit un objet payant présent dans la salle#Fonctionne pour les coûts en pièces et en PV#Garantit un objet en solde à la Boutique {{Shop}} tant qu'Isaac porte l'objet"},
	[523] = {"523", "Carton de Déménagement", "Utiliser l'objet absorbe jusqu'à 10 ressources, babioles et objets dans la salle#Utiliser l'objet à nouveau posera les objets absorbés sur le sol#Permet de déplacer des ressources et objets d'une pièce à l'autre"}, -- Moving Box
	[524] = {"524", "Technologie Zéro", "Les larmes d'Isaac sont reliées par des arcs électriques#L'électricité inflige 33% des dégâts d'Isaac"}, -- Technology Zero
	[531] = {"531", "Haemolacria", "↑ Dégâts {{ColorLime}}+50% +1#↓ Portée {{ColorError}}-20%#↓ Débit diminué#Les larmes d'Isaac sont plus grosses et tirées en cloche, et se divisent en larmes plus petites à l'impact"}, -- Haemolacria
	[538] = {"538", "Sac de Billes", "Fait apparaître 3 babioles#Subir un dégât a 5% de chances d'absorber la babiole portée par Isaac et d'activer ses effets de manière permanente"},
	[541] = {"541", "Moelle", "{{EmptyBoneHeart}} +1 cœur d'os#Fait apparaître 3 cœurs rouges"}, -- Marrow
	[543] = {"543", "Terre Sacrée", "Subir des dégâts fait apparaître un caca sacré entouré d'une aura#{{Blank}}#Quand Isaac se tient à l'intérieur de l'aura :#↑ Dégâts {{ColorLime}}+25%#↑ Débit {{ColorLime}}+250%#Larmes autoguidées#Chance de nullifier un dégât subi"}, -- Hallowed Ground
	[547] = {"547", "Acte de Divorce", "{{EmptyBoneHeart}} +1 cœur d'os#↑ Débit {{ColorLime}}+0.7#Fait apparaître {{ColorYellow}}Papier Mystérieux {{Trinket21}}"},
	[549] = {"549", "Os de Verre", "Remplace tous les réceptacles de cœur d'Isaac par 6 cœurs d'os#Perdre un cœur d'os tire 8 os autour d'Isaac et donne {{ColorLime}}débit +0.4{{ColorWhite}} de manière permanente"},
	[550] = {"550", "Pelle Brisée", "Le pied de {{ColorCyan}}Maman{{ColorWhite}} tente en permanence d'écraser Isaac#Utiliser cet objet cesse les attaques pour la durée d'une salle ou d'une vague#{{Warning}} Poser cet objet sur un piédestal puis quitter la salle le fait disparaître#{{Blank}}#{{UltraSecretRoom}} Garde la pelle avec toi le plus longtemps possible"},
	[551] = {"551", "Pelle Brisée", "Le deuxième morceau d'une pelle maudite#{{Blank}}#{{UltraSecretRoom}} Permet de déterrer quelque chose d'enfoui dans la {{ColorTransform}}Chambre Noire"},
	[552] = {"552", "Pelle de Maman", "Ouvre une trappe vers l'étage suivant#{{Blank}}#{{UltraSecretRoom}} Permet de déterrer quelque chose d'enfoui dans la {{ColorTransform}}Chambre Noire"},
	------PAUSE-----------
	[553] = {"553", "Mucormycose", "25% de chances de tirer une spore collante#Les spores explosent après 2.5 secondes, infligent des dégâts, empoisonnent les ennemis à proximité et libèrent d'autres spores"}, --  Mucormycosis
	[554] = {"554", "BOUH", "Effraie les ennemis qui s'approchent d'Isaac"}, --  2Spooky
	[555] = {"555", "Lame de Rasoir Dorée", "↑ Dégâts {{ColorLime}}+1.2{{ColorWhite}} pour la durée d'une salle en échange de 5 pièces"}, --  Golden Razor
	[556] = {"556", "Sulfure", "Active l'effet de {{ColorYellow}}Soufre{{ColorWhite}} {{Collectible118}} pour la durée d'une salle"}, --  Sulfur
	[557] = {"557", "Biscuit Chinois", "Affiche une prédiction ou fait apparaître un cœur d'âme, une carte de tarot ou une babiole"}, --  Fortune Cookie
	[558] = {"558", "Les Yeux de la Tête", "Chance de tirer 1-3 larmes supplémentaires dans une direction aléatoire"}, --  Eye Sore
	[559] = {"559", "120 Volts", "Électrocute continuellement les ennemis à proximité#L'électricité inflige 75% des dégâts d'Isaac"}, --  120 Volt
	[560] = {"560", "Motus", "Relâche 10 larmes en cercle autour d'Isaac quand il subit un dégât#↑ Débit {{ColorLime}}+1.2{{ColorWhite}} au premier dégât subi#↑ Débit {{ColorLime}}+0.4{{ColorWhite}} pour chaque dégât suivant"}, --  It Hurts
	[561] = {"561", "Lait d'Amande", "↑ Débit {{ColorLime}}x4#↓ Dégâts {{ColorError}}x0.3#Chaque larme gagne un effet de ver aléatoire"}, --  Almond Milk
	[562] = {"562", "Au Fond du Trou", "Empêche les stats de diminuer pour le reste de la partie"}, --  Rock Bottom
	[563] = {"563", "Bombes Fabuleuses", "{{Bomb}} +5 Bombes#Les bombes d'Isaac ont des effets aléatoires"}, --  Nancy Bombs
	[564] = {"564", "Savonnette", "↑ Débit {{ColorLime}}+0.5#↑ Vitesse des tirs {{ColorLime}}+0.2"}, --  A Bar of Soap
	[565] = {"565", "Chiot de Sang", "Pourchasse et inflige des dégâts aux ennemis#Après avoir tué suffisamment d'ennemis, il gagne en puissance mais pourchasse aussi Isaac#Le chiot peut être calmé si Isaac lui inflige assez de dégâts ou le fait exploser"}, --  Blood Puppy
	[566] = {"566", "Attrape-Rêve", "{{HalfSoulHeart}} +1 demi-cœur d'âme en arrivant dans un nouvel étage#Révèle le boss et le contenu de la Salle du Trésor {{TreasureRoom}} durant le cauchemar entre les étages"}, --  Dream Catcher
	[567] = {"567", "Cierge Pascal", "↑ Débit {{ColorLime}}+0.4{{ColorWhite}} pour chaque salle terminée sans subir de dégâts#Plafonne à {{ColorLime}}+5#Subir un dégât remet le bonus à zéro"}, --  Paschal Candle
	[568] = {"568", "Intervention Divine", "Appuyer deux fois sur un bouton de tir invoque un bouclier dans la direction du tir#Le bouclier dure 1 seconde, repousse les ennemis et renvoie les projectiles et lasers"}, --  Divine Intervention
	[569] = {"569", "Serment du Sang", "Poignarde Isaac à chaque nouvel étage, le vidant de tous ses cœurs rouges sans le tuer#Chaque cœur perdu augmente les stats de dégâts et de vitesse pour la durée de l'étage#Chaque demi-cœur perdu compte comme un dégât individuel infligé à Isaac"}, --  Blood Oath
	[570] = {"570", "Pâte à Modeler", "Les larmes d'Isaac ont chacune une couleur différente#Chaque larme inflige un effet différent en fonction de sa couleur"}, --  Playdough Cookie
	[571] = {"571", "Chaussettes Orphelines", "{{SoulHeart}} +2 cœurs d'âme#↑ Vitesse {{ColorLime}}+0.3#Rend Isaac invulnérable aux flaques corrosives et aux piques"}, --  Orphan Socks
	[572] = {"572", "Œil Occulte", "↑ Dégâts {{ColorLime}}+1.0#↑ Portée {{ColorLime}}+7.5#↓ Vitesse des tirs {{ColorError}}-0.16#Les larmes peuvent être contrôlées en vol"}, --  Eye of the Occult
	[573] = {"573", "Cœur Immaculé", "{{Heart}} +1 Réceptacle de cœur#↑ Dégâts {{ColorLime}}+20%#Soin complet#20% de chances de tirer une larme spectrale supplémentaire qui orbite autour d'Isaac"}, --  Immaculate Heart
	[574] = {"574", "Monstrance", "Entoure Isaac de deux auras qui infligent des dégâts aux ennemis#L'aura intérieure inflige plus de dégâts que l'aura extérieure"}, --  Monstrance
	[575] = {"575", "L'Envahisseur", "Se niche dans la tête d'Isaac et tire 4 larmes ralentissantes toutes les 1.5 secondes#A une chance de sortir de la tête d'Isaac quand il subit un dégât#Une fois sortie, l'araignée tire deux fois plus vite et bondit sur les ennemis#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance"}, --  The Intruder
	[576] = {"576", "Coprophilie", "Détruire un caca fait apparaître 1-4 petits cacas amicaux#Leur type dépend du type de caca détruit#Tous les ennemis {{ColorCyan}}crottes{{ColorWhite}} deviennent amicaux#Remplace certains rochers par des cacas"}, --  Dirty Mind
	[577] = {"577", "Damoclès", "{{Warning}} USAGE UNIQUE#Une fois l'objet utilisé, double tous les objets sur piédestal#{{Warning}} À partir du moment où Isaac subit un dégât, l'épée au-dessus de sa tête a une infime chance de tomber et de le tuer instantanément à chaque seconde qui passe#Une fois l'épée tombée, les objets sur piédestal ne sont plus doublés"}, --  Damocles
	[578] = {"578", "Carafe de Limonade", "Répand une grande flaque corrosive sur le sol"}, --  Free Lemonade
	[579] = {"579", "Épée de l'Esprit", "Les larmes d'Isaac sont remplacées par une épée#L'épée inflige {{ColorLime}}dégâts x3{{ColorWhite}}#L'attaque chargée fait tournoyer l'épée autour d'Isaac et envoie un projectile#Si la vie d'Isaac est égale ou supérieure à son nombre de réceptacles de cœur, l'épée tire des projectiles lors des coups normaux"}, --  Spirit Sword
	[580] = {"580", "Clé Rouge", "Ouvre une porte vers une salle rouge dans les murs marqués d'un cadre de porte rouge#Les salles rouges peuvent être des salles spéciales#Entrer dans une salle en dehors de la grille de 13x13 téléporte Isaac dans la salle I AM ERROR"}, --  Red Key
	[581] = {"581", "Mouche Oracle", "Pourchasse et détruit les projectiles ennemis#Inflige des dégâts de contact"}, --  Psy Fly
	[582] = {"582", "Psilocybe Cyanescens", "↑ Débit {{ColorLime}}+0.75#↓ Vitesse {{ColorError}}-0.03#Déforme l'écran#L'effet peut être cumulé"}, --  Wavy Cap
	[583] = {"583", "Fusée en Bocal", "{{Bomb}} +5 Bombes#Si une bombe est posée en tirant, elle devient une roquette qui fonce dans la direction du tir"}, --  Rocket in a Jar
	[584] = {"584", "Livre des Vertus", "Invoque un feu follet qui tire des larmes spectrales#Peut être combiné avec un second objet activable pour créer des feux follets spéciaux#Les feux follets disparaissent s'ils subissent trop de dégâts#Transforme le premier Pacte avec le Diable {{DevilRoom}} en Offrande des Anges {{AngelRoom}}"}, --  Book of Virtues
	[585] = {"585", "Boîte d'Albâtre", "Se charge en ramassant des cœurs d'âme#Fait apparaître 3 cœurs d'âme et 2 objets angéliques#Fait apparaître 2 cœurs d'âme et 1 objet angélique si un Pacte avec le Diable a déjà été signé"}, --  Alabaster Box
	[586] = {"586", "Échelle Vers les Cieux", "Fait apparaître une échelle menant à une boutique angélique dans la première salle d'un nouvel étage#L'échelle disparaît quand Isaac quitte la salle où elle se trouve"}, --  The Stairway
	[587] = {"587", "Menorah", "<Cet objet n'existe pas>"}, -- Menorah (Unused but skripted)
	[588] = {"588", "Sol", "Révèle l'emplacement de la salle de boss {{BossRoom}}#{{Blank}}#{{Blank}} Après avoir battu un boss:#↑ Dégâts {{ColorLime}}+3.0#↑ Chance {{ColorLime}}+1.0#Active {{ColorYellow}}XIX - Le Soleil {{Card20}} #Recharge entièrment l'objet activable#Retire tous les fléaux"}, --  Sol
	[589] = {"589", "Luna", "Ajoute une salle secrète {{SecretRoom}} et super secrète {{SuperSecretRoom}} supplémentaires à chaque étage#Révèle la position d'une salle secrète {{SecretRoom}}{{SuperSecretRoom}}#Les salles Secrètes {{SecretRoom}}{{SuperSecretRoom}} contiennent un rayon de lumière qui donne un demi-cœur d'âme et augmente le débit pour la durée de l'étage"}, --  Luna
	[590] = {"590", "Mercurius", "↑ Vitesse {{ColorLime}}+0.4#Les portes restent ouvertes en permanence"}, --  Mercurius
	[591] = {"591", "Venus", "{{Heart}} +1 Réceptacle de cœur#Soin complet#Envoûte les ennemis à proximité d'Isaac"}, --  Venus
	[592] = {"592", "Terra", "↑ Dégâts {{ColorLime}}+1.0#Remplace les larmes d'Isaac par des rochers#Les rochers infligent des dégâts variables, peuvent détruire les obstacles et repoussent les ennemis"}, --  Terra
	[593] = {"593", "Mars", "Appuyer deux fois sur la touche de déplacement permet de réaliser une ruée en ligne droite#La ruée rend Isaac invulnérable et inflige {{ColorLime}}dégâts x3{{ColorWhite}} au contact#3 secondes de recharge"}, --  Mars
	[594] = {"594", "Jupiter", "{{Heart}} +2 Réceptacles de cœur#↓ Vitesse {{ColorError}}-0.3#Rester immobile accumule de la vitesse#Se déplacer relâche un nuage de gaz empoisonné"}, --  Jupiter
	[595] = {"595", "Saturnus", "7 larmes orbitent autour d'Isaac en entrant dans une salle#Les projectiles ennemis ont une chance d'entrer en orbite autour d'Isaac"}, --  Saturnus
	[596] = {"596", "Uranus", "Isaac tire des larmes de glace ralentissantes#Les ennemis tués par les larmes gèlent#Entrer en contact avec un ennemi gelé le fait glisser et exploser en 6 fragments de glace"}, --  Uranus
	[597] = {"597", "Neptunus", "Ne pas tirer augmente progressivement le débit d'Isaac#Tirer diminue le débit jusqu'à ce qu'il revienne à sa valeur de base"}, --  Neptunus
	[598] = {"598", "Pluto", "↑ Débit {{ColorLime}}+0.7#Diminue fortement la taille d'Isaac, lui permettant de passer entre les obstacles#Permet à Isaac de passer au-dessous de certains projectiles"}, --  Pluto
	[599] = {"599", "Tête Réduite", "Fait apparaître une Salle Maudite {{CursedRoom}} supplémentaire à chaque étage#Les Salles Maudites {{CursedRoom}} sont de meilleure qualité#Toutes les Salles Maudites {{CursedRoom}} contiennent une pièce"}, --  Voodoo Head
	[600] = {"600", "Collyre", "↑ Débit {{ColorLime}}+28%{{ColorWhite}} pour l'œil gauche"}, --  Eye Drops
	[601] = {"601", "Acte de Contrition", "↑ Débit {{ColorLime}}+0.7#{{EternalHeart}} +1 cœur éternel#Permet au Refuge des Anges d'apparaître même si un Pacte avec le Diable a été signé#Subir un dégât de cœur rouge diminue moins drastiquement les chances d'ouvrir l'Antre du Diable ou le Refuge des Anges"}, --  Act of Contrition
	[602] = {"602", "Carte de Membre", "Ouvre une trappe vers l'arrière-boutique dans chaque Boutique {{Shop}}#L'arrière-boutique peut proposer des babioles, des ressources et des objets de n'importe quelle banque à la vente"}, --  Member Card
	[603] = {"603", "Batterie", "Fait apparaître 2-4 piles#Recharge complètement l'objet activable"}, --  Battery Pack
	[604] = {"604", "Bracelet de Maman", "Permet à Isaac de soulever et lancer les obstacles#Permet à Isaac de retirer le crâne des hôtes#Les obstacles ramassés peuvent être transportés d'une salle à l'autre"}, --  Mom's Bracelet
	[605] = {"605", "Cuillère à Glace", "Retire un œil à Isaac#L'œil rebondit contre les murs de la salle, laisse une flaque de sang et inflige 36 dégâts par seconde#↑ Dégâts {{ColorLime}}+34%{{ColorWhite}} de l'œil droit"}, --  The Scooper
	[606] = {"606", "Faille Oculaire", "5% de chances de tirer des larmes vortex#Les larmes vortex créent des failles à l'endroit où elles atterrissent#Les failles attirent les ennemis, ressources et projectiles à proximité#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance"}, --  Ocular Rift
	[607] = {"607", "Bébé Furoncle", "Tire une gerbe de larmes dans toutes les directions"}, --  Boiled Baby
	[608] = {"608", "Bébé Congelé", "Tire des larmes de glace#Gèle les ennemis qu'il tue#Entrer en contact avec un ennemi gelé le fait glisser et exploser en 6 fragments de glace"}, --  Freezer Baby
	[609] = {"609", "D6 Éternel", "Rejoue tous les objets de la salle#Les objets ont 30% de chances de disparaître"}, --  Eternal D6
	[610] = {"610", "Gros Piaf", "Plonge sur l'ennemi responsable du premier dégât infligé à Isaac dans la salle et crée une vague de rochers#Pourchasse ensuite les ennemis"}, --  Bird Cage
	[611] = {"611", "Larynx", "Isaac hurle, ce qui inflige des dégâts et repousse les ennemis à proximité##Peut être utilisé même sans être entièrement chargé#Plus l'objet est chargé, plus le hurlement est puissant"}, --  Larynx
	[612] = {"612", "Âme Égarée", "Suit Isaac de près et meurt si elle subit un dégât#Si elle est encore vivante en entrant dans un nouvel étage, peut donner :#{{SoulHeart}} 3 cœurs d'âme#{{EternalHeart}} 2 cœurs éternels#{{AngelRoom}} Un objet angélique#{{TreasureRoom}} Un objet de Salle du Trésor"}, --  Lost Soul
	[613] = {"613", "Salière", "<Cet objet n'existe pas>"},
	[614] = {"614", "Hémoglobombes", "{{Heart}} +1 Réceptacle de cœur#Soigne 5 cœurs rouges#Les bombes d'Isaac répandent une flaque de sang corrosif en explosant#Si Isaac n'a pas de bombes, il peut sacrifier un demi-cœur pour en placer une"}, --  Blood Bombs
	[615] = {"615", "P'tit Prout", "Suit Isaac#Pète et repousse un ennemi ou projectile ennemi sur le point de toucher Isaac#Pète parfois s'il subir un dégât#Après avoir pété, reste inactif jusqu'à ce qu'Isaac entre en contact avec lui"}, --  Lil Dumpy
	[616] = {"616", "Piment Oiseau", "8% de chances de tirer une flamme orange#Les flammes bloquent les projectiles ennemis et infligent des dégâts#Les flammes disparaissent après 10 secondes, ou après avoir infligé des dégâts ou bloqué des tirs 4 fois#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à 10 Chance)"}, --  Bird's Eye
	[617] = {"617", "Magnétite", "17% de chances de tirer une larme magnétisante#Les ennemis magnétisés attirent les ressources, projectiles et ennemis à proximité#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 5 Chance)"}, --  Lodestone
	[618] = {"618", "Tomate Pourrie", "17% de chances de tirer une larme qui marque les ennemis#Les ennemis marqués sont pris pour cible par les autres ennemis#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance"}, --  Rotten Tomato
	[619] = {"619", "Droit d'Aînesse", "A un effet différent pour chaque personnage"}, --  Birthright
	[620] = {"620", "", "<Cet objet n'existe pas>"},
	[621] = {"621", "Potage de Lentilles", "↑ Dégâts {{ColorLime}}+21.6#Soin complet#Le bonus de dégâts de cet objet diminue progressivement sur une période de 3 minutes jusqu'à arriver à zéro#Tuer des ennemis ralentit la diminution"}, --  Red Stew
	[622] = {"622", "Genèse", "{{Warning}} USAGE UNIQUE#Retire tous les objets et ressources d'Isaac#Téléporte Isaac dans une chambre avec des ressources, des coffres et une trappe#Permet à Isaac de choisir entre 3 objets pour remplacer chaque objet perdu"}, --  Genesis
	[623] = {"623", "Clé Aiguisée", "{{Key}} +5 Clés#Permet à Isaac de jeter une de ses clés pour infliger des dégâts, détruire des obstacles ou ouvrir des serrures#Les ennemis tués par une clé peuvent lâcher le contenu d'un coffre"}, --  Sharp Key
	[624] = {"624", "Paquet d'Extension", "Fait apparaître 5 cartes"}, --  Booster Pack
	[625] = {"625", "Méga Champi", "↑ Dégâts augmentés#↑ Portée augmentée#Rend Isaac géant et invulnérable#Permet d'écraser les ennemis et obstacles#{{Blank}}#{{Timer}} Les effets durent 30 secondes et persistent entre les salles"}, --  Mega Mush
	[626] = {"626", "1er Morceau de Couteau", "La première partie d'un couteau"}, --  Knife Piece 1
	[627] = {"627", "2è Morceau de Couteau", "Combiné avec le {{ColorYellow}}Premier Morceau{{ColorWhite}} {{Collectible627}}, forme un couteau#Le couteau inflige des dégâts et peut ouvrir une porte faite de chair"}, --  Knife Piece 2
	[628] = {"628", "Acte de Décès", "{{Warning}} USAGE UNIQUE#Téléporte Isaac dans un étage contenant tous les objets du jeu#Après avoir choisi un objet, Isaac est renvoyé dans la salle où il a utilisé l'Acte de Décès"}, --  Death Certificate
	[629] = {"629", "Robomouche", "Suit Isaac et tire des larmes sur les projectiles ennemis pour les détruire"}, --  Bot Fly
	[630] = {"630", "", "<Cet objet n'existe pas>"},
	[631] = {"631", "Couteau de Boucher", "Découpe tous les ennemis et boss de la salle en 2 versions plus petites avec moins de vie"}, --  Meat Cleaver
	[632] = {"632", "Pendentif Maléfique", "↑ Chance {{ColorLime}}+2.0#{{HalfSoulHeart}} +1 demi-cœur d'âme à chaque étage#Rend Isaac invulnérable au feu, à la confusion, au poison et au gaz toxique"}, --  Evil Charm
	[633] = {"633", "Dogma", "↑ Dégâts {{ColorLime}}+2.0#↑ Vitesse {{ColorLime}}+0.1#Permet à Isaac de voler#Entoure Isaac d'un bouclier sacré {{HolyMantleSmall}} qui nullifie le prochain dégât subi#Si Isaac a moins de 6 cœurs, le soigne avec les cœurs nécessaires"}, --  Dogma
	[634] = {"634", "Purgatoire", "Crée une fissure dans le sol des salles hostiles#Marcher sur une fissure fait apparaître un fantôme#Les fantômes qui sortent des fissures pourchassent les ennemis et explosent"}, --  Purgatory
	[635] = {"635", "Marionnette", "Fait apparaître un familier déplaçable avec les boutons de tir#Utiliser l'objet inverse la position d'Isaac avec celle du familier#Se téléporter peut détruire ou infliger des dégâts à ce qui se trouve au point d'arrivée"}, --  Stitches
	[636] = {"636", "Touche R", "{{Warning}} USAGE UNIQUE#Ramène Isaac au premier étage#Conserve les stats, ressources et objets obtenus durant la partie#{{Warning}} Le chronomètre n'est pas remis à zéro"}, --  R Key
	[637] = {"637", "Gouttes K.O.", "10% de chances de tirer un poing#Les poings repoussent fortement les ennemis et les étourdissent#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance"}, --  Knockout Drops
	[638] = {"638", "Gomme", "Lance une gomme qui efface instantanément un ennemi#Les ennemis effacés n'apparaissent plus pour le reste de la partie#Utilisable une fois par étage"}, --  Eraser
	[639] = {"639", "Cœur Moisi", "{{RottenHeart}} Ajoute un cœur moisi aux PV d'Isaac"}, --  Yuck Heart
	[640] = {"640", "Urne des Âmes", "Utiliser l'objet ouvre et ferme l'urne#L'urne ouverte remplace les larmes d'Isaac par des flammes bleues#Tirer quand l'urne est ouverte fait baisser les charges de l'urne#Tuer un ennemi ajoute une charge à l'urne"}, --  Urn of Souls
	[641] = {"641", "Haqeldemah", "Pend une traînée de larmes derrière Isaac dans les salles hostiles"}, --  Akeldama
	[642] = {"642", "Peau de Chagrin", "Remplace 1 réceptacle de cœur ou 2 cœurs d'âme par un cœur brisé#Fait apparaître un objet provenant de la banque d'objets de la salle#{{Warning}} Si Isaac ne garde pas l'objet après l'avoir utilisé, il a une chance d'apparaître à la place des prochains objets de la partie#{{Warning}} Ne peut être utilisé qu'une fois avec {{ColorLightOrange}}L'Égaré"}, --  Magic Skin
	[643] = {"643", "Révélation", "{{SoulHeart}} +2 cœurs d'âme#Permet à Isaac de voler#Tirer pendant 2.5 secondes charge un rayon de lumière"}, --  Revelation
	[644] = {"644", "Prix de Consolation", "↑ Augmente la stat d'Isaac la plus faible#Fait tomber 3 pièces, 1 bombe ou 1 clé en fonction de ce qui manque à Isaac"}, --  Consolation Prize
	[645] = {"645", "P'tit Tératome", "Orbite autour d'Isaac et bloque les projectiles#Après avoir reçu 3 coups, se sépare en parties plus petites#Les versions les plus petites se transforment en araignées bleues quand elles meurent#Réapparaît 5 secondes après sa disparition complète"}, --  Tinytoma
	[646] = {"646", "Bombes Sulfureuses", "{{Bomb}} +5 Bombes#Les explosions des bombes créent un laser de sang dans les 4 directions cardinales"}, --  Brimstone Bombs
	[647] = {"647", "4.5 Volts", "Terminer une salle ne charge plus l'objet activable#Infliger des dégâts aux ennemis charge progressivement l'objet"}, --  4.5 Volt
	[648] = {"648", "Broyeur de Pilules", "<Cet objet n'existe pas>"},
	[649] = {"649", "P'tite Prunelle", "Se propulse en diagonale en tirant des larmes derrière elle"}, --  Fruity Plum
	[650] = {"650", "Flute Prunelle", "Invoque une {{ColorCyan}}Prunelle{{ColorWhite}} amicale dans la salle pour 10 secondes"}, --  Plum Flute
	[651] = {"651", "Étoile de Bethléem", "Se déplace lentement vers la salle de boss {{BossRoom}}#{{Blank}}#{{Blank}} Quand Isaac se tient à l'intérieur de l'aura :#↑ Dégâts {{ColorLime}}x1.8#↑ Débit {{ColorLime}}x2.5#Larmes autoguidées#Chance de nullifier les dégâts subis"}, --  Star of Bethlehem
	[652] = {"652", "Bébé Glaçon", "Glisse quand il est poussé par Isaac#Ralentit les ennemis et leur inflige des dégâts de contact#Gèle les ennemis qu'il tue#Entrer en contact avec un ennemi gelé le fait glisser et exploser en 6 fragments de glace"}, --  Cube Baby
	[653] = {"653", "Vade Retro", "Quand Isaac tient cet objet, les ennemis tués invoquent de petits fantômes rouges#Utiliser l'objet fait exploser les fantômes"}, --  Vade Retro
	[654] = {"654", "Doctorat Falsifié", "{{BlackHeart}} +1 cœur noir#Identifie toutes les pilules#Convertit les pilules positives en pilules négatives#↑ Les pilules qui diminuent les stats augmentent les dégâts#{{BlackHeart}} Les autres pilules font apparaître un cœur noir une fois avalées"}, --  False PHD
	[655] = {"655", "Toupie", "Orbite autour d'Isaac, bloque les projectiles ennemis et inflige des dégâts de contact#Maintenir enfoncé le bouton d'utilisation donne {{ColorLime}}vitesse +0.5{{ColorWhite}} et augmente fortement la vitesse de rotation des familiers"}, --  Spin to Win
	[656] = {"656", "Damoclès", "<Cet objet ne peut pas être obtenu>"}, -- Damocles
	[657] = {"657", "Vascularite", "Les ennemis tués éclatent en larmes qui héritent des effets des larmes d'Isaac"}, --  Vasculitis
	[658] = {"658", "Cellule Géante", "Subir des dégâts fait apparaître un Micro-Isaac#Le Micro-Isaac pourchasse et tire sur les ennemis à proximité"}, --  Giant Cell
	[659] = {"659", "Tropicamide", "↑ Portée {{ColorLime}}+1.5#↑ Augmente la taille des larmes"}, --  Tropicamide
	[660] = {"660", "Cartomancie", "Fait apparaître deux vortex dans la première salle de chaque étage#{{Blank}}#Entrer dans un vortex téléporte Isaac :#{{Blank}} {{ColorRed}}Rouge {{ColorWhite}}= Salle du Boss#{{Blank}} {{ColorYellow}}Jaune {{ColorWhite}}= Salle du Trésor#{{Blank}} {{ColorBlue}}Bleu {{ColorWhite}} = Salle Secrète#Les vortex disparaissent si Isaac quitte la salle"}, --  Card Reading
	[661] = {"661", "Quintuplés", "Transforme chaque ennemi tué en un familier immobile aléatoire#Plafonne à 5 familiers"}, --  Quints
	[662] = {"662", "Pacifisme", "<Cet objet n'existe pas>"}, -- Pacifist (Cut item)
	[663] = {"663", "Bec et Ongles", "Rend Isaac invulnérable pendant 1 seconde toutes les 6 secondes#Isaac clignote juste avant la transformation"}, --  Tooth and Nail
	[664] = {"664", "Goinfrerie", "{{Heart}} +1 Réceptacle de cœur#Les objets sur piédestal alternent avec un objet de nourriture#Choisir la nourriture donne {{ColorLime}}dégâts +3.6{{ColorWhite}} et augmente deux stats aléatoires#Les dégâts donnés par les objets diminuent progressivement jusqu'à revenir à leur valeur de base"}, --  Binge Eater
	[665] = {"665", "Œil de Guppy", "Révèle le contenu des coffres, sacs, feux et gardiens avant qu'ils ne soient ouverts ou détruits"}, --  Guppy's Eye
	[666] = {"666", "", "<Cet objet n'existe pas>"},
	[667] = {"667", "Gardien en Peluche", "Fait apparaître le {{ColorLightOrange}}Gardien{{ColorWhite}} en tant que personnage secondaire#À sa mort, fait apparaître des araignées bleues et disparait de l'inventaire"}, --  Strawman
	[668] = {"668", "Lettre de Papa", "Démarre l'Ascension"}, --  Dad's Note
	[669] = {"669", "Saucisson", "↑ Dégâts {{ColorLime}}+0.5#↑ Vitesse {{ColorLime}}+0.2#↑ Vitesse des tirs {{ColorLime}}+1.2#↑ Portée {{ColorLime}}+0.16#↑ Chance {{ColorLime}}+1.0#{{AngelDevilChanceSmall}} Chance de Pacte avec le Diable ou d'Offrande des Anges {{ColorLime}}+6.9% #{{PlanetariumChanceSmall}} Chance de planétarium {{ColorLime}}+6.9%"}, --  Sausage
	[670] = {"670", "Plus d'Options ?", "Deux récompenses aparaissent après avoir terminé une salle#Prendre l'une des deux fait disparaître l'autre"}, --  Options?
	[671] = {"671", "Cœur Confit", "↑ Ramasser un cœur rouge augmente une stat aléatoire de manière permanente"}, --  Candy Heart
	[672] = {"672", "Une Livre de Chair", "Les Pactes avec le Diable coûtent de l'argent#Les objets de la boutique coûtent des PV#Les ressources de la boutique ne coûtent plus d'argent mais sont entourées de piques"}, --  A Pound of Flesh
	[673] = {"673", "Rédemption", "Si Isaac entre dans l'Antre du Diable {{DevilRoom}} et ne prend aucun objet :#{{SoulHeart}} +1 cœur d'âme#↑ Dégâts {{ColorLime}}+1.0"}, --  Redemption
	[674] = {"674", "Chaînes de l'Esprit", "Quand Isaac subit un dégât fatal, il se transforme en fantôme enchaîné à son cadavre et peut continuer à se battre avec un demi-cœur de vie#Isaac revient à la vie après 10 secondes#L'objet se recharge en ramassant un cœur d'âme {{SoulHeart}}"}, --  Spirit Shackles
	[675] = {"675", "Orbe Fêlé", "{{Blank}} Quand Isaac subit un dégât :#Révèle une salle aléatoire de l'étage#Déverouille les portes nécessitant des ressources#Peut ouvrir la porte de Méga Satan#Peut révéler l'emplacement de la salle Ultra Secrète {{UltraSecretRoom}}"}, --  Cracked Orb
	[676] = {"676", "Cœur Vide", "{{EmptyHeart}} +1 réceptacle de cœur vide si Isaac ne possède qu'un cœur rouge ou moins en entrant dans un nouvel étage"}, --  Empty Heart
	[677] = {"677", "Projection Astrale", "Quand Isaac subit un dégât, le temps s'arrête pendant 3 secondes#Durant cette période, Isaac devient un fantôme et se sépare de son corps#Sous cette forme, Isaac vole, tire des larmes spectrales et nullifie le prochain dégât subi"}, --  Astral Projection
	[678] = {"678", "Césarienne", "Les larmes d'Isaac sont remplacées par des fœtus qui pourchassent les ennemis et leur infligent des dégâts"}, --  C Section
	[679] = {"679", "P'tit Abaddon", "Charge l'effet de {{ColorYellow}}Gouffre du Néant{{ColorWhite}} {{Collectible399}} quand Isaac tire et le crache quand les boutons de tir sont relâchés"}, --  Lil Abaddon
	[680] = {"680", "Tourista", "Se charge quand Isaac tire#Quand la barre est chargée, relâcher les boutons de tir fait déféquer Isaac en une courte ligne droite derrière lui"}, --  Montezuma's Revenge
	[681] = {"681", "P'tit Vortex", "S'élance dans la direction des tirs d'Isaac#Inflige des dégâts de contact et consomme les ressources sur son chemin#Chaque ressource absorbée augmente sa taille, ses dégâts et fait apparaître une mouche bleue#Toutes les 4 ressources consommées, fait apparaître un vortex vers une salle inexplorée"}, --  Lil Portal
	[682] = {"682", "Ver de Nerf", "Un tentacule sort parfois du sol pour immobiliser un ennemi et lui infliger des dégâts"}, --  Worm Friend
	[683] = {"683", "Épines Osseuses", "Les ennemis tués se transforment en os#Les os bloquent les projectiles et infligent des dégâts de contact"}, --  Bone Spurs
	[684] = {"684", "Âme Affamée", "Les ennemis tués se transforment parfois en fantômes#Les fantômes pourchassent les ennemis et infligent des dégâts de contact#Après 5 secondes, les fantômes explosent et infligent des dégâts de zone#Isaac est immunisé à leurs explosions"}, --  Hungry Soul
	[685] = {"685", "Bocal de Feux Follets", "Invoque un feu follet aléatoire qui tire, bloque les projectiles et inflige des dégâts de contact#Chaque utilisation invoque un feu follet de plus"}, --  Jar of Wisps
	[686] = {"686", "Pendentif des Âmes", "↑ Ramasser un cœur d'âme augmente une stat aléatoire de manière permanente#Fait apparaître un cœur d'âme"}, --  Soul Locket
	[687] = {"687", "Amis Imaginaires", "Invoque un monstre allié qui imite les mouvements et attaques d'Isaac"}, --  Friend Finder
	[688] = {"688", "Enfant Intérieur", "↑ +1 vie#À sa mort, Isaac ressuscite dans la même salle avec :#{{HalfHeart}} Un demi-cœur rouge#↑ Vitesse {{ColorLime}}+0.2#Taille diminuée"}, --  Inner Child
	[689] = {"689", "Couronne Corrompue", "Les objets sur piédestaux alternent rapidement entre 5 objets#4 de ces objets proviennent de la banque d'objets de la salle"}, --  Glitched Crown
	[690] = {"690", "Haricot Confit", "Les ennemis qui entrent en contact avec Isaac rebondissent sur son ventre#Repousser un ennemi contre un obstacle lui inflige des dégâts#50% de chances de nullifier un dégât subi au contact#50% de chances de renvoyer les projectiles ennemis"}, --  Belly Jelly
	[691] = {"691", "Orbe Sacré", "Empêche les objets de qualité {{Quality0}} et {{Quality1}} d'apparaître#33% de chances de rejouer un objet de qualité {{Quality2}} en objet de qualité égale ou supérieure"}, --  Sacred Orb
	[692] = {"692", "Pacte de Sang", "Fait apparaître des piques au centre de l'Antre du Diable {{DevilRoom}}#{{Blank}}#Subir des dégâts de ces piques peut donner comme récompense :#{{Coin}} 6 pièces {{ColorSilver}}(35%)#↑ Dégâts {{ColorLime}}+0.5{{ColorWhite}} {{ColorSilver}}(15%)#{{BlackHeart}} 2 cœurs noirs {{ColorSilver}}(5%)#{{RedTreasureRoom}} Objet diabolique {{ColorSilver}}(2%)#{{Blank}} Transformation en Léviathan {{ColorSilver}}(1%)"}, --  Sanguine Bond
	[693] = {"693", "La Nuée", "Entoure Isaac de 9 familiers mouches qui l'orbitent#Les mouches se transforment en mouches bleues quand elles bloquent un projectile#Une nouvelle mouche apparait à chaque salle terminée"}, --  The Swarm
	[694] = {"694", "Brise-Cœur", "Brise 3 des cœurs d'Isaac#↑ Dégâts {{ColorLime}}+0.25{{ColorWhite}} pour chaque cœur brisé#Chaque coup fatal laisse Isaac en vie mais lui brise deux cœurs#Isaac meurt s'il possède 12 cœurs brisés"}, --  Heartbreak
	[695] = {"695", "Souffle de Sang", "{{Blank}} Subir des dégâts donne :#↑ Débit augmenté#↑ Vitesse augmentée#{{Blank}}#Persiste pour la durée de l'étage"}, --  Bloody Gust
	[696] = {"696", "Salvation", "Entoure Isaac d'un halo#Les ennemis qui restent assez longtemps dans le halo sont frappés d'un rayon de lumière en forme de croix#Le halo grandit à chaque dégât subi dans l'étage"}, --  Salvation
	[697] = {"697", "Jumeau Évanescent", "Clone le boss de l'étage dans la Salle du Boss {{BossRoom}}#Tuer le clone donne un objet supplémentaire#Le boss et son clone sont plus lents et n'ont que 75% de leurs PV"}, --  Vanishing Twin
	[698] = {"698", "Jumeaux Malicieux", "Se placent de chaque côté d'Isaac et tirent des larmes identiques aux siennes#Infligent chacun 37.5% des dégâts d'Isaac"}, --  Twisted Pair
	[699] = {"699", "Rage d'Azazel", "Toutes les 4 salles terminées, Isaac clignote en rouge et vomit un énorme laser de sang lorsqu'il rentre dans une salle hostile"}, --  Azazel's Rage
	[700] = {"700", "Résonance", "Utiliser une carte, pilule ou rune active également l'effet des trois dernières cartes, pilules ou runes utilisées.#Ne fonctionne qu'avec les cartes, pilules et runes utilisées après avoir obtenu l'objet"}, --  Echo Chamber
	[701] = {"701", "Tombeau d'Isaac", "Fait apparaître un Coffre Antique {{DirtyChest}} dans la première salle de chaque étage#{{Blank}}#{{Blank}} Les coffres antiques peuvent contenir :#{{SoulHeart}} Cœurs d'âme#{{Trinket}} Babioles#{{Collectible}} Objet angélique#{{Collectible}} Objet de Papa ou Maman"}, --  Isaac's Tomb
	[702] = {"702", "Esprit Vengeur", "Subir un dégât invoque un feu follet invulnérable pour la durée de l'étage#Les feux follets infligent des dégâts de contact mais ne bloquent pas les projectiles"}, --  Vengeful Spirit
	[703] = {"703", "Ésaü Junior", "Transforme Isaac en Ésaü Junior et inversement#Ésaü Junior possède 3 cœurs noirs, {{ColorLime}}dégâts +2{{ColorWhite}} et peut voler#Les deux personnages ont des objets et PV séparés#{{Warning}} Si l'un des deux personnages meurt, Isaac meurt"}, --  Esau Jr.
	[704] = {"704", "Frénésie", "Enrage Isaac pendant 5 secondes :#↑ Vitesse {{ColorLime}}+0.4#↑ Dégâts {{ColorLime}}+3.0#↑ Débit augmenté#Remplace les larmes par une attaque au corps-à-corps"}, --  Berserk!
	[705] = {"705", "Arts Obscurs", "Donne {{ColorLime}}vitesse +1.0{{ColorWhite}} et permet à Isaac de traverser les ennemis et projectiles pendant 1 seconde#Les ennemis traversés subissent {{ColorLime}}dégâts x2 +3.5{{ColorWhite}}) à la fin de l'attaque"}, --  Dark Arts
	[706] = {"706", "Abysse", "Absorbe tous les objets de la salle et invoque un locuste abyssal pour chaque objet détruit#Les locustes abyssaux sont invulérables et attaquent dans la direction de tir d'Isaac#Certains objets donnent des caractéristiques spéciales aux locustes"}, --  Abyss
	[707] = {"707", "Souper", "{{Heart}} +1 Réceptacle de cœur#Soigne un cœur rouge"}, --  Supper
	[708] = {"708", "Agrafeuse", "↑ Dégâts {{ColorLime}}+1.0#Toutes les larmes d'Isaac sont tirées de l'œil droit"}, --  Stapler
	[709] = {"709", "Suplex !", "Permet à Isaac de foncer sur un ennemi et de l'écraser au sol#Inflige 50 dégâts et fait jaillir des vagues de rochers#L'attaque augmente en puissance et en portée selon la taille d'Isaac"}, --  Suplex!
	[710] = {"710", "Sac de Fabrication", "Permet à Isaac de ramasser jusqu'à 8 ressources#Maintenir le bouton d'activation quand le sac est plein fabrique un objet#La qualité de l'objet dépend de la qualité des ressources ramassées"}, --  Bag of Crafting
	[711] = {"711", "Inversion", "Affiche un deuxième objet transparent sur les piédestaux#Utiliser l'objet inverse l'objet solide et l'objet transparent#Les deux objets peuvent être obtenus en utilisant l'objet après avoir ramassé le premier objet#L'objet transparent disparait s'il est laissé seul sur un piédestal#Ne fonctionne qu'avec les objets déjà présents dans une salle"}, --  Flip
	[712] = {"712", "Lemegeton", "Invoque un feu follet violet en forme d'objet#L'effet de l'objet en orbite est appliqué à Isaac#L'effet est perdu si le feu follet est détruit#25% de chances d'invoquer un objet provenant de la banque d'objets de la salle"}, --  Lemegeton
	[713] = {"713", "Sumptorium", "Convertit un demi-cœur en un familier pâté#Le type de cœur sacrifié change les propriétés du pâté"}, --  Sumptorium
	[714] = {"714", "Rappel", "Ramène le corps du Délaissé à l'Âme"}, --  Recall
	[715] = {"715", "Garder", "Stocke une bombe caca à la première utilisation#Utilise la bombe stockée à la deuxième utilisation"}, --  Hold
	[716] = {"716", "Bourse du Gardien", "↑ Dépenser 3 pièces augmente la portée, la vitesse ou les dégâts d'Isaac#Fait apparaître 3 pièces et une clé"}, --  Keeper's Sack
	[717] = {"717", "Amies du Gardien", "Détruire un rocher fait apparaître 2 araignées bleues"}, --  Keeper's Kin
	[718] = {"718", "Corde du Gardien", "<Cet objet n'existe pas>"}, -- Keepers Rope (Cut item)
	[719] = {"719", "Boîte du Gardien", "Fait apparaître un objet ou une ressource à acheter"}, --  Keeper's Box
	[720] = {"720", "Bocal de N'Importe Quoi", "Fait apparaître selon nombre de charges de l'objet :#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}}#{{Blank}} 4:{{Key}} 5:{{Heart}} 6:{{Pill}}#{{Blank}} 7:{{Card}}8:{{SoulHeart}} 9:{{GoldenHeart}}#{{Blank}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} 12: Effet aléatoire"}, --  Everything Jar
	[721] = {"721", "TMTRAINER", "Corrompt tous les futurs objets de la partie#Les effets et icônes des objets corrompus sont complètement aléatoires"}, --  TMTRAINER
	[722] = {"722", "Anima Sola", "Enchaîne l'ennemi le plus proche pendant 5 secondes#Les ennemis enchaînés sont immobilisés et incapables de tirer"}, --  Anima Sola
	[723] = {"723", "Dé Compteur", "Retire 1 à l'ID interne de tous les objets de la salle"}, --  Spindown Dice
	[724] = {"724", "Hypercoagulation", "Subir des dégâts fait apparaître un demi-cœur rouge ou un cœur rouge complet#Ces cœurs disparaissent après 1.5 secondes s'ils ne sont pas ramassés"}, --  Hypercoagulation
	[725] = {"725", "Estomac Irrité", "Infliger suffisamment de dégâts fait clignoter Isaac en rouge#{{Blank}}#{{Blank}} Relâcher les boutons de tir quand Isaac clignote active l'effet d'un caca spécial"}, --  IBS
	[726] = {"726", "Hémoptysie", "Appuyer deux fois sur un bouton de tir fait éternuer Isaac#L'éternuement inflige {{ColorLime}}dégâts x1.5{{ColorWhite}}#Les ennemis marqués par l'éternuement sont plus vulnérables aux lasers de sang#1 seconde entre chaque utilisation"}, --  Hemoptysis
	[727] = {"727", "Bombes Fantômes", "{{Bomb}} +5 Bombes#Les bombes font apparaître des fantômes qui infligent des dégâts de contact et explosent au bout de 10 secondes"}, --  Ghost Bombs
	[728] = {"728", "Gello", "Fait apparaître un familier démoniaque attaché à Isaac#Le familier tire des larmes identiques à celles d'Isaac"}, --  Gello
	[729] = {"729", "Décapitation", "Lance la tête d'Isaac dans la direction où il tire#La tête inflige des dégâts de contact#Utiliser l'objet à nouveau ou toucher la tête permet de la réattacher"}, --  Decap Attack
	[730] = {"730", "Œil de Verre", "↑ Dégâts {{ColorLime}}+0.75#↑ Chance {{ColorLime}}+1"}, -- Glass Eye
	[731] = {"731", "Orgelet", "↑ Dégâts {{ColorLime}}+28%#↑ Portée {{ColorLime}}+7.0#↓ Vitesse des tirs {{ColorError}}-0.3#Ne s'applique qu'à l'œil droit"}, -- Stye
	[732] = {"732", "Bague de Maman", "↑ Dégâts {{ColorLime}}+1.0#Fait apparaître une rune ou une pierre d'âme"}, -- Mom's Ring

}
EID:updateDescriptionsViaTable(repCollectibles, EID.descriptions["fr"].collectibles)

EID.descriptions["fr"].birthright ={
	{"Isaac", "Isaac", "Les piédestaux alternent entre deux objets"},
	{"Magdalene", "Magdalene", "{{Heart}} +1 réceptacle de cœur#Permet d'avoir jusqu'à 18 PV"},
	{"Cain", "Caïn", "↑ Chance {{ColorLime}}+1#Une arcade {{ArcadeRoom}} apparaît dans tous les étages hors {{ColorTransform}}Coffre{{ColorWhite}} et {{ColorTransform}}Chambre Noire{{ColorWhite}}#Augmente fortement les chances de gagner aux jeux de hasard"},
	{"Judas", "Judas", "Donne Le {{ColorYellow}}Livre de Bélial{{ColorWhite}} {{Collectible34}} si Judas ne le possède pas#Le {{ColorYellow}}Livre de Bélial{{ColorWhite}} {{Collectible34}} devient un objet passif#L'augmentation de dégâts qu'il octroie grandit en fonction du nombre de charges de l'objet activable"},
	{"???", "???", "Double les cœurs d'âme donnés par les objets qui augmentent les PV"},
	{"Eve", "Ève", "L'effet de {{ColorYellow}}Grande Prostituée{{ColorWhite}} {{Collectible122}} est toujours actif, peu importe les PV d'Ève#L'{{ColorYellow}}Oiseau Mort{{ColorWhite}} {{Collectible117}} est toujours éveillé"},
	{"Samson", "Samson", "{{ColorYellow}}Soif de Sang{{ColorWhite}} {{Collectible157}} peut augmenter les dégâts 4 fois supplémentaires"},
	{"Azazel", "Azazel", "Le laser d'Azazel double en largeur, comme le {{ColorYellow}}Souffle du Diable{{ColorWhite}} {{Collectible441}}"},
	{"Lazarus", "Lazare", "Mourir et se réincarner en Lazare Ressuscité donne {{ColorLime}}dégâts +21.6#Le bonus de dégâts s'estompe progressivement"},
	{"Eden", "Éden", "Fait apparaître 3 objets provenant de banques aléatoires#Un seul d'entre eux peut être choisi"},
	{"The Lost", "L'Égaré", "Empêche les objets inutiles à l'Égaré d'apparaître#Inclut les objets qui soignent, augmentent les PV, permettent de voler, etc."},
	{"Lazarus Risen", "Lazare Ressuscité", "↑ Dégâts {{ColorLime}}+21.6#Le bonus de dégâts s'estompe progressivement"},
	{"Black Judas", "Judas des Ombres", "Donne Le {{ColorYellow}}Livre de Bélial{{ColorWhite}} {{Collectible34}} si Judas ne le possède pas#Le {{ColorYellow}}Livre de Bélial{{ColorWhite}} {{Collectible34}} devient un objet passif#L'augmentation de dégâts qu'il octroie grandit en fonction du nombre de charges de l'objet activable"},
	{"Lilith", "Lilith", "Les familiers se positionnent devant le visage de Lilith"},
	{"Keeper", "Le Gardien", "{{CoinHeart}} +1 réceptacle de pièce"},
	{"Apollyon", "Apollyon", "Utiliser {{ColorYellow}}Néant{{ColorWhite}} {{Collectible477}} peut régurgiter un objet absorbé#Régurgiter un objet ne retire pas les bonus de stats#Les objets régurgités peuvent être absorbés à nouveau"},
	{"The Forgotten", "Le Délaissé", "L'âme est libérée de ses chaînes et peut se déplacer librement"},
	{"The Forgotten Soul", "L'Âme du Délaissé", "L'âme est libérée de ses chaînes et peut se déplacer librement"},
	{"Bethany", "Béthanie", "Utiliser un objet activable avec des charges bleues ne consomme parfois pas de cœurs d'âme"},
	{"Jacob", "Jacob", "Le personnage qui ramasse le Droit d'Aînesse obtient une copie de trois des objets passifs de l'autre personnage"},
	{"Esau", "Ésaü", "Le personnage qui ramasse le Droit d'Aînesse obtient une copie de trois des objets passifs de l'autre personnage"},
	{"Tainted Isaac", "Isaac Impur", "↑ +4 emplacements d'objets"},
	{"Tainted Magdalene", "Magdalene Impure", "{{Heart}} +1 réceptacle de cœur permanent"},
	{"Tainted Cain", "Caïn Impur", "Double le nombre de ressources obtenues en touchant un objet"},
	{"Tainted Judas", "Judas Impur", "Augmente la portée à laquelle les Arts Obscurs immobilisent les ennemis et projectiles"},
	{"Tainted ???", "??? Impur", "{{PoopPickup}} +20 emplacements de cacas"},
	{"Tainted Eve", "Ève Impure", "Les pâtés tués font apparaître un cœur qui disparaît après 2 secondes"},
	{"Tainted Samson", "Samson Impur", "Le décompte de Frénésie augmente de 3 secondes au lieu d'une à chaque ennemi tué"},
	{"Tainted Azazel", "Azazel Impur", "Double la taille de l'éternuement"},
	{"Tainted Lazarus", "Lazare Impur", "L'autre version de Lazare se bat à ses côtés en tant que fantôme#La version fantôme est invulnérable#Donne le Droit d'Aînesse aux deux versions"},
	{"Tainted Eden", "Éden Impur", "Subir un dégât ne rejoue pas les objets passifs obtenus avant le Droit d'Aînesse"},
	{"Tainted Lost", "L'Égaré Impur", "↑ +1 Vie#Ressuscite l'Égaré à l'endroit de sa mort et inflige 200 dégâts aux ennemis à proximité"},
	{"Tainted Lilith", "Lilith Impure", "Les familiers suivent {{ColorYellow}}Gello{{ColorWhite}}{{Collectible728}} plutôt que Lilith#Le lancer de fœtus inflige {{ColorLime}}dégâts +3{{ColorWhite}} pour chaque familier possédé"},
	{"Tainted Keeper", "Le Gardien Impur", "Les pièces lâchées par les ennemis sont attirées par le Gardien#N'affecte les pièces qui ne sont pas lâchées par des ennemis"},
	{"Tainted Apollyon", "Apollyon Impur", "Les locustes ne reviennent pas vers Apollyon tant que les boutons de tir sont enfoncés"},
	{"Tainted Forgotten", "Le Délaissé Impur", "Donne {{ColorYellow}}Rappel{{ColorWhite}}{{Collectible714}}#Utiliser Rappel renvoie le Corps à l'Âme"},
	{"Tainted Bethany", "Béthanie Impure", "Invoque 4 feux follets violets de qualité {{Quality3}} et {{Quality4}}#Ces feux follets ont beaucoup plus de PV"},
	{"Tainted Jacob", "Jacob Impur", "Ésaü Obscur se scinde en deux#Les deux Ésaü attaquent toujours en même temps"},
	{"Dead Tainted Lazarus", "Lazare Impur Mort", "L'autre version de Lazare se bat à ses côtés en tant que fantôme#La version fantôme est invulnérable#Donne le Droit d'Aînesse aux deux versions"},
	{"Tainted Jacob 2", "Jacob Impur 2", "Ésaü Obscur se scinde en deux#Les deux Ésaü attaquent toujours en même temps"},
	{"Tainted Forgotten Soul", "L'Âme Impure", "Donne {{ColorYellow}}Rappel{{ColorWhite}} {{Collectible714}}#Utiliser Rappel renvoie le Corps à l'Âme"},
}

-- Buffs caused by Binge Eater
-- Note: "#" will be replaced with "#{{Collectible664}} " automatically, in order to add Binge eater icon infront of each buff-bulletpoint

EID.descriptions["fr"].bingeEaterBuffs = {
	[22] = "↑ Débit {{ColorLime}}+0.5 #↑ Portée {{ColorLime}}+1.5", -- Lunch
	[23] = "↑ Débit {{ColorLime}}+0.5#↑ Vitesse des tirs {{ColorLime}}+0.2", -- Dinner
	[24] = "↑ Dégâts {{ColorLime}}+1.0#↑ Vitesse {{ColorLime}}+0.2", -- Dessert
	[25] = "↑ Vitesse {{ColorLime}}+0.2#↑ Portée {{ColorLime}}+1.5", -- Breakfast
	[26] = "↑ Dégâts {{ColorLime}}+1.0#↑ Portée {{ColorLime}}+1.5", -- Rotten Meat
	[456] = "↑ Dégâts {{ColorLime}}+1.0#↑ Chance {{ColorLime}}+1.0", -- Midnight Snack
	[346] = "↑ Vitesse des tirs {{ColorLime}}+0.2#↑ Chance {{ColorLime}}+1.0", -- A Snack
	[707] = "↑ Débit {{ColorLime}}+0.5#↑ Chance {{ColorLime}}+1.0", -- Supper
}

EID.descriptions["fr"].bookOfBelialBuffs = {
	[40] = "Active également l'effet du {{ColorYellow}}Necronomicon{{ColorWhite}} {{Collectible35}}", -- Kamikaze!
	[126] = "Active également l'effet du {{ColorYellow}}Necronomicon{{ColorWhite}} {{Collectible35}}", -- Razor Blade
	[127] = "↑ Augmente les dégâts pour la durée de l'étage suivant", -- Forget me Now
	[133] = "↑ Dégâts augmentés à chaque utilisation", -- Guppy's Paw
	[135] = "↑ Dégâts augmentés pour la durée d'une salle", -- IV Bag
	[147] = "La pioche est plus résistante, plus rapide, repousse les ennemis plus loin, inflige des dégâts de feu et trouve plus de récompenses dans les obstacles", -- Notched Axe
	[186] = "Active également l'effet de la {{ColorYellow}}Lame de Rasoir{{ColorWhite}} {{Collectible126}}", -- Blood Rights
	[282] = "Laisse une traînée de flammes derrière Judas", -- How to Jump
	[290] = "Retire un cœur du Bocal, augmente les dégâts et laisse une flaque corrosive au sol", -- The Jar
	[295] = "A une chance d'activer l'effet de la {{ColorYellow}}Lame de Rasoir Dorée{{ColorWhite}} {{Collectible555}}", -- Magic Fingers
	[297] = "Invoque un familier démonique en plus des autres récompenses", -- Pandora's Box
	[323] = "Augmente les dégâts de l'éclat de larmes", -- Isaac's Tears
	[352] = "Active le Livre de Bélial quand le canon se brise - le bonus de dégâts persiste jusqu'à ce que le canon soit réparé", -- Glass Cannon
	[383] = "Augmente les dégâts des éclats de larmes", -- Tear Detonator
	[475] = "Réincarne Judas en Judas Obscur s'il a une vie suuplémentaire", -- Plan C
	[482] = "Remplace le dernier objet obtenu par {{ColorYellow}}Pentagramme{{ColorWhite}} {{Collectible51}}}", -- Clicker
	[487] = "Augmente le bonus de dégâts", -- Potato Peeler
	[536] = "↑ Dégâts {{ColorLime}}+10.8{{ColorWhite}} de manière temporaire pour chaque familier sacrifié", -- Sacrificial Altar
	[555] = "Inflige des dégâts à tous les ennemis de la salle et les transforme en or", -- Golden Razor
	[563] = "Les fantômes se déplacent en direction des ennemis", -- Vade Retro
	[577] = "↑ Dégâts augmentés", -- Damocles
	[582] = "Augmente les dégâts d'Isaac pour la durée de l'étage selon le nombre d'utilisations simultanées de l'objet", -- Wavy Cap
	[585] = "Change les récompenses en 2 cœurs noirs et 1 objet diabolique#Donne 3 cœurs noirs et 2 objets si un pacte avec le diable a été signé", -- Alabaster Box
	[622] = "Donne le {{ColorYellow}}Pentagramme{{ColorWhite}} {{Collectible51}}", -- Genesis
	[623] = "Active également l'effet de la Lame de Rasoir {{Collectible126}}", -- Sharp Key
	[635] = "Tire un trait des {{ColorYellow}}Arts Obscurs{{ColorWhite}} {{Collectible705}} entre les deux points de téléportation", -- Stitches
	[640] = "Crache un laser de sang au lieu des flammes#Inflige 50% de dégâts supplémentaires", -- Urn of Souls
	[642] = "↑ Dégâts augmentés", -- Magic Skin
	[653] = "Les fantômes invoqués se déplacent en direction des ennemis", -- Vade Retro
	[685] = "Invoque des feux follets diaboliques qui augmentent les chances de Pacte avec le Diable", -- Jar of Wisps
	[705] = "Chaque ennemi traversé augmente les dégâts d'Isaac", -- Dark Arts
	[710] = "Ramasser des cœurs rouges peut les transformer en cœurs noirs", -- Bag of Crafting
	[729] = "↑ Augmente fortement les dégâts et le débit d'Isaac quand sa tête est détachée", -- Decap Attack
}

-- Book of Virtues wisp types
EID.descriptions["fr"].bookOfVirtuesWisps = {
	[33] = "Les feux follets tirent des larmes autoguidées", -- The Bible
	[34] = "Les larmes des feux follets infligent le double de dégâts", -- The Book of Belial
	[35] = "Les feux follets ont 3.5% de chances de terrifier un ennemi touché#Les feux follets activent l'effet du Necronomicon quand ils sont détruits", -- The Necronomicon
	[36] = "Les feux follets ont 2.5% de chances de tirer une larme E-coli", -- The Poop
	[37] = "Les feux follets font apparaître des mini-bombes quand ils sont détruits", -- Mr. Boom
	[38] = "Les feux follets tirent des larmes rapides mais peu précises", -- Tammy's Head
	[39] = "Les feux follets ont 5% de chances de pétrifier un ennemi touché", -- Mom's Bra
	[40] = "Les feux follets tirent des larmes explosives#Les feux follets explosent quand ils sont détruits", -- Kamikaze!
	[41] = "Les feux follets ont 7.5% de chances de terrifier un ennemi touché", -- Mom's Pad
	[42] = "Les feux follets ont 7.5% de chances de tirer une larme Ipéca", -- Bob's Rotten Head
	[44] = "Les feux follets ont 10% de chances de téléporter un ennemi touché", -- Teleport!
	[45] = "Les ennemis tués par les feux follets ont 20% de chances de lâcher un cœur", -- Yum Heart
	[47] = "Les larmes infligent la moitié des dégâts#Utiliser l'objet fait tirer les feux follets en direction de la croix", -- Doctor's Remote
	[49] = "Les feux follets ne peuvent pas tirer de larmes#Utiliser l'objet fait cracher un laser aux feux follets", -- Shoop da Whoop!
	[56] = "Les feux follets tirent des larmes rapides à courte portée#Les feux follets laissent une traînée corrosive", -- Lemon Mishap
	[58] = "Les feux follets sont invulnérables aux projectiles", -- Book of Shadows
	[65] = "Les feux follets font apparaître une bombe amorcée quand ils sont détruits", -- Anarchist Cookbook
	[66] = "Les feux follets ralentissent les ennemis pendant 3 secondes quand ils sont détruits", -- The Hourglass
	[77] = "Les feux follets infligent des dégâts de contact plus élevés", -- My Little Unicorn
	[78] = "Les feux follets ne peuvent pas tirer de larmes#Les feux follets invoquent un P'tit Cavalier pour la durée d'une salle quand ils sont détruits", -- Book of Revelations
	[83] = "Les feux follets tirent des larmes répulsives", -- The Nail
	[84] = "Les feux follets n'ont aucun effet particulier", -- We Need to Go Deeper!
	[85] = "Les feux follets lâchent une carte quand ils sont détruits", -- Deck of Cards
	[86] = "Les feux follets tirent des dents", -- Monstro's Tooth
	[93] = "Les feux follets tirent des larmes anti-gravité#Les feux follets ont une chance de tirer une larme terrifiante", -- The Gamekid
	[97] = "Invoque un de ces feux follets : {{Collectible65}}{{Collectible42}}{{Collectible85}}{{Collectible102}}{{Collectible37}}{{Collectible177}}{{Collectible49}}{{Collectible45}}", -- The Book of Sin
	[102] = "Invoque un feu follet parmi 6 couleurs aux effets différents#Les feux follets ont une chance de tirer une larme empoisonnée, pétrifiante, étourdissante, brûlante ou explosive, ou d'invoquer une araignée hostile quand ils sont détruits#Les feux follets lâchent une pilule quand ils sont détruits", -- Mom's Bottle of Pills
	[105] = "Invoque un feu follet pour chaque objet rejoué", -- The D6
	[107] = "Les feux follets tirent des larmes transperçantes", -- The Pinking Shears
	[111] = "Les feux follets pètent quand ils sont détruits", -- The Bean
	[123] = "Les feux follets tirent des larmes aléatoires", -- Monster Manual
	[124] = "Invoque le feu follet correspondant à l'objet imité", -- Dead Sea Scrolls
	[126] = "Les feux follets sont très résistants", -- Razor Blade
	[127] = "Invoque un feu follet invulnérable pour la durée de l'étage", -- Forget Me Now
	[130] = "Les feux follets ne peuvent pas tirer#Les feux follets foncent dans la direction des tirs d'Isaac", -- A Pony
	[133] = "Invoque 3 feux follets très résistants", -- Guppy's Paw
	[135] = "Les feux follets n'ont aucun effet particulier", -- IV Bag
	[136] = "Les feux follets ont 7.5% de chances de tirer des larmes tomates#Les ennemis marqués sont pris pour cible par les autres ennemis", -- Best Friend
	[137] = "Invoque 1 feu follet par bombe explosée#Les larmes des feux follets peuvent être explosées à distance", -- Remote Detonator
	[145] = "Invoque des feux follets à la place de mouches#Les feux follets se transforment en mouches bleues quand ils sont détruits", -- Guppy's Head
	[146] = "Les feux follets tirent des larmes autoguidées", -- Prayer Card
	[147] = "Briser des obstacles peut invoquer 1 feu follet parmi 5 avec des effets différents", -- Notched Axe
	[158] = "Les feux follets tirent des larmes vers les ennemis à proximité", -- Crystal Ball
	[160] = "Frappe d'un rayon de lumière les ennemis qui rentrent en contact avec les feux follets", -- Crack the Sky
	[164] = "Invoque un feu follet pour la durée d'une salle", -- The Candle
	[166] = "Détruit toutes les ressources et a une chance d'invoquer un feu follet pour chacune", -- D20
	[171] = "Les feux follets ont 7.5% de chances de tirer des larmes ralentissantes", -- Spider Butt
	[175] = "Les feux follets ouvrent toutes les serrures avec lesquelles ils rentrent en contact", -- Dad's Key
	[177] = "Invoque un feu follet différent en fonction de la récompense gagnée", -- Portable Slot
	[181] = "Les feux follets ont 10% de chances tirer des larmes sacrées", -- White Pony
	[186] = "Les feux follets sont très résistants", -- Blood Rights
	[192] = "Les feux follets tirent des larmes autoguidées", -- Telepathy for Dummies
	[263] = "Les ennemis tués par les feux follets ont 15% de chances de lâcher une rune#Les feux follets lâchent une rune quand ils sont détruits", -- Clear Rune
	[282] = "Invoque jusqu'à 6 feux follets immobiles", -- How to Jump
	[283] = "Rejoue tous les feux follets et en ajoute 1#Ne rejoue pas le Livre des Vertus", -- D100
	[284] = "Détruit tous les feux follets, et invoque un feu follet tous les 2 objets possédés#Ne rejoue pas le Livre des Vertus", -- D4
	[285] = "Les feux follets ont 10% de chances de rejouer un ennemi touché", -- D10
	[286] = "Les ennemis tués ont 15% de chances de lâcher une carte#Les feux follets lâchent une carte quand ils sont détruits", -- Blank Card
	[287] = "Les feux follets ouvrent toutes les portes, révèlent une salle inexplorée sur la carte et brisent les rochers marqués de la salle quand ils sont détruits,", -- Book of Secrets
	[288] = "Invoque des feux follets au lieu d'araignées#Se transforment en araignées bleues quand ils sont détruits", -- Box of Spiders
	[289] = "Les feux follets tirent des flammes rouges#Les feux follets disparaissent à la salle suivante", -- Red Candle
	[290] = "Crée un feu follet pour chaque cœur#Les feux follets ont une chance de lâcher un cœur quand ils sont détruits", -- The Jar
	[291] = "Invoque un feu follet pour chaque ennemi transformé", -- Flush!
	[292] = "{{ColorLime}}+10%{{ColorWhite}} de chance de Pacte avec le Diable {{DevilRoom}} ou d'Offrande des Anges {{AngelRoom}} pour chaque feu follet satanique ", -- Satanic Bible
	[293] = "Les feux follets tirent un laser dans les 4 directions cardinales quand ils sont détruits", -- Head of Krampus
	[294] = "Les feux follets ne peuvent pas tirer#Les feux follets activent l'effet du Haricot Blanc quand ils sont détruits#Les feux follets disparaissent à la salle suivante", -- Butter Bean
	[295] = "Les feux follets ont une chance de lâcher une pièce quand ils sont détruits", -- Magic Fingers
	[296] = "Les feux follets n'ont aucun effet particulier", -- Converter
	[297] = "Les feux follets n'ont aucun effet particulier", -- Pandora's Box
	[298] = "Les feux follets ne peuvent pas tirer#Les feux follets sont immunisés aux dégâts de contact#Les feux follets ne font pas de dégât de contact tant que la Corne Brisée n'est pas active", -- Unicorn Stump
	[323] = "Invoque 6 feux follets#Les feux follets disparaissent après 3 secondes", -- Isaac's Tears
	[324] = "Les feux follets tirent des larmes aux effets aléatoires", -- Undefined
	[325] = "Les feux follets tirent des gerbes de larmes en cloche", -- Scissors
	[326] = "Invoque un feu follet quand Isaac subit des dégâts", -- Breath of Life
	[338] = "Les feux follets tirent des larmes boomerang#Les feux follets disparaissent à la salle suivante", -- The Boomerang
	[347] = "Les feux follets tirent deux larmes#Duplique les autres feux follets", -- Diplopia
	[348] = "Les feux follets lâchent une pilule quand ils sont détruits", -- Placebo
	[349] = "Les feux follets ont 50% de chances de lâcher une pièce quand ils sont détruits", -- Wooden Nickel
	[351] = "Chaque feu follet de cet objet génère une vague de rochers à chaque utilisation#Pètent, pétrifient et empoisonnent les ennemis à proximité quand ils sont détruits", -- Mega Bean
	[352] = "Tous les feux follets de cet objet sont détruits si l'un est détruit", -- Glass Cannon
	[357] = "Duplique tous les feux follets pour la durée d'une salle", -- Box of Friends
	[382] = "Les monstres alliés se transforment en feux follets correspondants à leurs capacités", -- Friendly Ball
	[383] = "Les larmes des feux follets peuvent aussi être éclatées#Les feux follets éclatent en 6 larmes quand ils sont détruits", -- Tear Detonator
	[386] = "Les larmes des feux follets ont 5% de chances de rejouer un obstacle", -- D12
	[396] = "Les feux follets ne peuvent pas tirer#Un feu follet orbite autour de chaque trou", -- Ventricle Razor
	[406] = "Les feux follets ont des dégâts et un débit aléatoires", -- D8
	[419] = "Un ennemi touché par la larme de ces feux follets a 20% de chances d'être téléporté", -- Teleport 2.0
	[421] = "Les feux follets pètent et envoûtent les ennemis quand ils sont détruits", -- Kidney Bean
	[422] = "Les feux follets ont 30% de chances de pétrifier un ennemi touché", -- Glowing Hour Glass
	[427] = "Les feux follets rebondissent contre les murs de la salle et explosent quand touchés par les larmes d'Isaac", -- Mine Crafter
	[434] = "Invoque des feux follets au lieu de mouches#1-5 mouches sont converties en 1 feu follet", -- Jar of Flies
	[437] = "Les feux follets activent l'effet du D7 au premier dégât subi", -- D7
	[439] = "Les feux follets n'ont aucun effet particulier", -- Mom's Box
	[441] = "Les feux follets crachent des lasers de sang#Utiliser l'objet fait tirer les feux follets en continu", -- Mega Blast
	[475] = "Invoque 8 feux follets qui infligent de gros dégâts", -- Plan C
	[476] = "Invoque un second feu follet si aucune ressource n'a été dupliquée", -- D1
	[477] = "Invoque les feux follets de tous les objets absorbés#N'invoque pas de feu follet pour lui-même", -- Void
	[478] = "Les feux follets mettent tous les ennemis et projectiles en pause pour 3 secondes quand ils sont détruits", -- Pause
	[479] = "Les feux follets peuvent faire apparaître une babiole quand ils sont détruits", -- Smelter
	[480] = "La vie du feu follet invoqué dépend du nombre de ressources converties", -- Compost
	[481] = "Les feux follets ont 5% de chances de transformer un ennemi touché en feu follet", -- Dataminer
	[482] = "Invoque un feu follet aléatoire", -- Clicker
	[483] = "Invoque 8 feux follets qui lâchent des bombes troll dorées quand ils sont détruits", -- Mama Mega!
	[484] = "Les feux follets ne peuvent pas tirer#Les feux follets disparaissent à la salle suivante#Les feux follets envoient une vague de rochers quand ils sont détruits", -- Wait What?
	[485] = "Tous les feux follets de cet objets sont détruits ou dupliqués quand l'un subit un dégât", -- Crooked Penny
	[486] = "Les feux follets ne peuvent pas tirer#Les feux follets peuvent nullifier un dégât infligé à Isaac", -- Dull Razor
	[487] = "Invoque des feux follets permanents#Les feux follets pourchassent les ennemis pour leur tirer dessus", -- Potato Peeler
	[488] = "Invoque le feu follet de l'objet imité {{ColorSilver}}(aléatoire si l'objet imité est passif)", -- Metronome
	[489] = "Invoque un feu follet normal en plus de celui du dé utilisé", -- D Infinity
	[490] = "Invoque un feu follet aléatoire#Le feu follet revient à chaque nouvelle salle s'il a été détruit", -- Eden's Soul
	[504] = "Les feux follets tirent sur les ennemis à proximité", -- Brown Nugget
	[507] = "Les ennemis tués peuvent se transformer en feu follet", -- Sharp Straw
	[510] = "Invoque un feu follet qui imite et ressemble à {{ColorCyan}}Monstro{{ColorWhite}}, au {{ColorCyan}}Duc des Mouches{{ColorWhite}}, à {{ColorCyan}}Loki{{ColorWhite}} ou au {{ColorCyan}}Revenu", -- Delirious
	[512] = "Les feux follets tirent des larmes magnétisées", -- Black Hole
	[515] = "Invoque un feu follet aléatoire#Le feu follet revient à chaque nouvelle salle s'il a été détruit", -- Mystery Gift
	[516] = "Les feux follets tirent dans 8 directions comme l'Arroseur Automatique", -- Sprinkler
	[521] = "Les feux follets tirent 3 larmes#Tous les feux follets de cet objet sont détruits si Isaac dépense de l'argent", -- Coupon
	[522] = "Les projectiles interceptés deviennent des feux follets", -- Telekinesis
	[523] = "Les feux follets ne sont invoqués qu'en déballant#Les feux follets lâchent une ressource quand ils sont détruits", -- Moving Box
	[527] = "Les feux follets ne peuvent pas tirer#Quand la salle est terminée, les feux follets ouvrent les serrures de la salle", -- Mr. ME!
	[536] = "Convertit tous les feux follets en demi-cœurs#Invoque un feu follet plus puissant", -- Sacrificial Altar
	[545] = "Les feux follets invoquent un Osselet amical quand ils sont détruits", -- Book of the Dead
	[550] = "10% de chances qu'un ennemi touché par un de ces feux follets soit écrasé par {{ColorCyan}}Maman{{ColorWhite}}", -- Broken Shovel
	[552] = "10% de chances qu'un ennemi touché par un de ces feux follets soit écrasé par {{ColorCyan}}Maman{{ColorWhite}}#Invoque un feu follet plus résistant qui ne peut pas tirer", -- Mom's Shovel
	[555] = "Les feux follets ont 15% de chances de transformer un ennemi touché en or", -- Golden Razor
	[556] = "Les feux follets crachent des lasers de sang à courte portée", -- Sulfur
	[557] = "↑ Chance {{ColorLime}}+0.2{{ColorWhite}} par feu follet de cet objet", -- Fortune Cookie
	[577] = "Les feux follets n'ont aucun effet particulier", -- Damocles
	[578] = "Les feux follets créent une trainée corrosive", -- Free Lemonade
	[580] = "Les feux follets peuvent ouvrir une porte rouge en entrant dans une nouvelle salle", -- Red Key
	[582] = "Impossible d'invoquer plus d'un feu follet de cet objet à la fois", -- Wavy Cap
	[584] = "Aucun effet", -- Book of Virtues
	[585] = "Ivoque 8 feux follets", -- Alabaster Box
	[604] = "3 feux follets sont invoqués là où atterrit l'obstacle#Les feux follets ont 10% de chances d'étourdir un ennemi touché", -- Mom's Bracelet
	[605] = "Les feux follets n'ont aucun effet particulier", -- The Scooper
	[609] = "Invoque un feu follet invulnérables#Utiliser l'objet a 50% de chances de détruire tous les feux follets", -- Eternal D6
	[611] = "Les dégâts et PV des feux follets dépendent de la charge de l'objet", -- Larynx
	[622] = "Invoque 3 feux follets#Détruit tous les autres feux follets", -- Genesis
	[623] = "Les feux follets n'ont aucun effet particulier", -- Sharp Key
	[631] = "Découpe les feux follets existants en deux#Les feux follets découpés ont moitié moins de vie et font moitié moins de dégâts#Découper un feu follet déjà découpé le détruit", -- Meat Cleaver
	[635] = "Invoque un feu follet immobile à l'endroit de la téléportation#Plafonne à 6 feux follets immobiles", -- Stitches
	[636] = "N'invoque pas de feu follet", -- R Key
	[638] = "Les feux follets effacent les ennemis au contact", -- Eraser
	[639] = "Les feux follets ne peuvent pas tirer#Les feux follets invoquent une mouche bleue à la fin d'une salle", -- Yuck Heart
	[640] = "Les feux follets peuvent tirer des flammes bleues", -- Urn of Souls
	[642] = "Les feux follets tirent des larmes empoisonnées", -- Magic Skin
	[650] = "Quand Prunelle rebondit, les feux follets de cet objet font de même", -- Plum Flute
	[653] = "N'invoque pas de feu follet#Les fantômes rouges peuvent tirer", -- Vade Retro
	[655] = "Invoque des feux follets éphémères quand l'effet est activé", -- Spin to Win
	[685] = "Double les feux follets invoqués et en ajoute 1", -- Jar of Wisps
	[687] = "Invoque un feu follet aléatoire", -- Friend Finder
	[703] = "Les feux follets n'ont aucun effet particulier", -- Esau Jr.
	[704] = "Invoque des feux follets très résistants#Les feux follets ne peuvent pas tirer", -- Berserk
	[705] = "Invoque un feu follet par ennemi tué#Les feux follets disparaissent à la salle suivante", -- Dark Arts
	[706] = "Invoque un feu follet très résistant#Les feux follets ne peuvent pas tirer", -- Abyss
	[709] = "3 feux follets sont invoqués à l'aterrissage#Les feux follets disparaissent à la salle suivante", -- Suplex
	[710] = "Invoque un feu follet aléatoire à chaque fabrication", -- Bag of Crafting
	[711] = "Les feux follets n'ont aucun effet particulier", -- Flip
	[712] = "Les feux follets objets peuvent tirer des larmes", -- Lemegeton
	[713] = "N'invoque pas de feu follet", -- Sumptorium
	[719] = "Un ennemi tué par les feux follets de cet objet a 20% de chances de lâcher une pièce", -- Keeper's Box
	[720] = "Invoque un feu follet aléatoire", -- Everything Jar
	[722] = "Un feu follet orbite autour de l'ennemi enchaîné et lui tire dessus#Le feu follet meurt quand l'ennemi meurt", -- Anima Sola
	[723] = "Convertit tous les feux follets en feux follets du même type", -- Spindown Dice
	[728] = "Tous les feux follets orbitent autour de Gello", -- Gello
	[729] = "Invoque un feu follet immobile", -- Decap Attack
	
}

-- Special Locust effects when Item was eaten by Abyss
EID.descriptions["fr"].abyssSynergies = {
	[2] = "Invoque trois locustes normaux", -- The Inner Eye
	[3] = "Invoque un locuste violet autoguidé", -- Spoon Bender
	[4] = "Invoque un gros locuste rouge qui inflige 3x les dégâts d'Isaac", -- Cricket's Head
	[6] = "Invoque un locuste jaune rapide à courte portée qui inflige des dégâts plus vite", -- Number One
	[7] = "Invoque un locuste rouge qui inflige 2x les dégâts d'Isaac", -- Blood of the Martyr
	[10] = "Invoque deux locustes gris qui infligent 50% de dégâts", -- Halo of Flies
	[13] = "Invoque un locuste vert qui empoisonne les ennemis", -- The Virus
	[103] = "Invoque un locuste vert qui empoisonne les ennemis", -- The Common Cold
	[118] = "Invoque un locuste gris plus gros qui n'a pas d'autre particularité", -- Brimstone
	[149] = "Invoque un locuste vert, gros et lent qui inflige 1.5x les dégâts d'Isaac et empoisonne les ennemis", -- Ipecac
	[153] = "Invoque 4 locustes normaux", -- Mutant Spider
	[257] = "Invoque un locuste orange qui enflamme les ennemis", -- Fire Mind
	[305] = "Invoque un locuste vert qui empoisonne les ennemis", -- Scorpio
	[374] = "Invoque un locuste bleu clair, invoque des rayons de lumière qui infligent 3x les dégâts d'Isaac", -- Holy Light
	[494] = "Invoque un locuste électrisé qui inflige 0.1 dégâts par tick", -- Jacob's Ladder
	[559] = "Invoque un locuste électrisé qui inflige 0.1 dégâts par tick ", -- 120 Volt
}
---------- Trinkets ----------

local repTrinkets={
	[1] = {"1", "Pièce Avalée", "Subir un dégât fait apparaître 1 pièce#Peut ne pas faire apparaître de pièce pour le {{ColorLightOrange}}Gardien"}, -- Swallowed Penny
	[7] = {"7", "Perle de Rosaire", "{{AngelChanceSmall}} Augmente les chances d'Offrandes des Anges {{AngelRoom}}#Augmente les chances de trouver {{ColorYellow}}La Bible{{ColorWhite}} dans une Bibliothèque {{Library}} ou une Boutique {{Shop}}"},
	[8] = {"8", "Cartouche", "Subir un dégât a 5% de chances d'activer l'effet du {{ColorYellow}}Jeu-Garçon{{Collectible93}}#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 38 Chance)"},
	[10] = {"10", "Ver Remuant", "↑ Débit {{ColorLime}}+0.4#La trajectoire des larmes d'Isaac forme des vagues#Larmes spectrales"}, -- Wiggle Worm
	[11] = {"11", "Ver Circulaire", "↑ Débit {{ColorLime}}+0.4#La trajectoire des larmes d'Isaac forme des cercles#Larmes spectrales"}, -- Ring Worm
	[13] = {"13", "Bon d'Achat", "Permet à Isaac d'obtenir un objet de la Boutique {{Shop}} gratuitement#La babiole disparaît une fois l'objet acheté"},
	[15] = {"15", "Caillou Porte-Bonheur", "Détruire un obstacle a 33% de chances de faire apparaître une pièce"},-- Lucky Rock
	[16] = {"16", "Ongle de Pied de Maman", "Le pied de {{ColorCyan}}Maman{{ColorWhite}} écrase un endroit au hasard dans la salle toutes les 20 secondes"},
	[20] = {"20", "Patte de Singe", "Descendre à un demi-cœur de vie totale fait apparaître un cœur noir#Après avoir fait apparaître 3 cœurs noirs, la babiole disparaît"},
	[21] = {"21", "Papier Mystérieux", "Donne parfois l'effet du {{ColorYellow}}Positif{{Collectible327}}{{ColorWhite}}, du {{ColorYellow}}Négatif{{Collectible328}}{{ColorWhite}}, d'{{ColorYellow}}Avis de Recherche{{Trinket23}}{{ColorWhite}} et de {{ColorYellow}}Page Déchirée{{Trinket48}}{{ColorWhite}}"},
	[23] = {"23", "Avis de Recherche", "À sa mort, Isaac ressuscite en {{ColorLightOrange}}l'Égaré#Mourir dans une Salle de Sacrifice {{SacrificeRoom}} en portant cette babiole débloque {{ColorLightOrange}}l'Égaré#La babiole disparaît à la mort d'Isaac"},
	[24] = {"24", "Pièce de Fesse", "Ramasser une pièce fait péter Isaac#Les pets repoussent et empoisonnent les ennemis"}, -- Butt Penny
	[26] = {"26", "Ver Droit", "↑ Portée {{ColorLime}}+1.5#↑ Débit {{ColorLime}}+0.4#La trajectoire des larmes d'Isaac forme des vagues carrées#Larmes spectrales"}, -- Hook Worm
	[32] = {"32", "Psilocybe Lancéolé", "Active parfois l'effet de#{{Collectible71}} {{ColorYellow}}Mini Champi{{ColorWhite}},#{{Collectible121}} {{ColorYellow}}Champignon Suspect{{ColorWhite}},#{{Collectible120}} {{ColorYellow}}Champignon Suspect{{ColorWhite}},#{{Collectible342}} {{ColorYellow}}Lactarius Indigo{{ColorWhite}},#{{Collectible398}} {{ColorYellow}}Chair des Dieux{{ColorWhite}}, ou#{{Collectible12}} {{ColorYellow}}Champignon Magique{{ColorWhite}}#{{Blank}} pour la durée d'une salle"}, -- Liberty Cap
	[33] = {"33", "Cordon Ombilical", "Invoque {{ColorYellow}}P'tit Steven{{ColorWhite}} {{Collectible100}} quand Isaac n'a qu'un demi-cœur rouge ou moins#Peut invoquer {{ColorYellow}}Gémeaux{{ColorWhite}} {{Collectible318}} quand Isaac subit un dégât"}, -- Umbilical Cord
	[39] = {"39", "Cancer", "↑ Débit {{ColorLime}}+1"},
	[41] = {"41", "Allumette", "Augmente la fréquence d'apparition des bombes#Permet de retirer la {{ColorYellow}}Tique{{ColorWhite}} {{Trinket53}}"},
	[48] = {"48", "Page Déchirée", "Subir un dégât a 5% de chances d'infliger 80 dégâts à tous les ennemis de la salle#Les cœurs noirs et les effets similaires au {{ColorYellow}}Necronomicon{{ColorWhite}} {{Collectible35}} infligent le double de dégâts#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à ~55 Chance)"}, -- A Missing Page
	[49] = {"49", "Pièce Sanglante", "Ramasser une pièce a 25% de chances de faire apparaître un demi-cœur rouge"}, -- Bloody Penny
	[50] = {"50", "Pièce Brûlée", "Ramasser une pièce a 25% de chances de faire apparaître une bombe"}, -- Burnt Penny
	[51] = {"51", "Pièce Plate", "Ramasser une pièce a 25% de chances de faire apparaître une clé"}, -- Flat Penny
	[53] = {"53", "Tique", "Retire 15% des PV des boss#Rentrer dans une salle de boss soigne Isaac d'un cœur rouge#{{Warning}} Ne peut pas être retiré sans {{ColorYellow}}Allumette{{ColorWhite}} {{Trinket41}}"},
	[56] = {"56", "Langue de Judas", "Réduit le prix de tous les Pactes avec le Diable à 1 réceptacle de cœur#N'affecte pas les objets payés en cœurs d'âme"},
	[59] = {"59", "Œil de Caïn", "25% de chances de donner l'effet de la {{ColorYellow}}Boussole{{ColorWhite}} {{Collectible21}} pour la durée d'un étage#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 3 Chance)"},
	[60] = {"60", "Serre de l'Oiseau d'Ève", "Tuer un ennemi a 5% de chances d'invoquer un {{ColorYellow}}Oiseau Mort{{ColorWhite}} {{Collectible117}} pour la durée d'une salle#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 8 Chance)"},
	[62] = {"62", "Caillou Étincelant", "Révèle les rochers marqués et l'entrée des Souterrains {{LadderRoom}}"},
	[63] = {"63", "Ciseaux à Bout Rond", "Désamorce les Bombes Troll et Maxi Troll et permet à Isaac de les ramasser"},
	[64] = {"64", "Ver Arc-en-Ciel", "Active l'effet d'une babiole de ver différente toutes les 3 secondes"},
	[65] = {"65", "Ver Solitaire", "↑ Portée {{ColorLime}}+3"}, -- Tape Worm
	[66] = {"66", "Ver Fainéant", "↓ Vitesse des tirs {{ColorError}}-0.5"}, -- Lazy Worm
	[67] = {"67", "Dé Fêlé", "Subir un dégât active l'effet du {{ColorYellow}}D6{{ColorWhite}} {{Collectible105}}, {{ColorYellow}}D8{{ColorWhite}} {{Collectible406}},{{ColorYellow}}D10{{ColorWhite}} {{Collectible285}}, {{ColorYellow}}D12{{ColorWhite}} {{Collectible386}} ou {{ColorYellow}}D20{{ColorWhite}} {{Collectible166}}"},
	[69] = {"69", "Positif Décoloré", "Camoufle parfois Isaac#Rend les ennemis confus#Peut être utilisé pour ouvrir la porte vers l'Ascension"}, -- Faded Polaroid
	[74] = {"74", "Détecteur de Métaux", "Augmente les probabilités de trouver l'entrée d'un Souterrain {{LadderRoom}}"},
	[75] = {"75", "404", "Active l'effet d'une babiole aléatoire à chaque salle"},
	[80] = {"80", "Plume Noire", "↑ Dégâts {{ColorLime}}+0.5{{ColorWhite}} pour chaque objet démoniaque possédé"}, -- Black Feather
	[82] = {"82", "Fer à Cheval Doré", "Les Salles du Trésor {{TreasureRoom}} ont {{ColorLime}}+15%{{ColorWhite}} de chances de proposer un choix entre deux objets"},
	[83] = {"83", "Clé du Magasin", "Permet d'ouvrir gratuitement les portes des Boutiques {{Shop}}"},
	[84] = {"84", "Côte d'Avarice", "Empêche {{ColorCyan}}Avarice{{ColorWhite}} et {{ColorCyan}}Super Avarice{{ColorWhite}} d'apparaître dans les Boutiques {{Shop}}"},
	[92] = {"92", "Couronne Fêlée", "↑ Les bonus de stats donnés par les objets d'Isaac sont augmentés de 20%"}, -- Cracked Crown
	[96] = {"96", "Ver d'Ouroboros", "↑ Débit {{ColorLime}}+0.4#↑ Portée {{ColorLime}}+1.5#La trajectoire des larmes d'Isaac forme une très grande spirale#Larmes spectrales#Chance de tirer une larme autoguidée#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 5 Chance)"},
	[98] = 	{"98", "Crotte de Nez", "Chance de tirer une crotte de nez#Les crottes de nez se collent aux ennemis et infligent les dégâts d'Isaac une fois par seconde#Les crottes de nez se décollent si l'ennemi meurt, s'enterre, saute hors de l'écran ou au bout de 10 secondes"},
	[101] = {"101", "Ampoule Éteinte", "{{Warning}} Si l'objet activable est entièrement déchargé :#↑ Dégâts {{ColorLime}}+1.5#↑ Vitesse {{ColorLime}}+0.5#↑ Portée {{ColorLime}}+1.5#↑ Débit {{ColorLime}}+0.5#↑ Vitesse des tirs {{ColorLime}}+0.3#↑ Chance {{ColorLime}}+2"},
	[102] = {"102", "Carte Scindée", "Génère une Salle Secrète {{SecretRoom}} supplémentaire à chaque étage#Ne peut pas rajouter de Salle Secrète {{SecretRoom}} à un étage déjà généré"},
	[104] = {"104", "Os de Poulet", "Subir un dégât a 2% de chance de détruire la babiole et faire apparaître un objet provenant de la banque d'objets de la salle"},
	[105] = {"105", "Sac de Friandises", "Subir un dégât a 2% de chance de détruire la babiole et faire apparaître {{ColorYellow}}Déjeuner{{ColorWhite}} {{Collectible22}}"},
	[107] = {"107", "Cœur de Corbeau", "Subir des dégâts retire les cœurs rouges en priorité"},
	[108] = {"108", "Noix", "Subir 1-9 explosions détruit la babiole et fait apparaître une bombe, une pièce, une clé et une babiole"},
	[110] = {"110", "Pièce d'Argent", "Des boutiques {{Shop}} apparaissent dans l'{{ColorTransform}}Utérus{{ColorWhite}} et le {{ColorTransform}}Cadavre"},
	[111] = {"111", "Couronne Sanglante", "Des Salles du Trésor {{TreasureRoom}} apparaissent dans l'{{ColorTransform}}Utérus{{ColorWhite}} et le {{ColorTransform}}Cadavre"}, -- Bloody Crown
	[112] = {"112", "Microtransactions", "Des machines de réapprovisionnement {{RestockMachine}} apparaîssent dans toutes les Salles du Trésor {{TreasureRoom}}"},
	[119] = {"119", "Cellule Souche", "Soigne la moitié des cœurs rouges d'Isaac au début de chaque étage#Soigne un demi-cœur rouge au minimum"}, -- Stem Cell
	[123] = {"123", "Plume Angélique", "Tuer {{ColorCyan}}Uriel{{ColorWhite}} ou {{ColorCyan}}Gabriel{{ColorWhite}} fait apparaître un objet angélique au lieu d'un {{ColorYellow}}Fragment de Clé {{Collectible238}}{{Collectible239}}"},
	[125] = {"125", "Rallonge Électrique", "Relie les familiers d'Isaac par des arcs électriques#S'il y a d'autres joueurs ou personnages, des arcs électriques les relient également"},
	[128] = {"128", "Os de Doigt", "{{BoneHeart}} Subir un dégât a 5% de chances d'ajouter un cœur d'os aux PV d'Isaac"}, -- Finger Bone
	[129] = {"129", "Boule de Mammouth", "10% de chances de tirer une dent#Les dents infligent 3x les dégâts d'Isaac#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 9 Chance)"}, --  Jawbreaker
	[130] = {"130", "Stylo Mâchouillé", "Chance de tirer des larmes ralentissantes"}, --  Chewed Pen
	[131] = {"131", "Pièce Bénie", "Ramasser une pièce a 17% de chances de faire apparaître un demi-cœur d'âme"}, --  Blessed Penny
	[132] = {"132", "Seringue Cassée", "25% de chances de gagner un effet de seringue aléatoire pour la durée d'une salle"}, --  Broken Syringe
	[133] = {"133", "Pétard", "Les bombes placées par Isaac explosent plus rapidement"}, --  Short Fuse
	[134] = {"134", "Haricot Géant", "Augmente la taille des pets d'Isaac"}, --  Gigante Bean
	[135] = {"135", "Briquet", "20% de chances d'enflammer des ennemis en entrant dans une salle"}, --  A Lighter
	[136] = {"136", "Cadenas Cassé", "Les portes, blocs verrouillés et coffres dorés peuvent être ouverts avec une explosion#Peut ouvrir la porte vers l'Ascension"}, --  Broken Padlock
	[137] = {"137", "Myosotis", "Fait apparaître 4 ressources laissées à l'étage précédent dans la première salle d'un nouvel étage"}, --  Myosotis
	[138] = {"138", "'M", "Utiliser un objet activable le rejoue"}, --  'M
	[139] = {"139", "Larmulette", "Augmente la probabilité de tirer les larmes affectées par la statistique de chance"}, --  Teardrop Charm
	[140] = {"140", "Pomme de Sodome", "Ramasser des cœurs rouges a 50% de chances de les convertir en araignées bleues#Fonctionne même si la vie d'Isaac est pleine#Cet effet peut empêcher Isaac de se soigner"}, --  Apple of Sodom
	[141] = {"141", "Berceuse Oubliée", "Double le débit des familiers d'Isaac"}, --  Forgotten Lullaby
	[142] = {"142", "Foi de Béthanie", "Entrer dans un nouvel étage invoque 4 feux follets du {{ColorYellow}}Livre des Vertus{{ColorWhite}} {{Collectible584}}"}, --  Beth's Faith
	[143] = {"143", "Condensateur", "Empêche les objets activables de se recharger#Chance de faire apparaître une micro pile en terminant une salle#{{Blank}}#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(33% à 5 Chance)"}, --  Old Capacitor
	[144] = {"144", "Parasite Cérébral", "Les larmes d'Isaac peuvent tourner à 90 degrés pour toucher un ennemi qui aurait été loupé"}, --  Brain Worm
	[145] = {"145", "Perfection", "↑ Chance {{ColorLime}}+10#{{Warning}} Subir un dégât détruit la babiole"}, --  Perfection
	[146] = {"146", "Couronne du Diable", "Les Salles du Trésor {{TreasureRoom}} contiennent des Pactes avec le Diable"}, --  Devil's Crown
	[147] = {"147", "Pièce Électrisée", "Ramasser une pièce a 17% de chances de recharger une barre de l'objet activable"}, --  Charged Penny
	[148] = {"148", "Collier d'Amitié", "Tous les familiers orbitent autour d'Isaac"}, --  Friendship Necklace
	[149] = {"149", "Bouton Rouge", "Utilise l'objet activable d'Isaac quand il est sur le point de subir un dégât"}, --  Panic Button
	[150] = {"150", "Clé Bleue", "Les portes nécessitant des ressources pour être ouvertes s'ouvrent ouvertes gratuitement#Isaac devra traverser une salle de l'{{ColorTransform}}Utérus Bleu{{ColorWhite}} pour atteindre la salle de l'autre côté de la porte"}, --  Blue Key
	[151] = {"151", "Lime Plate", "Rétracte la majorité des piques du jeu#Affecte les salles maudites {{CursedRoom}}, les coffres à pointes {{SpikedChest}}, les coffres piégés {{TrapChest}} et tous les obstacles à piques"}, --  Flat File
	[152] = {"152", "Lentille de Télescope", "{{PlanetariumChanceSmall}} {{ColorLime}}+24%{{ColorWhite}} de chance de Planétarium s'il n'a pas encore été trouvé#{{PlanetariumChanceSmall}} {{ColorLime}}+9%{{ColorWhite}} de chance de Planétarium s'il a déjà été trouvé#Les Planétariums peuvent apparaître dans l'{{ColorTransform}}Utérus"}, --  Telescope Lens
	[153] = {"153", "Mèche de Maman", "25% de chances de gagner l'effet d'un objet de Maman pour la durée d'une salle"}, --  Mom's Lock
	[154] = {"154", "Sac de Dés", "Entrer dans une nouvelle salle a 50% de chances de donner un dé à usage unique#Le dé disparait en quittant la salle#Le dé ne remplace pas la carte, pilule ou rune portée par Isaac"}, --  Dice Bag
	[155] = {"155", "Couronne Sacrée", "Fait apparaître une Salle du Trésor {{TreasureRoom}} dans la Cathédrale"}, --  Holy Crown
	[156] = {"156", "Bisou de Maman", "{{Heart}} +1 réceptacle de cœur#{{CoinHeart}} +1 Réceptacle de pièce pour le {{ColorLightOrange}}Gardien"}, --  Mother's Kiss
	[157] = {"157", "Carte Déchirée", "Tous les 15 tirs, tire une larme avec les effet d'{{ColorYellow}}Ipéca{{ColorWhite}} {{Collectible149}} et de {{ColorYellow}}Mon Reflet{{ColorWhite}} {{Collectible5}}"}, --  Torn Card
	[158] = {"158", "Poche Trouée", "Subir un dégât retire deux pièces, clés ou Isaac et les fait tomber au sol"}, --  Torn Pocket
	[159] = {"159", "Clé Dorée", "{{Key}} +1 Clé#Remplace tous les coffres par des coffres dorés {{GoldenChest}}#Ne peut pas remplacer les coffres Antiques {{DirtyChest}} et Géants {{MegaChest}}"}, --  Gilded Key
	[160] = {"160", "Bourse Trèfle", "Fait apparaître un  sachet {{GrabBag}} dans la première salle d'un étage"}, --  Lucky Sack
	[161] = {"161", "Couronne Impure", "Fait apparaître une Salle du Trésor {{TreasureRoom}} à Shéol"}, --  Wicked Crown
	[162] = {"162", "Corne d'Azazel", "Terminer une salle a 50% de chances de transformer Isaac en {{ColorLightOrange}}Azazel{{ColorWhite}} pour la durée d'une salle suivante"}, --  Azazel's Stump
	[163] = {"163", "Colombin", "Toutes les Crottes deviennent amicales#Invoque une Crotte amicale pour chaque salle terminée"}, --  Dingle Berry
	[164] = {"164", "Amorces", "Ajoute gratuitement une seconde bombe à chaque bombe posée"}, --  Ring Cap
	[165] = {"165", "Ah Non !", "À partir de l'{{ColorTransform}}Utérus{{ColorWhite}}, remplace les pièces et les clés par des bombes, des cœurs, des pilules, des cartes, des runes, des piles, des babioles ou des mouches"}, --  Nuh Uh!
	[166] = {"166", "Pâte à Modeler", "50% de chances de gagner l'effet d'un objet passif aléatoire pour la durée d'une salle"}, --  Modeling Clay
	[167] = {"167", "Os Poli", "Terminer une salle a 50% de chances d'invoquer un Osselet allié"}, --  Polished Bone
	[168] = {"168", "Cœur Creux", "{{EmptyBoneHeart}} +1 cœur d'os au début de chaque étage"}, --  Hollow Heart
	[169] = {"169", "Dessin d'Enfant", "Compte comme 1 objet envers la transformation en Guppy"}, --  Kid's Drawing
	[170] = {"170", "Clé de Cristal", "Terminer une salle a 33% de chances d'ouvrir une porte rouge"}, --  Crystal Key
	[171] = {"171", "Aubaine du Gardien", "Les Pactes avec le Diable ont 50% de chances de coûter de l'argent plutôt que des PV"}, --  Keeper's Bargain
	[172] = {"172", "Pièce Maudite", "Ramasser une pièce téléporte Isaac dans une pièce aléatoire"}, --  Cursed Penny
	[173] = {"173", "Ton Âme", "{{Warning}} USAGE UNIQUE{{Warning}}#Peut être échangée pour signer un pacte avec le diable sans perdre de réceptacles de cœur"}, --  Your Soul
	[174] = {"174", "Chiffre Magnétique", "{{DevilChance}} {{ColorLime}}+10%{{ColorWhite}} de chance de Pacte avec le Diable#Empêche Krampus d'apparaître dans l'Antre du Diable {{DevilRoom}}#L'Antre du Diable {{DevilRoom}} contient plus d'objets, de cœurs noirs et d'ennemis"}, --  Number Magnet
	[175] = {"175", "Étrange Clé", "Ouvre le passage vers {{ColorCyan}}Murmure{{ColorWhite}} même si la limite de temps est passée#Utiliser la {{ColorYellow}}Boîte de Pandore{{ColorWhite}} {{Collectible297}} fait apparaître 6 objets aléatoires"}, --  Strange Key
	[176] = {"176", "P'tit Pâté", "Invoque un pâté amical qui imite les mouvements et les larmes d'Isaac"}, --  Lil Clot
	[177] = {"177", "Tatouage Temporaire", "Triompher d'une Salle de Défi {{ChallengeRoom}} fait apparaître un coffre #Triompher d'une Salle de Défi Royale {{BossRushRoom}} fait apparaître un objet"}, --  Temporary Tattoo
	[178] = {"178", "Explosifs Avalés", "Subir un dégât a 50% de chances de faire exploser Isaac"}, --  Swallowed M80
	[179] = {"179", "Télécommande Radio", "Les familiers sont contrôlés par les boutons de mouvement et de tir#Maintenir le bouton {{ColorSilver}}[Lâcher]{{ColorWhite}} bloque les familiers sur place"}, --  RC Remote
	[180] = {"180", "Âme Retrouvée", "Suit les mouvements d'Isaac et tire des larmes spectrales#Imite les larmes d'Isaac#Meurt s'il subit un dégât#Revient à l'étage suivant"}, --  Found Soul
	[181] = {"181", "Pack d'Extension", "Utiliser un objet activable déclenche l'effet d'un autre objet activable aléatoire#Les effets supplémentaires proviennent d'objets à 1-2 charges"}, --  Expansion Pack
	[182] = {"182", "Essence de Béthanie", "Invoque 5 feux follets en entrant dans le Refuge des Anges {{AngelRoom}}#Faire un don à un mendiant {{Beggar}} a 25% de chances d'invoquer un feu follet"}, --  Beth's Essence
	[183] = {"183", "Les Jumeaux", "50% de chances de dupliquer un familier pour la durée d'une salle#Si Isaac n'a aucun familier, donne {{ColorYellow}}Frère Bobby{{ColorWhite}} {{Collectible8}} ou {{ColorYellow}}Sœurette Maggy{{ColorWhite}} {{Collectible67}}"}, --  The Twins
	[184] = {"184", "Actes d'Adoption", "Les boutiques {{Shop}} vendent des familiers pour 10 pièces"}, --  Adoption Papers
	[185] = {"185", "Patte de Grillon", "Tuer un ennemi a 17% de chances d'invoquer un locuste"}, --  Cricket Leg
	[186] = {"186", "Le Meilleur Ami d'Apollyon", "Invoque un locuste abyssal"}, --  Apollyon's Best Friend
	[187] = {"187", "Lunettes Cassées", "Les Salles du Trésor {{TreasureRoom}} ont 33% de chances de contenir un objet inconnu supplémentaire#50% de chances de révéler les objets inconnus du chemin alternatif"}, --  Broken Glasses
	[188] = {"188", "Glaçon", "20% de chances de pétrifier des ennemis en entrant dans une salle#Tuer un ennemi pétrifié le gèle"}, --  Ice Cube
	[189] = {"189", "Sigil de Baphomet", "Tuer un ennemi rend Isaac invulnérable pendant 1 seconde"}, --  Sigil of Baphomet
}
EID:updateDescriptionsViaTable(repTrinkets, EID.descriptions["fr"].trinkets)
EID.descriptions["fr"].goldenTrinket = "Effet doublé !"
EID.descriptions["fr"].tripledTrinket = "Effet triplé !"
EID.descriptions["fr"].quadrupledTrinket = "Effet quadruplé !"

-- Most trinkets that can be doubled or tripled just have the numbers in their description multiplied
-- A few trinkets have odd edge cases where their effect completely changes, or is different depending on if it's Mom's Box or Golden
EID.descriptions["fr"].goldenTrinketEffects = {
	-- Isaac's Fork (find+replace): find Phrase #1 in the localized description, change it to Phrase #2 or 3 for doubled/tripled
	[46] = { "un demi-cœur rouge", "un cœur rouge", "un cœur rouge et demi" },
	-- Tick (replace): A full replacement for Golden / Mom's Box / Both, as the Golden version can be removed and only one effect is tripled
	[53] = {
		"-{{ColorGold}}30{{ColorWhite}}% des PV des boss#Entrer dans une salle de Boss {{BossRoom}} soigne Isaac de {{ColorGold}}2{{ColorWhite}} cœurs rouges#{{ColorGold}}Peut être retirée !",
		"-{{ColorGold}}30{{ColorWhite}}% des PV des boss#Entrer dans une salle de Boss {{BossRoom}} soigne Isaac de {{ColorGold}}2{{ColorWhite}} cœurs rouges#{{Warning}} Ne peut pas être retirée#Ne peut être échangée qu'avec {{ColorYellow}}Allumette {{Trinket41}}",
		"-{{ColorGold}}30{{ColorWhite}}% des PV des boss#Entrer dans une salle de Boss {{BossRoom}} soigne Isaac de {{ColorGold}}3{{ColorWhite}} cœurs rouges#{{ColorGold}}Peut être retirée !",
	},
	-- Rainbow Worm (append): With Mom's Box, it gives 2 copies of the temp worm, and doubles 1 of those copies, for triple effect
	[64] = { "Les augemtations de stats du ver sont doublées", "Les augemtations de stats du ver sont triplées", "Les augemtations de stats du ver sont quadruplées", },
	-- Error (append): Same behavior as Rainbow Worm
	[75] = { "L'effet de la babiole est doublé si possible", "L'effet de la babiole est triplé si possible", "L'effet de la babiole est quadruplé si possible", },
	-- NO!
	[88] = { "Empêche les objets de qualité {{Quality0}} d'apparaître" },
	-- Gilded Key (Golden version only): it doesn't give a key. bug that will get fixed (maybe it'll give a Golden Key?)
	[159] = { "Remplace tous les coffres par des coffres dorés {{GoldenChest}}#Ne peut pas remplacer les coffres Antiques {{DirtyChest}} et Géants {{MegaChest}}" },
}


-- Card Buffs caused by Tarot Cloth
-- Note: "#" will be replaced with "#{{Collectible451}}" automatically, in order to add Tarot Cloth icon infront of each buff-bulletpoint

EID.descriptions["fr"].tarotClothBuffs = {
	[2] = "Active l'effet du {{ColorYellow}}Livre de Bélial{{ColorWhite}} {{Collectible34}} ", -- I - The Magician
	[3] = "Un second pied tombe peu de temps après le premier", -- II - The High Priestess
	[4] = "Double l'augmentation de stats", -- III - The Empress
	[5] = "Si le boss n'a pas encore été vaincu, donne un cœur d'âme", -- IV - The Emperor
	[6] = "Fait apparaître 3 cœurs d'âme", -- V - The Hierophant
	[7] = "Fait apparaître 3 cœurs rouges", -- VI - The Lovers
	[8] = "Double la durée de l'effet", -- VII - The Chariot
	[9] = "Double la quantité de ressources", -- VIII - Justice
	[10] = "Empêche Avarice d'apparaître dans la boutique#Si Avarice a déjà été vaincu dans la Boutique {{Shop}}, génère des objets à acheter", -- IX - The Hermit
	[11] = "Fait apparaître 2 machines à sous {{Slotmachine}}", -- X - Wheel of Fortune
	[12] = "Double l'effet, mais pas le multiplicateur de dégâts", -- XI - Strength
	[14] = "Inflige 80 dégâts à tous les ennemis de la salle", -- XIII - Death
	[15] = "Fait apparaître 2 machines de don du sang {{BloodDonationMachine}}", -- XIV - Temperance
	[16] = "Double l'augmentation des dégâts", -- XV - The Devil
	[17] = "Fait apparaître 12 bombes troll", -- XVI - The Tower
	[18] = "Si la Salle du Trésor n'a pas encore été visitée, propose un choix entre 2 objets", -- XVII - The Stars
	[21] = "Invoque 2 mendiants {{Beggar}}", -- XX - Judgement
	[56] = "Lâche les 6 objets ramassés en dernier par Isaac en plus de ses ressources", -- 0 - The Fool?
	[59] = "+3 réceptacles de cœur", -- III - The Empress?
	[61] = "Fait apparaître 6 cœurs d'os", -- V - The Hierophant?
	[62] = "+2 cœurs brisés#Fait apparaître 2 objets", -- VI - The Lovers?
	[64] = "Fait apparaître 2-7 coffres dorés {{GoldenChest}}", -- VIII - Justice?
	[65] = "Fait apparaître 1 pièce supplémentaire", -- IX - The Hermit?
	[66] = "Active un effet de dé supplémentaire", -- X - Wheel of Fortune?
	[68] = "Double la durée de l'effet", -- XII - The Hanged Man?
	[70] = "Force Isaac à manger 10 pilules", -- XIV - Temperance?
	[72] = "Fait apparaître 7 groupes de rochers", -- XVI - The Tower?
	[73] = "Retire 2 objets et en fait apparaître 4", -- XVII - The Stars?
	[76] = "Fait apparaître 2 machines de réapprovisionnement {{RestockMachine}}", -- XX - Judgement?
}
EID.descriptions["fr"].goldenTrinket = "Effet doublé !"

---------- Cards ----------

local repCards={
	[2] = {"2", "I - Le Bateleur", "↑ Portée {{ColorLime}}+3.0#Larmes téléguidées#{{Blank}}#Persiste pour la durée d'une salle"},
	[3] = {"3", "II - La Papesse", "Le pied de {{ColorCyan}}Maman{{ColorWhite}} écrase l'ennemi de la salle avec le plus de PV#Dans une salle sans ennemis, le pied écrase Isaac"},
	[4] = {"4", "III - L'Impératrice", "↑ Dégâts {{ColorLime}}+2.35#↑ Vitesse {{ColorLime}}+0.3#{{Blank}}#{{Timer}} Persiste pour la durée d'une salle"},
	[5] = {"5", "IV - L'Empereur", "Téléporte Isaac dans la salle du boss {{BossRoom}}"},
	[10] = {"10", "IX - L'Ermite", "Téléporte Isaac à la Boutique {{Shop}}"},
	[12] = {"12", "XI - La Force", "#{{Heart}} +1 Réceptacle de cœur#↑ Dégâts {{ColorLime}}x1.5 +0.3#↑ Vitesse {{ColorLime}}+0.3#↑ Portée {{ColorLime}}+1.5#{{Blank}}#{{Timer}} Persiste pour la durée d'une salle"}, -- XI - Strength
	[16] = {"16", "XV - Le Diable", "↑ Dégâts {{ColorLime}}+2{{ColorWhite}}#{{Blank}}#{{Timer}} Persiste pour la durée d'une salle"},
	[17] = {"17", "XVI - La Maison Dieu", "Invoque 6 bombes troll"},
	[18] = {"18", "XVII - L'Étoile", "Téléporte Isaac dans la Salle du Trésor {{TreasureRoom}}"},
	[19] = {"19", "XVIII - La Lune", "Téléporte Isaac dans la Salle Secrète {{SecretRoom}}"},
	[20] = {"20", "XIX - Le Soleil", "Inflige 100 dégâts à tous les ennemis de la salle#Révèle l'intégralité de l'étage sur la carte#Retire le Fléau d'Obscurité#Soin complet"},
	[27] = {"27", "As de Trèfle", "Transforme toutes les ressources, coffres et ennemis de la salle en bombes"},
	[28] = {"28", "As de Carreau", "Transforme toutes les ressources, coffres et ennemis de la salle en pièces"},
	[29] = {"29", "As de Pique", "Transforme toutes les ressources, coffres et ennemis de la salle en clés"},
	[30] = {"30", "As de Cœur", "Transforme toutes les ressources, coffres et ennemis de la salle en cœurs"},
	[31] = {"31", "Joker", "Téléporte Isaac dans l'Antre du Diable{{DevilRoom}} ou le Refuge des Anges{{AngelRoom}}"},
	[34] = {"34", "Ehwaz", "Ouvre une trappe vers l'étage suivant#Utiliser la rune sur un élément de décor au sol ouvre une trappe vers un Souterrain {{LadderRoom}}"},
	[35] = {"35", "Dagaz", "{{SoulHeart}} +1 cœur d'âme#Retire tous les fléaux"},
	[39] = {"39", "Algiz", "Isaac devient invlnlérable pendant 20 secondes"},
	[42] = {"42", "Carte Chaos", "Utiliser cette carte la lance dans la direction où se déplace Isaac#La carte tue instantanément les ennemis ou boss avec lequels elle rentre en contact#La carte ne peut pas tuer {{ColorCyan}}Delirium{{ColorWhite}} ou {{ColorCyan}}la Bête"}, -- Chaos Card
	[50] = {"50", "Appel d'Urgence", "2 mains de {{ColorCyan}}Maman{{ColorWhite}} attrappent un ennemi chacune, leur infligent 40 dégâts et les paralysent"},
	[51] = {"51", "Carte Sacrée", "Entoure Isaac d'un bouclier sacré {{HolyMantleSmall}} qui nullifie le prochain dégât subi"}, -- Holy card
	[52] = {"52", "Croissance Colossale", "↑ Dégâts {{ColorLime}}+7#↑ Portée {{ColorLime}}+3#↑ Taille augmentée#Permet à Isaac de détruire les rochers en marchant dessus#{{Blank}}#{{Timer}} Persiste pour la durée d'une salle"}, -- Huge Growth
	[54] = {"54", "Marche Temporelle", "↑ Vitesse {{ColorLime}}+0.5#↓ Vitesse des tirs {{ColorError}}-1#Ralentit les ennemis#{{Blank}}#{{Timer}} Persiste pour la durée d'une salle"},
	[55] = {"55", "Fragment de Rune", "Effet de rune aléatoire#L'effet est plus faible que celui de la rune imitée"},
	[56] = {"56", "0 - Le Mat ?", "Fait tomber tous les cœurs et ressources d'Isaac au sol#Fait apparaître {{ColorYellow}}Une Petite Pièce{{ColorWhite}} {{Collectible74}} ou {{ColorYellow}}Boum !{{ColorWhite}} {{Collectible19}} si Isaac a suffisamment de ressources"},
	[57] = {"57", "I - Le Bateleur ?", "Entoure Isaac d'une aura qui dévie les projectiles ennemis#{{Blank}}#{{Timer}} Persiste pendant 60 secondes"},
	[58] = {"58", "II - La Papesse ?", "Les pieds de {{ColorCyan}}Maman{{ColorWhite}} tentent d'écraser Isaac pendant 60 secondes"},
	[59] = {"59", "III - L'Impératrice ?", "{{Heart}} +2 Réceptacles de cœur#↑ Débit {{ColorLime}}+1.35#{{Blank}}#{{Timer}} Persiste pendant 60 secondes"},
	[60] = {"60", "IV - L'Empereur ?", "Téléporte Isaac dans une salle de Boss {{BossRoom}} qui est indépendante du reste de l'étage#Le boss provient de deux étages plus profond#Battre le boss fait apparaître un objet"},
	[61] = {"61", "V - Le Pape ?", "Fait apparaître 2 cœurs d'os"},
	[62] = {"62", "VI - L'Amoureux ?", "Fait apparaître un objet aléatoire#L'objet provient de la banque de la salle où la carte a été utilisée#Convertit 1 réceptacle de cœur ou 2 cœurs d'âme en un cœur brisé"},
	[63] = {"63", "VII - Le Chariot ?", "↑ Débit fortement augmenté#Transforme Isaac en une statue invulnérable#{{Blank}}#{{Timer}} Persiste pendant 10 secondes"},
	[64] = {"64", "VIII - La Justice ?", "Fait apparaître 2-4 coffres dorés {{GoldenChest}}"},
	[65] = {"65", "IX - L'Ermite ?", "Convertit les ressources et objets de la salle en pièces#Le nombre de pièces est égal à la valeur des objets dans la boutique"},
	[66] = {"66", "X - La Roue de Fortune ?", "Effet de salle de dé aléatoire"},
	[67] = {"67", "XI - La Force ?", "Les ennemis sont ralentis et subissent deux fois plus de dégâts pour la durée d'une salle"},
	[68] = {"68", "XII - Le Pendu ?", "↓ Vitesse {{ColorError}}-0.1#Triple tir#Tuer un ennemi fait apparaître une pièce#{{Blank}}#{{Timer}} Persiste pendant 60 secondes"},
	[69] = {"69", "XIII - La Mort ?", "Active l'effet du {{ColorYellow}}Livre des Morts{{ColorWhite}} {{Collectible545}}  :#{{Blank}} Invoque des entités squelettes en fonction du nombre d'ennemis tués dans la salle"},
	[70] = {"70", "XIV - Tempérance ?", "Active l'effet de 5 pilules aléatoires"},
	[71] = {"71", "XV - Le Diable ?", "Active l'effet de la {{ColorYellow}}Bible{{ColorWhite}} {{Collectible33}}#Donne {{ColorYellow}}Séraphin{{ColorWhite}} {{Collectible390}}#{{Blank}}#{{Timer}} Persiste pendant 30 secondes"},
	[72] = {"72", "XVI - La Maison Dieu ?", "Fait apparaître 6 groupes de rochers ou obstacles"},
	[73] = {"73", "XVII - L'Étoile ?", "Retire l'objet passif d'Isaac le plus ancien, hors objets de départ#Fait apparaître 2 objets aléatoires provenant de la banque d'objets de la salle où la carte a été utilisée"},
	[74] = {"74", "XVIII - La Lune ?", "Téléporte Isaac à la Salle Ultra Secrète {{UltraSecretRoom}}#Le chemin de retour sera constitué de salles rouges"},
	[75] = {"75", "XIX - Le Soleil ?", "↑ Dégâts {{ColorLime}}+1.5#Active les effets d'{{ColorYellow}}Esprit de la Nuit{{ColorWhite}} {{Collectible159}}#Convertit les réceptacles de cœurs rouges d'Isaac en cœurs d'os#Applique le Fléau d'Obscurité#{{Blank}}#{{Timer}} Persiste pour la durée de l'étage"},
	[76] = {"76", "XX - Le Jugement ?", "Fait apparaître une machine de réapprovisionnement {{RestockMachine}}"},
	[77] = {"77", "XXI - Le Monde ?", "Fait apparaître une trappe menant à une salle souterraine"},
	[78] = {"78", "Clé Brisée", "Active l'effet de la {{ColorYellow}}Clé Rouge{{ColorWhite}} {{Collectible580}}"},
	[79] = {"79", "Dame de Cœur", "Fait apparaître 1-20 cœurs rouges"},
	[80] = {"80", "Dernière Carte", "Copie l'effet de la pilule, carte, rune, objet activable ou pierre d'âme la plus récemment utilisée"},
	[81] = {"81", "Âme d'Isaac", "Tous les objets sur piédestal de la salle alternent avec un objet différent à intevalles d'une seconde#Seul un deux objets de la rotation peut être ramassé"},
	[82] = {"82", "Âme de Magdalene", "Pour la durée d'une salle, les ennemis tués lâchent des demi-cœurs rouges qui disparaissent après 2 secondes"},
	[83] = {"83", "Âme de Caïn", "Ouvre toutes les portes de la salle, y compris les portes des salles rouges {{Collectible580}}) si possible#Brise le miroir de {{ColorTransform}}Canalisations 2"},
	[84] = {"84", "Âme de Judas", "Paralyse les ennemis pendant 3 secondes#Transforme Isaac en une ombre qui peut traverser les ennemis#Après quelques secondes; inflige des dégâts à tous les ennemis traversés#Augmente temporairement la stat de dégâts pour chaque ennemi traversé"},
	[85] = {"85", "Âme de ???", "Provoque 8 pets empoisonnés, répand une flaque brunâtre et fait apparaître 7 Bombes Bronze#Marcher dans la flaque donne {{ColorLime}}débit +1.35{{ColorWhite}} et {{ColorLime}}dégâts +1"},
	[86] = {"86", "Âme d'Ève", "Invoque 14 oiseaux morts#Les oiseaux pourchassent et infligent des dégâts aux ennemis#Les oiseaux disparaissent quand toutes les cibles sont mortes ou quand Isaac quitte la salle"},
	[87] = {"87", "Âme de Samson", "Active l'effet de {{ColorYellow}}Frénésie{{ColorWhite}} {{Collectible704}}#↑ Vitesse {{ColorLime}}+0.4#↑ Dégâts {{ColorLime}}+3.0#↑ Débit augmenté#{{Blank}}#{{Timer}} Persiste pendant 10 secondes"},
	[88] = {"88", "Âme d'Azazel", "Active l'effet de {{ColorYellow}}Souffle du Diable{{ColorWhite}} {{Collectible441}}#{{Blank}}#{{Timer}} Persiste pendant 7.5 secondes"},
	[89] = {"89", "Âme de Lazare", "Isaac meurt et revient à la vie avec un demi-cœur#Subir un dégât fatal utilise automatiquement l'objet"},
	[90] = {"90", "Âme d'Éden", "Active les effets du {{ColorYellow}}D6{{ColorWhite}} {{Collectible105}} et du {{ColorYellow}}D20{{ColorWhite}} {{Collectible166}}#Les objets rejoués peuvent provenir de n'importe quelle banque d'objets"},
	[91] = {"91", "Âme de l'Égaré", "Isaac meurt et devient {{ColorLightOrange}}L'Égaré#{{Blank}}#{{Timer}} Persiste pour la durée d'une salle"},
	[92] = {"92", "Âme de Lilith", "Invoque un familier aléatoire de manière permanente"},
	[93] = {"93", "Âme du Gardien", "Fait apparaître 3-25 pièces"},
	[94] = {"94", "Âme d'Apollyon", "Invoque 15 locustes aléatoires"},
	[95] = {"95", "Âme du Délaissé", "Invoque Le {{ColorLightOrange}}Délaissé{{ColorWhite}} en tant que personnage secondaire pour la durée d'une salle"},
	[96] = {"96", "Âme de Béthanie", "Fait apparaître 6 feux follets aléatoires du {{ColorYellow}}Livre des Vertus{{ColorWhite}} {{Collectible584}}"},
	[97] = {"97", "Âme de Jacob & Ésaü", "Invoque {{ColorLightOrange}}Ésaü{{ColorWhite}} en tant que personnage secondaire pour la durée d'une salle"},
}
EID:updateDescriptionsViaTable(repCards, EID.descriptions["fr"].cards)

---------- Pills ----------

local repPills={
	[2] = {"1", "Coup dur", "Inflige un cœur de dégâts à Isaac#Ne diminue pas les chances de Pacte avec le Diable {{DevilRoom}} ou d'Offrande des Anges {{AngelRoom}}"}, --Bad Trip
	[4] = {"3", "Bombes à la clé", "Inverse les compteurs de bombes et de clés#Inverse également les bombes et clés dorées"},
	[10] = {"9", "Puberté", "Avaler 3 pilules {{ColorYellow}}Puberté{{ColorWhite}} ajoute 1 réceptacle de cœur aux PV d'Isaac"},
	[12] = {"11", "Portée diminuée", "↓ Portée {{ColorError}}-0.6"},
	[13] = {"12", "Portée augmentée", "↑ Portée {{ColorLime}}+0.45"},
	[24] = {"23", "Sésame, ouvre-toi !", "Ouvre les entrées des salles Secrètes {{SecretRoom}} et Super Secrètes {{SuperSecretRoom}} de l'étage"},
	[32] = {"31", "???", "Inflige le Fléau du Dédale pour la durée de l'étage"},
	[38] = {"37", "Vision Rétro", "Pixellise l'écran pendant 30 secondes"},
	[42] = {"41", "Somnolence", "Ralentit Isaac et les ennemis pour la durée d'une salle"},
	[43] = {"42", "Gonflé à bloc !!!", "Accélère Isaac et les ennemis pour la durée d'une salle#L'effet se réactive après 30 et 60 secondes"},
	[44] = {"43", "Gloups !", "Absorbe la babiole portée par Isaac et active son effet de manière permanente"},
	[48] = {"47", "Vitesse des tirs diminuée", "↓ Vitesse des tirs {{ColorError}}-0.15"},
	[49] = {"48", "Vitesse des tirs augmentée ", "↑ Vitesse des tirs {{ColorLime}}+0.15"},
	[50] = {"49", "Pilule expérimentale", "↑ Augmente une stat aléatoire#↓ Diminue une stat aléatoire#Aucune stat n'est baissée si Isaac possède {{ColorYellow}}Doctorat{{Collectible75}}{{ColorWhite}}, {{ColorYellow}}Pied Chanceux{{Collectible46}}{{ColorWhite}} ou {{ColorYellow}}Vierge{{Collectible303}}{{ColorWhite}}#Aucune stat n'est augmentée si Isaac possède {{ColorYellow}}Doctorat Falsifié{{Collectible654}}"},
	[9999] = {"", "Pilule dorée", "Effet de pilule aléatoire#A une chance de disparaître après chaque utilisation"}, -- golden Pill
}
EID:updateDescriptionsViaTable(repPills, EID.descriptions["fr"].pills)

EID.descriptions["fr"].horsepills={
	{"0", "", "Empoisonne tous les ennemis de la salle"},
	{"1", "", "Inflige 2 cœurs de dégâts à Isaac"},
	{"2", "", "{{SoulHeart}} +4 cœurs d'âme"},
	{"3", "", "Inverse les compteurs de bombes et de clés#Augmente le nombre de clés et de bombes de 50%#Inverse également les bombes et clés dorées"},
	{"4", "", "Fait apparaître des maxi troll bombes à la position du joueur"},
	{"5", "", "Soin complet#{{SoulHeart}} +3 cœurs d'âme"},
	{"6", "", "↓ -2 réceptacles de cœurs"},
	{"7", "", "{{EmptyHeart}} +2 réceptacles de cœurs"},
	{"8", "", "Aucun effet"},
	{"9", "", "Aucun effet"}, -- Puberty
	{"10", "", "Donne {{ColorYellow}}Mon Plus Gros Fan{{ColorWhite}} {{Collectible279}}#Pas de limite au nombre de familiers obtenables"},
	{"11", "", "↓ Portée {{ColorError}}-1.2"},
	{"12", "", "↑ Portée {{ColorLime}}+0.9"},
	{"13", "", "↓ Vitesse {{ColorError}}-0.24"},
	{"14", "", "↑ Vitesse {{ColorLime}}+0.3"},
	{"15", "", "↓ Débit {{ColorError}}-0.56"},
	{"16", "", "↑ Débit {{ColorLime}}+0.70"},
	{"17", "", "↓ Chance {{ColorError}}-2"},
	{"18", "", "↑ Chance {{ColorLime}}+2"},
	{"19", "", "Téléporte dans une salle aléatoire"},
	{"20", "", "Recharge l'objet activable#Fait apparaître des piles"},
	{"21", "", "Vide tous les réceptacles de cœurs d'Isaac sauf un#Fait apparaître 1-4 cœurs rouges"},
	{"22", "", "Paralysie pendant 4 secondes"},
	{"23", "", "Ouvre les entrées des salles Secrète {{SecretRoom}} et Super Secrète {{SuperSecretRoom}} de l'étage#Révèle l'entièreté de l'étage sur la carte"},
	{"24", "", "Change tous les ennemis de la salle en alliés"},
	{"25", "", "Retire la carte de l'étage"},
	{"26", "", "Répand une flaque sur le sol qui inflige des dégâts aux ennemis"},
	{"27", "", "Force Isaac à tirer en diagonale pendant 60 secondes"},
	{"28", "", "Réduit de moitié les dégâts subis pour la durée d'une salle"}, 
	{"29", "", "Double les dégâts subis pour la durée d'une salle"},
	{"30", "", "Laisse une traînée de cacas derrière Isaac pendant 4 secondes"},
	{"31", "", "Fléau du Dédale pour l'étage actuel"},
	{"32", "", "Augmente fortement la taille d'Isaac#N'affecte pas sa hitbox"},
	{"33", "", "Diminue fortement la taille d'Isaac#Sa hitbox diminue également"},
	{"34", "", "Fait apparaître 2 araignées bleues pour chaque caca présent dans la salle"},
	{"35", "", "Fait apparaître 2 araignées bleues pour chaque ennemi dans la salle#S'il n'y a aucun ennemi, fait apparaître 2-6 araignées bleues"},
	{"36", "", "Courte invincibilité#↑ #↑ Dégâts {{ColorLime}}+7.0#↑ Portée {{ColorLime}}+3.0# Augmente les stats pour la durée d'une salle"},
	{"37", "", "Pixellise l'écran pendant 90 secondes"},
	{"38", "", "Fait apparaître 6 mouches bleues"},
	{"39", "", "Répand une flaque glissante"},
	{"40", "", "Répand une flaque ralentissante"},
	{"41", "", "Ralentit tous les ennemis dans la salle"},
	{"42", "", "Accélère tous les ennemis dans la salle"},
	{"43", "", "Absorbe la babiole d'Isaac et active son effet de manière permanente"},
	{"44", "", "Tire une gerbe de larmes explosives"},
	{"45", "", "Rend Isaac invulnérable#Terrifie tous les ennemis de la salle#Soigne Isaac d'un demi-cœur tous les deux ennemis tués"},
	{"46", "", "Fait apparaître la dernière pilule utilisée en double-dose"},
	{"47", "", "↑ Vitesse des tirs {{ColorError}}-0.3"},
	{"48", "", "↑ Vitesse des tirs {{ColorLime}}+0.3"},
	{"49", "", "↑ Augmente une stat aléatoire deux fois#↓ Diminue une stat aléatoire deux fois#Aucune stat n'est baissée si Isaac possède {{ColorYellow}}Doctorat{{Collectible75}}{{ColorWhite}}, {{ColorYellow}}Pied Chanceux{{Collectible46}}{{ColorWhite}} ou {{ColorYellow}}Vierge{{Collectible303}}{{ColorWhite}}#Aucune stat n'est augmentée si Isaac possède {{ColorYellow}}Doctorat Falsifié{{Collectible654}}"},
	[9999] = {"", "", "Effet de double-dose aléatoire#A une chance de disparaître arpès chaque utilisation"}, -- golden Pill
}
---------- Glitched Item Descriptions ----------

EID.descriptions["fr"].GlitchedItemText = {
	-- This will be appended to words to pluralize them, make it "" to not pluralize
	pluralize = "",

	-- Item Config info
	AddBlackHearts = "{{BlackHeart}} {1} cœur(s) noir(s)",
	AddBombs = "{{Bomb}} {1} bombe(s)",
	AddCoins = "{{Coin}} {1} pièce(s)",
	AddHearts = "Heals {{Heart}} {1} cœur(s) rouge(s)",
	AddKeys = "{{Key}} {1} clé(s)",
	AddMaxHearts = "{{EmptyHeart}} {1} réceptacle(s) de cœur",
	AddSoulHearts = "{{SoulHeart}} {1} cœur(s) d'âme",

	-- Cache Flag names
	cacheFlagStart = "Peut influencer ",
	[0] = "les dégâts", "le débit", "la vitesse des tirs", "la portée", "la vitesse", "les effets des larmes d'Isaac", "la couleur des larmes d'Isaac", "le vol", "le type d'attaque d'Isaac", "les familiers d'Isaac", "la chance", "la taille d'Isaac", "la couleur d'Isaac", "le contenu des coffres", [16] = "toutes les stats",

	-- Attribute triggers
	chain = "Puis :{{CR}} ",
	active = "Utiliser l'objet :#",
	pickup_collected = "Quand Isaac ramasse une ressource :#",
	enemy_kill = "Parfois, tuer un ennemi :#",
	damage_taken = "Parfois, subir un dégât :#",
	entity_spawned = "Quand {T1} apparaît :#",
	tear_fire = "Pafois, tirer une larme :#",
	enemy_hit = "Parfois, toucher un ennemi avec une larme :#",
	room_clear = "Parfois, terminer une salle :#",

	-- Attribute effects
	area_damage = "Inflige {1} dégâts dans un rayon autour d'Isaac",
	add_temporary_effect = "Donne {{ColorYellow}}{1}{{ColorWhite}} pour la durée d'une salle",
	convert_entities = "Transforme les {1} dans la salle en {2}",
	use_active_item = "Utilise {{ColorYellow}}{1}",
	spawn_entity = "Fait apparaître un(e) {1}",
	fart = "Lâche un pet de taille {1}",

	-- Generic entity names not obtained from entities2.xml
	-- This could also be a place to localize entity names; this table is read from before EID.XMLEntityNames
	["4.-1"] = "bombes troll",
	["5.0"] = "ressources",
	["5.10"] = "cœurs",
	["5.20"] = "pièces",
	["5.30"] = "clés",
	["5.40"] = "bombes",
	["5.69"] = "sachets",
	["5.70"] = "pilules",
	["5.90"] = "piles",
	["5.300"] = "cartes",
	["9.-1"] = "projectile ennemis",
	["999.-1"] = "obstacles",
	["1000.0"] = "effets",

}

---------- Misc. Text ----------

EID.descriptions["fr"].poopSpells = {
	{"Caca", "Caca normal qui peut contenir des ressources"},
	{"Caca avec pépites", "Inovque jusqu'à 3 mouches bleues à la fois tant qu'il est intact"},
	{"Caca brûlant", "Inflige des dégâts de contact#Allume une flamme quand il est détruit"},
	{"Caca de pierre", "Inflige de gros dégâts quand il est jeté#Plus difficile à détruire"},
	{"Caca puant", "Émet des vapeurs toxiques qui empoisonnent les ennemis#{{Warning}} Les vapeurs toxiques explosent si elles entrent en contact avec du feu"},
	{"Caca noir", "Répand une flaque noire ralentissante#Détruire ce caca inflige 10 dégâts et étourdit tous les ennemis de la salle"},
	{"Caca sacré", "Est entouré d'une aura#Quand Isaac se tient dans l'aura:#{{Blank}}#↑ Dégâts {{ColorLime}}+20%#↑ Débit {{ColorLime}}+150%#Larmes autoguidées#Les dégâts subis ont une chance d'être nullifiés"},
	{"Flaque brune", "Répand une flaque brune derrière Isaac#La flaque inflige des dégâts de contact aux ennemis#Marcher sur la flaque donne {{ColorLime}}dégâts +1{{ColorWhite}} et {{ColorLime}}débit 1.5 à Isaac#Si la flaque touche un caca, elle prend sa couleur et ses propriétés"},
	{"Pet", "Repousse les ennemis et projectiles et crée un nuage toxique#{{Warning}} Le nuage toxique explose s'il entre en contact avec du feu"},
	{"Bombe", "Bombe normale jetable"},
	{"Diarrhée explosive", "Fait rapidement apparaître 5 bombes aux pieds d'Isaac"},
}

---------- Misc. Text ----------

EID.descriptions["fr"].VoidShopText = "Si absorbé directement :"
EID.descriptions["fr"].VoidOptionText = " sera absorbé à la place"
EID.descriptions["fr"].VoidNames[2] = "Débit {{ColorLime}}{1}"

EID.descriptions["fr"].spindownError = "L'objet disparaît"

EID.descriptions["fr"].CraftingBagContent = "Sac:"
EID.descriptions["fr"].CraftingRoomContent = "Salle:"
EID.descriptions["fr"].CraftingFloorContent = "Étage:"

EID.descriptions["fr"].CraftingBagQuality = "Qualité du sac:"
EID.descriptions["fr"].CraftingBestQuality = "Plus haute qualité:"

EID.descriptions["fr"].CraftingHideKey = "Masquer:"
EID.descriptions["fr"].CraftingPreviewKey = "Prévisualiser:"
EID.descriptions["fr"].CraftingPreviewBackup = "{{Warning}} Si cet objet n'a pas été débloqué, il deviendra"

EID.descriptions["fr"].CraftingResults = "(Défiler: maintenir {{CONFIG_BoC_Toggle}} + {{ButtonY}} {{ButtonA}},#Verrouiller: {{ButtonX}}, Rafraîchir: {{ButtonB}})"

EID.descriptions["fr"].BlankCardCharge = "Temps de charge avec {{ColorYellow}}Carte Blanche{{ColorWhite}} :" 
EID.descriptions["fr"].BlankCardQCard = "Téléporte Isaac dans la salle d'erreur#La {{ColorYellow}}Carte Blanche{{ColorWhite}} et la {{ColorYellow}}Carte ?{{ColorWhite}} seront détruites" 
EID.descriptions["fr"].ClearRuneCharge = "Temps de charge avec {{ColorYellow}}Rune de Cristal{{ColorWhite}} :" 
EID.descriptions["fr"].PlaceboCharge = "Temps de charge avec {{ColorYellow}}Placebo{{ColorWhite}} :" 
EID.descriptions["fr"].FlipItemToggleInfo = "(Maintenir {{ButtonSelect}} {{ColorSilver}}(Carte){{ColorWhite}} pour voir la description)"

EID.descriptions["fr"].FalsePHDHeart = "Fait apparaître un cœur noir {{BlackHeart}}"
EID.descriptions["fr"].FalsePHDDamage = "Dégâts {{ColorLime}}+0.6"
EID.descriptions["fr"].FalsePHDHorseDamage = "Dégâts {{ColorLime}}+1.2"

EID.descriptions["fr"].PandorasBoxStrangeKeyEffect = "Détruit l'{{ColorYellow}}Étrange Clé{{ColorWhite}} et fait apparaître 6 objets provenant de banques d'objets aléatoires#Ne déclenche pas l'effet normal de l'objet"

EID.descriptions["fr"].AchievementWarningTitle = "{{ColorYellow}}{{Warning}} ATTENTION !"
EID.descriptions["fr"].AchievementWarningText = "Les succès sont désactivés !#Pour pouvoir débloquer des succès, tu dois d'abord tuer {{ColorCyan}}Maman{{ColorSilver}} (Profondeurs II){{ColorWhite}}.#{{Blank}}#{{Blank}} Si tu as déjà battu {{ColorCyan}}Maman{{ColorWhite}}, ce message est un bug et peut être ignoré#{{Blank}} {{ColorSilver}}(Cette alerte peut être désactivée dans la config)"

EID.descriptions["fr"].OldGameVersionWarningText = "Ta version de Repentance n'est pas à jour !#Seule la dernière version du jeu est officiellement supportée.#{{Blank}} {{ColorSilver}}(Cette alerte peut être désactivée dans la config)"

EID.descriptions["fr"].ModdedRecipesWarningText = "Les objets de mod peuvent dérégler les recettes de fabrication !#Désactive l'affichage des recettes ou du Sac de Fabrication si tes recettes sont incorrectes#{{Blank}} {{ColorSilver}}(Cette alerte peut être désactivée dans la config)"

if EID.enableDebug then
    EID.descriptions["fr"].repCollectibles = repCollectibles
    EID.descriptions["fr"].repTrinkets = repTrinkets
    EID.descriptions["fr"].repCards = repCards
    EID.descriptions["fr"].repPills = repPills
end