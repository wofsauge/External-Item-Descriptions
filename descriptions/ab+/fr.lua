---------------------------------------
-----  Basic French descriptions  -----
---------------------------------------

-- FORMAT: Item ID | Name| Description
-- '#' = starts new line of text

-- French letters :
 --ùÙûÛüÜÿŸ àÀâÂæÆçÇ éÉèÈêÊëË ïÏîÎôÔœŒ

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  ! = Warning

local languageCode = "fr"

-- init French table
EID.descriptions[languageCode] = {}
EID.descriptions[languageCode].custom = {} -- table for custom entity descriptions
EID.descriptions[languageCode].languageName = "French"
EID.descriptions[languageCode].alternativeLanguageCodes = {"french"}

-- Fonts to be used with this language pack
EID.descriptions[languageCode].fonts = {{name="default", textboxWidth = 145}, {name="inverted", textboxWidth = 145}, {name="borderless", textboxWidth = 145}}

EID.descriptions[languageCode].collectibles={
	{"1", "Oignon Triste", "↑ Débit {{ColorLime}}+0.7"},
	{"2", "Troisième Œil", "Triple tir#↓ Débit diminué"},
	{"3", "Cuillère Tordue", "Larmes autoguidées"},
	{"4", "Tête de Cricket", "↑ Dégâts {{ColorLime}}+0.5 x1.5"},
	{"5", "Mon Reflet", "↑ Portée {{ColorLime}}+1.5#↑ Vitesse des tirs {{ColorLime}}+0.6#↑ +1 Hauteur des larmes#Les larmes d'Isaac reviennent vers lui comme un boomerang"},
	{"6", "Petite Commission", "↑ Débit {{ColorLime}}+1.5#↓ Portée {{ColorError}}-15.78#↑ Hauteur des larmes {{ColorLime}}+0.45"},
	{"7", "Sang du Martyr", "↑ Dégâts {{ColorLime}}+1.0"},
	{"8", "Frère Bobby", "Suit Isaac et tire dans la même direction que lui#{{DamageSmall}} 3.5 dégâts par larme"},
	{"9", "Scatol", "Les mouches ennemies sont inoffensives"},
	{"10", "Couronne de Mouches", "2 mouches orbitent Isaac et bloquent les projectiles ennemis"},
	{"11", "1-UP !", "↑ +1 Vie#{{HealingRed}} Isaac reçoit un soin complet en ressuscitant"},
	{"12", "Champignon Magique", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soin complet#↑ Dégâts {{ColorLime}}x1.5 +0.3#↑ Portée {{ColorLime}}+5.25#↑ Vitesse {{ColorLime}}+0.3#↑ Hauteur des larmes {{ColorLime}}+0.5"},
	{"13", "Le Virus", "↓ Vitesse {{ColorError}}-0.1#Entrer en contact avec un ennemi l'empoisonne#Les ennemis empoisonnés tués peuvent lâcher un cœur noir"},
	{"14", "Crise d'Hormones", "↑ Vitesse {{ColorLime}}+0.6#↑ Portée {{ColorLime}}+5.25#↑ Hauteur des larmes {{ColorLime}}+0.5"},
	{"15", "<3", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soin complet"},
	{"16", "Foie Cru", "{{Heart}} +2 réceptacles de cœur#{{HealingRed}} Soin complet"},
	{"17", "Clé Squelette", "{{Key}} +99 Clés"},
	{"18", "Un Dollar", "{{Coin}} +99 Pièces"},
	{"19", "Boum !", "{{Bomb}} +10 Bombes"},
	{"20", "Transcendance", "Permet à Isaac de voler"},
	{"21", "Boussole", "Révèle la position des salles spéciales sur la carte#Ne révèle pas la disposition des salles"},
	{"22", "Déjeuner", "{{Heart}} +1 réceptacle de cœur"},
	{"23", "Dîner", "{{Heart}} +1 réceptacle de cœur"},
	{"24", "Dessert", "{{Heart}} +1 réceptacle de cœur"},
	{"25", "Petit Déjeuner", "{{Heart}} +1 réceptacle de cœur"},
	{"26", "Viande Avariée", "{{Heart}} +1 réceptacle de cœur"},
	{"27", "Cuillère en Bois", "↑ Vitesse {{ColorLime}}+0.3"},
	{"28", "Ceinture", "↑ Vitesse {{ColorLime}}+0.3"},
	{"29", "Culotte de Maman", "↑ Portée {{ColorLime}}+5.25#↑ Hauteur des larmes {{ColorLime}}+0.5"},
	{"30", "Escarpins de Maman", "↑ Portée {{ColorLime}}+5.25#↑ Hauteur des larmes {{ColorLime}}+0.5"},
	{"31", "Rouge à Lèvres de Maman", "↑ Portée {{ColorLime}}+5.25#↑ Hauteur des larmes {{ColorLime}}+0.5"},
	{"32", "Cintre", "↑ Débit {{ColorLime}}+0.7"},
	{"33", "Bible", "Permet à Isaac de voler pour la durée de la salle#Tue instantanément {{ColorCyan}}Mom's Foot{{ColorWhite}}, {{ColorCyan}}Mom's Heart{{ColorWhite}} et {{ColorCyan}}It Lives!{{ColorWhite}}#{{Warning}} Tue Isaac si utilisée pendant le combat contre {{ColorCyan}}Satan"},
	{"34", "Livre de Bélial", "{{DevilChance}} Chance de Devil Deal {{ColorLime}}+12.5%#↑ Dégâts{{ColorLime}} +2"},
	{"35", "Necronomicon", "Inflige 40 dégâts à tous les ennemis de la salle"},
	{"36", "Tas de Caca", "Pose un caca {{Poop}} au sol"},
	{"37", "M. Boum", "Place une grosse bombe à la position d'Isaac#L'explosion de la bombe inflige 110 dégâts"},
	{"38", "Tête de Tammy", "Tire 10 larmes en cercle autour d'Isaac"},
	{"39", "Soutien-Gorge de Maman", "Pétrifie tous les ennemis dans la salle#{{Timer}} L'effet dure 4 secondes"},
	{"40", "Kamikaze !", "Déclenche une explosion à l'emplacement d'Isaac#{{Warning}} Inflige un demi-cœur de dégâts à Isaac"},
	{"41", "Serviette de Maman", "Terrifie tous les ennemis de la salle pendant 5 secondes"},
	{"42", "Tête de Bob", "Bombe jetable avec les boutons de tir#Inflige 50 dégâts d'explosion#Empoisonne les ennemis à proximité"},
	{"43", "", "<Cet objet n'existe pas>"},
	{"44", "Téléportation !", "Téléporte Isaac dans une salle au hasard#Ne peut pas téléporter dans la salle I AM ERROR"},
	{"45", "Joli Cœur", "{{HealingRed}} Soigne 1 cœur rouge"},
	{"46", "Pied Chanceux", "↑ Chance {{ColorLime}}+1.0#↑ Augmente les chances de gagner aux jeux de hasard"},
	{"47", "Télécommande du Docteur", "Utiliser l'objet affiche un curseur déplaçable#Un missile frappe la position du curseur après 2 secondes"},
	{"48", "Flèche de Cupidon", "Larmes transperçantes"},
	{"49", "Super Laser de la Mort", "Utiliser l'objet puis appuyer sur un bouton de tir crache un laser dans la direction choisie"},
	{"50", "Steven", "↑ Dégâts {{ColorLime}}+1.0"},
	{"51", "Pentagramme", "↑ Dégâts {{ColorLime}}+1.0#{{AngelDevilChanceSmall}} {{ColorLime}}+10%{{ColorWhite}} de chances de Devil Deal et Angel Room"},
	{"52", "Dr. Fœtus", "↓ Délai de tir {{ColorError}}x2.5#Les larmes d'Isaac sont remplacées par des bombes"},
	{"53", "Gros Aimant", "Isaac attire les ressources"},
	{"54", "Carte au Trésor", "Révèle la disposition des salles sur la carte"},
	{"55", "Œil de Maman", "Isaac tire parfois une larme additionnelle dans la direction opposée#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 2 Chance)"},
	{"56", "Petit Acident", "Répand une flaque au sol et inflige des dégâts aux ennemis qui marchent dedans"},
	{"57", "Admiration Distante", "Orbite autour d'Isaac et inflige des dégâts de contact#{{DamageSmall}} 75 dégâts par seconde"},
	{"58", "Livre des Ombres", "Rend Isaac invulnérable pendant 10 secondes"},
	{"59", "", "<Cet objet n'existe pas>"},
	{"60", "Échelle en Bois", "Permet à Isaac de traverser les précipices d'une case"},
	{"61", "", "<Cet objet n'existe pas>"},
	{"62", "Morsure de Vampire", "{{HealingRed}} Tuer 13 ennemis soigne un demi-cœur rouge"},
	{"63", "Pile Électrique", "Permet de surcharger les objets activables#Un objet complètement surchargé peut être utilisé deux fois d'affilée"},
	{"64", "Soldes", "Réduit le prix des objets du shop de moitié"},
	{"65", "Guide du Petit Anarchiste", "Invoque 6 troll bombs"},
	{"66", "Sablier", "Ralentit les ennemis pendant 8 secondes"},
	{"67", "Sœurette Marie", "Suit Isaac et tire en même temps que lui#{{DamageSmall}} 3.5 dégâts par larme"},
	{"68", "Technologie", "Remplace les larmes d'Isaac par des lasers"},
	{"69", "Chocolat Chaud", "↓ Débit diminué#Permet à Isaac de charger ses tirs#Une larme complètement chargée inflige {{ColorLime}}dégâts x4"},
	{"70", "Hormones de Croissance", "↑ Dégâts {{ColorLime}}+1.0#↑ Vitesse {{ColorLime}}+0.4"},
	{"71", "Mini Champi", "↑ Vitesse {{ColorLime}}+0.3#↓ Portée {{ColorError}}-4.25#↑ Hauteur des larmes {{ColorLime}}+1.5#Taille diminuée"},
	{"72", "Rosaire", "{{SoulHeart}} +3 cœurs d'âme#Ajoute {{ColorYellow}}The Bible{{ColorWhite}} à toutes les banques d'objets"},
	{"73", "Cube de Viande", "Obtenir plusieurs copies de cet objet l'améliore :#1: Orbite autour d'Isaac#2: Orbite autour d'Isaac et tire#3: Pourchasse les ennemis et inflige 7 dégâts de contact#4: Pourchasse les ennemis et inflige 11 dégâts de contact"},
	{"74", "Une Petite Pièce", "{{Coin}} +25 Pièces"},
	{"75", "Doctorat", "{{HealingRed}} Soigne 2 cœurs rouges#{{Pill}} +1 pilule#Les pilules ne peuvent plus avoir d'effet négatif#Les banques du sang {{BloodDonationMachine}} et {{ColorYellow}}IV Bag{{ColorWhite}} {{Collectible135}} donnent davantage de pièces"},
	{"76", "Lunettes à Rayon X", "Ouvre les entrées des Secret Rooms {{SecretRoom}} et Super Secret Rooms {{SuperSecretRoom}}"},
	{"77", "Licorne Arc-en-Ciel", "Isaac devient temporairement invulnérable et inflige 40 dégâts de contact"},
	{"78", "Livre de la Révélation", "{{SoulHeart}} +1 cœur d'âme#Augmente les chances d'affronter un {{ColorCyan}}Harbinger{{ColorWhite}} dans la salle du boss#{{AngelDevilChanceSmall}} +17.5% de chances de Devil Deal"},
	{"79", "Le Nombre de la Bête", "↑ Dégâts {{ColorLime}}+1.0#↑ Vitesse {{ColorLime}}+0.2#{{SoulHeart}} +1 cœur d'âme"},
	{"80", "Le Pacte", "↑ Dégâts {{ColorLime}}+0.5#↑ Débit {{ColorLime}}+0.7#{{SoulHeart}} +2 cœurs d'âme"},
	{"81", "Chat Mort", "↑ +9 Vies#↓ Réduit le nombre de réceptacles de cœurs rouges d'Isaac à 1#Mourir ressuscite Isaac avec 1 réceptacle de cœur"},
	{"82", "Empereur de la Fosse", "↑ Vitesse {{ColorLime}}+0.3#Permet à Isaac de voler"},
	{"83", "Clou Pointu", "{{SoulHeart}} +1 cœur d'âme#↑ Dégâts {{ColorLime}}+0.7#↓ Vitesse {{ColorError}}-0.18#Marcher sur les obstacles les détruit"},
	{"84", "Aller au Fond des Choses", "Ouvre une trappe vers l'étage suivant#La trappe a 10% de chances de contenir une échelle de corde"},
	{"85", "Jeu de Cartes", "Fait apparaître une carte"},
	{"86", "Dent de Monstro", "{{ColorCyan}}Monstro{{ColorWhite}} tombe et écrase un ennemi au hasard#Dans une salle vide, Monstro écrase Isaac"},
	{"87", "Cornes de Loki", "Isaac tire parfois dans 4 directions à la fois#{{LuckSmall}} Effet affecté par la statistique de chance#{{ColorGrey}}(100% à 7 Chance}}"},
	{"88", "P'tit Dodu", "S'élance dans la direction des tirs d'Isaac et inflige des dégâts de contact#{{DamageSmall}} 52.5 dégâts par seconde"},
	{"89", "Morsure d'Araignée", "Isaac tire parfois une larme ralentissante#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 15 Chance)"},
	{"90", "Gros Caillou", "↑ Dégâts {{ColorLime}}+1.0#↑ Débit {{ColorLime}}+0.2#↓ Vitesse {{ColorError}}-0.2"},
	{"91", "Casque de Spéléologue", "Révèle le type des salles spéciales adjacentes"},
	{"92", "Super Pansement", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soigne 1 cœur rouge#{{SoulHeart}} +2 cœurs d'âme"},
	{"93", "Jeu-Garçon", "Rend Isaac invulnérable#Terrifie tous les ennemis de la salle#{{HealingRed}} Tuer un ennemi soigne parfois un demi-cœur rouge#{{Timer}} L'effet dure 6.5 secondes"},
	{"94", "Bourse", "Fait apparaître une pièce toutes les 2 salles"},
	{"95", "Robo-Bébé", "Tire des lasers#{{DamageSmall}} 3.5 dégâts par laser"},
	{"96", "P'tit C.H.A.D", "Fait apparaître un demi-cœur toutes les 3 salles"},
	{"97", "Livre du Péché", "Fait apparaître une ressource aléatoire"},
	{"98", "Relique", "Fait apparaître un cœur d'âme toutes les 5 ou 6 salles"},
	{"99", "P'tit Gish", "Tire des larmes ralentissantes#{{DamageSmall}} 3.5 dégâts par larme"},
	{"100", "P'tit Steven", "Tire des larmes autoguidées#{{DamageSmall}} 3.5 dégâts par larme"},
	{"101", "Auréole", "{{Heart}} +1 réceptacle de cœur#↑ Dégâts {{ColorLime}}+0.3#↑ Débit {{ColorLime}}+0.2#↑ Portée {{ColorLime}}+0.25#↑ Vitesse {{ColorLime}}+0.3#↑ Hauteur des larmes {{ColorLime}}+0.5"},
	{"102", "Flacon de Pilules de Maman", "Fait apparaître une pilule"},
	{"103", "Rhume", "Isaac tire parfois une larme empoisonnée#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 12 Chance)"},
	{"104", "Parasite", "Les larmes d'Isaac se divisent en deux au contact d'un obstacle ou d'un ennemi"},
	{"105", "D6", "Rejoue tous les objets sur piédestal de la salle"},
	{"106", "M. Méga", "↑ Dégâts des bombes {{ColorLime}}x2.25#{{Bomb}} +5 Bombes"},
	{"107", "Ciseaux Cranteurs", "Permet à Isaac de voler#Le corps d'Isaac se sépare de sa tête, pourchasse les ennemis et inflige des dégâts de contact#{{DamageSmall}} 82.5 dégâts par seconde"},
	{"108", "Hostie", "Réduit tous les dégâts subis à un demi-cœur"},
	{"109", "Avidité", "↑ Dégâts {{ColorLime}}+0.04{{ColorWhite}} pour chaque pièce au compteur"},
	{"110", "Lentille de Maman", "20% de chances de tirer une larme paralysante#↑ Portée {{ColorLime}}+0.25#↑ Hauteur des larmes {{ColorLime}}+0.5#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 20 Chance)"},
	{"111", "Haricot", "Isaac pète, empoisonne, et inflige des dégâts aux ennemis à proximité"},
	{"112", "Ange Gardien", "Orbite autour d'Isaac, bloque les projectiles ennemis et inflige des dégâts de contact#{{DamageSmall}} 105 dégâts par seconde#Augmente la vitesse de rotation des familiers"},
	{"113", "Bébé Démoniaque", "Tire automatiquement sur les ennemis à proximité#{{DamageSmall}} 3 dégâts par larme"},
	{"114", "Couteau de Maman", "Remplace les larmes d'Isaac par un couteau#Le couteau inflige {{ColorLime}}dégâts x2{{ColorWhite}} dans les mains d'Isaac et {{ColorLime}}dégâts x6{{ColorWhite}} au plus loin de lui"},
	{"115", "Planche de Ouija", "Larmes spectrales"},
	{"116", "Pile 9 Volts", "Charge automatiquement la première barre des objets activables#Charge complètement l'objet activable tenu"},
	{"117", "Oiseau Mort", "Subir un dégât invoque un oiseau qui pourchasse et inflige des dégâts aux ennemis#{{DamageSmall}} 4.3 dégâts par seconde"},
	{"118", "Soufre", "Charge un laser de sang#Le laser inflige {{ColorLime}}dégâts x13{{ColorWhite}} sur la durée d'un tir"},
	{"119", "Poche de Sang", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soigne 4 cœurs rouges#↑ Vitesse {{ColorLime}}+0.3"},
	{"120", "Champignon Suspect", "↑ Débit {{ColorLime}}+1.7#↑ Vitesse {{ColorLime}}+0.3#↓ Dégâts {{ColorError}}-10% -0.4"},
	{"121", "Champignon Suspect", "{{EmptyHeart}} +1 réceptacle de cœur#↑ Dégâts {{ColorLime}}+0.3#↑ Portée {{ColorLime}}+0.25#↑ Hauteur des larmes {{ColorLime}}+0.5#↓ Vitesse {{ColorError}}-0.1#"},
	{"122", "Grande Prostituée", "Quand Isaac n'a qu'un demi-cœur rouge ou moins:#↑ Dégâts {{ColorLime}}+1.5#↑ Vitesse {{ColorLime}}+0.3"},
	{"123", "Manuel des Monstres", "Invoque un familier au hasard pour la durée d'une salle"},
	{"124", "Manuscrits de la Mer Morte", "Déclenche l'effet d'un objet activable au hasard#Ne peut pas déclencher d'effets qui infligent des dégâts directs à Isaac"},
	{"125", "Bobby-Bombes", "{{Bomb}} +5 Bombes#Les bombes placées par Isaac se déplacent en direction des ennemis"},
	{"126", "Lame de Rasoir", "↑ Dégâts {{ColorLime}}+1.2#{{Warning}} Inflige 1 cœur de dégâts à Isaac#Retire les cœurs rouges en priorité"},
	{"127", "Pilule Tranquillisante", "Rejoue et redémarre l'étage"},
	{"128", "Seul à Jamais", "Orbite autour d'Isaac et inflige des dégâts de contact#{{DamageSmall}} 30 dégâts par seconde"},
	{"129", "Seau de Saindoux", "{{EmptyHeart}} +2 réceptacles de cœur#{{HealingRed}} Soigne un demi-cœur rouge#↓ Vitesse {{ColorError}}-0.2"},
	{"130", "Poney Noir", "↑ Vitesse =1.5#Permet à Isaac de voler#Utiliser l'objet déclenche une ruée dans la direction où se déplace Isaac#Isaac est invulnérable durant la ruée"},
	{"131", "Sac de Bombes", "Fait apparaître une bombe toutes les 3 salles"},
	{"132", "Morceau de Charbon", "Augmente les dégâts des larmes selon la distance qu'elles parcourent"},
	{"133", "Patte de Guppy", "Convertit 1 réceptacle de cœur en 3 cœurs d'âme"},
	{"134", "Queue de Guppy", "{{ColorLime}}33%{{ColorWhite}} de chances de remplacer la récompense d'une salle par un coffre#{{ColorError}}33%{{ColorWhite}} de chances d'annuler la récompense d'une salle"},
	{"135", "Perfusion", "Inflige un demi-cœur de dégâts à Isaac et fait apparaître 2 à 3 pièces"},
	{"136", "Mon Meilleur Ami", "Place une peluche qui attire les ennemis et explose après 5 secondes"},
	{"137", "Détonateur Télécommandé", "{{Bomb}} +5 Bombes#Les bombes d'Isaac n'explosent plus automatiquement#Utiliser l'objet fait exploser toutes les bombes placées par Isaac"},
	{"138", "Stigmates", "{{Heart}} +1 réceptacle de cœur#↑ Dégâts {{ColorLime}}+0.3"},
	{"139", "Sac à Main de Maman", "Permet à Isaac de porter deux trinkets"},
	{"140", "Malédiction de Bob", "L'explosion des bombes empoisonne les ennemis#{{Bomb}} +5 Bombes"},
	{"141", "Bête de Foire", "Fait apparaître 7 pièces"},
	{"142", "Scapulaire", "Descendre à un demi-cœur de vie totale ajoute un cœur d'âme aux PV d'Isaac#L'effet ne peut se déclencher qu'une fois par salle#Quitter et revenir dans la salle permet à l'effet de se déclencher à nouveau"},
	{"143", "Pot Belge", "↑ Vitesse {{ColorLime}}+0.3#↑ Vitesse des tirs {{ColorLime}}+0.2"},
	{"144", "Ami Mendiant", "Ramasse les pièces au sol et en convertit 3 ou 4 en une ressource au hasard"},
	{"145", "Tête de Guppy", "Invoque 2 à 4 mouches bleues"},
	{"146", "Carte Pieuse", "{{EternalHeart}} +1 cœur éternel"},
	{"147", "Pioche en Fer", "Permet à Isaac de détruire les rochers et les murs des Secret Rooms {{SecretRoom}} et Super Secret Rooms {{SuperSecretRoom}} pour la durée d'une salle"},
	{"148", "Infestation", "Subir un dégât invoque 1 à 3 mouches bleues"},
	{"149", "Ipéca", "↑ Dégâts {{ColorLime}}+40#↓ Débit diminué#Remplace les larmes d'Isaac par des tirs en cloche explosifs#Empoisonne les ennemis dans le rayon de l'explosion"},
	{"150", "Poing Américain", "Isaac tire parfois une dent qui inflige {{ColorLime}}dégâts x3.2#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 9 Chance)"},
	{"151", "Mulligan", "Toucher un ennemi avec une larme a 17% de chances d'invoquer une mouche bleue"},
	{"152", "Technologie 2", "Les larmes d'Isaac sont remplacées par un laser continu#↓ Dégâts {{ColorError}}-35%"},
	{"153", "Araignée Mutante", "Quadruple les larmes tirées#↓ Débit diminué"},
	{"154", "Masque à l'Acide", "↑ Dégâts {{ColorLime}}+2.0#N'affecte que les larmes tirées de l'œil gauche"},
	{"155", "Œil Baladeur", "Rebondit contre les murs de la salle et inflige des dégâts de contact#{{DamageSmall}} 17 dégâts par seconde"},
	{"156", "Voile de Nonne", "Subir un dégât charge une barre de l'objet activable"},
	{"157", "Soif de Sang", "↑ Dégâts augmentés pour chaque dégât subi#L'augmentation de dégâts persiste pour la durée de l'étage"},
	{"158", "Boule de Cristal", "Révèle l'étage sur la carte#Fait apparaître une carte ou un cœur d'âme"},
	{"159", "Esprit de la Nuit", "Permet à Isaac de voler#Larmes spectrales"},
	{"160", "Fissure Céleste", "5 rayons de lumière frappent le sol à proximité des ennemis et leur infligent des dégâts"},
	{"161", "Ânkh", "Réincarne Isaac en {{ColorLightOrange}}???{{ColorWhite}} à sa mort"},
	{"162", "Croix Celte", "Subir un dégât rend parfois Isaac temporairement invulnérable#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 27 Chance)"},
	{"163", "Bébé Fantôme", "Tire des larmes spectrales#{{DamageSmall}} 3.5 dégâts par larme"},
	{"164", "Bougie Bleue", "Lance une flamme bleue qui inflige des dégâts de contact, bloque les projectiles ennemis et disparaît après 2 secondes"},
	{"165", "Chat à Neuf Queues", "↑ Dégâts {{ColorLime}}+1.0#↑ Vitesse des tirs {{ColorLime}}+0.23"},
	{"166", "D20", "Rejoue toutes les ressources de la salle"},
	{"167", "Bébé Arlequin", "Tire deux larmes écartées#{{DamageSmall}} 4 dégâts par larme"},
	{"168", "Super Fœtus", "Les larmes d'Isaac sont remplacées par un curseur déplaçable avec les boutons de tir#Un missile frappe le sol à l'emplacement du curseur après 1.5 secondes"},
	{"169", "Polyphème", "↑ Dégâts {{ColorLime}}x2 +4#↓ Débit diminué#Les larmes qui tuent un ennemi le transpercent"},
	{"170", "Le Faucheux", "Écrase un ennemi au hasard toutes les 4 secondes#{{DamageSmall}} 40 dégâts par coup"},
	{"171", "Filière d'Araignée", "Ralentit tous les ennemis pendant 4 secondes#Inflige 10 dégâts à tous les ennemis"},
	{"172", "Dague Sacrificielle", "Orbite autour d'Isaac, bloque les projectiles ennemis et inflige des dégâts de contact#{{DamageSmall}} 225 dégâts par seconde"},
	{"173", "Mitre", "Les cœurs rouges au sol ont 50% de chances d'être convertis en cœurs d'âme"},
	{"174", "Bébé Arc-en-Ciel", "Tire des larmes aléatoires#{{DamageSmall}} 3 à 5 dégâts par larme"},
	{"175", "Clé de Papa", "Ouvre toutes les portes de la salle#Peut ouvrir la majorité des portes spéciales"},
	{"176", "Cellules Souches", "{{Heart}} +1 réceptacle de cœur#↑ Vitesse des tirs {{ColorLime}}+0.16"},
	{"177", "Casino Portatif", "Retire 1 pièce à Isaac#Fait parfois apparaître une ressource"},
	{"178", "Eau Bénite", "Subir un dégât répand une flaque d'eau qui inflige des dégâts de contact"},
	{"179", "Destin", "Permet à Isaac de voler#{{EternalHeart}} +1 cœur éternel"},
	{"180", "Haricot Noir", "Subir un dégât fait péter Isaac"},
	{"181", "Poney Blanc", "↑ Vitesse =1.5#Permet à Isaac de voler#Utiliser l'objet déclenche une ruée dans la direction où se déplace Isaac#Des rayons de lumière frappent aléatoirement le sol pendant la ruée#Isaac est invulnérable pendant la ruée"},
	{"182", "Sacré-Cœur", "Larmes autoguidées#{{Heart}} +1 réceptacle de cœur#↑ Dégâts {{ColorLime}}x2.3 +1#↓ Débit {{ColorError}}-0.4#↓ Vitesse des tirs {{ColorError}}-0.25#↑ Portée {{ColorLime}}+0.375#↑ Hauteur des larmes {{ColorLime}}+0.75"},
	{"183", "Cure-Dents", "↑ Débit {{ColorLime}}+0.7#↑ Vitesse des tirs {{ColorLime}}+0.16"},
	{"184", "Saint Graal", "{{Heart}} +1 réceptacle de cœur#Permet à Isaac de voler"},
	{"185", "Colombe Morte", "Permet à Isaac de voler#Larmes spectrales"},
	{"186", "Droits du Sang", "Inflige 40 dégâts à tous les ennemis de la salle#{{Warning}} Inflige 1 cœur de dégâts à Isaac"},
	{"187", "Boule de Poils de Guppy", "Peut être projetée en déplaçant Isaac#Grandit et inflige davantage de dégâts pour chaque ennemi qu'elle tue#La boule se réinitialise à chaque nouvel étage"},
	{"188", "Abel", "Se déplace à l'inverse d'Isaac et tire dans sa direction#{{DamageSmall}} 3.5 dégâts par larme"},
	{"189", "Super Fan de SMB", "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soin complet#↑ Dégâts {{ColorLime}}+0.3#↑ Débit {{ColorLime}}+0.2#↑ Portée {{ColorLime}}+0.5#↑ Vitesse {{ColorLime}}+0.2#↑ Hauteur des larmes {{ColorLime}}+1.0"},
	{"190", "Pyro", "{{Bomb}} +99 Bombes"},
	{"191", "Billet de Trois", "Donne aux larmes d'Isaac un effet aléatoire toutes les 2 ou 3 secondes"},
	{"192", "La Télépathie Pour les Nuls", "Larmes autoguidées#{{Timer}} L'effet dure une salle"},
	{"193", "DE LA VIANDE !", "{{Heart}} +1 réceptacle de cœur#↑ Dégâts {{ColorLime}}+0.3"},
	{"194", "Boule Magique", "↑ Vitesse des tirs {{ColorLime}}+0.16#Fait apparaître une carte"},
	{"195", "Porte-Monnaie de Maman", "Fait apparaître 4 pilules"},
	{"196", "Jouet Anti-Stress", "↑ Débit {{ColorLime}}+0.4#Fait apparaître 2 cœurs d'âme"},
	{"197", "Sang du Christ", "↑ Dégâts {{ColorLime}}+0.5#↑ Portée {{ColorLime}}+0.25#↑ Hauteur des larmes {{ColorLime}}+0.5"},
	{"198", "Boîte", "Fait apparaître une ressource de chaque type"},
	{"199", "Clé de Maman", "{{Key}} +2 Clés#Les coffres contiennent davantage de ressources"},
	{"200", "Fard à Paupières de Maman", "Isaac tire parfois une larme envoûtante#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 27 Chance)"},
	{"201", "Lingot de Fer", "↑ Dégâts {{ColorLime}}+0.3#Isaac tire parfois une larme étourdissante#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 27 Chance)"},
	{"202", "Malédiction de Midas", "Entrer en contact avec un ennemi le transforme en or#Tuer un ennemi doré fait apparaître des pièces#Isaac inflige des dégâts de contact proportionnels à son nombre de pièces"},
	{"203", "Offre Spéciale", "Toutes les ressources sont doublées si possible"},
	{"204", "Sac Banane", "Subir un dégât a 50% de chances de faire apparaître une ressource"},
	{"205", "Prise de Sang", "Inflige deux cœurs de dégâts à Isaac et recharge complètement l'objet activable#Ne fonctionne que si l'objet est entièrement déchargé"},
	{"206", "Guillotine", "↑ Dégâts {{ColorLime}}+1.0#↑ Débit {{ColorLime}}+1.0#La tête d'Isaac orbite autour de son corps#La tête tire les larmes et inflige des dégâts de contact#{{DamageSmall}} 105 dégâts par seconde"},
	{"207", "Boule de Pansements", "Obtenir plusieurs copies de cet objet l'améliore :#1: Orbite autour d'Isaac#2: Orbite autour d'Isaac et tire des larmes envoûtantes#3: Pourchasse les ennemis et inflige 7 dégâts de contact#4: Pourchasse les ennemis et inflige 11 dégâts de contact"},
	{"208", "Ceinture du Champion", "↑ Dégâts {{ColorLime}}+1.0#Augmente de 15% les chances de rencontrer des ennemis d'élite"},
	{"209", "Bombes Bronze", "{{Bomb}} +5 Bombes#Les explosions des bombes d'Isaac étourdissent et infligent 10 dégâts à tous les ennemis de la salle"},
	{"210", "Feuille Grignotée", "N'appuyer sur aucun bouton pendant une seconde rend Isaac invulnérable#L'effet prend fin dès qu'Isaac fait une quelconque action"},
	{"211", "Bébé Araignée", "Subir un dégât invoque 1 ou 2 araignées bleues"},
	{"212", "Collier de Guppy", "À sa mort, Isaac a 50% de chances d'être ressuscité"},
	{"213", "Lentille Égarée", "↓ Vitesse des tirs {{ColorError}}-0.15#Les larmes d'Isaac bloquent et détruisent les projectiles ennemis"},
	{"214", "Anémie", "↑ Portée {{ColorLime}}+5#Subir un dégât répand une traînée de sang corrosif derrière Isaac pour la durée d'une salle"},
	{"215", "Tête de Bouc", "{{AngelDevilChanceSmall}} Garantit d'ouvrir la Devil Room {{DevilRoom}} ou l'Angel Room {{AngelRoom}} après avoir battu le boss de l'étage"},
	{"216", "Robe de Cérémonie", "↑ Dégâts {{ColorLime}}+1#{{BlackHeart}} +3 cœurs noirs"},
	{"217", "Perruque de Maman", "{{HealingRed}} Soigne 1 cœur rouge#Tirer une larme invoque parfois une araignée bleue#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 10 Chance)"},
	{"218", "Placenta", "{{Heart}} +1 réceptacle de cœur#Régénère parfois un demi-cœur rouge quand le minuteur finit par :00"},
	{"219", "Vieux Pansement", "{{EmptyHeart}} +1 réceptacle de cœur#Subir un dégât fiat parfois apparaître un cœur rouge#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à 27 Chance)"},
	{"220", "Bombes Pleureuses", "{{Bomb}} +5 Bombes#Les bombes d'Isaac projettent 10 larmes en cercle autour d'elles en explosant"},
	{"221", "Colle Caoutchouc", "Les larmes d'Isaac rebondissent sur les murs, les obstacles et les ennemis"},
	{"222", "Antigravité", "↑ Débit {{ColorLime}}+2.0#Maintenir les boutons de tir fait flotter les larmes d'Isaac sur place#Relâcher les boutons de tir envoie toutes les larmes dans la direction où elles ont été tirées"},
	{"223", "Pyromanie", "{{Bomb}} +5 Bombes#{{HealingRed}} Les explosions soignent un cœur rouge#Rend Isaac invulnérable aux explosions"},
	{"224", "Corps de Cricket", "↑ Débit {{ColorLime}}+1.0#↓ Portée {{ColorError}}-10.0#Les larmes d'Isaac se divisent en 4 au contact"},
	{"225", "Latex", "Subir un dégât a une chance de faire apparaître un cœur d'âme#Tuer un ennemi a une chance de faire apparaître un demi-cœur rouge#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à 20 Chance)"},
	{"226", "Lotus Noir", "{{Heart}} +1 réceptacle de cœur#{{SoulHeart}} +1 cœur d'âme#{{BlackHeart}} +1 cœur noir"},
	{"227", "Tirelire Cochon", "{{Coin}} +3 Pièces#Subir un dégât fait apparaître 1 ou 2 pièces"},
	{"228", "Parfum de Maman", "↑ Débit {{ColorLime}}+1.0#Isaac tire parfois une larme terrifiante#Les ennemis terrifiés fuient Isaac#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 85 Chance)"},
	{"229", "Poumon de Monstro", "↓ Débit {{ColorError}}diminué#Remplace les larmes d'Isaac par une attaque chargée qui crache une gerbe de larmes"},
	{"230", "Abaddon", "↑ Dégâts {{ColorLime}}+1.5#↑ Vitesse {{ColorLime}}+0.2#{{BlackHeart}} +6 cœurs noirs#Retire tous les réceptacles de cœur#Isaac tire parfois une larme terrifiante#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 85 Chance)"},
	{"231", "Boule de Goudron", "Isaac répand une traînée de goudron ralentissante#Isaac tire parfois une larme ralentissante#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 18 Chance)"},
	{"232", "Chronomoètre", "↑ Vitesse {{ColorLime}}+0.3#Ralentit tous les ennemis de la salle quand Isaac subit un dégât"},
	{"233", "Planète Naine", "↑ Portée {{ColorLime}}+6.5#↑ Hauteur des larmes {{ColorLime}}+7.0#Larmes spectrales#Les larmes d'Isaac l'orbitent"},
	{"234", "Infestation 2", "Tuer un ennemi invoque une araignée bleue#Les ennemis tués par des araignées bleues n'invoquent pas d'araignées bleues"},
	{"235", "", "<Cet objet n'existe pas>"},
	{"236", "E. Coli", "Entrer en contact avec un ennemi le transforme en caca"},
	{"237", "La Faucheuse", "↑ Dégâts {{ColorLime}}+1.5#↓ Débit {{ColorError}}-0.3#Larmes transperçantes"},
	{"238", "Premier Fragment de Clé", "Combiner ce morceau de clé avec l'autre {{Collectible239}} permet d'ouvrir la grande porte dorée dans {{ColorTransform}}Chest{{ColorWhite}} et {{ColorTransform}}Dark Room #Augmente la fréquence d'apparition des cœurs éternels#{{AngelDevilChanceSmall}} Augmente les chances d'Angel Rooms {{AngelRoom}}"},
	{"239", "Second Fragment de Clé", "Combiner ce morceau de clé avec l'autre {{Collectible238}} permet d'ouvrir la grande porte dorée dans {{ColorTransform}}Chest{{ColorWhite}} et {{ColorTransform}}Dark Room #Augmente la fréquence d'apparition des cœurs éternels#{{AngelDevilChanceSmall}} Augmente les chances d'Angel Rooms {{AngelRoom}}"},
	{"240", "Traitement Expérimental", "{{ArrowUpDown}} Augmente et diminue les stats d'Isaac de manière aléatoire"},
	{"241", "Contrat des Profondeurs", "{{ColorLime}}66%{{CR}} de chances de doubler une récompense de salle#{{ColorError}}33%{{ColorWhite}} de chances d'annuler une récompense de salle"},
	{"242", "Infamie", "50% de chances de nullifier un dégât infligé à Isaac par un projectile"},
	{"243", "Bouclier de la Trinité", "Bloque les projectiles#S'oriente dans la direction où tire Isaac"},
	{"244", "Tech 0,5", "Isaac tire parfois un laser en plus de ses larmes"},
	{"245", "20/20", "Double les larmes tirées par Isaac"},
	{"246", "Carte Perdue", "Révèle l'emplacement des Secret Room {{SecretRoom}} et Super Secret Room {{SuperSecretRoom}} sur la carte"},
	{"247", "Meilleurs Amis pour la Vie", "Double les dégâts infligés par les familiers d'Isaac"},
	{"248", "Conscience Collective", "Double les dégâts infligés par les mouches et araignées bleues"},
	{"249", "L'Embarras du Choix", "Permet à Isaac de choisir entre 2 objets après avoir battu un boss"},
	{"250", "Soldes Explosives", "Double toutes les bombes ramassables"},
	{"251", "Deck du Débutant", "Permet à Isaac de porter deux cartes#Transforme toutes les pilules en cartes"},
	{"252", "Petit Sachet", "Permet à Isaac de porter deux pilules#Transforme toutes les cartes en pilules"},
	{"253", "Croûte Magique", "↑ Chance {{ColorLime}}+1#{{Heart}} +1 réceptacle de cœur"},
	{"254", "Caillot de Sang", "↑ Dégâts {{ColorLime}}+1#↑ Portée {{ColorLime}}+5#Ne s'applique qu'aux larmes tirées de l'œil gauche"},
	{"255", "Vis", "↑ Débit {{ColorLime}}+0.5#↑ Vitesse des tirs {{ColorLime}}+0.2"},
	{"256", "Bombes Brûlantes", "Les bombes d'Isaac infligent des dégâts de contact aux ennemis#Les bombes d'Isaac allument une flamme à l'emplacement de l'explosion#{{Bomb}} +5 Bombes"},
	{"257", "Esprit de Feu", "Enflamme les ennemis touchés par les larmes d'Isaac#Les larmes d'Isaac explosent parfois au contact d'un ennemi#{{Warning}} Ces explosions peuvent infliger des dégâts à Isaac#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 13 Chance)"},
	{"258", "Missing No.", "Rejoue tous les objets d'Isaac au changement d'étage"},
	{"259", "Matière Noire", "↑ Dégâts {{ColorLime}}+1.0#Isaac tire parfois une larme terrifiante#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 20 Chance)"},
	{"260", "Bougie Noire", "{{BlackHeart}} +1 cœur noir#Empêche l'apparition de Curses#Annule l'effet de téléportation de {{ColorYellow}}Cursed Eye {{Collectible316}}"},
	{"261", "Proptose", "↑ Dégâts {{ColorLime}}+100%#↓ Les dégâts des larmes diminuent progressivement avec la distance parcourue"},
	{"262", "Page Déchirée 2", "{{BlackHeart}} +1 cœur noir#Active l'effet du {{ColorYellow}}Necronomicon{{ColorWhite}} {{Collectible35}} quand les PV d'Isaac sont réduits à 1 cœur"},
	{"263", "Rune de Cristal", "<Cet objet n'existe pas>"},
	{"264", "Mouche Maline", "Orbite autour d'Isaac et attaque les ennemis qui lui infligent des dégâts#{{DamageSmall}} 22.5 dégâts par seconde"},
	{"265", "Bébé Désséché", "10% de chances de déclencher l'effet du {{ColorYellow}}Necronomicon{{ColorWhite}} {{Collectible35}} s'il touche un projectile ennemi"},
	{"266", "Cocon Juteux", "Répand une traînée ralentissante derrière lui#Terminer une salle invoque 1 ou 2 araignées bleues"},
	{"267", "Robo-Bébé 2.0", "Tire des lasers#Peut être déplacé avec les boutons de tir#{{DamageSmall}} 3.5 dégâts par laser"},
	{"268", "Bébé Putride", "Crache des mouches bleues quand Isaac tire"},
	{"269", "Bébé Décapité", "Répand une traînée de sang corrosif derrière lui"},
	{"270", "Sangsue", "Pourchasse les ennemis et leur inflige des dégâts de contact#{{HealingRed}} Soigne un demi-cœur rouge par ennemi qu'elle tue#{{DamageSmall}} 3.2 dégâts par seconde"},
	{"271", "Pochon Mystère", "Fait apparaître une ressource toutes les 5 ou 6 salles"},
	{"272", "BGM", "Rebondit contre les murs de la salle et explose au contact d'un ennemi#{{DamageSmall}} 60 dégâts par explosion#{{Warning}} L'explosion peut infliger des dégâts à Isaac"},
	{"273", "Cerveau de Bob", "Peut être projeté en tirant#Explose au contact d'un ennemi#{{DamageSmall}} 60 dégâts par explosion#{{Warning}} L'explosion peut infliger des dégâts à Isaac"},
	{"274", "Meilleure Pote", "Subir un dégât invoque une mouche qui orbite autour d'Isaac et inflige des dégâts de contact pour la durée d'une salle#{{DamageSmall}} 75 dégâts par seconde"},
	{"275", "P'tit Soufre", "Tire des lasers de sang#{{DamageSmall}} 31.5 dégâts par laser"},
	{"276", "Cœur d'Isaac", "Rend Isaac invulnérable et invoque un familier qui le suit#{{Warning}} Isaac subit un dégât si le familier touche un ennemi ou un projectile"},
	{"277", "P'tit Revenu", "Pourchasse, terrifie et inflige des dégâts aux ennemis#{{DamageSmall}} 4 dégâts par seconde"},
	{"278", "Mendiant des Ombres", "Ramasse les cœurs rouges au sol et convertit 1,5 cœurs rouges en 1 cœur d'âme ou une araignée"},
	{"279", "Mon Plus Gros Fan", "Orbite autour d'Isaac, bloque les projectiles ennemis et inflige des dégâts de contact#{{DamageSmall}} 30 dégâts par seconde"},
	{"280", "Sissy la Faucheuse", "Invoque des araignées bleues dans les salles hostiles"},
	{"281", "Théodule", "Est pris pour cible par les ennemis s'il est plus près d'eux qu'Isaac#Les ennemis attaquent Théodule pendant 6 secondes toutes les 12 secondes"},
	{"282", "Manuel de Saut", "Permet à Isaac de sauter par-dessus les obstacles et les précipices"},
	{"283", "D100", "Rejoue tous les objets sur piédestal, les ressources et les objets d'Isaac"},
	{"284", "D4", "Rejoue tous les objets passifs d'Isaac"},
	{"285", "D10", "Rejoue tous les ennemis de la salle"},
	{"286", "Carte Blanche", "Déclenche l'effet de la carte portée par Isaac sans la consommer"},
	{"287", "Livre des Secrets", "Donne l'effet de {{ColorYellow}}Treasure Map{{ColorWhite}} {{Collectible54}}, {{ColorYellow}}The Compass{{ColorWhite}} {{Collectible21}} ou {{ColorYellow}}Blue Map{{ColorWhite}} {{Collectible246}}#{{Timer}} L'effet dure un étage"},
	{"288", "Boîte d'Araignées", "Invoque 1 à 4 araignées bleues"},
	{"289", "Bougie Rouge", "Lance une flamme rouge#La flamme disparaît après avoir infligé des dégâts ou bloqué des tirs 5 fois"},
	{"290", "Bocal en Verre", "Ramasser un cœur rouge quand tous les réceptacles de cœurs rouges d'Isaac sont pleins le met dans le bocal#Utiliser l'objet sort tous les cœurs rouges du bocal et les place sur le sol"},
	{"291", "Chasse d'Eau", "Tue instantanément tous les ennemis et boss cacas#Transforme les ennemis en cacas"},
	{"292", "Bible Satanique", "{{BlackHeart}} +1 cœur noir"},
	{"293", "Tête de Krampus", "Crache un laser de sang dans 4 directions#Les lasers ont 50% de chances de tourner pendant l'attaque"},
	{"294", "Haricot Blanc", "Isaac pète et repousse les ennemis et les projectiles à proximité#10% de chances de devenir {{ColorYellow}}Wait What?{{ColorWhite}}{{Collectible484}} quand il est échangé avec un autre objet activable"},
	{"295", "Pot de Vin", "Inflige des dégâts à toute la salle#Retire 1 pièce à Isaac"},
	{"296", "Adaptateur", "Convertit 2 cœurs d'âme/noirs en un réceptacle de cœur rouge"},
	{"297", "Boîte de Pandore", "Donne selon l'étage :#B1 : 2 {{SoulHeart}}#B2 : 2 {{Key}} + 2 {{Bomb}}#C1 : 1 Objet de boss#C2 : 1 Objet de boss + 2 {{SoulHeart}}#D1 : 4 {{SoulHeart}}#D2 : 30 {{Coin}}#W1 : 2 Objets de boss#W2 : {{ColorYellow}}The Bible{{ColorWhite}} {{Collectible33}}#??? / Néant : Rien#Sheol : 1 Objet du Diable, 1 {{BlackHeart}}#Cathedral : 1 Objet d'Ange + 1 {{SoulHeart}}#Dark Room: Débloque la {{ColorYellow}}Carton de Déménagement{{ColorWhite}} {{Collectible523}}#Chest : 1 {{Coin}}"},
	{"298", "Corne Brisée", "#↑ Vitesse {{ColorLime}}+0.28#Rend Isaac invulnérable#{{Timer}} L'effet dure 6 secondes"},
	{"299", "Taureau", "↓ Vitesse {{ColorError}}-0.3#La vitesse d'Isaac augmente progressivement dans les salles hostiles#Quand sa vitesse atteint 2, Isaac devient invulnérable pendant 5 secondes"},
	{"300", "Bélier", "↑ Vitesse {{ColorLime}}+0.25#Entrer en contact avec un ennemi lui inflige des dégâts"},
	{"301", "Cancer", "{{SoulHeart}} +3 cœurs d'âme#Subir un dégât réduit les futurs dégâts subis à un demi-cœur#{{Timer}} L'effet dure une salle"},
	{"302", "Lion", "Taille augmentée#Marcher sur les obstacles les détruit"},
	{"303", "Vierge", "Les pilules ne peuvent plus avoir d'effets négatifs#Subir un dégât rend parfois Isaac invulnérable pendant 10 secondes#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 10 Chance)"},
	{"304", "Balance", "{{Coin}} +6 Pièces#{{Key}} +6 Clés#{{Bomb}} +6 Bombes#Équilibre les stats d'Isaac#Répartit les changements de stat entre toutes les stats"},
	{"305", "Scorpion", "Larmes empoisonnées"},
	{"306", "Sagittaire", "↑ Vitesse {{ColorLime}}+0.2#Larmes transperçantes"},
	{"307", "Capricorne", "{{Heart}} +1 réceptacle de cœur#{{Key}} +1 Clé#{{Bomb}} +1Bombe#{{Coin}} +1 Pièce#↑ Dégâts {{ColorLime}}+0.5#↑ Vitesse {{ColorLime}}+0.1#↑ Portée {{ColorLime}}+1.5"},
	{"308", "Verseau", "Isaac répand une trainée de larmes derrière lui#La traînée de larmes inflige 6 dégâts de contact par seconde"},
	{"309", "Poissons", "↑ Débit augmenté #Augmente le recul infligé par les larmes d'Isaac"},
	{"310", "Mascara d'Ève", "↑ Dégâts {{ColorLime}}x2#↓ Débit {{ColorError}}-50%#↓ Vitesse des tirs {{ColorError}}-0.5"},
	{"311", "Ombre de Judas", "À sa mort, réincarne Isaac en {{ColorLightOrange}}Black Judas"},
	{"312", "Chouchou de Marie", "{{Heart}} +1 réceptacle de cœur#Double la quantité de PV soignée par les cœurs rouges"},
	{"313", "Voile Sacré", "Nullifie le premier dégât subi dans chaque salle"},
	{"314", "Seau de Fromage", "{{Heart}} +1 réceptacle de cœur#Vitesse {{ColorError}}-0.4#Marcher sur les obstacles les détruit"},
	{"315", "Attracteur Étrange", "Les larmes d'Isaac attirent les ennemis, ressources et trinkets"},
	{"316", "Œil Maudit", "Remplace les larmes d'Isaac par une attaque chargée#L'attaque complètement chargée tire 4 larmes d'un coup, mais le chargement peut être interrompu pour en tirer moins#{{Warning}} Subir un dégât pendant le chargement de l'attaque téléporte Isaac dans une salle aléatoire"},
	{"317", "Liquide Mystérieux", "Les larmes d'Isaac éclatent en une flaque toxique qui inflige des dégâts"},
	{"318", "Gémeaux", "Est lié à Isaac#Attaque les ennemis qui s'approchent de lui#{{DamageSmall}} 6 dégâts par seconde"},
	{"319", "Œil Gauche de Caïn", "Rebondit contre les murs de la salle#Tire dans la même direction qu'Isaac et inflige les mêmes dégâts que lui"},
	{"320", "La Seule Amie de ???", "Inflige des dégâts de contact#Peut être déplacée avec les boutons de tir#{{DamageSmall}} 37.5 dégâts par seconde"},
	{"321", "Boulet de Samson", "Traîne derrière Isaac et détruit les rochers, bloque les projectiles et inflige des dégâts de contact#{{DamageSmall}} 10.7 dégâts par seconde"},
	{"322", "Bébé Moqueur", "Imite les tirs d'un des familiers d'Isaac#Le familier imité change régulièrement"},
	{"323", "Bocal de Larmes", "Projette 8 larmes en cercle autour d'Isaac#Chaque larme tirée par Isaac recharge une barre de l'objet"},
	{"324", "erreur", "{{Blank}} Téléporte Isaac vers l'une de ces salles :#{{TreasureRoom}} Treasure Room#{{SecretRoom}} Secret Room#{{SuperSecretRoom}} Super Secret Room#I AM ERROR Room"},
	{"325", "Paire de Ciseaux", "Sépare la tête d'Isaac de son corps#Le joueur contrôle le corps#La tête est immobile et tire en même temps que le corps#{{DamageSmall}} 3.5 dégâts par larme"},
	{"326", "Souffle de Vie", "Maintenir le bouton d'utilisation vide progressivement la barre de charge#Quand elle est vide, Isaac devient invulnérable pour une seconde#{{Warning}} Rester appuyé plus d'une seconde après que la barre a été vidée inflige des dégâts à Isaac"},
	{"327", "Le Positif", "Si Isaac subit un dégât alors qu'il n'a qu'un demi-cœur rouge ou moins, il devient invulnérable pour 5 secondes#Permet d'entrer dans le {{ColorTransform}}Chest"},
	{"328", "Le Négatif", "Si Isaac subit un dégât alors qu'il n'a qu'un demi-cœur rouge ou moins, inflige 40 dégâts à tous les ennemis de la salle#Permet d'entrer dans la {{ColorTransform}}Dark Room"},
	{"329", "La Technique Ludovico", "Remplace les larmes d'Isaac par une grosse larme déplaçable avec les boutons de tir"},
	{"330", "Lait de Soja", "↑ Débit fortement augmenté#↓ Dégâts {{ColorError}}-80%"},
	{"331", "Œil de la Providence", "↑ Dégâts {{ColorLime}}+0.5#↑ Portée {{ColorLime}}+1.2#↓ Débit {{ColorError}}-0.3#↑ Vitesse des tirs {{ColorError}}-0.3#Larmes autoguidées#Les larmes d'Isaac sont entourées d'une aura qui inflige 4.5x les dégâts d'Isaac chaque seconde"},
	{"332", "Loques de Lazare", "À sa mort, Isaac est réincarné en {{ColorLightOrange}}Lazarus Risen"},
	{"333", "L'Esprit", "Révèle l'intégralité de l'étage sur la carte"},
	{"334", "Le Corps", "{{Heart}} +3 réceptacles de cœur"},
	{"335", "L'Âme", "{{SoulHeart}} +2 cœurs d'âme#Entoure Isaac d'un halo qui dévie les ennemis et leurs projectiles"},
	{"336", "Oignon Pourri", "↓ Portée {{ColorError}}-0.25#↓ Vitesse des tirs {{ColorError}}-0.4#Larmes spectrales et transperçantes"},
	{"337", "Chronomètre Cassé", "Ralentit fortement les ennemis toutes les 4 salles#{{Warning}} Faible chance d'accélérer les ennemis au lieu de les ralentir"},
	{"338", "Boomerang", "Utiliser l'objet et appuyer sur un bouton de tir lance le boomerang#Le boomerang peut attraper des ressources et les ramener à Isaac#Toucher un ennemi avec le boomerang l'étourdit et lui inflige des dégâts"},
	{"339", "Épingle à Nourrice", "↑ Portée {{ColorLime}}+5.25#↑ Vitesse des tirs {{ColorLime}}+0.16#↑ Hauteur des larmes {{ColorLime}}+0.5#{{BlackHeart}} +1 cœur noir"},
	{"340", "Pilule de Caféine", "↑ Vitesse {{ColorLime}}+0.3#Taille diminuée#Fait apparaître une pilule"},
	{"341", "Photo Déchirée", "↑ Débit {{ColorLime}}+0.7#↑ Vitesse des tirs {{ColorLime}}+0.16"},
	{"342", "Lactarius Indigo", "{{Heart}} +1 réceptacle de cœur#↑ Débit {{ColorLime}}+0.7#↓ Vitesse des tirs {{ColorError}}-0.16"},
	{"343", "Collier à Clé", "↑ Chance {{ColorLime}}+1#{{SoulHeart}} +1 cœur d'âme#Fait apparaître 2 clés"},
	{"344", "Boîte d'Allumettes", "{{BlackHeart}} +1 cœur noir#Fait apparaître 2 ou 3 Bombes"},
	{"345", "Synthol", "↑ Dégâts {{ColorLime}}+1.0#↑ Portée {{ColorLime}}+5.25#↑ Hauteur des larmes {{ColorLime}}+0.5"},
	{"346", "Casse-Croûte", "{{Heart}} +1 réceptacle de cœur"},
	{"347", "Diplopie", "Duplique tous les objets et ressources de la salle"},
	{"348", "Placebo", "Déclenche l'effet de la pilule portée par Isaac sans la consommer"},
	{"349", "Pièce en Bois", "{{Blank}} Peut faire apparaître :#Pièce de 1 centime {{ColorSilver}}(50%)#Pièce de 5 centimes {{ColorSilver}}(5%)#Pièce de 10 centimes {{ColorSilver}}(1%)#Rien {{ColorSilver}}(44%)"},
	{"350", "Choc Toxique", "Entrer dans une salle empoisonne tous les ennemis#Les ennemis répandent une flaque toxique à leur mort"},
	{"351", "Haricot Géant", "Pétrifie tous les ennemis de la salle#Inflige des dégâts et empoisonne tous les ennemis à proximité#Envoie une vague de rochers dans une direction aléatoire"},
	{"352", "Canon de Verre", "↓ Réduit les PV d'Isaac à un demi-cœur#Tire une énorme larme spectrale et transperçante qui inflige {{ColorLime}}dégâts x10 +10"},
	{"353", "Homme Bombeur", "{{Bomb}} +5 Bombes#Les bombes d'Isaac explosent en forme de croix"},
	{"354", "Boîte de Céréales", "{{Heart}} +1 réceptacle de cœur#Fait apparaître un trinket"},
	{"355", "Collier de Maman", "↑ Portée {{ColorLime}}+1.25#↑ Chance {{ColorLime}}+1#↑ Hauteur des larmes {{ColorLime}}+0.5"},
	{"356", "Batterie de Voiture", "Double toute utilisation d'un objet activable"},
	{"357", "Boîte de Potes", "Invoque un double de chaque familier d'Isaac#{{Timer}} L'effet dure une salle"},
	{"358", "Bonnet d'Âne", "Isaac tire 2 larmes en diagonale#Larmes spectrales"},
	{"359", "Gros Clous", "↑ Dégâts {{ColorLime}}+1.5#Augmente le recul infligé par les larmes d'Isaac"},
	{"360", "Incube", "Imite les stats et effets des larmes d'Isaac"},
	{"361", "Récompense du Destin", "Tire des larmes qui imitent les dégâts et les effets de celles d'Isaac avec un plus faible débit"},
	{"362", "P'tit Coffre", "{{Blank}} Peut faire apparaître à la fin d'une salle :#Ressource {{ColorSilver}}(25%)#Trinket {{ColorSilver}}(10%)"},
	{"363", "Protecteur Dévoué", "Orbite autour d'Isaac, attire et bloque les projectiles ennemis, et inflige des dégâts de contact#Fait parfois apparaître un cœur éternel s'il bloque 10 projectiles dans une salle#{{DamageSmall}} 105 dégâts par seconde"},
	{"364", "Relation à Distance", "Orbite autour d'Isaac et inflige des dégâts de contact#{{DamageSmall}} 45 dégâts par seconde"},
	{"365", "Mouche Égarée", "Longe les murs et les obstacles et inflige des dégâts de contact#{{DamageSmall}} 105 dégâts par seconde"},
	{"366", "Bombes à Fragmentation", "{{Bomb}} +5 Bombes#Les bombes d'Isaac se divisent en 2 à 4 mini-bombes en explosant"},
	{"367", "Bombes Arachnides", "{{Bomb}} +5 Bombes#Les bombes placées par Isaac collent aux ennemis#Les ennemis tués par des bombes invoquent 2 à 4 araignées bleues"},
	{"368", "Épiphora", "Tirer dans la même direction augmente progressivement le débit jusqu'à 200%"},
	{"369", "Continuum", "↑ Portée {{ColorLime}}+2.25#↑ Hauteur des larmes {{ColorLime}}+1.5#Les larmes qui disparaissent d'un côté de l'écran reviennent du côté opposé"},
	{"370", "Mme Poupée", "↑ Débit {{ColorLime}}+0.7#↑ Portée {{ColorLime}}+5.25#↑ Hauteur des larmes {{ColorLime}}+0.5#Fait apparaître 3 cœurs "},
	{"371", "Fléau de la Maison Dieu", "Fait apparaître 6 Troll Bombs quand Isaac subit un dégât#Les Troll Bombs imitent les effets des bombes d'Isaac"},
	{"372", "Bébé Chargé", "Peut parfois faire apparaître une pile, paralyser tous les ennemis de la salle ou ajouter une charge à l'objet activable"},
	{"373", "Œil de Lynx", "↑ Dégâts {{ColorLime}}+12.5%{{ColorWhite}} pour chaque larme consécutive qui touche un ennemi#Plafonne à {{ColorLime}}dégâts x2#Ne pas toucher d'ennemi avec une larme peut remettre le bonus à zéro"},
	{"374", "Saint Éclat", "Isaac tire parfois une larme sacrée qui frappe l'ennemi touché d'un rayon de lumière#Le rayon inflige 400% des dégâts d'Isaac#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à 9 Chance)"},
	{"375", "Crâne d'Hôte", "20% de chances de bloquer les projectiles ennemis#Rend Isaac invulnérable aux explosions#Rend Isaac invulnérable aux coups de pieds de {{ColorCyan}}Mom{{ColorWhite}} et {{ColorCyan}}Satan"},
	{"376", "Réapprovisionnement", "Les objets et ressources achetés à la boutique sont réapprovisionnées après chaque achat, permettant d'en acheter plusieurs#Fait apparaître 3 ressources"},
	{"377", "Cocon Éclaté", "Les araignées ne prennent plus pour cible ni n'infligent de dégâts à Isaac"},
	{"378", "Grosse Commission", "Tirer pendant 3 secondes fait apparaître une bombe caca à la position d'Isaac"},
	{"379", "Polycorie", "Augmente la taille des larmes d'Isaac#Larmes spectrales"},
	{"380", "Fente Magique", "{{Coin}} +5 Pièces#Les portes qui doivent être ouvertes par une clé se déverrouillent avec une pièce"},
	{"381", "Bénédiction d'Éden", "↑ Débit {{ColorLime}}+0.7#Donne à Isaac un objet aléatoire au début de la prochaine partie"},
	{"382", "Boule à Monstres", "Jeter la boule sur un ennemi le capture#Lancer une boule qui contient un ennemi le fait sortir et se battre aux côtés d'Isaac"},
	{"383", "Détonateur Lacrymal", "Divise en 6 toutes les larmes d'Isaac à l'écran"},
	{"384", "P'tit Boris", "Charge quand Isaac tire, puis se propulse à travers la salle et rebondit contre les murs quand les boutons de tirs sont relâchés"},
	{"385", "Bumbo", "Ramasse les pièces au sol#Évolue et change de capacités après avoir ramassé assez de pièces#Peut faire apparaître une ressource pour chaque pièce ramassée"},
	{"386", "D12", "Rejoue tous les rochers de la salle"},
	{"387", "Encensoir", "Suit Isaac entouré d'une aura de lumière qui ralentit les ennemis et projectiles qui y entrent"},
	{"388", "Cléchard", "Ramasse les clés au sol et fait parfois apparaître des coffres en échange"},
	{"389", "Sac de Runes", "Fait apparaître une rune toutes les 5 ou 6 salles"},
	{"390", "Séraphin", "Tire des larmes autoguidées#{{DamageSmall}} 10 dégâts par larme"},
	{"391", "Trahison", "Subir un dégât envoûte tous les ennemis de la salle"},
	{"392", "Zodiaque", "Donne à Isaac l'effet d'un objet du zodiaque aléatoire#L'effet accordé change à chaque étage"},
	{"393", "Baiser du Serpent", "Les larmes ont une chance d'empoisonner les ennemis#Entrer en contact avec un ennemi l'empoisonne#Les ennemis qui meurent sous l'effet du poison ont 20% de chances de lâcher un cœur noir"},
	{"394", "Ligne de Mire", "↑ Débit {{ColorLime}}+0.7#↑ Hauteur des larmes {{ColorLime}}+0.3#↑ Portée {{ColorLime}}+3.15#Isaac tire automatiquement en direction d'une cible rouge  avec les boutons de tir"},
	{"395", "Tech X", "Les larmes d'Isaac sont remplacées par des anneaux laser#La taille des anneaux augmente avec la durée de la charge"},
	{"396", "Scalpel Ventriculaire", "Utiliser l'objet place un trou orange ou bleu au sol#Si les deux sont posés, entrer dans l'un des trous téléporte Isaac à l'autre#Placer un nouveau trou remplace le plus ancien des deux"},
	{"397", "Rayon Tracteur", "↑ Hauteur des larmes {{ColorLime}}+0.5#↑ Débit {{ColorLime}}+0.5#↑ Portée {{ColorLime}}+5.25#↑ Vitesse des tirs {{ColorLime}}+0.16#Les larmes d'Isaac volent en ligne droite en suivant un rayon de lumière#Se déplacer sur les côtés déplace également les larmes"},
	{"398", "Chair des Dieux", "Isaac tire parfois une larme rétrécissante#Marcher sur un ennemi rétréci le tue#Les ennemis retrouvent leur taille après 5 secondes"},
	{"399", "Gouffre du Néant", "↑ Dégâts {{ColorLime}}+1.0#Tirer pendant 3 secondes fait apparaître une croix rouge sur la tête d'Isaac#Relâcher les boutons de tir crée un anneau noir autour de lui qui inflige des dégâts de contact#Les ennemis tués avec le halo noir ont une chance de lâcher un cœur noir"},
	{"400", "Sainte Lance", "Isaac brandit devant lui une lance qui inflige des dégâts et terrifie parfois les ennemis au contact#La lance ne remplace pas les larmes d'Isaac"},
	{"401", "Explosivo", "25% de chances de tirer une larme collante#Les larmes collantes s'attachent aux ennemis et explosent après quelques secondes"},
	{"402", "Chaos", "Tous les futurs objets proviendront d'une banque d'objet aléatoire au lieu de celle de la salle où ils sont générés#Fait apparaître 1 à 6 ressources"},
	{"403", "Roboraignée", "Affiche les PV des ennemis#Inflige un effet aléatoire aux ennemis qui entrent en contact avec elle#Fait parfois apparaître une pile"},
	{"404", "Bébé Péteur", "Bloque les projectiles ennemis#S'il est touché par un projectile ennemi, le familier pète et envoûte, empoisonne ou repousse les ennemis"},
	{"405", "Bug", "Rebondit contre les murs de la salle#Inflige des dégâts et un effet aléatoire aux ennemis avec lesquels il entre en contact#Rejoue parfois les ressources avec lesquelles il entre en contact#{{DamageSmall}} 120 dégâts par seconde"},
	{"406", "D8", "Rejoue les stats de dégâts, débit, portée et vitesse d'Isaac"},
	{"407", "Pureté", "{{Blank}} Augmente une stat en fonction de la couleur de l'aura qui entoure Isaac#{{Blank}} {{ColorRed}}Rouge{{ColorWhite}} = Dégâts {{ColorLime}}+4.0#{{Blank}} {{ColorCyan}}Bleu{{ColorWhite}} = Débit {{ColorLime}}+4.0#{{Blank}} {{ColorYellow}}Jaune{{ColorWhite}} = Vitesse {{ColorLime}}+0.5#{{Blank}} {{ColorOrange}}Orange{{ColorWhite}} = Portée {{ColorLime}}+7.5#Subir un dégât fait disparaître l'effet pour la durée d'une salle"},
	{"408", "Athamé", "Subir un dégât entoure Isaac d'un anneau noir qui inflige des dégâts de contact aux ennemis#Les ennemis tués par le halo noir ont une chance de lâcher un cœur noir"},
	{"409", "Flacon Vide", "{{BlackHeart}} +2 cœurs noirs#Quand Isaac n'a pas de cœurs rouges, il peut voler et devient brièvement invulnérable toutes les 40 secondes"},
	{"410", "Mauvais Œil", "Isaac tire parfois un œil qui se déplace lentement en ligne droite#L'œil tire des larmes identiques à celles d'Isaac#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(10% à 20 Chance)"},
	{"411", "Sang Salace", "↑ Dégâts {{ColorLime}}+0.5{{ColorWhite}} pour chaque ennemi tué dans une salle#Plafonne à {{ColorLime}}dégâts +5 {{ColorSilver}}(10 ennemis tués)#Le bonus persiste pour la durée d'une salle"},
	{"412", "Conception Impure", "Subir suffisamment de dégâts invoque un familier démoniaque permanent#Peut invoquer jusqu'à 4 familiers {{ColorSilver}}(90 dégâts subis)"},
	{"413", "Immaculée Conception", "Ramasser 15 cœurs invoque un familier angélique permanent#Peut invoquer jusqu'à 5 familiers"},
	{"414", "Plus d'Options", "Permet à Isaac de choisir entre deux objets dans les Treasure Rooms {{TreasureRoom}}"},
	{"415", "Couronne de Lumière", "{{SoulHeart}} +2 Cœurs d'âme#↑ Dégâts {{ColorLime}}+100%#↑ Portée {{ColorLime}}+5.25#↑ Vitesse des tirs {{ColorError}}-0.3#Subir un dégât désactive ces effets pour la durée d'une salle#Les effets restent désactivés tant que tous les réceptacles de cœurs d'Isaac ne sont pas remplis"},
	{"416", "Poches Profondes", "Permet à Isaac de porter 2 cartes, pilules ou runes"},
	{"417", "Succube", "Rebondit à travers la salle entourée d'une aura qui donne {{ColorLime}}Dégâts +50%{{ColorWhite}} à Isaac et inflige des dégâts aux ennemis"},
	{"418", "Cake aux Fruits", "Donne à chaque larme d'Isaac un effet aléatoire"},
	{"419", "Téléportation 2.0", "Téléporte Isaac dans une salle inexplorée#{{Blank}} Ordre de téléportation#{{Blank}} {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>#{{Blank}} {{SacrificeRoom}}>{{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>#{{Blank}} {{ChallengeRoom}}>{{IsaacsRoom}}>{{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>#{{Blank}}#{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"},
	{"420", "Poudre Noire", "Dessiner un cercle en marchant crée un pentagramme sur le sol#Le pentagramme inflige des dégâts aux ennemis qui marchent dessus"},
	{"421", "Haricot Rouge", "Isaac pète, envoûte et inflige 5 dégâts aux ennemis à proximité"},
	{"422", "Sablier Luisant", "Remonte le temps et ramène Isaac dans la salle précédente#Annule toutes les actions faites, les dégâts subis, les ressources ramassées dans la salle où l'objet a été utilisé"},
	{"423", "Cercle de Protection", "Entoure Isaac d'un halo de lumière qui inflige des dégâts de contact et peut renvoyer les projectiles ennemis"},
	{"424", "Sac en Papier", "Les pièces ont 10% de chances d'être converties en sachet {{GrabBag}}#Les autres ressources ont 20% de chances d'être converties en sachet {{GrabBag}}#Fait apparaître un sachet "},
	{"425", "Veilleuse", "Éclaire dans la direction des mouvements d'Isaac#Ralentit les ennemis et projectiles pris dans le rayon de lumière"},
	{"426", "Admiratrice Obsessionnelle", "Suit Isaac avec un délai#Inflige des dégâts de contact#{{DamageSmall}} 30 dégâts par seconde"},
	{"427", "Bloc de TNT", "Place un baril de TNT qui peut être déplacé#Utiliser l'objet une seconde fois fait exploser le baril à distance"},
	{"428", "Pyjama", "{{SoulHeart}} +4 cœurs d'âme#{{HealingRed}} Soin complet"},
	{"429", "Tête du Gardien", "Toucher un ennemi avec une larme a 5% de chances de faire apparaître une pièce"},
	{"430", "Papa Mouche", "Suit Isaac avec un délai#Tire des larmes qui infligent les dégâts d'Isaac sur les ennemis à proximité"},
	{"431", "Bébé Interdimensionnel", "Suit Isaac avec un délai#Duplique et accélère les larmes d'Isaac qui le traversent"},
	{"432", "Bombes à Paillettes", "{{Bomb}} +5 bombes#Les bombes d'Isaac font parfois apparaître des ressources en explosant"},
	{"433", "Mon Ombre", "Subir un dégât terrifie tous les ennemis de la salle et invoque une sangsue amicale#La sangsue inflige 5 dégâts de contact par seconde#La sangsue meurt si elle subit trop de dégâts"},
	{"434", "Bocal de Mouches", "Tuer un ennemi ajoute une mouche bleue au bocal#Le bocal peut contenir jusqu'à 20 mouches#Utiliser l'objet libère autant de mouches bleues qu'indiqué sur le bocal"},
	{"435", "P'tit Loki", "Tire dans les 4 directions#{{DamageSmall}} 3.5 dégâts par larme"},
	{"436", "Tasse de Lait", "Subir un dégât donne {{ColorLime}}débit +2{{ColorWhite}} pour une salle"},
	{"437", "D7", "Fait rapparaître tous les ennemis de la salle et ferme les portes#Éliminer les ennemis fera apparaître la récompense de la salle à nouveau"},
	{"438", "Tétine", "↑ Débit {{ColorLime}}+0.7#↑ Taille diminuée#{{SoulHeart}} +1 cœur d'âme"},
	{"439", "Boîte de Maman", "↑ Chance {{ColorLime}}+1{{ColorWhite}} tant qu'Isaac porte l'objet#Génère un trinket#Double les effets des trinkets"},
	{"440", "Calcul Rénal", "↓ Vitesse {{ColorError}}-0.2#↓ Portée {{ColorError}}-15#↑ Hauteur des larmes {{ColorLime}}+2.0#Change régulièrement les larmes d'Isaac en une attaque chargée#Relâcher le bouton de tir quand l'attaque est chargée crache un gros caillot suivi d'une gerbe de tirs rapides"},
	{"441", "Souffle du Diable", "Tire un énorme laser de sang pendant 15 secondes#Le laser persiste entre les salles et les étages"},
	{"442", "Couronne des Ténèbres", "{{Warning}}Avoir précisément 1 cœur rouge rempli donne :#↑ Portée {{ColorLime}}+1.5#↑ Débit {{ColorLime}}+0.75#↑ Vitesse des tirs {{ColorLime}}+0.2"},
	{"443", "Pomme !", "↑ Débit {{ColorLime}}+0.4#Isaac tire parfois une lame de rasoir qui inflige {{ColorLime}}dégâts x4#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 14 Chance)"},
	{"444", "Crayon de Papier", "Toutes les 15 larmes tirées, Isaac crache une gerbe de larmes#La gerbe inflige {{ColorLime}}dégâts x2"},
	{"445", "Dent de Chien", "↑ Dégâts {{ColorLime}}+0.3#↑ Vitesse {{ColorLime}}+0.1#Un hurlement de chien retentit dans les salles voisines aux Secret {{SecretRoom}} et Super Secret rooms {{SuperSecretRoom}}#Un aboiement retentit dans les salles où un rocher cache une trappe vers un Crawl Space {{LadderRoom}}"},
	{"446", "Dent Pourrie", "Tirer entoure Isaac d'une aura qui empoisonne les ennemis qui y entrent"},
	{"447", "Haricot Péteux", "Tirer pendant 7.5 secondes crée un nuage qui inflige des dégâts de contact aux ennemis"},
	{"448", "Bris de Verre", "{{Blank}} Subir des dégâts peut :#Faire apparaître un cœur rouge {{ColorSilver}}(25%)#Donner l'effet d'{{ColorYellow}}Anemic{{ColorWhite}}{{Collectible214}} {{ColorSilver}}(10%)"},
	{"449", "Plaque de Fer", "{{SoulHeart}} +1 cœur d'âme#25% de chances de renvoyer un projectile ennemi"},
	{"450", "Œil d'Avarice", "Toutes les 20 larmes, Isaac tire une larme en forme de pièce qui transforme les ennemis en statues d'or#Tuer un ennemi doré fait apparaître 1 à 4 pièces#Tirer une larme en forme de pièce retire 1 pièce à Isaac"},
	{"451", "Nappe de Tarot", "Fait apparaître une carte ou une rune#Double les effets des cartes et des runes"},
	{"452", "Varices", "Subir un dégât projette 10 larmes en cercle autour d'Isaac"},
	{"453", "Fracture Ouverte", "↑ Portée +1.5#Remplace les larmes d'Isaac par des os#Les os se brisent en 1 à 3 morceaux au contact d'un objet, d'un ennemi ou d'un mur"},
	{"454", "Polydactylie", "Permet à Isaac de porter deux cartes, runes ou pilules#Fait apparaître une carte, rune ou pilule"},
	{"455", "Médaille de Papa", "↑ Portée {{ColorLime}}+1.5#Fait apparaître un lucky penny"},
	{"456", "Encas de Minuit", "{{Heart}} +1 réceptacle de cœur"},
	{"457", "Crâne d'Œuf", "{{SoulHeart}} +1 cœur d'âme#20% de chances de nullifier un dégât subi"},
	{"458", "Nombril", "Permet à Isaac de porter deux trinkets#Fait apparaître un trinket"},
	{"459", "Sinusite", "20% de chances de tirer une crotte de nez#Les crottes de nez se collent aux ennemis et infligent des dégâts une fois par seconde#Les crottes de nez se décollent si l'ennemi meurt, s'enterre, saute hors de l'écran ou au bout de 60 secondes"},
	{"460", "Glaucome", "Isaac tire parfois une larme étourdissante#L'effet infligé aux ennemis par ces larmes est permanent#L'effet infligé aux boss est long mais temporaire"},
	{"461", "Parasitoïde", "Isaac tire parfois un cocon#Toucher un ennemi avec un cocon invoque 1 ou 2 mouches ou araignées bleues et répand une flaque ralentissante#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à 5 Chance)"},
	{"462", "Œil de Bélial", "Larmes transperçantes#Après avoir transpercé un ennemi, les larmes infligent {{ColorLime}}dégâts x2{{ColorWhite}} et deviennent autoguidées"},
	{"463", "Acide Sulfurique", "↑ Dégâts {{ColorLime}}+0.3#Isaac tire parfois des larmes corrosives#Les larmes corrosives détruisent les obstacles, les portes et les entrées des Secret Rooms {{SecretRoom}} et Super Secret Rooms {{SuperSecretRoom}}"},
	{"464", "Marque d'Harmonie", "{{SoulHeart}} +2 cœurs d'âme#Les ressources lâchées par les ennemis d'élite changent selon ce qui manque à Isaac"},
	{"465", "Stick Analogique", "↑ Débit {{ColorLime}}+0.35#Permet à Isaac de tirer en diagonale {{ColorSilver}}(Clavier/boutons)#Permet à Isaac de tirer dans n'importe quelle direction {{ColorSilver}}(Joystick)"},
	{"466", "Contagion", "Le premier ennemi tué dans une salle explose et empoisonne les ennemis à proximité#Les ennemis tués par le poison explosent à leur tour"},
	{"467", "Doigt Accusateur", "Inflige des dégâts aux ennemis qu'il vise#Peut éteindre les feux et détruire les cacas#{{DamageSmall}} Inflige 10% des dégâts d'Isaac"},
	{"468", "Ombre", "Suit Isaac avec un délai#Après avoir infligé 600 dégâts de contact, elle est absorbée par Isaac et lui permet d'infliger des dégâts de contact#{{DamageSmall}} 30 dégâts par seconde"},
	{"469", "Dépression", "Suit Isaac et répand une traînée d'eau qui inflige des dégâts de contact#Les ennemis qui entrent en contact avec le nuage se font parfois frapper par un rayon de lumière"},
	{"470", "P'tit Murmure", "Rebondit contre les murs de la salle et inflige des dégâts de contact#Tirer l'immobilise#{{DamageSmall}} 30 dégâts par seconde"},
	{"471", "P'tit Monstro", "Charge et crache une gerbe de larmes#{{DamageSmall}} 3.5 dégâts par larme"},
	{"472", "Bébé Roi", "Tirer immobilise tous les familiers#Arrêter de tirer téléporte les familiers à Isaac"},
	{"473", "Gros Dodu", "Se déplace lentement dans la direction des tirs d'Isaac#Bloque les projectiles ennemis et inflige des dégâts de contact#{{DamageSmall}} 40.5 dégâts par seconde"},
	{"474", "Amygdale", "Bloque les projectiles"},
	{"475", "Suppo de Satan", "Tue instantanément tous les ennemis et boss de la salle, puis tue Isaac 3 secondes après"},
	{"476", "D1", "Duplique une ressource aléatoire dans la salle"},
	{"477", "Néant", "Absorbe tous les objets sur piédestal de la salle#Objets actifs :#{{Blank}} Les prochaines utilisations de Void activeront l'effet de tous les objets absorbés#Objets passifs :#{{Blank}} Augmente 2 stats aléatoires"},
	{"478", "Pause", "Immobilise tous les ennemis de la salle#Les ennemis immobilisés peuvent infliger des dégâts de contact à Isaac#{{Timer}}L'effet prend fin si Isaac tire"},
	{"479", "Fondeuse", "Absorbe le trinket porté par Isaac et active son effet de manière permanente"},
	{"480", "Composte", "Convertit toutes les ressources dans la salle en mouches ou araignées bleues#Double les mouches et araignées bleues déjà présentes"},
	{"481", "Pioche Pirate", "↑ Augmente une stat#↓ Diminue une stat#Donne aux larmes d'Isaac des effets aléatoires#Déforme visuellement les éléments de la salle#{{Timer}} L'effet dure une salle"},
	{"482", "Télécommande", "Transforme le personnage actuel en un autre personnage au hasard#Retire de l'inventaire du personnage le dernier objet passif obtenu"},
	{"483", "Mama Méga", "Ravage toutes les salles inexplorées de l'étage d'une énorme explosion#Si Isaac possède une bombe dorée, utiliser Mama Méga la consomme et permet à l'objet d'être utilisé une seconde fois"},
	{"484", "Attends, Quoi ?", "Isaac pète, repousse les ennemis et provoque une vague de rochers"},
	{"485", "Pièce Tordue", "{{ColorLime}}50%{{ColorWhite}} de chances de dupliquer toutes les ressources et objets de la salle#{{ColorError}}50%{{ColorWhite}} de chances de remplacer toutes les ressources et objets de la salle par une pièce"},
	{"486", "Lame Émoussée", "Inflige un dégât factice à Isaac qui ne retire pas de points de vie#Déclenche les effets qui s'activent quand Isaac subit des dégâts"},
	{"487", "Épluche-Légumes", "↑ Dégâts {{ColorLime}}+0.2#Retire un réceptacle de cœur#Donne {{ColorYellow}}Cube of Meat{{ColorWhite}}{{Collectible73}}"},
	{"488", "Métronome", "Active l'effet d'un objet activable ou passif aléatoire#{{Timer}} L'effet dure une salle"},
	{"489", "Dé Infini", "Active l'effet d'un dé aléatoire"},
	{"490", "Âme d'Éden", "Fait apparaître deux objets#Les objets proviennent de la banque d'objets de la salle où se trouve Isaac"},
	{"491", "Bébé Drogué", "Fait apparaître une pilule toutes les 3 salles#Avaler une pilule empoisonne tous les ennemis de la salle"},
	{"492", "Fée Agaçante", "↑ Chance {{ColorLime}}+1#Révèle la position des rochers marqués, des entrées de Crawl Spaces {{LadderRoom}}, des Secret Rooms {{SecretRoom}} et des Super Secret Rooms {{SuperSecretRoom}}"},
	{"493", "Adrénaline", "Pour chaque réceptacle de cœur vide :#↑ Dégâts {{ColorLime}}+0.2"},
	{"494", "Échelle de Jacob", "Les larmes génèrent des arcs électriques en touchant un mur, un obstacle ou un ennemi"},
	{"495", "Piment Fantôme", "Isaac tire parfois une flamme bleue qui inflige des dégâts de contact et bloque les projectiles ennemis#La flamme disparait après avoir bloqué 5 projectiles ou infligé des dégâts 5 fois#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à 10 Chance)"},
	{"496", "Euthanasie", "Isaac tire parfois une seringue#Les seringues tuent instantanément les ennemis et se divisent en 10 larmes#Les seringues infligent {{ColorLime}}dégâts x3{{ColorWhite}} aux boss#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 14.5 Chance)"},
	{"497", "Slip Camouflage", "Isaac est camouflé et étourdit les ennemis au début de chaque salle#L'effet disparait dès qu'Isaac tire"},
	{"498", "Dualité", "Fait apparaître les portes du Devil Deal {{DevilRoom}} et de l'Angel Room {{AngelRoom}} si l'une des deux doit apparaître#Entrer dans une des salles fait disparaître l'autre#Ne garantit pas l'apparition des portes"},
	{"499", "Eucharistie", "Garantit l'apparition des Angel Rooms {{AngelRoom}}"},
	{"500", "Sac de Sacs", "Fait apparaître un sachet {{GrabBag}} toutes les 5 ou 6 salles"},
	{"501", "Gosier d'Avarice", "{{Heart}} +1 réceptacle de cœur toutes les 25 pièces au compteur"},
	{"502", "Grosse Pustule", "Isaac tire parfois une pustule qui inflige {{ColorLime}}dégâts x2{{ColorWhite}} et répand une flaque ralentissante#Subir un dégât tire une pustule"},
	{"503", "P'tite Corne", "Isaac tire parfois une larme transperçante qui tue instantanément les ennemis qu'elle touche#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(20% à 15 Chance)"},
	{"504", "Bout de Crotte", "Invoque une mouche immobile qui tire sur les ennemis à proximité#{{DamageSmall}} 2 dégâts par larme"},
	{"505", "Poké Go", "Entrer dans une salle hostile a 20% de chances d'invoquer un monstre allié"},
	{"506", "Traîtrise", "Toucher un enenmi dans le dos avec une larme inflige le double de dégâts et le fait saigner#Le saignement retire 10% des PV totaux de l'ennemi toutes les 5 secondes"},
	{"507", "Paille Aiguisée", "Inflige les dégâts d'Isaac et retire 10% des PV totaux de tous les ennemis de la salle#Infliger des dégâts avec cet objet génère parfois un demi-cœur d'âme"},
	{"508", "Rasoir de Maman", "Orbite autour d'Isaac#Inflige {{ColorLime}}dégâts x3{{CR}} et fait saigner les ennemis au contact#Le saignement retire 10% des PV totaux de l'ennemi toutes les 5 secondes"},
	{"509", "Nœnœil", "Orbite autour d'Isaac et inflige des dégâts de contact#Tire une larme toutes les 2 secondes#{{DamageSmall}} 30 dégâts par seconde#{{Blank}} 3.5 dégâts par larme"},
	{"510", "Délire", "Invoque un boss allié#{{Timer}} L'effet dure une salle"},
	{"511", "Mouche Enragée", "Orbite un ennemi et inflige des dégâts de contact#Attaque parfois l'ennemi qu'elle orbite#{{DamageSmall}} 30 dégâts par seconde"},
	{"512", "Trou Noir", "Permet à Isaac de lancer un trou noir qui attire tout dans la salle, inflige des dégâts de contact et détruit les rochers à proximité"},
	{"513", "Bozo", "↑ Dégâts {{ColorLime}}+0.1#{{SoulHeart}} +1 cœur d'âme#Envoûte ou terrifie parfois un ennemi#Subir un dégât fait parfois apparaître un caca arc-en-ciel"},
	{"514", "Routeur Cassé", "Paralyse parfois les ennemis et projectiles#25% de chances de dupliquer une récompense de salle#{{LuckSmall}} Effet affecté par la statistique de chance"},
	{"515", "Cadeau Surprise", "Fait apparaître un objet aléatoire qui provient de la banque d'objets de la salle où il a été ouvert#Peut faire apparaître {{ColorYellow}}A Lump of Coal{{ColorWhite}}{{Collectible132}} ou {{ColorYellow}}The Poop{{ColorWhite}}{{Collectible36}} à la place#{{LuckSmall}} Effet affecté par la statistique de chance"},
	{"516", "Arroseur Automatique", "Place un arroseur qui tourne sur lui-même et tire des larmes identiques à celles d'Isaac"},
	{"517", "Bombes Éclair", "{{Bomb}} +7 Bombes#Permet à Isaac de poser plusieurs bombes sans délai"},
	{"518", "Pote en Boîte", "Familier dont l'apparence et les effets de larmes changent à chaque étage"},
	{"519", "P'tit Delirium", "Se transforme en un familier au hasard toutes les 10 secondes"},
	{"520", "Câbles de Démarrage", "Tuer 15 ennemis charge une barre de l'objet activable"},
	{"521", "Coupon", "Rend gratuit un objet payant dans la salle#Fonctionne pour les coûts en pièces et en PV#Garantit un objet en solde au Shop {{Shop}} tant qu'Isaac porte l'objet"},
	{"522", "Télékinésie", "Entoure Isaac d'une aura qui immobilise les projectiles ennemis#Après 3 secondes, les projectiles immobilisés sont renvoyés"},
	{"523", "Carton de Déménagement", "Utiliser l'objet absorbe toutes les ressources et objets de la salle#Utiliser l'objet à nouveau pose les éléments absorbés sur le sol"},
	{"524", "Technologie Zéro", "Relie les larmes d'Isaac par des arcs électriques"},
	{"525", "Lèpre", "Subir un dégât invoque jusqu'à 3 orbitaux qui bloquent les projectiles ennemis et infligent des dégâts de contact#Les orbitaux peuvent mourir#{{DamageSmall}} 35 dégâts par seconde"},
	{"526", "Livre des 7 Sceaux", "Familier Cavalier de l'Apocalypse qui inflige des dégâts de contact et invoque des locustes#Le cavalier et le type de locustes changent toutes les 10 secondes"},
	{"527", "Boîte à Larbin", "Utiliser l'objet affiche un curseur déplaçable#Après quelques secondes, invoque un familier qui va interagir avec l'élément le plus proche du curseur#Peut voler des objets, ouvrir des serrures ou exploser des obstacles"},
	{"528", "Prisme Angélique", "Orbite autour d'Isaac et quadruple les larmes qui passent à travers"},
	{"529", "Pop !", "Les larmes d'Isaac rebondissent entre elles et contre les murs et les obstacles"},
	{"530", "La Liste de la Mort", "Récompense Isaac s'il tue les ennemis dans l'ordre indiqué par la marque {{DeathMark}}"},
	{"531", "Haemolacria", "Isaac tire de grosses larmes en cloche#Les larmes éclatent en larmes plus petites en touchant le sol ou un ennemi"},
	{"532", "Lachryphagie", "Les larmes d'Isaac ralentissent avec la distance#Une fois à l'arrêt, elles éclatent en 5 à 8 larmes#Plusieurs larmes peuvent fusionner en une larme plus grosse"},
	{"533", "Trisagion", "Remplace les larmes d'Isaac par des rayons de lumière#Les rayons de lumière infligent {{ColorError}}dégâts -66%{{ColorWhite}} mais peuvent toucher le même ennemi plusieurs fois#Larmes transperçantes"},
	{"534", "Cartable", "Permet à Isaac de porter deux objets activables#Les objets peuvent être échangés avec le bouton {{ColorSilver}}[Lâcher]"},
	{"535", "Couverture", "{{SoulHeart}} +1 cœur d'âme#{{HealingRed}} Soigne 1 cœur rouge#Nullifie le premier dégât subi dans une salle de boss"},
	{"536", "Autel Sacrificiel", "Sacrifie jusqu'à 2 des familiers d'Isaac#Chaque familier sacrifié fait apparaître un objet diabolique"},
	{"537", "P'tit Spewer", "Crache des flaques#Avaler une pilule change la couleur et l'effet des flaques du familier#Fait apparaître une pilule"},
	{"538", "Sac de Billes", "Fait apparaître 3 trinkets#Subir un dégât a 5% de chances d'absorber le trinket porté par Isaac et d'activer ses effets de manière permanente"},
	{"539", "Œuf Mystère", "Subir un dégât invoque un ennemi envoûté#Plus Isaac termine de salles sans subir de dégâts, plus l'ennemi invoqué est puissant"},
	{"540", "Pierre Plate", "Les larmes d'Isaac rebondissent sur le sol et infligent des dégâts de zone à chaque rebond"},
	{"541", "Moelle", "{{EmptyBoneHeart}} +1 cœur d'os#Fait apparaître 3 cœurs rouges"},
	{"542", "Côte Cassée", "Orbite autour d'Isaac et dévie les projectiles"},
	{"543", "Terre sacrée", "Subir un dégât fait apparaître un caca sacré entouré d'une aura#Quand Isaac se tient à l'intérieur de l'aura :#↑ Débit augmenté#Chance de nullifier un dégât subi"},
	{"544", "Côte Pointue", "Pointe dans la direction où tire Isaac et inflige des dégâts de contact#{{DamageSmall}} {{ColorLime}}Dégâts x6{{CR}} par seconde"},
	{"545", "Livre des Morts", "Invoque jusqu'à 8 entités squelettiques selon le nombre d'ennemis tués dans la salle"},
	{"546", "Bague de Papa", "Entoure Isaac d'un halo qui pétrifie les ennemis au contact"},
	{"547", "Acte de Divorce", "{{EmptyBoneHeart}} +1 cœur d'os#↑ Débit {{ColorLime}}+0.7#Fait apparaître {{ColorYellow}}Mysterious Paper{{Trinket21}}"},
	{"548", "Mandibule", "Part dans la direction des tirs d'Isaac puis revient#Inflige des dégâts de contact et peut ramener des ressources#{{DamageSmall}} 7 dégâts par ennemi"},
	{"549", "Os de Verre", "{{EmptyBoneHeart}} +6 cœurs d'os#Retire tous les réceptacles de cœur d'Isaac#Perdre un cœur d'os envoie 8 os en cercle autour d'Isaac et donne {{ColorLime}}débit +0.5"},
	{"550", "Pelle Brisée", "Le pied de {{ColorCyan}}Mom{{ColorWhite}} tente en permanence d'écraser Isaac#Utiliser cet objet cesse les attaques pour la durée d'une salle ou d'une vague#{{Warning}} Poser cet objet sur un piédestal puis quitter la salle le fait disparaître#{{UltraSecretRoom}} Emporte la pelle avec toi le plus loin possible"},
	{"551", "Pelle Brisée", "Le deuxième morceau d'une pelle maudite#{{UltraSecretRoom}} Permet de déterrer quelque chose d'enfoui dans la {{ColorTransform}}Dark Room"},
	{"552", "Pelle de Maman", "Ouvre une trappe vers l'étage suivant#{{UltraSecretRoom}} Permet de déterrer quelque chose d'enfoui dans la {{ColorTransform}}Dark Room"},

}


---------- Modifiers ----------

-- Effect of Car battery on Active Items
EID.descriptions[languageCode].carBattery = {
	["No Effect"] = "Aucun effet",
	[34] = {"+2", "+4"}, -- Book of Belial
	[35] = {40, 80}, -- Necronomicon
	[37] = {110, 220}, -- Mr. Boom
	[38] = {10, 20}, --Tammy's Head
	[45] = {"un cœur rouge", "2 {{ColorWhite}}cœurs rouges"}, -- Yum Heart
	[58] = {10, 20}, -- Book of Shadows
	[65] = {6, 12}, -- Anarchist Cookbook
	[66] = {8, 16}, -- The Hourglass
	[77] = {6, 12}, -- My Little Unicorn
	[78] = {"+1 cœur", "+2 {{ColorWhite}}cœurs"}, -- Book of Revelations
	[83] = {"{{BlackHeart}} {{BlinkYellowGreen}}+1 cœur noir#↑ Dégâts {{BlinkYellowGreen}}+1.4#↓ Vitesse {{ColorError}}-0.18#Permet à Isaac d'infliger des dégâts de contact et d'écraser les obstacles#{{Timer}} L'effet dure une salle"}, -- The Nail
	[85] = {"une carte", "2 {{ColorWhite}}cartes"}, -- Deck of Cards
	[86] = "{{BlinkYellowGreen}}Double{{ColorWhite}} les dégâts infligés par Monstro", -- Monstro's Tooth
	[93] = {6.5, 13}, -- The Gamekid
	[97] = {"une ressource aléatoire", "2{{ColorWhite}} ressources aléatoires"},
	[102] = {"une pilule", "2{{ColorWhite}} pilules"}, --Mom's Bottle of Pills
	[105] = {"Rejoue", "{{ColorWhite}}Rejoue{{ColorYellow}} deux fois"}, -- D6
	[107] = {"Permet à Isaac de voler#{{BlinkYellowGreen}}2{{ColorWhite}} corps d'Isaac se séparent de sa tête, pourchassent les ennemis et infligent des dégâts de contact"}, -- The Pinking Shears
	[111] = "Double les dégâts du pet", -- The Bean
	[123] = {"un familier aléatoire", "2{{ColorWhite}} familiers aléatoires"}, -- Monster Manual
	[124] = {"d'un objet activable aléatoire","{{ColorWhite}}de {{BlinkYellowGreen}}2{{ColorWhite}} objets activables aléatoires"}, -- Dead Sea Scrolls
	[136] = {"Place {{BlinkYellowGreen}}2{{ColorWhite}} peluches qui attirent les ennemis et explosent après 5 secondes"}, -- Best Friend
	[145] = {"2 à 4","4 à 7"}, -- Guppy's Head
	[146] = {"{{Heart}} +1 {{BlinkYellowGreen}}réceptacle de cœur"}, -- Prayer Card
	[158] = {"une carte ou un cœur d'âme", "2{{ColorWhite}} cartes ou cœurs d'âme"}, -- Crystal Ball	
	[160] = {5, 10}, -- Crack the Sky
	[171] = {10, 20}, -- Spider Butt
	[283] = {"Rejoue", "{{ColorWhite}}Rejoue{{ColorYellow}} deux fois"}, -- D100
	[284] = {"Rejoue", "{{ColorWhite}}Rejoue{{ColorYellow}} deux fois"}, -- D4
	[286] = {"Déclenche", "{{ColorWhite}}Déclenche {{BlinkYellowGreen}}2 fois"}, -- Blank Card
	[288] = {"1 à 4", "2 à 8"}, -- Box of Spiders
	[292] = {"+1 cœur noir", "+2 {{ColorWhite}}cœurs noirs"}, -- Satanic Bible
	[293] = "Double les dégâts du laser", -- Head of Krampus
	[294] = "Repousse davantage les ennemis", -- Butter Bean
	[298] = {"6", "12"}, -- Unicorn Stump
	[348] = {"Déclenche", "{{ColorWhite}}Déclenche{{BlinkYellowGreen}} 2 fois"}, --Placebo
	[349] = "Peut faire apparaître 2 pièces",
	[351] = "Double les dégâts du pet", -- Mega Bean
	[357] = {"un double", "2{{ColorWhite}} doubles"}, -- Box of Friends
	[383] = {6, 36}, -- Tear Detonator
	[421] = {5, 10}, -- Kidney Bean
	[427] = {"Place {{BlinkYellowGreen}}2{{ColorWhite}} barils de TNT qui peuvent être déplacés#Utiliser l'objet une seconde fois fait exploser les barils à distance"}, -- Mine Crafter
	[437] = {"tous les ennemis de", "{{BlinkYellowRed}}le double{{ColorWhite}} d'ennemis dans"}, -- D7
	[439] = {"une babiole", "2 {{ColorWhite}}babioles"}, -- Mom's Box
	[476] = {"une ressource aléatoire", "2{{ColorWhite}} ressources aléatoires"}, --D1
	[477] = {"déclenchent l'effet de tous les objets absorbés", "{{ColorWhite}}déclenchent {{BlinkYellowGreen}}2 fois{{ColorWhite}} l'effet des objets absorbés"}, -- Void
	[480] = {"Double", "Quadruple"}, -- Compost
	[481] = {"une stat", "2{{ColorWhite}} stats", "une stat", "2{{ColorWhite}} stats"}, -- Dataminer
	[482] = {"le dernier objet passif obtenu","{{ColorWhite}}les {{BlinkYellowRed}}2{{ColorWhite}} derniers objets passifs obtenus"}, -- Clicker
	[485] = {"{{BlinkYellowGreen}}25%{{ColorWhite}} de chances de quadrupler tous les objets et ressources de la salle{{ColorLime}}25%{{ColorWhite}} de chances de garder la même quantité d'objets et de ressources#{{BlinkYellowRed}}50%{{ColorWhite}} de chances de remplacer tous les objets, ressources et coffres de la salle par une pièce"}, -- Crooked Penny
	[486] = {"un dégât factice à Isaac qui ne retire", "2{{ColorWhite}} dégâts factices à Isaac qui ne retirent"}, -- Dull Razor
	[487] = {"↑ Dégâts {{BlinkYellowGreen}}+0.4#↓ {{BlinkYellowRed}}-2 réceptacles de cœur#Donne {{BlinkYellowGreen}}2 {{ColorYellow}}Cubes de Viande{{ColorWhite}}{{Collectible73}}"}, -- Potato Peeler
	[488] = {"d'un objet activable ou passif aléatoire", "{{ColorWhite}}de {{BlinkYellowGreen}}2{{ColorWhite}} objets activables ou passifs aléatoires"}, -- Metronome
	[489] = "Déclenche l'effet d'un second dé", -- D Infinity
	[504] = {"Invoque {{BlinkYellowGreen}}2{{ColorWhite}} mouches immobiles qui tirent sur les ennemis à proximité"}, -- Brown Nugget
	[507] = {"Inflige {{BlinkYellowGreen}}2x{{ColorWhite}} les dégâts d'Isaac et retire {{BlinkYellowGreen}}20%{{ColorWhite}} des PV totaux de tous les ennemis de la salle#Infliger des dégâts avec cet objet génère parfois un demi-cœur d'âme"}, -- Sharp Straw
	[510] = {"un boss allié", "2 {{ColorWhite}}boss alliés"}, -- Delirious
	[516] = {"Place {{BlinkYellowGreen}}2{{ColorWhite}} arroseurs à la position d'Isaac#Les arroseurs tournent sur eux-même et tirent des larmes identiques à celles d'Isaac"}, -- Sprinker
	[521] = {"gratuit un objet payant", "{{ColorWhite}}gratuits {{BlinkYellowGreen}}2{{ColorWhite}} objets payants"}, -- Coupon
	[523] = {"pose les éléments absorbés sur le sol","échange le contenu de la boîte et les ressources au sol"}, -- Moving Box
	[545] = {8, 16}, -- Book of the Dead
	[550] = {"d'une salle ou d'une vague", "{{ColorWhite}}de {{BlinkYellowGreen}}2{{ColorWhite}} salles {{ColorWhite}}ou {{BlinkYellowGreen}}2{{ColorWhite}} vagues"}, -- Broken Shovel
}

---------- Trinkets ----------
EID.descriptions[languageCode].trinkets={
	{"1", "Pièce Avalée", "Subir un dégât fait apparaître une pièce"},
	{"2", "Caca Pétrifié", "Détruire un caca a 50% de chances de faire apparaître une ressource"},
	{"3", "Pile AAA", "Termine de charger l'objet activable s'il lui manque une charge"},
	{"4", "Télécommande Cassée", "Utiliser un objet activable téléporte Isaac dans une salle aléatoire"},
	{"5", "Cœur Violet", "Double les chances de rencontrer des ennemis et boss d'élite"},
	{"6", "Aimant Démagnétisé", "Isaac attire les pièces"},
	{"7", "Perle de Rosaire", "{{AngelChanceSmall}} Augmente les chances d'Angel Rooms {{AngelRoom}}#Augmente les chances de trouver {{ColorYellow}}The Bible{{ColorWhite}} dans une Library {{Library}} ou un Shop {{Shop}}"},
	{"8", "Cartouche", "Subir un dégât déclenche parfois l'effet de {{ColorYellow}}The Gamekid{{Collectible93}}#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 38 Chance)"},
	{"9", "Ver Pulsant", "Les larmes d'Isaac pulsent"},
	{"10", "Ver Remuant", "↑ Débit {{ColorLime}}+0.4#La trajectoire des larmes d'Isaac forme des vagues"},
	{"11", "Ver Circulaire", "La trajectoire des larmes d'Isaac forme des cercles"},
	{"12", "Ver Plat", "Les larmes d'Isaac sont 50% plus larges"},
	{"13", "Bon d'Achat", "Permet à Isaac d'obtenir un objet du Shop {{Shop}} gratuitement#Le trinket disparaît une fois l'objet acheté"},
	{"14", "Callosités", "Isaac ne subit plus les dégâts des piques et des flaques au sol"},
	{"15", "Caillou Porte-Bonheur", "Détruire un obstacle fait apparaître 1 pièce"},
	{"16", "Ongle de Pied de Maman", "Le pied de {{ColorCyan}}Mom{{ColorWhite}} écrase un endroit au hasard dans la salle toutes les 60 secondes"},
	{"17", "Noir à Lèvres", "Les cœurs d'âme au sol ont 10% de chances d'être convertis en cœurs noirs"},
	{"18", "Brochure Religieuse", "Augmente de 3% la fréquence d'apparition des cœurs éternels"},
	{"19", "Trombone", "Ouvrir un coffre doré {{GoldenChest}} ne diminue pas le compteur de clés"},
	{"20", "Patte de Singe", "Descendre à un demi-cœur de vie totale fait apparaître un cœur noir#Après avoir fait apparaître 3 cœurs noirs, le trinket disparaît"},
	{"21", "Papier Mystérieux", "Donne parfois l'effet de {{ColorYellow}}The Polaroid {{Collectible327}}{{ColorWhite}}, {{ColorYellow}}The Negative {{Collectible328}}{{ColorWhite}}, {{ColorYellow}}Missing Poster {{Trinket23}}{{ColorWhite}} et {{ColorYellow}}A Missing Page {{Trinket48}}{{ColorWhite}}"},
	{"22", "Queue de Diablotin", "Remplace 80% des cœurs ramassables par des clés#Remplace les 20% restants par des cœurs noirs"},
	{"23", "Avis de Recherche", "À sa mort, Isaac ressuscite en {{ColorLightOrange}}The Lost#Le trinket disparaît à la mort d'Isaac"},
	{"24", "Pièce de Fesse", "Ramasser une pièce fait péter Isaac#Augmente de 20% les chances de trouver une pièce dans un caca"},
	{"25", "Chocolat Douteux", "Isaac pète ou fait apparaître un caca à intervalles irréguliers"},
	{"26", "Ver Droit", "↑ Portée {{ColorLime}}+10#La trajectoire des larmes d'Isaac forme des vagues carrées"},
	{"27", "Ver Long", "↑ Vitesse des tirs {{ColorLime}}+0.5"},
	{"28", "Ânkh Brisée", "À sa mort, Isaac a 22% de chances de ressusciter en {{ColorLightOrange}}???"},
	{"29", "Tête de Poisson", "Subir un dégât invoque une mouche bleue"},
	{"30", "Conjonctivite", "Isaac tire parfois une larme empoisonnée#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 18 Chance)"},
	{"31", "Punaise", "Isaac tire parfois une larme spectrale transperçante#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 18 Chance)"},
	{"32", "Psilocybe Lancéolé", "Active parfois l'effet de {{ColorYellow}}Mini Mush{{ColorWhite}} {{Collectible71}}, {{ColorYellow}}Odd Mushroom{{ColorWhite}} {{Collectible121}}, {{ColorYellow}}Odd Mushroom{{ColorWhite}} {{Collectible120}} ou {{ColorYellow}}The Compass{{ColorWhite}} {{Collectible21}} pour la durée d'une salle"},
	{"33", "Cordon Ombilical", "Invoque {{ColorYellow}}Lil' Steven{{ColorWhite}} {{Collectible100}} quand Isaac n'a qu'un demi-cœur rouge ou moins"},
	{"34", "Cœur d'Enfant", "Augmente la fréquence d'apparition des cœurs rouges"},
	{"35", "Corne Tordue", "↑ Dégâts {{ColorLime}}+2"},
	{"36", "Clé Rouillée", "Augmente la fréquence d'apparition des clés"},
	{"37", "Sabot de Chèvre", "↑ Vitesse {{ColorLime}}+0.15"},
	{"38", "Perle de Maman", "Les cœurs au sol ont 10% de chances d'être convertis en cœurs d'âme"},
	{"39", "Cancer", "↑ Débit {{ColorLime}}+2"},
	{"40", "Lambeau de Tissu", "Subir un dégât donne parfois {{ColorLime}}dégâts +1.8{{ColorWhite}} pour la durée d'une salle#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 8 Chance)"},
	{"41", "Allumette", "Augmente la fréquence d'apparition des bombes#Permet de retirer {{ColorYellow}}The Tick{{ColorWhite}} {{Trinket53}}"},
	{"42", "Orteil Porte-Bonheur", "↑ Chance {{ColorLime}}+1"},
	{"43", "Crâne Maudit", "Descendre à un demi-cœur de vie totale téléporte Isaac dans une salle aléatoire"},
	{"44", "Bouchon de Sécurité", "Augmente la fréquence d'apparition des pilules"},
	{"45", "As de Pique", "Augmente la fréquence d'apparition des cartes"},
	{"46", "Fourchette d'Isaac", "{{HealingRed}} Terminer une salle soigne parfois un demi-cœur rouge#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 18 Chance)"},
	{"47", "", "<Inutilisé>"},
	{"48", "Page Déchirée", "Subir un dégât inflige parfois 40 dégâts à tous les ennemis de la salle#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à 60 Chance)"},
	{"49", "Pièce Sanglante", "Ramasser une pièce a 50% de chances de faire apparaître un demi-cœur rouge"},
	{"50", "Pièce Brûlée", "Ramasser une pièce a 50% de chances de faire apparaître une bombe"},
	{"51", "Pièce Plate", "Ramasser une pièce a 50% de chances de faire apparaître une clé"},
	{"52", "Pièce de Contrefaçon", "Ramasser une pièce a 50% de chances d'ajouter une pièce supplémentaire au compteur"},
	{"53", "Tique", "{{HealingRed}} Entrer dans une salle de boss soigne 1 cœur rouge#Retire 15% des PV des boss#{{Warning}} Ne peut pas être retiré sans {{ColorYellow}}Match Stick{{ColorWhite}} {{Trinket41}}"},
	{"54", "Tête d'Isaac", "Suit Isaac et tire des larmes transperçantes#{{DamageSmall}} 3.5 dégâts par larme"},
	{"55", "Foi de Marie", "{{EternalHeart}} +1 cœur éternel au début de chaque étage"},
	{"56", "Langue de Judas", "Réduit le prix de tous les Devil Deals à 1 réceptacle de cœur#N'affecte pas les objets payés en cœurs d'âme"},
	{"57", "Âme de ???", "Rebondit contre les murs et tire des larmes spectrales autoguidées#{{DamageSmall}} 3.5 dégâts par larme"},
	{"58", "Mèche de Samson", "Tuer un ennemi donne parfois {{ColorLime}}dégâts +0.5{{ColorWhite}} pour la durée d'une salle#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 10 Chance)"},
	{"59", "Œil de Caïn", "Donne parfois l'effet de {{ColorYellow}}The Compass{{ColorWhite}} {{Collectible21}} pour la durée d'un étage#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 3 Chance)"},
	{"60", "Serre de l'Oiseau d'Ève", "Tuer un ennemi invoque parfois un {{ColorYellow}}Dead Bird{{ColorWhite}} pour la durée d'une salle#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 8 Chance)"},
	{"61", "Main Gauche", "Transforme tous les coffres en coffres rouges {{RedChest}}"},
	{"62", "Caillou Étincelant", "Révèle les rochers marqués et l'entrée des Crawl Spaces {{LadderRoom}}"},
	{"63", "Ciseaux à Bout Rond", "Désamorce les Troll Bombs et Maxi Troll Bombs et permet à Isaac de les ramasser"},
	{"64", "Ver Arc-en-Ciel", "Donne l'effet d'un trinket de ver différent toutes les 3 secondes"},
	{"65", "Ver Solitaire", "↑ Portée {{ColorLime}}x2"},
	{"66", "Ver Fainéant", "↓ Vitesse des tirs {{ColorError}}-0.4#↑ Portée {{ColorLime}}+4"},
	{"67", "Dé Fêlé", "Subir un dégât active l'effet du {{ColorYellow}}D6{{ColorWhite}} {{Collectible105}}, {{ColorYellow}}D8{{ColorWhite}} {{Collectible406}}, {{ColorYellow}}D12{{ColorWhite}} {{Collectible386}} ou {{ColorYellow}}D20{{ColorWhite}} {{Collectible166}}"},
	{"68", "Aimant au Néodyme", "Isaac attire les ressources et les ennemis"},
	{"69", "Positif Décoloré", "Camoufle parfois Isaac et étourdit les ennemis"},
	{"70", "Lente", "Invoque parfois une araignée bleue dans les salles hostiles"},
	{"71", "Vessie de Bob", "Les bombes d'Isaac répandent une flaque corrosive sur le sol"},
	{"72", "Pile Bouton", "Augmente la fréquence d'apparition des piles#Terminer une salle charge parfois une barre supplémentaire de l'objet activable"},
	{"73", "Détonateur", "Les bombes d'Isaac ont 10% de chances de faire apparaître une bombe ramassable en explosant"},
	{"74", "Détecteur de Métaux", "Augmente de 0.5% les chances de trouver l'entrée d'un Crawl Space {{LadderRoom}}"},
	{"75", "404", "Active l'effet d'un trinket aléatoire à chaque salle"},
	{"76", "Jeton de Poker", "{{ColorLime}}50%{{ColorWhite}} de chances de doubler le contenu d'un coffre#{{ColorError}}50%{{ColorWhite}} de chances de remplacer le contenu d'un coffre par une mouche"},
	{"77", "Cloque", "Augmente le recul infligé par les larmes d'Isaac"},
	{"78", "Grande Aiguille", "Double la durée des effets infligés aux ennemis"},
	{"79", "Histoire Sans Fin", "Utiliser une pilule, une carte ou une rune a 25% de chances d'en faire apparaître une copie"},
	{"80", "Plume Noire", "↑ Dégâts {{ColorLime}}+0.2{{ColorWhite}} pour chaque objet démoniaque dans l'inventaire d'Isaac"},
	{"81", "Rage Aveugle", "Double la durée de l'invulnérabilité accordée à Isaac après qu'il a subi un dégât"},
	{"82", "Fer à Cheval Doré", "Les Treasure Rooms {{TreasureRoom}} ont {{ColorLime}}+15%{{ColorWhite}} de chances de proposer un choix entre deux objets"},
	{"83", "Clé du Magasin", "Permet d'ouvrir gratuitement les portes des Shops {{Shop}}"},
	{"84", "Côte d'Avarice", "Empêche {{ColorCyan}}Greed{{ColorWhite}} et {{ColorCyan}}Super Greed{{ColorWhite}} d'apparaître dans les Shops {{Shop}}"},
	{"85", "Karma", "Faire un don à une boîte à dons a 33% de chances de:#{{HealingRed}} Soigner un cœur rouge {{ColorSilver}}(40%)#Donner 1 pièce {{ColorSilver}}(40%)#Donner {{ColorLime}}Chance +1 {{ColorSilver}}(15%)#Invoquer un mendiant {{ColorSilver}}(5%)"},
	{"86", "Petite Larve", "Détruire un caca invoque une mouche bleue"},
	{"87", "Médaillon de Maman", "{{HealingRed}} Utiliser une clé soigne un demi-cœur rouge#Remplace les demi-cœurs rouges au sol par des cœurs entiers"},
	{"88", "NON !", "Empêche la génération d'objets activables"},
	{"89", "Laisse Pour Enfants", "Réduit la distance entre les familiers d'Isaac"},
	{"90", "Bouchon Brun", "Les cacas détruits explosent et infligent 100 dégâts"},
	{"91", "Méconium", "Augmente la fréquence d'apparition des cacas noirs"},
	{"92", "Couronne Fêlée", "↑ Débit {{ColorLime}}+0.2#↑ Augmente de {{ColorLime}}33%{{ColorWhite}} les bonus de stats donnés par les objets d'Isaac"},
	{"93", "Couche Usagée", "Les mouches ennemies sont parfois inoffensives"},
	{"94", "Queue de Poisson", "Double les apparitions de mouches et araignées bleues"},
	{"95", "Dent Noircie", "Isaac tire parfois une dent morte qui inflige {{ColorLime}}dégâts x2{{ColorWhite}} et empoisonne les ennemis#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 32 Chance)"},
	{"96", "Ver d'Ouroboros", "↑ Portée {{ColorLime}}+4.0#La trajectoire des larmes d'Isaac forme une très grande spirale#Larmes spectrales#Isaac tire parfois une larme autoguidée#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 9 Chance)"},
	{"97", "Amygdale", "Subir entre 12 et 20 dégâts invoque jusqu'à deux familiers#Les familiers bloquent les tirs ennemis et n'infligent pas de dégâts"},
	{"98", "Crotte de Nez", "Isaac tire parfois une crotte de nez qui se colle aux ennemis et inflige les dégâts d'Isaac une fois par seconde#Les crottes de nez se décollent si l'ennemi meurt, s'enterre, saute hors de l'écran ou au bout de 60 secondes"},
	{"99", "Balle Rebondissante", "Isaac tire parfois une larme rebondissante"},
	{"100", "Ampoule Allumée", "Si l'objet activable est entièrement chargé :#↑ Dégâts {{ColorLime}}+0.5#↑ Débit {{ColorLime}}+0.2#↑ Vitesse {{ColorLime}}+0.25#↑ Portée {{ColorLime}}+0.75#↑ Vitesse des tirs {{ColorLime}}+0.10#↑ Chance {{ColorLime}}+1"},
	{"101", "Ampoule Éteinte", "Si l'objet activable est entièrement déchargé :#↑ Vitesse {{ColorLime}}+0.5#↑ Portée {{ColorLime}}+1.5#↑ Débit {{ColorLime}}+0.4#↑ Vitesse des tirs {{ColorLime}}+0.3#↑ Dégâts {{ColorLime}}+1.5#↑ Chance {{ColorLime}}+2"},
	{"102", "Carte Scindée", "Génère une Secret Room de plus à chaque étage#Ne rajoute pas de Secret Room à un étage déjà généré"},
	{"103", "Égalité !", "Transforme les ressources en leur version doublée si les compteurs de pièces, bombes et clés sont identiques"},
	{"104", "Os de Poulet", "Subir un dégât a 2% de chances de détruire le trinket et de faire apparaître un objet provenant de la banque d'objets de la salle"},
	{"105", "Sac de Friandises", "Subir un dégât a 2% de chances de détruire le trinket et de faire apparaître {{ColorYellow}}Lunch{{ColorWhite}} {{Collectible22}}"},
	{"106", "Bouchon de Liège", "Augmente la taille des flaques créées par Isaac"},
	{"107", "Cœur de Corbeau", "Subir des dégâts retire les cœurs rouges en priorité#Les dégâts qui retirent des cœurs rouges ne diminuent pas les chances de Pacte avec le Diable ou d'Offrande des Anges"},
	{"108", "Noix", "Subir 1 à 9 explosions détruit le trinket et fait apparaître une bombe, une pièce, une clé et un trinket"},
	{"109", "Ruban Adhésif", "Immobilise tous les familiers d'Isaac"},
	{"110", "Pièce d'Argent", "Des Shops {{Shop}} apparaissent dans le {{ColorTransform}}Womb"},
	{"111", "Couronne Sanglante", "Des Treasure Rooms {{TreasureRoom}} apparaissent dans le {{ColorTransform}}Womb"},
	{"112", "Microtransactions", "Des Restock Machines {{RestockMachine}} apparaissent dans toutes les Treasure Rooms {{TreasureRoom}}"},
	{"113", "Locuste de Guerre", "Entrer dans une salle hostile invoque un locuste explosif"},
	{"114", "Locuste d'Épidémie", "Entrer dans une salle hostile invoque un locuste empoisonné"},
	{"115", "Locuste de Famine", "Entrer dans une salle hostile invoque un locuste ralentissant"},
	{"116", "Locuste de Mort", "Entrer dans une salle hostile invoque un locuste qui inflige {{ColorLime}}dégâts x4"},
	{"117", "Locuste de Conquête", "Entrer dans une salle hostile invoque 2 à 5 locustes"},
	{"118", "Aile de Chauve-Souris", "Tuer un ennemi permet parfois à Isaac de voler pour la durée d'une salle"},
	{"119", "Cellule Souche", "{{HealingRed}} Entrer dans un nouvel étage soigne un demi-cœur rouge"},
	{"120", "Épingle à Cheveux", "Entrer dans une salle de boss recharge entièrement l'objet activable"},
	{"121", "Croix de Bois", "Entoure Isaac d'un bouclier sacré {{HolyMantleSmall}} qui nullifie le premier dégât subi dans l'étage#Le bouclier se régénère à chaque étage"},
	{"122", "Plaquette de Beurre", "Utiliser un objet activable le retire de l'inventaire d'Isaac et le pose sur un piédestal#Subir un dégât a 2% de chances de retirer un objet passif à isaac et de le poser sur un piédestal"},
	{"123", "Plume Angélique", "Tuer {{ColorCyan}}Uriel{{ColorWhite}} ou {{ColorCyan}}Gabriel{{ColorWhite}} fait apparaître un objet angélique au lieu d'une {{ColorYellow}}Key Piece {{Collectible238}}{{Collectible239}}"},
	{"124", "Cale-Porte", "Entrer dans une salle hostile ne referme pas la porte par laquelle Isaac est entré"},
	{"125", "Rallonge Électrique", "Relie les familiers d'Isaac par des arcs électriques"},
	{"126", "Pièce Moisie", "Ramasser une pièce invoque 1 mouche bleue"},
	{"127", "P'tite Cuillère", "Les larmes des familiers d'Isaac sont autoguidées"},
	{"128", "Os de Doigt", "{{BoneHeart}} Subir un dégât a 2% de chance d'ajouter un cœur d'os aux PV d'Isaac"},
}

---------- Cards ----------
EID.descriptions[languageCode].cards={
	{"1", "0 - Le Mat", "Téléporte Isaac dans la première salle de l'étage"},
	{"2", "I - Le Bateleur", "Larmes autoguidées#{{Timer}} L'effet dure une salle"},
	{"3", "II - La Papesse", "Le pied de {{ColorCyan}}Mom{{ColorWhite}} écrase l'ennemi de la salle avec le plus de PV#Dans une salle vide, le pied écrase Isaac"},
	{"4", "III - L'Impératrice", "↑ Dégâts {{ColorLime}}+1.5#↑ Vitesse {{ColorLime}}+0.3#{{Timer}} L'effet dure une salle"},
	{"5", "IV - L'Empereur", "Téléporte Isaac dans la Boss Room {{BossRoom}}"},
	{"6", "V - Le Pape", "Fait apparaître 2 cœurs d'âme"},
	{"7", "VI - L'Amoureux", "Fait apparaître 2 cœurs rouges"},
	{"8", "VII - Le Chariot", "↑ Vitesse {{ColorLime}}+0.28#Isaac devient invulnérable et inflige 40 dégâts de contact par seconde#{{Timer}} L'effet dure 6 secondes"},
	{"9", "VIII - La Justice", "Fait apparaître une clé, une bombe, une pièce et un cœur"},
	{"10", "IX - L'Ermite", "Téléporte Isaac dans le Shop {{Shop}}"},
	{"11", "X - La Roue de Fortune", "Fait apparaître 1 des machines suivantes:#Machine à sous {{Slotmachine}} {{ColorSilver}}(75%)#Diseuse de bonne aventure {{FortuneTeller}} {{ColorSilver}} (24%)"},
	{"12", "XI - La Force", "{{Heart}} +1 réceptacle de cœur#↑ Dégâts {{ColorLime}}+0.3 x1.5#↑ Vitesse {{ColorLime}}+0.3#↑ Portée {{ColorLime}}+5.25#{{Timer}} L'effet dure une salle"},
	{"13", "XII - Le Pendu", "Permet à Isaac de voler#{{Timer}} L'effet dure une salle"},
	{"14", "XIII - La Mort", "Inflige 40 dégâts à tous les ennemis de la salle"},
	{"15", "XIV - Tempérance", "Fait apparaître une banque du sang {{BloodDonationMachine}}"},
	{"16", "XV - Le Diable", "↑ Dégâts {{ColorLime}}+2#{{Timer}} L'effet dure une salle"},
	{"17", "XVI - La Maison Dieu", "Invoque 6 Troll Bombs"},
	{"18", "XVII - L'Étoile", "Téléporte Isaac dans la Treasure Room {{TreasureRoom}}"},
	{"19", "XVIII - La Lune", "Téléporte Isaac dans la Secret Room {{SecretRoom}}"},
	{"20", "XIX - Le Soleil", "{{HealingRed}} Soin complet#Inflige 100 dégâts à tous les ennemis de la salle#Révèle l'intégralité de l'étage sur la carte"},
	{"21", "XX - Le Jugement", "{{Beggar}} Invoque un mendiant#{{DemonBeggar}} 33% de chances d'être un mendiant démoniaque #2% de chances d'être un mendiant clé ou bombe"},
	{"22", "XXI - Le Monde", "{{Timer}} Révèle l'intégralité de l'étage sur la carte (sauf {{SuperSecretRoom}} Salle Super Secrète)"},
	{"23", "2 de Trèfle", "Multiplie le nombre de bombes d'Isaac par 2#{{Bomb}} +2 bombes si Isaac ne possède aucune bombe"},
	{"24", "2 de Carreau", "Multiplie le nombre de pièces d'Isaac par 2#{{Coin}} +2 pièces si Isaac ne possède aucune pièce"},
	{"25", "2 de Pique", "Multiplie le nombre de clés d'Isaac par 2#{{Key}} +2 clés si Isaac ne possède aucune clé"},
	{"26", "2 de Cœur", "{{HealingRed}} Soigne le double des réceptacles de cœurs remplis d'Isaac#{{HealingRed}} Soigne 1 cœur rouge si tous les réceptacles de cœur d'Isaac sont vides"},
	{"27", "As de Trèfle", "Transforme toutes les ressources de la salle en bombes"},
	{"28", "As de Carreau", "Transforme toutes les ressources de la salle en pièces"},
	{"29", "As de Pique", "Transforme toutes les ressources de la salle en clés"},
	{"30", "As de Cœur", "Transforme toutes les ressources de la salle en cœurs"},
	{"31", "Joker", "Téléporte Isaac dans la Devil Room {{DevilRoom}} ou l'Angel Room {{AngelRoom}}"},
	{"32", "Hagalaz", "Détruit tous les obstacles dans la salle"},
	{"33", "Jera", "Duplique toutes les ressources présentes dans la salle"},
	{"34", "Ehwaz", "Ouvre une trappe vers l'étage suivant#8% de chances d'ouvrir une trappe vers un Crawl Space {{LadderRoom}}"},
	{"35", "Dagaz", "{{SoulHeart}} +1 cœur d'âme#Retire toutes les Curses"},
	{"36", "Ansuz", "Révèle l'intégralité de l'étage sur la carte"},
	{"37", "Perthro", "Rejoue les objets sur piédestal présents dans la salle"},
	{"38", "Berkano", "Invoque 3 mouches bleues et 3 araignées bleues"},
	{"39", "Algiz", "Rend Isaac invulnérable pendant 30 secondes"},
	{"40", "Rune Vierge", "Déclenche l'effet d'une rune au hasard#Peut faire apparaître une copie d'elle-même une fois utilisée"},
	{"41", "Rune Noire", "Inflige 40 dégâts à tous les ennemis dans la salle#Détruit tous les objets et ressources présents dans la salle#Invoque une mouche bleue pour chaque ressource détruite#↑ Augmente une stat aléatoire pour chaque objet détruit"},
	{"42", "Carte Chaos", "Utiliser cette carte la lance dans la direction où se déplace Isaac#La carte tue instantanément les ennemis ou boss avec lequels elle rentre en contact#La carte ne peut pas tuer Delirium"},
	{"43", "Carte de Crédit", "Rend gratuits tous les objets en vente#Fonctionne sur les coûts en pièces et en PV"},
	{"44", "Carte des Règles", "Donne un indice sur un des secrets du jeu"},
	{"45", "Une Carte Limite Limite", "Couvre la totalité du sol de la salle de cacas {{Poop}}"},
	{"46", "Roi Suicidaire", "Tue Isaac et fait apparaître 10 ressources ou objets dans la salle#Les objets proviennent de la banque d'objets de la salle où se trouve Isaac"},
	{"47", "Carte Chance", "Ouvre toutes les portes de la salle, y compris la majorité des portes spéciales"},
	{"48", "Carte ?", "Utilise l'objet activable d'Isaac sans le décharger"},
	{"49", "Fragment de Dé", "Rejoue tous les objets et ressources présentes dans la salle"},
	{"50", "Appel d'Urgence", "2 mains de {{ColorCyan}}Mom{{ColorWhite}} attrapent un ennemi chacune, leur infligent 40 dégâts et les paralysent"},
	{"51", "Carte Sacrée", "Entoure Isaac d'un bouclier sacré {{HolyMantleSmall}} qui nullifie le prochain dégât subi dans la salle"},
	{"52", "Croissance Colossale", "↑ Dégâts {{ColorLime}}+7#↑ Portée {{ColorLime}}+30#↑ Taille augmentée#Marcher sur les obstacles les détruit#{{Timer}} L'effet dure une salle"},
	{"53", "Rappel Ancestral", "Fait apparaître 3 cartes"},
	{"54", "Marche Temporelle", "↑ Vitesse {{ColorLime}}+0.5#↓ Vitesse des tirs {{ColorError}}-1#Ralentit les ennemis#{{Timer}} L'effet dure une salle"},
}

EID.descriptions[languageCode].tarotClothBuffsAB = {
	[4] = {0.3, 0.6, 1.5, 3}, -- III - The Empress
	[6] = {2, 4}, -- V - The Hierophant
	[7] = {2, 4}, -- VI - The Lovers
	[8] = {6, 12}, -- VII - The Chariot
	[9] = {"Fait apparaître {{ColorShinyPurple}}2{{CR}} cœurs, pièces, bombes et clés"}, -- VIII - Justice
	[11] = {"une machine", "deux machines"}, -- X - Wheel of Fortune
	[12] = {1, 2, 0.3, 0.6, 0.3, 0.6, 5.25, 10.5}, -- XI - Strength
	[14] = {40, 80}, -- XIII - Death
	[15] = {" une ", " 2 ", " machine", " {{CR}}machines", "mendiant démoniaque", "{{CR}}mendiants démoniaques"}, -- XIV - Temperance (+ Greed version)
	[17] = {6, 12}, -- XVI - The Tower
	[20] = {100, 200}, -- XIX - The Sun
	[21] = {"un mendiant", "2 {{ColorWhite}} mendiants"}, -- XX - Judgement
	[23] = {"2", "4"}, -- 2 of Clubs
	[24] = {"2", "4"}, -- 2 of Diamonds
	[25] = {"2", "4"}, -- 2 of Spades
	[26] = {"2", "4"}, -- 2 of Hearts
	[33] = {"double", "quadruple"}, -- Jera
	[35] = {1, 2}, -- Dagaz
	[37] = {"les", "deux fois de suite{{CR}}les"}, -- Perthro
	[38] = {3, 6, 3, 6}, -- Berkano
	[39] = {30, 60}, -- Algiz
	[40] = {"d'une rune", "de deux runes", "une copie", "1 ou 2 {{CR}}copies"}, -- Blank Rune
	[41] = {40, 80}, -- Black Rune
	[46] = {10, 20}, -- Suicide King
	[48] = {"l'objet", "2 fois {{CR}}l'objet"}, -- ? Card
	[53] = {3, 6}, -- Ancient Recall
}
---------- Pills ----------

EID.descriptions[languageCode].unidentifiedPill = "Pilule non identifiée"

EID.descriptions[languageCode].pills={
	{"0", "Flatulences", "Fait apparaître un nuage de gaz qui inflige 5 dégâts de contact et empoisonne les ennemis"},
	{"1", "Coup dur", "Inflige 1 cœur de dégâts à Isaac"},
	{"2", "Digoxine", "{{SoulHeart}} +2 cœurs d'âme"},
	{"3", "Bombes à la clé", "Inverse les compteurs de bombes et de clés"},
	{"4", "Diarrhée explosive", "Fait apparaître 5 bombes amorcées derrière Isaac"},
	{"5", "Soin complet", "{{HealingRed}} Soin complet"},
	{"6", "PV diminués", "↓ -1 réceptacle de cœur"},
	{"7", "PV augmentés", "{{EmptyHeart}} +1 réceptacle de cœur"},
	{"8", "J'ai trouvé une pilule !", "Aucun effet"},
	{"9", "Puberté", "Avaler 3 pilules {{ColorYellow}}Puberty{{ColorWhite}} ajoute 1 réceptacle de cœur aux PV d'Isaac"},
	{"10", "Jolie mouche", "Invoque une mouche qui orbite autour d'Isaac et bloque les projectiles"},
	{"11", "Portée diminuée", "↓ Portée {{ColorError}}-2"},
	{"12", "Portée augmentée", "↑ Portée {{ColorLime}}+2.5"},
	{"13", "Vitesse diminuée", "↓ Vitesse {{ColorError}}-0.12"},
	{"14", "Vitesse augmentée", "↑ Vitesse {{ColorLime}}+0.15"},
	{"15", "Débit diminué", "↓ Débit {{ColorError}}-0.28"},
	{"16", "Débit augmenté", "↑ Débit {{ColorLime}}+0.35"},
	{"17", "Chance diminuée", "↓ Chance {{ColorError}}-1"},
	{"18", "Chance augmentée", "↑ Chance {{ColorLime}}+1"},
	{"19", "Télépilule", "Téléporte Isaac dans une salle aléatoire"},
	{"20", "Survolté !", "Recharge l'objet activable d'Isaac#Fait apparaître 1 ou 2 piles"},
	{"21", "Hématémèse", "Vide tous les réceptacles de cœur d'Isaac sauf 1#Fait apparaître 1 à 4 cœurs rouges"},
	{"22", "Paralysie", "Empêche toute action pendant 2 secondes"},
	{"23", "Sésame, ouvre-toi !", "Ouvre les entrées des Secret {{SecretRoom}} et Super Secret Rooms {{SuperSecretRoom}} de l'étage"},
	{"24", "Phéromones", "Envoûte tous les ennemis de la salle"},
	{"25", "Amnésie", "Masque la carte de l'étage"},
	{"26", "Petite fuite...", "Répand une large flaque sur le sol qui inflige des dégâts de contact aux ennemis"},
	{"27", "C'est louche...", "Isaac tire en diagonale pendant 60 secondes"},
	{"28", "Anesthésie", "Les dégâts subis sont réduits à un demi-cœur pour la durée d'une salle"},
	{"29", "Accro !", "Les dégâts subis sont augmentés à un cœur entier pour la durée d'une salle"},
	{"30", "Re-lax", "Isaac pose des cacas derrière lui pendant 2 secondes"},
	{"31", "???", "Inflige Curse of the Maze pour la durée de l'étage"},
	{"32", "L'une te fait grandir...", "Augmente la taille d'Isaac"},
	{"33", "...L'une te rapetisse", "Diminue la taille d'Isaac#Diminue la hitbox d'Isaac"},
	{"34", "Infesté !", "Invoque une araignée bleue pour chaque caca dans la salle"},
	{"35", "Infesté ?", "Invoque une araignée bleue pour chaque ennemi dans la salle#Utilisée dans une salle vide, invoque 1 à 3 araignées"},
	{"36", "Vitamines !", "Rend Isaac invulnérable#Terrifie tous les ennemis de la salle#{{HealingRed}} Tuer un ennemi soigne parfois un demi-cœur rouge#{{Timer}} L'effet dure 6.5 secondes"},
	{"37", "Vision rétro", "Pixellise l'écran pendant 30 secondes"},
	{"38", "Amis pour la vie !", "Invoque 3 mouches bleues"},
	{"39", "X-Lax", "Répand une flaque glissante"},
	{"40", "C'est pas normal, ça...", "Répand une flaque qui ralentit les ennemis"},
	{"41", "Somnolence", "Ralentit tous les ennemis dans la salle"},
	{"42", "Gonflé à bloc !!!", "Accélère tous les ennemis dans la salle"},
	{"43", "Gloups !", "Absorbe le trinket porté par Isaac et active son effet de manière permanente"},
	{"44", "Bleuargh !", "Tire une larme explosive qui inflige 200 dégâts"},
	{"45", "Morphine", "Rend Isaac temporairement invulnérable"},
	{"46", "Bleurp !", "Isaac recrache la dernière pilule avalée :"},
}

---------- Sacrifice Room ----------
EID.descriptions[languageCode].sacrificeHeader = "Récompense du prochain sacrifice"

EID.descriptions[languageCode].sacrifice={
	{"1", "", "1 pièce {{ColorSilver}}(50%)#Rien {{ColorSilver}}(50%)#1 bombe {{ColorSilver}}(100% au premier étage si le boss a été battu en moins d'une minute)"},
	{"2", "", "1 pièce {{ColorSilver}}(50%)#Rien {{ColorSilver}}(50%)#1 bombe {{ColorSilver}}(100% au premier étage si le boss a été battu en moins d'une minute)"},
	{"3", "", "Augmente les chances d'ouvrir le Refuge des Anges {{ColorSilver}}(67%)#Rien {{ColorSilver}}(33%)"},
	{"4", "", "1 coffre {{ColorSilver}}(50%)#Rien {{ColorSilver}}(50%)"},
	{"5", "", "3 pièces {{ColorSilver}}(33%)#Augmente les chances d'ouvrir le Refuge des Anges {{ColorSilver}}(67%)"},
	{"6", "", "Téléportation à l'Antre du Diable ou au Refuge des Anges {{ColorSilver}}(33%)#1 coffre {{ColorSilver}}(67%)"},
	{"7", "", "1 objet angélique {{ColorSilver}}(33%)#1 cœur d'âme {{ColorSilver}}(67%)"},
	{"8", "", "7 Bombes Troll {{ColorSilver}}(100%)"},
	{"9", "", "Invoque {{ColorCyan}}Uriel{{ColorSilver}} (100%)"},
	{"10", "", "7 cœurs d'âme {{ColorSilver}}(50%)#30 pièces {{ColorSilver}}(50%)"},
	{"11", "", "Invoque {{ColorCyan}}Gabriel{{ColorSilver}} (100%)"},
	{"12", "", "Téléportation à la {{ColorTransform}}Chambre Noire {{ColorSilver}}(50%)#Rien {{ColorSilver}}(50%)"},
}
---------- Dice Room ----------
EID.descriptions[languageCode].diceHeader = "[Effet de dé]"

EID.descriptions[languageCode].dice={
	{"1", "", "Rejoue tous les objets d'Isaac"},
	{"2", "", "Rejoue toutes les ressources de la salle"},
	{"3", "", "Rejoue toutes les ressources de l'étage"},
	{"4", "", "Rejoue tous les objets sur piédestal de l'étage#N'affecte pas les Pactes avec le Diable"},
	{"5", "", "Rejoue et recommence l'étage actuel"},
	{"6", "", "Rejoue les objets d'Isaac, les objets sur piédestal et les ressources de l'étage#Rejoue également les objets des autres joueurs en co-op"},
}

---------- Transformations ----------
EID.descriptions[languageCode].transformations={
	"",					-- 0 = none
	"Guppy",			-- 1
	"Fan de Spore",			-- 2
	"Belzébuth",		-- 3
	"Siamois",		-- 4
	"Addict",				-- 5
	"Oui Maman ?!",		-- 6
	"Crotte Alors",			-- 7
	"Bob",				-- 8
	"Léviathan",		-- 9
	"Séraphin",			-- 10
	"Supermendiant",		-- 11
	"Rat de Bibliothèque",			-- 12
	"Bébé Araignée",		-- 13
	"Adulte",			-- 14
	"Poids Lourd"			-- 15
}


---------- MISC ----------
-- a function that will get applied onto specific descriptions (glitched items, Abyss locusts,...) to pluralize them, make it nil to not pluralize
EID.descriptions[languageCode].PluralizeFunction = function(text, amount)
	-- French plural
	-- replace {pluralize} placeholders inside the text with an "s"
	return EID:ReplaceVariableStr(text, "pluralize", amount > 1 and "s" or "")
end

EID.descriptions[languageCode].VoidText = "Si absorbé :"
EID.descriptions[languageCode].VoidNames = {"Vitesse {{ColorLime}}{1}", "Débit {{ColorLime}}{1}", "Dégâts {{ColorLime}}{1}", "Portée {{ColorLime}}{1}", "Vitesse des tirs {{ColorLime}}{1}", "Chance {{ColorLime}}{1}"}

EID.descriptions[languageCode].PurityBoosts = {[0] = "↑ Dégâts {{ColorLime}}+4", "↑ Débit {{ColorLime}}-4", "↑ Vitesse {{ColorLime}}+0.5", "↑ Portée {{ColorLime}}+7.5#↑ Hauteur des larmes {{ColorLime}}+1"}

EID.descriptions[languageCode].CrookedPennyHeads = "Face"
EID.descriptions[languageCode].CrookedPennyTails = "Pile"

EID.descriptions[languageCode].LuckModifier = "{1}% à {2} Chance"

EID.descriptions[languageCode].CollectionPageInfo = "Cet objet n'a encore jamais été ramassé !"

EID.descriptions[languageCode].BlackFeatherInformation = "{{ColorSilver}}({1} objets : Dégâts {{ColorLime}}+{2}{{ColorSilver}})"

EID.descriptions[languageCode].SingleUseInfo = "{{Warning}} USAGE UNIQUE {{Warning}}"

-- Find/replace pairs for changing "+1 Health" to "+1 Soul Heart" for soul health characters, or nothing at all for The Lost
-- {1} = number of hearts, {pluralize} = plural character
-- These texts are affected by the PluralizeFunction (ab+ file)
-- If having a simple plural character doesn't work for your language, you could just include an extra string pair to catch plural lines
EID.descriptions[languageCode].RedToX = {
	-- These change "+1 Health" to just "+1 Soul Heart" and etc.
	["Red to Soul"] = {"{{Heart}} +{1} réceptacle{pluralize} de cœur", "{{SoulHeart}} +{1} cœur{pluralize} d'âme",
	"{{EmptyHeart}} +{1} réceptacle{pluralize} de cœur", "{{SoulHeart}} +{1} cœur{pluralize} d'âme",
	"↓ {1} réceptacle{pluralize} de cœur", "↓ {1} cœur{pluralize}"},

	["Red to Black"] = {"{{Heart}} +{1} réceptacle{pluralize} de cœur", "{{BlackHeart}} +{1} cœur{pluralize} noir{pluralize}",
	"{{EmptyHeart}} +{1} réceptacle{pluralize} de cœur", "{{BlackHeart}} +{1} cœur{pluralize} noir{pluralize}",
	"↓ {1} réceptacle{pluralize} de cœur", "↓ {1} cœur{pluralize}"},

	["Red to Bone"] = {"{{Heart}} +{1} réceptacle{pluralize} de cœur", "{{BoneHeart}} +{1} cœur{pluralize} d'os",
	"{{EmptyHeart}} +{1} réceptacle{pluralize} de cœur", "{{EmptyBoneHeart}} +{1} cœur{pluralize} d'os", "↓ -{1} réceptacle{pluralize} de cœur", "↓ -{1} cœur{pluralize}",
	"↓ {1} réceptacle{pluralize} de cœur", "↓ {1} cœur{pluralize} d'os",
	"{{HealingRed}}", "{{HealingBone}}"}, -- Red HP to Bone Hearts

	["Red to Coin"] = {"{{Heart}} +{1} réceptacle{pluralize} de cœur", "{{CoinHeart}} +{1} réceptacle{pluralize} de pièce",
	"{{EmptyHeart}} +{1} réceptacle{pluralize} de cœur", "{{EmptyCoinHeart}} +{1} réceptacle{pluralize} de pièce", "↓ -{1} réceptacle{pluralize} de cœur", "↓ -{1} réceptacle{pluralize} de pièce",
	"↓ {1} réceptacle{pluralize} de cœur", "↓ {1} réceptacle{pluralize} de pièce",
	"{{HealingRed}} Soigne {1} cœur{pluralize} rouge{pluralize}", "{{HealingCoin}} Soigne {1} pièce{pluralize}", "{{HealingRed}} Soigne un demi-cœur rouge", "{{HealingCoin}} Soigne 1 pièce", "{{HealingRed}}", "{{HealingCoin}}"},

	["Red to None"] = {"{{Heart}} +{1} réceptacle{pluralize} de cœur", "", "{{EmptyHeart}} +{1} réceptacle{pluralize} de cœur", "", "↓ {1} réceptacle{pluralize} de cœur", ""}, -- Red HP to None (The Lost)
}

EID.descriptions[languageCode].MCM = {
	DemoObjectName = "Nom de l'objet test",
	DemoObjectTransformation = "Transformation de test",
	DemoObjectText = "Ceci est un texte en français#Une description longue trop cool pour tester les retours à la ligne automatiques !!#{{Collectible4}} Super ligne ici aussi#{{Heart}} Cette ligne t'adore#{{AngelDevilChance}} Cette ligne peut être ton petit ange ou ton petit diable#\1 {{Damage}} {{ColorLime}}+1{{ColorWhite}} statistique",
}

-- the ItemReminder description will predict the abilities of items with a header like "Item Name Result"
EID.descriptions[languageCode].ItemReminder = {
	ResultHeader = "Effet de {1}",
	InventoryEmpty = "(Aucun objet dans l'inventaire)",
	CategoryNames = {
		Overview = " Inventaire global ",
		Wisps = " Feux follets de Lemegeton ",
		Special = " Effets spéciaux ",
		Actives = " Objets activables ",
		Pockets = " Ressources ",
		Trinkets = " Babioles ",
		Passives = " Objets passifs ",
		Character = " Info personnage ",
	}
}

-- https://wofsauge.github.io/IsaacDocs/rep/enums/RoomType.html
-- Includes Repentance room types for localization convenience
EID.descriptions[languageCode].RoomTypeNames = { "Salle normale", "Boutique", "Salle I AM ERROR", "Salle du Trésor", "Salle de Boss", "Salle de Mini-boss", "Salle Secrète", "Salle Super Secrète", "Salle d'Arcade", "Salle Maudite", "Salle de Défi", "Bibliothèque", "Salle de Sacrifice", "Antre du Diable", "Refuge des Anges", "Souterrain", "Ruée des Boss", "Chambre d'Isaac", "Chambre Abandonnée", "Coffre-Fort", "Salle de Dé", "Marché Noir", "Sas de Sortie", "Planétarium", "Téléporteur (Départ)", "Téléporteur (Arrivée)", "Sortie Secrète", "Salle de l'Utérus Bleu", "Salle Ultra Secrète",
-- Not technically room types but still potentially useful to have localized
[666] = "Antre du Diable / Refuge des Anges", [1024] = "Salle Rouge", [1025] = "Salle Rouge Spéciale" }
-- currently used for D1
EID.descriptions[languageCode].PickupNames = {
	["5.0"] = "Aucun",

	["5.10"] = "{{Heart}} Cœur",
	["5.10.1"] = "{{Heart}} Cœur", ["5.10.2"] = "{{HalfHeart}} Demi-cœur", ["5.10.3"] = "{{SoulHeart}} Cœur d'âme", ["5.10.4"] = "{{EternalHeart}} Cœur éternel", ["5.10.5"] = "{{Heart}} Double-cœur", ["5.10.6"] = "{{BlackHeart}} Cœur noir", ["5.10.7"] = "{{GoldHeart}} Cœur doré", ["5.10.8"] = "{{HalfSoulHeart}} Demi-cœur d'âme", ["5.10.9"] = "{{Heart}} Cœur effrayé", ["5.10.10"] = "{{BlendedHeart}} Cœur mixte", ["5.10.11"] = "{{EmptyBoneHeart}} Cœur d'os", ["5.10.12"] = "{{RottenHeart}} Cœur moisi",

	["5.20"] = "{{Coin}} Pièce",
	["5.20.1"] = "{{Crafting8}} Pièce", ["5.20.2"] = "{{Crafting9}} Pièce de bronze", ["5.20.3"] = "{{Crafting10}} Pièce d'argent", ["5.20.4"] = "{{Crafting8}} Double pièce", ["5.20.5"] = "{{Crafting11}} Pièce porte-bonheur", ["5.20.6"] = "{{Crafting9}} Pièce collante", ["5.20.7"] = "{{Crafting26}} Pièce dorée",

	["5.30"] = "{{Key}} Clé",
	["5.30.1"] = "{{Crafting12}} Clé", ["5.30.2"] = "{{Crafting13}} Clé dorée", ["5.30.3"] = "{{Crafting12}} Double clé", ["5.30.4"] = "{{Crafting14}} Clé chargée",

	["5.40"] = "{{Bomb}} Bombe",
	["5.40.1"] = "{{Crafting15}} Bombe", ["5.40.2"] = "{{Crafting15}} Double bombe", ["5.40.3"] = "{{Crafting15}} Bombe troll", ["5.40.4"] = "{{Crafting16}} Bombe dorée", ["5.40.5"] = "{{Crafting15}} Bombe maxi-troll", ["5.40.7"] = "{{Crafting17}} Giga bombe",

	["5.42"] = "{{Crafting29}} Bout de crotte", ["5.42.1"] = "{{Crafting29}} Gros bout de crotte",

	["5.90"] = "{{Battery}} Pile",
	["5.90.0"] = "{{Crafting19}} Pile", --AB+ didn't have subtypes for batteries
	["5.90.1"] = "{{Crafting19}} Pile", ["5.90.2"] = "{{Crafting18}} Micro pile", ["5.90.3"] = "{{Crafting20}} Méga pile", ["5.90.4"] = "{{Crafting28}} Pile dorée",

	["5.50"] = "{{Chest}} Coffre", ["5.51"] = "{{BombChest}} Coffre en pierre", ["5.52"] = "{{SpikedChest}} Coffre à pics", ["5.53"] = "{{EternalChest}} Coffre éternel", ["5.54"] = "{{MimicChest}} Coffre piégé", ["5.55"] = "{{OldChest}} Coffre antique", ["5.56"] = "{{WoodenChest}} Coffre en bois", ["5.57"] = "{{MegaChest}} Coffre géant", ["5.58"] = "{{HauntedChest}} Coffre hanté", ["5.60"] = "{{GoldenChest}} Coffre doré", ["5.360"] = "{{RedChest}} Coffre rouge",

	["5.69"] = "{{GrabBag}} Sachet", ["5.69.1"] = "{{GrabBag}} Sachet", ["5.69.2"] = "{{BlackSack}} Sac Noir",

	["5.70"] = "{{Pill}} Pilule",
	["5.300"] = "{{Card}} Carte",
	["5.301"] = "{{Rune}} Rune", -- not a real id
	["5.350"] = "{{Trinket}} Babiole",

}

EID.descriptions[languageCode].ConditionalDescs = {
	------ GENERAL STRINGS ------
	["Overridden"] = "Effet annulé par {1}",
	["Overrides"] = "Annule l'effet de {1}",
	["Almost No Effect"] = "Presque aucun effet avec {1}",
	["No Effect"] = "Aucun effet avec {1}",
	["No Effect Replace"] = {"Aucun effet pour {1}"},
	["No Effect From"] = "Aucun effet par {1}",
	["Can't Charge"] = "Ne recharge pas {1}",
	["Can't Be Charged"] = "Ne peut pas être rechargé par {1}",
	["Can't Be Duplicated"] = "Ne peut pas être dupliqué",
	["No Effect (Greed)"] = "{{GreedModeSmall}} Aucun effet en mode Avarice",
	["No Effect (Copies)"] = "Avoir plusieurs exemplaires ne cumule pas les effets", -- Having the item already, or having Diplopia while looking at a pedestal
	["No Effect (Familiars)"] = "Aucun effet bonus pour les familiers", -- probably just for Hive Mind + BFFS!
	["Different Effect"] = "{{ColorSilver}}(Effet différent avec {1}{{ColorSilver}})",
	["Dies on Use"] = "{{Warning}} Tue {1} si utilisé",


	------ GREED MODE ------
	["Room to Wave"] = {"salle", "vague", "salle", "vague"}, -- convert room clear effects to wave clear effects
	["No Champion Drops"] = "!!! Les ennemis d'élite ne font pas apparaître de ressources en mode Avarice", -- Champion Belt / Purple Heart
	["5.300.15"] = {"Invoque un mendiant démoniaque {{DemonBeggar}}"}, -- Temperance (Greed)
	["5.300.19"] = {"Téléporte Isaac dans la première salle de l'étage"}, -- The Moon (Greed)
	["5.300.20"] = {"{{HealingRed}} Soin complet#Inflige 100 dégâts à tous les ennemis de la salle"}, -- XIX - The Sun (Greed)
	["5.100.483 (Greed)"] = "{{GreedMode}} Ne se déclenche qu'une fois par salle, pas par vague", -- Mama Mega (Greed)
	["5.100.535"] = {"une salle de boss", "la salle du boss final"}, -- Blanket (Greed)
	["5.350.120"] = {"une salle de boss", "la salle du boss final"}, -- Hairpin (Greed)
	["5.100.246"] = {"Révèle l'emplacement de la salle Super Secrète sur la carte"}, -- Blue Map (Greed)
	["5.100.333"] = {"Révèle l'emplacement de la salle Super Secrète sur la carte"}, -- The Mind (Greed)
	["5.100.514"] = {"Paralyse parfois les ennemis et projectiles"}, -- Broken Modem (Greed)
	["5.350.34"] = {"Détruire une machine, un rocher marqué ou ouvrir un coffre fait parfois apparaître un cœur"}, -- Child's Heart
	["5.350.36"] = {"Détruire une machine, un rocher marqué ou ouvrir un coffre fait parfois apparaître une clé"}, -- Rusted Key
	["5.350.41"] = {"Détruire une machine, un rocher marqué ou ouvrir un coffre fait parfois apparaître une bombe#Permet de retirer la {{ColorYellow}}Tique{{Trinket53}}"}, -- Match Stick
	["5.350.44"] = {"Détruire une machine, un rocher marqué ou ouvrir un coffre fait parfois apparaître une pilule"}, -- Safety Cap
	["5.350.45"] = {"Détruire une machine, un rocher marqué ou ouvrir un coffre fait parfois apparaître une carte"}, -- Ace of Spades
	["5.350.72"] = {"Augmente la fréquence d'apparition des piles#Terminer une vague charge parfois une barre supplémentaire de l'objet activable"}, -- Watch Battery
	["5.100.297 (Greed)"] = {"Donne selon l'étage :#SS : {{Bomb}}{{Bomb}} + {{Key}}{{Key}}#Gr : Objet de boss + {{SoulHeart}}{{SoulHeart}}#Pr : 20{{Coin}}#Ut: 2 objets de boss#Sh : Objet diabolique + {{BlackHeart}}#Boutique : {{Coin}}"}, -- Pandora's Box


	------ ACHIEVEMENT CHECKS ------
	["5.350.23"] = "{{Warning}} Mourir dans une salle de sacrifice en portant cette babiole débloque {{ColorLightOrange}}L'Égaré", -- Missing Poster (Unlock The Lost)
	["5.100.297"] = {"Débloque le {{ColorYellow}}Carton de Déménagement{{ColorWhite}} {{Collectible523}}", "Rien"}, -- Pandora's Box unlocking Moving Box


	------ SPECIFIC CHARACTER SYNERGIES/CHANGES ------
	
	["Super Bandage Soul"] = {"{{SoulHeart}} +3 cœurs d'âme"}, -- for Soul Heart chars
	["Super Bandage Black"] = {"{{SoulHeart}} +2 cœurs d'âme#{{BlackHeart}} +1 cœur noir"}, -- for Black Heart chars
	["Black Lotus Soul"] = {"{{SoulHeart}} +2 cœurs d'âme#{{BlackHeart}} +1 cœur noir"}, -- for Soul Heart chars
	["Black Lotus Black"] = {"{{SoulHeart}} +1 cœur d'âme#{{BlackHeart}} +2 cœurs noirs"}, -- for Black Heart chars
	["5.100.135 (PHD)"] = {"1 ou 2", "2 ou 3"}, -- IV Bag PHD
	["Keeper 0-1"] = {"1 ou 2", "0 ou 1", "2 ou 3", "0 ou 1"}, -- IV Bag/Piggy Bank Keeper
	["5.100.549"] = {"Débit {{ColorLime}}+0.4#{{ColorSilver}}(Effet propre à {1})"}, -- Brittle Bones (Keeper+Lost)
	["5.100.501"] = "Permet à {1} d'augmenter son nombre de réceptacles de pièce", -- Greed's Gullet
	["5.100.230 (Keeper)"] = {"{{Warning}} Tue instantanément {1}"}, -- Abaddon


	------ DUPLICATE COPIES OF ITEMS ------
	["5.100.2 (Copies)"] = {"{{Blank}} {{ColorSilver}}Multiples exemplaires :#Isaac tire 3 larmes supplémentaires"}, -- The Inner Eye
	["5.100.153 (Copies)"] = {"{{Blank}} {{ColorSilver}}Multiples exemplaires :#Isaac tire 4 larmes supplémentaires"}, -- Mutant Spider
	["5.100.245 (Copies)"] = {"{{Blank}} {{ColorSilver}}Multiples exemplaires :#Isaac tire 2 larmes supplémentaires"}, -- 20/20
	["5.100.358 (Copies)"] = {"{{Blank}} {{ColorSilver}}Multiples exemplaires :#Isaac tire 2 larmes supplémentaires"}, -- The Wiz
	["5.100.64 (Copies)"] = {"{{Blank}} {{ColorSilver}}Multiples exemplaires :#Rend gratuits tous les objets de la boutique"}, -- Steam Sale
	["5.100.118 (Copies)"] = {"{{Blank}} {{ColorSilver}}Multiples exemplaires :#Isaac tire un laser supplémentaire"}, -- Brimstone
	["5.100.224 (Copies)"] = "Seul le malus de vitesse se cumule", -- Kidney Stone


	----- MISC. ITEM CONDITIONS ------
	["Sacrificial Nugget"] = "Les mouches du Bout de Crotte peuvent être sacrifiées",
	["Sacrificial Conception"] = "Les familiers invoqués par {1} peuvent être sacrifiés et réinvoqués",
	["Sacrificial Angels"] = "Sacrifier {1} fait apparaître 2 cœurs noirs",
	["Sacrificial Void"] = "Peut être utilisé plusieurs fois si absorbé",

	["5.100.116 (1 Room)"] = "Recharge en 15 secondes dans les salles hostiles", -- 9 Volt
	["5.100.116 (Timed)"] = "Recharge 2 fois plus vite", -- 9 Volt
	["9 Volt 1 Room"] = "Recharge en 15 secondes dans les salles hostiles", -- Actives + 9 Volt
	["9 Volt Timed"] = "Recharge 2 fois plus vite", -- Actives + 9 Volt
	["5.100.205 (Wafer)"] = {"deux cœurs", "un demi-cœur ({{Collectible205}})"}, -- Sharp Plug + Wafer

	["Suicide 1"] = "{1} ne peut pas empêcher la mort d'Isaac", -- Plan C, Damocles, Suicide King
	["Suicide 2"] = "Ne peut pas empêcher {1} de tuer Isaac", -- Plan C, Damocles, Suicide King

	["5.100.7"] = "Dégâts {{ColorLime}}x1.5", -- Blood of the Martyr
	["5.100.34"] = {"+2", "+2 x1.5 {{ColorSilver}}(Avec {{Collectible7}} )"}, -- Book of Belial
	["5.300.16"] = {"+2", "+2 x1.5 {{ColorSilver}}(Avec {{Collectible7}} )"}, -- XV - The Devil

	["5.100.81"] = {"Réduit le nombre de réceptacles de cœurs rouges d'Isaac à 1","Retire tous les cœurs d'Isaac sauf 1", "réceptacle de cœur", "cœur"}, -- Dead Cat
	["5.100.316"] = {"{{Warning}} Subir un dégât pendant le chargement de l'attaque téléporte Isaac dans une salle aléatoire", "Pas d'effet de téléportation avec la {1}"}, -- Cursed Eye
	["5.100.260"] = "Retire l'effet de téléportation de {1}", -- Black Candle
	["Void Single Use"] = "Les objets à usage unique ne sont activés qu'une seule fois", -- Single Use Actives + Void
	["? Card Single Use"] = "Fait disparaître les objets à usage unique après les avoir utilisé", -- Single Use Actives + ? Card
	["5.300.48"] = "Téléporte Isaac dans la salle d'erreur et détruit la {{ColorCard}}Carte ?{{CR}} et la {{ColorYellow}}Carte Blanche", -- Blank Card + ? Card
	["? + Blank Pedestal"] = "Téléporte Isaac dans la salle d'erreur et détruit la {{ColorCard}}Carte ?{{CR}} et la {{ColorYellow}}Carte Blanche", -- Looking at Blank Card with ? Card
	["5.100.208"] = {20, 35, 5, 20}, -- Champion Belt + Hard Mode
	["5.100.521"] = "{{Collectible376}} Les objets rendus gratuits ne sont pas réapprovisionnés", -- Coupon + Restock/Greed
	["Black Feather"] = "↑ Dégâts {{ColorLime+0.2}}", -- Black Feather items

	["Bulb Multiple"] = "L'effet est basé sur l'objet activable principal", -- Vibrant/Dim Bulb + Schoolbag/Pocket Actives
	["Bulb Zero"] = "Les objets sans barre de charge déclenchent l'effet", -- Vibrant/Dim Bulb + zero charge actives
	["5.350.101 (Timed)"] = "Inutile avec les objets à recharge automatique", -- Dim Bulb + Timed Recharges
	["5.100.122"] = {"Isaac n'a qu'un demi-cœur", "Ève n'a qu'un cœur"}, -- Whore of Babylon + Eve

	["5.70.28"] = "Isaac tire devant lui et sur les côtés", -- R U A Wizard + The Wiz
	["5.100.523"] = "Compte comme un objet passif pour {1}", -- Moving Box + Void
	["Mongo Babies"] = "Peut être imité par {1}", -- Mongo Baby + Baby Familiars
	["Technology 2 One Eye"] = {"#Toutes les larmes d'Isaac sont tirées de l'œil droit", "", "Remplace complètement les larmes d'Isaac par le laser"},
	["Brimstone Proptosis"] = "Les lasers infligent 2x dégâts à bout portant, diminuant avec la distance",
	["Brimstone Ipecac"] = "Isaac tire des larmes explosives pendant qu'il charge",
	["Proptosis Anti-Gravity"] = "Les larmes ne perdent pas de dégâts tant qu'elles ne bougent pas",
	["Epic Fetus Soy Milk"] = "Réduit les dégâts du missile mais pas le temps entre les frappes",
	["Eye of Belial Dr. Fetus"] = "Les bombes deviennent transperçantes mais pas autoguidées",
	["Epic Fetus Brimstone"] = "{1} est prioritaire#Les fusées tirent 10 lasers",
	["Epic Fetus Mom's Knife"] = "{1} est prioritaire #Les fusées tirent 10 couteaux",
	["Brimstone Mom's Knife"] = "{1} est prioritaire#Le premier couteau est suivi d'une vague de couteaux supplémentaires",
	["Haemolacria Brimstone"] = "{1} est prioritaire#Les larmes éclatent en lasers de sang",
	["Ludovico Ipecac"] = "La larme ne devient ni explosive ni empoisonnée",
	["Technology Ipecac"] = "Le laser empoisonne les ennemis",
	["Chocolate Milk Overrides"] = "↑ Débit {{ColorLime}}x1.25",
	["Chocolate Milk Marked"] = "Isaac charge automatiquement selon sa distance du curseur",
	["Ghost Pepper Fart"] = "Péter tire une flamme derrière Isaac",
	["Damage Multiplier Stack"] = "Les multiplicateurs de dégâts ne peuvent pas être cumulés",
	["White Poop"] = {"{{Poop}}", "{{HolyPoop}}", "Le caca est sacré"},
	["White Poop Chance"] = {"{{Poop}}", "{{Poop}}/{{WhitePoop}}", "Le caca est parfois sacré"},
	["Golden Poop Chance"] = {"{{Poop}}", "{{Poop}}/{{GoldenPoop}}", "{{HolyPoop}}", "{{HolyPoop}}/{{GoldenPoop}}", "Le caca est parfois doré"},
	["5.100.483"] = "L'objet peut être utilisé sans le faire disparaître en échange d'une {{ColorGold}}bombe dorée",

	["5.300.5"] = {"Téléporte Isaac dans une Salle de Boss au hasard"}, -- IV - The Emperor (in The Void)
	["5.300.18"] = "Téléporte Isaac dans une salle au hasard s'il n'y a pas de Salle du Trésor", -- XVII - The Stars (Womb and below)
	["5.300.18 (Greed)"] = {"Téléporte Isaac dans l'une des deux Salles du Trésor"}, -- XVII - The Stars (Greed)
	["5.300.18 (Late Greed)"] = {"Téléporte Isaac dans la première salle de l'étage"}, -- XVII - The Stars (Greed Last Floors)
	["5.300.10"] = "Téléporte Isaac dans une salle au hasard s'il n'y a pas de Boutique", -- IX - The Hermit (Womb and below)

}
EID.descriptions[languageCode].BFFSSynergies = {
	["No Effect"] = "Aucun effet bonus",
	["5.100.8"] = {3.5, 7}, -- Brother Bobby
	["5.100.57"] = {75, 150}, -- Distant Admiration
	["5.100.67"] = {3.5, 7}, -- Sister Maggy
	["5.100.73"] = "Double les dégâts infligés", -- Cube of Meat
	["5.100.88"] = {52.5, 105}, -- Little Chubby
	["5.100.94"] = {"une pièce", "1 ou 2{{CR}} pièces"}, -- Sack of Pennies
	["5.100.95"] = {3.5, 7}, -- Robo-Baby
	["5.100.96"] = {"3", "2 ou 3"}, -- Little C.H.A.D.
	["5.100.98"] = {"5 ou 6", "4 ou 5"}, -- The Relic
	["5.100.99"] = {3.5, 7}, -- Little Gish
	["5.100.100"] = {3.5, 7}, -- Little Steven
	["5.100.107"] = {82.5, 165}, -- The Pinking Shears
	["5.100.112"] = {105, 210}, -- Guardian Angel
	["5.100.113"] = {3, 6}, -- Demon Baby
	["5.100.117"] = {4.3, 8.6}, -- Dead Bird
	["5.100.128"] = {30, 60}, -- Forever Alone
	["5.100.131"] = {"3", "2 ou 3"}, -- Bomb Bag
	["5.100.144"] = {"3 ou 4", "3"}, -- Bum Friend
	["5.100.155"] = {17, 34}, -- The Peeper
	["5.100.163"] = {3.5, 7}, -- Ghost Baby
	["5.100.167"] = {4, 8}, -- Harlequin Baby
	["5.100.170"] = {40, 80}, -- Daddy Longlegs
	["5.100.172"] = {225, 450}, -- Sacrificial Dagger
	["5.100.174"] = {"3 à 5", "6 à 10"}, -- Rainbow Baby
	["5.100.187"] = "Double les dégâts infligés", -- Guppy's Hairball
	["5.100.188"] = {3.5, 7, 7.5, 15}, -- Abel (includes Cain's Rep synergy)
	["5.100.206"] = {105, 210}, -- Guillotine
	["5.100.207"] = "Double les dégâts infligés", -- Ball of Bandages
	["5.100.264"] = {22.5, 45}, -- Smart Fly
	["5.100.266"] = {"1 ou 2", "2 ou 3"}, -- Juicy Sack
	["5.100.267"] = {3.5, 7}, -- Robo-Baby 2.0
	["5.100.270"] = {3.2, 6.4}, -- Leech
	["5.100.271"] = {"5 ou 6", "4 ou 5"}, -- Mystery Sack
	["5.100.272"] = {60, 85}, -- BBF
	["5.100.273"] = {60, 85}, -- Bob's Brain
	["5.100.274"] = {75, 150}, -- Best Bud
	["5.100.275"] = {31.5, 63}, -- Lil Brimstone
	["5.100.277"] = {4, 8}, -- Lil Haunt
	["5.100.279"] = {30, 60}, -- Big Fan
	["5.100.318"] = {6, 12}, -- Gemini
	["5.100.319"] = {"les mêmes dégâts que lui", "deux fois ses dégâts"}, -- Cain's Other Eye
	["5.100.320"] = {37.5, 75}, -- ???'s Only Friend
	["5.100.321"] = {10.7, 21.4}, -- Samson's Chains
	["5.100.322"] = {3.5, 7,"Double les dégâts infligés"}, -- Mongo Baby
	["5.100.325"] = {3.5, 7}, -- Scissors
	["5.100.360"] = "Double les dégâts infligés", -- Incubus
	["5.100.361"] = "Tire des larmes qui imitent les effets de celles d'Isaac et infligent {{BlinkPink}} 2x{{CR}} ses dégâts avec un plus faible débit", -- Fate's Reward
	["5.100.362"] = {25, 31.25, 10, 12.5}, -- Lil Chest
	["5.100.363"] = {105, 210}, -- Sworn Protector
	["5.100.364"] = {45, 90}, -- Friend Zone
	["5.100.365"] = {105, 210}, -- Lost Fly
	["5.100.372"] = "Augmente les chances de faire apparaître une pile", -- Charged Baby
	["5.100.384"] = {"5 à 90", "10 à 180"}, -- Lil Gurdy
	["5.100.385"] = "Double les dégâts infligés", -- Bumbo
	["5.100.388"] = {"échange","{{ColorWhite}}échange{{BlinkPink}} (plus souvent avec {{Collectible247}})"}, -- Key Bum
	["5.100.389"] = {"5 ou 6", "4 ou 5"}, -- Rune Bag
	["5.100.390"] = {10, 20}, -- Seraphim
	["5.100.403"] = {"pile","{{ColorWhite}}pile{{BlinkPink}} (plus souvent avec {{Collectible247}})"}, -- Spider Mod
	["5.100.405"] = {120, 240}, -- GB Bug
	["5.100.417"] = "Augmente la taille de l'aura mais pas le bonus de dégâts", -- Succubus
	["5.100.426"] = {30, 60}, -- Obsessed Fan
	["5.100.430"] = {"les d", "deux fois les d"}, -- Papa Fly
	["5.100.435"] = {3.5, 7}, -- Lil Loki
	["5.100.467"] = {10, 20}, -- Finger!
	["5.100.468"] = {30, 60}, -- Shade
	["5.100.470"] = {30, 60}, -- Hushy
	["5.100.471"] = {3.5, 7}, -- Lil Monstro
	["5.100.473"] = {40.5, 81}, -- Big Chubby
	["5.100.491"] = {"3", "2 ou 3"}, -- Acid Baby
	["5.100.500"] = {"5 ou 6", "4 ou 5"}, -- Sack of Sacks
	["5.100.504"] = {2, 4}, -- Brown Nugget
	["5.100.508"] = {3, 6}, -- Mom's Razor
	["5.100.509"] = {3.5, 7, 30, 60}, -- Bloodshot Eye
	["5.100.511"] = {30, 60}, -- Angry Fly
	["5.100.518"] = "Double les dégâts infligés", -- Buddy in a Box
	["5.100.519"] = "Double les dégâts infligés", -- Lil Delirium
	["5.100.525"] = {35, 70}, -- Leprosy
	["5.100.526"] = "Double les dégâts de contact du cavalier", -- 7 Seals
	["5.100.537"] = "Augmente la taille de la flaque mais pas ses dégâts", -- Lil Spewer
	["5.100.539"] = {"un ennemi", "un ennemi d'élite"}, -- Mystery Egg
	["5.100.544"] = {6, 12}, -- Pointy Rib
	["5.100.545"] = "Double les dégâts de contact des os orbitaux", -- Book of the Dead
	["5.100.548"] = {7, 14}, -- Jaw Bone

	["5.350.54"] = {3.5, 7}, --- Isaac's Head
	["5.350.57"] = {3.5, 7}, --- ???'s Soul
	["Lilith"] = "Double les dégâts de l'{{ColorYellow}}Incube", -- Incubus (for BFFS pedestal)
}

EID.descriptions[languageCode].CharacterInfo = {
	[0] = {"Isaac", ""},
	[1] = {"Marie", ""},
	[2] = {"Caïn", ""},
	[3] = {"Judas", ""},
	[4] = {"???", "Ne peut pas avoir de cœurs rouges"},
	[5] = {"Ève", ""},
	[6] = {"Samson", ""},
	[7] = {"Azazel", "Peut voler#Crache un court laser de sang"},
	[8] = {"Lazare", "Mourir ressuscite Lazare avec 1 réceptacle de cœur et augmente ses stats"},
	[9] = {"Éden", "Commence chaque partie avec un objet passif, un objet activable, des ressources et des statistiques aléatoires"},
	[10] = {"L'Égaré", "Peut voler#Larmes spectrales#Meurt s'il subit un dégât#Peut signer gratuitement les Pactes avec le Diable"},
	[11] = {"Lazare Ressuscité", "↑ Dégâts {{ColorLime}}x1.2#Stats augmentées#Subir un dégât répand du sang corrosif au sol"},
	[12] = {"Judas des Ombres", "↑ Dégâts {{ColorLime}}x2"},
	[13] = {"Lilith", "Ne peut pas tirer de larmes#Son {{ColorYellow}}Incube{{CR}} tire à sa place"},
	[14] = {"Le Gardien", "Ne peut se soigner qu'avec des pièces#Les cœurs ramassables sont remplacés par des mouches bleues"},
	[15] = {"Apollyon", ""},
	[16] = {"Le Délaissé", "Attaque au corps-à-corps#Charger l'attaque lance l'os#Ne peut avoir que 6 cœurs d'os# {{ButtonRT}} passe à l'Âme"},
	[17] = {"L'Âme", "Peut voler#Tire des larmes spectrales#Ne peut avoir que 6 cœurs d'âme/noirs#Le Corps bloque les projectiles ennemis et empêche l'Âme de trop s'éloigner# {{ButtonRT}} passe au Corps"},
}

