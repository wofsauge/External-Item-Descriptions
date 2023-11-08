--------------------------------------
-----  Basic French descriptions -----
--------------------------------------

-- Last Sync with en_us: 08.08.2021

-- FORMAT: Item ID | Name| Description
-- '#' = starts new line of text

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  ! = Warning

local languageCode = "fr"

local repCollectibles={
	[2] = {"2", "Troisième Œil", "↓ Débit {{ColorError}}-49%#Triple tir"},
	[5] = {"5", "Mon Reflet", "↑ Dégâts {{ColorLime}}+1.5#↑ Portée {{ColorLime}}x1.6 +1.5#↑ Vitesse des tirs {{ColorLime}}+0.6#↓ Chance {{ColorError}}-1#Les larmes d'Isaac reviennent vers lui comme un boomerang"}, -- My Reflection
	[6] = {"6", "Petite Commission", "↑ Débit {{ColorLime}}+1.5#↓ Portée {{ColorError}}-1.5 -20%"}, -- Number One
	[7] = {"7", "Sang du Martyr", "↑ Dégâts {{ColorLime}}+1.0#↑ Dégâts {{ColorLime}}+50%{{ColorWhite}} si Isaac utilise {{ColorYellow}}Livre de Bélial {{Collectible34}}"}, --Blood of the Martyr
	[12] = {"12", "Champignon Magique", "{{Heart}} +1 réceptacle de cœur#↑ Dégâts {{ColorLime}}+0.3 x1.5#↑ Portée {{ColorLime}}+1.5#↑ Vitesse {{ColorLime}}+0.3#Taille augmentée#Soin complet"}, -- Magic Mush
	[13] = {"13", "Le Virus", "↑ Vitesse {{ColorLime}}+0.2#Rentrer en contact avec un ennemi l'empoisonne"}, -- The Virus
	[14] = {"14", "Crise d'Hormones", "↑ Vitesse {{ColorLime}}+0.3#↑ Portée {{ColorLime}}+5.25"}, -- Roid Rage
	[18] = {"18", "Un Dollar", "{{Coin}} +100 Pièces"}, -- A Dollar
	[22] = {"22", "Déjeuner", "{{Heart}} +1 réceptacle de cœur#Soigne un cœur rouge"}, -- Lunch
	[23] = {"23", "Dîner", "{{Heart}} +1 réceptacle de cœur#Soigne un cœur rouge"}, -- Dinner
	[24] = {"24", "Dessert", "{{Heart}} +1 réceptacle de cœur#Soigne un cœur rouge"}, -- Dessert
	[25] = {"25", "Petit Déjeuner", "{{Heart}} +1 réceptacle de cœur#Soigne un cœur rouge"}, -- Breakfast
	[26] = {"26", "Viande Avariée", "{{Heart}} +1 réceptacle de cœur#Soigne un cœur rouge"}, -- Rotten Meat
	[29] = {"29", "Culotte de Maman", "↑ Portée {{ColorLime}}+1.5#Invoque 3 à 6 mouches bleues"}, -- Moms Underwear
	[30] = {"30", "Escarpins de Maman", "↑ Portée {{ColorLime}}+1.5#Permet à Isaac d'infliger des dégâts de contact"}, -- Mom's Heels
	[31] = {"31", "Rouge à Lèvres de Maman", "↑ Portée {{ColorLime}}+2.25#Fait apparaître un cœur"}, -- Mom's Lipstick
	[33] = {"33", "Bible", "Permet à Isaac de voler pour la durée d'une salle#Tue instantanément {{ColorCyan}}Maman{{ColorWhite}}, le {{ColorCyan}}Cœur de Maman{{ColorWhite}} et {{ColorCyan}}Il est Vivant{{ColorWhite}}#{{Warning}} Tue Isaac si utilisée pendant le combat contre {{ColorCyan}}Satan"}, -- The Bible
	[34] = {"34", "Livre de Bélial", "{{DevilChance}} Chance de Pacte avec le Diable {{ColorLime}}+12.5%#↑ Dégâts {{ColorLime}}+2#↑ Dégâts {{ColorLime}}+50%{{ColorWhite}} si Isaac possède {{ColorYellow}}Sang du Martyr {{ColorWhite}}{{Collectible7}}#{{Timer}} L'effet dure une salle"}, -- Book of Belial
	[37] = {"37", "M. Boum", "Place une grosse bombe à la position d'Isaac#L'explosion de la bombe inflige 185 dégâts"},
	[40] = {"40", "Kamikaze !", "Isaac explose et inflige des dégâts aux ennemis à proximité#{{Warning}} Inflige un demi-cœur de dégâts à Isaac"}, -- Kamikaze!
	[41] = {"41", "Serviette de Maman", "Terrifie tous les ennemis de la salle pendant 5 secondes#Invoque une mouche bleue"},
	[42] = {"42", "Tête de Bob", "Bombe jetable#Crée un nuage de poison à l'endroit de l'explosion"}, -- Bob's Rotten Head
	[44] = {"44", "Téléportation !", "Téléporte Isaac dans une salle aléatoire dans l'étage"}, -- Teleport
	[45] = {"45", "Joli Cœur", "Soigne un cœur rouge#Soigne les autres joueurs d'un demi-cœur rouge"}, -- Yum Heart
	[46] = {"46", "Pied Chanceux", "↑ Chance {{ColorLime}}+1#Augmente les chances de gagner aux jeux d'argent et d'obtenir une ressource après avoir terminé une salle#Les pilules n'ont plus d'effets négatifs"}, -- Lucky Foot
    [51] = {"51", "Pentagramme", "↑ Dégâts {{ColorLime}}+1.0#{{AngelDevilChanceSmall}} {{ColorLime}}+10%{{ColorWhite}} de chances de Pacte avec le Diable et d'Offrande des Anges"},
	[52] = {"52", "Dr. Fœtus", "↓ Débit {{ColorError}}-60%#Les larmes d'Isaac sont remplacées par des bombes"},
    [53] = {"53", "Gros Aimant", "Isaac attire les ressources#Permet d'ouvrir les coffres à distance sans avoir besoin de les toucher"}, -- Magneto
	[55] = {"55", "Œil de Maman", "Isaac tire parfois une larme additionnelle dans la direction opposée#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 5 Chance)"}, -- Mom's Eye
	[59] = {"59", "Livre de Bélial (passif)", "<Cet objet n'existe pas>"}, -- The Book of Belial (Judas' Birthright version)
    [62] = {"62", "Morsure de Vampire", "↑ Dégâts {{ColorLime}}+0.3#Tuer 13 ennemis soigne Isaac d'un demi-cœur rouge"}, -- Charm of the Vampire
	[64] = {"64", "Soldes", "Réduit le prix des objets de la boutique de moitié#Posséder plusieurs fois cet objet réduit davantage les prix"}, -- Steam Sale
	[65] = {"65", "Guide du Petit Anarchiste", "Invoque 6 bombes troll dans la salle"},
	[67] = {"67", "Sœurette Marie", "Suit Isaac et tire dans la même direction que lui"}, -- Sister Maggy
	[69] = {"69", "Chocolat Chaud", "Permet à Isaac de charger ses tirs#Une larme complètement chargée inflige {{ColorLime}}dégâts x4"}, --Chocolate Milk
	[70] = {"70", "Hormones de Croissance", "↑ Dégâts {{ColorLime}}+1.0#↑ Vitesse {{ColorLime}}+0.2"}, -- Growth Hormones
	[71] = {"71", "Mini Champi", "↑ Vitesse {{ColorLime}}+0.3#↑ Portée {{ColorLime}}+1.5#Taille diminuée"}, -- Mini Mush
	[72] = {"72", "Rosaire", "↑ Débit {{ColorLime}}+0.5#{{SoulHeart}} +3 cœurs d'âme#Ajoute {{ColorYellow}}La Bible{{ColorWhite}} {{Collectible33}} à toutes les banques d'objets"}, -- Rosary
	[73] = {"73", "Cube de Viande", "Orbite autour d'Isaac, bloque les projectiles ennemis et inflige des dégâts de contact#Obtenir plusieurs copies de cet objet l'améliore"},
	[75] = {"75", "Doctorat", "Soigne 2 cœurs rouges#Fait apparaître une pilule#Les pilules ne peuvent plus avoir d'effet négatif#Les banques du sang {{BloodDonationMachine}} et {{ColorYellow}}Perfusion{{ColorWhite}} {{Collectible135}} donnent davantage de pièces"},
	[76] = {"76", "Lunettes à Rayon X", "Ouvre les entrées des salles Secrètes {{SecretRoom}} et Super Secrètes {{SuperSecretRoom}}"},
	[77] = {"77", "Licorne Arc-En-Ciel", "{{Blank}}#{{Blank}} Pendant 6 secondes :#Rend Isaac invulnérable#↑ Vitesse {{ColorLime}}+0.28"}, -- My Little Unicorn
	[78] = {"78", "Livre de la Révélation", "{{SoulHeart}} +1 cœur d'âme#Remplace le boss par un {{ColorCyan}}Cavalier de l'Apocalypse#Les Cavaliers ne peuvent apparaître qu'une fois par chapitre et ne peuvent pas remplacer les boss majeurs#{{AngelDevilChanceSmall}} {{ColorLime}}+17.5%{{ColorWhite}} de chances de Pacte avec le Diable ou d'Offrande des Anges"},
	[79] = {"79", "Le Nombre de la Bête", "↑ Dégâts {{ColorLime}}+1.0#↑ Vitesse {{ColorLime}}+0.2#{{BlackHeart}} +1 cœur noir"}, -- The Mark
	[80] = {"80", "Le Pacte", "↑ Dégâts {{ColorLime}}+0.5#↑ Débit {{ColorLime}}+0.7#{{BlackHeart}} +2 cœurs noirs"}, -- The Pact
	[83] = {"83", "Clou Pointu", "{{HalfBlackHeart}} +1 Demi-cœur noir#↑ Dégâts {{ColorLime}}+0.7#↓ Vitesse {{ColorError}}-0.18#Permet à Isaac d'infliger des dégâts de contact et d'écraser les obstacles#{{Timer}} L'effet dure une salle"}, -- The Nail
    [84] = {"84", "Aller au Fond des Choses", "Ouvre une trappe vers l'étage suivant#Utiliser l'objet sur un élément de décor au sol ouvre une trappe vers un Souterrain {{LadderRoom}}"}, -- We Need To Go Deeper
	[87] = {"87", "Cornes de Loki", "Isaac tire parfois dans 4 directions à la fois#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 15 Chance)"},
	[91] = {"91", "Casque de Spéléologue", "Révèle les icônes sur la carte à deux salles de distance#Révèle la salle secrète, super secrète et de mini-boss sur la carte#Protège des projectiles qui tombent du plafond"},
    [98] = {"98", "Relique", "Fait apparaître un cœur d'âme toutes les 7-8 salles"}, -- The Relic
	[101] = {"101", "Auréole", "{{Heart}} +1 Réceptacle de cœur#↑ Dégâts {{ColorLime}}+0.3#↑ Débit {{ColorLime}}+0.2#↑ Portée {{ColorLime}}+0.38#↑ Vitesse {{ColorLime}}+0.3"}, -- The Halo
	[106] = {"106", "M. Méga", "↑ Dégâts des bombes {{ColorLime}}x1.85#{{Bomb}} +5 Bombes"}, -- Mr. Mega
	[110] = {"110", "Lentille de Maman", "↑ Portée {{ColorLime}}+0.38#Isaac tire parfois une larme pétrifiante#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à 20 Chance)"}, -- Mom's Contacts
	[114] = {"114", "Couteau de Maman", "Remplace les larmes d'Isaac par un couteau#Le couteau inflige entre {{ColorLime}}dégâts x2{{ColorWhite}} et {{ColorLime}}dégâts x6{{ColorWhite}} selon la distance à laquelle il est lancé"},
	[115] = {"115", "Planche de Ouija", "↑ Débit {{ColorLime}}+0.4#Larmes spectrales"},
	[118] = {"118", "Soufre", "Remplace les larmes d'Isaac par une attaque chargée qui crache un laser de sang"},
	[121] = {"121", "Champignon Suspect", "{{EmptyHeart}} +1 Réceptacle de cœur#↑ Dégâts {{ColorLime}}+1.0#↑ Portée {{ColorLime}}+0.25#↓ Vitesse {{ColorError}}-0.2"}, -- Odd Mushroom (Large)
	[123] = {"123", "Manuel des Monstres", "Invoque un familier aléatoire#Le familier disparaît à l'étage suivant"}, -- Monster Manual
	[126] = {"126", "Lame de Rasoir", "↑ Dégâts {{ColorLime}}+1.2#{{Warning}} Inflige 1 cœur de dégâts à Isaac#Inflige un demi-cœur de dégâts pour chaque utilisation suivante dans la même salle#Retire les cœurs rouges en priorité"},
	[129] = {"129", "Seau de Saindoux", "{{Heart}} +2 réceptacles de cœur #↓ Vitesse {{ColorError}}-0.2#Soigne un demi-cœur rouge"}, -- Bucket of Lard
	[135] = {"135", "Perfusion", "Inflige un demi-cœur de dégâts à Isaac et fait apparaître 1 ou 2 pièces#Ne fait apparaître qu'une pièce en mode Difficile#Retire les cœurs rouges en priorité"},
    [136] = {"136", "Mon Meilleur Ami", "Place une peluche en forme d'Isaac qui attire les ennemis et explose après 5 secondes"},
	[138] = {"138", "Stigmates", "{{Heart}} +1 réceptacle de cœur#↑ Dégâts {{ColorLime}}+0.3#Soigne un cœur rouge"}, -- Stigmata
	[139] = {"139", "Sac à Main de Maman", "Permet à Isaac de porter deux babioles à la fois#Fait apparaître une babiole"}, -- Mom's Purse
	[140] = {"140", "Malédiction de Bob", "{{Bomb}} +5 bombes#Les bombes d'Isaac laissent un nuage de poison#Rend Isaac invulnérable aux nuages de poison"}, -- Bob's Curse
	[142] = {"142", "Scapulaire", "Descendre à un demi-cœur de vie totale ajoute un cœur d'âme aux PV d'Isaac#L'effet ne se déclenche qu'une fois par salle#{{Warning}} L'effet ne se déclenche pas sur un don de sang"},
	[144] = {"144", "Ami Mendiant", "Ramasse les pièces au sol et les convertit en ressources ou objets"},
	[147] = {"147", "Pioche en Fer", "Donner un coup de pioche brise les obstacles et inflige des dégâts#Chaque touche avec la pioche la décharge partiellement#Ne peut être rechargée qu'au changement d'étage"}, -- Notched Axe
	[148] = {"148", "Infestation", "Subir un dégât invoque 2 à 6 mouches bleues"}, -- Infestation
	[149] = {"149", "Ipéca", "↑ Dégâts {{ColorLime}}+40#↓ Vitesse des tirs {{ColorError}}-0.2#↓ Débit {{ColorError}}-67%#Les larmes d'Isaac explosent au contact et empoisonnent les ennemis"}, -- Ipecac
	[152] = {"152", "Technologie 2", "↓ Débit {{ColorError}}-33%#Remplace les larmes de l'œil droit d'Isaac par un laser continu#Le laser inflige 13% des dégâts d'Isaac"}, -- Technology 2
	[153] = {"153", "Araignée Mutante", "↓ Débit {{ColorError}}-58%#Quadruple tir"},
    [155] = {"155", "Œil Baladeur", "Rebondit contre les murs de la salle et inflige des dégâts de contact#↑ Dégâts {{ColorLime}}+34%{{ColorWhite}} pour les larmes tirées de l'œil gauche"},
	[157] = {"157", "Soif de Sang", "Subir un dégât augmente les dégâts d'Isaac#Plafonne à {{ColorLime}}dégâts +1.5{{ColorWhite}} après 6 dégâts subis#{{Timer}} L'effet dure un étage"},
	[158] = {"158", "Boule de Cristal", "Révèle l'étage sur la carte#Fait apparaître une carte ou un cœur d'âme#{{Blank}} Quand tenue :#↑ Chance de Planétarium {{ColorLime}}+15%#↑ Chance de Planétarium {{ColorLime}}+100%{{ColorWhite}} si une Salle du Trésor {{TreasureRoom}} a été ignorée"}, -- Crystal Ball
	[161] = {"161", "Ânkh", "À sa mort, Isaac est ressuscité en {{ColorLightOrange}}???{{ColorWhite}}#Ressuscite simplement {{ColorLightOrange}}??? Impur"},
	[169] = {"169", "Polyphème", "↑ Dégâts {{ColorLime}}x2 +4#↓ Débit {{ColorError}}-58%#Les larmes d'Isaac transpercent les ennemis qu'elles tuent"},
    [171] = {"171", "Filière d'Araignée", "Ralentit les ennemis pendant 4 secondes et leur inflige des dégâts#Les ennemis tués par cet objet font apparaître des araignées bleues"}, -- Spider Butt
	[172] = {"172", "Dague Sacrificielle", "Orbite autour d'Isaac#Bloque les tirs ennemis#Inflige des dégâts de contact"},
    [176] = {"176", "Cellules Souches", "{{Heart}} +1 réceptacle de cœur#↑ Vitesse des tirs {{ColorLime}}+0.16#Soigne un cœur rouge"}, -- Stem Cells
	[178] = {"178", "Eau Bénite", "Se projette dans la direction où tire Isaac#Répand une flaque paralysante en se brisant"}, -- Holy Water
	[180] = {"180", "Haricot Noir", "Subir un dégât fait péter Isaac plusieurs fois et crée des nuages de poison"},
	[181] = {"181", "Poney Blanc", "↑ Vitesse =1.5#Permet à Isaac de voler#Utiliser l'objet fait se ruer Isaac en ligne droite#Des rayons de lumière frappent le sol derrière Isaac#Isaac est invulnérable pendant la ruée"},
	[182] = {"182", "Sacré-Cœur", "{{Heart}} +1 Réceptacle de cœur#↑ Dégâts {{ColorLime}}x2.3 +1#↑ Portée {{ColorLime}}+0.5#↓ Vitesse des tirs {{ColorError}}-0.25#↓ Débit {{ColorError}}-0.4#Larmes autoguidées"}, -- Sacred Heart
	[184] = {"184", "Saint Graal", "{{Heart}} +1 Réceptacle de cœur#Permet à Isaac de voler#Soigne un cœur rouge"}, -- Holy Grail
	[186] = {"186", "Droits du Sang", "Inflige 40 dégâts à tous les ennemis de la salle#{{Warning}} Inflige 1 cœur de dégâts à Isaac#N'inflige qu'un demi-cœur de dégâts s'il est utilisé plusieurs fois dans la même salle"},
	[188] = {"188", "Abel", "Réfléchit les mouvements d'Isaac#Tire en direction d'Isaac"}, -- Abel
	[189] = {"189", "Super Fan de SMB", "{{Heart}} +1 Réceptacle de cœur#↑ Dégâts {{ColorLime}}+0.3#↑ Débit {{ColorLime}}+0.2#↑ Portée {{ColorLime}}+0.5#↑ Vitesse {{ColorLime}}+0.2#Soin complet"}, --SMB Super Fan
    [192] = {"192", "La Télépathie pour les Nuls", "↑ Portée {{ColorLime}}+3.0#Larmes autoguidées#{{Timer}} L'effet dure une salle"}, -- Telepathy for Dummies
	[193] = {"193", "DE LA VIANDE !", "{{Heart}} +1 Réceptacle de cœur#↑ Dégâts {{ColorLime}}+0.3#Soigne un cœur rouge"}, -- MEAT!
	[194] = {"194", "Boule Magique", "↑ Vitesse des tirs {{ColorLime}}+0.16#↑ Chance de Planétarium {{ColorLime}}+15%#Fait apparaître une carte"}, -- Magic 8 Ball
	[197] = {"197", "Sang du Christ", "↑ Dégâts {{ColorLime}}+0.5#↑ Portée {{ColorLime}}+0.38"}, -- Jesus Juice
	[203] = {"203", "Offre Spéciale", "50% de chances de faire apparaître les versions doublées des ressources"}, -- Humbling Bundle
	[205] = {"205", "Prise de Sang", "Recharge complètement un objet activable vide en appuyant sur le bouton pour l'utiliser#{{Warning}} Inflige un demi-cœur de dégâts à Isaac par barre de charge remplie#Retire les cœurs rouges en priorité"}, -- Sharp Plug
	[206] = {"206", "Guillotine", "↑ Dégâts {{ColorLime}}+1.0#↑ Débit {{ColorLime}}+1.0#La tête d'Isaac se sépare de son corps et l'orbite#La tête tire et inflige des dégâts de contact"}, -- Guillotine
	[207] = {"207", "Boule de Pansements", "Orbite autour d'Isaac, bloque les projectiles ennemis et inflige des dégâts de contact#Obtenir plusieurs copies de cet objet l'améliore"},
	[211] = {"211", "Bébé Araignée", "Subir un dégât invoque 3 à 5 araignées bleues"}, -- Spider Baby
	[214] = {"214", "Anémie", "↑ Portée {{ColorLime}}+1.5#Subir un dégât répand une traînée de sang corrosive derrière Isaac pour la durée d'une salle"}, -- Anemic
	[215] = {"215", "Tête de Bouc", "{{AngelDevilChanceSmall}} Garantit d'ouvrir l'Antre du Diable {{DevilRoom}} ou le Refuge des Anges {{AngelRoom}} après avoir battu le boss de l'étage"},
	[218] = {"218", "Placenta", "{{Heart}} +1 Réceptacle de cœur#Soigne un cœur rouge#Régénère parfois un demi-cœur rouge quand le minuteur finit par :00"}, -- Placenta
	[219] = {"219", "Vieux Pansement", "{{EmptyHeart}} +1 réceptacle de cœur#Subir un dégât fait parfois apparaître un cœur rouge#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 80 Chance)"},
	[222] = {"222", "Antigravité", "↑ Débit {{ColorLime}}+1#Maintenir les boutons de tir fait flotter les larmes d'Isaac sur place#Relâcher les boutons de tir envoie toutes les larmes dans la direction où elles ont été tirées"},
	[223] = {"223", "Pyromanie", "{{Bomb}} +5 Bombes#Les explosions soignent Isaac d'un demi-cœur rouge#Rend Isaac invulnérable aux flammes"},
	[224] = {"224", "Corps de Cricket", "↑ Débit {{ColorLime}}+0.5#↓ Portée {{ColorError}}-20%#Les larmes d'Isaac se divisent en 4 au contact"}, -- Cricket's Body
	[225] = {"225", "Latex", "Subir un dégât fait parfois apparaître un cœur d'âme#Tuer un ennemi fait parfois apparaître un demi-cœur rouge#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 46 Chance)"}, -- Gimpy
	[226] = {"226", "Lotus Noir", "{{Heart}} +1 Réceptacle de cœur#{{SoulHeart}} +1 cœur d'âme#{{BlackHeart}} +1 cœur noir#Soigne un cœur rouge"}, -- Black Lotus
	[227] = {"227", "Tirelire Cochon", "{{Coin}} +3 Pièces#Subir un dégât fait apparaître 1 ou 2 pièces"},
	[228] = {"228", "Parfum de Maman", "↑ Débit {{ColorLime}}+0.5#Isaac tire parfois une larme terrifiante#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 85 Chance)"}, -- Moms Perfume
	[229] = {"229", "Poumon de Monstro", "↓ Débit {{ColorError}}-77%#Remplace les larmes d'Isaac par une attaque chargée qui crache une gerbe de larmes"},
	[230] = {"230", "Abaddon", "↑ Dégâts {{ColorLime}}+1.5#↑ Vitesse {{ColorLime}}+0.2#{{BlackHeart}} +2 cœurs noirs#Convertit tous les réceptacles de cœur d'Isaac en cœurs noirs#Isaac tire parfois une larme terrifiante#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 85 Chance)"}, -- Abaddon
	[232] = {"232", "Chronomètre", "↑ Vitesse {{ColorLime}}+0.3#Ralentit tous les ennemis de manière permanente"}, -- Stop Watch
	[233] = {"233", "Planète Naine", "↑ Portée {{ColorLime}}+6.5#Les larmes d'Isaac orbitent autour de lui#Larmes spectrales"},
	[238] = {"238", "1er Fragment de Clé", "Combiner ce fragment de clé avec l'autre {{Collectible239}} permet d'ouvrir la grande porte dorée dans le {{ColorTransform}}Coffre{{ColorWhite}} et la {{ColorTransform}}Chambre Noire #Augmente la fréquence d'apparition des cœurs éternels#{{AngelChanceSmall}} Augmente les chances d'Offrandes des Anges {{AngelRoom}}"},
	[239] = {"239", "2è Fragment de Clé", "Combiner ce fragment de clé avec l'autre {{Collectible238}} permet d'ouvrir la grande porte dorée dans le {{ColorTransform}}Coffre{{ColorWhite}} et la {{ColorTransform}}Chambre Noire #Augmente la fréquence d'apparition des cœurs éternels#{{AngelChanceSmall}} Augmente les chances d'Offrandes des Anges {{AngelRoom}}"},
	[240] = {"240", "Traitement Expérimental", "↑ Augmente 4 stats#↓ Diminue 2 stats "}, -- Experimental Treatment
	[245] = {"245", "20/20", "↓ Dégâts {{ColorError}}-20%#Double tir"}, -- 20/20
	[246] = {"246", "Carte Perdue", "Révèle l'emplacement des salles Secrète {{SecretRoom}} et Super Secrète {{SuperSecretRoom}} sur la carte"},
	[248] = {"248", "Conscience Collective", "Double les dégâts infligés par les locustes, les mouches et araignées bleues, et les familiers mouches et araignées"}, -- Hive Mind
	[253] = {"253", "Croûte Magique", "↑ Chance {{ColorLime}}+1#{{Heart}} +1 Réceptacle de cœur#Soigne un cœur rouge"}, -- Magic Scab
	[254] = {"254", "Caillot de Sang", "↑ Dégâts {{ColorLime}}+1#↑ Portée {{ColorLime}}+1.5#L'effet n'est appliqué que sur l'œil gauche"}, -- Blood Clot
	[256] = {"256", "Bombes Brûlantes", "{{Bomb}} +5 Bombes#Les bombes d'Isaac infligent des dégâts de contact aux ennemis#Les bombes d'Isaac allument une flamme à l'endroit de l'explosion#Rend Isaac invulnérable au feu"}, -- Hot Bombs
	[260] = {"260", "Bougie Noire", "{{BlackHeart}} +1 cœur noir#Immunité aux fléaux"},
	[261] = {"261", "Proptose", "↑ Dégâts {{ColorLime}}+0.5#Les larmes d'Isaac infligent {{ColorLime}}dégâts x3{{ColorWhite}} à bout portant#Les dégâts des larmes diminuent avec le temps qu'elles passent en l'air"}, -- Proptosis
	[262] = {"262", "Page Déchirée 2", "{{BlackHeart}} +1 cœur noir#Double les dégâts infligés en perdant un cœur noir#Inflige 80 dégâts à tous les ennemis de la salle quand les PV totaux d'Isaac sont réduits à 1 cœur"}, -- Missing Page 2
	[263] = {"263", "Rune de Cristal", "Déclenche l'effet de la rune ou pierre d'âme portée par Isaac sans la consommer#Le temps de recharge de l'objet varie selon la rune#Fait apparaître une rune"}, -- Clear Rune   (REPENTANCE ITEM)
	[273] = {"273", "Cerveau de Bob", "Peut être projeté avec les boutons de tir#Explose au contact d'un ennemi#{{Warning}} L'explosion peut infliger des dégâts à Isaac"}, -- Bob's Brain
	[274] = {"274", "Meilleure Pote", "Subir un dégât invoque une mouche qui orbite autour d'Isaac et inflige des dégâts de contact pour la durée d'une salle"}, -- Best Bud
	[275] = {"275", "P'tit Soufre", "Tire des lasers de sang"}, -- Lil Brimstone
	[276] = {"276", "Cœur d'Isaac", "Isaac devient invulnérable#Fait apparaître un familier qui suit Isaac#{{Warning}} Isaac subit un dégât quand le familier entre en contact avec un ennemi ou un projectile#Le cœur charge une vague de larmes quand Isaac tire et la crache quand les boutons de tir sont relâchés"}, -- Isaac's Heart
	[278] = {"278", "Mendiant des Ombres", "Ramasse les cœurs rouges au sol et convertit 1,5 cœurs rouges en 1 cœur noir, une araignée, une pilule, une carte ou une rune"}, -- Dark Bum
	[280] = {"280", "Sissy la Faucheuse", "Invoque des araignées bleues dans les salles hostiles#Envoûte les ennemis qui la touchent"}, -- Sissy Longlegs
	[283] = {"283", "D100", "Rejoue tous les objets sur piédestaux, ressources et rochers, les stats et tous les objets d'Isaac#Duplique une ressource aléatoire dans la salle#Rejoue la salle actuelle et affaiblit les ennemis"}, -- D100
	[285] = {"285", "D10", "Transforme tous les ennemis de la salle en ennemis moins forts"}, -- D10
	[286] = {"286", "Carte Blanche", "Déclenche l'effet de la carte portée par Isaac sans la consommer#Le temps de recharge de l'objet varie selon la carte"},
	[287] = {"287", "Livre des Secrets", "Active l'effet de la {{ColorYellow}}Carte au Trésor{{ColorWhite}} {{Collectible54}}, la {{ColorYellow}}Boussole{{ColorWhite}} {{Collectible21}} ou la {{ColorYellow}}Carte Perdue{{ColorWhite}} {{Collectible246}}#Ne donne que les effets qui ne sont pas déjà actifs#Quand tous les effets sont actifs, donne l'effet des {{ColorYellow}}Lunettes à Rayon X{{ColorWhite}} {{Collectible76}}#{{Timer}} L'effet dure un étage"}, -- Book of Secrets
	[288] = {"288", "Boîte d'Araignées", "Fait apparaître 4 à 8 araignées bleues"}, -- Box of Spiders
	[289] = {"289", "Bougie Rouge", "Lance une flamme rouge#La flamme disparaît après 10 secondes, ou après avoir infligé des dégâts ou bloqué des tirs 5 fois"}, -- Red Candle
	[291] = {"291", "Chasse d'Eau", "Tue instantanément les ennemis et boss cacas#Transforme les ennemis de la salle en cacas#Éteint les feux et inonde le sol de la salle#Transforme la lave en sol franchissable"}, -- Flush!
	[292] = {"292", "Bible Satanique", "{{BlackHeart}} +1 cœur noir#Utiliser l'objet avant un combat de boss transforme la récompense du combat en un Pacte avec le Diable"}, -- Satanic Bible
	[294] = {"294", "Haricot Beurre", "Repousse les ennemis et les projectiles#Projeter un ennemi contre un mur ou un obstacle lui inflige des dégâts"}, -- Butter Bean
	[295] = {"295", "Pot de Vin", "Retire une pièce à Isaac#Inflige 2x les dégâts d'Isaac à tous les ennemis de la salle"}, -- Magic Fingers
	[296] = {"296", "Adaptateur", "Convertit un cœur d'âme ou un cœur noir en un réceptacle de cœur rouge"}, -- Converter
--	[297] = {"297", "Boîte de Pandore", "{{Warning}} USAGE UNIQUE#{{Blank}} Donne selon l'étage :#{{ColorTransform}}SS1{{ColorWhite}} : 2 cœurs d'âme#{{ColorTransform}}SS2{{ColorWhite}} : 2 clés, 2 bombes#{{ColorTransform}}G1{{ColorWhite}} : 1 Objet de boss#{{ColorTransform}}G2{{ColorWhite}} : SS1 + G1#{{ColorTransform}}P1{{ColorWhite}} : 4 cœurs d'âme#{{ColorTransform}}P2{{ColorWhite}} : 30 pièces#{{ColorTransform}}U1{{ColorWhite}} : 2 Objets de boss#{{ColorTransform}}U2{{ColorWhite}} : La {{ColorYellow}}Bible{{ColorWhite}} {{Collectible33}}#{{ColorTransform}}Shéol{{ColorWhite}} : 1 Objet du Diable, 1 cœur noir#{{ColorTransform}}Cathédrale{{ColorWhite}} : 1 Objet d'Ange + 1 cœur d'âme#{{ColorTransform}}Coffre{{ColorWhite}} : 1 Pièce#{{ColorTransform}}Chambre Noire{{ColorWhite}} : Débloque {{ColorYellow}}Carton de Déménagement{{ColorWhite}} {{Collectible523}}#{{ColorTransform}}Maison{{ColorWhite}} : La {{ColorYellow}}Clé Rouge{{ColorWhite}} {{Collectible580}}"}, -- Pandora's box
	[297] = {"297", "Boîte de Pandore", "{{Warning}} USAGE UNIQUE#{{Blank}} Donne selon l'étage :#SS1 : 2 cœurs d'âme#SS2 : 2 clés, 2 bombes#G1 : 1 Objet de boss#G2 : SS1 + G1#P1 : 4 cœurs d'âme#P2 : 30 pièces#U1 : 2 Objets de boss#U2 : La {{ColorYellow}}Bible {{Collectible33}}#??? / Néant : Rien#Shéol : 1 Objet du Diable, 1 cœur noir#Cathédrale : 1 Objet d'Ange + 1 cœur d'âme#Chambre Noire : Débloque {{ColorYellow}}Carton de Déménagement {{Collectible523}}#Coffre : 1 Pièce#Maison : La {{ColorYellow}}Clé Rouge {{Collectible580}}"}, -- Pandora's box
	[300] = {"300", "Bélier", "↑ Vitesse {{ColorLime}}+0.25#Isaac inflige des dégâts de contact aux ennemis#Marcher au-delà de 0.85 de vitesse rend Isaac invulnérable aux dégâts de contact"}, -- Aries
	[307] = {"307", "Capricorne", "↑ Dégâts {{ColorLime}}+0.93#↑ Vitesse {{ColorLime}}+0.1#↑ Portée {{ColorLime}}+0.75#↑ Débit {{ColorLime}}+0.5#{{Heart}} +1 réceptacle de cœur#{{Bomb}} +1 Bombe#{{Coin}} +1 pièce#{{Key}} +1 clé"}, -- Capricorn
	[308] = {"308", "Verseau", "Isaac répand derrière lui une trainée d'eau qui inflige 66% de ses dégâts#La traînée d'eau hérite des effets des larmes d'Isaac"}, -- Aquarius
	[309] = {"309", "Poissons", "↑ Débit {{ColorLime}}+0.5#Augmente le recul infligé par les larmes d'Isaac"},
    [310] = {"310", "Mascara d'Ève", "↑ Dégâts {{ColorLime}}x2#↓ Débit {{ColorError}}-33%#↓ Vitesse des tirs {{ColorError}}-0.5"},
    [311] = {"311", "Ombre de Judas", "À sa mort, réincarne Isaac en {{ColorLightOrange}}Judas des Ombres#Judas des Ombres bénéficie de {{ColorLime}}dégâts x2"},
	[314] = {"314", "Seau de Fromage", "↓ Vitesse {{ColorError}}-0.4#{{Heart}} +1 réceptacle de cœur#Soigne un cœur rouge#Permet à Isaac d'écraser les rochers en marchant dessus"}, -- Thunder Thighs
	[315] = {"315", "Attracteur Étrange", "Les larmes d'Isaac attirent les ennemis, ressources et babioles#L'attraction augmente selon la distance parcourue par la larme"}, -- Strange Attractor
	[316] = {"316", "Œil Maudit", "Remplace les larmes d'Isaac par une attaque chargée#L'attaque complètement chargée tire 5 larmes, mais le chargement peut être interrompu pour en tirer moins#{{Warning}} Subir un dégât pendant le chargement de l'attaque téléporte Isaac dans une salle aléatoire"},
	[319] = {"319", "Œil Gauche de Caïn", "Tire dans une direction cardinale aléatoire#Copie les stats et effets de larmes d'Isaac"},
	[320] = {"320", "La Seule Amie de ???", "Inflige des dégâts de contact#Peut être déplacée avec les boutons de tir"}, -- ???'s Only Friend
	[323] = {"323", "Bocal de Larmes", "Projette 8 larmes qui infligent {{ColorLime}}dégâts +5{{ColorWhite}} en cercle autour d'Isaac#Chaque larme tirée par Isaac recharge une barre de l'objet"},
	[324] = {"324", "erreur", "{{Blank}} Téléporte Isaac vers l'une de ces salles :#{{TreasureRoom}} Salle du Trésor#{{SecretRoom}} Salle Secrète#{{SuperSecretRoom}} Salle Super Secrète#Salle d'Erreur"},
	[326] = {"326", "Souffle de Vie", "Maintenir le bouton d'utilisation vide la barre de charge#Quand elle est vide, Isaac devient invulnérable pour une seconde et invoque des rayons de lumière au contact#Effectuer un blocage parfait envoie des rayons de lumière en croix#{{Warning}} Rester appuyé trop longtemps inflige des dégâts à Isaac"}, -- Breath of Life
	[327] = {"327", "Le Positif", "Subir un dégât à un demi-cœur rouge ou moins rend Isaac invulnérable pendant 5 secondes#Permet d'entrer dans le {{ColorTransform}}Coffre"},
	[328] = {"328", "Le Négatif", "↑ Dégâts {{ColorLime}}+1.0#Subir un dégât à un demi-cœur rouge ou moins inflige 40 dégâts à tous les ennemis de la salle#Permet d'entrer dans la {{ColorTransform}}Chambre Noire"}, -- The Negative
	[330] = {"330", "Lait de Soja", "↑ Débit {{ColorLime}}x5.5#↓ Dégâts {{ColorError}}-80%#Réduit grandement le recul infligé par les larmes d'Isaac"}, -- Soy Milk
	[331] = {"331", "Œil de la Providence", "↑ Dégâts {{ColorLime}}+0.5#↓ Débit {{ColorError}}-0.3#↓ Vitesse des tirs {{ColorError}}-0.3#Larmes autoguidées#Les larmes d'Isaac sont entourées d'une aura qui inflige des dégâts"}, -- Godhead
	[332] = {"332", "Loques de Lazare", "À sa mort, Isaac est réincarné en {{ColorLightOrange}}Lazare Ressuscité#Ressuscite simplement {{ColorLightOrange}}Lazare Impur"},
	[336] = {"336", "Oignon Pourri", "↓ Portée {{ColorError}}-1.5#↓ Vitesse des tirs {{ColorError}}-0.4#Larmes spectrales et transperçantes"}, -- Dead Onion
	[339] = {"339", "Épingle à Nourrice", "↑ Portée {{ColorLime}}+1.5#↑ Vitesse des tirs {{ColorLime}}+0.16#{{BlackHeart}} +1 cœur noir"}, -- Safety Pin
	[342] = {"342", "Lactarius Indigo", "↑ Débit {{ColorLime}}+0.7#↓ Vitesse des tirs {{ColorError}}-16%#{{Heart}} +1 réceptacle de cœur#Soigne 1 cœur rouge"}, -- Blue Cap
	[344] = {"344", "Boîte d'Allumettes", "{{BlackHeart}} +1 cœur noir#Fait apparaître 2 ou 3 bombes#Fait apparaître {{ColorYellow}}Allumette {{Trinket41}}"}, -- Match Book
	[345] = {"345", "Synthol", "↑ Dégâts {{ColorLime}}+1.0#↑ Portée {{ColorLime}}+1.5"}, -- Synthoil
	[346] = {"346", "Casse-Croûte", "{{Heart}} +1 réceptacle de cœur#Soigne 1 cœur rouge"}, -- A Snack
	[348] = {"348", "Placebo", "Déclenche l'effet de la pilule portée par Isaac sans la consommer#Le temps de recharge de l'objet varie en fonction de la pilule"},
	[350] = {"350", "Choc Toxique", "Entrer dans une salle empoisonne les ennemis#Les ennemis répandent une flaque toxique à leur mort"}, -- Toxic Shock
	[352] = {"352", "Canon de Verre", "Tire une énorme larme spectrale transperçante#{{Warning}} Augmente de deux cœurs les dégâts infligés à Isaac#Quand Isaac subit un dégât, il gagne {{ColorLime}}portée +1.5{{ColorWhite}}, laisse une traînée de sang corrosif derrière lui, et brise le canon#Le canon brisé devra recharger pendant 4 salles avant de pouvoir être utilisé à nouveau"}, -- Glass Canon
	[354] = {"354", "Boîte de Céréales", "{{Heart}} +1 Réceptacle de cœur#Soigne 1 cœur#Fait apparaître une babiole"}, -- Crack Jacks
    [355] = {"355", "Collier de Maman", "↑ Portée {{ColorLime}}+1.25#↑ Chance {{ColorLime}}+1.0#{{SoulHeart}} +1 cœur d'âme"}, -- Mom's Pearl
	[360] = {"360", "Incube", "Imite les stats et effets des larmes d'Isaac#Inflige {{ColorError}}75%{{ColorWhite}} des dégâts d'Isaac"}, -- Incubus
	[362] = {"362", "P'tit Coffre", "{{Blank}} Peut faire apparaître à la fin d'une salle :#Une ressource {{ColorSilver}}(25%)#Une babiole {{ColorSilver}}(10%)"},
	[365] = {"365", "Mouche Égarée", "Longe les murs et les obstacles et inflige des dégâts de contact#Les ennemis à proximité la prennent pour cible"},
	[366] = {"366", "Bombes à Fragmentation", "{{Bomb}} +5 Bombes#Les bombes d'Isaac se divisent en 4 ou 5 bombes plus petites en explosant"}, -- Scatter Bombs
	[367] = {"367", "Bombes Arachnides", "{{Bomb}} +5 Bombes#Les bombes d'Isaac répandent une flaque ralentissante et collent aux ennemis#Les ennemis tués par des bombes invoquent 2 à 4 araignées bleues"},
	[368] = {"368", "Épiphora", "Tirer dans la même direction augmente progressivement le débit jusqu'à {{ColorLime}}200%"},
    [369] = {"369", "Continuum", "↑ Portée {{ColorLime}}+3.0#Larmes spectrales#Les larmes d'Isaac qui disparaissent d'un côté de l'écran reviennent du côté opposé"}, -- Continuum
	[370] = {"370", "Mme Poupée", "↑ Débit {{ColorLime}}+0.7#↑ Portée {{ColorLime}}+1.5#Fait apparaître 3 cœurs"}, -- Mr. Dolly
	[371] = {"371", "Fléau de la Maison Dieu", "Subir un dégât fait apparaître 6 Bombes Troll qui imitent les effets des bombes d'Isaac"},
	[372] = {"372", "Bébé Chargé", "Peut parfois faire apparaître une pile, paralyser tous les ennemis de la salle ou ajouter une charge à l'objet activable"}, -- Charged Baby
	[374] = {"374", "Saint Éclat", "Isaac tire parfois une larme sacrée qui frappe l'ennemi touché d'un rayon de lumière#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à 9 Chance)"}, -- Holy Light
	[375] = {"375", "Crâne d'Hôte", "20% de chances de bloquer les projectiles ennemis#Rend Isaac invulnérable aux explosions et aux projectiles qui tombent du plafond "}, -- Host hat
	[376] = {"376", "Réapprovisionnement", "Les objets et ressources achetés à la boutique sont réapprovisionnés après chaque achat, permettant d'en acheter plusieurs#Le prix des objets réapprovisionnés augmente avec chaque achat"}, -- Restock
	[380] = {"380", "Fente Magique", "{{Coin}} +5 Pièces#Les serrures s'ouvrent avec des pièces"},
	[382] = {"382", "Boule à Monstres", "Jeter la boule sur un ennemi le capture#Lancer une boule qui contient un ennemi le fait sortir et se battre aux côtés d'Isaac#Marcher sur la boule après avoir capturé un ennemi la recharge complètement"}, -- Friendly Ball
	[384] = {"384", "P'tit Boris", "Charge quand Isaac tire, puis se propulse à travers la salle et rebondit contre les murs quand les boutons de tirs sont relâchés"}, -- Lil Gurdy
	[389] = {"389", "Sac de Runes", "Fait apparaître une rune ou une pierre d'âme toutes les 7-8 salles"}, -- Rune Bag
	[391] = {"391", "Trahison", "Les larmes ennemies peuvent infliger des dégâts aux autres ennemis#Un ennemi touché par la larme d'un autre ennemi attaquera celui-ci"},
	[393] = {"393", "Baiser du Serpent", "15% de chances de tirer une larme empoisonnée#Entrer en contact avec un ennemi l'empoisonne#Les ennemis tués par le poison de contact ont 20% de chances de faire apparaitre un cœur noir"}, -- Serpent`s Kiss
	[394] = {"394", "Ligne de Mire", "↑ Débit {{ColorLime}}+0.7#↑ Portée {{ColorLime}}+3.0#Isaac et ses familiers tirent automatiquement vers une cible déplaçable avec les boutons de tir#Appuyer sur le bouton {{ColorSilver}}[Lâcher]{{ColorWhite}} met en pause le tir automatique"}, -- Marked
	[395] = {"395", "Tech X", "Remplace les larmes d'Isaac par des anneaux laser#La taille et les dégâts des anneaux augmentent avec la durée de la charge#100% de dégâts avec une charge complète"}, -- Tech X
	[397] = {"397", "Rayon Tracteur", "↑ Débit {{ColorLime}}+1.0#↑ Portée {{ColorLime}}+1.5#↑ Vitesse des tirs {{ColorLime}}+0.16#Les larmes d'Isaac sont tractées par un rayon de lumière"},
	[399] = {"399", "Gouffre du Néant", "Tirer pendant 3 secondes fait apparaître une croix rouge sur la tête d'Isaac#Relâcher les boutons de tir crée un anneau noir autour de lui qui inflige des dégâts de contact"}, -- Maw of the Void
	[401] = {"401", "Explosivo", "25% de chances de tirer une larme collante qui explose après quelques secondes"}, -- Explosivo
	[404] = {"404", "Bébé Péteur", "S'il est touché par un projectile ennemi, le familier pète et envoûte, empoisonne ou repousse les ennemis"}, -- Farting Baby
	[405] = {"405", "Bug", "Peut être projeté avec un double appui sur un bouton de tir#Rejoue les ressources et ennemis avec lesquels il entre en contact"}, -- GB Bug
	[407] = {"407", "Pureté", "↑ Augmente une stat en fonction de la couleur de l'aura qui entoure Isaac#Subir un dégât désactive l'effet pour une salle#{{ColorRed}}Rouge{{ColorWhite}} = Dégâts {{ColorLime}}+4.0#{{ColorCyan}}Bleu{{ColorWhite}} = Débit {{ColorLime}}+4.0#{{ColorYellow}}Jaune{{ColorWhite}} = Vitesse {{ColorLime}}+0.5#{{ColorOrange}}Orange{{ColorWhite}} = Portée {{ColorLime}}+3.0"},
	[408] = {"408", "Athamé", "Entoure parfois les ennemis tués d'un cercle noir qui inflige des dégâts de contact aux autres ennemis#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 30 Chance)"}, -- Athame
	[414] = {"414", "Plus d'Options", "Permet à Isaac de choisir entre deux objets dans les Salles du Trésor {{TreasureRoom}}"},
	[415] = {"415", "Couronne de Lumière", "↑ Dégâts {{ColorLime}}x2#↓ Vitesse des tirs {{ColorError}}-0.3#{{SoulHeart}} +2 Cœurs d'âme#Subir un dégât désactive ces effets pour une salle#Les effets restent désactivés tant que tous les réceptacles de cœurs d'Isaac ne sont pas remplis"},
    [416] = {"416", "Poches Profondes", "Augmente la capacité maximale du compteur de pièces à 999#Fait apparaître 1 à 3 pièces si terminer une salle n'aurait pas donné de récompense"}, -- Deep Pockets
	[417] = {"417", "Succube", "Rebondit contre les murs entourée d'une aura#↑ Dégâts {{ColorLime}}+50%{{ColorWhite}} tant qu'Isaac reste dans l'aura#Inflige des dégâts aux ennemis dans l'aura"}, -- Succubus
	[419] = {"419", "Téléportation 2.0", "Téléporte Isaac dans une salle inexplorée#Ordre de téléportation#{{Blank}} {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}> {{SacrificeRoom}}>{{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}> {{ChallengeRoom}}>{{IsaacsRoom}}>{{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>#{{Blank}} {{DevilRoom}}{{AngelRoom}}>Salle d'erreur"},
	[420] = {"420", "Poudre Noire", "Dessiner un cercle en marchant crée un pentagramme sur le sol#Le pentagramme inflige des dégâts aux ennemis qui se tiennent dessus"},
	[421] = {"421", "Haricot Rouge", "Isaac pète et envoûte les ennemis à proximité"}, -- Kidney Bean
	[422] = {"422", "Sablier Luisant", "Remonte le temps et ramène Isaac dans la salle précédente#Annule toutes les actions faites, les dégâts subis, les ressources ramassées dans la salle où l'objet a été utilisé#{{Timer}} 3 utilisations par étage"},
	[426] = {"426", "Admiratrice Obsessionnelle", "Imite les mouvements d'Isaac avec 0.66 secondes de délai et inflige des dégâts de contact"}, -- Obsessed Fan
	[430] = {"430", "Papa Mouche", "Imite les mouvements d'Isaac avec 0.6 secondes de délai#Tire des larmes sur les ennemis à proximité"}, -- papa Fly
	[431] = {"431", "Bébé Interdimensionnel", "Imite les mouvements d'Isaac avec 0.66 secondes de délai#Double et accélère les larmes d'Isaac qui le traversent"},
	[432] = {"432", "Bombes à Paillettes", "{{Bomb}} +5 bombes#Les bombes d'Isaac font parfois apparaître une ressource et ont {{ColorLime}}15%{{ColorWhite}} de chances d'envoûter les ennemis en explosant#Les bombes ne peuvent pas faire apparaître plus de 63 ressources par étage"},
	[433] = {"433", "Mon Ombre", "Suit Isaac avec un délai#Invoque des sangsues alliées quand un ennemi entre en contact avec l'ombre"},
	[437] = {"437", "D7", "Fait réapparaître tous les ennemis de la salle et ferme les portes#Terminer la salle à nouveau peut faire apparaître une ressource"}, -- D7
	[439] = {"439", "Boîte de Maman", "↑ Chance {{ColorLime}}+1{{ColorWhite}} et double les effets des babioles tant qu'Isaac tient l'objet#Fait apparaître une babiole"},
	[440] = {"440", "Calcul Rénal", "Change régulièrement les larmes d'Isaac en une attaque chargée#Relâcher le bouton de tir quand l'attaque est chargée crache un gros caillot suivi d'une gerbe de tirs rapides"}, -- Kidney Stone
	[442] = {"442", "Couronne des Ténèbres", "Avoir exactement 1 cœur rouge rempli donne :#↑ Portée {{ColorLime}}+1.5#↑ Débit {{ColorLime}}+2.0#↑ Vitesse des tirs {{ColorLime}}+0.2"}, -- Dark Princes Crown
	[444] = {"444", "Crayon de Papier", "Toutes les 15 larmes tirées, Isaac crache une gerbe de larmes"}, -- Lead Pencil
	[445] = {"445", "Dent de Chien", "↑ Dégâts {{ColorLime}}+0.3#↑ Vitesse {{ColorLime}}+0.1#Un hurlement de chien retentit dans les salles voisines aux salles Secrètes et Super Secrètes#Un aboiement retentit dans les salles où un rocher cache une trappe vers un Souterrain {{LadderRoom}}"},
	[448] = {"448", "Bris de Verre", "Quand Isaac subit un dégât, il gicle des larmes dans la direction où il tire et perd un demi-cœur rouge toutes les 20 secondes#Perdre un demi-cœur rouge a une chance de faire apparaître un cœur rouge#L'effet prend fin quand Isaac se soigne ou quand la prochaine perte le tuerait"}, -- Shard of Glass
	[450] = {"450", "Œil d'Avarice", "{{Warning}} Toutes les 20 larmes, Isaac tire une de ses pièces#Toucher un ennemi avec une pièce le transforme en statue d'or et fait apparaître une pièce#Tuer un ennemi doré fait apparaître 1 à 3 pièces"},
	[451] = {"451", "Nappe de Tarot", "Fait apparaître une carte ou une rune#Double les effets des cartes de tarot {{Card}}#Certaines cartes gagnent un effet supplémentaire"}, -- Tarot Cloth
	[453] = {"453", "Fracture Ouverte", "↑ Portée {{ColorLime}}+0.38#Les larmes d'Isaac se brisent en 1 à 3 petits morceaux d'os en touchant un obstacle ou ennemi"}, -- Compound Fracture
	[455] = {"455", "Médaille de Papa", "↑ Portée {{ColorLime}}+0.38#Fait apparaître une pièce porte-bonheur"},
	[456] = {"456", "Encas de Minuit", "{{Heart}} +1 réceptacle de cœur#Soigne un cœur rouge"}, -- Midnight Snack
	[458] = {"458", "Nombril", "Permet à Isaac de porter deux babioles#Fait apparaître une babiole"},
	[459] = {"459", "Sinusite", "20% de chances de tirer une crotte de nez qui se colle aux ennemis et inflige des dégâts une fois par seconde#Les crottes de nez se décollent si l'ennemi meurt, s'enterre, saute hors de l'écran ou après 10 secondes"}, --Sinus Infection
	[462] = {"462", "Œil de Bélial", "↑ Portée {{ColorLime}}+1.5#Larmes transperçantes#Après avoir transpercé un ennemi, les larmes infligent {{ColorLime}}dégâts x2{{ColorWhite}} et deviennent autoguidées"},
	[463] = {"463", "Acide Sulfurique", "↑ Dégâts {{ColorLime}}+0.3#Isaac tire parfois des larmes corrosives qui détruisent les obstacles, les portes et les entrées des salles Secrètes et Super Secrètes"},
	[464] = {"464", "Marque d'Harmonie", "{{SoulHeart}} +2 cœurs d'âme#Les ressources lâchées par les ennemis d'élite et les récompenses de salle changent selon ce qui manque à Isaac"}, -- Glyph of Balance
	[468] = {"468", "Ombre", "Suit les mouvements d'Isaac avec un délai d'une seconde#Après avoir infligé 666 dégâts, elle est absorbée par Isaac et lui permet d'infliger des dégâts de contact"},
	[472] = {"472", "Bébé Roi", "Tirer immobilise tous les familiers et les fait tirer en direction des ennemis#Arrêter de tirer téléporte les familiers à Isaac"}, -- King Baby
	[474] = {"474", "Canon de Verre Brisé", "Se change en {{ColorYellow}}Canon de Verre"}, -- broken Glass Canon
	[476] = {"476", "D1", "Duplique une ressource aléatoire dans la salle#La copie peut ne pas être identique à l'original"},
	[477] = {"477", "Néant", "Absorbe tous les objets sur piédestal présents dans la salle#{{ColorYellow}}Objets activables{{ColorWhite}} : Les utilisations suivantes de Néant déclenchent l'effet de tous les objets absorbés#{{ColorYellow}}Objets passifs{{ColorWhite}} : Augmente 2 stats aléatoires"},
	[478] = {"478", "Pause !", "Immobilise tous les ennemis dans la salle#Les ennemis immobilisés peuvent infliger des dégâts de contact à Isaac#L'effet prend fin après 30 secondes ou si Isaac tire"},
	[479] = {"479", "Fondeuse", "Absorbe la babiole portée par Isaac et active son effet de manière permanente"},
	[483] = {"483", "Mama Méga", "{{Warning}} USAGE UNIQUE#{{Blank}} Provoque une onde de choc qui ravage toutes les salles de l'étage d'une énorme explosion#Si Isaac possède une bombe dorée, utiliser Mama Méga la consomme et permet à l'objet d'être utilisé une seconde fois"},
	[487] = {"487", "Épluche-Légumes", "↑ Dégâts {{ColorLime}}+0.2#↓ {{ColorError}}-1{{ColorWhite}} réceptacle de cœur#Donne un {{ColorYellow}}Cube de Viande{{ColorWhite}}{{Collectible73}}"},
	[489] = {"489", "Dé Infini", "Imite les effets de dé (sauf le {{ColorYellow}}Dé Compteur{{ColorWhite}} {{Collectible723}})#L'effet du dé peut être modifié en appuyant sur la touche {{ColorSilver}}[Lâcher] #Le temps de recharge varie selon le dé utilisé"}, -- D Infinity
	[491] = {"491", "Bébé Drogué", "Fait apparaître une pilule toutes les 7 salles#Utiliser une pilule empoisonne tous les ennemis de la salle"}, -- Acid Baby
	[492] = {"492", "Fée Agaçante", "↑ Chance {{ColorLime}}+1#Révèle la position des rochers marqués, des entrées de Souterrains {{LadderRoom}}, et des salles Secrète {{SecretRoom}} et Super Secrète {{SuperSecretRoom}}"},
	[493] = {"493", "Adrénaline", "↑ Dégâts augmentés pour chaque réceptacle de cœur vide "}, -- Adrenaline
	[494] = {"494", "Échelle de Jacob", "Les larmes d'Isaac provoquent 1 ou 2 éclairs électriques à l'impact#Les éclairs infligent la moitié des dégâts d'Isaac#Les éclairs peuvent se propager d'un ennemi à l'autre"}, -- Jacobs Ladder
	[495] = {"495", "Piment Fantôme", "Isaac tire parfois une flamme bleue qui bloque les projectiles ennemis, inflige des dégâts de contact, et disparait après 2 secondes#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à 10 Chance)"},
	[496] = {"496", "Euthanasie", "Isaac tire parfois une seringue qui tue les ennemis instantanément et se divise en 10 larmes#Les seringues infligent {{ColorLime}}dégâts x3{{ColorWhite}} aux boss#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(25% à 13 Chance)"},
	[497] = {"497", "Slip Camouflage", "Entrer dans une salle étourdit tous les ennemis et donne {{ColorLime}}vitesse +0.5#Tirer désactive l'effet, inflige des dégâts aux ennemis à proximité et donne {{ColorLime}}dégâts +10{{ColorWhite}} et {{ColorLime}} débit +10{{ColorWhite}} pendant 1 seconde"},
	[498] = {"498", "Dualité", "Fait apparaître les portes de l'Antre du Diable et du Refuge des Anges si l'une des deux doit apparaître#Entrer dans une des salles fait disparaître l'autre#Ne garantit pas l'apparition des portes"},
	[499] = {"499", "Eucharistie", "Garantit l'apparition des Refuges des Anges {{AngelRoom}}"},
	[501] = {"501", "Gosier d'Avarice", "{{Heart}} +1 réceptacle de cœur toutes les 25 pièces au compteur#{{CoinHeart}} Permet au {{ColorLightOrange}}Gardien{{ColorWhite}} d'avoir des réceptacles de pièce supplémentaires"},
	[503] = {"503", "P'tite Corne", "Isaac tire parfois une larme qui tue les ennemis instantanément et inflige de gros dégâts aux boss#Permet à Isaac d'infliger des dégâts de contact#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(20% à 15 Chance)"}, -- Little Horn
	[504] = {"504", "Bout de Crotte", "Invoque une mouche immobile qui tire sur les ennemis à proximité"}, -- Brown Nugget
	[506] = {"506", "Traîtrise", "Toucher un ennemi dans le dos avec une larme inflige le double de dégâts et le fait saigner#Le saignement inflige des dégâts à l'ennemi selon sa vitesse de déplacement"},
	[507] = {"507", "Paille Aiguisée", "Inflige les dégâts d'Isaac et retire 10% des PV totaux de tous les ennemis de la salle#Infliger des dégâts avec cet objet génère parfois un demi-cœur rouge"},
	[508] = {"508", "Rasoir de Maman", "Orbite autour d'Isaac#Bloque les projectiles#Fait saigner les ennemis au contact#Le saignement inflige des dégâts à l'ennemi selon sa vitesse#Les ennemis qui saignent répandent du sang corrosif"},
	[509] = {"509", "Nœnœil", "Orbite autour d'Isaac, inflige des dégâts de contact et tire sur les ennemis à proximité"}, -- Bloodshot Eye
	[514] = {"514", "Routeur Cassé", "Paralyse parfois les ennemis et projectiles#Les projectiles paralysés disparaissent#25% de chances de dupliquer une récompense de salle#{{LuckSmall}} Effet affecté par la statistique de chance"},
	[515] = {"515", "Cadeau Surprise", "{{Warning}} USAGE UNIQUE#Fait apparaître un objet qui provient de la banque d'objets de la salle où il a été ouvert#Peut faire apparaître {{ColorYellow}}Morceau de Charbon{{ColorWhite}}{{Collectible132}} ou {{ColorYellow}}Tas de Caca{{ColorWhite}}{{Collectible36}} à la place#{{LuckSmall}} Effet affecté par la statistique de chance"},
	[517] = {"517", "Bombes Éclair", "{{Bomb}} +7 Bombes#Permet à Isaac de poser plusieurs bombes sans délai#Les bombes d'Isaac ne se repoussent plus entre elles en explosant"},
	[521] = {"521", "Coupon", "Rend gratuit un objet payant dans la salle#Fonctionne pour les coûts en pièces et en PV#Tenir l'objet garantit un objet en solde à la Boutique {{Shop}}"},
	[523] = {"523", "Carton de Déménagement", "Utiliser l'objet absorbe jusqu'à 10 ressources ou objets dans la salle#Utiliser l'objet à nouveau pose les éléments absorbés sur le sol"}, -- Moving Box
	[524] = {"524", "Technologie Zéro", "Relie les larmes d'Isaac par des arcs électriques"}, -- Technology Zero
	[531] = {"531", "Haemolacria", "↑ Dégâts {{ColorLime}}+50% +1#↓ Portée {{ColorError}}-20%#↓ Débit diminué#Les larmes d'Isaac sont plus grosses et tirées en cloche, et se divisent en larmes plus petites à l'impact"}, -- Haemolacria
	[538] = {"538", "Sac de Billes", "Fait apparaître 3 babioles#Subir un dégât a 5% de chances d'absorber la babiole portée par Isaac et d'activer ses effets de manière permanente"},
	[541] = {"541", "Moelle", "{{EmptyBoneHeart}} +1 cœur d'os#Fait apparaître 3 cœurs rouges"}, -- Marrow
	[543] = {"543", "Terre Sacrée", "Subir un dégât fait apparaître un caca sacré entouré d'une aura#Quand Isaac se tient à l'intérieur de l'aura :#↑ Dégâts {{ColorLime}}+25%#↑ Débit {{ColorLime}}+250%#Larmes autoguidées#Chance de nullifier un dégât subi"}, -- Hallowed Ground
	[547] = {"547", "Acte de Divorce", "↑ Débit {{ColorLime}}+0.7#{{EmptyBoneHeart}} +1 cœur d'os#Fait apparaître {{ColorYellow}}Papier Mystérieux {{Trinket21}}"},
	[549] = {"549", "Os de Verre", "Remplace tous les réceptacles de cœur d'Isaac par 6 cœurs d'os#Perdre un cœur d'os tire 8 os autour d'Isaac et donne {{ColorLime}}débit +0.4{{ColorWhite}} de manière permanente"},
	[550] = {"550", "Pelle Brisée", "Le pied de {{ColorCyan}}Maman{{ColorWhite}} tente en permanence d'écraser Isaac#Utiliser cet objet cesse les attaques pour la durée d'une salle ou d'une vague#{{Warning}} Laisser l'objet dans une salle le fait disparaître#{{UltraSecretRoom}} Emporte la pelle avec toi le plus loin possible"},
	[551] = {"551", "Pelle Brisée", "Le pied de {{ColorCyan}}Maman{{ColorWhite}} n'attaque plus Isaac #{{UltraSecretRoom}} Permet de déterrer quelque chose d'enfoui dans la {{ColorTransform}}Chambre Noire"},
	[552] = {"552", "Pelle de Maman", "Ouvre une trappe vers l'étage suivant#{{UltraSecretRoom}} Permet de déterrer quelque chose d'enfoui dans la {{ColorTransform}}Chambre Noire"},
	------PAUSE-----------
	[553] = {"553", "Mucormycose", "25% de chances de tirer une spore collante#Les spores explosent après 2.5 secondes, infligent des dégâts, empoisonnent les ennemis à proximité et libèrent d'autres spores"}, --  Mucormycosis
	[554] = {"554", "BOUH", "Effraie les ennemis qui s'approchent d'Isaac"}, --  2Spooky
	[555] = {"555", "Lame de Rasoir Dorée", "↑ Dégâts {{ColorLime}}+1.2 {{ColorWhite}} et {{ColorError}}retire 5 pièces {{ColorWhite}}à Isaac#{{Coin}} +5 pièces la première fois qu'elle est ramassée"}, --  Golden Razor
	[556] = {"556", "Sulfure", "Active l'effet de {{ColorYellow}}Soufre{{ColorWhite}} {{Collectible118}} pour une salle"}, --  Sulfur
	[557] = {"557", "Biscuit Chinois", "Donne une prédiction ou fait apparaître un cœur d'âme, une carte, une rune ou une babiole"}, --  Fortune Cookie
	[558] = {"558", "Les Yeux de la Tête", "Isaac tire parfois 1 à 3 larmes supplémentaires dans une direction aléatoire"}, --  Eye Sore
	[559] = {"559", "120 Volts", "Électrocute les ennemis à proximité d'Isaac"}, --  120 Volt
	[560] = {"560", "Motus", "Subir un dégât projette 10 larmes tout autour d'Isaac#↑ Débit {{ColorLime}}+1.2{{ColorWhite}} au premier dégât subi, {{ColorLime}}+0.4{{ColorWhite}} pour chaque dégât suivant"}, --  It Hurts
	[561] = {"561", "Lait d'Amande", "↑ Débit {{ColorLime}}x4#↓ Dégâts {{ColorError}}x0.3#Chaque larme gagne un effet de ver aléatoire"}, --  Almond Milk
	[562] = {"562", "Au Fond du Trou", "Empêche les stats d'Isaac de diminuer pour le reste de la partie"}, --  Rock Bottom
	[563] = {"563", "Bombes Fabuleuses", "{{Bomb}} +5 Bombes#Les bombes d'Isaac ont des effets aléatoires"}, --  Nancy Bombs
	[564] = {"564", "Savonnette", "↑ Débit {{ColorLime}}+0.5#↑ Vitesse des tirs {{ColorLime}}+0.2#{{Warning}} Le sous-titre de l'objet est erronné, c'est bien le débit qui augmente"}, --  A Bar of Soap
	[565] = {"565", "Chiot de Sang", "Pourchasse et inflige des dégâts aux ennemis#Après avoir tué assez d'ennemis, il s'énerve et peut aussi attaquer Isaac#Il peut être calmé si Isaac lui inflige assez de dégâts ou le fait exploser"}, --  Blood Puppy
	[566] = {"566", "Attrape-Rêve", "{{HalfSoulHeart}} +1 demi-cœur d'âme à chaque nouvel étage#Révèle le boss et le contenu de la Salle du Trésor {{TreasureRoom}} pendant le cauchemar entre les étages"}, --  Dream Catcher
	[567] = {"567", "Cierge Pascal", "↑ Débit {{ColorLime}}+0.4{{ColorWhite}} pour chaque salle terminée sans subir de dégâts#Plafonne à {{ColorLime}}débit +5#Subir un dégât remet le bonus à zéro"}, --  Paschal Candle
	[568] = {"568", "Intervention Divine", "Appuyer deux fois sur un bouton de tir invoque un bouclier qui repousse les ennemis et renvoie les projectiles et lasers#{{Timer}} L'effet dure 1 seconde#{{Timer}} 3 secondes de recharge"}, --  Divine Intervention
	[569] = {"569", "Serment du Sang", "Poignarde Isaac à chaque nouvel étage et le vide de tous ses cœurs rouges sans le tuer#Chaque cœur perdu augmente les dégâts et la vitesse pour l'étage#Chaque demi-cœur perdu compte comme un dégât individuel infligé à Isaac"}, --  Blood Oath
	[570] = {"570", "Cookie en Pâte à Modeler", "Donne une couleur et un effet différent à chaque larme d'Isaac"}, --  Playdough Cookie
	[571] = {"571", "Chaussettes Orphelines", "↑ Vitesse {{ColorLime}}+0.3#{{SoulHeart}} +2 cœurs d'âme#Rend Isaac invulnérable aux flaques corrosives et aux piques"}, --  Orphan Socks
	[572] = {"572", "Œil Occulte", "↑ Dégâts {{ColorLime}}+1.0#↑ Portée {{ColorLime}}+7.5#↓ Vitesse des tirs {{ColorError}}-0.16#Permet de contrôler les larmes d'Isaac en vol"}, --  Eye of the Occult
	[573] = {"573", "Cœur Immaculé", "↑ Dégâts {{ColorLime}}+20%#{{Heart}} +1 Réceptacle de cœur#Soin complet#20% de chances de tirer une larme spectrale supplémentaire qui orbite autour d'Isaac"}, --  Immaculate Heart
	[574] = {"574", "Monstrance", "Entoure Isaac de deux auras qui infligent des dégâts aux ennemis#L'aura intérieure inflige plus de dégâts que l'aura extérieure"}, --  Monstrance
	[575] = {"575", "L'Envahisseur", "Se niche dans la tête d'Isaac et tire 4 larmes ralentissantes toutes les 1.5 secondes#Subir un dégât fait parfois sortir l'araignée#Une fois sortie, l'araignée tire deux fois plus vite et bondit sur les ennemis#{{LuckSmall}} Effet affecté par la statistique de chance"}, --  The Intruder
	[576] = {"576", "Coprophilie", "Détruire un caca fait apparaître 1 à 4 petits cacas amicaux#Leur type dépend du type de caca détruit#Tous les ennemis {{ColorCyan}}crottes{{ColorWhite}} deviennent amicaux#Remplace certains rochers par des cacas"}, --  Dirty Mind
	[577] = {"577", "Damoclès", "{{Warning}} USAGE UNIQUE#Une fois utilisé, ajoute un objet gratuit à tous les futurs piédestaux#{{Warning}} Dès qu'Isaac subit un dégât, l'épée a une chance de tomber et  le tuer à chaque seconde qui passe#Une fois l'épée tombée, les objets sur piédestal ne sont plus doublés"}, --  Damocles
	[578] = {"578", "Carafe de Limonade", "Répand une grande flaque corrosive sur le sol"}, --  Free Lemonade
	[579] = {"579", "Épée de l'Esprit", "↑ Dégâts {{ColorLime}}x3 +3.5#Remplace les larmes d'Isaac par une épée#Charger l'attaque fait tournoyer l'épée autour d'Isaac#Si les PV d'Isaac sont égaux ou supérieurs à ses réceptacles de cœur, l'épée tire des projectiles"}, --  Spirit Sword
	[580] = {"580", "Clé Rouge", "Ouvre une porte vers une salle rouge dans les murs marqués d'une porte rouge#Les salles rouges peuvent être des salles spéciales#Entrer dans une salle en dehors de la grille de 13x13 téléporte Isaac dans la salle d'erreur"}, --  Red Key
	[581] = {"581", "Mouche Oracle", "Pourchasse et détruit les projectiles ennemis#Inflige des dégâts de contact"}, --  Psy Fly
	[582] = {"582", "Psilocybe Cyanescens", "↑ Débit {{ColorLime}}+0.75#↓ Vitesse {{ColorError}}-0.03#Déforme l'écran#L'effet peut être cumulé"}, --  Wavy Cap
	[583] = {"583", "Fusée en Bocal", "{{Bomb}} +5 Bombes#Poser une bombe en tirant la propulse dans la direction du tir"}, --  Rocket in a Jar
	[584] = {"584", "Livre des Vertus", "Invoque un feu follet qui tire des larmes spectrales#Le combiner avec un autre objet activable invoque des feux follets spéciaux#Transforme le premier Pacte avec le Diable {{DevilRoom}} en Offrande des Anges {{AngelRoom}}"}, --  Book of Virtues
	[585] = {"585", "Boîte d'Albâtre", "Ne peut être chargée qu'en ramassant des cœurs d'âme#Fait apparaître 2 objets angéliques et 3 cœurs d'âme#Fait apparaître 1 objet angélique et 2 cœurs d'âme si un Pacte avec le Diable a été signé"}, --  Alabaster Box
	[586] = {"586", "Échelle Vers les Cieux", "Fait apparaître une échelle qui mène à une boutique angélique dans la première salle d'un étage#L'échelle disparaît quand Isaac quitte la salle où elle se trouve"}, --  The Stairway
	[587] = {"587", "Menorah", "<Cet objet n'existe pas>"}, -- Menorah (Unused but skripted)
	[588] = {"588", "Sol", "Révèle l'emplacement de la salle de boss {{BossRoom}}#Après avoir battu un boss:#↑ Dégâts {{ColorLime}}+3.0#↑ Chance {{ColorLime}}+1.0#Recharge entièrement l'objet activable#Retire tous les fléaux#Déclenche {{ColorYellow}}XIX-Le Soleil {{Card20}}"}, --  Sol
	[589] = {"589", "Luna", "Ajoute une salle secrète et super secrète à chaque étage#Révèle la position d'une des quatre salles secrètes#Ajoute une lumière dans les salles secrètes qui augmente le débit pour l'étage et donne un demi-cœur d'âme"}, --  Luna
	[590] = {"590", "Mercurius", "↑ Vitesse {{ColorLime}}+0.4#Les portes restent ouvertes en permanence"}, --  Mercurius
	[591] = {"591", "Venus", "{{Heart}} +1 Réceptacle de cœur#Soin complet#Envoûte les ennemis à proximité d'Isaac"}, --  Venus
	[592] = {"592", "Terra", "↑ Dégâts {{ColorLime}}+1.0#Remplace les larmes d'Isaac par des rochers#Les rochers infligent des dégâts variables, peuvent détruire les obstacles et repoussent les ennemis"}, --  Terra
	[593] = {"593", "Mars", "Appuyer 2 fois sur un bouton de déplacement fait se ruer Isaac#La ruée rend Isaac invulnérable et inflige {{ColorLime}}dégâts x3{{ColorWhite}} au contact#{{Timer}} 3 secondes de recharge"}, --  Mars
	[594] = {"594", "Jupiter", "↓ Vitesse {{ColorError}}-0.3#{{Heart}} +2 Réceptacles de cœur#Rester immobile accumule de la vitesse#Se déplacer relâche un nuage de gaz empoisonné"}, --  Jupiter
	[595] = {"595", "Saturnus", "7 larmes orbitent Isaac en entrant dans une salle#Les projectiles ennemis ont une chance d'entrer en orbite autour d'Isaac"}, --  Saturnus
	[596] = {"596", "Uranus", "Isaac tire des larmes de glace ralentissantes#Gèle les ennemis tués par ces larmes"}, --  Uranus
	[597] = {"597", "Neptunus", "Ne pas tirer augmente progressivement le débit#Tirer diminue le débit jusqu'à ce qu'il revienne à sa valeur de base"}, --  Neptunus
	[598] = {"598", "Pluto", "↑ Débit {{ColorLime}}+0.7#Diminue fortement la taille d'Isaac, ce qui lui permet de passer entre les obstacles et sous certains projectiles"}, --  Pluto
	[599] = {"599", "Tête Réduite", "Fait apparaître une Salle Maudite {{CursedRoom}} supplémentaire à chaque étage#Les Salles Maudites sont de meilleure qualité et contiennent une pièce"}, --  Voodoo Head
	[600] = {"600", "Collyre", "↑ Débit {{ColorLime}}+28%{{ColorWhite}} pour l'œil gauche"}, --  Eye Drops
	[601] = {"601", "Acte de Contrition", "↑ Débit {{ColorLime}}+0.7#{{EternalHeart}} +1 cœur éternel#Permet au Refuge des Anges d'apparaître même si un Pacte avec le Diable a été signé#Les chances d'ouvrir l'Antre du Diable ou le Refuge des Anges diminuent moins"}, --  Act of Contrition
	[602] = {"602", "Carte de Membre", "Ouvre une trappe vers l'arrière-boutique dans chaque Boutique {{Shop}}#L'arrière-boutique peut proposer des babioles, des ressources et des objets de n'importe quelle banque à la vente"}, --  Member Card
	[603] = {"603", "Batterie", "Fait apparaître 2 à 4 piles#Recharge complètement l'objet activable"}, --  Battery Pack
	[604] = {"604", "Bracelet de Maman", "Permet à Isaac de soulever et lancer les obstacles, et de retirer le crâne des hôtes#Les obstacles ramassés peuvent être transportés d'une salle à l'autre"}, --  Mom's Bracelet
	[605] = {"605", "Cuillère à Glace", "↑ Dégâts {{ColorLime}}+34%{{ColorWhite}} de l'œil droit#Retire un œil à Isaac#L'œil rebondit contre les murs de la salle, laisse une flaque de sang et inflige des dégâts de contact"}, --  The Scooper
	[606] = {"606", "Faille Oculaire", "Isaac tire parfois une larme vortex qui crée une faille là où elle atterrit#Les failles attirent les ennemis, ressources et projectiles à proximité#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(20% à 15 Chance)"}, --  Ocular Rift
	[607] = {"607", "Bébé Furoncle", "Tire des gerbes de larmes dans toutes les directions"}, --  Boiled Baby
	[608] = {"608", "Bébé Surgelé", "Tire des larmes de glace#Gèle les ennemis qu'il tue"}, --  Freezer Baby
	[609] = {"609", "D6 Éternel", "{{ColorLime}}65%{{ColorWhite}} de chances de rejouer les objets#{{ColorError}}25%{{ColorWhite}} de chances de les faire disparaître"}, --  Eternal D6
	[610] = {"610", "Gros Piaf", "Plonge sur l'ennemi responsable du premier dégât infligé à Isaac dans la salle et crée une vague de rochers#Pourchasse ensuite les ennemis"}, --  Bird Cage
	[611] = {"611", "Larynx", "Isaac hurle, inflige des dégâts et repousse les ennemis à proximité#Plus l'objet est chargé, plus le hurlement est puissant"}, --  Larynx
	[612] = {"612", "Âme Égarée", "Suit Isaac et meurt si elle subit un dégât#Si elle est encore vivante en entrant dans un nouvel étage, elle peut donner :#{{SoulHeart}} 3 cœurs d'âme#{{EternalHeart}} 2 cœurs éternels#{{AngelRoom}} 1 objet angélique#{{TreasureRoom}} 1 objet de Salle du Trésor"}, --  Lost Soul
	[613] = {"613", "Salière", "<Cet objet n'existe pas>"},
	[614] = {"614", "Hémoglobombes", "{{Heart}} +1 Réceptacle de cœur#Soigne 5 cœurs rouges#Les explosions des bombes d'Isaac répandent une flaque de sang corrosif#Permet à Isaac de sacrifier un demi-cœur pour placer une bombe s'il n'en a pas"}, --  Blood Bombs
	[615] = {"615", "P'tit Prout", "Repousse les ennemis ou projectiles sur le point de toucher Isaac, puis devient inactif jusqu'à ce qu'Isaac s'approche de lui"}, --  Lil Dumpy
	[616] = {"616", "Piment Oiseau", "Isaac tire parfois une flamme orange qui bloque les projectiles ennemis et inflige des dégâts#Les flammes rapetissent au contact ou disparaissent après 10 secondes#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à 10 Chance)"}, --  Bird's Eye
	[617] = {"617", "Magnétite", "Isaac tire parfois une larme magnétisante#Les ennemis magnétisés attirent les ressources, projectiles et ennemis #{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 5 Chance)"}, --  Lodestone
	[618] = {"618", "Tomate Pourrie", "Isaac tire parfois une larme qui marque les ennemis#Les ennemis marqués sont pris pour cible par les autres ennemis#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 5 Chance)"}, --  Rotten Tomato
	[619] = {"619", "Droit d'Aînesse", "A un effet différent pour chaque personnage"}, --  Birthright
	[620] = {"620", "", "<Cet objet n'existe pas>"},
	[621] = {"621", "Potage de Lentilles", "↑ Dégâts {{ColorLime}}+21.6#Soin complet#Le bonus de dégâts diminue progressivement sur une période de 3 minutes jusqu'à retourner à zéro#Tuer des ennemis ralentit la diminution"}, --  Red Stew
	[622] = {"622", "Genèse", "{{Warning}} USAGE UNIQUE#Retire tous les objets et ressources d'Isaac#Téléporte Isaac dans une pièce où il peut choisir entre 3 objets pour remplacer chaque objet perdu#Sortir de cette salle fait passer Isaac à l'étage suivant"}, --  Genesis
	[623] = {"623", "Clé Aiguisée", "{{Key}} +5 Clés#Permet à Isaac de jeter une de ses clés pour infliger des dégâts, détruire des obstacles ou ouvrir des serrures#Tuer un ennemi avec une clé peut faire apparaître le contenu d'un coffre"}, --  Sharp Key
	[624] = {"624", "Paquet d'Extension", "Fait apparaître 5 cartes"}, --  Booster Pack
	[625] = {"625", "Méga Champi", "↑ Dégâts {{ColorLime}}x4#↑ Portée {{ColorLime}}+2#↓ Débit {{ColorError}}-1.9#Rend Isaac géant, invulnérable et lui permet de tout détruire au contact#{{Timer}} Les effets durent 30 secondes et persistent entre les salles"}, --  Mega Mush
	[626] = {"626", "1er Morceau de Couteau", "La première partie d'un couteau"}, --  Knife Piece 1
	[627] = {"627", "2è Morceau de Couteau", "Combiné avec la {{ColorYellow}}poignée{{ColorWhite}} {{Collectible626}}, forme un couteau#Le couteau inflige des dégâts et peut ouvrir une porte faite de chair"}, --  Knife Piece 2
	[628] = {"628", "Acte de Décès", "{{Warning}} USAGE UNIQUE#Téléporte Isaac dans un étage contenant tous les objets du jeu#Après avoir choisi un objet, Isaac est renvoyé dans la salle où il a utilisé l'Acte de Décès"}, --  Death Certificate
	[629] = {"629", "Robomouche", "Suit Isaac et tire sur les projectiles ennemis pour les détruire"}, --  Bot Fly
	[630] = {"630", "", "<Cet objet n'existe pas>"},
	[631] = {"631", "Couteau de Boucher", "Découpe tous les ennemis et boss de la salle en 2 versions plus petites avec moins de vie"}, --  Meat Cleaver
	[632] = {"632", "Pendentif Maléfique", "↑ Chance {{ColorLime}}+2.0#Rend Isaac invulnérable au poison, à la terreur et au gaz toxique"}, --  Evil Charm
	[633] = {"633", "Dogma", "↑ Dégâts {{ColorLime}}+2.0#↑ Vitesse {{ColorLime}}+0.1#Permet à Isaac de voler#Entoure Isaac d'un bouclier {{HolyMantleSmall}} qui nullifie le prochain dégât subi#Si Isaac a moins de 6 cœurs, le soigne avec les cœurs nécessaires"}, --  Dogma
	[634] = {"634", "Purgatoire", "Crée une fissure dans le sol des salles hostiles#Marcher sur une fissure invoque un fantôme qui pourchasse les ennemis puis explose"}, --  Purgatory
	[635] = {"635", "Marionnette", "Fait apparaître un familier déplaçable avec les boutons de tir#Utiliser l'objet inverse la position d'Isaac avec celle du familier#Se téléporter peut détruire ou infliger des dégâts à ce qui se trouve au point d'arrivée"}, --  Stitches
	[636] = {"636", "Touche R", "{{Warning}} USAGE UNIQUE#Relance une partie depuis le premier étage, mais conserve les stats, ressources et objets obtenus par Isaac#Ne remet pas le chronomètre à zéro"}, --  R Key
	[637] = {"637", "Gouttes K.O.", "Isaac tire parfois une larme poing qui repousse fortement les ennemis et les étourdit#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 9 Chance)"}, --  Knockout Drops
	[638] = {"638", "Gomme", "Utiliser l'objet et tirer dans une direction lance une gomme qui efface un ennemi si elle le touche#Les ennemis effacés n'apparaissent plus pour le reste de la partie#{{Timer}} 1 utilisation par étage"}, --  Eraser
	[639] = {"639", "Cœur Moisi", "{{RottenHeart}} Ajoute un cœur moisi aux PV d'Isaac"}, --  Yuck Heart
	[640] = {"640", "Urne des Âmes", "Utiliser l'objet ouvre et ferme l'urne#L'urne ouverte remplace les larmes d'Isaac par des flammes bleues#Tirer quand l'urne est ouverte fait baisser les charges de l'urne#Tuer un ennemi ajoute une charge à l'urne"}, --  Urn of Souls
	[641] = {"641", "Haqeldemah", "Pend une traînée de larmes derrière Isaac dans les salles hostiles"}, --  Akeldama
	[642] = {"642", "Peau de Chagrin", "Remplace 1 réceptacle de cœur ou 2 cœurs d'âme par un cœur brisé#Fait apparaître un objet qui provient de la banque d'objets de la salle#{{Warning}} Si Isaac ne garde pas l'objet après l'avoir utilisé, il a une chance de remplacer les futurs objets de la partie"}, --  Magic Skin
	[643] = {"643", "Révélation", "{{SoulHeart}} +2 cœurs d'âme#Permet à Isaac de voler#Tirer pendant 2.5 secondes charge un rayon de lumière"}, --  Revelation
	[644] = {"644", "Prix de Consolation", "↑ Augmente la statistique la plus faible d'Isaac#Fait apparaître la ressource qui manque le plus à Isaac"}, --  Consolation Prize
	[645] = {"645", "P'tit Tératome", "Orbite autour d'Isaac et bloque les projectiles#Après avoir subi 3 dégâts, se sépare en parties plus petites puis en araignées bleues quand elles meurent#Réapparaît 5 secondes après avoir disparu"}, --  Tinytoma
	[646] = {"646", "Bombes Sulfureuses", "{{Bomb}} +5 Bombes#Les explosions des bombes d'Isaac crachent 4 lasers de sang en forme de +"}, --  Brimstone Bombs
	[647] = {"647", "4.5 Volts", "Les objets activables ne se rechargent plus en terminant les salles mais en infligeant des dégâts"}, --  4.5 Volt
	[648] = {"648", "Broyeur de Pilules", "<Cet objet n'existe pas>"},
	[649] = {"649", "P'tite Prunelle", "Se propulse en diagonale et tire des larmes derrière elle"}, --  Fruity Plum
	[650] = {"650", "Flute Prunelle", "Invoque une {{ColorCyan}}Prunelle{{ColorWhite}} amicale dans la salle pour 10 secondes"}, --  Plum Flute
	[651] = {"651", "Étoile de Bethléem", "Se déplace lentement vers la salle de boss {{BossRoom}}#{{Blank}} Quand Isaac se tient à l'intérieur de l'aura :#↑ Dégâts {{ColorLime}}x1.8#↑ Débit {{ColorLime}}x2.5#Larmes autoguidées#Chance de nullifier les dégâts subis"}, --  Star of Bethlehem
	[652] = {"652", "Bébé Congelé", "Peut être poussé par Isaac#Ralentit les ennemis et inflige des dégâts de contact#Gèle les ennemis qu'il tue"}, --  Cube Baby
	[653] = {"653", "Vade Retro", "Quand Isaac tient cet objet, tuer un ennemi invoque un fantôme rouge#Utiliser l'objet fait exploser les fantômes"}, --  Vade Retro
	[654] = {"654", "Doctorat Falsifié", "{{BlackHeart}} +1 cœur noir#Convertit toutes les pilules en pilules négatives et les identifie#↑ Les pilules qui diminuent les stats augmentent les dégâts#{{BlackHeart}} Les autres pilules font apparaître un cœur noir"}, --  False PHD
	[655] = {"655", "Toupie", "Orbite autour d'Isaac, bloque les projectiles ennemis et inflige des dégâts de contact#Maintenir enfoncé le bouton d'utilisation donne {{ColorLime}}vitesse +0.5{{ColorWhite}} et augmente fortement la vitesse de rotation des familiers"}, --  Spin to Win
	[656] = {"656", "Damoclès", "<Cet objet ne peut pas être obtenu>"}, -- Damocles
	[657] = {"657", "Vascularite", "Tuer un ennemi le fait éclater en larmes qui héritent des effets de celles d'Isaac"}, --  Vasculitis
	[658] = {"658", "Cellule Géante", "Subir un dégât fait apparaître un Micro-Isaac#Le Micro-Isaac pourchasse et tire sur les ennemis à proximité"}, --  Giant Cell
	[659] = {"659", "Tropicamide", "↑ Portée {{ColorLime}}+1.5#↑ Augmente la taille des larmes d'Isaac"}, --  Tropicamide
	[660] = {"660", "Cartomancie", "Fait apparaître deux vortex dans la première salle de chaque étage#Entrer dans un vortex téléporte Isaac :#{{Blank}} {{ColorRed}}Rouge {{ColorWhite}}= Salle du Boss#{{Blank}} {{ColorYellow}}Jaune {{ColorWhite}}= Salle du Trésor#{{Blank}} {{ColorBlue}}Bleu {{ColorWhite}} = Salle Secrète#Les vortex disparaissent si Isaac quitte la salle"}, --  Card Reading
	[661] = {"661", "Quintuplés", "Transforme jusqu'à 5 ennemis tués par salle en familiers immobiles"}, --  Quints
	[662] = {"662", "Pacifisme", "<Cet objet n'existe pas>"}, -- Pacifist (Cut item)
	[663] = {"663", "Bec et Ongles", "Toutes les 6 secondes, Isaac clignote puis devient invulnérable pendant 1 seconde"}, --  Tooth and Nail
	[664] = {"664", "Goinfrerie", "{{Heart}} +1 Réceptacle de cœur#Les objets sur piédestal alternent avec un objet de nourriture#Choisir la nourriture donne {{ColorLime}}dégâts +3.6{{ColorWhite}} et augmente deux stats#Les dégâts donnés par les objets s'estompent avec le temps"}, --  Binge Eater
	[665] = {"665", "Œil de Guppy", "Révèle le contenu des coffres, sacs, feux et gardiens avant qu'ils ne soient ouverts ou détruits"}, --  Guppy's Eye
	[666] = {"666", "", "<Cet objet n'existe pas>"},
	[667] = {"667", "Gardien en Peluche", "Fait apparaître le {{ColorLightOrange}}Gardien{{ColorWhite}} en tant que personnage secondaire#À sa mort, invoque des araignées bleues et disparait de l'inventaire"}, --  Strawman
	[668] = {"668", "Lettre de Papa", "Démarre l'Ascension"}, --  Dad's Note
	[669] = {"669", "Saucisson", "↑ Dégâts {{ColorLime}}+0.5#↑ Vitesse {{ColorLime}}+0.2#↑ Vitesse des tirs {{ColorLime}}+1.2#↑ Portée {{ColorLime}}+0.16#↑ Chance {{ColorLime}}+1.0#{{AngelDevilChanceSmall}} Chances de Pacte avec le Diable ou d'Offrande des Anges {{ColorLime}}+6.9% #{{PlanetariumChanceSmall}} Chances de planétarium {{ColorLime}}+6.9%"}, --  Sausage
	[670] = {"670", "Plus d'Options ?", "Permet à Isaac de choisir entre 2 récompenses après avoir terminé une salle"}, --  Options?
	[671] = {"671", "Cœur Confit", "↑ Ramasser un cœur rouge augmente une stat aléatoire de manière permanente"}, --  Candy Heart
	[672] = {"672", "Une Livre de Chair", "Les Pactes avec le Diable coûtent de l'argent#Les objets de la boutique coûtent des PV#Les ressources de la boutique ne coûtent plus d'argent mais sont entourées de piques"}, --  A Pound of Flesh
	[673] = {"673", "Rédemption", "Entrer dans l'Antre du Diable et ne toucher à rien donne un cœur d'âme et {{ColorLime}}dégâts +1.0{{ColorWhite}} au prochain étage"}, --  Redemption
	[674] = {"674", "Chaînes de l'Esprit", "Subir un dégât fatal transforme Isaac en fantôme enchaîné#Isaac peut continuer à se battre avec un demi-cœur de vie et ressuscite après 10 secondes#L'objet se recharge en ramassant un cœur d'âme"}, --  Spirit Shackles
	[675] = {"675", "Orbe Fêlé", "{{Blank}} Subir un dégât :#Révèle une salle de l'étage#Déverrouille les portes qui nécessitent des ressources#Peut ouvrir les portes uniques et spéciales"}, --  Cracked Orb
	[676] = {"676", "Cœur Vide", "{{EmptyHeart}} +1 réceptacle de cœur vide si Isaac ne possède qu'un cœur rouge ou moins en changeant d'étage"}, --  Empty Heart
	[677] = {"677", "Projection Astrale", "Subir un dégât arrête le temps pendant 3 secondes#Durant cette période, Isaac devient un fantôme et se sépare de son corps#Sous cette forme, Isaac vole, tire des larmes spectrales et nullifie le premier dégât subi"}, --  Astral Projection
	[678] = {"678", "Césarienne", "Remplace les larmes d'Isaac par des fœtus qui pourchassent les ennemis"}, --  C Section
	[679] = {"679", "P'tit Abaddon", "Charge l'effet de {{ColorYellow}}Gouffre du Néant{{ColorWhite}} {{Collectible399}} quand Isaac tire et le crache quand les boutons de tir sont relâchés"}, --  Lil Abaddon
	[680] = {"680", "Tourista", "Se charge quand Isaac tire#Quand la barre est chargée, relâcher les boutons de tir fait déféquer Isaac en une courte ligne droite"}, --  Montezuma's Revenge
	[681] = {"681", "P'tit Vortex", "S'élance dans la direction des tirs d'Isaac#Inflige des dégâts de contact et consomme les ressources sur son chemin#Chaque ressource absorbée augmente sa taille, ses dégâts et fait apparaître une mouche bleue#Toutes les 4 ressources consommées, fait apparaître un vortex vers une salle inexplorée"}, --  Lil Portal
	[682] = {"682", "Ver de Nerf", "Un tentacule sort parfois du sol pour immobiliser un ennemi et lui infliger des dégâts"}, --  Worm Friend
	[683] = {"683", "Épines Osseuses", "Tuer un ennemi le transforme en os#Les os bloquent les projectiles et infligent des dégâts de contact"}, --  Bone Spurs
	[684] = {"684", "Âme Affamée", "Tuer un ennemi le transforme parfois en un fantôme qui pourchasse les ennemis et inflige des dégâts de contact, puis explose après 5 secondes#Isaac est immunisé à ces explosions"}, --  Hungry Soul
	[685] = {"685", "Bocal de Feux Follets", "Invoque un feu follet aléatoire qui tire, bloque les projectiles et inflige des dégâts de contact#Chaque utilisation invoque un feu follet de plus, jusqu'à 12"}, --  Jar of Wisps
	[686] = {"686", "Pendentif des Âmes", "↑ Ramasser un cœur d'âme augmente une stat aléatoire de manière permanente#Fait apparaître un cœur d'âme"}, --  Soul Locket
	[687] = {"687", "Amis Imaginaires", "Invoque un monstre allié qui imite les mouvements et attaques d'Isaac"}, --  Friend Finder
	[688] = {"688", "Enfant Intérieur", "↑ +1 vie#À sa mort, Isaac ressuscite dans la même salle avec :#{{HalfHeart}} Un demi-cœur rouge#↑ Vitesse {{ColorLime}}+0.2#Taille diminuée"}, --  Inner Child
	[689] = {"689", "Couronne Corrompue", "Les objets sur piédestaux alternent rapidement entre 5 objets#4 de ces objets proviennent de la banque d'objets de la salle"}, --  Glitched Crown
	[690] = {"690", "Haricot Confit", "Les ennemis qui entrent en contact avec Isaac rebondissent sur son ventre#50% de chances de nullifier un dégât subi au contact#50% de chances de renvoyer un projectile ennemi"}, --  Belly Jelly
	[691] = {"691", "Orbe Sacré", "Empêche les objets de qualité {{Quality0}} et {{Quality1}} d'apparaître#33% de chances de rejouer un objet de qualité {{Quality2}} en objet de qualité égale ou supérieure"}, --  Sacred Orb
	[692] = {"692", "Pacte de Sang", "Fait apparaître des piques dans l'Antre du Diable {{DevilRoom}}#{{Blank}} Subir un dégât de ces piques peut donner :#{{Coin}} 6 pièces {{ColorSilver}}(35%)#↑ Dégâts {{ColorLime}}+0.5{{ColorWhite}} {{ColorSilver}}(15%)#{{BlackHeart}} 2 cœurs noirs {{ColorSilver}}(5%)#{{RedTreasureRoom}} Objet diabolique {{ColorSilver}}(2%)#Transformation en Léviathan {{ColorSilver}}(1%)"}, --  Sanguine Bond
	[693] = {"693", "La Nuée", "9 mouches orbitent Isaac#Une mouche qui bloque un projectile se transforme en mouche bleue#Terminer une salle invoque une mouche"}, --  The Swarm
	[694] = {"694", "Brise-Cœur", "Brise 3 des cœurs d'Isaac#↑ Dégâts {{ColorLime}}+0.25{{ColorWhite}} pour chaque cœur brisé#Chaque coup fatal laisse Isaac en vie mais brise deux cœurs supplémentaires#Isaac meurt si tous ses cœurs sont brisés"}, --  Heartbreak
	[695] = {"695", "Souffle de Sang", "{{Blank}} Subir un dégât donne :#↑ Débit augmenté#↑ Vitesse augmentée#{{Timer}} L'effet dure un étage"}, --  Bloody Gust
	[696] = {"696", "Salvation", "Entoure Isaac d'un halo#Les ennemis qui restent assez longtemps dans le halo sont frappés d'un rayon de lumière en forme de croix#Le halo grandit à chaque dégât subi dans l'étage"}, --  Salvation
	[697] = {"697", "Jumeau Évanescent", "Clone le boss de l'étage dans la Salle du Boss {{BossRoom}}#Tuer le clone donne un objet supplémentaire#Le boss et son clone sont plus lents et n'ont que 75% de leurs PV"}, --  Vanishing Twin
	[698] = {"698", "Jumeaux Malicieux", "Se placent aux côtés d'Isaac et tirent les mêmes larmes que lui#Infligent chacun 37.5% des dégâts d'Isaac"}, --  Twisted Pair
	[699] = {"699", "Rage d'Azazel", "Toutes les 4 salles terminées, Isaac clignote en rouge et vomit un énorme laser de sang lorsqu'il rentre dans une salle hostile"}, --  Azazel's Rage
	[700] = {"700", "Résonance", "Utiliser une carte, pilule ou rune déclenche aussi l'effet des 3 dernières cartes, pilules ou runes utilisées#Ne fonctionne qu'avec les cartes, pilules et runes utilisées après avoir obtenu l'objet"}, --  Echo Chamber
	[701] = {"701", "Tombeau d'Isaac", "Fait apparaître un Coffre Antique {{DirtyChest}} dans la salle de départ de chaque étage#Les coffres antiques peuvent contenir :#{{SoulHeart}} Cœurs d'âme#{{Trinket}} Babioles#{{Collectible}} Objet angélique#{{Collectible}} Objet de Papa ou Maman"}, --  Isaac's Tomb
	[702] = {"702", "Esprit Vengeur", "Subir un dégât invoque un feu follet invulnérable pour la durée de l'étage#Les feux follets infligent des dégâts de contact mais ne bloquent pas les projectiles"}, --  Vengeful Spirit
	[703] = {"703", "Ésaü Junior", "Transforme Isaac en Ésaü Junior et inversement#Ésaü Junior peut voler, possède 3 cœurs noirs et a des objets et PV séparés"}, --  Esau Jr.
	[704] = {"704", "Frénésie", "↑ Vitesse {{ColorLime}}+0.4#↑ Dégâts {{ColorLime}}+3.0#↑ Débit augmenté#Remplace les larmes par une attaque au corps-à-corps#{{Timer}} L'effet dure 5 secondes"}, --  Berserk!
	[705] = {"705", "Arts Obscurs", "{{ColorLime}}Vitesse +1.0{{ColorWhite}}#Permet à Isaac de traverser les ennemis et projectiles pendant 1 seconde#Paralyse et inflige des dégâts à tous les ennemis traversés"}, --  Dark Arts
	[706] = {"706", "Abysse", "Absorbe tous les objets de la salle et invoque un locuste abyssal pour chaque objet détruit#Les locustes abyssaux sont invulnérables et foncent dans la direction où tire Isaac"}, --  Abyss
	[707] = {"707", "Souper", "{{Heart}} +1 Réceptacle de cœur#Soigne un cœur rouge"}, --  Supper
	[708] = {"708", "Agrafeuse", "↑ Dégâts {{ColorLime}}+1.0#Toutes les larmes d'Isaac sont tirées de l'œil droit"}, --  Stapler
	[709] = {"709", "Suplex !", "Permet à Isaac de foncer sur un ennemi et de l'écraser au sol#L'attaque augmente en puissance et en portée selon la taille d'Isaac"}, --  Suplex!
	[710] = {"710", "Sac de Fabrication", "Permet à Isaac de ramasser jusqu'à 8 ressources#Maintenir le bouton d'activation quand le sac est plein fabrique un objet#La qualité de l'objet dépend de la qualité des ressources ramassées"}, --  Bag of Crafting
	[711] = {"711", "Inversion", "Affiche un deuxième objet transparent sur les piédestaux#Utiliser l'objet inverse l'objet solide et l'objet transparent#L'objet transparent disparait s'il est laissé seul sur un piédestal#Ne fonctionne qu'avec les objets déjà présents dans une salle"}, --  Flip
	[712] = {"712", "Lemegeton", "Invoque un feu follet violet en forme d'objet et donne son effet#L'effet est perdu si le feu follet est détruit#25% de chances d'invoquer un objet provenant de la banque d'objets de la salle"}, --  Lemegeton
	[713] = {"713", "Sumptorium", "Convertit un demi-cœur en un familier pâté#Le type de pâté change selon le cœur sacrifié"}, --  Sumptorium
	[714] = {"714", "Rappel", "Ramène le corps du Délaissé à l'Âme"}, --  Recall
	[715] = {"715", "Garder", "Stocke une bombe caca à la première utilisation#Utilise la bombe stockée à la deuxième utilisation"}, --  Hold
	[716] = {"716", "Bourse du Gardien", "↑ Dépenser 3 pièces augmente la stat de portée, vitesse ou dégâts#Fait apparaître 3 pièces et une clé"}, --  Keeper's Sack
	[717] = {"717", "Amies du Gardien", "Détruire un obstacle invoque 2 araignées bleues#Les obstacles invoquent des araignées bleues dans les salles hostiles"}, --  Keeper's Kin
	[718] = {"718", "Corde du Gardien", "<Cet objet n'existe pas>"}, -- Keepers Rope (Cut item)
	[719] = {"719", "Boîte du Gardien", "Fait apparaître un objet ou une ressource à acheter"}, --  Keeper's Box
	[720] = {"720", "Bocal de N'Importe Quoi", "Fait apparaître selon le nombre de charges de l'objet :#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}}#{{Blank}} 4:{{Key}} 5:{{Heart}} 6:{{Pill}}#{{Blank}} 7:{{Card}}8:{{SoulHeart}} 9:{{GoldenHeart}}#{{Blank}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} 12: Effet aléatoire"}, --  Everything Jar
	[721] = {"721", "TMTRAINER", "Corrompt tous les futurs objets de la partie#Les effets et icônes des objets corrompus sont complètement aléatoires"}, --  TMTRAINER
	[722] = {"722", "Anima Sola", "Empêche l'ennemi le plus proche de bouger et d'attaquer#{{Timer}} L'effet dure 5 secondes"}, --  Anima Sola
	[723] = {"723", "Dé Compteur", "Retire 1 à l'ID interne de tous les objets de la salle"}, --  Spindown Dice
	[724] = {"724", "Hypercoagulation", "Subir un dégât fait apparaître un cœur ou demi-cœur rouge#Ces cœurs disparaissent après 1.5 secondes s'ils ne sont pas ramassés"}, --  Hypercoagulation
	[725] = {"725", "Intestin Irrité", "Infliger suffisamment de dégâts fait clignoter Isaac en rouge#Relâcher les boutons de tir quand Isaac clignote lance un caca jetable"}, --  IBS
	[726] = {"726", "Hémoptysie", "Appuyer deux fois sur un bouton de tir fait éternuer Isaac#L'éternuement inflige des dégâts et rend les ennemis plus vulnérables aux lasers de sang"}, --  Hemoptysis
	[727] = {"727", "Bombes Fantômes", "{{Bomb}} +5 Bombes#Les bombes d'Isaac invoquent des fantômes qui pourchassent les ennemis, infligent des dégâts de contact et explosent après 10 secondes"}, --  Ghost Bombs
	[728] = {"728", "Gello", "Attache un familier démoniaque à Isaac#Le familier tire des larmes identiques à celles d'Isaac#{{Timer}} L'effet dure une salle"}, --  Gello
	[729] = {"729", "Décapitation", "Lance la tête d'Isaac dans la direction où il tire et inflige des dégâts de contact#Utiliser l'objet à nouveau ou toucher la tête permet de la réattacher"}, --  Decap Attack
	[730] = {"730", "Œil de Verre", "↑ Dégâts {{ColorLime}}+0.75#↑ Chance {{ColorLime}}+1"}, -- Glass Eye
	[731] = {"731", "Orgelet", "↑ Dégâts {{ColorLime}}+28%#↑ Portée {{ColorLime}}+7.0#↓ Vitesse des tirs {{ColorError}}-0.3#Ne s'applique qu'à l'œil droit"}, -- Stye
	[732] = {"732", "Bague de Maman", "↑ Dégâts {{ColorLime}}+1.0#Fait apparaître une rune ou une pierre d'âme"}, -- Mom's Ring

}
EID:updateDescriptionsViaTable(repCollectibles, EID.descriptions[languageCode].collectibles)

EID.descriptions[languageCode].birthright ={
	{"Isaac", "Isaac", "Les piédestaux alternent entre deux objets"},
	{"Magdalene", "Marie", "{{Heart}} +1 réceptacle de cœur#Permet d'avoir jusqu'à 18 PV"},
	{"Cain", "Caïn", "↑ Chance {{ColorLime}}+1#Une arcade {{ArcadeRoom}} apparaît dans tous les étages hors {{ColorTransform}}Coffre{{ColorWhite}} et {{ColorTransform}}Chambre Noire{{ColorWhite}}#Augmente fortement les chances de gagner aux jeux de hasard"},
	{"Judas", "Judas", "Donne Le {{ColorYellow}}Livre de Bélial{{ColorWhite}} {{Collectible34}} si Judas ne le possède pas#Le {{ColorYellow}}Livre de Bélial{{ColorWhite}} {{Collectible34}} devient un objet passif#L'augmentation de dégâts qu'il octroie grandit en fonction du nombre de charges de l'objet activable"},
	{"???", "???", "Double les cœurs d'âme donnés par les objets qui augmentent les PV"},
	{"Eve", "Ève", "L'effet de {{ColorYellow}}Grande Prostituée{{ColorWhite}} {{Collectible122}} est toujours actif, peu importe les PV d'Ève#L'{{ColorYellow}}Oiseau Mort{{ColorWhite}} {{Collectible117}} est toujours éveillé"},
	{"Samson", "Samson", "{{ColorYellow}}Soif de Sang{{ColorWhite}} {{Collectible157}} peut augmenter les dégâts 4 fois supplémentaires"},
	{"Azazel", "Azazel", "Le laser d'Azazel double en largeur"},
	{"Lazarus", "Lazare", "Mourir et se réincarner en Lazare Ressuscité donne {{ColorLime}}dégâts +21.6#Le bonus de dégâts s'estompe progressivement"},
	{"Eden", "Éden", "Fait apparaître 3 objets provenant de banques aléatoires#Un seul d'entre eux peut être choisi"},
	{"The Lost", "L'Égaré", "Empêche les objets inutiles à l'Égaré d'apparaître#Inclut les objets qui soignent, augmentent les PV, permettent de voler, etc."},
	{"Lazarus Risen", "Lazare Ressuscité", "↑ Dégâts {{ColorLime}}+21.6#Le bonus de dégâts s'estompe progressivement"},
	{"Black Judas", "Judas des Ombres", "Donne Le {{ColorYellow}}Livre de Bélial{{ColorWhite}} {{Collectible34}} si Judas ne le possède pas#Le {{ColorYellow}}Livre de Bélial{{ColorWhite}} {{Collectible34}} devient un objet passif#L'augmentation de dégâts qu'il octroie grandit en fonction du nombre de charges de l'objet activable"},
	{"Lilith", "Lilith", "Les familiers se positionnent devant le visage de Lilith"},
	{"Keeper", "Le Gardien", "{{CoinHeart}} +1 réceptacle de pièce#Permet d'avoir jusqu'à 4 PV"},
	{"Apollyon", "Apollyon", "Utiliser {{ColorYellow}}Néant{{ColorWhite}} {{Collectible477}} peut régurgiter un objet absorbé#Régurgiter un objet ne retire pas les bonus de stats#Les objets régurgités peuvent être absorbés à nouveau"},
	{"The Forgotten", "Le Délaissé", "L'âme est libérée de ses chaînes et peut se déplacer librement"},
	{"The Forgotten Soul", "L'Âme du Délaissé", "L'âme est libérée de ses chaînes et peut se déplacer librement"},
	{"Bethany", "Béthanie", "Utiliser un objet activable avec des charges bleues ne consomme parfois pas de cœurs d'âme"},
	{"Jacob", "Jacob", "Le personnage qui ramasse le Droit d'Aînesse obtient une copie de trois des objets passifs de l'autre personnage"},
	{"Esau", "Ésaü", "Le personnage qui ramasse le Droit d'Aînesse obtient une copie de trois des objets passifs de l'autre personnage"},
	{"Tainted Isaac", "Isaac Impur", "↑ +4 emplacements d'objets"},
	{"Tainted Magdalene", "Marie Impure", "{{Heart}} +1 réceptacle de cœur permanent"},
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
	{"Tainted Keeper", "Le Gardien Impur", "Les pièces lâchées par les ennemis sont attirées par le Gardien"},
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

EID.descriptions[languageCode].bingeEaterBuffs = {
	[22] = "↑ Débit {{ColorLime}}+0.5 #↑ Portée {{ColorLime}}+1.5", -- Lunch
	[23] = "↑ Débit {{ColorLime}}+0.5#↑ Vitesse des tirs {{ColorLime}}+0.2", -- Dinner
	[24] = "↑ Dégâts {{ColorLime}}+1.0#↑ Vitesse {{ColorLime}}+0.2", -- Dessert
	[25] = "↑ Vitesse {{ColorLime}}+0.2#↑ Portée {{ColorLime}}+1.5", -- Breakfast
	[26] = "↑ Dégâts {{ColorLime}}+1.0#↑ Portée {{ColorLime}}+1.5", -- Rotten Meat
	[456] = "↑ Dégâts {{ColorLime}}+1.0#↑ Chance {{ColorLime}}+1.0", -- Midnight Snack
	[346] = "↑ Vitesse des tirs {{ColorLime}}+0.2#↑ Chance {{ColorLime}}+1.0", -- A Snack
	[707] = "↑ Débit {{ColorLime}}+0.5#↑ Chance {{ColorLime}}+1.0", -- Supper
}

EID.descriptions[languageCode].bookOfBelialBuffs = {
	[40] = "Déclenche également l'effet du {{ColorYellow}}Necronomicon{{ColorWhite}} {{Collectible35}}", -- Kamikaze!
	[126] = "Déclenche également l'effet du {{ColorYellow}}Necronomicon{{ColorWhite}} {{Collectible35}}", -- Razor Blade
	[127] = "Dégâts augmentés pour la durée de l'étage suivant", -- Forget me Now
	[133] = "Dégâts augmentés à chaque utilisation", -- Guppy's Paw
	[135] = "Dégâts augmentés pour la durée d'une salle", -- IV Bag
	[147] = "La pioche est plus résistante, plus rapide, repousse les ennemis plus loin, inflige des dégâts de feu et trouve plus de récompenses dans les obstacles", -- Notched Axe
	[186] = "Déclenche également l'effet de la {{ColorYellow}}Lame de Rasoir{{ColorWhite}} {{Collectible126}}", -- Blood Rights
	[282] = "Laisse une traînée de flammes derrière Judas", -- How to Jump
	[290] = "Retire un cœur du Bocal, augmente les dégâts et laisse une flaque corrosive au sol", -- The Jar
	[295] = "A une chance de déclencher l'effet de la {{ColorYellow}}Lame de Rasoir Dorée{{ColorWhite}} {{Collectible555}}", -- Magic Fingers
	[297] = "Invoque un familier démonique en plus des autres récompenses", -- Pandora's Box
	[323] = "Augmente les dégâts de l'éclat de larmes", -- Isaac's Tears
	[326] = "Remplace les rayons de lumière par une aura enflammée#Effectuer un blocage parfait augmente temporairement les dégâts et déclenche l'effet du {{ColorYellow}}Necronomicon {{Collectible35}}", -- Breath of Life
	[352] = "Déclenche l'effet du Livre de Bélial quand le canon se brise#Le bonus de dégâts persiste jusqu'à ce que le canon soit réparé", -- Glass Cannon
	[383] = "Augmente les dégâts des éclats de larmes", -- Tear Detonator
	[475] = "Réincarne Judas en Judas Obscur s'il a une vie supplémentaire", -- Plan C
	[482] = "Remplace le dernier objet obtenu par {{ColorYellow}}Pentagramme{{ColorWhite}} {{Collectible51}}}", -- Clicker
	[487] = "Augmente le bonus de dégâts", -- Potato Peeler
	[536] = "Dégâts {{ColorLime}}+10.8{{ColorWhite}} de manière temporaire pour chaque familier sacrifié", -- Sacrificial Altar
	[555] = "Inflige des dégâts à tous les ennemis de la salle et les transforme en or", -- Golden Razor
	[563] = "Les fantômes se déplacent en direction des ennemis", -- Vade Retro
	[577] = "↑ Dégâts augmentés", -- Damocles
	[582] = "Augmente les dégâts d'Isaac pour la durée de l'étage selon le nombre d'utilisations simultanées de l'objet", -- Wavy Cap
	[585] = "Change les récompenses en 2 cœurs noirs et 1 objet diabolique#Donne 3 cœurs noirs et 2 objets si un pacte avec le diable a été signé", -- Alabaster Box
	[622] = "Donne le {{ColorYellow}}Pentagramme{{ColorWhite}} {{Collectible51}}", -- Genesis
	[623] = "Déclenche également l'effet de la Lame de Rasoir {{Collectible126}}", -- Sharp Key
	[635] = "Tire un trait des {{ColorYellow}}Arts Obscurs{{ColorWhite}} {{Collectible705}} entre les deux points de téléportation", -- Stitches
	[640] = "Crache un laser de sang au lieu de flammes#Inflige 50% de dégâts supplémentaires", -- Urn of Souls
	[642] = "↑ Dégâts augmentés", -- Magic Skin
	[653] = "Les fantômes invoqués se déplacent en direction des ennemis", -- Vade Retro
	[685] = "Invoque des feux follets diaboliques qui augmentent les chances de Pacte avec le Diable", -- Jar of Wisps
	[705] = "Chaque ennemi traversé augmente les dégâts d'Isaac", -- Dark Arts
	[710] = "Ramasser des cœurs rouges peut les transformer en cœurs noirs", -- Bag of Crafting
	[729] = "Augmente fortement les dégâts et le débit d'Isaac quand sa tête est détachée", -- Decap Attack
}

-- Book of Virtues wisp types
EID.descriptions[languageCode].bookOfVirtuesWisps = {
	[33] = "Les feux follets tirent des larmes autoguidées", -- The Bible
	[34] = "Ces feux follets infligent le double de dégâts", -- The Book of Belial
	[35] = "Les feux follets tirent parfois une larme terrifiante et déclenchent l'effet du Necronomicon une fois détruits", -- The Necronomicon
	[36] = "Les feux follets tirent parfois une larme E-coli", -- The Poop
	[37] = "Les feux follets font apparaître de petites bombes autoguidées une fois détruits", -- Mr. Boom
	[38] = "Les feux follets tirent des larmes rapides mais peu précises", -- Tammy's Head
	[39] = "Les feux follets tirent parfois une larme pétrifiante", -- Mom's Bra
	[40] = "Les feux follets tirent des larmes explosives et explosent une fois détruits", -- Kamikaze!
	[41] = "Les feux follets tirent parfois une larme terrifiante", -- Mom's Pad
	[42] = "Les feux follets tirent parfois une larme Ipéca", -- Bob's Rotten Head
	[44] = "Les feux follets ont 10% de chances de téléporter un ennemi touché", -- Teleport!
	[45] = "Les ennemis tués par les feux follets ont 20% de chances de lâcher un cœur", -- Yum Heart
	[47] = "Les feux follets infligent la moitié de dégâts mais lancent des bombes en direction du curseur", -- Doctor's Remote
	[49] = "Les feux follets ne tirent pas et crachent un laser quand Isaac utilise l'objet", -- Shoop da Whoop!
	[56] = "Les feux follets tirent des larmes rapides à courte portée et laissent une traînée corrosive", -- Lemon Mishap
	[58] = "Les feux follets sont invulnérables aux projectiles", -- Book of Shadows
	[65] = "Les feux follets font apparaître une bombe amorcée une fois détruits", -- Anarchist Cookbook
	[66] = "Les feux follets ralentissent les ennemis pendant 3 secondes une fois détruits", -- The Hourglass
	[77] = "Les feux follets infligent plus de dégâts de contact", -- My Little Unicorn
	[78] = "Les feux follets ne peuvent pas tirer et invoquent un P'tit Cavalier temporaire une fois détruits", -- Book of Revelations
	[83] = "Les feux follets tirent des larmes répulsives", -- The Nail
	[84] = "Feux follets normaux", -- We Need to Go Deeper!
	[85] = "Les feux follets lâchent une carte une fois détruits", -- Deck of Cards
	[86] = "Les feux follets tirent des dents", -- Monstro's Tooth
	[93] = "Les feux follets tirent des larmes anti-gravité et parfois une larme terrifiante", -- The Gamekid
	[97] = "Invoque un de des feux follets de ces objets : {{Collectible65}}{{Collectible42}}{{Collectible85}}{{Collectible102}}{{Collectible37}}{{Collectible177}}{{Collectible49}}{{Collectible45}}", -- The Book of Sin
	[102] = "Les feux follets infligent un effet différent aux ennemis en fonction de leur couleur", -- Mom's Bottle of Pills
	[105] = "Invoque un feu follet pour chaque objet rejoué", -- The D6
	[107] = "Les feux follets tirent des larmes transperçantes", -- The Pinking Shears
	[111] = "Les feux follets pètent une fois détruits", -- The Bean
	[123] = "Les feux follets tirent des larmes aléatoires", -- Monster Manual
	[124] = "Invoque le feu follet de l'objet imité", -- Dead Sea Scrolls
	[126] = "Les feux follets sont très résistants", -- Razor Blade
	[127] = "Invoque un feu follet invulnérable pour l'étage", -- Forget Me Now
	[130] = "Les feux follets ne peuvent pas tirer mais foncent dans la direction des tirs d'Isaac", -- A Pony
	[133] = "Invoque 3 feux follets très résistants", -- Guppy's Paw
	[135] = "Feux follets normaux", -- IV Bag
	[136] = "Les feux follets tirent parfois des larmes tomates#Les ennemis touchés sont pris pour cible par les autres ennemis", -- Best Friend
	[137] = "Invoque 1 feu follet par bombe détonée#Les larmes des feux follets peuvent être explosées à distance", -- Remote Detonator
	[145] = "À la place de mouches, invoque des feux follets qui se transforment en mouches bleues une fois détruits", -- Guppy's Head
	[146] = "Les feux follets tirent des larmes autoguidées", -- Prayer Card
	[147] = "Briser des obstacles peut invoquer 1 feu follet parmi 5 avec des effets différents", -- Notched Axe
	[158] = "Les feux follets tirent sur les ennemis à proximité", -- Crystal Ball
	[160] = "Frappe d'un rayon de lumière les ennemis qui entrent en contact avec les feux follets", -- Crack the Sky
	[164] = "Invoque un feu follet pour la durée d'une salle", -- The Candle
	[166] = "Détruit toutes les ressources et a une chance d'invoquer un feu follet pour chacune", -- D20
	[171] = "Les feux follets tirent parfois une larme ralentissante", -- Spider Butt
	[175] = "Les feux follets ouvrent toutes les serrures qu'ils touchent", -- Dad's Key
	[177] = "Invoque un feu follet différent en fonction de la récompense gagnée", -- Portable Slot
	[181] = "Les feux follets tirent parfois une larme sacrée", -- White Pony
	[186] = "Les feux follets sont très résistants", -- Blood Rights
	[192] = "Les feux follets tirent des larmes autoguidées", -- Telepathy for Dummies
	[263] = "Les ennemis tués par les feux follets ont 15% de chances de lâcher une rune#Les feux follets lâchent une rune une fois détruits", -- Clear Rune
	[282] = "Invoque jusqu'à 6 feux follets immobiles", -- How to Jump
	[283] = "Rejoue tous les feux follets et en ajoute 1#Ne rejoue pas le {{ColorYellow}}Livre des Vertus", -- D100
	[284] = "Détruit tous les feux follets et en invoque un par paire d'objets rejoués#Ne rejoue pas le {{ColorYellow}}Livre des Vertus", -- D4
	[285] = "Les feux follets rejouent parfois un ennemi touché", -- D10
	[286] = "Les ennemis tués par ces feux follets lâchent parfois une carte#Les feux follets lâchent une carte une fois détruits", -- Blank Card
	[287] = "Les feux follets ouvrent les portes, révèlent une salle inexplorée sur la carte et brisent les rochers marqués de la salle une fois détruits", -- Book of Secrets
	[288] = "Au lieu d'araignées, invoque des feux follets qui se transforment en araignées bleues une fois détruits", -- Box of Spiders
	[289] = "Les feux follets tirent des flammes rouges et disparaissent à la salle suivante", -- Red Candle
	[290] = "Crée un feu follet pour chaque cœur dans le bocal#Les feux follets lâchent parfois un cœur une fois détruits", -- The Jar
	[291] = "Invoque un feu follet pour chaque ennemi transformé", -- Flush!
	[292] = "{{ColorLime}}+10%{{ColorWhite}} de chances de Pacte avec le Diable {{DevilRoom}} ou d'Offrande des Anges {{AngelRoom}} pour chaque feu follet de cet objet", -- Satanic Bible
	[293] = "Les feux follets tirent des lasers en croix une fois détruits", -- Head of Krampus
	[294] = "Les feux follets ne tirent pas, pètent une fois détruits et disparaissent à la salle suivante", -- Butter Bean
	[295] = "Les feux follets lâchent parfois une pièce une fois détruits", -- Magic Fingers
	[296] = "Feux follets normaux", -- Converter
	[297] = "Feux follets normaux", -- Pandora's Box
	[298] = "Les feux follets ne peuvent pas tirer, sont immunisés aux dégâts de contact mais n'infligent pas de dégâts de contact tant que la Corne Brisée n'est pas active", -- Unicorn Stump
	[323] = "Invoque 6 feux follets qui disparaissent après 3 secondes", -- Isaac's Tears
	[324] = "Les feux follets tirent des larmes aléatoires", -- Undefined
	[325] = "Les feux follets tirent des gerbes de larmes", -- Scissors
	[326] = "Un blocage parfait invoque 4 feux follets", -- Breath of Life
	[338] = "Les feux follets tirent des larmes boomerang et durent une salle", -- The Boomerang
	[347] = "Duplique tous les feux follets et invoque un feu follet qui tire deux larmes", -- Diplopia
	[348] = "Les feux follets lâchent une pilule une fois détruits", -- Placebo
	[349] = "Les feux follets ont 50% de chances de lâcher une pièce une fois détruits", -- Wooden Nickel
	[351] = "Les feux follets de cet objet génèrent une vague de rochers à chaque utilisation, pètent, pétrifient et empoisonnent les ennemis à proximité une fois détruits", -- Mega Bean
	[352] = "Tous les feux follets de cet objet sont détruits si l'un est détruit", -- Glass Cannon
	[357] = "Duplique tous les feux follets pour la durée d'une salle", -- Box of Friends
	[382] = "Les monstres alliés se transforment en feux follets qui correspondent à leurs capacités", -- Friendly Ball
	[383] = "Les feux follets éclatent en 6 larmes une fois détruits et leurs larmes peuvent être divisées", -- Tear Detonator
	[386] = "Les larmes des feux follets rejouent parfois un obstacle", -- D12
	[396] = "Un feu follet orbite autour de chaque trou et ne peut pas tirer", -- Ventricle Razor
	[406] = "Les feux follets ont des dégâts et un débit aléatoires", -- D8
	[419] = "Les feux follets téléportent parfois un ennemi touché", -- Teleport 2.0
	[421] = "Les feux follets pètent et envoûtent les ennemis une fois détruits", -- Kidney Bean
	[422] = "Les feux follets pétrifient parfois un ennemi touché", -- Glowing Hour Glass
	[427] = "Les feux follets rebondissent contre les murs et explosent s'ils sont touchés par les larmes d'Isaac", -- Mine Crafter
	[434] = "Invoque un feu follet au lieu d'1 à 5 mouches bleues", -- Jar of Flies
	[437] = "Les feux follets déclenchent l'effet du D7 au premier dégât subi", -- D7
	[439] = "Feux follets normaux", -- Mom's Box
	[441] = "Les feux follets crachent des lasers de sang et tirent en continu quand Isaac utilise l'objet", -- Mega Blast
	[475] = "Invoque 8 feux follets qui infligent de gros dégâts", -- Plan C
	[476] = "Invoque deux feux follets, trois si aucune ressource n'a été dupliquée", -- D1
	[477] = "Invoque les feux follets de tous les objets absorbés", -- Void
	[478] = "Les feux follets immobilisent les ennemis et projectiles pour 3 secondes une fois détruits", -- Pause
	[479] = "Les feux follets font parfois apparaître une babiole une fois détruits", -- Smelter
	[480] = "Les PV du feu follet invoqué dépendent du nombre de ressources converties", -- Compost
	[481] = "Les feux follets peuvent transformer un ennemi touché en feu follet", -- Dataminer
	[482] = "Invoque un feu follet aléatoire", -- Clicker
	[483] = "Invoque 8 feux follets qui lâchent des bombes troll dorées une fois détruits", -- Mama Mega!
	[484] = "Les feux follets ne peuvent pas tirer, envoient une vague de rochers une fois détruits et disparaissent à la salle suivante", -- Wait What?
	[485] = "Tous les feux follets de cet objet sont détruits ou dupliqués quand l'un subit un dégât", -- Crooked Penny
	[486] = "Les feux follets ne tirent pas et nullifient parfois un dégât infligé à Isaac", -- Dull Razor
	[487] = "Invoque des feux follets permanents qui pourchassent les ennemis pour leur tirer dessus", -- Potato Peeler
	[488] = "Invoque le feu follet de l'objet imité {{ColorSilver}}(aléatoire pour un objet passif)", -- Metronome
	[489] = "Invoque un feu follet normal en plus de celui du dé imité", -- D Infinity
	[490] = "Invoque un feu follet aléatoire qui se régénère à chaque nouvelle salle", -- Eden's Soul
	[504] = "Les feux follets tirent sur les ennemis à proximité", -- Brown Nugget
	[507] = "Les ennemis tués peuvent se transformer en feu follet", -- Sharp Straw
	[510] = "Invoque un feu follet qui imite et ressemble à {{ColorCyan}}Monstro{{ColorWhite}}, au {{ColorCyan}}Duc des Mouches{{ColorWhite}}, à {{ColorCyan}}Loki{{ColorWhite}} ou au {{ColorCyan}}Revenu", -- Delirious
	[512] = "Les feux follets tirent des larmes magnétisées", -- Black Hole
	[515] = "Invoque un feu follet aléatoire qui se régénère à chaque nouvelle salle", -- Mystery Gift
	[516] = "Les feux follets tirent comme l'Arroseur Automatique", -- Sprinkler
	[521] = "Les feux follets tirent 3 larmes et meurent si Isaac dépense de l'argent", -- Coupon
	[522] = "Transforme les projectiles interceptés en feux follets", -- Telekinesis
	[523] = "Les feux follets ne sont invoqués qu'en déballant et lâchent une ressource une fois détruits", -- Moving Box
	[527] = "Les feux follets ne peuvent pas tirer et vont ouvrir des serrures une fois la salle terminée", -- Mr. ME!
	[536] = "Convertit tous les feux follets en demi-cœurs et invoque deux feux follets", -- Sacrificial Altar
	[545] = "Les feux follets invoquent un Osselet amical une fois détruits", -- Book of the Dead
	[550] = "Un ennemi touché par ces feux follets peut se faire écraser par {{ColorCyan}}Maman{{ColorWhite}}", -- Broken Shovel
	[552] = "Un ennemi touché par ces feux follets peut se faire écraser par {{ColorCyan}}Maman{{ColorWhite}}#Invoque aussi un feu follet plus résistant qui ne peut pas tirer", -- Mom's Shovel
	[555] = "Les feux follets ont 15% de chances de transformer un ennemi touché en or", -- Golden Razor
	[556] = "Les feux follets crachent de courts lasers de sang", -- Sulfur
	[557] = "↑ Chance {{ColorLime}}+0.2{{ColorWhite}} par feu follet de cet objet", -- Fortune Cookie
	[577] = "Feux follets normaux", -- Damocles
	[578] = "Les feux follets créent une trainée corrosive", -- Free Lemonade
	[580] = "Les feux follets ouvrent parfois une porte rouge en entrant dans une salle", -- Red Key
	[582] = "Impossible d'invoquer plus d'un feu follet de cet objet à la fois", -- Wavy Cap
	[584] = "Aucun effet", -- Book of Virtues
	[585] = "Invoque 8 feux follets", -- Alabaster Box
	[604] = "Invoque 3 feux follets où atterrit l'obstacle#Les feux follets tirent parfois une larme étourdissante", -- Mom's Bracelet
	[605] = "Feux follets normaux", -- The Scooper
	[609] = "Utiliser l'objet a 50% de chances d'invoquer un feu follet invulnérable ou de détruire tous ses feux follets", -- Eternal D6
	[611] = "Les dégâts et PV des feux follets dépendent de la charge de l'objet", -- Larynx
	[622] = "Invoque 3 feux follets et détruit tous les autres", -- Genesis
	[623] = "Feux follets normaux", -- Sharp Key
	[631] = "Invoque un feu follet puis découpe les autres en deux et divise leurs PV et leurs dégâts par 2", -- Meat Cleaver
	[635] = "Invoque jusqu'à 6 feux follets immobiles au point de téléportation", -- Stitches
	[636] = "N'invoque pas de feu follet", -- R Key
	[638] = "Les feux follets effacent les ennemis au contact", -- Eraser
	[639] = "Les feux follets ne tirent pas et invoquent une mouche bleue à la fin d'une salle", -- Yuck Heart
	[640] = "Les feux follets peuvent tirer des flammes bleues", -- Urn of Souls
	[642] = "Les feux follets tirent des larmes empoisonnées", -- Magic Skin
	[650] = "Quand Prunelle rebondit, les feux follets de cet objet font de même", -- Plum Flute
	[653] = "Les fantômes rouges tirent quand Isaac tire", -- Vade Retro
	[655] = "Invoque des feux follets éphémères quand l'effet est actif", -- Spin to Win
	[685] = "Double les feux follets invoqués et en ajoute 1", -- Jar of Wisps
	[687] = "Invoque un feu follet aléatoire", -- Friend Finder
	[703] = "Feux follets normaux", -- Esau Jr.
	[704] = "Les feux follets sont très résistants et ne peuvent pas tirer", -- Berserk
	[705] = "Tuer un ennemi invoque un feu follet qui disparaît à la salle suivante", -- Dark Arts
	[706] = "Les feux follets sont très résistant et ne peuvent pas tirer", -- Abyss
	[709] = "3 feux follets sont invoqués à l'atterrissage et disparaissent à la salle suivante", -- Suplex
	[710] = "Fabriquer invoque un feu follet aléatoire", -- Bag of Crafting
	[711] = "Feux follets normaux", -- Flip
	[712] = "Les feux follets objets peuvent tirer des larmes", -- Lemegeton
	[713] = "N'invoque pas de feu follet", -- Sumptorium
	[719] = "Un ennemi tué par ces feux follets lâche parfois une pièce", -- Keeper's Box
	[720] = "Invoque un feu follet aléatoire", -- Everything Jar
	[722] = "Un feu follet orbite l'ennemi enchaîné et lui tire dessus#Le feu follet est détruit quand l'ennemi meurt", -- Anima Sola
	[723] = "Rejoue tous les feux follets en feux follets identiques", -- Spindown Dice
	[728] = "Tous les feux follets orbitent autour de Gello", -- Gello
	[729] = "Invoque un feu follet immobile", -- Decap Attack

}

-- Special Locust effects when Item was eaten by Abyss
EID.descriptions[languageCode].abyssSynergies = {
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


-- Effect of Car battery on Active Items
local repCarBattery = {
	[323] = "Double les dégâts infligés par les larmes", -- Isaac's Tears
	[421] = "", -- Kidney Bean
	--[386] = "Tinyly increase chances for crawlspaces (still very rare)", -- D12
	[489] = "Déclenche un effet de dé supplémentaire qui reste toujours le même", -- D Infinity
	[523] = "", -- Moving Box
	[556] = "Le laser est plus gros et inflige plus de dégâts", -- Sulfur
	[584] = "Invoque le double de feux follets", -- Book of Virtues
	[605] = "Invoque deux yeux mais n'augmente pas davantage les dégâts", -- The Scooper
	[609] = "Double les chances de faire disparaître un objet", -- Eternal D6
	[625] = "Double la durée de l'effet", -- Mega Mush
	[705] = "Double la durée de l'effet", -- Dark Arts
	[720] = "Crée un caca en plus de l'effet", -- Everything Jar
	[723] = "Retire 2 à l'ID interne", -- Spindown Dice
}
--EID.descriptions[languageCode].carBattery[284] = nil -- D4
EID:updateDescriptionsViaTable(repCarBattery, EID.descriptions[languageCode].carBattery)

---------- Trinkets ----------

local repTrinkets={
	[1] = {"1", "Pièce Avalée", "Subir un dégât fait apparaître 1 pièce"}, -- Swallowed Penny
	[7] = {"7", "Perle de Rosaire", "{{AngelChanceSmall}} Augmente les chances d'Offrandes des Anges {{AngelRoom}}#Augmente les chances de trouver {{ColorYellow}}La Bible{{ColorWhite}} dans une Bibliothèque {{Library}} ou une Boutique {{Shop}}"},
	[8] = {"8", "Cartouche", "Subir un dégât déclenche parfois l'effet du {{ColorYellow}}Jeu-Garçon{{Collectible93}}#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 38 Chance)"},
	[10] = {"10", "Ver Remuant", "↑ Débit {{ColorLime}}+0.4#La trajectoire des larmes d'Isaac forme des vagues#Larmes spectrales"}, -- Wiggle Worm
	[11] = {"11", "Ver Circulaire", "↑ Débit {{ColorLime}}+0.4#La trajectoire des larmes d'Isaac forme des cercles#Larmes spectrales"}, -- Ring Worm
	[13] = {"13", "Bon d'Achat", "Permet à Isaac d'obtenir gratuitement un objet de la Boutique#La babiole disparaît une fois l'objet acheté"},
	[15] = {"15", "Caillou Porte-Bonheur", "Détruire un obstacle a 33% de chances de faire apparaître une pièce"},-- Lucky Rock
	[16] = {"16", "Ongle de Pied de Maman", "Le pied de {{ColorCyan}}Maman{{ColorWhite}} écrase un endroit au hasard dans la salle toutes les 20 secondes"},
	[20] = {"20", "Patte de Singe", "Descendre à un demi-cœur de vie totale fait apparaître un cœur noir#La babiole disparaît après trois activations"},
	[21] = {"21", "Papier Mystérieux", "Donne parfois l'effet du {{ColorYellow}}Positif{{Collectible327}}{{ColorWhite}}, du {{ColorYellow}}Négatif{{Collectible328}}{{ColorWhite}}, de l'{{ColorYellow}}Avis de Recherche{{Trinket23}}{{ColorWhite}} ou de la {{ColorYellow}}Page Déchirée{{Trinket48}}{{ColorWhite}}"},
	[23] = {"23", "Avis de Recherche", "À sa mort, Isaac ressuscite en {{ColorLightOrange}}l'Égaré#Mourir dans une Salle de Sacrifice {{SacrificeRoom}} en portant cette babiole débloque {{ColorLightOrange}}l'Égaré#La babiole disparaît à la mort d'Isaac"},
	[24] = {"24", "Pièce de Fesse", "Ramasser une pièce fait péter Isaac#Augmente de 20% les chances de trouver des pièces dans les cacas"}, -- Butt Penny
	[26] = {"26", "Ver Droit", "↑ Portée {{ColorLime}}+1.5#↑ Débit {{ColorLime}}+0.4#La trajectoire des larmes d'Isaac forme des vagues carrées#Larmes spectrales"}, -- Hook Worm
	[32] = {"32", "Psilocybe Lancéolé", "25% de chances de gagner l'effet d'un objet champignon pour la durée d'une salle"}, -- Liberty Cap
	[33] = {"33", "Cordon Ombilical", "Invoque {{ColorYellow}}P'tit Steven{{ColorWhite}} {{Collectible100}} quand Isaac n'a qu'un demi-cœur rouge ou moins#Subir un dégât invoque parfois {{ColorYellow}}Gémeaux{{ColorWhite}} {{Collectible318}}"}, -- Umbilical Cord
	[39] = {"39", "Cancer", "↑ Débit {{ColorLime}}+1"},
	[41] = {"41", "Allumette", "Augmente la fréquence d'apparition des bombes#Permet de retirer la {{ColorYellow}}Tique{{ColorWhite}} {{Trinket53}}"},
	[48] = {"48", "Page Déchirée", "Subir un dégât inflige parfois 80 dégâts à tous les ennemis de la salle#Double les dégâts infligés par les cœurs noirs et les effets similaires au {{ColorYellow}}Necronomicon{{ColorWhite}} {{Collectible35}}#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à ~55 Chance)"}, -- A Missing Page
	[49] = {"49", "Pièce Sanglante", "Ramasser une pièce a 25% de chances de faire apparaître un demi-cœur rouge"}, -- Bloody Penny
	[50] = {"50", "Pièce Brûlée", "Ramasser une pièce a 25% de chances de faire apparaître une bombe"}, -- Burnt Penny
	[51] = {"51", "Pièce Plate", "Ramasser une pièce a 25% de chances de faire apparaître une clé"}, -- Flat Penny
	[53] = {"53", "Tique", "Retire 15% des PV des boss#Rentrer dans une salle de boss soigne Isaac d'un cœur rouge#{{Warning}} Ne peut pas être retiré sans {{ColorYellow}}Allumette{{ColorWhite}} {{Trinket41}}"},
	[56] = {"56", "Langue de Judas", "Réduit le prix de tous les Pactes avec le Diable à 1 réceptacle de cœur#N'affecte pas les objets payés en cœurs d'âme"},
	[59] = {"59", "Œil de Caïn", "Donne parfois l'effet de la {{ColorYellow}}Boussole{{ColorWhite}} {{Collectible21}} pour la durée d'un étage#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 3 Chance)"},
	[60] = {"60", "Serre de l'Oiseau d'Ève", "Tuer un ennemi invoque parfois un {{ColorYellow}}Oiseau Mort{{ColorWhite}} {{Collectible117}} pour la durée d'une salle#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 8 Chance)"},
	[62] = {"62", "Caillou Étincelant", "Révèle les rochers marqués et l'entrée des Souterrains {{LadderRoom}}"},
	[63] = {"63", "Ciseaux à Bout Rond", "Désamorce les Bombes Troll et Maxi Troll et permet à Isaac de les ramasser"},
	[64] = {"64", "Ver Arc-en-Ciel", "Active l'effet d'une babiole de ver différente toutes les 3 secondes"},
	[65] = {"65", "Ver Solitaire", "↑ Portée {{ColorLime}}+3"}, -- Tape Worm
	[66] = {"66", "Ver Fainéant", "↓ Vitesse des tirs {{ColorError}}-0.5"}, -- Lazy Worm
	[67] = {"67", "Dé Fêlé", "Subir un dégât déclenche l'effet du {{ColorYellow}}D6{{ColorWhite}}{{Collectible105}}, {{ColorYellow}}D8{{ColorWhite}}{{Collectible406}},{{ColorYellow}}D10{{ColorWhite}}{{Collectible285}}, {{ColorYellow}}D12{{ColorWhite}}{{Collectible386}} ou {{ColorYellow}}D20{{ColorWhite}}{{Collectible166}}"},
	[69] = {"69", "Positif Décoloré", "Camoufle parfois Isaac#Étourdit parfois les ennemis#Peut être utilisé pour ouvrir la porte vers l'Ascension"}, -- Faded Polaroid
	[74] = {"74", "Détecteur de Métaux", "Augmente les chances de trouver l'entrée d'un Souterrain {{LadderRoom}}"},
	[75] = {"75", "404", "Active l'effet d'une babiole aléatoire dans chaque salle"},
	[80] = {"80", "Plume Noire", "↑ Dégâts {{ColorLime}}+0.5{{ColorWhite}} pour chaque objet démoniaque possédé"}, -- Black Feather
	[82] = {"82", "Fer à Cheval Doré", "Les Salles du Trésor {{TreasureRoom}} ont {{ColorLime}}+15%{{ColorWhite}} de chances de proposer un choix entre deux objets"},
	[83] = {"83", "Clé du Magasin", "Permet d'ouvrir gratuitement les portes des Boutiques {{Shop}}"},
	[84] = {"84", "Côte d'Avarice", "Empêche {{ColorCyan}}Avarice{{ColorWhite}} et {{ColorCyan}}Super Avarice{{ColorWhite}} d'apparaître dans les Boutiques {{Shop}}"},
	[92] = {"92", "Couronne Fêlée", "↑ Augmente de 20% les bonus de stats donnés par les objets d'Isaac"}, -- Cracked Crown
	[96] = {"96", "Ver d'Ouroboros", "↑ Débit {{ColorLime}}+0.4#↑ Portée {{ColorLime}}+1.5#La trajectoire des larmes d'Isaac forme une très grande spirale#Larmes spectrales#Isaac tire parfois une larme autoguidée#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 5 Chance)"},
	[98] = 	{"98", "Crotte de Nez", "Chance de tirer une crotte de nez qui se colle aux ennemis et inflige les dégâts d'Isaac une fois par seconde#Les crottes de nez se décollent si l'ennemi meurt, s'enterre, saute hors de l'écran ou au bout de 10 secondes"},
	[101] = {"101", "Ampoule Éteinte", "Si l'objet activable est entièrement déchargé :#↑ Dégâts {{ColorLime}}+1.5#↑ Vitesse {{ColorLime}}+0.5#↑ Portée {{ColorLime}}+1.5#↑ Débit {{ColorLime}}+0.5#↑ Vitesse des tirs {{ColorLime}}+0.3#↑ Chance {{ColorLime}}+2"},
	[102] = {"102", "Carte Scindée", "Génère une Salle Secrète de plus à chaque étage#Ne rajoute pas de Salle Secrète à un étage déjà généré"},
	[104] = {"104", "Os de Poulet", "Subir un dégât a 2% de chances de détruire la babiole et faire apparaître un objet provenant de la banque d'objets de la salle"},
	[105] = {"105", "Sac de Friandises", "Subir un dégât a 2% de chances de détruire la babiole et faire apparaître {{ColorYellow}}Déjeuner{{ColorWhite}} {{Collectible22}}"},
	[107] = {"107", "Cœur de Corbeau", "Subir un dégât retire les cœurs rouges en priorité"},
	[108] = {"108", "Noix", "Subir 1 à 9 explosions détruit la babiole et fait apparaître une bombe, une pièce, une clé et une babiole"},
	[110] = {"110", "Pièce d'Argent", "Des boutiques apparaissent dans l'{{ColorTransform}}Utérus{{ColorWhite}} et le {{ColorTransform}}Cadavre"},
	[111] = {"111", "Couronne Sanglante", "Des Salles du Trésor {{TreasureRoom}} apparaissent dans l'{{ColorTransform}}Utérus{{ColorWhite}} et le {{ColorTransform}}Cadavre"}, -- Bloody Crown
	[112] = {"112", "Microtransactions", "Des machines de réapprovisionnement {{RestockMachine}} apparaissent dans toutes les Salles du Trésor {{TreasureRoom}}"},
	[119] = {"119", "Cellule Souche", "Soigne la moitié des cœurs rouges d'Isaac au début de chaque étage#Soigne un demi-cœur rouge au minimum"}, -- Stem Cell
	[123] = {"123", "Plume Angélique", "Tuer {{ColorCyan}}Uriel{{ColorWhite}} ou {{ColorCyan}}Gabriel{{ColorWhite}} fait apparaître un objet angélique au lieu d'un {{ColorYellow}}Fragment de Clé {{Collectible238}}{{Collectible239}}"},
	[125] = {"125", "Rallonge Électrique", "Relie les familiers d'Isaac par des arcs électriques"},
	[128] = {"128", "Os de Doigt", "{{BoneHeart}} Subir un dégât a 5% de chances d'ajouter un cœur d'os aux PV d'Isaac"}, -- Finger Bone
	[129] = {"129", "Boule de Mammouth", "Isaac tire parfois une dent qui inflige {{ColorLime}} dégâts x3#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 9 Chance)"}, --  Jawbreaker
	[130] = {"130", "Stylo Mâchouillé", "Isaac tire parfois une larme ralentissante#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 18 Chance)"}, --  Chewed Pen
	[131] = {"131", "Pièce Bénie", "Ramasser une pièce a 17% de chances de faire apparaître un demi-cœur d'âme"}, --  Blessed Penny
	[132] = {"132", "Seringue Cassée", "25% de chances de gagner l'effet d'une seringue pour la durée d'une salle"}, --  Broken Syringe
	[133] = {"133", "Pétard", "Les bombes placées par Isaac explosent plus rapidement"}, --  Short Fuse
	[134] = {"134", "Haricot Géant", "Augmente la taille des pets d'Isaac"}, --  Gigante Bean
	[135] = {"135", "Briquet", "Entrer dans une salle enflamme parfois certains ennemis#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 40 Chance)"}, --  A Lighter
	[136] = {"136", "Cadenas Cassé", "Permet d'ouvrir les serrures avec une explosion"}, --  Broken Padlock
	[137] = {"137", "Myosotis", "Fait apparaître jusqu'à 4 ressources laissées à l'étage précédent dans la première salle d'un nouvel étage"}, --  Myosotis
	[138] = {"138", "'M", "Utiliser un objet activable le rejoue"}, --  'M
	[139] = {"139", "Larmulette", "Chance {{ColorLime}}+3{{ColorWhite}} envers les effets de larmes"}, --  Teardrop Charm
	[140] = {"140", "Pomme de Sodome", "Ramasser un cœur rouge a 50% de chances de le convertir en araignées bleues#Fonctionne même si les PV d'Isaac sont pleins#Cet effet peut empêcher Isaac de se soigner"}, --  Apple of Sodom
	[141] = {"141", "Berceuse Oubliée", "Double le débit des familiers d'Isaac"}, --  Forgotten Lullaby
	[142] = {"142", "Foi de Béthanie", "Entrer dans un nouvel étage invoque 4 feux follets du {{ColorYellow}}Livre des Vertus{{ColorWhite}} {{Collectible584}}"}, --  Beth's Faith
	[143] = {"143", "Condensateur", "Empêche les objets activables de se recharger#Terminer une salle fait parfois apparaître une micro pile#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(33% à 5 Chance)"}, --  Old Capacitor
	[144] = {"144", "Parasite Cérébral", "Les larmes d'Isaac peuvent tourner à 90° pour toucher un ennemi qui aurait été loupé"}, --  Brain Worm
	[145] = {"145", "Perfection", "↑ Chance {{ColorLime}}+10#{{Warning}} Subir un dégât détruit la babiole"}, --  Perfection
	[146] = {"146", "Couronne du Diable", "Les Salles du Trésor {{TreasureRoom}} contiennent des Pactes avec le Diable"}, --  Devil's Crown
	[147] = {"147", "Pièce Électrisée", "Ramasser une pièce a 17% de chances de recharger une barre de l'objet activable"}, --  Charged Penny
	[148] = {"148", "Collier d'Amitié", "Tous les familiers orbitent autour d'Isaac"}, --  Friendship Necklace
	[149] = {"149", "Bouton Rouge", "Utilise l'objet activable d'Isaac quand il est sur le point de subir un dégât"}, --  Panic Button
	[150] = {"150", "Clé Bleue", "Ouvre gratuitement les portes verrouillées#Isaac doit traverser une salle de l'{{ColorTransform}}Utérus Bleu{{ColorWhite}} pour atteindre la salle de l'autre côté de la porte"}, --  Blue Key
	[151] = {"151", "Lime Plate", "Rétracte la majorité des piques du jeu et les rend innofensifs"}, --  Flat File
	[152] = {"152", "Lentille de Télescope", "{{PlanetariumChanceSmall}} {{ColorLime}}+24%{{ColorWhite}} de chances de Planétarium s'il n'a pas encore été trouvé#{{PlanetariumChanceSmall}} {{ColorLime}}+9%{{ColorWhite}} de chances de Planétarium s'il a déjà été trouvé#Les Planétariums peuvent apparaître dans l'{{ColorTransform}}Utérus{{ColorWhite}} et le {{ColorTransform}}Cadavre"}, --  Telescope Lens
	[153] = {"153", "Mèche de Maman", "25% de chances de gagner l'effet d'un objet de Maman pour la durée d'une salle"}, --  Mom's Lock
	[154] = {"154", "Sac de Dés", "Entrer dans une nouvelle salle a 50% de chances de donner un dé à usage unique#Le dé disparait en quittant la salle#Le dé ne remplace pas la carte, pilule ou rune portée par Isaac"}, --  Dice Bag
	[155] = {"155", "Couronne Sacrée", "Fait apparaître une Salle du Trésor dans la Cathédrale"}, --  Holy Crown
	[156] = {"156", "Bisou de Maman", "{{Heart}} +1 réceptacle de cœur"}, --  Mother's Kiss
	[157] = {"157", "Carte Déchirée", "Tous les 15 tirs, Isaac tire une larme avec les effets d'{{ColorYellow}}Ipéca{{ColorWhite}} {{Collectible149}} et de {{ColorYellow}}Mon Reflet{{ColorWhite}} {{Collectible5}}"}, --  Torn Card
	[158] = {"158", "Poche Trouée", "Subir un dégât retire deux pièces, clés ou bombes à Isaac et les fait tomber au sol"}, --  Torn Pocket
	[159] = {"159", "Clé Dorée", "{{Key}} +1 Clé#Remplace tous les coffres par des coffres dorés {{GoldenChest}}#Ne peut pas remplacer les coffres Antiques {{DirtyChest}} et Géants {{MegaChest}}"}, --  Gilded Key
	[160] = {"160", "Bourse Trèfle", "Fait apparaître 1 sachet dans la première salle d'un nouvel étage"}, --  Lucky Sack
	[161] = {"161", "Couronne Impure", "Une Salle du Trésor apparaît à {{ColorTransform}}Shéol"}, --  Wicked Crown
	[162] = {"162", "Corne d'Azazel", "Terminer une salle a 50% de chances de transformer Isaac en {{ColorLightOrange}}Azazel{{ColorWhite}} pour la durée de la salle suivante"}, --  Azazel's Stump
	[163] = {"163", "Colombin", "Toutes les Crottes deviennent amicales#Invoque 1 Crotte amicale pour chaque salle terminée"}, --  Dingle Berry
	[164] = {"164", "Amorces", "Ajoute gratuitement 1 bombe à chaque bombe posée"}, --  Ring Cap
	[165] = {"165", "Ah Non !", "À partir de l'{{ColorTransform}}Utérus{{ColorWhite}}, remplace les pièces et les clés par des bombes, des cœurs, des pilules, des cartes, des runes, des piles, des babioles ou des mouches"}, --  Nuh Uh!
	[166] = {"166", "Pâte à Modeler", "50% de chances de gagner l'effet d'un objet passif aléatoire pour la durée d'une salle"}, --  Modeling Clay
	[167] = {"167", "Os Poli", "Terminer une salle a 25% de chances d'invoquer un Osselet allié"}, --  Polished Bone
	[168] = {"168", "Cœur Creux", "{{EmptyBoneHeart}} +1 cœur d'os au début de chaque étage"}, --  Hollow Heart
	[169] = {"169", "Dessin d'Enfant", "Compte comme 1 objet envers la transformation en Guppy"}, --  Kid's Drawing
	[170] = {"170", "Clé de Cristal", "Terminer une salle a 33% de chances d'ouvrir une porte rouge"}, --  Crystal Key
	[171] = {"171", "Aubaine du Gardien", "Les Pactes avec le Diable ont 50% de chances de coûter de l'argent plutôt que des PV"}, --  Keeper's Bargain
	[172] = {"172", "Pièce Maudite", "Ramasser une pièce téléporte Isaac dans une pièce aléatoire"}, --  Cursed Penny
	[173] = {"173", "Ton Âme", "{{Warning}} USAGE UNIQUE{{Warning}}#Peut être échangée pour signer un pacte avec le diable sans perdre de réceptacles de cœur"}, --  Your Soul
	[174] = {"174", "Chiffre Magnétique", "{{DevilChance}} {{ColorLime}}+10%{{ColorWhite}} de chances de Pacte avec le Diable#Krampus n'apparaît plus dans l'Antre du Diable#L'Antre du Diable contient plus d'objets, de cœurs noirs et d'ennemis"}, --  Number Magnet
	[175] = {"175", "Étrange Clé", "Ouvre le passage vers {{ColorCyan}}Murmure{{ColorWhite}} même si la limite de temps est passée#Utiliser la {{ColorYellow}}Boîte de Pandore{{ColorWhite}} {{Collectible297}} fait apparaître 6 objets aléatoires"}, --  Strange Key
	[176] = {"176", "P'tit Pâté", "Invoque 1 pâté amical qui imite les mouvements et les larmes d'Isaac"}, --  Lil Clot
	[177] = {"177", "Tatouage Temporaire", "Triompher d'une Salle de Défi {{ChallengeRoom}} fait apparaître un coffre #Triompher d'une Salle de Défi Royale {{BossRushRoom}} fait apparaître un objet"}, --  Temporary Tattoo
	[178] = {"178", "Explosifs Avalés", "Subir un dégât a 50% de chances de faire exploser Isaac"}, --  Swallowed M80
	[179] = {"179", "Télécommande Radio", "Contrôler Isaac contrôle aussi ses familiers#Maintenir le bouton {{ColorSilver}}[Lâcher]{{ColorWhite}} bloque les familiers sur place"}, --  RC Remote
	[180] = {"180", "Âme Retrouvée", "Suit les mouvements d'Isaac et tire des larmes spectrales#Imite les larmes d'Isaac#Meurt s'il subit un dégât#Revient à l'étage suivant"}, --  Found Soul
	[181] = {"181", "Pack d'Extension", "Utiliser un objet activable déclenche aussi l'effet d'un objet activable à 1 ou 2 charges"}, --  Expansion Pack
	[182] = {"182", "Essence de Béthanie", "Entrer dans le Refuge des Anges invoque 5 feux follets#Faire un don à un mendiant a 25% de chances d'invoquer un feu follet"}, --  Beth's Essence
	[183] = {"183", "Les Jumeaux", "50% de chances de dupliquer un familier pour la durée d'une salle#Si Isaac n'a aucun familier, donne {{ColorYellow}}Frère Bobby{{ColorWhite}} {{Collectible8}} ou {{ColorYellow}}Sœurette Marie{{ColorWhite}} {{Collectible67}}"}, --  The Twins
	[184] = {"184", "Actes d'Adoption", "Les boutiques vendent des familiers pour 10 pièces"}, --  Adoption Papers
	[185] = {"185", "Patte de Grillon", "Tuer un ennemi a 17% de chances d'invoquer un locuste"}, --  Cricket Leg
	[186] = {"186", "Le Meilleur Ami d'Apollyon", "Invoque un locuste abyssal"}, --  Apollyon's Best Friend
	[187] = {"187", "Lunettes Cassées", "Les Salles du Trésor {{TreasureRoom}} ont 33% de chances de contenir un objet inconnu supplémentaire#50% de chances de révéler les objets inconnus du chemin alternatif"}, --  Broken Glasses
	[188] = {"188", "Glaçon", "Entrer dans une salle pétrifie parfois certains ennemis#Tuer un ennemi pétrifié le gèle#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 40 Chance)"}, --  Ice Cube
	[189] = {"189", "Sigil de Baphomet", "Tuer un ennemi rend Isaac invulnérable pendant 1 seconde"}, --  Sigil of Baphomet
}
EID:updateDescriptionsViaTable(repTrinkets, EID.descriptions[languageCode].trinkets)
EID.descriptions[languageCode].goldenTrinket = "Effet doublé !"
EID.descriptions[languageCode].tripledTrinket = "Effet triplé !"
EID.descriptions[languageCode].quadrupledTrinket = "Effet quadruplé !"

-- Most trinkets that can be doubled or tripled just have the numbers in their description multiplied
-- A few trinkets have odd edge cases where their effect completely changes, or is different depending on if it's Mom's Box or Golden
EID.descriptions[languageCode].goldenTrinketEffects = {
	[4] = { "{{Collectible419}} Utiliser un objet activable téléporte Isaac dans {{ColorGold}}une salle inexplorée#Ordre de téléportation#{{Blank}} {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}> {{SacrificeRoom}}>{{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}> {{ChallengeRoom}}>{{IsaacsRoom}}>{{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>#{{Blank}} {{DevilRoom}}{{AngelRoom}}>Salle d'erreur"}, -- Teleport 2.0
	-- Broken Magnet (find+replace): find Phrase #1 in the localized description, change it to Phrase #2 for doubled
	[6] = { "pièces", "ressources" },
	-- Golden Store Credit: full replace
	[7] = { "Le {{ColorYellow}}Rosaire{{ColorGold}} {{Collectible72}} est ajouté à toutes les banques d'objets" },
	-- Golden Store Credit: full replace
	[13] = { "{{ColorGold}}Permet à Isaac d'obtenir des objets de la boutique {{Shop}} gratuitement#Peut perdre son effet doré après chaque achat" },
	-- Lucky Rock append (Gold / Mom's Box / Both)
	[15] = { "Détruire un obstacle fait parfois apparaître 2 pièces", "Détruire un obstacle fait parfois apparaître 2 pièces", "Détruire un obstacle fait parfois apparaître 3 pièces" },
	-- Golden Mysterious Candy makes Golden Poop
	[25] = { "caca", "caca doré" },
	-- Isaac's Fork (find+replace): find Phrase #1 in the localized description, change it to Phrase #2 or 3 for doubled/tripled
	[46] = { "un demi-cœur rouge", "un cœur rouge", "un cœur rouge et demi" },
	-- Tick (replace): A full replacement for Golden / Mom's Box / Both, as the Golden version can be removed and only one effect is tripled
	[53] = {
		"Retire {{ColorGold}}30{{ColorWhite}}% des PV des boss#Entrer dans une salle de Boss {{BossRoom}} soigne Isaac de {{ColorGold}}2{{ColorWhite}} cœurs rouges#{{ColorGold}}Peut être retirée !",
		"Retire {{ColorGold}}30{{ColorWhite}}% des PV des boss#Entrer dans une salle de Boss {{BossRoom}} soigne Isaac de {{ColorGold}}2{{ColorWhite}} cœurs rouges#{{Warning}} Ne peut pas être retirée#Ne peut être échangée qu'avec {{ColorYellow}}Allumette {{Trinket41}}",
		"Retire {{ColorGold}}30{{ColorWhite}}% des PV des boss#Entrer dans une salle de Boss {{BossRoom}} soigne Isaac de {{ColorGold}}3{{ColorWhite}} cœurs rouges#{{ColorGold}}Peut être retirée !",
	},
	-- Rainbow Worm (append): With Mom's Box, it gives 2 copies of the temp worm, and doubles 1 of those copies, for triple effect
	[64] = { "Les augmentations de stats du ver sont doublées", "Les augmentations de stats du ver sont triplées", "Les augmentations de stats du ver sont quadruplées", },
	-- Error (append): Same behavior as Rainbow Worm
	[75] = { "L'effet de la babiole est doublé si possible", "L'effet de la babiole est triplé si possible", "L'effet de la babiole est quadruplé si possible", },
	-- NO!
	[88] = { "Empêche les objets de qualité {{Quality0}} d'apparaître" },
	-- Gilded Key (Golden version only): it doesn't give a key. bug that will get fixed (maybe it'll give a Golden Key?)
	[159] = { "Remplace tous les coffres par des coffres dorés {{GoldenChest}}#Ne peut pas remplacer les coffres Antiques {{DirtyChest}} et Géants {{MegaChest}}" },
	-- The Twins
	[183] = { "Invoque ou copie parfois 2 familiers", "Invoque ou copie parfois 2 familiers", "Invoque ou copie parfois 3 familiers" },
}


-- Card Buffs caused by Tarot Cloth
-- Note: "#" will be replaced with "#{{Collectible451}}" automatically, in order to add Tarot Cloth icon infront of each buff-bulletpoint

EID.descriptions[languageCode].tarotClothBuffs = {
	[2] = "Déclenche l'effet du {{ColorYellow}}Livre de Bélial{{ColorWhite}} {{Collectible34}} ", -- I - The Magician
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
	[15] = "Fait apparaître 2 banques du sang {{BloodDonationMachine}}", -- XIV - Temperance
	[16] = "Double l'augmentation des dégâts", -- XV - The Devil
	[17] = "Double le nombre de bombes invoquées", -- XVI - The Tower
	[18] = "Si la Salle du Trésor n'a pas encore été visitée, propose un choix entre 2 objets", -- XVII - The Stars
	[21] = "Invoque 2 mendiants {{Beggar}}", -- XX - Judgement
	[56] = "Lâche également les 6 derniers objets ramassés", -- 0 - The Fool?
	[59] = "+3 réceptacles de cœur", -- III - The Empress?
	[61] = "Fait apparaître 3 cœurs d'os", -- V - The Hierophant?
	[62] = "+2 cœurs brisés#Fait apparaître 2 objets", -- VI - The Lovers?
	[64] = "Fait apparaître 2 à 7 coffres dorés {{GoldenChest}}", -- VIII - Justice?
	[65] = "Fait apparaître 1 pièce supplémentaire", -- IX - The Hermit?
	[66] = "Déclenche un effet de dé supplémentaire", -- X - Wheel of Fortune?
	[68] = "Double la durée de l'effet", -- XII - The Hanged Man?
	[70] = "Déclenche l'effet de 10 pilules", -- XIV - Temperance?
	[72] = "Fait apparaître 7 groupes de rochers", -- XVI - The Tower?
	[73] = "Retire 2 objets et en fait apparaître 4", -- XVII - The Stars?
	[76] = "Fait apparaître 2 machines de réapprovisionnement {{RestockMachine}}", -- XX - Judgement?
}
EID.descriptions[languageCode].goldenTrinket = "Effet doublé !"

---------- Cards ----------

local repCards={
	[2] = {"2", "I - Le Bateleur", "↑ Portée {{ColorLime}}+3.0#Larmes autoguidées#{{Timer}} L'effet dure une salle"},
	[3] = {"3", "II - La Papesse", "Le pied de {{ColorCyan}}Maman{{ColorWhite}} écrase l'ennemi de la salle avec le plus de PV#Dans une salle sans ennemis, le pied écrase Isaac"},
	[4] = {"4", "III - L'Impératrice", "↑ Dégâts {{ColorLime}}+2.35#↑ Vitesse {{ColorLime}}+0.3#{{Timer}} L'effet dure une salle"},
	[5] = {"5", "IV - L'Empereur", "Téléporte Isaac dans la salle du boss {{BossRoom}}"},
	[10] = {"10", "IX - L'Ermite", "Téléporte Isaac à la Boutique {{Shop}}"},
	[12] = {"12", "XI - La Force", "#{{Heart}} +1 Réceptacle de cœur#↑ Dégâts {{ColorLime}}x1.5 +0.3#↑ Vitesse {{ColorLime}}+0.3#↑ Portée {{ColorLime}}+1.5#{{Timer}} L'effet dure une salle"}, -- XI - Strength
	[16] = {"16", "XV - Le Diable", "↑ Dégâts {{ColorLime}}+2{{ColorWhite}}#{{Timer}} L'effet dure une salle"},
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
	[39] = {"39", "Algiz", "Isaac devient invulnérable pendant 20 secondes"},
	[42] = {"42", "Carte Chaos", "Utiliser cette carte la lance dans la direction où se déplace Isaac#La carte tue instantanément les ennemis ou boss avec lesquels elle rentre en contact#La carte ne peut pas tuer {{ColorCyan}}Delirium{{ColorWhite}} ou {{ColorCyan}}la Bête"}, -- Chaos Card
	[50] = {"50", "Appel d'Urgence", "2 mains de {{ColorCyan}}Maman{{ColorWhite}} attrapent un ennemi chacune, leur infligent 40 dégâts et les paralysent"},
	[51] = {"51", "Carte Sacrée", "Entoure Isaac d'un bouclier sacré {{HolyMantleSmall}} qui nullifie le prochain dégât subi"}, -- Holy card
	[52] = {"52", "Croissance Colossale", "↑ Dégâts {{ColorLime}}+7#↑ Portée {{ColorLime}}+3#↑ Taille augmentée#Permet à Isaac de détruire les rochers en marchant dessus#{{Timer}} L'effet dure une salle"}, -- Huge Growth
	[54] = {"54", "Marche Temporelle", "↑ Vitesse {{ColorLime}}+0.5#↓ Vitesse des tirs {{ColorError}}-1#Ralentit les ennemis#{{Timer}} L'effet dure une salle"},
	[55] = {"55", "Fragment de Rune", "Déclenche un effet de rune aléatoire#L'effet est plus faible que celui de la rune imitée"},
	[56] = {"56", "0 - Le Mat ?", "Fait tomber tous les cœurs et ressources d'Isaac au sol#Fait apparaître {{ColorYellow}}Une Petite Pièce{{ColorWhite}} {{Collectible74}} ou {{ColorYellow}}Boum !{{ColorWhite}} {{Collectible19}} si Isaac a suffisamment de ressources"},
	[57] = {"57", "I - Le Bateleur ?", "Entoure Isaac d'une aura qui dévie les projectiles ennemis#{{Timer}} L'effet dure 60 secondes"},
	[58] = {"58", "II - La Papesse ?", "Les pieds de {{ColorCyan}}Maman{{ColorWhite}} tentent d'écraser Isaac pendant 60 secondes"},
	[59] = {"59", "III - L'Impératrice ?", "↑ Débit {{ColorLime}}+1.35#↓ Vitesse {{ColorError}}-0.1#{{Heart}} +2 Réceptacles de cœur#{{Timer}} L'effet dure 60 secondes"},
	[60] = {"60", "IV - L'Empereur ?", "Téléporte Isaac dans une salle de Boss {{BossRoom}} qui est indépendante du reste de l'étage#Le boss provient de deux étages plus profond#Battre le boss fait apparaître un objet"},
	[61] = {"61", "V - Le Pape ?", "Fait apparaître 2 cœurs d'os"},
	[62] = {"62", "VI - L'Amoureux ?", "Fait apparaître un objet aléatoire#L'objet provient de la banque de la salle où la carte a été utilisée#Convertit 1 réceptacle de cœur ou 2 cœurs d'âme en un cœur brisé"},
	[63] = {"63", "VII - Le Chariot ?", "↑ Débit fortement augmenté#Transforme Isaac en une statue invulnérable#{{Timer}} L'effet dure 10 secondes"},
	[64] = {"64", "VIII - La Justice ?", "Fait apparaître 2 à 4 coffres dorés {{GoldenChest}}"},
	[65] = {"65", "IX - L'Ermite ?", "Convertit les ressources et objets de la salle en pièces#Le nombre de pièces est égal à la valeur des objets dans la boutique"},
	[66] = {"66", "X - La Roue de Fortune ?", "Déclenche l'effet d'une salle de dé au hasard"},
	[67] = {"67", "XI - La Force ?", "Les ennemis sont ralentis et subissent deux fois plus de dégâts#{{TimerSmall}} L'effet dure 60 secondes ou jusqu'à ce qu'Isaac quitte la salle"},
	[68] = {"68", "XII - Le Pendu ?", "↓ Vitesse {{ColorError}}-0.1#Triple tir#Tuer un ennemi fait apparaître une pièce#{{Timer}} L'effet dure 60 secondes"},
	[69] = {"69", "XIII - La Mort ?", "Déclenche l'effet du {{ColorYellow}}Livre des Morts{{ColorWhite}} {{Collectible545}}  :#{{Blank}} Invoque des entités squelettes en fonction du nombre d'ennemis tués dans la salle"},
	[70] = {"70", "XIV - Tempérance ?", "Déclenche l'effet de 5 pilules"},
	[71] = {"71", "XV - Le Diable ?", "Déclenche l'effet de la {{ColorYellow}}Bible{{ColorWhite}} {{Collectible33}}#Donne {{ColorYellow}}Séraphin{{ColorWhite}} {{Collectible390}}#{{Timer}} L'effet dure 30 secondes"},
	[72] = {"72", "XVI - La Maison Dieu ?", "Fait apparaître 6 groupes de rochers ou obstacles"},
	[73] = {"73", "XVII - L'Étoile ?", "Retire l'objet passif d'Isaac le plus ancien, hors objets de départ#Fait apparaître 2 objets aléatoires provenant de la banque d'objets de la salle où la carte a été utilisée"},
	[74] = {"74", "XVIII - La Lune ?", "Téléporte Isaac à la Salle Ultra Secrète {{UltraSecretRoom}}#Le chemin de retour est constitué de salles rouges"},
	[75] = {"75", "XIX - Le Soleil ?", "↑ Dégâts {{ColorLime}}+1.5#Active les effets d'{{ColorYellow}}Esprit de la Nuit{{ColorWhite}} {{Collectible159}}#Convertit les réceptacles de cœurs rouges d'Isaac en cœurs d'os#Applique le Fléau d'Obscurité#{{Timer}} L'effet dure un étage"},
	[76] = {"76", "XX - Le Jugement ?", "Fait apparaître une machine de réapprovisionnement {{RestockMachine}}"},
	[77] = {"77", "XXI - Le Monde ?", "Ouvre une trappe vers un Souterrain"},
	[78] = {"78", "Clé Brisée", "Déclenche l'effet de la {{ColorYellow}}Clé Rouge{{ColorWhite}} {{Collectible580}}"},
	[79] = {"79", "Dame de Cœur", "Fait apparaître 1 à 20 cœurs rouges"},
	[80] = {"80", "Dernière Carte", "Copie l'effet de la pilule, carte, rune, objet activable ou pierre d'âme la plus récemment utilisée"},
	[81] = {"81", "Âme d'Isaac", "Tous les objets sur piédestal de la salle alternent avec un objet différent à intervalles d'une seconde#Seul un deux objets de la rotation peut être ramassé"},
	[82] = {"82", "Âme de Marie", "Pour la durée d'une salle, les ennemis tués lâchent des demi-cœurs rouges qui disparaissent après 2 secondes"},
	[83] = {"83", "Âme de Caïn", "Ouvre toutes les portes de la salle, y compris les portes des salles rouges {{Collectible580}}) si possible#Brise le miroir de {{ColorTransform}}Canalisations 2"},
	[84] = {"84", "Âme de Judas", "Paralyse tous les ennemis pendant 3 secondes#Transforme Isaac en une ombre qui peut traverser les ennemis#Inflige des dégâts à tous les ennemis traversés#Augmente temporairement la stat de dégâts pour chaque ennemi traversé"},
	[85] = {"85", "Âme de ???", "Provoque 8 pets empoisonnés, répand une flaque brunâtre et fait apparaître 7 Bombes Bronze#Marcher dans la flaque donne {{ColorLime}}débit +1.35{{ColorWhite}} et {{ColorLime}}dégâts +1"},
	[86] = {"86", "Âme d'Ève", "Invoque 14 oiseaux morts#Les oiseaux pourchassent et infligent des dégâts aux ennemis#Les oiseaux disparaissent quand toutes les cibles sont mortes ou quand Isaac quitte la salle"},
	[87] = {"87", "Âme de Samson", "Déclenche l'effet de {{ColorYellow}}Frénésie{{ColorWhite}} {{Collectible704}}#↑ Vitesse {{ColorLime}}+0.4#↑ Dégâts {{ColorLime}}+3.0#↑ Débit augmenté#{{Timer}} L'effet dure 10 secondes"},
	[88] = {"88", "Âme d'Azazel", "Déclenche l'effet de {{ColorYellow}}Souffle du Diable{{ColorWhite}} {{Collectible441}}#{{Timer}} L'effet dure 7.5 secondes"},
	[89] = {"89", "Âme de Lazare", "Isaac meurt et revient à la vie avec un demi-cœur#Subir un dégât fatal utilise automatiquement l'objet"},
	[90] = {"90", "Âme d'Éden", "Déclenche les effets du {{ColorYellow}}D6{{ColorWhite}} {{Collectible105}} et du {{ColorYellow}}D20{{ColorWhite}} {{Collectible166}}#Les objets rejoués peuvent provenir de n'importe quelle banque d'objets"},
	[91] = {"91", "Âme de l'Égaré", "Isaac meurt et devient {{ColorLightOrange}}L'Égaré#{{Timer}} L'effet dure une salle"},
	[92] = {"92", "Âme de Lilith", "Invoque un familier aléatoire de manière permanente"},
	[93] = {"93", "Âme du Gardien", "Fait apparaître 3 à 25 pièces"},
	[94] = {"94", "Âme d'Apollyon", "Invoque 15 locustes aléatoires"},
	[95] = {"95", "Âme du Délaissé", "Invoque Le {{ColorLightOrange}}Délaissé{{ColorWhite}} en tant que personnage secondaire pour la durée d'une salle"},
	[96] = {"96", "Âme de Béthanie", "Fait apparaître 6 feux follets aléatoires du {{ColorYellow}}Livre des Vertus{{ColorWhite}} {{Collectible584}}"},
	[97] = {"97", "Âme de Jacob & Ésaü", "Invoque {{ColorLightOrange}}Ésaü{{ColorWhite}} en tant que personnage secondaire pour la durée d'une salle"},
}
EID:updateDescriptionsViaTable(repCards, EID.descriptions[languageCode].cards)

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
EID:updateDescriptionsViaTable(repPills, EID.descriptions[languageCode].pills)

EID.descriptions[languageCode].horsepills={
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
	{"21", "", "Vide tous les réceptacles de cœurs d'Isaac sauf un#Fait apparaître 1 à 4 cœurs rouges"},
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
	{"35", "", "Fait apparaître 2 araignées bleues pour chaque ennemi dans la salle#S'il n'y a aucun ennemi, fait apparaître 2 à 6 araignées bleues"},
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
	[9999] = {"", "", "Effet de double-dose aléatoire#A une chance de disparaître après chaque utilisation"}, -- golden Pill
}
---------- Glitched Item Descriptions ----------

EID.descriptions[languageCode].GlitchedItemText = {
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
	tear_fire = "Parfois, tirer une larme :#",
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

EID.descriptions[languageCode].poopSpells = {
	{"Caca", "Caca normal qui peut contenir des ressources"},
	{"Caca avec pépites", "Invoque jusqu'à 3 mouches bleues à la fois tant qu'il est intact"},
	{"Caca brûlant", "Inflige des dégâts de contact#Allume une flamme quand il est détruit"},
	{"Caca de pierre", "Inflige de gros dégâts quand il est jeté#Plus difficile à détruire"},
	{"Caca puant", "Émet des vapeurs toxiques qui empoisonnent les ennemis#{{Warning}} Les vapeurs toxiques explosent si elles entrent en contact avec du feu"},
	{"Caca noir", "Répand une flaque noire ralentissante#Détruire ce caca inflige 10 dégâts et étourdit tous les ennemis de la salle"},
	{"Caca sacré", "Est entouré d'une aura#{{Blank}} Quand Isaac se tient dans l'aura:#↑ Dégâts {{ColorLime}}+20%#↑ Débit {{ColorLime}}+150%#Larmes autoguidées#Les dégâts subis ont une chance d'être nullifiés"},
	{"Flaque brune", "Répand une flaque brune derrière Isaac#La flaque inflige des dégâts de contact aux ennemis#Marcher sur la flaque donne {{ColorLime}}dégâts +1{{ColorWhite}} et {{ColorLime}}débit 1.5 à Isaac#Si la flaque touche un caca, elle prend sa couleur et ses propriétés"},
	{"Pet", "Repousse les ennemis et projectiles et crée un nuage toxique#{{Warning}} Le nuage toxique explose s'il entre en contact avec du feu"},
	{"Bombe", "Bombe normale jetable"},
	{"Diarrhée explosive", "Fait rapidement apparaître 5 bombes aux pieds d'Isaac"},
}

---------- Misc. Text ----------

EID.descriptions[languageCode].itemPoolFor = "Banque d'objet :"
EID.descriptions[languageCode].itemPoolNames = {
	[0] = "Salle du Trésor", "Boutique", "Boss", "Diable", "Ange", "Salle Secrète", "Bibliothèque", "Bonneteau", "Coffre Doré", "Coffre Rouge", "Mendiant", "Mendiant Démoniaque", "Salle Maudite", "Mendiant Serrurier", "Mendiant Électrique", "Coffre de Maman", "Salle du Trésor {{ColorSilver}}(mode Avarice)", "Boss {{ColorSilver}}(mode Avarice)", "Boutique {{ColorSilver}}(mode Avarice)", "Diable {{ColorSilver}}(mode Avarice)", "Ange {{ColorSilver}}(mode Avarice)", "Salle Maudite {{ColorSilver}}(mode Avarice)", "Salle Secrète {{ColorSilver}}(mode Avarice)", "Machine à Pince", "Salle Ultra Secrète", "Mendiant Explosif", "Planétarium", "Coffre Antique", "Orphelinat", "Coffre en Bois", "Mendiant Moisi",
}

EID.descriptions[languageCode].VoidShopText = "Si absorbé directement :"
EID.descriptions[languageCode].VoidOptionText = " sera absorbé à la place"
EID.descriptions[languageCode].VoidNames[2] = "Débit {{ColorLime}}{1}"

EID.descriptions[languageCode].spindownError = "L'objet disparaît"

EID.descriptions[languageCode].CraftingBagContent = "Sac:"
EID.descriptions[languageCode].CraftingRoomContent = "Salle:"
EID.descriptions[languageCode].CraftingFloorContent = "Étage:"

EID.descriptions[languageCode].CraftingBagQuality = "Qualité du sac:"
EID.descriptions[languageCode].CraftingBestQuality = "Plus haute qualité:"

EID.descriptions[languageCode].CraftingHideKey = "Masquer:"
EID.descriptions[languageCode].CraftingPreviewKey = "Prévisualiser:"
EID.descriptions[languageCode].CraftingPreviewBackup = "{{Warning}} Si cet objet n'a pas été débloqué, il deviendra"

EID.descriptions[languageCode].CraftingResults = "(Défiler: maintenir {{CONFIG_BoC_Toggle}} + {{ButtonY}} {{ButtonA}},#Verrouiller: {{ButtonX}}, Rafraîchir: {{ButtonB}})"

EID.descriptions[languageCode].BlankCardCharge = "Temps de charge avec {{ColorYellow}}Carte Blanche{{ColorWhite}} :"
EID.descriptions[languageCode].BlankCardQCard = "Téléporte Isaac dans la salle d'erreur#La {{ColorYellow}}Carte Blanche{{ColorWhite}} et la {{ColorYellow}}Carte ?{{ColorWhite}} seront détruites"
EID.descriptions[languageCode].ClearRuneCharge = "Temps de charge avec {{ColorYellow}}Rune de Cristal{{ColorWhite}} :"
EID.descriptions[languageCode].PlaceboCharge = "Temps de charge avec {{ColorYellow}}Placebo{{ColorWhite}} :"
EID.descriptions[languageCode].FlipItemToggleInfo = "( {{ButtonSelect}} : voir la description)"

EID.descriptions[languageCode].FalsePHDHeart = "Fait apparaître un cœur noir {{BlackHeart}}"
EID.descriptions[languageCode].FalsePHDDamage = "Dégâts {{ColorLime}}+0.6"
EID.descriptions[languageCode].FalsePHDHorseDamage = "Dégâts {{ColorLime}}+1.2"

EID.descriptions[languageCode].PandorasBoxStrangeKeyEffect = "Détruit l'{{ColorYellow}}Étrange Clé{{ColorWhite}} et fait apparaître 6 objets provenant de banques d'objets aléatoires#Ne déclenche pas l'effet normal de l'objet"

EID.descriptions[languageCode].AchievementWarningTitle = "{{ColorYellow}}{{Warning}} ATTENTION !"
EID.descriptions[languageCode].AchievementWarningText = "Les succès sont désactivés !#Pour pouvoir débloquer des succès, tu dois d'abord tuer {{ColorCyan}}Maman{{ColorSilver}} (Profondeurs II){{ColorWhite}}.#{{Blank}}#{{Blank}} Si tu as déjà battu {{ColorCyan}}Maman{{ColorWhite}}, ce message est un bug et peut être ignoré#{{Blank}} {{ColorSilver}}(Cette alerte peut être désactivée dans la config)"
EID.descriptions[languageCode].OldGameVersionWarningText = "Ta version de Repentance n'est pas à jour !#Seule la dernière version du jeu (1.7.9c) est officiellement supportée.#{{Blank}} {{ColorSilver}}(Cette alerte peut être désactivée dans la config)"

EID.descriptions[languageCode].ModdedRecipesWarningText = "Les objets de mod peuvent dérégler les recettes de fabrication !#Utilise l'option Item Probability ou désactive l'affichage du Sac de Fabrication dans la config du mod si tes recettes sont incorrectes#{{Blank}} {{ColorSilver}}(Cette alerte peut être désactivée dans la config)"

EID.descriptions[languageCode].ResultsWithX = "(Avec {1})"

if EID.enableDebug then
    EID.descriptions[languageCode].repCollectibles = repCollectibles
    EID.descriptions[languageCode].repTrinkets = repTrinkets
    EID.descriptions[languageCode].repCards = repCards
    EID.descriptions[languageCode].repPills = repPills
end