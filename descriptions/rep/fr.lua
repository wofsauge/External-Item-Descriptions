--------------------------------------
-----  Basic French descriptions -----
--------------------------------------

-- Last Sync with English: 08.08.2021

-- FORMAT: Item ID | Name| Description
-- '#' = starts new line of text

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  ! = Warning

local languageCode = "fr"

local repCollectibles={
	[2] = {"2", "Troisième Œil", "↓ Débit {{ColorError}}-49%#Triple tir"},
	[5] = {"5", "Mon Reflet", "↑ Dégâts {{ColorLime}}+1.5#↑ Portée {{ColorLime}}x1.6 +1.5#↑ Vitesse des tirs {{ColorLime}}+0.6#↓ Chance {{ColorError}}-1#Les larmes d'Isaac reviennent vers lui comme un boomerang"}, -- My Reflection
	[6] = {"6", "Petite Commission", "↑ Débit {{ColorLime}}+1.5#↓ Portée {{ColorError}}-1.5 -20%"}, -- Number One
	[7] = {"7", "Sang du Martyr", "↑ Dégâts {{ColorLime}}+1.0"}, --Blood of the Martyr
	[12] = {"12", "Champignon Magique", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soin complet#↑ Dégâts {{ColorLime}}+0.3 x1.5#↑ Portée {{ColorLime}}+1.5#↑ Vitesse {{ColorLime}}+0.3#Taille augmentée"}, -- Magic Mush
	[13] = {"13", "Le Virus", "↑ Vitesse {{ColorLime}}+0.2#Rentrer en contact avec un ennemi l'empoisonne"}, -- The Virus
	[14] = {"14", "Crise d'Hormones", "↑ Vitesse {{ColorLime}}+0.3#↑ Portée {{ColorLime}}+5.25"}, -- Roid Rage
	[18] = {"18", "Un Dollar", "{{Coin}} +100 Pièces"}, -- A Dollar
	[22] = {"22", "Déjeuner", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soigne 1 cœur rouge"}, -- Lunch
	[23] = {"23", "Dîner", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soigne 1 cœur rouge"}, -- Dinner
	[24] = {"24", "Dessert", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soigne 1 cœur rouge"}, -- Dessert
	[25] = {"25", "Petit Déjeuner", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soigne 1 cœur rouge"}, -- Breakfast
	[26] = {"26", "Viande Avariée", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soigne 1 cœur rouge"}, -- Rotten Meat
	[29] = {"29", "Culotte de Maman", "↑ Portée {{ColorLime}}+1.5#Invoque 3 à 6 mouches bleues"}, -- Moms Underwear
	[30] = {"30", "Escarpins de Maman", "↑ Portée {{ColorLime}}+1.5#Permet à Isaac d'infliger des dégâts de contact"}, -- Mom's Heels
	[31] = {"31", "Rouge à Lèvres de Maman", "↑ Portée {{ColorLime}}+2.25#Fait apparaître un cœur"}, -- Mom's Lipstick
	[33] = {"33", "Bible", "Permet à Isaac de voler#{{Timer}} L'effet dure une salle#Tue instantanément {{ColorCyan}}Maman{{ColorWhite}} et le {{ColorCyan}}Cœur de Maman#{{Warning}} Tue Isaac si utilisée contre {{ColorCyan}}Satan"}, -- The Bible
	[34] = {"34", "Livre de Bélial", "↑ Dégâts{{ColorLime}} +2#{{Timer}} L'effet dure une salle#{{DevilChance}} Chance de Pacte avec le Diable {{ColorLime}}+12.5%"}, -- Book of Belial
	[37] = {"37", "M. Boum", "Place une grosse bombe à la position d'Isaac#L'explosion de la bombe inflige 185 dégâts"},
	[40] = {"40", "Kamikaze !", "Déclenche une explosion à la position d'Isaac#{{Warning}} Inflige un demi-cœur de dégâts à Isaac"}, -- Kamikaze!
	[41] = {"41", "Serviette de Maman", "Terrifie tous les ennemis dans la salle#Invoque une mouche bleue#{{Timer}} L'effet dure 5 secondes"},
	[42] = {"42", "Tête de Bob", "Bombe jetable#Crée un nuage de poison à l'endroit de l'explosion"}, -- Bob's Rotten Head
	[44] = {"44", "Téléportation !", "Téléporte Isaac dans une salle aléatoire dans l'étage"}, -- Teleport
	[45] = {"45", "Joli Cœur", "{{HealingRed}} Soigne 1 cœur rouge"}, -- Yum Heart
	[46] = {"46", "Pied Chanceux", "↑ Chance {{ColorLime}}+1#Augmente les chances de gagner aux jeux d'argent et d'obtenir des récompenses de salle#Les pilules n'ont plus d'effets négatifs"}, -- Lucky Foot
    [51] = {"51", "Pentagramme", "↑ Dégâts {{ColorLime}}+1.0#{{AngelDevilChanceSmall}} {{ColorLime}}+10%{{ColorWhite}} de chances de Pacte avec le Diable et d'Offrande des Anges"},
	[52] = {"52", "Dr. Fœtus", "↓ Débit {{ColorError}}-60%#Remplace les larmes d'Isaac par des bombes"},
    [53] = {"53", "Gros Aimant", "Isaac attire les ressources#Permet d'ouvrir les coffres à distance sans avoir besoin de les toucher"}, -- Magneto
	[55] = {"55", "Œil de Maman", "Isaac tire parfois une larme additionnelle dans la direction opposée#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 5 Chance)"}, -- Mom's Eye
	[59] = {"59", "Livre de Bélial (passif)", "<Cet objet n'existe pas>"}, -- The Book of Belial (Judas' Birthright version)
    [62] = {"62", "Morsure de Vampire", "↑ Dégâts {{ColorLime}}+0.3#{{HealingRed}} Tuer 13 ennemis soigne un demi-cœur rouge"}, -- Charm of the Vampire
	[64] = {"64", "Soldes", "Réduit le prix des objets de la boutique de moitié"}, -- Steam Sale
	[65] = {"65", "Guide du Petit Anarchiste", "Invoque 6 bombes troll"},
	[67] = {"67", "Sœurette Marie", "Suit Isaac et tire dans la même direction que lui#{{DamageSmall}} 6 dégâts par larme"}, -- Sister Maggy
	[69] = {"69", "Chocolat Chaud", "Permet à Isaac de charger ses tirs#Une larme complètement chargée inflige {{ColorLime}}dégâts x4"}, --Chocolate Milk
	[70] = {"70", "Hormones de Croissance", "↑ Dégâts {{ColorLime}}+1.0#↑ Vitesse {{ColorLime}}+0.2"}, -- Growth Hormones
	[71] = {"71", "Mini Champi", "↑ Vitesse {{ColorLime}}+0.3#↑ Portée {{ColorLime}}+1.5#Taille diminuée"}, -- Mini Mush
	[72] = {"72", "Rosaire", "↑ Débit {{ColorLime}}+0.5#{{SoulHeart}} +3 cœurs d'âme#Ajoute {{ColorYellow}}La Bible{{ColorWhite}} {{Collectible33}} à toutes les banques d'objets"}, -- Rosary
	[73] = {"73", "Cube de Viande", "Orbite autour d'Isaac, bloque les projectiles ennemis et inflige des dégâts de contact#Obtenir plusieurs fois cet objet l'améliore"},
	[75] = {"75", "Doctorat", "{{HealingRed}} Soigne 2 cœurs rouges#Fait apparaître une pilule#Les pilules ne peuvent plus avoir d'effet négatif#Les banques du sang donnent une pièce de plus"},
	[76] = {"76", "Lunettes à Rayon X", "Ouvre les entrées des salles Secrètes {{SecretRoom}} et Super Secrètes {{SuperSecretRoom}}"},
	[77] = {"77", "Licorne Arc-En-Ciel", "{{Blank}} Pendant 6 secondes :#Rend Isaac invulnérable#↑ Vitesse {{ColorLime}}+0.28"}, -- My Little Unicorn
	[78] = {"78", "Livre de la Révélation", "{{SoulHeart}} +1 cœur d'âme#Remplace le boss par un {{ColorCyan}}Cavalier de l'Apocalypse#Les Cavaliers ne peuvent apparaître qu'une fois par chapitre et ne peuvent pas remplacer les boss majeurs#{{AngelDevilChanceSmall}} {{ColorLime}}+17.5%{{ColorWhite}} de chances de Pacte avec le Diable ou d'Offrande des Anges"},
	[79] = {"79", "Le Nombre de la Bête", "↑ Dégâts {{ColorLime}}+1.0#↑ Vitesse {{ColorLime}}+0.2#{{BlackHeart}} +1 cœur noir"}, -- The Mark
	[80] = {"80", "Le Pacte", "↑ Dégâts {{ColorLime}}+0.5#↑ Débit {{ColorLime}}+0.7#{{BlackHeart}} +2 cœurs noirs"}, -- The Pact
	[83] = {"83", "Clou Pointu", "{{HalfBlackHeart}} +1 Demi-cœur noir#↑ Dégâts {{ColorLime}}+2#↓ Vitesse {{ColorError}}-0.18#Permet à Isaac d'infliger des dégâts de contact et d'écraser les obstacles#{{Timer}} L'effet dure une salle"}, -- The Nail
    [84] = {"84", "Aller au Fond des Choses", "Ouvre une trappe vers l'étage suivant#Utiliser l'objet sur un élément de décor au sol ouvre une trappe vers un Souterrain {{LadderRoom}}"}, -- We Need To Go Deeper
	[87] = {"87", "Cornes de Loki", "Isaac tire parfois dans 4 directions à la fois#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 15 Chance)"},
	[91] = {"91", "Casque de Spéléologue", "Révèle les icônes sur la carte à deux salles de distance#Révèle la salle secrète, super secrète et de mini-boss sur la carte#Protège des projectiles qui tombent du plafond"},
    [98] = {"98", "Relique", "Fait apparaître un cœur d'âme toutes les 7 ou 8 salles"}, -- The Relic
	[101] = {"101", "Auréole", "{{Heart}} +1 réceptacle de cœur#↑ Dégâts {{ColorLime}}+0.3#↑ Débit {{ColorLime}}+0.2#↑ Portée {{ColorLime}}+0.38#↑ Vitesse {{ColorLime}}+0.3"}, -- The Halo
	[106] = {"106", "M. Méga", "↑ Dégâts des bombes {{ColorLime}}x1.85#{{Bomb}} +5 Bombes"}, -- Mr. Mega
	[107] = {"107", "Ciseaux Cranteurs", "Permet à Isaac de voler#Le corps d'Isaac se sépare de sa tête, pourchasse les ennemis et inflige des dégâts de contact#{{DamageSmall}} 23.5 dégâts par seconde#{{Timer}} L'effet dure une salle"},
	[110] = {"110", "Lentille de Maman", "↑ Portée {{ColorLime}}+0.38#Isaac tire parfois une larme pétrifiante#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à 20 Chance)"}, -- Mom's Contacts
	[114] = {"114", "Couteau de Maman", "Remplace les larmes d'Isaac par un couteau#Le couteau inflige entre {{ColorLime}}dégâts x2{{ColorWhite}} et {{ColorLime}}dégâts x6{{ColorWhite}} selon la distance du lancer"},
	[115] = {"115", "Planche de Ouija", "↑ Débit {{ColorLime}}+0.4#Larmes spectrales"},
	[118] = {"118", "Soufre", "Remplace les larmes d'Isaac par une attaque chargée qui crache un laser de sang"},
	[121] = {"121", "Champignon Suspect", "{{EmptyHeart}} +1 réceptacle de cœur#↑ Dégâts {{ColorLime}}+1.0#↑ Portée {{ColorLime}}+0.25#↓ Vitesse {{ColorError}}-0.2"}, -- Odd Mushroom (Large)
	[123] = {"123", "Manuel des Monstres", "Invoque un familier au hasard#Le familier disparaît à l'étage suivant"}, -- Monster Manual
	[126] = {"126", "Lame de Rasoir", "↑ Dégâts {{ColorLime}}+1.2#{{Warning}} Inflige 1 cœur de dégâts à Isaac {{ColorSilver}}(un demi-cœur par utilisation suivante dans la même salle)#Retire les cœurs rouges en priorité#{{Timer}} L'effet dure une salle"},
	[129] = {"129", "Seau de Saindoux", "{{Heart}} +2 réceptacles de cœur#{{HealingRed}} Soigne un demi-cœur rouge#↓ Vitesse {{ColorError}}-0.2"}, -- Bucket of Lard
	[135] = {"135", "Perfusion", "Inflige un demi-cœur de dégâts à Isaac et fait apparaître 1 ou 2 pièces#Retire les cœurs rouges en priorité"},
    [136] = {"136", "Mon Meilleur Ami", "Place une peluche qui attire les ennemis et explose après 5 secondes"},
	[138] = {"138", "Stigmates", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soigne 1 cœur rouge#↑ Dégâts {{ColorLime}}+0.3"}, -- Stigmata
	[139] = {"139", "Sac à Main de Maman", "Permet à Isaac de porter deux babioles à la fois#Fait apparaître une babiole"}, -- Mom's Purse
	[140] = {"140", "Malédiction de Bob", "{{Bomb}} +5 bombes#Les bombes d'Isaac laissent un nuage de poison#Rend Isaac invulnérable aux nuages de poison"}, -- Bob's Curse
	[142] = {"142", "Scapulaire", "Descendre à un demi-cœur de vie totale ajoute un cœur d'âme aux PV d'Isaac#L'effet ne se déclenche qu'une fois par salle#{{Warning}} L'effet ne se déclenche pas sur un don de sang"},
	[144] = {"144", "Ami Mendiant", "Ramasse les pièces au sol et en convertit 3 ou 4 en une ressource ou un objet"},
	[147] = {"147", "Pioche en Fer", "Donner un coup de pioche brise les obstacles et inflige des dégâts#Chaque touche avec la pioche la décharge partiellement#Ne peut être rechargée qu'au changement d'étage"}, -- Notched Axe
	[148] = {"148", "Infestation", "Subir un dégât invoque 2 à 6 mouches bleues"}, -- Infestation
	[149] = {"149", "Ipéca", "↑ Dégâts {{ColorLime}}+40#↓ Débit {{ColorError}}-67%#↓ Vitesse des tirs {{ColorError}}-0.2#Les larmes d'Isaac explosent au contact et empoisonnent les ennemis"}, -- Ipecac
	[152] = {"152", "Technologie 2", "↓ Débit {{ColorError}}-33%#Remplace les larmes de l'œil droit d'Isaac par un laser continu#Le laser inflige 13% des dégâts d'Isaac"}, -- Technology 2
	[153] = {"153", "Araignée Mutante", "↓ Débit {{ColorError}}-58%#Quadruple tir"},
    [155] = {"155", "Œil Baladeur", "Rebondit contre les murs de la salle et inflige des dégâts de contact#↑ Dégâts {{ColorLime}}+34%{{ColorWhite}} pour les larmes tirées de l'œil gauche#{{DamageSmall}} 17 dégâts par seconde"},
	[157] = {"157", "Soif de Sang", "↑ Dégâts augmentés pour chaque dégât subi#Plafonne à {{ColorLime}}dégâts +1.5{{ColorWhite}} après 6 dégâts subis#{{Timer}} L'effet dure un étage"},
	[158] = {"158", "Boule de Cristal", "Révèle l'étage sur la carte#Fait apparaître une carte ou un cœur d'âme#Quand tenue :#↑ Chance de Planétarium {{ColorLime}}+15% {{ColorSilver}}({{ColorLime}}+100%{{ColorSilver}} si une Salle du Trésor a été ignorée)"}, -- Crystal Ball
	[161] = {"161", "Ânkh", "À sa mort, Isaac est ressuscité en {{ColorLightOrange}}???"},
	[169] = {"169", "Polyphème", "↑ Dégâts {{ColorLime}}x2 +4#↓ Débit {{ColorError}}-58%#Les larmes d'Isaac transpercent les ennemis qu'elles tuent"},
    [171] = {"171", "Filière d'Araignée", "Ralentit les ennemis pendant 4 secondes et leur inflige 10 dégâts#Les ennemis tués par cet objet font apparaître des araignées bleues"}, -- Spider Butt
	[172] = {"172", "Dague Sacrificielle", "Orbite autour d'Isaac, bloque les projectiles ennemis et inflige des dégâts de contact#{{DamageSmall}} 112.5 dégâts par seconde"},
	[173] = {"173", "Mitre", "Les cœurs rouges au sol ont 33% de chances d'être convertis en cœurs d'âme"},
	[174] = {"174", "Bébé Arc-en-Ciel", "Tire des larmes aléatoires#{{DamageSmall}} 3 à 6 dégâts par larme"},
	[176] = {"176", "Cellules Souches", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soigne 1 cœur rouge#↑ Vitesse des tirs {{ColorLime}}+0.16"}, -- Stem Cells
	[178] = {"178", "Eau Bénite", "Se projette dans la direction où tire Isaac#Répand une flaque paralysante en se brisant"}, -- Holy Water
	[180] = {"180", "Haricot Noir", "Subir un dégât fait péter Isaac plusieurs fois et crée des nuages de poison"},
	[181] = {"181", "Poney Blanc", "↑ Vitesse =1.5#Permet à Isaac de voler#Utiliser l'objet fait se ruer Isaac en ligne droite et des rayons de lumière frappent le sol derrière lui#Isaac est invulnérable pendant la ruée"},
	[182] = {"182", "Sacré-Cœur", "{{Heart}} +1 réceptacle de cœur#↑ Dégâts {{ColorLime}}x2.3 +1#↑ Portée {{ColorLime}}+0.5#↓ Vitesse des tirs {{ColorError}}-0.25#↓ Débit {{ColorError}}-0.4#Larmes autoguidées"}, -- Sacred Heart
	[184] = {"184", "Saint Graal", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soigne 1 cœur rouge#Permet à Isaac de voler"}, -- Holy Grail
	[186] = {"186", "Droits du Sang", "Inflige 40 dégâts à tous les ennemis de la salle#{{Warning}} Inflige 1 cœur de dégâts à Isaac {{ColorSilver}}(un demi-cœur par utilisation suivante dans la même salle)"},
	[189] = {"189", "Super Fan de SMB", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soin complet#↑ Dégâts {{ColorLime}}+0.3#↑ Débit {{ColorLime}}+0.2#↑ Portée {{ColorLime}}+0.5#↑ Vitesse {{ColorLime}}+0.2"}, --SMB Super Fan
    [192] = {"192", "La Télépathie pour les Nuls", "↑ Portée {{ColorLime}}+3.0#Larmes autoguidées#{{Timer}} L'effet dure une salle"}, -- Telepathy for Dummies
	[193] = {"193", "DE LA VIANDE !", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soigne 1 cœur rouge#↑ Dégâts {{ColorLime}}+0.3"}, -- MEAT!
	[194] = {"194", "Boule Magique", "↑ Vitesse des tirs {{ColorLime}}+0.16#↑ Chance de Planétarium {{ColorLime}}+15%#Fait apparaître une carte"}, -- Magic 8 Ball
	[197] = {"197", "Sang du Christ", "↑ Dégâts {{ColorLime}}+0.5#↑ Portée {{ColorLime}}+0.38"}, -- Jesus Juice
	[203] = {"203", "Offre Spéciale", "50% de chances de faire apparaître les versions doublées des ressources"}, -- Humbling Bundle
	[205] = {"205", "Prise de Sang", "Utiliser un objet activable partiellement chargé le recharge complètement#{{Warning}} Inflige un demi-cœur de dégâts à Isaac par barre de charge remplie#Retire les cœurs rouges en priorité"}, -- Sharp Plug
	[206] = {"206", "Guillotine", "↑ Dégâts {{ColorLime}}+1.0#↑ Débit {{ColorLime}}+1.0#La tête d'Isaac orbite autour de son corps#La tête tire les larmes et inflige des dégâts de contact#{{DamageSmall}} 56 dégâts par seconde"}, -- Guillotine
	[207] = {"207", "Boule de Pansements", "Orbite autour d'Isaac, bloque les projectiles ennemis et inflige des dégâts de contact#Obtenir plusieurs fois cet objet l'améliore"},
	[211] = {"211", "Bébé Araignée", "Subir un dégât invoque 3 à 5 araignées bleues"}, -- Spider Baby
	[214] = {"214", "Anémie", "↑ Portée {{ColorLime}}+1.5#Subir un dégât répand une traînée de sang corrosive derrière Isaac#{{Timer}} L'effet dure une salle"}, -- Anemic
	[215] = {"215", "Tête de Bouc", "{{AngelDevilChanceSmall}} Garantit d'ouvrir l'Antre du Diable ou le Refuge des Anges après avoir battu le boss de l'étage"},
	[218] = {"218", "Placenta", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soigne 1 cœur rouge#{{HealingRed}} Soigne parfois un demi-cœur rouge quand le minuteur finit par :00"}, -- Placenta
	[219] = {"219", "Vieux Pansement", "{{EmptyHeart}} +1 réceptacle de cœur#Subir un dégât fait parfois apparaître un cœur rouge#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 80 Chance)"},
	[222] = {"222", "Antigravité", "↑ Débit {{ColorLime}}+1#Maintenir les boutons de tir fait flotter les larmes d'Isaac sur place#Relâcher les boutons de tir envoie toutes les larmes dans la direction où elles ont été tirées"},
	[223] = {"223", "Pyromanie", "{{Bomb}} +5 Bombes#{{HealingRed}} Les explosions soignent un demi-cœur rouge#Rend Isaac invulnérable aux flammes et aux explosions"},
	[224] = {"224", "Corps de Cricket", "↑ Débit {{ColorLime}}+0.5#↓ Portée {{ColorError}}-20%#Les larmes d'Isaac se divisent en 4 au contact"}, -- Cricket's Body
	[225] = {"225", "Latex", "Subir un dégât fait parfois apparaître un cœur d'âme#Tuer un ennemi fait parfois apparaître un demi-cœur rouge#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 46 Chance)"}, -- Gimpy
	[226] = {"226", "Lotus Noir", "{{Heart}} +1 réceptacle de cœur#{{SoulHeart}} +1 cœur d'âme#{{BlackHeart}} +1 cœur noir#{{HealingRed}} Soigne 1 cœur rouge"}, -- Black Lotus
	[227] = {"227", "Tirelire Cochon", "{{Coin}} +3 Pièces#Subir un dégât fait apparaître 1 ou 2 pièces"},
	[228] = {"228", "Parfum de Maman", "↑ Débit {{ColorLime}}+0.5#Isaac tire parfois une larme terrifiante#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 85 Chance)"}, -- Moms Perfume
	[229] = {"229", "Poumon de Monstro", "↓ Débit {{ColorError}}-77%#Remplace les larmes d'Isaac par une attaque chargée qui crache une gerbe de larmes"},
	[230] = {"230", "Abaddon", "↑ Dégâts {{ColorLime}}+1.5#↑ Vitesse {{ColorLime}}+0.2#{{BlackHeart}} +2 cœurs noirs#Convertit tous les réceptacles de cœur d'Isaac en cœurs noirs#Isaac tire parfois une larme terrifiante#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 85 Chance)"}, -- Abaddon
	[232] = {"232", "Chronomètre", "↑ Vitesse {{ColorLime}}+0.3#Ralentit tous les ennemis de manière permanente"}, -- Stop Watch
	[233] = {"233", "Planète Naine", "↑ Portée {{ColorLime}}+6.5#Les larmes d'Isaac orbitent autour de lui#Larmes spectrales"},
	[238] = {"238", "1er Fragment de Clé", "Combiner ce fragment de clé à l'autre permet d'ouvrir la grande porte dans le {{ColorTransform}}Coffre{{ColorWhite}} et la {{ColorTransform}}Chambre Noire #Augmente la fréquence d'apparition des cœurs éternels#{{AngelChanceSmall}} Augmente les chances d'Offrandes des Anges"},
	[239] = {"239", "2è Fragment de Clé", "Combiner ce fragment de clé à l'autre permet d'ouvrir la grande porte dans le {{ColorTransform}}Coffre{{ColorWhite}} et la {{ColorTransform}}Chambre Noire #Augmente la fréquence d'apparition des cœurs éternels#{{AngelChanceSmall}} Augmente les chances d'Offrandes des Anges"},
	[240] = {"240", "Traitement Expérimental", "↑ Augmente 4 stats#↓ Diminue 2 stats "}, -- Experimental Treatment
	[245] = {"245", "20/20", "↓ Dégâts {{ColorError}}-20%#Double tir"}, -- 20/20
	[246] = {"246", "Carte Perdue", "Révèle l'emplacement des salles Secrète {{SecretRoom}} et Super Secrète {{SuperSecretRoom}} sur la carte"},
	[248] = {"248", "Conscience Collective", "Double les dégâts infligés par les locustes, les mouches et araignées bleues, et les familiers mouches et araignées"}, -- Hive Mind
	[253] = {"253", "Croûte Magique", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soigne 1 cœur rouge#↑ Chance {{ColorLime}}+1"}, -- Magic Scab
	[254] = {"254", "Caillot de Sang", "↑ Dégâts {{ColorLime}}+1#↑ Portée {{ColorLime}}+1.5#L'effet n'est appliqué que sur l'œil gauche"}, -- Blood Clot
	[256] = {"256", "Bombes Brûlantes", "{{Bomb}} +5 Bombes#Les bombes d'Isaac infligent des dégâts de contact aux ennemis et allument une flamme lorsqu'elles explosent#Rend Isaac invulnérable aux dégâts de feu"}, -- Hot Bombs
	[260] = {"260", "Bougie Noire", "{{BlackHeart}} +1 cœur noir#Immunité aux fléaux"},
	[261] = {"261", "Proptose", "↑ Dégâts {{ColorLime}}+0.5#Les larmes d'Isaac infligent {{ColorLime}}dégâts x3{{ColorWhite}} à bout portant mais leurs dégâts diminuent avec le temps qu'elles passent en l'air"}, -- Proptosis
	[262] = {"262", "Page Déchirée 2", "{{BlackHeart}} +1 cœur noir#Double les dégâts infligés en perdant un cœur noir#Inflige 80 dégâts à tous les ennemis de la salle quand les PV totaux d'Isaac sont réduits à 1 cœur"}, -- Missing Page 2
	[263] = {"263", "Rune de Cristal", "Déclenche l'effet de la rune ou pierre d'âme portée par Isaac sans la consommer#Le temps de recharge de l'objet varie selon la rune#Fait apparaître une rune"}, -- Clear Rune   (REPENTANCE ITEM)
	[264] = {"264", "Mouche Maline", "Orbite autour d'Isaac et attaque les ennemis qui lui infligent des dégâts#{{DamageSmall}} 6.5 dégâts par seconde"},
	[272] = {"272", "BGM", "Rebondit contre les murs de la salle et explose au contact d'un ennemi#{{DamageSmall}} 100 dégâts par explosion#{{Warning}} L'explosion peut infliger des dégâts à Isaac"},
	[273] = {"273", "Cerveau de Bob", "Peut être projeté en tirant#Explose au contact d'un ennemi#{{DamageSmall}} 100 dégâts par explosion#{{Warning}} L'explosion peut infliger des dégâts à Isaac"}, -- Bob's Brain
	[274] = {"274", "Meilleure Pote", "Subir un dégât invoque une mouche qui orbite autour d'Isaac et inflige des dégâts de contact pour la durée d'une salle#{{DamageSmall}} 150 dégâts par seconde"}, -- Best Bud
	[275] = {"275", "P'tit Soufre", "Tire des lasers de sang#{{DamageSmall}} 24 dégâts par laser"}, -- Lil Brimstone
	[276] = {"276", "Cœur d'Isaac", "Rend Isaac invulnérable et invoque un familier qui le suit#{{Warning}} Isaac subit un dégât si le familier touche un ennemi ou un projectile#Le cœur charge une vague de larmes quand Isaac tire et la crache quand les boutons de tir sont relâchés"}, -- Isaac's Heart
	[278] = {"278", "Mendiant des Ombres", "Ramasse les cœurs rouges au sol et convertit 1,5 cœurs rouges en 1 cœur noir, une araignée, une pilule, une carte ou une rune"}, -- Dark Bum
	[280] = {"280", "Sissy la Faucheuse", "Invoque des araignées bleues dans les salles hostiles#Envoûte les ennemis qui la touchent"}, -- Sissy Longlegs
	[283] = {"283", "D100", "Rejoue tous les objets sur piédestaux, les ressources, les rochers, les stats et tous les objets d'Isaac#Duplique une ressource aléatoire dans la salle#Rejoue la salle actuelle et affaiblit les ennemis"}, -- D100
	[285] = {"285", "D10", "Transforme tous les ennemis de la salle en ennemis moins forts"}, -- D10
	[286] = {"286", "Carte Blanche", "Déclenche l'effet de la carte portée par Isaac sans la consommer#Le temps de recharge de l'objet dépend de la carte"},
	[287] = {"287", "Livre des Secrets", "Active l'effet de la {{ColorYellow}}Carte au Trésor{{ColorWhite}} {{Collectible54}}, la {{ColorYellow}}Boussole{{ColorWhite}} {{Collectible21}} ou la {{ColorYellow}}Carte Perdue{{ColorWhite}} {{Collectible246}}#Ne donne que les effets qui ne sont pas déjà actifs#Quand tous les effets sont actifs, donne l'effet des {{ColorYellow}}Lunettes à Rayon X{{ColorWhite}} {{Collectible76}}#{{Timer}} L'effet dure un étage"}, -- Book of Secrets
	[288] = {"288", "Boîte d'Araignées", "Fait apparaître 4 à 8 araignées bleues"}, -- Box of Spiders
	[289] = {"289", "Bougie Rouge", "Lance une flamme rouge#La flamme disparaît après 10 secondes, ou après avoir infligé des dégâts ou bloqué des tirs 5 fois"}, -- Red Candle
	[291] = {"291", "Chasse d'Eau", "Tue instantanément les ennemis et boss cacas#Transforme les ennemis de la salle en cacas#Éteint les feux et inonde le sol de la salle#Transforme la lave en sol franchissable"}, -- Flush!
	[292] = {"292", "Bible Satanique", "{{BlackHeart}} +1 cœur noir#Utiliser l'objet avant un combat de boss transforme la récompense du combat en un Pacte avec le Diable"}, -- Satanic Bible
	[293] = {"293", "Head of Krampus", "Crache un laser de sang dans 4 directions"}, -- Head of Krampus
	[294] = {"294", "Haricot Beurre", "Repousse les ennemis et les projectiles#Projeter un ennemi contre un mur ou un obstacle lui inflige des dégâts"}, -- Butter Bean
	[295] = {"295", "Pot de Vin", "Retire une pièce à Isaac#Inflige{{ColorLime}} dégâts x2{{CR}} à tous les ennemis dans la salle"}, -- Magic Fingers
	[296] = {"296", "Adaptateur", "Convertit un cœur d'âme ou un cœur noir en un réceptacle de cœur"}, -- Converter
--	[297] = {"297", "Boîte de Pandore", "Donne selon l'étage :#{{ColorTransform}}SS1{{ColorWhite}} : 2 cœurs d'âme#{{ColorTransform}}SS2{{ColorWhite}} : 2 clés, 2 bombes#{{ColorTransform}}G1{{ColorWhite}} : 1 Objet de boss#{{ColorTransform}}G2{{ColorWhite}} : SS1 + G1#{{ColorTransform}}P1{{ColorWhite}} : 4 cœurs d'âme#{{ColorTransform}}P2{{ColorWhite}} : 30 pièces#{{ColorTransform}}U1{{ColorWhite}} : 2 Objets de boss#{{ColorTransform}}U2{{ColorWhite}} : La {{ColorYellow}}Bible{{ColorWhite}} {{Collectible33}}#{{ColorTransform}}Shéol{{ColorWhite}} : 1 Objet du Diable, 1 cœur noir#{{ColorTransform}}Cathédrale{{ColorWhite}} : 1 Objet d'Ange + 1 cœur d'âme#{{ColorTransform}}Coffre{{ColorWhite}} : 1 Pièce#{{ColorTransform}}Chambre Noire{{ColorWhite}} : Débloque le{{ColorYellow}}Carton de Déménagement{{ColorWhite}} {{Collectible523}}#{{ColorTransform}}Maison{{ColorWhite}} : La {{ColorYellow}}Clé Rouge{{ColorWhite}} {{Collectible580}}"}, -- Pandora's box
	[297] = {"297", "Boîte de Pandore", "Donne selon l'étage :#SS1 : {{SoulHeart}}{{SoulHeart}}#SS2 : {{Key}}{{Key}}{{Bomb}}{{Bomb}}#Gr1 : Objet de boss#Gr2 : Objet de boss + {{SoulHeart}}{{SoulHeart}}#Pr1 : {{SoulHeart}}{{SoulHeart}}{{SoulHeart}}{{SoulHeart}}#Pr2 : 30{{Coin}}#Ut1 : 2 Objets de boss#Ut2 : La {{ColorYellow}}Bible {{Collectible33}}#??? / Néant : Rien#Shé : Objet diabolique + {{BlackHeart}}#Cat : Objet angélique + {{SoulHeart}}#Chambre Noire : Débloque le {{ColorYellow}}Carton de Déménagement {{Collectible523}}#Coffre : {{Coin}}#Maison : La {{ColorYellow}}Clé Rouge {{Collectible580}}"}, -- Pandora's box
	[300] = {"300", "Bélier", "↑ Vitesse {{ColorLime}}+0.25#Isaac inflige des dégâts de contact aux ennemis#Marcher suffisamment vite rend Isaac invulnérable aux dégâts de contact"}, -- Aries
	[307] = {"307", "Capricorne", "↑ Dégâts {{ColorLime}}+0.93#↑ Vitesse {{ColorLime}}+0.1#↑ Portée {{ColorLime}}+0.75#↑ Débit {{ColorLime}}+0.5#{{Heart}} +1 réceptacle de cœur#{{Bomb}} +1 Bombe#{{Coin}} +1 pièce#{{Key}} +1 clé"}, -- Capricorn
	[308] = {"308", "Verseau", "Isaac répand derrière lui une trainée d'eau qui inflige 66% de ses dégâts#La traînée d'eau hérite des effets des larmes d'Isaac"}, -- Aquarius
	[309] = {"309", "Poissons", "↑ Débit {{ColorLime}}+0.5#Augmente le recul infligé par les larmes d'Isaac"},
    [310] = {"310", "Mascara d'Ève", "↑ Dégâts {{ColorLime}}x2#↓ Débit {{ColorError}}-33%#↓ Vitesse des tirs {{ColorError}}-0.5"},
    [311] = {"311", "Ombre de Judas", "À sa mort, réincarne Isaac en {{ColorLightOrange}}Judas des Ombres"},
	[314] = {"314", "Seau de Fromage", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soigne 1 cœur rouge#↓ Vitesse {{ColorError}}-0.4#Marcher sur les obstacles les détruit"}, -- Thunder Thighs
	[315] = {"315", "Attracteur Étrange", "Les larmes d'Isaac attirent les ennemis, ressources et babioles#L'attraction augmente selon la distance parcourue par la larme"}, -- Strange Attractor
	[316] = {"316", "Œil Maudit", "Isaac charge et tire 5 larmes d'un coup#Interrompre le chargement tire moins de larmes#{{Warning}} Subir un dégât pendant le chargement de l'attaque téléporte Isaac dans une salle aléatoire"},
	[319] = {"319", "Œil Gauche de Caïn", "Tire les même larmes qu'Isaac dans une direction cardinale aléatoire#{{DamageSmall}} Inflige 75% des dégâts d'Isaac"},
	[320] = {"320", "La Seule Amie de ???", "Inflige des dégâts de contact#Peut être déplacée avec les boutons de tir#{{DamageSmall}} 15 dégâts par seconde"}, -- ???'s Only Friend
	[323] = {"323", "Bocal de Larmes", "Projette 8 larmes qui infligent {{ColorLime}}dégâts +5{{ColorWhite}} en cercle autour d'Isaac#Chaque larme tirée par Isaac recharge une barre de l'objet"},
	[324] = {"324", "erreur", "{{Blank}} Téléporte Isaac vers l'une de ces salles :#{{TreasureRoom}} Salle du Trésor#{{SecretRoom}} Salle Secrète#{{SuperSecretRoom}} Salle Super Secrète#Salle d'Erreur"},
	[325] = {"325", "Paire de Ciseaux", "Sépare la tête d'Isaac de son corps#Le joueur contrôle le corps#La tête est immobile et tire en même temps que le corps"},
	[326] = {"326", "Souffle de Vie", "Maintenir [Utiliser] vide la barre de charge#Une fois vide, Isaac devient invulnérable 1 seconde et crée des rayons de lumière au contact#Effectuer un blocage parfait envoie des rayons de lumière en croix#{{Warning}} Appuyer trop longtemps inflige des dégâts à Isaac"}, -- Breath of Life
	[327] = {"327", "Le Positif", "Subir un dégât à un demi-cœur rouge ou moins rend Isaac invulnérable pendant 5 secondes#Permet d'entrer dans le {{ColorTransform}}Coffre"},
	[328] = {"328", "Le Négatif", "↑ Dégâts {{ColorLime}}+1.0#Subir un dégât à un demi-cœur rouge ou moins inflige 40 dégâts à tous les ennemis de la salle#Permet d'entrer dans la {{ColorTransform}}Chambre Noire"}, -- The Negative
	[330] = {"330", "Lait de Soja", "↑ Débit {{ColorLime}}x5.5#↓ Dégâts {{ColorError}}-80%#Réduit grandement le recul infligé par les larmes d'Isaac"}, -- Soy Milk
	[331] = {"331", "Œil de la Providence", "↑ Dégâts {{ColorLime}}+0.5#↓ Débit {{ColorError}}-0.3#↓ Vitesse des tirs {{ColorError}}-0.3#Larmes autoguidées#Les larmes d'Isaac sont entourées d'une aura qui inflige des dégâts"}, -- Godhead
	[332] = {"332", "Loques de Lazare", "À sa mort, Isaac est réincarné en {{ColorLightOrange}}Lazare Ressuscité"},
	[336] = {"336", "Oignon Pourri", "↓ Portée {{ColorError}}-1.5#↓ Vitesse des tirs {{ColorError}}-0.4#Larmes spectrales et transperçantes"}, -- Dead Onion
	[339] = {"339", "Épingle à Nourrice", "↑ Portée {{ColorLime}}+1.5#↑ Vitesse des tirs {{ColorLime}}+0.16#{{BlackHeart}} +1 cœur noir"}, -- Safety Pin
	[342] = {"342", "Lactarius Indigo", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soigne 1 cœur rouge#↑ Débit {{ColorLime}}+0.7#↓ Vitesse des tirs {{ColorError}}-16%"}, -- Blue Cap
	[344] = {"344", "Boîte d'Allumettes", "{{BlackHeart}} +1 cœur noir#Fait apparaître 3 bombes#Fait apparaître {{ColorYellow}}Allumette {{Trinket41}}"}, -- Match Book
	[345] = {"345", "Synthol", "↑ Dégâts {{ColorLime}}+1.0#↑ Portée {{ColorLime}}+1.5"}, -- Synthoil
	[346] = {"346", "Casse-Croûte", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soigne 1 cœur rouge"}, -- A Snack
	[348] = {"348", "Placebo", "Déclenche l'effet de la pilule portée par Isaac sans la consommer#Le temps de recharge de l'objet varie en fonction de la pilule"},
	[349] = {"349", "Pièce en Bois","{{Blank}} Peut faire apparaître :#Pièce de 1 centime {{ColorSilver}}(52%)#Pièce de 5 centimes {{ColorSilver}}(6%)#Pièce de 10 centimes {{ColorSilver}}(1%)#Rien {{ColorSilver}}(41%)"},
	[350] = {"350", "Choc Toxique", "Entrer dans une salle empoisonne les ennemis#Les ennemis répandent une flaque toxique à leur mort"}, -- Toxic Shock
	[352] = {"352", "Canon de Verre", "Tire une énorme larme spectrale transperçante#{{Warning}} Augmente de deux cœurs les dégâts infligés à Isaac#Quand Isaac subit un dégât, il gagne {{ColorLime}}portée +1.5{{ColorWhite}}, laisse une traînée de sang corrosif derrière lui, et brise le canon#Le canon brisé devra recharger pendant 4 salles avant de pouvoir être utilisé à nouveau"}, -- Glass Canon
	[354] = {"354", "Boîte de Céréales", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soigne 1 cœur rouge#Fait apparaître une babiole"}, -- Crack Jacks
    [355] = {"355", "Collier de Maman", "↑ Portée {{ColorLime}}+1.25#↑ Chance {{ColorLime}}+1.0#{{SoulHeart}} +1 cœur d'âme"}, -- Mom's Pearl
	[360] = {"360", "Incube", "Imite les stats et effets des larmes d'Isaac#{{DamageSmall}} Inflige 75% des dégâts d'Isaac"}, -- Incubus
	[362] = {"362", "P'tit Coffre", "{{Blank}} Peut faire apparaître à la fin d'une salle :#Une ressource {{ColorSilver}}(25%)#Une babiole {{ColorSilver}}(10%)"},
	[365] = {"365", "Mouche Égarée", "Longe les murs et les obstacles et inflige des dégâts de contact#Les ennemis à proximité la prennent pour cible#{{DamageSmall}} 30 dégâts par seconde"},
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
	[386] = {"386", "D12", "Rejoue tous les obstacles de la salle"}, -- D12
	[389] = {"389", "Sac de Runes", "Fait apparaître une rune ou une pierre d'âme toutes les 7 ou 8 salles"}, -- Rune Bag
	[391] = {"391", "Trahison", "Les larmes ennemies peuvent infliger des dégâts aux autres ennemis#Un ennemi touché par la larme d'un autre ennemi attaquera celui-ci"},
	[393] = {"393", "Baiser du Serpent", "15% de chances de tirer une larme empoisonnée#Entrer en contact avec un ennemi l'empoisonne#Les ennemis tués par le poison de contact ont 20% de chances de faire apparaitre un cœur noir"}, -- Serpent`s Kiss
	[394] = {"394", "Ligne de Mire", "↑ Débit {{ColorLime}}+0.7#↑ Portée {{ColorLime}}+3.0#Isaac et ses familiers tirent automatiquement vers une cible déplaçable avec les boutons de tir#Appuyer sur le bouton {{ColorSilver}}[Lâcher]{{ColorWhite}} met en pause le tir automatique"}, -- Marked
	[395] = {"395", "Tech X", "Remplace les larmes d'Isaac par des anneaux laser#La taille et les dégâts des anneaux augmentent avec la durée de la charge#100% de dégâts avec une charge complète"}, -- Tech X
	[397] = {"397", "Rayon Tracteur", "↑ Débit {{ColorLime}}+1.0#↑ Portée {{ColorLime}}+1.5#↑ Vitesse des tirs {{ColorLime}}+0.16#Les larmes d'Isaac sont tractées par un rayon de lumière"},
	[399] = {"399", "Gouffre du Néant", "Tirer pendant 3 secondes fait apparaître une croix rouge sur la tête d'Isaac#Relâcher les boutons de tir crée un anneau noir autour de lui qui inflige des dégâts de contact"}, -- Maw of the Void
	[401] = {"401", "Explosivo", "25% de chances de tirer une larme collante qui explose après quelques secondes"}, -- Explosivo
	[404] = {"404", "Bébé Péteur", "S'il est touché par un projectile ennemi, le familier pète et envoûte, empoisonne ou repousse les ennemis"}, -- Farting Baby
	[405] = {"405", "Bug", "Peut être projeté avec un double appui sur un bouton de tir#Rejoue les ressources et ennemis avec lesquels il entre en contact"}, -- GB Bug
	[407] = {"407", "Pureté", "↑ Augmente une stat en fonction de la couleur de l'aura qui entoure Isaac#{{Blank}} {{ColorRed}}Rouge{{ColorWhite}} = Dégâts {{ColorLime}}+4.0#{{Blank}} {{ColorCyan}}Bleu{{ColorWhite}} = Débit {{ColorLime}}+4.0#{{Blank}} {{ColorYellow}}Jaune{{ColorWhite}} = Vitesse {{ColorLime}}+0.5#{{Blank}} {{ColorOrange}}Orange{{ColorWhite}} = Portée {{ColorLime}}+3.0#Subir un dégât désactive l'effet pour une salle"},
	[408] = {"408", "Athamé", "Entoure parfois les ennemis tués d'un cercle noir qui inflige des dégâts de contact aux autres ennemis#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 30 Chance)"}, -- Athame
	[414] = {"414", "Plus d'Options", "Permet à Isaac de choisir entre deux objets dans les Salles du Trésor {{TreasureRoom}}"},
	[415] = {"415", "Couronne de Lumière", "↑ Dégâts {{ColorLime}}x2#↓ Vitesse des tirs {{ColorError}}-0.3#{{SoulHeart}} +2 Cœurs d'âme#Subir un dégât désactive ces effets pour une salle#Les effets restent désactivés tant que tous les réceptacles de cœurs d'Isaac ne sont pas remplis"},
    [416] = {"416", "Poches Profondes", "Augmente la capacité du compteur de pièces à 999#Fait apparaître 1 à 3 pièces si terminer une salle n'aurait pas donné de récompense"}, -- Deep Pockets
	[417] = {"417", "Succube", "Rebondit contre les murs entourée d'une aura#↑ Dégâts {{ColorLime}}+50%{{ColorWhite}} tant qu'Isaac reste dans l'aura#Inflige des dégâts aux ennemis dans l'aura"}, -- Succubus
	[419] = {"419", "Téléportation 2.0", "Téléporte Isaac dans une salle inexplorée#Ordre de téléportation :#{{Blank}} {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>#{{Blank}} {{SacrificeRoom}}>{{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>#{{Blank}} {{ChallengeRoom}}>{{IsaacsRoom}}>{{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>#{{Blank}} {{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"},
	[420] = {"420", "Poudre Noire", "Dessiner un cercle en marchant crée un pentagramme sur le sol#Le pentagramme inflige des dégâts aux ennemis qui se tiennent dessus"},
	[421] = {"421", "Haricot Rouge", "Isaac pète et envoûte les ennemis à proximité"}, -- Kidney Bean
	[422] = {"422", "Sablier Luisant", "Ramène Isaac dans la salle précédente et annule toutes les actions faites, les ressources ramassées et les dégâts subis dans la salle où l'objet a été utilisé#{{Timer}} 3 utilisations par étage"},
	[426] = {"426", "Admiratrice Obsessionnelle", "Suit Isaac avec un délai#Inflige des dégâts de contact#{{DamageSmall}} 30 dégâts par seconde"}, -- Obsessed Fan
	[430] = {"430", "Papa Mouche", "Suit Isaac avec un délai#Tire des larmes sur les ennemis à proximité"}, -- papa Fly
	[431] = {"431", "Bébé Interdimensionnel", "Suit Isaac avec un délai#Double et accélère les larmes d'Isaac qui le traversent"},
	[432] = {"432", "Bombes à Paillettes", "{{Bomb}} +5 bombes#Les bombes d'Isaac font parfois apparaître une ressource et ont 15% de chances d'envoûter les ennemis en explosant#Les bombes ne peuvent pas faire apparaître plus de 63 ressources par étage"},
	[433] = {"433", "Mon Ombre", "Suit Isaac avec un délai#Invoque des sangsues alliées quand un ennemi entre en contact avec l'ombre"},
	[437] = {"437", "D7", "Fait réapparaître tous les ennemis de la salle et ferme les portes#Terminer la salle à nouveau peut faire apparaître une ressource"}, -- D7
	[439] = {"439", "Boîte de Maman", "↑ Chance {{ColorLime}}+1#Double l'effet des babioles tant qu'Isaac porte l'objet#Fait apparaître une babiole"},
	[440] = {"440", "Calcul Rénal", "Change régulièrement les larmes d'Isaac en une attaque chargée#Relâcher le bouton de tir quand l'attaque est chargée crache un gros caillot suivi d'une gerbe de tirs rapides"}, -- Kidney Stone
	[442] = {"442", "Couronne des Ténèbres", "Avoir exactement 1 cœur rouge rempli donne :#↑ Portée {{ColorLime}}+1.5#↑ Débit {{ColorLime}}+2.0#↑ Vitesse des tirs {{ColorLime}}+0.2"}, -- Dark Princes Crown
	[444] = {"444", "Crayon de Papier", "Toutes les 15 larmes tirées, Isaac crache une gerbe de larmes"}, -- Lead Pencil
	[445] = {"445", "Dent de Chien", "↑ Dégâts {{ColorLime}}+0.3#↑ Vitesse {{ColorLime}}+0.1#Un hurlement de chien retentit dans les salles voisines aux salles Secrètes et Super Secrètes#Un aboiement retentit dans les salles où un rocher cache une trappe vers un Souterrain {{LadderRoom}}"},
	[448] = {"448", "Bris de Verre", "Quand Isaac subit un dégât, il gicle des larmes dans la direction où il tire et perd un demi-cœur rouge toutes les 20 secondes#Perdre un demi-cœur rouge a une chance de faire apparaître un cœur rouge#L'effet prend fin quand Isaac se soigne ou quand la prochaine perte le tuerait"}, -- Shard of Glass
	[450] = {"450", "Œil d'Avarice", "{{Warning}} Toutes les 20 larmes, Isaac tire une de ses pièces#Toucher un ennemi avec une pièce le transforme en statue d'or et fait apparaître une pièce#Tuer un ennemi doré fait apparaître 1 à 3 pièces"},
	[451] = {"451", "Nappe de Tarot", "Fait apparaître une carte ou une rune#Double les effets des cartes de tarot ou leur donne un effet supplémentaire"}, -- Tarot Cloth
	[453] = {"453", "Fracture Ouverte", "↑ Portée {{ColorLime}}+0.38#Les larmes d'Isaac se brisent en 1 à 3 petits morceaux d'os au contact d'un obstacle ou d'un ennemi"}, -- Compound Fracture
	[455] = {"455", "Médaille de Papa", "↑ Portée {{ColorLime}}+0.38#Fait apparaître une pièce porte-bonheur"},
	[456] = {"456", "Encas de Minuit", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soigne 1 cœur rouge"}, -- Midnight Snack
	[458] = {"458", "Nombril", "Permet à Isaac de porter deux babioles#Fait apparaître une babiole"},
	[459] = {"459", "Sinusite", "20% de chances de tirer une crotte de nez qui se colle aux ennemis et inflige des dégâts une fois par seconde#Les crottes de nez se décollent si l'ennemi meurt, s'enterre, saute hors de l'écran ou après 10 secondes"}, --Sinus Infection
	[462] = {"462", "Œil de Bélial", "↑ Portée {{ColorLime}}+1.5#Larmes transperçantes#Après avoir transpercé un ennemi, les larmes infligent {{ColorLime}}dégâts x2{{ColorWhite}} et deviennent autoguidées"},
	[463] = {"463", "Acide Sulfurique", "↑ Dégâts {{ColorLime}}+0.3#Isaac tire parfois des larmes corrosives qui détruisent les obstacles, les portes et les entrées des salles Secrètes et Super Secrètes"},
	[464] = {"464", "Marque d'Harmonie", "{{SoulHeart}} +2 cœurs d'âme#Les ressources lâchées par les ennemis d'élite et les récompenses de salle changent selon ce qui manque à Isaac"}, -- Glyph of Balance
	[468] = {"468", "Ombre", "Suit Isaac avec un délai#Après avoir infligé 666 dégâts de contact, elle disparait et permet à Isaac d'infliger des dégâts de contact#{{DamageSmall}} 75 dégâts par seconde"},
	[472] = {"472", "Bébé Roi", "Tirer immobilise tous les familiers et les fait tirer en direction des ennemis#Arrêter de tirer téléporte les familiers à Isaac"}, -- King Baby
	[474] = {"474", "Canon de Verre Brisé", "Se change en {{ColorYellow}}Canon de Verre"}, -- broken Glass Canon
	[476] = {"476", "D1", "Fait apparaître une ressource du même type qu'une autre ressource dans la salle"},
	[477] = {"477", "Néant", "Absorbe tous les objets sur piédestal dans la salle#{{ColorLightYellow}}Objets activables{{ColorWhite}} : Les utilisations suivantes de Néant déclenchent l'effet de tous les objets absorbés#{{ColorLightYellow}}Objets passifs{{ColorWhite}} : Augmente 2 stats aléatoires"},
	[478] = {"478", "Pause !", "Immobilise tous les ennemis dans la salle#Les ennemis immobilisés peuvent infliger des dégâts de contact à Isaac#{{Timer}} L'effet prend fin après 30 secondes ou si Isaac tire"},
	[479] = {"479", "Fondeuse", "Absorbe la babiole portée par Isaac et active son effet de manière permanente"},
	[483] = {"483", "Mama Méga", "Une grosse explosion ravage toutes les salles de l'étage"},
	[487] = {"487", "Épluche-Légumes", "↑ Dégâts {{ColorLime}}+0.2#↓ {{ColorError}}-1{{ColorWhite}} réceptacle de cœur#Donne un {{ColorYellow}}Cube de Viande{{ColorWhite}}{{Collectible73}}"},
	[489] = {"489", "Dé Infini", "Imite les effets de dé (sauf le {{ColorYellow}}Dé Compteur{{ColorWhite}} {{Collectible723}})#L'effet du dé peut être modifié en appuyant sur la touche {{ColorSilver}}[Lâcher] #Le temps de recharge varie selon le dé utilisé"}, -- D Infinity
	[491] = {"491", "Bébé Drogué", "Fait apparaître une pilule toutes les 7 salles#Avaler une pilule empoisonne tous les ennemis de la salle"}, -- Acid Baby
	[492] = {"492", "Fée Agaçante", "↑ Chance {{ColorLime}}+1#Révèle la position des entrées de Souterrains, des rochers marqués et des salles Secrète et Super Secrète {{LadderRoom}}{{SecretRoom}}{{SuperSecretRoom}}"},
	[493] = {"493", "Adrénaline", "↑ Dégâts augmentés pour chaque réceptacle de cœur vide "}, -- Adrenaline
	[494] = {"494", "Échelle de Jacob", "Les larmes d'Isaac provoquent 1 ou 2 éclairs électriques à l'impact#Les éclairs infligent la moitié des dégâts d'Isaac et peuvent se propager d'un ennemi à l'autre"}, -- Jacobs Ladder
	[495] = {"495", "Piment Fantôme", "Isaac tire parfois une flamme bleue qui inflige des dégâts de contact, bloque les projectiles ennemis et disparait après 2 secondes#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à 10 Chance)"},
	[496] = {"496", "Euthanasie", "Isaac tire parfois une seringue qui tue les ennemis instantanément et se divise en 10 larmes#Les seringues infligent {{ColorLime}}dégâts x3{{ColorWhite}} aux boss#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(25% à 13 Chance)"},
	[497] = {"497", "Slip Camouflage", "Entrer dans une salle étourdit tous les ennemis et donne {{ColorLime}}vitesse +0.5#Tirer désactive l'effet, inflige des dégâts aux ennemis à proximité et donne {{ColorLime}}dégâts +10{{ColorWhite}} et {{ColorLime}}débit +10{{ColorWhite}} pendant 1 seconde"},
	[498] = {"498", "Dualité", "Fait apparaître les portes de l'Antre du Diable et du Refuge des Anges si l'une des deux doit apparaître#Entrer dans une des salles fait disparaître l'autre#Ne garantit pas l'apparition des portes"},
	[499] = {"499", "Eucharistie", "Garantit l'apparition des Refuges des Anges"},
	[500] = {"500", "Sac de Sacs", "Fait apparaître un sachet {{GrabBag}} toutes les 7 ou 8 salles"},
	[501] = {"501", "Gosier d'Avarice", "{{Heart}} +1 réceptacle de cœur toutes les 25 pièces au compteur"},
	[503] = {"503", "P'tite Corne", "Isaac tire parfois une larme qui tue les ennemis instantanément et inflige de gros dégâts aux boss#Permet à Isaac d'infliger des dégâts de contact#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(20% à 15 Chance)"}, -- Little Horn
	[504] = {"504", "Bout de Crotte", "Invoque une mouche immobile qui tire sur les ennemis à proximité#{{DamageSmall}} 3.5 dégâts par larme"}, -- Brown Nugget
	[506] = {"506", "Traîtrise", "Toucher un ennemi dans le dos avec une larme inflige le double de dégâts et le fait saigner#Le saignement inflige des dégâts à l'ennemi selon sa vitesse de déplacement"},
	[507] = {"507", "Paille Aiguisée", "Inflige les dégâts d'Isaac et retire 10% des PV totaux des ennemis de la salle#Infliger des dégâts avec cet objet génère parfois un demi-cœur rouge"},
	[508] = {"508", "Rasoir de Maman", "Orbite autour d'Isaac#Inflige {{ColorLime}}dégâts x3{{CR}} et fait saigner les ennemis au contact#Le saignement inflige des dégâts à l'ennemi selon sa vitesse et lui fait répandre du sang corrosif"},
	[509] = {"509", "Nœnœil", "Orbite autour d'Isaac, inflige des dégâts de contact et tire sur les ennemis à proximité#{{DamageSmall}} 20 dégâts par seconde#{{Blank}} 3.5 dégâts par larme"}, -- Bloodshot Eye
	[514] = {"514", "Routeur Cassé", "Paralyse parfois les ennemis et projectiles#Les projectiles paralysés disparaissent#25% de chances de dupliquer une récompense de salle#{{LuckSmall}} Effet affecté par la statistique de chance"},
	[515] = {"515", "Cadeau Surprise", "Fait apparaître un objet#L'objet provient de la banque d'objets de la salle où se trouve Isaac#Peut faire apparaître le {{ColorYellow}}Morceau de Charbon{{ColorWhite}}{{Collectible132}} ou le {{ColorYellow}}Tas de Caca{{ColorWhite}} {{Collectible36}} à la place#{{LuckSmall}} Effet affecté par la statistique de chance"},
	[517] = {"517", "Bombes Éclair", "{{Bomb}} +7 Bombes#Permet à Isaac de poser plusieurs bombes sans délai#Les bombes d'Isaac ne se repoussent plus entre elles en explosant"},
	[521] = {"521", "Coupon", "Rend gratuit un objet payant dans la salle#Fonctionne pour les coûts en pièces et en PV#Porter l'objet garantit un objet en solde à la Boutique"},
	[522] = {"522", "Télékinésie", "Entoure Isaac d'une aura qui repousse les ennemis et immobilise leurs projectiles#Après 3 secondes, les projectiles immobilisés sont renvoyés"}, -- Telekinesis
	[523] = {"523", "Carton de Déménagement", "Utiliser l'objet absorbe jusqu'à 10 ressources ou objets dans la salle#Utiliser l'objet à nouveau pose les éléments absorbés sur le sol"}, -- Moving Box
	[524] = {"524", "Technologie Zéro", "Relie les larmes d'Isaac par des arcs électriques"}, -- Technology Zero
	[531] = {"531", "Haemolacria", "↑ Dégâts {{ColorLime}}+1 x1.5#↓ Portée {{ColorError}}x0.8#↓ Débit diminué#Les larmes d'Isaac sont plus grosses et tirées en cloche, et se divisent en larmes plus petites à l'impact"}, -- Haemolacria
	[538] = {"538", "Sac de Billes", "Fait apparaître 3 babioles#Subir un dégât a 5% de chances d'absorber la babiole portée par Isaac et d'activer ses effets de manière permanente"},
	[541] = {"541", "Moelle", "{{EmptyBoneHeart}} +1 cœur d'os#Fait apparaître 3 cœurs rouges"}, -- Marrow
	[543] = {"543", "Terre Sacrée", "Subir un dégât fait apparaître un caca sacré#Être dans son aura donne :#↑ Dégâts {{ColorLime}}+25%#↑ Débit {{ColorLime}}+250%#Larmes autoguidées#50% de chances de nullifier un dégât subi"}, -- Hallowed Ground
	[547] = {"547", "Acte de Divorce", "↑ Débit {{ColorLime}}+0.7#{{EmptyBoneHeart}} +1 cœur d'os#Fait apparaître {{ColorYellow}}Papier Mystérieux {{Trinket21}}"},
	[549] = {"549", "Os de Verre", "{{EmptyBoneHeart}} Remplace tous les cœurs d'Isaac par 6 cœurs d'os#Perdre un cœur d'os tire 8 os autour d'Isaac et donne {{ColorLime}}débit +0.4{{ColorWhite}} permanents"},
	[550] = {"550", "Pelle Brisée", "Le pied de {{ColorCyan}}Maman{{ColorWhite}} tente en permanence d'écraser Isaac#Utiliser cet objet cesse les attaques pour la durée d'une salle ou d'une vague#{{Warning}} Laisser l'objet dans une salle le fait disparaître#{{UltraSecretRoom}} Emporte la pelle avec toi le plus loin possible"},
	[551] = {"551", "Pelle Brisée", "Le pied de {{ColorCyan}}Maman{{ColorWhite}} n'attaque plus Isaac #{{UltraSecretRoom}} Permet de déterrer quelque chose d'enfoui dans la {{ColorTransform}}Chambre Noire"},
	[552] = {"552", "Pelle de Maman", "Ouvre une trappe vers l'étage suivant#{{UltraSecretRoom}} Permet de déterrer quelque chose d'enfoui dans la {{ColorTransform}}Chambre Noire"},
	------PAUSE-----------
	[553] = {"553", "Mucormycose", "25% de chances de tirer une spore collante#Les spores explosent après 2.5 secondes, infligent des dégâts, empoisonnent les ennemis à proximité et libèrent d'autres spores"}, --  Mucormycosis
	[554] = {"554", "BOUH", "Effraie les ennemis à proximité d'Isaac"}, --  2Spooky
	[555] = {"555", "Lame de Rasoir Dorée", "↑ Dégâts {{ColorLime}}+1.2 {{ColorWhite}}#↓ Retire {{ColorError}}5 pièces {{ColorWhite}}à Isaac#{{Coin}} +5 pièces la première fois qu'elle est ramassée"}, --  Golden Razor
	[556] = {"556", "Sulfure", "Active l'effet de {{ColorYellow}}Soufre{{ColorWhite}} {{Collectible118}}#{{Timer}} L'effet dure une salle"}, --  Sulfur
	[557] = {"557", "Biscuit Chinois", "Donne une prédiction ou fait apparaître un cœur d'âme, une carte, une rune ou une babiole"}, --  Fortune Cookie
	[558] = {"558", "Les Yeux de la Tête", "Isaac tire parfois 1 à 3 larmes supplémentaires dans une direction aléatoire"}, --  Eye Sore
	[559] = {"559", "120 Volts", "Électrocute les ennemis à proximité d'Isaac"}, --  120 Volt
	[560] = {"560", "Motus", "Subir un dégât projette 10 larmes tout autour d'Isaac#↑ Débit {{ColorLime}}+1.2{{ColorWhite}} au premier dégât subi, {{ColorLime}}+0.4{{ColorWhite}} pour chaque dégât suivant"}, --  It Hurts
	[561] = {"561", "Lait d'Amande", "↑ Débit {{ColorLime}}x4#↓ Dégâts {{ColorError}}x0.3#Donne aux larmes d'Isaac des effets de ver aléatoires"}, --  Almond Milk
	[562] = {"562", "Au Fond du Trou", "Empêche les stats d'Isaac de diminuer pour le reste de la partie"}, --  Rock Bottom
	[563] = {"563", "Bombes Fabuleuses", "{{Bomb}} +5 Bombes#Les bombes d'Isaac ont des effets aléatoires"}, --  Nancy Bombs
	[564] = {"564", "Savonnette", "↑ Débit {{ColorLime}}+0.5#↑ Vitesse des tirs {{ColorLime}}+0.2#{{Warning}} Le sous-titre de l'objet est erronné, c'est bien le débit qui augmente"}, --  A Bar of Soap
	[565] = {"565", "Chiot de Sang", "Pourchasse et inflige des dégâts aux ennemis#Après avoir tué assez d'ennemis, il s'énerve et peut aussi attaquer Isaac#Il peut être calmé si Isaac lui inflige assez de dégâts ou le fait exploser"}, --  Blood Puppy
	[566] = {"566", "Attrape-Rêve", "{{HalfSoulHeart}} +1 demi-cœur d'âme à chaque nouvel étage#Révèle le boss et le contenu de la Salle du Trésor dans le cauchemar entre les étages"}, --  Dream Catcher
	[567] = {"567", "Cierge Pascal", "↑ Débit {{ColorLime}}+0.4{{ColorWhite}} pour chaque salle terminée sans subir de dégâts {{ColorSilver}}(jusqu'à {{ColorLime}}débit +5{{ColorSilver}})#Subir un dégât remet le bonus à zéro"}, --  Paschal Candle
	[568] = {"568", "Intervention Divine", "Appuyer 2 fois sur un bouton de tir invoque un bouclier qui repousse les ennemis et renvoie les projectiles et lasers#{{Timer}} L'effet dure 1 seconde#{{Timer}} 3 secondes de recharge"}, --  Divine Intervention
	[569] = {"569", "Serment du Sang", "Au début de chaque étage, vide Isaac de tous ses cœurs rouges sans le tuer#Chaque cœur perdu augmente les dégâts et la vitesse pour l'étage#Chaque demi-cœur perdu compte comme un dégât individuel infligé à Isaac"}, --  Blood Oath
	[570] = {"570", "Cookie en Pâte à Modeler", "Donne un effet différent à chaque larme d'Isaac"}, --  Playdough Cookie
	[571] = {"571", "Chaussettes Orphelines", "↑ Vitesse {{ColorLime}}+0.3#{{SoulHeart}} +2 cœurs d'âme#Rend Isaac invulnérable aux flaques corrosives et aux piques"}, --  Orphan Socks
	[572] = {"572", "Œil Occulte", "↑ Dégâts {{ColorLime}}+1.0#↑ Portée {{ColorLime}}+7.5#↓ Vitesse des tirs {{ColorError}}-0.16#Permet de contrôler les larmes d'Isaac en vol"}, --  Eye of the Occult
	[573] = {"573", "Cœur Immaculé", "↑ Dégâts {{ColorLime}}+20%#{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soin complet#20% de chances de tirer une larme spectrale bonus qui orbite autour d'Isaac"}, --  Immaculate Heart
	[574] = {"574", "Monstrance", "Entoure Isaac de deux auras qui infligent des dégâts aux ennemis#L'aura intérieure inflige plus de dégâts que l'aura extérieure"}, --  Monstrance
	[575] = {"575", "L'Envahisseur", "Se niche dans la tête d'Isaac et tire 4 larmes ralentissantes#Subir un dégât fait parfois sortir l'araignée#Une fois sortie, l'araignée tire deux fois plus vite et bondit sur les ennemis#{{LuckSmall}} Effet affecté par la statistique de chance#{{DamageSmall}} 1.5 dégâts par larme"}, --  The Intruder
	[576] = {"576", "Coprophilie", "Détruire un caca fait apparaître 1 à 4 petits cacas amicaux#Leur type dépend du type de caca détruit#Tous les ennemis {{ColorCyan}}crottes{{ColorWhite}} deviennent amicaux#Remplace certains rochers par des cacas"}, --  Dirty Mind
	[577] = {"577", "Damoclès", "Une fois utilisé, ajoute un objet gratuit à tous les futurs piédestaux#{{Warning}} Dès qu'Isaac subit un dégât, l'épée a une chance de tomber et  le tuer à chaque seconde qui passe#Une fois l'épée tombée, les objets sur piédestal ne sont plus doublés"}, --  Damocles
	[578] = {"578", "Carafe de Limonade", "Répand une grande flaque corrosive sur le sol"}, --  Free Lemonade
	[579] = {"579", "Épée de l'Esprit", "↑ Dégâts {{ColorLime}}x3 +3.5#Remplace les larmes d'Isaac par une épée#Charger l'attaque fait tournoyer l'épée autour d'Isaac#Si les PV d'Isaac sont égaux ou supérieurs à ses réceptacles de cœur, l'épée tire des projectiles"}, --  Spirit Sword
	[580] = {"580", "Clé Rouge", "Ouvre une porte vers une salle rouge dans les murs marqués d'une porte rouge#Les salles rouges peuvent être des salles spéciales#Entrer dans une salle en dehors de la grille de 13x13 téléporte Isaac dans la salle d'erreur"}, --  Red Key
	[581] = {"581", "Mouche Oracle", "Pourchasse et détruit les projectiles ennemis#Inflige des dégâts de contact#{{DamageSmall}} 15 dégâts par seconde"}, --  Psy Fly
	[582] = {"582", "Psilocybe Cyanescens", "↑ Débit {{ColorLime}}+0.75#↓ Vitesse {{ColorError}}-0.03#Déforme l'écran#L'effet peut être cumulé"}, --  Wavy Cap
	[583] = {"583", "Fusée en Bocal", "{{Bomb}} +5 Bombes#Poser une bombe en tirant la propulse dans la direction du tir"}, --  Rocket in a Jar
	[584] = {"584", "Livre des Vertus", "Invoque un feu follet qui tire des larmes spectrales#Combiner le livre avec un autre objet activable invoque un feu follet spécial#Transforme le premier Pacte avec le Diable en Offrande des Anges"}, --  Book of Virtues
	[585] = {"585", "Boîte d'Albâtre", "Doit être chargée avec des cœurs d'âme#Fait apparaître 2 objets angéliques et 3 cœurs d'âme {{ColorSilver}}(1 objet angélique et 2 cœurs d'âme si un Pacte avec le Diable a été signé)"}, --  Alabaster Box
	[586] = {"586", "Échelle Vers les Cieux", "Fait apparaître une échelle vers une boutique angélique dans la première salle d'un étage#L'échelle disparaît quand Isaac quitte la salle où elle se trouve"}, --  The Stairway
	[587] = {"587", "Menorah", "<Cet objet n'existe pas>"}, -- Menorah (Unused but skripted)
	[588] = {"588", "Sol", "Révèle l'emplacement de la salle de boss {{BossRoom}}#Après avoir battu un boss:#↑ Dégâts {{ColorLime}}+3.0#↑ Chance {{ColorLime}}+1.0#Recharge entièrement l'objet activable#Retire tous les fléaux#Déclenche {{ColorCard}}XIX-Le Soleil {{Card20}}"}, --  Sol
	[589] = {"589", "Luna", "Ajoute une salle secrète et super secrète à chaque étage#Révèle la position d'une des quatre salles secrètes#Ajoute une lumière dans les salles secrètes qui augmente le débit pour l'étage et donne un demi-cœur d'âme"}, --  Luna
	[590] = {"590", "Mercurius", "↑ Vitesse {{ColorLime}}+0.4#Les portes restent ouvertes en permanence"}, --  Mercurius
	[591] = {"591", "Venus", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soin complet#Envoûte les ennemis à proximité d'Isaac"}, --  Venus
	[592] = {"592", "Terra", "↑ Dégâts {{ColorLime}}+1.0#Les larmes d'Isaac infligent des dégâts variables, repoussent les ennemis et détruisent les obstacles"}, --  Terra
	[593] = {"593", "Mars", "Appuyer 2 fois sur un bouton de déplacement fait se ruer Isaac#La ruée rend Isaac invulnérable et inflige {{ColorLime}}dégâts x3{{ColorWhite}} au contact#{{Timer}} 3 secondes de recharge"}, --  Mars
	[594] = {"594", "Jupiter", "↓ Vitesse {{ColorError}}-0.3#{{Heart}} +2 réceptacles de cœur#Rester immobile accumule de la vitesse#Se déplacer relâche un nuage de gaz empoisonné"}, --  Jupiter
	[595] = {"595", "Saturnus", "7 larmes orbitent Isaac en entrant dans une salle#Les projectiles ennemis entrent parfois en orbite autour d'Isaac"}, --  Saturnus
	[596] = {"596", "Uranus", "Isaac tire des larmes de glace ralentissantes#Tuer un ennemi le gèle"}, --  Uranus
	[597] = {"597", "Neptunus", "Ne pas tirer augmente progressivement le débit#Tirer diminue le débit jusqu'à ce qu'il revienne à sa valeur de base"}, --  Neptunus
	[598] = {"598", "Pluto", "↑ Débit {{ColorLime}}+0.7#Diminue fortement la taille d'Isaac et lui permet de passer entre les obstacles et sous certains projectiles"}, --  Pluto
	[599] = {"599", "Tête Réduite", "Fait apparaître une Salle Maudite {{CursedRoom}} supplémentaire à chaque étage#Les Salles Maudites sont de meilleure qualité et contiennent une pièce"}, --  Voodoo Head
	[600] = {"600", "Collyre", "↑ Débit {{ColorLime}}+40%{{ColorWhite}} pour l'œil gauche"}, --  Eye Drops
	[601] = {"601", "Acte de Contrition", "↑ Débit {{ColorLime}}+0.7#{{EternalHeart}} +1 cœur éternel#Permet au Refuge des Anges d'apparaître même si un Pacte avec le Diable a été signé#Les chances d'ouvrir l'Antre du Diable ou le Refuge des Anges diminuent moins"}, --  Act of Contrition
	[602] = {"602", "Carte de Membre", "Ouvre une trappe vers l'arrière-boutique dans chaque Boutique {{Shop}}#L'arrière-boutique peut proposer des babioles, des ressources et des objets de n'importe quelle banque"}, --  Member Card
	[603] = {"603", "Batterie", "Fait apparaître 2 à 4 piles#Recharge complètement l'objet activable"}, --  Battery Pack
	[604] = {"604", "Bracelet de Maman", "Permet à Isaac de soulever et lancer les obstacles#Les obstacles ramassés peuvent être transportés d'une salle à l'autre"}, --  Mom's Bracelet
	[605] = {"605", "Cuillère à Glace", "↑ Dégâts {{ColorLime}}+34%{{ColorWhite}} de l'œil droit#Invoque un œil qui rebondit contre les murs de la salle, laisse une flaque de sang et inflige des dégâts de contact#{{DamageSmall}} 36 dégâts par seconde"}, --  The Scooper
	[606] = {"606", "Faille Oculaire", "Isaac tire parfois une larme vortex qui crée une faille là où elle atterrit#Les failles attirent les ennemis, ressources et projectiles à proximité#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(20% à 15 Chance)"}, --  Ocular Rift
	[607] = {"607", "Bébé Furoncle", "Tire des gerbes de larmes dans toutes les directions#{{DamageSmall}} 3.5 ou 5.25 dégâts par larme"}, --  Boiled Baby
	[608] = {"608", "Bébé Surgelé", "Tire des larmes de glace#Gèle les ennemis qu'il tue#{{DamageSmall}} 3.5 dégâts par larme"}, --  Freezer Baby
	[609] = {"609", "D6 Éternel", "{{ColorLime}}75%{{ColorWhite}} de chances de rejouer les objets de la salle#{{ColorError}}25%{{ColorWhite}} de chances de les faire disparaître"}, --  Eternal D6
	[610] = {"610", "Gros Piaf", "Plonge sur l'ennemi responsable du premier dégât infligé à Isaac dans la salle et crée une vague de rochers, puis pourchasse les ennemis"}, --  Bird Cage
	[611] = {"611", "Larynx", "Isaac hurle, inflige des dégâts et repousse les ennemis à proximité#Plus l'objet est chargé, plus le hurlement est puissant"}, --  Larynx
	[612] = {"612", "Âme Égarée", "Suit Isaac et meurt si elle subit un dégât#Si elle est encore vivante en entrant dans un nouvel étage, elle peut donner :#{{SoulHeart}} 3 cœurs d'âme#{{EternalHeart}} 2 cœurs éternels#{{AngelRoom}} 1 objet angélique#{{TreasureRoom}} 1 objet de Salle du Trésor"}, --  Lost Soul
	[613] = {"613", "Salière", "<Cet objet n'existe pas>"},
	[614] = {"614", "Hémoglobombes", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soigne 5 cœurs rouges#Les explosions des bombes d'Isaac répandent une flaque de sang corrosif#Permet à Isaac de sacrifier un demi-cœur pour placer une bombe s'il n'en a pas"}, --  Blood Bombs
	[615] = {"615", "P'tit Prout", "Repousse les ennemis ou projectiles sur le point de toucher Isaac, puis devient inactif jusqu'à ce qu'Isaac s'approche de lui"}, --  Lil Dumpy
	[616] = {"616", "Piment Oiseau", "Isaac tire parfois une flamme orange qui bloque les projectiles ennemis et inflige des dégâts#Les flammes rapetissent au contact ou disparaissent après 10 secondes#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à 10 Chance)"}, --  Bird's Eye
	[617] = {"617", "Magnétite", "Isaac tire parfois une larme magnétisante#Les ennemis magnétisés attirent les ressources, projectiles et ennemis #{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 5 Chance)"}, --  Lodestone
	[618] = {"618", "Tomate Pourrie", "Isaac tire parfois une larme qui marque les ennemis#Les ennemis marqués sont pris pour cible par les autres ennemis#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 5 Chance)"}, --  Rotten Tomato
	[619] = {"619", "Droit d'Aînesse", "A un effet différent pour chaque personnage"}, --  Birthright
	[620] = {"620", "", "<Cet objet n'existe pas>"},
	[621] = {"621", "Potage de Lentilles", "{{HealingRed}} Soin complet#↑ Dégâts {{ColorLime}}+21.6#Le bonus de dégâts diminue progressivement sur une période de 3 minutes jusqu'à retourner à zéro#Tuer des ennemis ralentit la diminution"}, --  Red Stew
	[622] = {"622", "Genèse", "Retire tous les objets et ressources d'Isaac#Téléporte Isaac dans une pièce où il peut choisir entre 3 objets pour remplacer chaque objet perdu#Sortir de cette salle fait passer Isaac à l'étage suivant"}, --  Genesis
	[623] = {"623", "Clé Aiguisée", "{{Key}} +5 Clés#Permet à Isaac de jeter une de ses clés pour infliger des dégâts, détruire des obstacles ou ouvrir des serrures#Tuer un ennemi avec une clé peut faire apparaître le contenu d'un coffre"}, --  Sharp Key
	[624] = {"624", "Paquet d'Extension", "Fait apparaître 5 cartes"}, --  Booster Pack
	[625] = {"625", "Méga Champi", "↑ Dégâts {{ColorLime}}x4#↑ Portée {{ColorLime}}+2#↓ Débit {{ColorError}}-1.9#Rend Isaac géant, invulnérable et lui permet de tout détruire au contact#{{Timer}} L'effet dure 30 secondes et persiste entre les salles"}, --  Mega Mush
	[626] = {"626", "1er Morceau de Couteau", "La première partie d'un couteau"}, --  Knife Piece 1
	[627] = {"627", "2è Morceau de Couteau", "Combiné avec la {{ColorYellow}}poignée{{ColorWhite}} {{Collectible626}}, forme un couteau#Le couteau inflige des dégâts et peut ouvrir une porte faite de chair#{{DamageSmall}} 25 dégâts par seconde"}, --  Knife Piece 2
	[628] = {"628", "Acte de Décès", "Téléporte Isaac dans un étage contenant tous les objets du jeu#Après avoir choisi un objet, Isaac est renvoyé dans la salle où il a utilisé l'Acte de Décès"}, --  Death Certificate
	[629] = {"629", "Robomouche", "Suit Isaac, inflige des dégâts de contact et tire sur les projectiles ennemis pour les détruire#{{DamageSmall}} 3 dégâts par seconde"}, --  Bot Fly
	[630] = {"630", "", "<Cet objet n'existe pas>"},
	[631] = {"631", "Couteau de Boucher", "Découpe tous les ennemis et boss de la salle en 2 versions plus petites avec moins de vie#Inflige 25 dégâts aux ennemis trop petits pour être découpés"}, --  Meat Cleaver
	[632] = {"632", "Pendentif Maléfique", "↑ Chance {{ColorLime}}+2.0#Rend Isaac invulnérable au poison, à la terreur et au gaz toxique"}, --  Evil Charm
	[633] = {"633", "Dogma", "↑ Dégâts {{ColorLime}}+2.0#↑ Vitesse {{ColorLime}}+0.1#Permet à Isaac de voler#Nullifie le prochain dégât subi#Si Isaac a moins de 6 cœurs, le soigne avec les cœurs nécessaires"}, --  Dogma
	[634] = {"634", "Purgatoire", "Crée une fissure dans le sol des salles hostiles#Marcher sur une fissure invoque un fantôme qui pourchasse les ennemis puis explose"}, --  Purgatory
	[635] = {"635", "Marionnette", "Peut être déplacée avec les boutons de tir#Utiliser l'objet inverse la position d'Isaac avec celle du familier#Se téléporter détruit ou inflige des dégâts à ce qui se trouve au point d'arrivée"}, --  Stitches
	[636] = {"636", "Touche R", "Relance une partie depuis le premier étage mais conserve les stats, ressources et objets obtenus par Isaac#Ne remet pas le chronomètre à zéro"}, --  R Key
	[637] = {"637", "Gouttes K.O.", "Isaac tire parfois une larme poing qui repousse fortement les ennemis et les étourdit#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 9 Chance)"}, --  Knockout Drops
	[638] = {"638", "Gomme", "Utiliser l'objet et tirer dans une direction lance une gomme qui efface un ennemi si elle le touche#Les ennemis effacés n'apparaissent plus pour le reste de la partie#{{Timer}} 1 utilisation par étage"}, --  Eraser
	[639] = {"639", "Cœur Moisi", "{{RottenHeart}} +1 cœur moisi"}, --  Yuck Heart
	[640] = {"640", "Urne des Âmes", "Utiliser l'objet ouvre et ferme l'urne#L'urne ouverte remplace les larmes d'Isaac par des flammes bleues#Tirer quand l'urne est ouverte fait baisser les charges de l'urne#Tuer un ennemi ajoute une charge à l'urne"}, --  Urn of Souls
	[641] = {"641", "Haqeldemah", "Pend une traînée de larmes derrière Isaac dans les salles hostiles"}, --  Akeldama
	[642] = {"642", "Peau de Chagrin", "Remplace 1 réceptacle de cœur ou 2 cœurs d'âme par un cœur brisé#Fait apparaître un objet qui provient de la banque d'objets de la salle#{{Warning}} Si Isaac ne garde pas l'objet après l'avoir utilisé, il a une chance de remplacer les futurs objets de la partie"}, --  Magic Skin
	[643] = {"643", "Révélation", "{{SoulHeart}} +2 cœurs d'âme#Permet à Isaac de voler#Tirer pendant 2.5 secondes charge un rayon de lumière"}, --  Revelation
	[644] = {"644", "Prix de Consolation", "↑ Augmente la statistique la plus faible d'Isaac#Fait apparaître la ressource qui manque le plus à Isaac"}, --  Consolation Prize
	[645] = {"645", "P'tit Tératome", "Orbite autour d'Isaac, bloque les projectiles ennemis et inflige des dégâts de contact#Après avoir subi 3 dégâts, se sépare en parties plus petites puis en araignées bleues quand elles meurent#Réapparaît 5 secondes après avoir disparu#{{DamageSmall}} 3.5 dégâts par seconde"}, --  Tinytoma
	[646] = {"646", "Bombes Sulfureuses", "{{Bomb}} +5 Bombes#Les explosions des bombes d'Isaac crachent 4 lasers de sang en forme de +"}, --  Brimstone Bombs
	[647] = {"647", "4.5 Volts", "Les objets activables ne se rechargent plus en terminant les salles mais en infligeant des dégâts"}, --  4.5 Volt
	[648] = {"648", "Broyeur de Pilules", "<Cet objet n'existe pas>"},
	[649] = {"649", "P'tite Prunelle", "Se propulse en diagonale, tire des larmes derrière elle et inflige des dégâts de contact#{{DamageSmall}} 3 dégâts par larme#{{Blank}} 6 dégâts par seconde"}, --  Fruity Plum
	[650] = {"650", "Flute Prunelle", "Invoque une {{ColorCyan}}Prunelle{{ColorWhite}} amicale dans la salle#{{Timer}} L'effet dure 10 secondes"}, --  Plum Flute
	[651] = {"651", "Étoile de Bethléem", "Se déplace lentement vers la salle de boss {{BossRoom}}#{{Blank}} Être dans son aura donne :#↑ Dégâts {{ColorLime}}x1.8#↑ Débit {{ColorLime}}x2.5#Larmes autoguidées#Chance de nullifier les dégâts subis"}, --  Star of Bethlehem
	[652] = {"652", "Bébé Congelé", "Peut être poussé par Isaac#Ralentit les ennemis et inflige des dégâts de contact#Gèle les ennemis qu'il tue#{{DamageSmall}} 17.5 dégâts par seconde"}, --  Cube Baby
	[653] = {"653", "Vade Retro", "Quand Isaac tient cet objet, tuer un ennemi invoque un fantôme rouge#Utiliser l'objet fait exploser les fantômes"}, --  Vade Retro
	[654] = {"654", "Doctorat Falsifié", "{{BlackHeart}} +1 cœur noir#Convertit toutes les pilules en pilules négatives et les identifie#Les pilules qui diminuent les stats augmentent les dégâts#Les autres pilules font apparaître un cœur noir"}, --  False PHD
	[655] = {"655", "Toupie", "Orbite autour d'Isaac, bloque les projectiles ennemis et inflige des dégâts de contact#Utiliser l'objet donne {{ColorLime}}vitesse +0.5{{ColorWhite}} et augmente la vitesse de rotation et les dégâts de contact des familiers#{{DamageSmall}} 10.5 dégâts par seconde"}, --  Spin to Win
	[656] = {"656", "Damoclès", "<Cet objet ne peut pas être obtenu>"}, -- Damocles
	[657] = {"657", "Vascularite", "Tuer un ennemi le fait éclater en larmes qui héritent des effets de celles d'Isaac"}, --  Vasculitis
	[658] = {"658", "Cellule Géante", "Subir un dégât fait apparaître un Micro-Isaac qui pourchasse et tire sur les ennemis à proximité"}, --  Giant Cell
	[659] = {"659", "Tropicamide", "↑ Portée {{ColorLime}}+1.5#↑ Augmente la taille des larmes d'Isaac"}, --  Tropicamide
	[660] = {"660", "Cartomancie", "Fait apparaître deux vortex dans la première salle de chaque étage#Entrer dans un vortex téléporte Isaac :#{{Blank}} {{ColorRed}}Rouge {{ColorWhite}}= Salle du Boss#{{Blank}} {{ColorYellow}}Jaune {{ColorWhite}}= Salle du Trésor#{{Blank}} {{ColorBlue}}Bleu {{ColorWhite}} = Salle Secrète#Les vortex disparaissent si Isaac quitte la salle"}, --  Card Reading
	[661] = {"661", "Quintuplés", "Transforme jusqu'à 5 ennemis tués par salle en familiers immobiles"}, --  Quints
	[662] = {"662", "Pacifisme", "<Cet objet n'existe pas>"}, -- Pacifist (Cut item)
	[663] = {"663", "Bec et Ongles", "Toutes les 6 secondes, Isaac devient invulnérable pendant 1 seconde"}, --  Tooth and Nail
	[664] = {"664", "Goinfrerie", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soin complet#Les objets sur piédestal alternent avec un objet de nourriture#Choisir la nourriture donne {{ColorLime}}dégâts +3.6{{ColorWhite}},{{ColorError}} vitesse -0.03{{CR}}, augmente deux stats, et soigne davantage#Ces bonus de dégâts s'estompent avec le temps"}, --  Binge Eater
	[665] = {"665", "Œil de Guppy", "Révèle le contenu des coffres, sacs, feux et gardiens avant qu'ils ne soient ouverts ou détruits"}, --  Guppy's Eye
	[666] = {"666", "", "<Cet objet n'existe pas>"},
	[667] = {"667", "Gardien en Peluche", "Fait apparaître le {{ColorLightOrange}}Gardien{{ColorWhite}} en tant que personnage secondaire#À sa mort, invoque des araignées bleues et disparait de l'inventaire"}, --  Strawman
	[668] = {"668", "Lettre de Papa", "Démarre l'Ascension"}, --  Dad's Note
	[669] = {"669", "Saucisson", "↑ Dégâts {{ColorLime}}+0.5#↑ Vitesse {{ColorLime}}+0.2#↑ Vitesse des tirs {{ColorLime}}+1.2#↑ Portée {{ColorLime}}+0.16#↑ Chance {{ColorLime}}+1.0#{{AngelDevilChanceSmall}} Chances de Pacte avec le Diable ou d'Offrande des Anges {{ColorLime}}+6.9% #{{PlanetariumChanceSmall}} Chances de planétarium {{ColorLime}}+6.9%"}, --  Sausage
	[670] = {"670", "Plus d'Options ?", "Permet à Isaac de choisir entre 2 récompenses après avoir terminé une salle"}, --  Options?
	[671] = {"671", "Cœur Confit", "↑ Ramasser un cœur rouge augmente une stat aléatoire de manière permanente"}, --  Candy Heart
	[672] = {"672", "Une Livre de Chair", "Les Pactes avec le Diable coûtent de l'argent#Les objets de la boutique coûtent des PV#Les ressources de la boutique ne coûtent plus d'argent mais sont entourées de piques"}, --  A Pound of Flesh
	[673] = {"673", "Rédemption", "Entrer dans l'Antre du Diable et ne toucher à rien donne un cœur d'âme et {{ColorLime}}dégâts +1{{ColorWhite}} au prochain étage"}, --  Redemption
	[674] = {"674", "Chaînes de l'Esprit", "Subir un dégât fatal transforme Isaac en fantôme enchaîné à son corps#Isaac peut continuer à se battre et ressuscite avec un demi-cœur après 10 secondes#L'objet se recharge en ramassant un cœur d'âme"}, --  Spirit Shackles
	[675] = {"675", "Orbe Fêlé", "{{Blank}} Subir un dégât :#Révèle une salle de l'étage#Déverrouille les portes qui nécessitent des ressources#Peut ouvrir les portes uniques et spéciales"}, --  Cracked Orb
	[676] = {"676", "Cœur Vide", "{{EmptyHeart}} +1 réceptacle de cœur vide si Isaac ne possède qu'un cœur rouge ou moins en changeant d'étage"}, --  Empty Heart
	[677] = {"677", "Projection Astrale", "Subir un dégât arrête le temps pendant 3 secondes#Durant cette période, Isaac devient un fantôme et se sépare de son corps#Sous cette forme, Isaac vole, tire des larmes spectrales et nullifie le premier dégât subi"}, --  Astral Projection
	[678] = {"678", "Césarienne", "Remplace les larmes d'Isaac par des fœtus qui pourchassent les ennemis"}, --  C Section
	[679] = {"679", "P'tit Abaddon", "Charge l'effet de {{ColorYellow}}Gouffre du Néant{{ColorWhite}} {{Collectible399}} quand Isaac tire et le crache quand les boutons de tir sont relâchés"}, --  Lil Abaddon
	[680] = {"680", "Tourista", "Se charge quand Isaac tire#Quand la barre est chargée, relâcher les boutons de tir fait déféquer Isaac en une courte ligne droite"}, --  Montezuma's Revenge
	[681] = {"681", "P'tit Vortex", "S'élance dans la direction des tirs d'Isaac#Inflige des dégâts de contact et consomme les ressources sur son chemin#Chaque ressource absorbée augmente sa taille, ses dégâts et fait apparaître une mouche bleue#Toutes les 4 ressources consommées, fait apparaître un vortex vers une salle inexplorée"}, --  Lil Portal
	[682] = {"682", "Ver de Nerf", "Un tentacule sort parfois du sol pour immobiliser un ennemi et lui infliger des dégâts#{{DamageSmall}} 8 dégâts par seconde"}, --  Worm Friend
	[683] = {"683", "Épines Osseuses", "Tuer un ennemi le transforme en os#Les os bloquent les projectiles et infligent des dégâts de contact"}, --  Bone Spurs
	[684] = {"684", "Âme Affamée", "Tuer un ennemi le transforme parfois en un fantôme qui pourchasse les ennemis et inflige des dégâts de contact, puis explose après 5 secondes#Isaac est immunisé à ces explosions"}, --  Hungry Soul
	[685] = {"685", "Bocal de Feux Follets", "Invoque un feu follet aléatoire qui tire, bloque les projectiles et inflige des dégâts de contact#Chaque utilisation invoque un feu follet de plus, jusqu'à 12"}, --  Jar of Wisps
	[686] = {"686", "Pendentif des Âmes", "↑ Ramasser un cœur d'âme augmente une stat aléatoire de manière permanente#Fait apparaître un cœur d'âme"}, --  Soul Locket
	[687] = {"687", "Amis Imaginaires", "Invoque un monstre allié qui imite les mouvements et attaques d'Isaac"}, --  Friend Finder
	[688] = {"688", "Enfant Intérieur", "↑ +1 vie#À sa mort, Isaac ressuscite dans la même salle avec :#{{HalfHeart}} Un demi-cœur rouge#↑ Vitesse {{ColorLime}}+0.2#Taille diminuée"}, --  Inner Child
	[689] = {"689", "Couronne Corrompue", "Les objets sur piédestaux alternent rapidement entre 5 objets#4 de ces objets proviennent de la banque d'objets de la salle"}, --  Glitched Crown
	[690] = {"690", "Haricot Confit", "Entrer en contact avec un ennemi le repousse#50% de chances de nullifier un dégât subi au contact#50% de chances de renvoyer un projectile ennemi"}, --  Belly Jelly
	[691] = {"691", "Orbe Sacré", "Empêche les objets de qualité {{Quality0}} et {{Quality1}} d'apparaître#33% de chances de rejouer un objet de qualité {{Quality2}} en objet de qualité {{Quality2}}, {{Quality3}} ou {{Quality4}}"}, --  Sacred Orb
	[692] = {"692", "Pacte de Sang", "Fait apparaître des piques dans l'Antre du Diable {{DevilRoom}}#{{Blank}} Marcher dessus peut donner :#Rien {{ColorSilver}}(35%)#↑ Dégâts {{ColorLime}}+0.5{{ColorWhite}} {{ColorSilver}}(33%)#6 pièces {{ColorSilver}}(15%)#2 cœurs noirs {{ColorSilver}}(10%)#Objet diabolique {{ColorSilver}}(5%)#Transfo. en Léviathan {{ColorSilver}}(2%)"}, --  Sanguine Bond
	[693] = {"693", "La Nuée", "9 mouches orbitent Isaac#Une mouche qui bloque un projectile se transforme en mouche bleue#Terminer une salle invoque une mouche"}, --  The Swarm
	[694] = {"694", "Brise-Cœur", "Brise 3 des cœurs d'Isaac#↑ Dégâts {{ColorLime}}+0.25{{ColorWhite}} pour chaque cœur brisé#Chaque coup fatal laisse Isaac en vie mais brise deux cœurs supplémentaires#Isaac meurt si tous ses cœurs sont brisés"}, --  Heartbreak
	[695] = {"695", "Souffle de Sang", "{{Blank}} Subir un dégât donne :#↑ Débit augmenté#↑ Vitesse augmentée#{{Timer}} L'effet dure un étage"}, --  Bloody Gust
	[696] = {"696", "Salvation", "Entoure Isaac d'un halo#Les ennemis qui restent assez longtemps dans le halo sont frappés d'un rayon de lumière en forme de croix#Le halo grandit à chaque dégât subi dans l'étage"}, --  Salvation
	[697] = {"697", "Jumeau Évanescent", "Clone le boss de l'étage dans la Salle du Boss {{BossRoom}}#Tuer le clone donne un objet supplémentaire#Le boss et son clone sont plus lents et n'ont que 75% de leurs PV"}, --  Vanishing Twin
	[698] = {"698", "Jumeaux Malicieux", "Se placent aux côtés d'Isaac et tirent les mêmes larmes que lui#Infligent chacun 37.5% des dégâts d'Isaac"}, --  Twisted Pair
	[699] = {"699", "Rage d'Azazel", "Toutes les 4 salles terminées, Isaac clignote en rouge et vomit un énorme laser de sang lorsqu'il rentre dans une salle hostile"}, --  Azazel's Rage
	[700] = {"700", "Résonance", "Utiliser une carte, pilule ou rune déclenche aussi l'effet des 3 dernières#Ne fonctionne qu'avec celles utilisées après avoir obtenu l'objet"}, --  Echo Chamber
	[701] = {"701", "Tombeau d'Isaac", "Fait apparaître un Coffre Antique {{DirtyChest}} dans la salle de départ de chaque étage#Les coffres antiques peuvent contenir :#{{SoulHeart}} Cœurs d'âme#{{Trinket}} Babioles#{{Collectible}} Objet angélique#{{Collectible}} Objet de Papa ou Maman"}, --  Isaac's Tomb
	[702] = {"702", "Esprit Vengeur", "Subir un dégât invoque un feu follet invulnérable pour la durée de l'étage#Les feux follets infligent des dégâts de contact mais ne bloquent pas les projectiles"}, --  Vengeful Spirit
	[703] = {"703", "Ésaü Junior", "Transforme Isaac en Ésaü Junior et inversement#Ésaü Junior peut voler, possède 3 cœurs noirs et a des objets et PV séparés"}, --  Esau Jr.
	[704] = {"704", "Frénésie", "↑ Vitesse {{ColorLime}}+0.4#↑ Dégâts {{ColorLime}}+3.0#{{ArrowUpDown}} Débit {{ColorError}}x0.5 {{ColorLime}}+2#Remplace les larmes par une attaque au corps-à-corps#{{Timer}} L'effet dure 5 secondes"}, --  Berserk!
	[705] = {"705", "Arts Obscurs", "↑ Vitesse {{ColorLime}}+1.0{{ColorWhite}}#Permet à Isaac de traverser les ennemis et projectiles#{{Timer}} L'effet dure 1 seconde#Paralyse et inflige des dégâts aux ennemis traversés"}, --  Dark Arts
	[706] = {"706", "Abysse", "Absorbe tous les objets de la salle et invoque un locuste abyssal pour chaque objet détruit#Les locustes abyssaux sont invulnérables et foncent dans la direction où tire Isaac"}, --  Abyss
	[707] = {"707", "Souper", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soigne 1 cœur rouge"}, --  Supper
	[708] = {"708", "Agrafeuse", "↑ Dégâts {{ColorLime}}+1.0#Toutes les larmes d'Isaac sont tirées de l'œil droit"}, --  Stapler
	[709] = {"709", "Suplex !", "Permet à Isaac de foncer sur un ennemi et de l'écraser au sol#L'attaque augmente en puissance et en portée selon la taille d'Isaac"}, --  Suplex!
	[710] = {"710", "Sac de Fabrication", "Utiliser l'objet puis tirer balaye le sac#Toucher une ressource avec le sac la place dedans#Maintenir [Utiliser] quand le sac contient 8 ressources fabrique un objet#La qualité de l'objet dépend des ressources ramassées"}, --  Bag of Crafting
	[711] = {"711", "Inversion", "Affiche un deuxième objet transparent sur les piédestaux#Utiliser l'objet inverse l'objet solide et l'objet transparent#L'objet transparent disparait s'il est laissé seul sur un piédestal#Ne fonctionne qu'avec les objets déjà présents dans une salle"}, --  Flip
	[712] = {"712", "Lemegeton", "Invoque un feu follet violet en forme d'objet et donne son effet#L'effet est perdu si le feu follet est détruit#25% de chances d'invoquer un objet qui provient de la banque d'objets de la salle"}, --  Lemegeton
	[713] = {"713", "Sumptorium", "Convertit un demi-cœur en un familier pâté#Le type de pâté change selon le cœur sacrifié"}, --  Sumptorium
	[714] = {"714", "Rappel", "Ramène le corps du Délaissé à l'Âme"}, --  Recall
	[715] = {"715", "Garder", "Stocke un caca jetable à la première utilisation#Utilise le caca stocké à la deuxième utilisation"}, --  Hold
	[716] = {"716", "Bourse du Gardien", "↑ Dépenser 3 pièces augmente la stat de portée, vitesse ou dégâts#Fait apparaître 3 pièces et une clé"}, --  Keeper's Sack
	[717] = {"717", "Amies du Gardien", "Détruire un obstacle invoque 2 araignées bleues#Les obstacles invoquent des araignées bleues dans les salles hostiles"}, --  Keeper's Kin
	[718] = {"718", "Corde du Gardien", "<Cet objet n'existe pas>"}, -- Keepers Rope (Cut item)
	[719] = {"719", "Boîte du Gardien", "Fait apparaître un objet ou une ressource à acheter"}, --  Keeper's Box
	[720] = {"720", "Bocal de N'Importe Quoi", "Fait apparaître selon son nombre de charges :#{{Blank}} 1:{{Poop}} 2:{{Coin}} 3:{{Bomb}}#{{Blank}} 4:{{Key}} 5:{{Heart}} 6:{{Pill}}#{{Blank}} 7:{{Card}} 8:{{SoulHeart}} 9:{{GoldenHeart}}#{{Blank}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} 12: Effet aléatoire"}, --  Everything Jar
	[721] = {"721", "TMTRAINER", "Corrompt tous les futurs objets de la partie#Les effets et icônes des objets corrompus sont complètement aléatoires"}, --  TMTRAINER
	[722] = {"722", "Anima Sola", "Paralyse l'ennemi le plus proche d'Isaac#{{Timer}} L'effet dure 5 secondes"}, --  Anima Sola
	[723] = {"723", "Dé Compteur", "Retire 1 à l'ID interne de tous les objets de la salle"}, --  Spindown Dice
	[724] = {"724", "Hypercoagulation", "Subir un dégât fait apparaître un cœur ou demi-cœur rouge#Ces cœurs disparaissent après 1.5 secondes s'ils ne sont pas ramassés"}, --  Hypercoagulation
	[725] = {"725", "Intestin Irrité", "Infliger suffisamment de dégâts fait clignoter Isaac en rouge#Relâcher les boutons de tir quand Isaac clignote lance un caca jetable"}, --  IBS
	[726] = {"726", "Hémoptysie", "Appuyer deux fois sur un bouton de tir fait éternuer Isaac#L'éternuement inflige des dégâts et rend les ennemis plus vulnérables aux lasers de sang"}, --  Hemoptysis
	[727] = {"727", "Bombes Fantômes", "{{Bomb}} +5 Bombes#Les bombes d'Isaac invoquent des fantômes qui pourchassent les ennemis, infligent des dégâts de contact et explosent après 10 secondes"}, --  Ghost Bombs
	[728] = {"728", "Gello", "Invoque un familier qui copie les stats et les effets des larmes d'Isaac#{{DamageSmall}} Inflige 75% des dégâts d'Isaac#{{Timer}} L'effet dure une salle"}, --  Gello
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
	[482] = "Remplace le dernier objet obtenu par {{ColorYellow}}Pentagramme{{ColorWhite}} {{Collectible51}}", -- Clicker
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
	[33] = "Le feu {{InnerWisp}} tire des larmes autoguidées", -- The Bible
	[34] = "Le feu {{MiddleWisp}} inflige le double de dégâts", -- The Book of Belial
	[35] = "Le feu {{InnerWisp}} tire parfois une larme terrifiante et déclenche l'effet du Necronomicon à sa mort", -- The Necronomicon
	[36] = "Le feu {{OuterWisp}} tire parfois une larme E-coli", -- The Poop
	[37] = "Le feu {{MiddleWisp}} lâche de petites bombes autoguidées à sa mort", -- Mr. Boom
	[38] = "Le feu {{OuterWisp}} tire des larmes rapides mais peu précises", -- Tammy's Head
	[39] = "Le feu {{MiddleWisp}} tire parfois une larme pétrifiante", -- Mom's Bra
	[40] = "Le feu {{MiddleWisp}} tire des larmes explosives et explose à sa mort", -- Kamikaze!
	[41] = "Le feu {{MiddleWisp}} tire parfois une larme terrifiante", -- Mom's Pad
	[42] = "Le feu {{MiddleWisp}} tire parfois une larme Ipéca", -- Bob's Rotten Head
	[44] = "Le feu {{MiddleWisp}} téléporte parfois un ennemi touché", -- Teleport!
	[45] = "Les ennemis tués par le feu {{MiddleWisp}} lâchent parfois un cœur", -- Yum Heart
	[47] = "Le feu {{MiddleWisp}} lance des bombes en direction du curseur", -- Doctor's Remote
	[49] = "Le feu {{OuterWisp}} ne tire pas et crache un laser quand Isaac utilise l'objet", -- Shoop da Whoop!
	[56] = "Le feu {{MiddleWisp}} tire des larmes rapides à courte portée et répand une traînée corrosive", -- Lemon Mishap
	[58] = "Le feu {{MiddleWisp}} est invulnérable aux projectiles", -- Book of Shadows
	[65] = "Le feu {{MiddleWisp}} lâche une bombe amorcée à sa mort", -- Anarchist Cookbook
	[66] = "Le feu {{MiddleWisp}} ralentit les ennemis pendant 3 secondes à sa mort", -- The Hourglass
	[77] = "Le feu {{MiddleWisp}} inflige davantage de dégâts de contact", -- My Little Unicorn
	[78] = "Le feu {{InnerWisp}} ne tire pas et invoque un P'tit Cavalier temporaire à sa mort", -- Book of Revelations
	[83] = "Le feu {{InnerWisp}} inflige davantage de dégâts et de recul", -- The Nail
	[84] = "Feu {{MiddleWisp}} normal", -- We Need to Go Deeper!
	[85] = "Le feu {{InnerWisp}} lâche une carte à sa mort", -- Deck of Cards
	[86] = "Le feu {{MiddleWisp}} tire des dents", -- Monstro's Tooth
	[93] = "Le feu {{InnerWisp}} tire des larmes anti-gravité et parfois une larme terrifiante", -- The Gamekid
	[97] = "Invoque un des feux de ces objets : {{Collectible65}}{{Collectible42}}{{Collectible85}}{{Collectible102}}{{Collectible37}}{{Collectible177}}{{Collectible49}}{{Collectible45}}", -- The Book of Sin
	[102] = "Le feu {{InnerWisp}} inflige un effet différent aux ennemis selon sa couleur", -- Mom's Bottle of Pills
	[105] = "Invoque un feu {{MiddleWisp}} pour chaque objet rejoué", -- The D6
	[107] = "Le feu {{InnerWisp}} tire des larmes transperçantes", -- The Pinking Shears
	[111] = "Le feu {{OuterWisp}} pète à sa mort", -- The Bean
	[123] = "Le feu {{InnerWisp}} tire des larmes aléatoires", -- Monster Manual
	[124] = "Invoque le feu de l'objet imité", -- Dead Sea Scrolls
	[126] = "Le feu {{MiddleWisp}} est très résistant", -- Razor Blade
	[127] = "Invoque un feu {{MiddleWisp}} invulnérable pour l'étage", -- Forget Me Now
	[130] = "Le feu {{MiddleWisp}} fonce dans la direction des tirs d'Isaac", -- A Pony
	[133] = "3 feux {{MiddleWisp}} très résistants", -- Guppy's Paw
	[135] = "Feux {{OuterWisp}} normaux", -- IV Bag
	[136] = "Les ennemis touchés par certaines larmes du feu {{MiddleWisp}} sont pris pour cible par les autres ennemis", -- Best Friend
	[137] = "Invoque un feu {{InnerWisp}} par bombe détonée#Les larmes du feu peuvent être explosées à distance", -- Remote Detonator
	[145] = "À la place de mouches, invoque des feux {{OuterWisp}} qui deviennent des mouches bleues à leur mort", -- Guppy's Head
	[146] = "Le feu {{InnerWisp}} tire des larmes autoguidées", -- Prayer Card
	[147] = "Casser un obstacle invoque parfois un feu follet", -- Notched Axe
	[158] = "Le feu {{MiddleWisp}} tire sur les ennemis à proximité", -- Crystal Ball
	[160] = "Un rayon de lumière frappe les ennemis qui entrent en contact avec le feu {{MiddleWisp}}", -- Crack the Sky
	[164] = "Le feu {{MiddleWisp}} dure une salle", -- The Candle
	[166] = "Détruit toutes les ressources et peut invoquer un feu {{MiddleWisp}} pour chacune", -- D20
	[171] = "Le feu {{MiddleWisp}} tire parfois une larme ralentissante", -- Spider Butt
	[175] = "Si le feu {{MiddleWisp}} touche une serrure, il l'ouvre puis meurt", -- Dad's Key
	[177] = "Invoque un feu différent selon la récompense gagnée", -- Portable Slot
	[181] = "Le feu {{MiddleWisp}} tire parfois une larme sacrée", -- White Pony
	[186] = "Le feu {{MiddleWisp}} est très résistant", -- Blood Rights
	[192] = "Le feu {{MiddleWisp}} tire des larmes autoguidées", -- Telepathy for Dummies
	[263] = "Les ennemis tués par le feu lâchent parfois une rune#Le feu {{MiddleWisp}} lâche une rune à sa mort", -- Clear Rune
	[282] = "Invoque jusqu'à 6 feux immobiles", -- How to Jump
	[283] = "Invoque un feu et rejoue tous les autres#Ne rejoue pas le {{ColorYellow}}Livre des Vertus", -- D100
	[284] = "Détruit tous les feux et en invoque un par paire d'objets rejouée#Ne rejoue pas le {{ColorYellow}}Livre des Vertus", -- D4
	[285] = "Le feu {{MiddleWisp}} rejoue parfois un ennemi touché", -- D10
	[286] = "Les ennemis tués par le feu lâchent parfois une carte#Le feu {{MiddleWisp}} lâche une carte à sa mort", -- Blank Card
	[287] = "Le feu {{MiddleWisp}} ouvre les portes, révèle une salle inexplorée sur la carte et brise les rochers marqués de la salle à sa mort", -- Book of Secrets
	[288] = "Au lieu d'araignées, invoque des feux {{OuterWisp}} qui deviennent des araignées bleues à leur mort", -- Box of Spiders
	[289] = "Le feu {{MiddleWisp}} tire des flammes rouges et disparaît à la salle suivante", -- Red Candle
	[290] = "Invoque un feu pour chaque cœur dans le bocal#Les feux {{MiddleWisp}} peuvent lâcher un cœur à leur mort", -- The Jar
	[291] = "Invoque un feu {{MiddleWisp}} par ennemi transformé", -- Flush!
	[292] = "{{ColorLime}}+10%{{ColorWhite}} de chances de Pacte avec le Diable ou d'Offrande des Anges par feu {{MiddleWisp}} de cet objet", -- Satanic Bible
	[293] = "Le feu {{MiddleWisp}} tire des lasers en croix à sa mort", -- Head of Krampus
	[294] = "Le feu {{InnerWisp}} ne tire pas, pète à sa mort et disparaît à la salle suivante", -- Butter Bean
	[295] = "Le feu {{InnerWisp}} peut lâcher une pièce à sa mort", -- Magic Fingers
	[296] = "Feu {{MiddleWisp}} normal", -- Converter
	[297] = "Feu {{MiddleWisp}} normal", -- Pandora's Box
	[298] = "Le feu {{MiddleWisp}} est immunisé aux dégâts de contact mais n'en inflige que quand la Corne Brisée est active", -- Unicorn Stump
	[323] = "Invoque 6 feux {{MiddleWisp}} qui disparaissent après 3 secondes", -- Isaac's Tears
	[324] = "Le feu {{MiddleWisp}} tire des larmes aléatoires", -- Undefined
	[325] = "Le feu {{MiddleWisp}} tire des gerbes de larmes", -- Scissors
	[326] = "Un blocage parfait invoque 4 feux {{InnerWisp}}", -- Breath of Life
	[338] = "Le feu {{MiddleWisp}} tire des larmes boomerang et dure une salle", -- The Boomerang
	[347] = "Duplique tous les feux et invoque un feu qui tire deux larmes", -- Diplopia
	[348] = "Le feu {{MiddleWisp}} lâche une pilule à sa mort", -- Placebo
	[349] = "Le feu {{MiddleWisp}} lâche parfois une pièce à sa mort", -- Wooden Nickel
	[351] = "Le feu {{MiddleWisp}} génère une vague de rochers à chaque utilisation et pète, pétrifie et empoisonne les ennemis proches à sa mort", -- Mega Bean
	[352] = "Tous les feux {{MiddleWisp}} de cet objet meurent si l'un meurt", -- Glass Cannon
	[357] = "Invoque un feu {{MiddleWisp}} et duplique tous les autres pour une salle", -- Box of Friends
	[382] = "À leur mort, les monstres alliés deviennent des feux qui ont leurs capacités", -- Friendly Ball
	[383] = "Le feu {{MiddleWisp}} éclate en 6 larmes à sa mort, et ses larmes peuvent être divisées", -- Tear Detonator
	[386] = "Les larmes du feu {{MiddleWisp}} rejouent parfois un obstacle touché", -- D12
	[396] = "Un feu orbite autour de chaque trou", -- Ventricle Razor
	[406] = "Le feu {{MiddleWisp}} a des dégâts et un débit aléatoires", -- D8
	[419] = "Le feu {{MiddleWisp}} téléporte parfois un ennemi touché", -- Teleport 2.0
	[421] = "Le feu {{MiddleWisp}} pète et envoûte les ennemis à sa mort", -- Kidney Bean
	[422] = "Le feu {{MiddleWisp}} pétrifie parfois un ennemi touché", -- Glowing Hour Glass
	[427] = "Le feu rebondit contre les murs et explose au contact des larmes d'Isaac", -- Mine Crafter
	[434] = "Invoque un feu {{MiddleWisp}} au lieu d'1 à 5 mouches bleues", -- Jar of Flies
	[437] = "Le feu {{MiddleWisp}} déclenche l'effet du D7 au premier dégât subi", -- D7
	[439] = "Feu {{MiddleWisp}} normal", -- Mom's Box
	[441] = "Le feu {{MiddleWisp}} crache des lasers de sang et tire en continu quand Isaac utilise l'objet", -- Mega Blast
	[475] = "Invoque 8 feux {{MiddleWisp}} qui infligent de gros dégâts", -- Plan C
	[476] = "Invoque 2 feux {{MiddleWisp}}, 3 si aucune ressource n'a été dupliquée", -- D1
	[477] = "Invoque le feu de tous les objets absorbés", -- Void
	[478] = "Le feu {{MiddleWisp}} immobilise les ennemis et projectiles pour 3 secondes à sa mort", -- Pause
	[479] = "Le feu {{MiddleWisp}} fait parfois apparaître une babiole à sa mort", -- Smelter
	[480] = "Les PV du feu {{MiddleWisp}} invoqué dépendent du nombre de ressources converties", -- Compost
	[481] = "Le feu {{MiddleWisp}} peut transformer un ennemi touché en feu", -- Dataminer
	[482] = "Invoque un feu au hasard", -- Clicker
	[483] = "Invoque 8 feux {{MiddleWisp}} qui lâchent des bombes troll dorées à leur mort", -- Mama Mega!
	[484] = "Le feu {{MiddleWisp}} ne tire pas, crée une vague de rochers à sa mort et disparaît à la salle suivante", -- Wait What?
	[485] = "Duplique ou tue tous les feux {{MiddleWisp}} de cet objet quand l'un subit un dégât", -- Crooked Penny
	[486] = "Le feu {{MiddleWisp}} ne tire pas et nullifie parfois un dégât infligé à Isaac", -- Dull Razor
	[487] = "Invoque un feu permanent qui pourchasse les ennemis et leur tire dessus", -- Potato Peeler
	[488] = "Invoque le feu de l'objet imité {{ColorSilver}}(aléatoire pour un objet passif)", -- Metronome
	[489] = "Invoque un feu {{MiddleWisp}} normal en plus de celui du dé imité", -- D Infinity
	[490] = "Invoque un feu au hasard qui change à chaque fois qu'il meurt", -- Eden's Soul
	[504] = "Le feu {{MiddleWisp}} tire sur les ennemis à proximité", -- Brown Nugget
	[507] = "Transforme parfois les ennemis tués en feux {{OuterWisp}}", -- Sharp Straw
	[510] = "Invoque un feu {{MiddleWisp}} qui imite {{ColorCyan}}Monstro{{ColorWhite}}, le {{ColorCyan}}Duc des Mouches{{ColorWhite}}, {{ColorCyan}}Loki{{ColorWhite}} ou Le {{ColorCyan}}Revenu", -- Delirious
	[512] = "Le feu {{MiddleWisp}} tire des larmes magnétisées", -- Black Hole
	[515] = "Invoque un feu au hasard qui change à chaque fois qu'il meurt", -- Mystery Gift
	[516] = "Le feu {{MiddleWisp}} tire comme l'Arroseur Automatique", -- Sprinkler
	[521] = "Le feu {{MiddleWisp}} tire 3 larmes et meurt si Isaac dépense de l'argent", -- Coupon
	[522] = "Transforme les projectiles interceptés en feux {{OuterWisp}}", -- Telekinesis
	[523] = "Le feu {{MiddleWisp}} est invoqué en déballant et lâche une ressource à sa mort", -- Moving Box
	[527] = "Le feu {{MiddleWisp}} ne tire pas et ouvre une serrure une fois la salle terminée", -- Mr. ME!
	[536] = "Convertit tous les feux en demi-cœurs et invoque deux feux {{MiddleWisp}}", -- Sacrificial Altar
	[545] = "Le feu {{InnerWisp}} invoque un Osselet amical à sa mort", -- Book of the Dead
	[550] = "{{ColorCyan}}Maman{{ColorWhite}} écrase parfois un ennemi touché par le feu {{MiddleWisp}}", -- Broken Shovel
	[552] = "{{ColorCyan}}Maman{{ColorWhite}} écrase parfois un ennemi touché par le feu {{MiddleWisp}}#Invoque aussi un feu résistant qui ne tire pas", -- Mom's Shovel
	[555] = "Le feu {{MiddleWisp}} transforme parfois un ennemi touché en or", -- Golden Razor
	[556] = "Le feu {{MiddleWisp}} crache de courts lasers de sang", -- Sulfur
	[557] = "↑ Chance {{ColorLime}}+0.2{{ColorWhite}} par feu {{MiddleWisp}} de cet objet", -- Fortune Cookie
	[577] = "Feu {{MiddleWisp}} normal", -- Damocles
	[578] = "Le feu {{MiddleWisp}} répand une trainée corrosive", -- Free Lemonade
	[580] = "Le feu {{MiddleWisp}} ouvre parfois une porte rouge en entrant dans une salle", -- Red Key
	[582] = "Seul un feu {{MiddleWisp}} de cet objet ne peut être invoqué à la fois", -- Wavy Cap
	[584] = "Feu {{MiddleWisp}} normal", -- Book of Virtues
	[585] = "Invoque 8 feux {{MiddleWisp}}", -- Alabaster Box
	[604] = "Invoque 3 feux qui tirent parfois une larme étourdissante où atterrit l'obstacle", -- Mom's Bracelet
	[605] = "Feu {{MiddleWisp}} normal", -- The Scooper
	[609] = "Utiliser l'objet invoque un feu {{MiddleWisp}} invulnérable ou détruit tous ses feux", -- Eternal D6
	[611] = "Les dégâts et PV du feu {{MiddleWisp}} dépendent de la charge de l'objet", -- Larynx
	[622] = "Invoque 3 feux {{MiddleWisp}} et détruit tous les autres", -- Genesis
	[623] = "Feu {{MiddleWisp}} normal", -- Sharp Key
	[631] = "Invoque un feu {{MiddleWisp}} et découpe les autres en deux", -- Meat Cleaver
	[635] = "Invoque un feu immobile au point de téléportation", -- Stitches
	[636] = "N'invoque pas de feu", -- R Key
	[638] = "Le feu {{MiddleWisp}} efface les ennemis au contact", -- Eraser
	[639] = "Le feu {{MiddleWisp}} ne tire pas et invoque une mouche bleue à la fin d'une salle", -- Yuck Heart
	[640] = "Le feu {{MiddleWisp}} tire parfois une flamme bleue", -- Urn of Souls
	[642] = "Le feu {{MiddleWisp}} tire des larmes empoisonnées", -- Magic Skin
	[650] = "Quand Prunelle rebondit, le feu {{MiddleWisp}} fait de même", -- Plum Flute
	[653] = "Les fantômes rouges tirent avec Isaac", -- Vade Retro
	[655] = "Invoque des feux {{MiddleWisp}} éphémères quand l'effet est actif", -- Spin to Win
	[685] = "Triple les feux invoqués", -- Jar of Wisps
	[687] = "Invoque un feu au hasard", -- Friend Finder
	[703] = "Feu {{MiddleWisp}} normal", -- Esau Jr.
	[704] = "Le feu {{MiddleWisp}} est très résistant et ne tire pas", -- Berserk
	[705] = "Tuer un ennemi invoque un feu {{MiddleWisp}} pour une salle", -- Dark Arts
	[706] = "Le feu {{MiddleWisp}} est très résistant et ne tire pas", -- Abyss
	[709] = "Invoque 3 feux à l'atterrissage pour une salle", -- Suplex
	[710] = "Fabriquer invoque un feu au hasard", -- Bag of Crafting
	[711] = "Feu {{MiddleWisp}} normal", -- Flip
	[712] = "Les feux objets peuvent tirer des larmes", -- Lemegeton
	[713] = "N'invoque pas de feu", -- Sumptorium
	[719] = "Les ennemis tués par ces feux {{MiddleWisp}} lâche parfois une pièce", -- Keeper's Box
	[720] = "Invoque un feu au hasard", -- Everything Jar
	[722] = "Un feu orbite l'ennemi enchaîné et lui tire dessus puis meurt quand l'ennemi meurt", -- Anima Sola
	[723] = "Invoque un feu au hasard et transforme tous les autres en celui-ci", -- Spindown Dice
	[728] = "Feu {{MiddleWisp}} normal#Tous les feux orbitent Gello", -- Gello
	[729] = "Feu follet immobile", -- Decap Attack

}

---------- Abyss Locust description parts ----------
EID.descriptions[languageCode].AbyssTexts = {
 	-- values inside {} brackets will be replaced with text parts below
	-- Abyss texts are affected by the PluralizeFunction (ab+ file)
	-- The placeholder therefore can be used in all parts that make up the abyss locust descriptions
	InfoText = "{amount} {size} locuste{pluralize} {speed} ({dmg})", -- values inside {} brackets will be replaced with text parts below
	InfoTextPlural = "{amount} {size} locustes {speed} ({dmg})", -- Will be shown when more than 1 locust will spawn
	Chance = " ({1}%{{LuckSmall}})", -- {1} will be replaced with the chance
	SpeedSlow = "lent{pluralize}", -- Speed < 1
	SpeedFast = "rapide{pluralize}", -- Speed > 1
	SpeedDash = "très rapide{pluralize}", -- Speed >= 6
	SizeSmall = "petit{pluralize}", -- Size < 1
	SizeBig = "gros", -- Size > 1
	DamageMult = "Dégâts x{1}", -- {1} will be replaced with the calculated damage multiplier 
}

---------- Abyss Locust special effects ----------
--- Special locust effects that dont correspond to TearFlags.
--- Displays an icon in front of the description that shows an item with the same effect
EID.descriptions[languageCode].AbyssLocustEffects = {
[0] = "Explose au contact",
[1] = "Effet aléatoire",
-- 2 = Multiple locusts act like one. Uninteresting info for the player in my opinion
[3] = "Rejoue les ennemis au contact",
[4] = "Inflige des dégâts de masse au contact",
[5] = "Efface les ennemis au contact",
[6] = "Brandit un couteau",
[7] = "Inflige des dégâts de zone au contact",
[8] = "Crée un cercle noir au contact",
[9] = "Repousse les ennmis et projectiles lorsqu'il se déplace",
[10] = "Crée un pet toxique au contact",
[11] = "Pète au contact",
[12] = "Crache un rayon laser au contact",
[13] = "Répand une flaque toxique au contact",
[14] = "Répand une flaque toxique au contact",
[15] = "Répand une flaque toxique au contact",
[16] = "Répand une flaque toxique au contact",
[17] = "Crée des pentagrammes au sol qui infligent des dégâts",
[18] = "Mange les ressources au contact et gagne {{ColorLime}}dégâts +0.25{{ColorRed}} par ressource mangée (max. 25)",
}


-- list of Tear flag descriptions used for Abyss locust effect description
EID.descriptions[languageCode].TearFlagNames = {
	[0] = "Traverse les obstacles",                 -- Ouija board type tear (goes thru obstacles)
    [1] = "Transperce les ennemis",                 -- Cupid's arrow type tear (goes thru enemy)
    [2] = "Autoguidé",                   -- Spoon bender type tear (homes to enemy)
    [3] = "Ralentit les ennemis au contact",                  -- Spider bite type tear (slows on contact)
    [4] = "Empoisonne les ennemis au contact",                   -- Common cold type tear (poisons on contact)
    [5] = "Pétrifie les ennemis au contact",                  -- fMom's contact type tear (freezes on contact)
    [6] = "Se divise au contact",                    -- Parasite type tear (splits on collision)
    [7] = "Grandit selon sa distance à Isaac",            -- Lump of coal type tear (grows by range)
    [8] = "Revient comme un boomerang",                -- My reflection type tear (returns back)
    [9] = "Traverse les ennemis qu'il tue",               -- Polyphemus type tear (Damages the entity and if the damage is more then enemy hp it continues with less damage
    [10] = "Se déplace en zig-zag",         -- Wiggle worm type tear (wiggles)
    [11] = "Invoque une mouche au contact",        -- Mulligan type tear (creates fly on hit)
    [12] = "Explose au contact",               -- IPECAC type tear (explodes on hit)
    [13] = "Envoûte les ennemis au contact",                -- Mom's Eyeshadow tear
    [14] = "Étourdit les ennemis au contact",               -- Iron Bar tear
    [15] = "Fait apparaître un cœur s'il tue un ennemi",     -- These tears cause enemy to drop hearts if killed (33% chance)
    [16] = "Orbite autour d'Isaac",     -- Used for Little Planet (orbit arounds the player)
    [17] = "Attaque avec un délai",     -- Anti gravity type tear (floats in place for some time before finally moving) (unset after first update)
    [18] = "Se divise en 4 au contact",     -- Splits into 4 smaller tears if it hits the ground
    [19] = "Rebondit contre les ennemis, les murs et les obstacles",       -- Bounce off of enemies, walls, rocks (Higher priority than PERSISTENT & PIERCING)
    [20] = "Terrifie les ennemis au contact",                    -- Mom's Perfume type tear of fear (fear on contact)
    [21] = "Rapetisse quand il est lancé",                  -- Proptosis tears start large and shrink
    [22] = "Brûle les ennemis au contact",                    -- Fire Mind tears cause Burn effect on enemies
    [23] = "Attire les ennemis et les ressources", -- Attracts enemies and pickups
    [24] = "Inflige du recul au contact",               -- Tear impact pushes enemies back further
    [25] = "Grandit et rapetisse rapidement",               -- Makes the tear pulse
    [26] = "Se déplace en spirale",         -- Makes the tear path spiral
    [27] = "Est élargi sur les côtés",              -- Makes the tear oval in the direction of travel
    [28] = "Bombe pleureuse",                -- Used by Bombs (Sad Bomb)
    [29] = "Bombe bronze",               -- Used by Bombs (Butt Bomb)
    [30] = "Se déplace en carré",         -- Used for Hook Worm
    [31] = "Est entouré d'une aura qui inflige des dégâts",     -- Used for GodHead (they will have a glow around them)
    [32] = "Ralentit les ennemis au contact", -- Used for Gish player tears (to color enemy black on slowing)
    [33] = "Répand une flaque toxique au contact", -- Mysterious Liquid tears spawn damaging green creep when hit
    [34] = "Détruit les projectiles au contact",                -- Lost Contact tears, block enemy projectiles
    [35] = "Bombe à paillette",            -- Used by Bombs (Glitter Bomb)
    [36] = "Bombe à fragmentation",            -- Used for Scatter bombs
    [37] = "Colle aux ennemis",                  -- Used for Sticky bombs and Explosivo tears
    [38] = "Traverse les bords de l'écran",     -- Tears loop around the screen
    [39] = "Crée des rayons de lumière au contact", -- Create damaging light beam on hit
    [40] = "Fait apparaître une pièce au contact",        -- Used by Bumbo, spawns a coin when tear hits
    [41] = "Fait apparaître un cœur noir s'il tue un ennemi",    -- Enemy drops a black hp when dies
    [42] = "Suit le rayon de lumière",            -- Tear with this flag will follow parent player's beam
    [43] = "Rapetisse les ennemis au contact",          -- God's flesh flag to minimize enemies
    [44] = "Fait apparaître une pièce au contact",      -- Greed coin tears that has a chance to generate a coin when hit
    [45] = "Explose en croix au contact",              -- Bomber Boy
    [46] = "Se déplace en grandes spirales",     -- Ouroboros Worm, big radius oscilating tears
    [47] = "Étourdit les ennemis de manière permanente au contact",   -- Glaucoma tears, permanently confuses enemies
    [48] = "Se colle aux ennemis",                  -- Booger tears, stick and do damage over time
    [49] = "Invoque une mouche ou araignée bleue au contact",               -- Egg tears, leave creep and spawns spiders or flies
    [50] = "Détruit les obstacles au contact",            -- Sulfuric Acid tears, can break grid entities
    [51] = "Les ennemis tués par ce locuste éclatent en fragments d'os",                    -- Bone tears, splits in 2
    [52] = "Transperce les ennemis puis devient autoguidé", -- Belial tears, piecing tears gets double damage + homing
    [53] = "Transforme les ennemis en or au contact",           -- Midas touch tears
    [54] = "Éclate en 10 larmes au contact",                -- Needle tears
    [55] = "Crée des arcs électriques au contact",           -- Jacobs ladder tears
    [56] = "Invoque la main de Grosse Corne au contact", -- Little Horn tears
    [57] = "Reliés par des arcs électriques",   -- Technology Zero
    [58] = "Rebondit sur les autres",        -- Pop!
    [59] = "Absorbe les autres",               -- Hungry Tears
    [60] = "Laser de lumière",               -- Trisagion, generates a laser on top of the tear
    [61] = "Rebondit sur le sol",          -- Flat Stone
    [62] = "Éclate au contact",             -- Haemolacria
    [63] = "Répand une flaque toxique",             -- Bob's Bladder
    [64] = "Inflige du recul au contact",     -- Knockout Drops
    [65] = "Gèle les ennemis qu'il tue",   -- Uranus
    [66] = "Attire les ennemis et les ressources", -- Lodestone
    [67] = "Les ennemis touchés par ce locuste sont pris pour cible par les autres",       -- Rotten Tomato
    [68] = "Œil Occulte",       -- Eye of the Occult
    [69] = "Orbite autour d'Isaac",   -- Orbiting tears with a more narrow and stable orbit (used by Saturnus and Immaculate Heart)
    [70] = "Détruit les obstacles au contact",             -- Rock tears, chance to break rocks, deal extra damage to rock type enemies
    [71] = "Tourne à 90° pour toucher un ennemi manqué",      -- Brain Worm, tears turn and go horizontally when moving past an enemy
    [72] = "Hémoglobombe",              -- Blood Bombs, leave blood creep on the ground
    [73] = "Transforme les ennemis en caca au contact",    -- E. Coli tears, turn enemies into poop
    [74] = "Tuer un ennemi fait apparaître une pièce",      -- Killed enemies have a chance to drop a random coin (Reverse Hanged Man)
    [75] = "Bombe soufre",          -- Brimstone Bombs, explosion creates a brimstone cross
    [76] = "Crée un trou noir au contact",       -- Rift tears, creates a black hole on impact
    [77] = "Colle aux ennemis et se multiplie s'il les tue",  -- Spore tears, stick to enemies and multiply on enemy death
    [78] = "Bombe fantôme",              -- Ghost bombs
    [79] = "Tuer un ennemi fait apparaître une carte",      -- Killed enemies will drop a random tarot card
    [80] = "Tuer un ennemi fait apparaître une rune",      -- Killed enemies will drop a random rune
    [81] = "Téléporte les ennemis au contact",   -- Hit enemies will teleport to a different part of the room
    [82] = "Décélère progressivement",    -- Decelerate over time
    [83] = "Accélère progressivement",    -- Accelerate over time
    [104] = "Rebondit contre les murs",    -- Similar to TEAR_BOUNCE but only bounces off walls, not enemies
	[106] = "Inflige davantage de dégâts et fait saigner les ennemis qu'il touche par derrière",   -- Deals extra damage from behind and inflicts bleeding
}

-- Special Locust effects when Item was eaten by Abyss. Entries here will override the auto-generated descriptions
-- Kept in for backwards compatibility
EID.descriptions[languageCode].abyssSynergies = {}


-- Effect of Car battery on Active Items
local repCarBattery = {
	[34] = {2, 3}, -- The Book of Belial
	[37] = {185, 370}, --Mr. Boom
	[45] = {"un cœur rouge","{{BlinkYellowGreen}}2 {{ColorWhite}}cœurs rouges","un demi-cœur rouge","{{BlinkYellowGreen}}1{{ColorWhite}} cœur rouge"}, -- Yum Heart
	[59] = {2, 3}, -- The Book of Belial (Birthright)
	[83] = {"{{BlackHeart}} {{BlinkYellowGreen}}+1 cœur noir#↑ Dégâts {{BlinkYellowGreen}}+4#↓ Vitesse {{ColorError}}-0.18#Permet à Isaac d'infliger des dégâts de contact et d'écraser les obstacles#{{Timer}} L'effet dure une salle"}, -- The Nail
	[123] = {"un familier aléatoire", "2{{ColorWhite}} familiers aléatoires", "Le familier disparaît", "{{ColorWhite}}Ceux-ci disparaissent"}, -- Monster Manual
	[263] = {"Déclenche", "{{ColorWhite}}Déclenche{{BlinkYellowGreen}} 2 fois"}, -- Clear Rune
	[283] = {"une ressource aléatoire", "2{{ColorWhite}} ressources aléatoires"}, -- D100
	[285] = "Déclenche l'effet deux fois", -- D10
	[287] = {"Active l'effet", "{{ColorWhite}}Active {{BlinkYellowGreen}}2{{ColorWhite}} effets parmi ceux"}, -- Book of Secrets
	[288] = {"4 à 8", "8 à 16"}, --Box of Spiders
	[296] = {"Convertit {{BlinkYellowRed}}2{{ColorWhite}} cœurs d'âme ou cœurs noirs en {{BlinkYellowGreen}}2{{ColorWhite}} réceptacles de cœur"}, -- Converter
	[323] = {"+5", "{{ColorLime}}+5{{BlinkYellowGreen}} x2"}, -- Isaac's Tears
	[421] = "", -- Kidney Bean
  	[386] = "Augmente les chances de générer des obstacles rares", -- D12
	[485] = {"{{BlinkYellowGreen}}25%{{ColorWhite}} de chances de quadrupler tous les objets et ressources de la salle#{{BlinkYellowRed}}75%{{ColorWhite}} de chances de remplacer tous les objets et ressources de la salle par 1 ou 2 {{ColorWhite}}pièces"}, -- Crooked Penny
	[489] = "Déclenche un effet de dé supplémentaire qui reste toujours le même", -- D Infinity
	[507] = {"Inflige {{BlinkYellowGreen}}2x{{ColorWhite}} les dégâts d'Isaac et retire {{BlinkYellowGreen}}20%{{ColorWhite}} des PV totaux de tous les ennemis de la salle#Infliger des dégâts avec cet objet génère parfois un demi-cœur rouge"}, -- Sharp Straw
	[522] = {3, 7}, --Telekinesis
	[523] = "", -- Moving Box
	[556] = "{{BlinkYellowGreen}} Dégâts x1.5 +1", -- Sulfur
	[557] = "L'effet se déclenche {{BlinkYellowGreen}}2 fois", -- Fortune Cookie
	[582] = {"+0.75", "+1.5", "-0.03", "{{BlinkYellowRed}}-0.06"}, -- Wavy Cap
	[584] = "Invoque le double de feux follets", -- Book of Virtues
	[605] = {"un œil qui rebondit contre les murs de la salle, laisse une flaque de sang et inflige","2 {{ColorWhite}}yeux qui rebondissent contre les murs de la salle, laissent une flaque de sang et infligent"}, -- The Scooper
	[609] = {"{{BlinkYellowRed}}49%{{ColorWhite}} de chances de rejouer les objets de la salle#{{BlinkYellowRed}}51%{{ColorWhite}} de chances de les faire disparaître"}, -- Eternal D6
	[611] = "Déclenche un deuxième cri peu puissant", -- Larynx
	[625] = {30, 60}, -- Mega Mush
	[631] = {25, 50}, -- Meat Cleaver
	[635] = {"Invoque un familier déplaçable avec les boutons de tir#{{Collectible356}} Utiliser l'objet inflige des dégâts aux ennemis sous la Marionnette mais ne téléporte {{BlinkYellowRed}}pas{{ColorWhite}} Isaac"}, --Stitches
	[639] = {"+1 cœur moisi", "+2{{ColorWhite}} cœurs moisis"}, -- Yuck Heart
	[642] = {"Remplace {{BlinkYellowGreen}}2{{ColorWhite}} réceptacles de cœur ou {{BlinkYellowGreen}}4{{ColorWhite}} cœurs d'âme par {{BlinkYellowGreen}}2{{ColorWhite}} cœurs brisés#Fait apparaître {{BlinkYellowGreen}}2{{ColorWhite}} objets qui proviennent de la banque d'objets de la salle#{{Warning}} Si Isaac ne garde pas l'objet après l'avoir utilisé, il a une chance de remplacer les futurs objets de la partie"}, -- Magic Skin
	[650] = {"une {{ColorCyan}}Prunelle{{ColorWhite}} amicale", "2 {{ColorCyan}}Prunelles{{ColorWhite}} amicales"}, -- Plum Flute
	[685] = {"Invoque {{BlinkYellowGreen}}2{{ColorWhite}} feux follets aléatoires qui tirent, bloquent les projectiles et infligent des dégâts de contact#Chaque utilisation invoque {{BlinkYellowGreen}}2{{ColorWhite}} feux follets de plus, jusqu'à 12"}, -- Jar of Wisps
	[687] = {"Invoque {{BlinkYellowGreen}}2{{ColorWhite}} monstres alliés qui imitent les attaques et mouvements d'Isaac"}, -- Friend Finder
	[704] = {"5 secondes", "10 {{ColorWhite}}secondes#{{Blank}} {{ColorSilver}}(Tuer un ennemi redescend à 5 secondes)"},
	[705] = {"1 seconde", "2 {{ColorWhite}}secondes"}, -- Dark Arts
	[712] = {"Invoque {{BlinkYellowGreen}}2{{ColorWhite}} feux follets violets en forme d'objets et donne leurs effets#Détruire un feu follet objet fait perdre son effet#25% de chances d'invoquer un objet qui provient de la banque d'objets de la salle"}, -- Lemegeton
	[713] = {"Convertit un {{BlinkYellowGreen}}cœur{{ColorWhite}} en {{BlinkYellowGreen}}2{{ColorWhite}} familiers pâtés#Le type de pâté change selon le cœur sacrifié"}, -- Sumptorium
	[719] = {"un objet ou une ressource", "2{{ColorWhite}} objets ou ressources"}, -- Keeper's Box
	[720] = "Crée un caca en plus de l'effet", -- Everything Jar
	[722] = {"l'ennemi le plus proche", "les {{BlinkYellowGreen}}2{{ColorWhite}} ennemis les plus proches"}, --Anima Sola
	[723] = {1,2}, -- Spindown Dice
}
--EID.descriptions[languageCode].carBattery[284] = nil -- D4
EID:updateDescriptionsViaTable(repCarBattery, EID.descriptions[languageCode].carBattery)

---------- Trinkets ----------

local repTrinkets={
	[1] = {"1", "Pièce Avalée", "Subir un dégât fait apparaître une pièce"}, -- Swallowed Penny
	[7] = {"7", "Perle de Rosaire", "{{AngelChanceSmall}} Augmente les chances d'Offrandes des Anges {{AngelRoom}}#Augmente les chances de trouver {{ColorYellow}}La Bible{{ColorWhite}} dans une Bibliothèque {{Library}} ou une Boutique {{Shop}}"},
	[8] = {"8", "Cartouche", "Subir un dégât déclenche parfois l'effet du {{ColorYellow}}Jeu-Garçon{{Collectible93}}#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 38 Chance)"},
	[10] = {"10", "Ver Remuant", "↑ Débit {{ColorLime}}+0.4#La trajectoire des larmes d'Isaac forme des vagues#Larmes spectrales"}, -- Wiggle Worm
	[11] = {"11", "Ver Circulaire", "↑ Débit {{ColorLime}}+0.4#La trajectoire des larmes d'Isaac forme des cercles#Larmes spectrales"}, -- Ring Worm
	[13] = {"13", "Bon d'Achat", "Permet à Isaac d'obtenir gratuitement un objet de la Boutique#La babiole disparaît une fois l'objet acheté"},
	[15] = {"15", "Caillou Porte-Bonheur", "Détruire un obstacle a 33% de chances de faire apparaître une pièce"},-- Lucky Rock
	[16] = {"16", "Ongle de Pied de Maman", "Le pied de {{ColorCyan}}Maman{{ColorWhite}} écrase un endroit au hasard dans la salle toutes les 20 secondes"},
	[20] = {"20", "Patte de Singe", "Descendre à un demi-cœur de vie totale fait apparaître un cœur noir#La babiole disparaît après trois activations"},
	[21] = {"21", "Papier Mystérieux", "Donne parfois l'effet du {{ColorYellow}}Positif{{Collectible327}}{{ColorWhite}}, du {{ColorYellow}}Négatif{{Collectible328}}{{ColorWhite}}, de l'{{ColorYellow}}Avis de Recherche{{Trinket23}}{{ColorWhite}} ou de la {{ColorYellow}}Page Déchirée{{Trinket48}}{{ColorWhite}}"},
	[23] = {"23", "Avis de Recherche", "À sa mort, Isaac ressuscite en {{ColorLightOrange}}l'Égaré#La babiole disparaît à la mort d'Isaac"},
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
	[53] = {"53", "Tique", "{{HealingRed}} Entrer dans une salle de boss soigne 1 cœur rouge#Retire 15% des PV des boss#{{Warning}} Ne peut être retirée qu'avec l'{{ColorYellow}}Allumette{{ColorWhite}} {{Trinket41}}"},
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
	[74] = {"74", "Détecteur de Métaux", "Augmente de 0.5% les chances de trouver l'entrée d'un Souterrain {{LadderRoom}}"},
	[75] = {"75", "404", "Active l'effet d'une babiole aléatoire à chaque salle"},
	[80] = {"80", "Plume Noire", "↑ Dégâts {{ColorLime}}+0.5{{ColorWhite}} pour chaque objet démoniaque obtenu"}, -- Black Feather
	[82] = {"82", "Fer à Cheval Doré", "Les Salles du Trésor {{TreasureRoom}} ont {{ColorLime}}+15%{{ColorWhite}} de chances de proposer un choix entre deux objets"},
	[83] = {"83", "Clé du Magasin", "Permet d'ouvrir gratuitement les portes des Boutiques {{Shop}}"},
	[84] = {"84", "Côte d'Avarice", "Empêche {{ColorCyan}}Avarice{{ColorWhite}} et {{ColorCyan}}Super Avarice{{ColorWhite}} d'apparaître dans les Boutiques {{Shop}}"},
	[92] = {"92", "Couronne Fêlée", "↑ Augmente de 20% les bonus de stats donnés par les objets d'Isaac"}, -- Cracked Crown
	[96] = {"96", "Ver d'Ouroboros", "↑ Débit {{ColorLime}}+0.4#↑ Portée {{ColorLime}}+1.5#La trajectoire des larmes d'Isaac forme une très grande spirale#Larmes spectrales#Isaac tire parfois une larme autoguidée#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 5 Chance)"},
	[98] = 	{"98", "Crotte de Nez", "Chance de tirer une crotte de nez qui se colle aux ennemis et inflige les dégâts d'Isaac une fois par seconde#Les crottes de nez se décollent si l'ennemi meurt, s'enterre, saute hors de l'écran ou au bout de 10 secondes"},
	[101] = {"101", "Ampoule Éteinte", "Si l'objet activable est entièrement déchargé :#↑ Dégâts {{ColorLime}}+1.5#↑ Débit {{ColorLime}}+0.5#↑ Vitesse {{ColorLime}}+0.5#↑ Portée {{ColorLime}}+1.5#↑ Vitesse des tirs {{ColorLime}}+0.3#↑ Chance {{ColorLime}}+2"},
	[102] = {"102", "Carte Scindée", "Génère une Salle Secrète de plus à chaque étage#Ne rajoute pas de Salle Secrète à un étage déjà généré"},
	[104] = {"104", "Os de Poulet", "Subir un dégât a 2% de chances de détruire la babiole et faire apparaître un objet provenant de la banque d'objets de la salle"},
	[105] = {"105", "Sac de Friandises", "Subir un dégât a 2% de chances de détruire la babiole et faire apparaître {{ColorYellow}}Déjeuner{{ColorWhite}} {{Collectible22}}"},
	[107] = {"107", "Cœur de Corbeau", "Subir un dégât retire les cœurs rouges en priorité"},
	[108] = {"108", "Noix", "Subir 1 à 9 explosions détruit la babiole et fait apparaître une bombe, une pièce, une clé et une babiole"},
	[110] = {"110", "Pièce d'Argent", "Des boutiques apparaissent dans l'{{ColorTransform}}Utérus{{ColorWhite}} et le {{ColorTransform}}Cadavre"},
	[111] = {"111", "Couronne Sanglante", "Des Salles du Trésor {{TreasureRoom}} apparaissent dans l'{{ColorTransform}}Utérus{{ColorWhite}} et le {{ColorTransform}}Cadavre"}, -- Bloody Crown
	[112] = {"112", "Microtransactions", "Des machines de réapprovisionnement {{RestockMachine}} apparaissent dans toutes les Salles du Trésor {{TreasureRoom}}"},
	[119] = {"119", "Cellule Souche", "{{HealingRed}} Soigne la moitié des cœurs rouges d'Isaac au début de chaque étage {{ColorSilver}}(Au minimum un demi-cœur)"}, -- Stem Cell
	[123] = {"123", "Plume Angélique", "Tuer {{ColorCyan}}Uriel{{ColorWhite}} ou {{ColorCyan}}Gabriel{{ColorWhite}} fait apparaître un objet angélique au lieu d'un {{ColorYellow}}Fragment de Clé {{Collectible238}}{{Collectible239}}"},
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
	[139] = {"139", "Larmulette", "Chance {{ColorLime}}+4{{ColorWhite}} envers les effets de larmes"}, --  Teardrop Charm
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
	[154] = {"154", "Sac de Dés", "Entrer dans une nouvelle salle a 50% de chances de donner un dé à USAGE UNIQUE {{Warning}}#Le dé disparait en quittant la salle#Le dé ne remplace pas la carte, pilule ou rune portée par Isaac"}, --  Dice Bag
	[155] = {"155", "Couronne Sacrée", "Fait apparaître une Salle du Trésor dans la Cathédrale"}, --  Holy Crown
	[156] = {"156", "Bisou de Maman", "{{Heart}} +1 réceptacle de cœur"}, --  Mother's Kiss
	[157] = {"157", "Carte Déchirée", "Tous les 15 tirs, Isaac tire une larme avec les effets d'{{ColorYellow}}Ipéca{{ColorWhite}} {{Collectible149}} et de {{ColorYellow}}Mon Reflet{{ColorWhite}} {{Collectible5}}"}, --  Torn Card
	[158] = {"158", "Poche Trouée", "Subir un dégât retire deux pièces, clés ou bombes à Isaac et les fait tomber au sol"}, --  Torn Pocket
	[159] = {"159", "Clé Dorée", "{{Key}} +1 Clé#Remplace tous les coffres par des coffres dorés {{GoldenChest}}#Ne peut pas remplacer les coffres Antiques {{DirtyChest}} et Géants {{MegaChest}}"}, --  Gilded Key
	[160] = {"160", "Bourse Trèfle", "Fait apparaître un sachet dans la première salle d'un nouvel étage"}, --  Lucky Sack
	[161] = {"161", "Couronne Impure", "Une Salle du Trésor apparaît à {{ColorTransform}}Shéol"}, --  Wicked Crown
	[162] = {"162", "Corne d'Azazel", "Terminer une salle a 50% de chances de transformer Isaac en {{ColorLightOrange}}Azazel{{ColorWhite}} pour la durée de la salle suivante"}, --  Azazel's Stump
	[163] = {"163", "Colombin", "Toutes les Crottes deviennent amicales#Terminer une salle invoque une Crotte amicale"}, --  Dingle Berry
	[164] = {"164", "Amorces", "Ajoute gratuitement une bombe à chaque bombe posée"}, --  Ring Cap
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
	[176] = {"176", "P'tit Pâté", "Invoque un pâté qui imite les mouvements et les larmes d'Isaac"}, --  Lil Clot
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
	[187] = {"187", "Lunettes Cassées", "Les Salles du Trésor {{TreasureRoom}} ont 50% de chances de contenir un objet inconnu supplémentaire#50% de chances de révéler les objets inconnus du chemin alternatif"}, --  Broken Glasses
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
	--Swallowed Penny
	[1] = {"une pièce", "deux {{ColorWhite}}pièces", "trois {{ColorWhite}}pièces"},
	--AAA Battery
	[3] = {"une charge","deux {{ColorWhite}}charges", "trois {{ColorWhite}}charges"},
	--Broken Remote
	[4] = { "{{Collectible419}} Utiliser un objet activable téléporte Isaac dans {{ColorGold}}une salle inexplorée#Ordre de téléportation#{{Blank}} {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}> {{SacrificeRoom}}>{{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}> {{ChallengeRoom}}>{{IsaacsRoom}}>{{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>#{{Blank}} {{DevilRoom}}{{AngelRoom}}>Salle d'erreur"}, -- Teleport 2.0
	--Purple Heart
	[5] = {"Double","Triple", "Quadruple"},
	-- Broken Magnet (find+replace): find Phrase #1 in the localized description, change it to Phrase #2 for doubled
	[6] = { "pièces", "ressources" },
	-- Golden Store Credit: full replace
	[7] = { "Le {{ColorYellow}}Rosaire{{ColorGold}} {{Collectible72}} est ajouté à toutes les banques d'objets" },
	--Cartridge
	[8] = {"Chances doublées !", "Chances triplées !", "Chances quadruplées !"},
	-- Golden Store Credit: full replace
	[13] = { "{{ColorGold}}Permet à Isaac d'obtenir des objets de la boutique {{Shop}} gratuitement#Peut perdre son effet doré après chaque achat" },
	-- Lucky Rock append (Gold / Mom's Box / Both)
	[15] = { "Détruire un obstacle fait parfois apparaître 2 pièces", "Détruire un obstacle fait parfois apparaître 2 pièces", "Détruire un obstacle fait parfois apparaître 3 pièces" },
	--Lucky Rock
	[20] = {"un cœur noir", "deux {{ColorWhite}}cœurs noirs", "trois {{ColorWhite}}cœurs noirs"},
	-- Golden Mysterious Candy makes Golden Poop
	[25] = { "caca", "caca doré" },
	--Mysterious Candy
	[29] = {"une mouche bleue", "deux {{ColorWhite}}mouches bleues", "trois {{ColorWhite}}mouches bleues"},
	-- Isaac's Fork (find+replace): find Phrase #1 in the localized description, change it to Phrase #2 or 3 for doubled/tripled
	[46] = { "un demi-cœur rouge", "un cœur rouge", "un cœur rouge et demi"},
	-- Tick (replace): A full replacement for Golden / Mom's Box / Both, as the Golden version can be removed and only one effect is tripled
	[53] = {
		"{{HealingRed}} Entrer dans une salle de Boss {{BossRoom}} soigne {{ColorGold}}2{{ColorWhite}} cœurs rouges#Retire {{ColorGold}}30{{ColorWhite}}% des PV des boss#{{ColorGold}}Peut être retirée !",
		"{{HealingRed}} Entrer dans une salle de Boss {{BossRoom}} soigne {{ColorGold}}2{{ColorWhite}} cœurs rouges#Retire {{ColorGold}}30{{ColorWhite}}% des PV des boss#{{Warning}} Ne peut être retirée qu'avec l'{{ColorYellow}}Allumette {{Trinket41}}",
		"{{HealingRed}} Entrer dans une salle de Boss {{BossRoom}} soigne {{ColorGold}}3{{ColorWhite}} cœurs rouges#Retire {{ColorGold}}30{{ColorWhite}}% des PV des boss#{{ColorGold}}Peut être retirée !",
	},
	-- Maggy's Faith
	[55] = {
		"{{Heart}} +1 {{ColorGold}}réceptacle de cœur{{ColorWhite}} au début de chaque étage",
		"{{Heart}} +1 {{ColorGold}}réceptacle de cœur{{ColorWhite}} au début de chaque étage",
		"{{Blank}} Au début de chaque étage :#{{Heart}} {{ColorGold}}+1 réceptacle de cœur#{{EternalHeart}} +1 cœur éternel"
	},
	-- Rainbow Worm (append): With Mom's Box, it gives 2 copies of the temp worm, and doubles 1 of those copies, for triple effect
	[64] = { "Double les augmentations de stats du ver", "Triple les augmentations de stats du ver", "Quadruple les augmentations de stats du ver"},
	-- Lice
	[70] = {"une araignée bleue", "deux {{ColorWhite}}araignées bleues", "trois {{ColorWhite}}araignées bleues"},
	--Watch Battery
	[72] = {"une barre supplémentaire", "deux {{ColorWhite}}barres supplémentaires", "trois {{ColorWhite}}barres supplémentaires"},
	-- Error (append): Same behavior as Rainbow Worm
	[75] = { "L'effet est doublé si possible", "L'effet est triplé si possible", "L'effet est quadruplé si possible"},
	-- NO!
	[78] = {"Double","Triple"},
	--Blind Rage
	[81] = {"Double","Quadruple","Sextuple"},
	--Karma
	[85] = {
		"Faire un don à une boîte à dons a 33% de chances de:#{{HealingRed}} Soigner {{ColorGold}}3{{ColorWhite}} cœurs rouges {{ColorSilver}}(40%)#Donner {{ColorGold}}2{{ColorWhite}} pièces {{ColorSilver}}(40%)#Donner {{ColorLime}}Chance +{{ColorGold}}2{{ColorWhite}} {{ColorSilver}}(15%)#Invoquer un mendiant {{ColorSilver}}(5%)",
		"Faire un don à une boîte à dons a 33% de chances de:#{{HealingRed}} Soigner {{ColorGold}}3{{ColorWhite}} cœurs rouges {{ColorSilver}}(40%)#Donner {{ColorGold}}2{{ColorWhite}} pièces {{ColorSilver}}(40%)#Donner {{ColorLime}}Chance +{{ColorGold}}2{{ColorWhite}} {{ColorSilver}}(15%)#Invoquer un mendiant {{ColorSilver}}(5%)",
		"Faire un don à une boîte à dons a 33% de chances de:#{{HealingRed}} Soigner {{ColorGold}}3{{ColorWhite}} cœurs rouges {{ColorSilver}}(40%)#Donner {{ColorGold}}3{{ColorWhite}} pièces {{ColorSilver}}(40%)#Donner {{ColorLime}}Chance +{{ColorGold}}3{{ColorWhite}} {{ColorSilver}}(15%)#Invoquer un mendiant {{ColorSilver}}(5%)"
	},
	--Lil' Larva
	[86] = {"une mouche bleue", "deux {{ColorWhite}}mouches bleues", "trois {{ColorWhite}}mouches bleues"},
	--NO!
	[88] = { "Empêche les objets de qualité {{Quality0}} d'apparaître" },
	--Mother's Kiss
	[156] = {"1 réceptacle", "2 {{ColorWhite}}réceptacles", "3 {{ColorWhite}}réceptacles"},
	-- Gilded Key (Golden version only): it doesn't give a key. bug that will get fixed (maybe it'll give a Golden Key?)
	[159] = { "Remplace tous les coffres par des coffres dorés {{GoldenChest}}#Ne peut pas remplacer les coffres Antiques {{DirtyChest}} et Géants {{MegaChest}}" },
	--Lucky Bag ??
	[160] = {"un sachet","deux {{ColorWhite}}sachets","trois {{ColorWhite}}sachets"},
	--Dingleberry
	[163] = {"une Crotte amicale", "2 {{ColorWhite}}Crottes amicales", "2 {{ColorWhite}}Crottes amicales"},
	--Ring Cap
	[164] = {"une bombe", "2 {{ColorWhite}}bombes", "3 {{ColorWhite}}bombes"},
	-- Empty Heart
	[168] = {"1 cœur", "2 {{ColorWhite}}cœurs", "3 {{ColorWhite}}cœurs"},
	-- Child's Drawing
	[169] = {"1 objet", "2 {{ColorWhite}}objets"},
	-- Lil' Clot
	[176] = {"un pâté qui imite", "deux {{ColorWhite}}pâtés qui imitent", "trois {{ColorWhite}}pâtés qui imitent"},
	-- The Twins
	[183] = {"Invoque ou copie parfois 2 familiers", "Invoque ou copie parfois 2 familiers", "Invoque ou copie parfois 3 familiers" },
	-- Apollyon's Best Friend
	[186] = {"un locuste abyssal", "2 {{ColorWhite}}locustes abyssaux", "3 {{ColorWhite}}locustes abyssaux"},
}

EID.descriptions[languageCode].goldenTrinketData = {
	[1] = {findReplace = true}, --Swallowed Penny
	[3] = {findReplace = true}, --Watch Battery
	[5] = {findReplace = true, mult = 2}, --Purple Heart
	[8] = {append = true},
	[20] = {findReplace = true},
	[29] = {findReplace = true},
	[55] = {fullReplace = true},
	[70] = {findReplace = true},
	[72] = {findReplace = true},
	[78] = {findReplace = true, mult = 1.5},
	[81] = {findReplace = true},
	[85] = {fullReplace = true},
	[86] = {findReplace = true, mult = 2},
	[156] = {findReplace = true},
	[160] = {findReplace = true},
	[163] = {findReplace = true},
	[164] = {findReplace = true},
	[168] = {findReplace = true},
	[169] = {findReplace = true, mult = 2, goldenOnly = true},
	[176] = {findReplace = true},
	[186] = {findReplace = true},
}

-- Card Buffs caused by Tarot Cloth
-- Note: "#" will be replaced with "#{{Collectible451}}" automatically, in order to add Tarot Cloth icon infront of each buff-bulletpoint

EID.descriptions[languageCode].tarotClothBuffs = {
	[2] = {"↑ Portée {{ColorLime}}+3.0#Larmes autoguidées#{{Collectible451}} {{ColorShinyPurple}}Déclenche l'effet du {{ColorYellow}}Livre de Bélial{{ColorWhite}} {{Collectible34}}#{{Timer}} L'effet dure une salle"}, -- I - The Magician
	[3] = {"{{ColorShinyPurple}}2{{ColorWhite}} pieds de {{ColorCyan}}Maman{{ColorWhite}} écrasent l'ennemi de la salle avec le plus de PV#Dans une salle vide, les pieds écrasent Isaac"}, -- II - The High Priestess
	[4] = {"+0.3", "+0.6", "+1.5", "+3"}, -- III - The Empress
	[5] = "{{ColorShinyPurple}}+1 cœur d'âme{{ColorWhite}} si le boss n'a pas encore été vaincu", -- IV - The Emperor
	[6] = {2, 3}, -- V - The Hierophant
	[7] = {2, 3}, -- VI - The Lovers
	[8] = {6, 12}, -- VII - The Chariot
	[9] = {"Fait apparaître {{ColorShinyPurple}}2{{ColorWhite}} clés, {{ColorShinyPurple}}2{{ColorWhite}} bombes, {{ColorShinyPurple}}2{{ColorWhite}} pièces et {{ColorShinyPurple}}2{{ColorWhite}} cœurs"}, -- VIII - Justice
	[10] = "Empêche Avarice d'apparaître dans la boutique et génère des objets à acheter s'il a déjà été vaincu dans la Boutique", -- IX - The Hermit
	[11] = {"une", "2"}, -- X - Wheel of Fortune
	[12] = {"+1 réceptacle", "+2 {{ColorWhite}}réceptacles", "+0.3", "+0.6", "+0.3", "+0.6", "+2.5", "+5"}, -- XI - Strength
	[14] = {40, 80}, -- XIII - Death
	[15] = {"Fait apparaître {{ColorShinyPurple}}2{{ColorWhite}} banques du sang {{BloodDonationMachine}}"}, -- XIV - Temperance
	[16] = {"+2", "+4"}, -- XV - The Devil
	[17] = {6, 12}, -- XVI - The Tower
	[18] = "Propose un {{ColorShinyPurple}}choix entre 2 objets{{ColorWhite}} si elle n'a pas encore été visitée", -- XVII - The Stars
	[20] = {100, 200}, -- XIX - The Sun
	[21] = {"un mendiant", "2 {{ColorWhite}}mendiants"}, -- XX - Judgement
	[56] = "Lâche également les 6 derniers objets ramassés", -- 0 - The Fool?
	[59] = {2, 3}, -- III - The Empress?
	[61] = {2, 3}, -- V - The Hierophant?
	[62] = "Fait apparaître {{ColorShinyPurple}}2{{ColorWhite}} objets qui proviennent de la banque d'objets de la salle#Convertit {{ColorShinyPurple}}2{{ColorWhite}} réceptacles de cœur ou {{ColorShinyPurple}}4{{ColorWhite}} cœurs d'âme en {{ColorShinyPurple}}2{{ColorWhite}} cœurs brisés", -- VI - The Lovers?
	[64] = {4, 14, 2, 4}, -- VIII - Justice?
	[65] = "Fait apparaître 1 pièce supplémentaire", -- IX - The Hermit?
	[66] = {"Déclenche {{ColorShinyPurple}}2{{ColorWhite}} effets de salle de dé au hasard"}, -- X - Wheel of Fortune?
	[67] = {30, 60}, -- XI - Strength?
	[68] = {30, 60}, -- XII - The Hanged Man?
	[70] = {5, 10}, -- XIV - Temperance?
	[72] = {7, 14}, -- XVI - The Tower?
	[73] = {"Retire les {{ColorShinyPurple}}2{{ColorWhite}} plus anciens objets passifs d'Isaac, hors objets de départ#Fait apparaître {{ColorShinyPurple}}4{{ColorWhite}} objets qui proviennent de la banque d'objets de la salle"}, -- XVII - The Stars?
	[76] = {"Fait apparaître {{ColorShinyPurple}}2{{ColorWhite}} machines de réapprovisionnement {{RestockMachine}}"}, -- XX - Judgement?
}
EID.descriptions[languageCode].goldenTrinket = "Effet doublé !"

---------- Cards ----------

local repCards={
	[2] = {"2", "I - Le Bateleur", "↑ Portée {{ColorLime}}+3.0#Larmes autoguidées#{{Timer}} L'effet dure une salle"},
	[3] = {"3", "II - La Papesse", "Un pied de {{ColorCyan}}Maman{{ColorWhite}} écrase l'ennemi de la salle avec le plus de PV#Dans une salle vide, le pied écrase Isaac"},
	[4] = {"4", "III - L'Impératrice", "↑ Dégâts {{ColorLime}}+1.5#↑ Vitesse {{ColorLime}}+0.3#{{Timer}} L'effet dure une salle"},
	[5] = {"5", "IV - L'Empereur", "Téléporte Isaac dans la salle du boss {{BossRoom}}"},
	[10] = {"10", "IX - L'Ermite", "Téléporte Isaac à la Boutique {{Shop}}"},
	[12] = {"12", "XI - La Force", "#{{Heart}} +1 réceptacle de cœur#↑ Dégâts {{ColorLime}}x1.5 +0.3#↑ Vitesse {{ColorLime}}+0.3#↑ Portée {{ColorLime}}+2.5#{{Timer}} L'effet dure une salle"}, -- XI - Strength
	[16] = {"16", "XV - Le Diable", "↑ Dégâts {{ColorLime}}+2{{ColorWhite}}#{{Timer}} L'effet dure une salle"},
	[17] = {"17", "XVI - La Maison Dieu", "Invoque 6 bombes troll"},
	[18] = {"18", "XVII - L'Étoile", "Téléporte Isaac dans la Salle du Trésor {{TreasureRoom}}"},
	[19] = {"19", "XVIII - La Lune", "Téléporte Isaac dans la Salle Secrète {{SecretRoom}}"},
	[20] = {"20", "XIX - Le Soleil", "{{HealingRed}} Soin complet#Inflige 100 dégâts à tous les ennemis de la salle#Révèle l'intégralité de l'étage sur la carte#Retire le Fléau d'Obscurité"},
	[21] = {"21", "XX - Le Jugement", "{{Beggar}} Invoque un mendiant#{{DemonBeggar}} 33% de chances d'être un mendiant démoniaque #5% de chances d'être un maître des clés, un clochard aux bombes, un clochard aux batteries ou un mendiant pourri"},
	[22] = {"22", "XXI - Le Monde", "{{Timer}} Révèle l'intégralité de l'étage sur la carte (sauf Chambre {{SuperSecretRoom}} Super / {{UltraSecretRoom}} ultra secrète)"},
	[27] = {"27", "As de Trèfle", "Transforme toutes les ressources, coffres et ennemis de la salle en bombes"},
	[28] = {"28", "As de Carreau", "Transforme toutes les ressources, coffres et ennemis de la salle en pièces"},
	[29] = {"29", "As de Pique", "Transforme toutes les ressources, coffres et ennemis de la salle en clés"},
	[30] = {"30", "As de Cœur", "Transforme toutes les ressources, coffres et ennemis de la salle en cœurs"},
	[31] = {"31", "Joker", "Téléporte Isaac dans l'Antre du Diable{{DevilRoom}} ou le Refuge des Anges{{AngelRoom}}"},
	[34] = {"34", "Ehwaz", "Ouvre une trappe vers l'étage suivant#Utiliser la rune sur un élément de décor au sol ouvre une trappe vers un Souterrain {{LadderRoom}}"},
	[35] = {"35", "Dagaz", "{{SoulHeart}} +1 cœur d'âme#Retire tous les fléaux"},
	[39] = {"39", "Algiz", "Isaac devient invulnérable pendant 20 secondes"},
	[42] = {"42", "Carte Chaos", "Utiliser cette carte la lance dans la direction où se déplace Isaac#La carte tue instantanément les ennemis ou boss avec lesquels elle rentre en contact#La carte ne peut pas tuer {{ColorCyan}}Delirium{{ColorWhite}} ou {{ColorCyan}}la Bête"}, -- Chaos Card
	[48] = {"48", "Carte ?", "Utilise l'objet activable d'Isaac sans le décharger"},
	[50] = {"50", "Appel d'Urgence", "2 mains de {{ColorCyan}}Maman{{ColorWhite}} attrapent un ennemi chacune, leur infligent 40 dégâts et les paralysent"},
	[51] = {"51", "Carte Sacrée", "Nullifie le prochain dégât subi"}, -- Holy card
	[52] = {"52", "Croissance Colossale", "↑ Dégâts {{ColorLime}}+7#↑ Portée {{ColorLime}}+3#↑ Taille augmentée#Marcher sur les obstacles les détruit#{{Timer}} L'effet dure une salle"}, -- Huge Growth
	[54] = {"54", "Marche Temporelle", "↑ Vitesse {{ColorLime}}+0.5#↓ Vitesse des tirs {{ColorError}}-1#Ralentit les ennemis#{{Timer}} L'effet dure une salle"},
	[55] = {"55", "Fragment de Rune", "Déclenche un effet de rune aléatoire#L'effet est plus faible que celui de la rune imitée"},
	[56] = {"56", "0 - Le Mat ?", "Fait tomber tous les cœurs et ressources d'Isaac au sol#Fait apparaître {{ColorYellow}}Une Petite Pièce{{ColorWhite}} {{Collectible74}} ou {{ColorYellow}}Boum !{{ColorWhite}} {{Collectible19}} si Isaac a suffisamment de ressources"},
	[57] = {"57", "I - Le Bateleur ?", "Entoure Isaac d'une aura qui dévie les projectiles ennemis#{{Timer}} L'effet dure 60 secondes"},
	[58] = {"58", "II - La Papesse ?", "Les pieds de {{ColorCyan}}Maman{{ColorWhite}} tentent d'écraser Isaac pendant 60 secondes"},
	[59] = {"59", "III - L'Impératrice ?", "↑ Débit {{ColorLime}}+1.35#↓ Vitesse {{ColorError}}-0.1#{{Heart}} +2 réceptacles de cœur#{{Timer}} L'effet dure 60 secondes"},
	[60] = {"60", "IV - L'Empereur ?", "Téléporte Isaac dans une salle de Boss {{BossRoom}} séparée du reste de l'étage#Le boss provient de deux étages plus profond#Battre le boss fait apparaître un objet"},
	[61] = {"61", "V - Le Pape ?", "Fait apparaître 2 cœurs d'os"},
	[62] = {"62", "VI - L'Amoureux ?", "Fait apparaître un objet qui provient de la banque d'objets de la salle#Convertit 1 réceptacle de cœur ou 2 cœurs d'âme en un cœur brisé"},
	[63] = {"63", "VII - Le Chariot ?", "↑ Débit fortement augmenté#Transforme Isaac en une statue invulnérable#{{Timer}} L'effet dure 10 secondes"},
	[64] = {"64", "VIII - La Justice ?", "Fait apparaître 2 à 4 coffres dorés {{GoldenChest}}"},
	[65] = {"65", "IX - L'Ermite ?", "Convertit les ressources et objets de la salle en pièces#Le nombre de pièces est égal à la valeur des objets dans la boutique"},
	[66] = {"66", "X - La Roue de Fortune ?", "Déclenche l'effet d'une salle de dé au hasard"},
	[67] = {"67", "XI - La Force ?", "Les ennemis sont ralentis et subissent deux fois plus de dégâts#{{TimerSmall}} L'effet dure 30 secondes ou jusqu'à ce qu'Isaac quitte la salle"},
	[68] = {"68", "XII - Le Pendu ?", "↓ Vitesse {{ColorError}}-0.1#Triple tir#Tuer un ennemi fait apparaître une pièce#{{Timer}} L'effet dure 60 secondes"},
	[69] = {"69", "XIII - La Mort ?", "Invoque une entité squelette pour chaque ennemi tué dans la salle"},
	[70] = {"70", "XIV - Tempérance ?", "Déclenche l'effet de 5 pilules"},
	[71] = {"71", "XV - Le Diable ?", "Déclenche l'effet de la {{ColorYellow}}Bible{{ColorWhite}} {{Collectible33}}#Donne {{ColorYellow}}Séraphin{{ColorWhite}} {{Collectible390}}#{{Timer}} L'effet dure 30 secondes"},
	[72] = {"72", "XVI - La Maison Dieu ?", "Fait apparaître 7 groupes de rochers ou obstacles"},
	[73] = {"73", "XVII - L'Étoile ?", "Retire l'objet passif d'Isaac le plus ancien, hors objets de départ#Fait apparaître 2 objets qui proviennent de la banque d'objets de la salle"},
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

-- There's some odd behavior with Blank Card + Tarot Cloth not doubling some cards
-- These will be appended after Blank Card recharge time and "Blank Card effect:"
EID.descriptions[languageCode].tarotClothBlankCardBuffs = {
	[11] = "Fait apparaître 1 machine", -- X - Wheel of Fortune
	[12] = "Les bonus ne sont pas doublés", -- XI - Strength
	[14] = "Inflige 40 dégâts", -- XIII - Death
	[15] = "Fait apparaître 1 machine", -- XIV - Temperance
	[16] = "Dégâts {{ColorLime}}+2", -- XV - The Devil
	[20] = "Inflige 200 dégâts", -- XIX - The Sun
	[21] = "Invoque 1 mendiant", -- XX - Judgement
	[56] = "Fait apparaître 3 objets", -- 0 - The Fool?
	[64] = "Fait apparaître 2 à 7 coffres", -- VIII - Justice?
	[65] = "Ne fait pas apparaître de pièce supplémentaire", -- IX - The Hermit?
	[66] = "Déclenche 1 effet", -- X - Wheel of Fortune?
	[68] = "L'effet dure 30 secondes", -- XII - The Hanged Man?
	[72] = "Crée 7 groupes de rochers", -- XVI - The Tower?
	[73] = "Retire 1 objet et en fait apparaître 2", -- XVII - The Stars?
	[76] = "Fait apparaître 1 machine", -- XX - Judgement?
}

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
	[50] = {"49", "Pilule expérimentale", "↑ Augmente une stat aléatoire#↓ Diminue une stat aléatoire"},
	[9999] = {"", "Pilule dorée", "Effet de pilule aléatoire#A une chance de disparaître après chaque utilisation"}, -- golden Pill
}
EID:updateDescriptionsViaTable(repPills, EID.descriptions[languageCode].pills)

EID.descriptions[languageCode].horsepills={
	{"0", "", "Empoisonne tous les ennemis de la salle"},
	{"1", "", "Inflige 2 cœurs de dégâts à Isaac"},
	{"2", "", "{{SoulHeart}} +4 cœurs d'âme"},
	{"3", "", "Inverse les compteurs de bombes et de clés#Augmente le nombre de clés et de bombes de 50%#Inverse également les bombes et clés dorées"},
	{"4", "", "Fait apparaître des maxi troll bombes à la position du joueur"},
	{"5", "", "{{SoulHeart}} +3 cœurs d'âme#{{HealingRed}} Soin complet"},
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
	{"45", "", "Rend Isaac invulnérable#Terrifie tous les ennemis de la salle#{{HealingRed}} Tuer 2 ennemis soigne un demi-cœur rouge"},
	{"46", "", "Fait apparaître la dernière pilule utilisée en double-dose"},
	{"47", "", "↑ Vitesse des tirs {{ColorError}}-0.3"},
	{"48", "", "↑ Vitesse des tirs {{ColorLime}}+0.3"},
	{"49", "", "↑ Augmente une stat aléatoire deux fois#↓ Diminue une stat aléatoire deux fois#Aucune stat n'est baissée si Isaac possède {{ColorYellow}}Doctorat{{Collectible75}}{{ColorWhite}}, {{ColorYellow}}Pied Chanceux{{Collectible46}}{{ColorWhite}} ou {{ColorYellow}}Vierge{{Collectible303}}{{ColorWhite}}#Aucune stat n'est augmentée si Isaac possède {{ColorYellow}}Doctorat Falsifié{{Collectible654}}"},
	[9999] = {"", "", "Effet de double-dose aléatoire#A une chance de disparaître après chaque utilisation"}, -- golden Pill
}
---------- Glitched Item Descriptions ----------

EID.descriptions[languageCode].GlitchedItemText = {
	-- Item Config info
	-- These texts are affected by the PluralizeFunction (ab+ file)
	AddBlackHearts = "{{BlackHeart}} {1} cœur{pluralize} noir{pluralize}",
	AddBombs = "{{Bomb}} {1} bombe{pluralize}",
	AddCoins = "{{Coin}} {1} pièce{pluralize}",
	AddHearts = "Heals {{Heart}} {1} cœur{pluralize} rouge{pluralize}",
	AddKeys = "{{Key}} {1} clé{pluralize}",
	AddMaxHearts = "{{EmptyHeart}} {1} réceptacle{pluralize} de cœur",
	AddSoulHearts = "{{SoulHeart}} {1} cœur{pluralize} d'âme",

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
	["5.301"] = "runes", -- not a real ID
	["9.-1"] = "projectile ennemis",
	["999.-1"] = "obstacles",
	["1000.0"] = "effets",

	grants = "Donne ",
}

---------- Misc. Text ----------

EID.descriptions[languageCode].poopSpells = {
	{"Caca", "Caca normal qui peut contenir des ressources"},
	{"Caca avec pépites", "Invoque des mouches bleues tant qu'il est intact"},
	{"Caca brûlant", "Inflige des dégâts de contact et allume une flamme une fois détruit"},
	{"Caca de pierre", "Inflige de gros dégâts quand il est jeté#Plus difficile à détruire"},
	{"Caca puant", "Crée un nuage de poison#{{Warning}} Explose au contact du feu"},
	{"Caca noir", "Répand une flaque ralentissante#Inflige 10 dégâts et étourdit tous les ennemis de la salle une fois détruit"},
	{"Caca sacré", "Être dans son aura donne :#↑ Dégâts {{ColorLime}}+20%{{ColorWhite}}, Débit {{ColorLime}}+150%#Larmes autoguidées#Chance de nullifier un dégât subi"},
	{"Flaque brune", "Répand une flaque sous Isaac qui inflige des dégâts de contact aux ennemis et prend les propriétés des cacas qu'elle touche#Marcher sur la flaque donne {{ColorLime}}dégâts +1{{ColorWhite}} et {{ColorLime}}débit 1.5"},
	{"Pet", "Repousse les ennemis et projectiles et crée un nuage de poison#{{Warning}} Explose au contact du feu"},
	{"Bombe", "Bombe jetable"},
	{"Diarrhée explosive", "Fait apparaître 5 bombes aux pieds d'Isaac"},

	["Unknown"] = {"{{PoopSpell1}}", "Caca inconnu", "Effets inconnus"}
}

---------- Misc. Text ----------

EID.descriptions[languageCode].itemPoolFor = "Banque d'objet : "
EID.descriptions[languageCode].itemPoolNames = {
	[0] = "Salle du Trésor", "Boutique", "Boss", "Diable", "Ange", "Salle Secrète", "Bibliothèque", "Bonneteau", "Coffre Doré", "Coffre Rouge", "Mendiant", "Mendiant Démoniaque", "Salle Maudite", "Mendiant Serrurier", "Mendiant Électrique", "Coffre de Maman", "Salle du Trésor {{ColorSilver}}(mode Avarice)", "Boss {{ColorSilver}}(mode Avarice)", "Boutique {{ColorSilver}}(mode Avarice)", "Diable {{ColorSilver}}(mode Avarice)", "Ange {{ColorSilver}}(mode Avarice)", "Salle Maudite {{ColorSilver}}(mode Avarice)", "Salle Secrète {{ColorSilver}}(mode Avarice)", "Machine à Pince", "Salle Ultra Secrète", "Mendiant Explosif", "Planétarium", "Coffre Antique", "Orphelinat", "Coffre en Bois", "Mendiant Moisi",
}

EID.descriptions[languageCode].VoidShopText = "Si absorbé directement :"
EID.descriptions[languageCode].VoidOptionText = " sera absorbé à la place"
EID.descriptions[languageCode].VoidNames[2] = "Débit {{ColorLime}}{1}"

EID.descriptions[languageCode].PurityBoosts = {[0] = "↑ Dégâts {{ColorLime}}+4", "↑ Débit {{ColorLime}}+2", "↑ Vitesse {{ColorLime}}+0.5", "↑ Portée {{ColorLime}}+3"}

EID.descriptions[languageCode].spindownError = "L'objet disparaît"

EID.descriptions[languageCode].CraftingBagContent = "Sac : "
EID.descriptions[languageCode].CraftingRoomContent = "Salle : "
EID.descriptions[languageCode].CraftingFloorContent = "Étage : "
EID.descriptions[languageCode].CraftingSearch = "Chercher : "

EID.descriptions[languageCode].CraftingBagQuality = "Qualité du sac : "
EID.descriptions[languageCode].CraftingBestQuality = "Plus haute qualité : "

EID.descriptions[languageCode].CraftingHideKey = "Masquer : "
EID.descriptions[languageCode].CraftingPreviewKey = "Prévisualiser : "
EID.descriptions[languageCode].CraftingPreviewBackup = "{{Warning}} Si cet objet n'a pas été débloqué, il sera remplacé par "
-- {1} will be converted into the number of available items
EID.descriptions[languageCode].CraftingNumAvailableItems = "{1} ressources dans l'étage"
EID.descriptions[languageCode].CraftingWarningAvailableItems = "Il faut 8 ressources pour afficher les recettes"
-- {1} will be converted into the name of the key that toggles the BoC visibility
EID.descriptions[languageCode].CraftingIsHidden = "Recettes cachées (Afficher : {1})"
EID.descriptions[languageCode].CraftingMore = "...et {1} autres"

EID.descriptions[languageCode].CraftingResults = "Défiler : {{CONFIG_BoC_Toggle}} + {{ButtonY}}{{ButtonA}}#Verrouiller : {{CONFIG_BoC_Toggle}} + {{ButtonX}}#Rafraîchir : {{CONFIG_BoC_Toggle}} + {{ButtonB}}#Réinitialiser : Maintenir {{ButtonRB}}#Rechercher : {{ButtonEnter}}"

-- Strings for Tainted Cain's pedestal salvaging; the non-base lines will have the corresponding icon automatically
EID.descriptions[languageCode].TaintedCainPedestalBase = "Éclate en 3 à 8 ressources"
EID.descriptions[languageCode].TaintedCainPedestalBaseBirthright = "Éclate en {{BlinkBirthright}}6 à 16{{CR}} ressources"
EID.descriptions[languageCode].TaintedCainPedestalGuaranteed = "Un {1} garanti" -- Room type spawns
EID.descriptions[languageCode].TaintedCainPedestalBonus = "+1 {1} {{ColorSilver}}(33%)" -- "Safety Cap" type spawns
EID.descriptions[languageCode].TaintedCainPedestalLuckyToe = "+1 ressource {{ColorSilver}}(66%)"
EID.descriptions[languageCode].TaintedCainPedestalLuckyToeBirthright = "+{{BlinkBirthright}}2{{CR}} ressources {{ColorSilver}}(66%)"
EID.descriptions[languageCode].TaintedCainPedestalDaemonsTail = "Chances de cœurs {{ColorError}}-88%"

EID.descriptions[languageCode].BlankCardCharge = "Temps de charge avec {{ColorYellow}}Carte Blanche{{ColorWhite}} :"
EID.descriptions[languageCode].BlankCardEffect = "Effet avec {{ColorYellow}}Carte Blanche{{ColorWhite}} :"
EID.descriptions[languageCode].ClearRuneCharge = "Temps de charge avec {{ColorYellow}}Rune de Cristal{{ColorWhite}} :"
EID.descriptions[languageCode].PlaceboCharge = "Temps de charge avec {{ColorYellow}}Placebo{{ColorWhite}} :"
EID.descriptions[languageCode].VariableCharge = "Temps de charge avec {{ColorYellow}}{1}{{ColorWhite}} :"

EID.descriptions[languageCode].FlipItemToggleInfo = "( {{ButtonSelect}} : description)"
EID.descriptions[languageCode].GlitchedCrownToggleInfo = "({{CONFIG_BoC_Toggle}} description suivante ({1}))"

EID.descriptions[languageCode].GlowingHourglassTransformed = "Redeviendra le Sablier Luisant au prochain étage"

EID.descriptions[languageCode].FalsePHDHeart = "Fait apparaître un cœur noir {{BlackHeart}}"
EID.descriptions[languageCode].FalsePHDDamage = "Dégâts {{ColorLime}}+0.6"
EID.descriptions[languageCode].FalsePHDHorseDamage = "Dégâts {{ColorLime}}+1.2"

EID.descriptions[languageCode].ExperimentalPillPHD = "Ne diminue aucune stat"
EID.descriptions[languageCode].ExperimentalPillFalsePHD = "N'augmente aucune stat"

EID.descriptions[languageCode].PandorasBoxStrangeKeyEffect = "Détruit l'{{ColorYellow}}Étrange Clé{{ColorWhite}} et fait apparaître 6 objets provenant de banques d'objets aléatoires#Ne déclenche pas l'effet normal de l'objet"

EID.descriptions[languageCode].AchievementWarningTitle = "{{ColorYellow}}{{Warning}} ATTENTION !"
EID.descriptions[languageCode].AchievementWarningText = "Les succès sont désactivés !#Pour pouvoir débloquer des succès, tu dois d'abord tuer {{ColorCyan}}Maman{{ColorSilver}} (Profondeurs II){{ColorWhite}}.#{{Blank}}#{{Blank}} Si tu as déjà battu {{ColorCyan}}Maman{{ColorWhite}}, ce message est un bug et peut être ignoré#{{Blank}} {{ColorSilver}}(Cette alerte peut être désactivée dans la config)"

EID.descriptions[languageCode].OldGameVersionWarningText = "Ta version de Repentance n'est pas à jour !#Seule la dernière version du jeu (1.7.9c) est officiellement supportée.#{{Blank}} {{ColorSilver}}(Cette alerte peut être désactivée dans la config)"

EID.descriptions[languageCode].ModdedRecipesWarningText = "Les objets de mod peuvent dérégler les recettes de fabrication !#Utilise l'option Item Probability ou désactive l'affichage du Sac de Fabrication dans la config du mod si tes recettes sont incorrectes#{{Blank}} {{ColorSilver}}(Cette alerte peut être désactivée dans la config)"

EID.descriptions[languageCode].ResultsWithX = "(Avec {1})"

local repConditions = {
	------ GENERAL STRINGS ------
	["Tainted Revive"] = "Ressuscite {1} à sa mort",
	["Ice Tears"] = "Les ennemis gelés ne comptent pas comme tués", -- Uranus Anti-Synergy

	------ GREED MODE ------
	["5.100.344"] = {"{{BlackHeart}} +1 cœur noir#Fait apparaître 3 bombes"}, -- Match Book (Greed)
	["5.300.74"] = {"Téléporte Isaac dans la première salle de l'étage"}, -- The Moon? (Greed)
	["5.100.416"] = {"Augmente la capacité maximale du compteur de pièces à 999"}, -- Deep Pockets (Greed)
	["5.100.566"] = {"{{HalfSoulHeart}} +1 demi-cœur d'âme à chaque nouvel étage#{{Warning}} Devrait révéler le contenu de la Salle du Trésor durant le cauchemar entre les étages, mais les mauvais objets sont affichés en mode Avarice"}, -- Dream Catcher (Greed)
	["5.100.580"] = {"spéciales","spéciales {{ColorSilver}}(plus rares en mode Avarice)"}, -- Red Key (Greed)
-- 	["5.300.83"] = {"spéciales","spéciales#{{GreedMode}} Les salles spéciales sont plus rares en mode Avarice"}, -- Soul of Cain (Greed)
	["5.100.514"] = {"Paralyse parfois les ennemis et projectiles#Les projectiles paralysés disparaissent"}, -- Broken Modem (Greed)
	["5.350.162"] = {"Terminer une vague a 50% de chances de transformer Isaac en {{ColorLightOrange}}Azazel{{ColorWhite}} pour la durée de la vague suivante"}, -- Azazel's Stump (Greed)


	------ ACHIEVEMENT CHECKS ------
	-- todo...


	------ SPECIFIC CHARACTER SYNERGIES/CHANGES ------
	["5.100.642"] = {"Fait apparaître un objet qui provient de la banque d'objets de la salle#{{ColorSilver}}Effet propre à {1}"}, -- Magic Skin + Lost
	["5.100.240"] = "Les changements de stats persistent même si {1} repose l'objet", -- Experimental Treatment + Tainted Isaac
	["5.100.644"] = "L'augmentation de stats persiste même si {1} repose l'objet", -- Consolation Prize + Tainted Isaac
	["5.100.549"] = {"↑ Débit {{ColorLime}}+0.4#{{ColorSilver}}Effet propre à {1}"}, -- Brittle Bones (Keeper+Lost)
	["5.100.694"] = {"Permet à {1} de subir jusqu'à 4 dégâts sans mourir#↑ {{ColorLime}}Dégâts +1{{CR}} par dégât subi"}, -- Heartbreak + Losts
	["5.100.694 (Keeper)"] = {"Brise un des réceptacles de pièce du Gardien#Chaque coup fatal laisse le Gardien en vie mais brise un cœur supplémentaire#↑ Dégâts {{ColorLime}}+0.25{{ColorWhite}} pour chaque réceptacle brisé#Le Gardien meurt s'il a 3 réceptacles brisés"}, -- Heartbreak + Normal Keeper
	["5.100.501"] = {"{{CoinHeart}} +1 réceptacle de pièce toutes les 25 pièces au compteur#Permet au Gardien de dépasser la limite de réceptacles de pièce"}, -- Greed's Gullet + Keeper
	["5.100.694 (Tainted Keeper)"] = {"Brise un des réceptacles de pièce du Gardien Impur#↑ Dégâts {{ColorLime}}+0.25{{ColorWhite}} pour chaque réceptacle brisé#Le Gardien Impur meurt si tous ses réceptacles sont brisés"}, -- Heartbreak + Tainted Keeper
	["5.100.188"] = {"3.5 dégâts par larme","7.5 dégâts par larme"}, -- Cain + Abel
	["5.100.360"] = {"Imite les stats et les effets des larmes de Lilith"}, -- Lilith + Incubus
	["5.350.156"] = {"{{CoinHeart}} +1 réceptacle de pièce"}, -- Mother's Kiss
	["5.100.728"] = {"Invoque un familier qui copie les stats et les effets des larmes de Lilith#{{Timer}} L'effet dure une salle"}, -- Lilith + Gello
	["5.100.230 (Keeper)"] = {"↑ Dégâts {{ColorLime}}+1.5#↑ Vitesse {{ColorLime}}+0.2#Retire tous les réceptacles de pièce du Gardien sauf un#Le Gardien tire parfois une larme terrifiante#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 85 Chance)"}, -- Abaddon
	["5.100.230 (Bethany)"] = {"↑ Dégâts {{ColorLime}}+1.5#↑ Vitesse {{ColorLime}}+0.2#{{BlackHeart}} +2 cœurs noirs#Retire tous les réceptacles de cœur de Béthanie sauf un#Béthanie tire parfois une larme terrifiante#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 85 Chance)"}, -- Abaddon
	["5.100.230 (Tainted Bethany)"] = {"↑ Dégâts {{ColorLime}}+1.5#↑ Vitesse {{ColorLime}}+0.2#{{BlackHeart}} +2 cœurs noirs#Béthanie tire parfois une larme terrifiante#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 85 Chance)"}, -- Abaddon
	["5.100.245 (Keeper)"] = {"↓ Dégâts {{ColorError}}-20%#Réduit l'écart entre les larmes du {{ColorOrange}}Gardien"}, -- 20/20 + Keeper
	["5.100.705"] = "Dégâts temporaires {{ColorLime}}+1{{CR}} pour chaque ennemi traversé", -- Dark Arts + Dark/Tainted Judas
	["5.100.205 (Tainted Magdalene)"] = "Permet à {{ColorOrange}}Marie Impure{{CR}} d'utiliser son {{ColorYellow}}Joli Cœur{{CR}} à volonté", -- Sharp Plug + Tainted Magdalene
	
	["Mother's Kiss Soul"] = {"{{SoulHeart}} +1 cœur d'âme"},
	["Mother's Kiss Bone"] = {"{{BoneHeart}} +1 cœur d'os"},
	["Mother's Kiss Coin"] = {"{{CoinHeart}} +1 réceptacle de pièce held#Dépasse la limite de réceptacles"},

	-- Vibrant/Dim Bulb
	["5.350.100 (Bethany)"] = "Les charges d'âme comptent",
	["5.350.100 (Tainted Bethany)"] = "Les charges de sang comptent",
	["5.350.101 (Bethany)"] = "Les charges d'âme ne comptent pas",
	["5.350.101 (Tainted Bethany)"] = "Les charges de sang ne comptent pas",
	["Health Up Soul Charges"] = "+{1} charges d'âme",
	["Health Up Blood Charges"] = "+{1} charges de sang",
	
	-- Tainted Bethany stuff
	["2 of Hearts Blood Charges"] = {"Multiplie le nombre de charges de sang par 2"},
	["Vampire Blood Charges"] = {"↑ Dégâts {{ColorLime}}+0.3#Tuer 13 ennemis donne une charge de sang"},
	["Fork Blood Charges"] = {"Terminer une salle ajoute parfois une charge de sang#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 18 Chance)"},
	["Stem Cell Blood Charges"] = {"Entrer dans un nouvel étage donne une charge de sang"},

	["Salvaging Bonus"] = {" ou ouvrir un coffre", ", toucher un objet ou ouvrir un coffre"},
	["Salvaging Lucky Toe"] = "Toucher un objet a 66% de chances de faire apparaître une ressource supplémentaire",

	["5.100.722"] = {"Immobilise Ésaü Impur#Réutiliser l'objet ou attendre 5 secondes libère Ésaü, qui fonce vers Jacob"}, -- TJacob + Anima Sola
	["5.100.713"] = {"Reconvertit les pâtés en PV#Téléporte le surplus de pâtés à Ève#{{Timer}} 1 seconde de recharge"}, --Teve + Sumptorium
	["5.100.711"] = {"Affiche", "{{Player38}} Passe à l'autre Lazare#Affiche"}, -- Tlaz + Flip
	["5.100.710"] = {"Utiliser l'objet puis tirer balaye le sac#Toucher une ressource avec le sac la place dedans#Maintenir [Utiliser] une fois le sac plein fabrique l'objet affiché#La ressource à remplacer quand le sac est plein peut être choisie avec [Lâcher]"}, -- Tcain Bag of Crafting

	------ DUPLICATE COPIES OF ITEMS ------
	["5.100.2 (Copies)"] = {"{{Blank}} {{ColorSilver}}Multiples exemplaires :#Isaac tire une larme supplémentaire"}, -- The Inner Eye
	["5.100.153 (Copies)"] = {"{{Blank}} {{ColorSilver}}Multiples exemplaires :#Isaac tire 2 larmes supplémentaires"}, -- Mutant Spider
	["5.100.245 (Copies)"] = {"{{Blank}} {{ColorSilver}}Multiples exemplaires :#Isaac tire une larme supplémentaire"}, -- 20/20
	["5.100.358 (Copies)"] = {"{{Blank}} {{ColorSilver}}Multiples exemplaires :#Isaac tire une larme supplémentaire entre les autres"}, -- The Wiz
	["5.100.64 (Copies)"] = {"{{Blank}} {{ColorSilver}}Multiples exemplaires :#Réduit davantage les prix"}, -- Steam Sale
	["5.100.118 (Copies)"] = {"{{Blank}} {{ColorSilver}}Multiples exemplaires :#Augmente la taille et les dégâts du laser"}, -- Brimstone
	["5.100.531 (Copies)"] = {"{{Blank}} {{ColorSilver}}Multiples exemplaires :#↑ Dégâts {{ColorLime}}+1"}, -- Haemolacria
	["5.100.224 (Copies)"] = {"{{Blank}} {{ColorSilver}}Multiples exemplaires :#↑ Débit {{ColorLime}}+0.5"}, -- Cricket's Body


	----- MISC. ITEM CONDITIONS ------
	["Sacrificial Nugget"] = "Transforme les mouches du {{ColorYellow}}Bout de Crotte{{CR}} en pièces",
	["Sacrificial Item Wisps"] = "Les familiers créés par {{ColorYellow}}Lemegeton{{CR}} peuvent être sacrifiés#Transforme les feux follets de {{ColorYellow}}Lemegeton{{CR}} en demi-cœurs bleus",
	["Sacrificial Plum"] = "Invoquer Prunelle permet de la sacrifier et ne fait pas disparaitre la Flute",
	["Sacrificial Quints"] = "Sacrifier un Quintuplé retire l'objet de l'inventaire d'Isaac",
	["Sacrificial Abyss"] = "Les Locustes Abyssaux peuvent être sacrifiés",
	["Sacrificial Star"] = "L'{{ColorYellow}}Étoile de Bethléem{{CR}} peut être sacrifiée",
	["Sacrificial Clots"] = "Transforme les pâtés en pièces",

	["1000.76.1"] = "{{Warning}} Ne rejoue que le personnage qui marche sur le dé", -- Dice Room 1 (Co-op)
	["1000.76.6"] = "{{Warning}} Rejoue les objets de tous les personnages", -- Dice Room 6 (Co-op)
	["5.100.45"] = "Soigne les autres joueurs d'un demi-cœur rouge", -- Yum Heart (Co-Op)
	["5.350.125"] = {"Relie les joueurs et les familiers par des arcs électriques"}, -- Extension Cord (Co-Op)

	["5.100.245"] = "Retire le malus de débit de {1}", -- 20/20 + Mutant Spider, The Inner Eye, Polyphemus
	["20/20"] = "{1} retire le malus de débit", -- 20/20 + Mutant Spider, The Inner Eye, Polyphemus

	["5.100.135 (Hard Mode)"] = {"1 ou 2 pièces", "1 pièce", "2 ou 3", "2"}, -- IV Bag Hard Mode (modify the PHD text too)
	["5.100.201"] = "Recharge la {1}", -- Iron Bar + Notched Axe
	["5.350.172"] = "La {1} annule l'effet de téléportation", -- Cursed Penny + Black Candle
	["5.100.501 (Deep Pockets)"] = "{{Heart}} +1 réceptacle de cœur toutes les 100 pièces au-delà de 99", -- Greed's Gullet + Deep Pockets
	["? Card Single Use"] = "Déclenche l'effet des objets activables à usage unique sans les faire disparaître", -- Single Use Actives + ? Card
	["Both Peppers"] = {50,100,10,7}, -- Ghost Pepper + Bird's Eye
	["Black Feather"] = "Dégâts {{ColorLime}}+0.5", -- Black Feather items
	["Hemoptysis"] = "Synergise avec {1}", -- Hemoptysis + Brimstone items
	["5.100.600"] = {"↑ Débit {{ColorLime}}x1.2"}, -- Eye Drops (items and some players)
	["5.100.482"] = {"personnage au","personnage impur au"}, -- Clicker

	["4.5 Volt Timed"] = "Aucun effet sur les objets à recharge automatique", -- 4.5 Volt + Timed Recharges
	["4.5 Volt Multiple"] = "L'objet activable secondaire ne charge que si le premier est complètement chargé", -- 4.5 Volt + Schoolbag/Pocket Actives
	["Bulb Zero"] = "Les objets sans barre de charge ne comptent pas", -- Vibrant/Dim Bulb + zero charge actives

	["Brimstone Proptosis"] = "La taille et les dégâts des lasers diminuent selon la distance",
	["Brimstone Ipecac"] = "Le laser explose au contact des obstacles et des ennemis",
	["Brimstone Pop!"] = "Le laser est plus court et crée des larmes {1} ",
	["Eye of Belial Dr. Fetus"] = "Les bombes sont transperçantes mais pas autoguidées",
	["Spirit Sword C Section"] = "L'effet de {1} est prioritaire",
	["Spirit Sword Mom's Knife"] = "L'effet de {1} est prioritaire#L'attaque tournante lance le couteau",
	["Spirit Sword Technology"] = "L'épée peut renvoyer les projectiles ennemis",
	["Spirit Sword Ipecac"] = "Les projectiles de l'épée explosent mais pas ses coups",
	["Ludovico Ipecac"] = "La larme n'explose pas et n'inflige pas de poison",
	["Technology Ipecac"] = "Le laser explose au contact d'un ennemi ou d'un obstacle",
	["Eye of the Occult Beam"] = "Le laser est automatiquent tiré vers un curseur déplaçable",

	["Lullaby Clots"] = "{{ColorSilver}}(dont celui des pâtés)",
	["Lullaby Incubus"] = "{{ColorSilver}}(dont celui de l'{{ColorYellow}}Incube{{ColorSilver}})",

	-- Jacob's Ladder / 120 Volt battery synergies
	["Sparks Damage"] = "Les arcs électriques infligent +50% de dégâts",
	["Sparks Arc Length"] = "Les arcs électriques couvrent une plus grande distance",
	["Sparks Arc Count"] = "Les arcs électriques touchent plus d'ennemis",
	["Sparks Arc Back"] = "Les arcs électriques peuvent toucher plusieurs fois le même ennemi",

	["White Poop Jar"] = {"{{Poop}}","{{HolyPoop}}"},
	["Golden Poop Jar"] = {"{{Poop}}", "{{Poop}}/{{GoldenPoop}}", "{{HolyPoop}}", "{{HolyPoop}}/{{GoldenPoop}}"},

	["Binge Eater Healing"] = {"Soigne 1 cœur rouge", "Soigne {{BlinkGreen}}2{{CR}} cœurs rouges", "+4 charges de sang", "+{{BlinkGreen}}6{{CR}} charges de sang"},
}
EID:updateDescriptionsViaTable(repConditions, EID.descriptions[languageCode].ConditionalDescs)

local repBFFSSynergies = {
	["5.100.67"] = {6, 12}, -- Sister Maggy
	["5.100.98"] = {"7 ou 8", "6"}, -- The Relic
	["5.100.107"] = {23.5, 47}, -- The Pinking Shears
	["5.100.172"] = {112.5, 225}, -- Sacrificial Dagger
	["5.100.174"] = {"3 à 6", "6 à 12"}, -- Rainbow Baby
	["5.100.178"] = {7, 14, "Allume une flamme au centre de la flaque"}, -- Holy Water
	["5.100.206"] = {56, 112}, -- Guillotine
	["5.100.264"] = {6.5, 13}, -- Smart Fly
	["5.100.272"] = {100, 125}, -- BBF
	["5.100.273"] = {100, 125}, -- Bob's Brain
	["5.100.274"] = {150, 300}, -- Best Bud
	["5.100.275"] = {24, 48}, -- Lil Brimstone
	["5.100.276"] = "Tire davantage de larmes et répand une flaque plus grande", -- Isaac's Heart
	["5.100.319"] = {75, 150}, -- Cain's Other Eye
	["5.100.320"] = {15, 30}, -- ???'s Only Friend
	["5.100.360"] = {75, 150, "Lilith", "Lilith#{{Collectible247}} Double les dégâts infligés"}, -- Incubus (+ Lilith exception)
	["5.100.365"] = {30, 60}, -- Lost Fly
	["5.100.384"] = "Double les dégâts infligés", -- Lil Gurdy
	["5.100.389"] = {"7 ou 8", "6"}, -- Rune Bag
	["5.100.468"] = {75, 150}, -- Shade
	["5.100.491"] = {"7", "6"}, -- Acid Baby
	["5.100.500"] = {"7 ou 8", "6"}, -- Sack of Sacks
	["5.100.504"] = {3.5, 7}, -- Brown Nugget
	["5.100.508"] = {1.5, 3}, -- Mom's Razor
	["5.100.509"] = {3.5, 7, 20, 40}, -- Bloodshot Eye

	["5.100.565"] = "Infligue le double de dégâts lorsqu'il est calme", -- Blood Puppy
	["5.100.569"] = "Augmente le bonus de dégâts et de vitesse", -- Blood Oath
	["5.100.575"] = {1.5, 3}, -- The Intruder
	["5.100.581"] = {15, 30}, -- Psy Fly
	["5.100.584"] = "Double les dégâts des feux follets", -- Book of Virtues
	["5.100.605"] = {36, 72}, -- The Scooper
	["5.100.607"] = {3.5, 7, 5.25, 10.5}, -- Boiled Baby
	["5.100.608"] = {3.5, 7}, -- Freezer Baby
	["5.100.610"] = {45, 90, "une vague de rochers", "4 {{CR}}vagues de rochers", 6.5, 13}, -- Bird Cage
	["5.100.612"] = "Nullifie un dégât infligé à l'Âme Égarée par étage", -- Lost Soul
	["5.100.626"] = {25, 50}, -- Knife Piece 1
	["5.100.627"] = {25, 50}, -- Knife Piece 2
	["5.100.629"] = {3, 6}, -- Bot Fly
	["5.100.635"] = "Utiliser l'objet projette 8 larmes autour d'Isaac", -- Stitches
	["5.100.645"] = {3.5, 7}, -- Tinytoma
	["5.100.649"] = {6, 12, 3, 6}, -- Fruity Plum
	["5.100.650"] = "Double ses dégâts de contact", -- Plum Flute
	["5.100.652"] = {17.5, 35}, -- Cube Baby
	["5.100.655"] = {10.5, 21}, -- Spin to Win
	["5.100.679"] = {52.5, 105}, -- Lil Abaddon
	["5.100.681"] = "Double les dégâts infligés", -- Lil Portal
	["5.100.682"] = {8, 16}, -- Worm Friend
	["5.100.685"] = "Double les dégâts des feux follets", -- Jar of Wisps
	["5.100.698"] = {37.5, 75}, -- Twisted Pair
	["5.100.702"] = "Double les dégâts infligés", -- Vengeful Spirit
	["5.100.706"] = "Dégâts des locustes {{ColorLime}}+25%", -- Abyss
	["5.100.712"] = "Double les dégâts des feux follets", -- Lemegeton
	["5.100.713"] = "Double les dégâts des pâtés", -- Sumptorium
	["5.100.728"] = {75, 150, 100, 200}, -- Gello (+ Lilith exception)

	["5.300.96"] = "Double les dégâts des feux follets", -- Soul of Bethany
	["5.350.142"] = "Double les dégâts des feux follets", -- Beth's Faith
	["5.350.182"] = "Double les dégâts des feux follets", -- Beth's Essence
	["5.350.176"] = "Double les dégâts des pâtés", -- Lil Clot
	["5.350.186"] = "Dégâts des locustes {{ColorLime}}+25%", -- Apollyon's Best Friend
	["Tainted Lilith"] = "Double les dégâts des larmes de Gello", -- Gello (for BFFS pedestal)
}
EID:updateDescriptionsViaTable(repBFFSSynergies, EID.descriptions[languageCode].BFFSSynergies)

---------- Character Info ----------
-- TODO: make these more consistent with other descs, add icons, and is there any traits of the characters missing?
local repCharacterInfo = {
	[4] = {"???", "Ne peut pas avoir de cœurs rouges#Le prix des Pactes avec le Diable est réduit#Détruire un caca invoque une mouche bleue"},
	[8] = {"Lazare", "Une fois par étage, mourir ressuscite Lazare et donne :#↑ Dégâts {{ColorLime}}+0.5#↓ {{ColorError}}-1{{CR}} réceptacle de cœur"},
	[11] = {"Lazare Ressuscité", "↑ Dégâts {{ColorLime}}x1.4#Stats augmentées#Redevient Lazare au prochain étage"},
	[12] = {"Judas des Ombres", "↑ Dégâts {{ColorLime}}x2#Ne peut pas avoir de cœurs rouges"},
	[14] = {"Le Gardien", "Ne peut se soigner qu'avec des pièces#Les cœurs ramassables sont remplacés par des mouches bleues#Les Pactes avec le Diable coûtent 15 ou 30 pièces"},
	[18] = {"Béthanie", "Ramasser un cœur d'âme ne l'ajoute pas à la barre de PV mais à un compteur#Les cœurs au compteur peuvent être utilisés pour charger les objets activables"},
	[19] = {"Jacob", "Jacob et Ésaü sont contrôlés en même temps#Utiliser une bombe en pose une sous chaque personnage#Maintenir {{ButtonRT}} immobilise Ésaü et permet d'utiliser sa carte ou pilule#Face à un choix d'objets, chaque personnage peut en prendre un s'ils les touchent en même temps"},
	[20] = {"Ésaü", "Jacob et Ésaü sont contrôlés en même temps#Utiliser une bombe en pose une sous chaque personnage#Maintenir {{ButtonRT}} immobilise Ésaü et permet d'utiliser sa carte ou pilule#Face à un choix d'objets, chaque personnage peut en prendre un s'ils les touchent en même temps"},

	[21] = {"Isaac Impur", "Ne peut porter que 8 objets#Les objets sur piédestal alternent entre 2 options#{{ButtonRT}} permet de choisir l'objet à remplacer si l'inventaire est plein"},
	[22] = {"Marie Impure", "Les PV au-delà de 2 cœurs se vident progressivement#Inflige {{ColorLime}}Dégâts x6{{CR}} au contact#Tuer un ennemi fait parfois apparaître un demi-cœur rouge temporaire {{ColorSilver}}(Garanti si tué au contact)#Les objets soignent le double de cœurs#Les dégâts subis dans les cœurs transparents ne diminuent pas les chances d'ouvrir le Refuge des Anges ou l'Antre du Diable"},
	[23] = {"Caïn Impur", "Toucher un objet le transforme en ressources"},
	[24] = {"Judas Impur", "Ne peut pas avoir de cœurs rouges"},
	[25] = {"??? Impur", "Ne peut pas avoir de cœurs rouges#Les bombes sont remplacées par des cacas jetables#Infliger des dégâts fait apparaître des cacas jetables"},
	[26] = {"Ève Impure", "Maintenir un bouton de tir convertit les PV en pâtés#Le type de pâté dépend du type de cœur converti#Les PV des pâtés baissent progressivement#Avoir un demi-cœur de vie totale et 0 pâtés donne une attaque similaire au {{ColorYellow}}Couteau de Maman"},
	[27] = {"Samson Impur", "{{Blank}} Infliger ou subir suffisamment de dégâts déclenche une frénésie :#Remplace les larmes par une attaque au corps-à-corps#↑ Vitesse{{ColorLime}} +0.4#↑ Dégâts{{ColorLime}} +3#{{ArrowUpDown}} Débit {{ColorError}}x0.5{{ColorLime}} +2#{{Timer}} L'effet dure 5 secondes et se rallonge d'une seconde par ennemi tué"},
	[28] = {"Azazel Impur", "Appuyer sur un bouton de tir fait éternuer Azazel#L'éternuement inflige {{ColorLime}}Dégâts x1.5{{CR}} et divise le temps de charge par 2 s'il touche un ennemi#Les ennemis touchés par l'éternuement sont plus vulnérables aux lasers de sang {{BrimstoneCurse}} et explosent à leur mort, ce qui contamine les ennemis à proximité"},
	[29] = {"Lazare Impur", "Lazare a deux états, chacun avec ses stats et ses objets#Terminer une salle ou utiliser Inversion alterne entre les deux états"},
	[30] = {"Éden Impur.e", "Subir un dégât rejoue les statistiques, objets, babioles et ressources d'Éden#Les dégâts volontaires ne déclenchent pas cet effet"},
	[31] = {"L'Égaré Impur", "Les objets défensifs ou inutiles à l'Égaré ne peuvent pas apparaître#Les cartes ont 10% de chances d'être converties en Carte Sacrée {{Card51}}#Les objets de qualité {{Quality2}} ou inférieure ont 20% de chances d'être rejoués"},
	[32] = {"Lilith Impure", "Appuyer sur un bouton de tir projette un fœtus qui inflige {{ColorLime}}Dégâts x3#Maintenir un bouton de tir fait tirer le fœtus en direction des ennemis"},
	[33] = {"Le Gardien Impur", "Tuer un ennemi fait apparaître une pièce temporaire#La plupart des objets, dont Les Pactes avec le Diable et les Offrandes des Anges, coutent 15 ou 30 pièces#Les boutiques sont toujours ouvertes et proposent plus de choix"},
	[34] = {"Apollyon Impur", ""},
	[35] = {"Le Délaissé Impur", "Ne peut pas avoir de cœurs rouges#Le Corps est invulnérable et doit être lancé par l'Âme pour infliger des dégâts de contact#Les bombes sont posées par le Corps"},
	[36] = {"Béthanie Impure", "Ramasser un cœur rouge ne l'ajoute pas à la barre de PV mais à un compteur#Les cœurs au compteur peuvent être utilisés pour charger les objets activables#Les augmentations de stats sont réduites de 25%"},
	[37] = {"Jacob Impur", "Ésaü pourchasse Jacob et attaque lorsqu'il est proche#L'attaque d'Ésaü inflige de gros dégâts aux ennemis et perce leur armure#Subir un dégât d'Ésaü transforme Jacob en fantôme#{{Warning}} Sous forme fantôme, Jacob meurt s'il subit un dégât et peut signer gratuitement un Pacte avec le Diable"},
	[38] = {"Lazare Impur (Mort)", "Lazare a deux états, chacun avec ses stats et ses objets#Terminer une salle alterne entre les deux états"},
	[39] = {"Jacob 2 Impur", ""},
	[40] = {"L'Âme Impure", "Ne peut pas avoir de cœurs rouges#Le Corps est immobile et invulnérable et doit être lancé par l'Âme pour infliger {{ColorLime}}Dégâts x3{{CR}} au contact#Les bombes sont posées par le Corps"},
}
EID:updateDescriptionsViaTable(repCharacterInfo, EID.descriptions[languageCode].CharacterInfo)

if EID.enableDebug then
    EID.descriptions[languageCode].repCollectibles = repCollectibles
    EID.descriptions[languageCode].repTrinkets = repTrinkets
    EID.descriptions[languageCode].repCards = repCards
    EID.descriptions[languageCode].repPills = repPills
end

if REPENTOGON then
	EID.descriptions[languageCode].custom["6.8.0"] = {"0", "Boîte à Dons", "Prochain succès à {1} pièces {{ColorSilver}}(encore {2} pièces)#Faire un don a 2% de chances de donner {{ColorLime}}Chance +1#Donner 10 pièces augmente les chances d'ouvrir le Refuge des Anges"}
	EID.descriptions[languageCode].custom["6.11.0"] = {"0", "Boîte à Dons d'Avarice", "Prochain succès à {1} pièces {{ColorSilver}}(encore {2} pièces)"}
end