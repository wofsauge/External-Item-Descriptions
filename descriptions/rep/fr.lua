--------------------------------------
-----  Basic French descriptions -----
--------------------------------------

-- Last Sync with en_us: 08.08.2021

-- FORMAT: Item ID | Name| Description
-- '#' = starts new line of text

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  ! = Warning

local repCollectibles={
	[5] = {"5", "My reflexion", "Donne un effet boomerang aux larmes#↑ +1.5 Portée#↑ +60% Portée supplémentaire#↑ +0.6 Vitesse des larmes#↑ +1 Hauteur des larmes"}, -- My Reflection
	[6] = {"6", "Number One", "↑ +1.5 Cadence de tir#↓ -1.5 Portée#↓ -20% Portée supplémentaire#↑ +0.76 Hauteur des larmes"}, -- Number One
	[12] = {"12", "Magic Mushroom", "↑ +1 Coeur max#↑ +0.3 Dégâts#↑ +50% Multiplicateur de dégâts#↑ +1.5 Portée#↑ +0.3 Vitesse#↑ +0.5 Hauteur des larmes#Soin complet !"},
	[13] = {"13", "", "Toucher empoisonné#↑ +0.2 Vitesse"}, -- The Virus
	[14] = {"14", "", "↑ +0.3 Vitesse des larmes#↑ +5.25 Portée#↑ +0.5 Hauteur des larmes"}, -- Roid Rage
	[18] = {"18", "A Dollar", "+100 Pièces"}, -- A Dollar
	[22] = {"22", "", "↑ +1 Coeur max#Soigne un coeur"}, -- Lunch
	[23] = {"23", "", "↑ +1 Coeur max#Soigne un coeur"}, -- Dinner
	[24] = {"24", "", "↑ +1 Coeur max#Soigne un coeur"}, -- Dessert
	[25] = {"25", "", "↑ +1 Coeur max#Soigne un coeur"}, -- Breakfast
	[26] = {"26", "Rotten Meat", "↑ +1 Coeur max#Soigne un coeur"}, -- Rotten Meat
	[29] = {"29", "", "↑ +1.5 Portée#↑ +0.5 Hauteur des larmes#Fait apparaître 3-6 mouches bleues"}, -- Moms Underwear
	[30] = {"30", "", "↑ +1.5 Portée#↑ +0.5 Hauteur des larmes#Inflige des dégâts aux ennemis touchés"}, -- Mom's Heels
	[31] = {"31", "", "↑ +2.25 Portée#↑ +0.5 Hauteur des larmes#Fait apparaître un coeur aléatoire"}, -- Mom's Lipstick
	[40] = {"40", "", "Crée une grosse explosion à l'emplacement du joueur"}, -- Kamikaze!
	[42] = {"42", "", "Bombe empoisonnée jetable#Crée un nuage empoisonné"}, -- Bob's Rotten Head
	[44] = {"44", "", "Téléporte Isaac dans une salle aléatoire à l'exception de la salle I AM ERROR#Bouger dans une direction peut influencer la téléportation"}, -- Teleport
	[45] = {"45", "", "Soigne un coeur#Soigne aussi les autres joueurs d'un demi coeur"}, -- Yum Heart
	[46] = {"46", "", "↑ +1.0 Chance#Plus de chances de gagner aux machines à sous#Augmente les chances d'apparition de collectible après avoir fini une salle#Transforme certaines mauvaises pilules en bonnes pilules"}, -- Lucky Foot
	[53] = {"53", "Magneto", "Vous attirez les collectibles#Permet d'ouvrir les coffres à pics sans prendre de dégâts"}, -- Magneto
	[55] = {"55", "", "Chance de tirer une larme par derrière"}, -- Mom's Eye
	[62] = {"62", "", "↑ +0.3 Dégâts#Soigne un demi coeur tous les 13 ennemis tués"}, -- Charm of the Vampire
	[64] = {"64", "", "-50% pour les objets du magasin#Posséder plusieurs fois cet objet augmente la réduction"}, -- Steam Sale
	[67] = {"67", "", "Familier qui tire des larmes classiques"}, -- Sister Maggy
	[70] = {"70", "", "↑ +1.0 Dégâts#↑ +0.2 Vitesse"}, -- Growth Hormones
	[71] = {"71", "Mini Mush", "↑ +0.3 Vitesse#↑ +1.5 Portée#↓ Taille"}, -- Mini Mush
	[72] = {"72", "", "+3 Coeurs bleus#↑ 0.5 Cadence de tir#Plus de chances de trouver la Bible"}, -- Rosary
	[77] = {"77", "My Little Unicorn", "Invincibilité#20 dégâts au corps à corps"}, -- My Little Unicorn
	[79] = {"79", "", "↑ +1.0 Dégâts#↑ +0.2 Vitesse#+1 Coeur noir"}, -- The Mark
	[80] = {"80", "", "↑ +0.5 Dégâts#↑ +0.7 Cadence de tir#+2 Coeur noirs"}, -- The Pact
	[83] = {"83", "", "+1 Demi coeur noir#↑ +0.7 Dégâts#↓ -0.18 Vitesse#Inflige des dégâts au corps à corps#Écrase les rochers"}, -- The Nail
	[98] = {"98", "The Relic", "Fait apparaître un coeur bleu toutes les 7-8 salles"}, -- The Relic
	[101] = {"101", "The Halo", "↑ +1 Coeur max#↑ +0.3 Dégâts#↑ +0.2 Cadence de tir#↑ +0.38 Portée#↑ +0.3 Vitesse#↑ +0.5 Hauteur des larmes"}, -- The Halo
	[106] = {"106", "", "↑ Dégâts des bombes x1.85#+5 Bombes"}, -- Mr. Mega
	[110] = {"110", "Mom's Contacts", "Chance de tirer des larmes pétrifiantes#↑ +0.38 Portée#↑ +0.5 Hauteur des larmes"}, -- Mom's Contacts
	[121] = {"121", "", "↑ +1 Coeur max vide#↑ +1.0 Dégâts#↑ +0.25 Portée#↓ -0.2 Vitesse#↑ +0.5 Hauteur des larmes"}, -- Odd Mushroom (Large)
	[123] = {"123", "", "Fait apparaître un familier aléatoire#Disparaît à l'étage suivant"}, -- Monster Manual
	[129] = {"129", "Bucket of Lard", "↑ +2 réceptacles de coeur -0.2 Vitesse#Soigne d'un demi-coeur rouge"}, -- Bucket of Lard
	[138] = {"138", "Stigmata", "↑ +1 Coeur max#↑ +0.3 Dégâts#Soigne un coeur rouge"}, -- Stigmata
	[139] = {"139", "", "Vous pouvez tenir deux trinkets en même temps#Fait apparaître un trinket aléatoire"}, -- Mom's Purse
	[140] = {"140", "", "Bombes empoisonnées#+5 bombes#Les bombes laissent un nuage de poison"}, -- Bob's Curse
	[147] = {"147", "", "Brise les rochers et inflige des dégâts aux ennemis#Frapper avec la hache fait diminuer sa charge#Se recharge au changement d'étage"}, -- Notched Axe
	[148] = {"148", "", "Fait apparaître 2-6 mouches bleues quand vous vous faites toucher"}, -- Infestation
	[149] = {"149", "Ipecac", "Larmes explosives empoisonnées#↑ +40 Dégâts#↓ -0.2 Vitesse des larmes#↓ Cadence de tir"}, -- Ipecac
	[152] = {"152", "Technology 2", "Attaque continue au laser !#Le laser inflige 13% de vos dégâts#↓ Cadence de tir de 33%"}, -- Technology 2
	[158] = {"158", "Crystal Ball", "Révèle l'entièreté de l'étage#Fait tomber une carte aléatoire ou un coeur bleu#Quand tenu :#↑ +15% de chances de trouver un Planetatium#100% si vous ignorez une Item Room"}, -- Crystal Ball
	[171] = {"171", "", "Ralentit les ennemis pendant 4 secondes#Inflige des dégâts à tous les ennemis#Les ennemis tués par cet objets font apparaître des araignées bleues"}, -- Spider Butt
	[176] = {"176", "Stem Cells", "↑ +1 Coeur max#↑ +0.16 Vitesse des larmes#Soigne un coeur rouge"}, -- Stem Cells
	[178] = {"178", "Holy Water", "{{Throwable}} {{ColorOrange}}Jetable{{CR}}#Laisse une flaque paralysante en se brisant"}, -- Holy Water
	[182] = {"182", "Sacred Heart", "Larmes autoguidées#↑ +1 Coeur max#↑ 230% + 1 Dégâts#↓ -0.4 Cadence de tir#↓ -0.25 Vitesse des larmes#↑ +0.5 Portée"}, -- Sacred Heart
	[184] = {"184", "Holy Grail", "Confère le pouvoir de voler#↑ +1 Coeur max#Soigne un coeur rouge"}, -- Holy Grail
	[188] = {"188", "Abel", "Imite vos mouvements#Tire en direction d'Isaac#Inflige 3.5 dégâts par tir#7.5 Dégâts si vous jouez Cain"}, -- Abel
	[192] = {"192", "", "Larmes autoguidées pour la salle#↑ +3 Portée"}, -- Telepathy for Dummies
	[193] = {"193", "MEAT!", "↑ +1 Coeur max#↑ +0.3 Dégâts#Soigne un coeur rouge"}, -- MEAT!
	[194] = {"194", "Magic 8 Ball", "↑ +0.16 Vitesse des larmes#+1 carte#+15% chances de Planetarium"}, -- Magic 8 Ball
	[197] = {"197", "Jesus Juice", "↑ +0.5 Dégâts#↑ +0.38 Portée.#↑ +0.5 Hauteur des larmes"}, -- Jesus Juice
	[203] = {"203", "", "Chance de faire apparaître deux collectibles au lieu d'un"}, -- Humbling Bundle
	[205] = {"205", "", "En appuyant sur le bouton d'objet actif, octroie une charge à votre objet contre un demi coeur"}, -- Sharp Plug
	[206] = {"206", "Guillotine", "↑ +1 Dégâts#↑ +0.33 Cadence de tir#Votre tête est maintenant un orbital#Vous tirez depuis votre tête#La tête inflige des dégâts au corps à corps"}, -- Guillotine
	[211] = {"211", "Spider Baby", "Fait apparaître 3-5 araignées quand vous prenez des dégâts"}, -- Spider Baby
	[214] = {"214", "Anemic", "↑ +1.5 Portée#Laisse une trainée de sang sur le sol quand vous prenez des dégâts"}, -- Anemic
	[218] = {"218", "Placenta", "↑ +1 Coeur max#Soigne un coeur rouge#Régénère lentement votre santé"}, -- Placenta
	[224] = {"224", "Cricket's Body", "↓ -20% Portée#Les larmes se séparent en 4 en touchant un obstacle ou en tombant au sol#Les larmes séparées infligent la moitié des dégâts#↑ La cadence de tir maximum augmente de 1"}, -- Cricket's Body
	[228] = {"228", "Mom's Perfume", "Chance de tirer des larmes apeurantes#↑ La cadence de tir maximum augmente de 1"}, -- Moms Perfume
	[230] = {"230", "", "↑ +1.5 Dégâts#↑ +0.2 Vitesse#Larmes apeurantes#Convertit tous vos coeurs rouges en coeurs noirs#+2 Coeur noirs"}, -- Abaddon
	[232] = {"232", "", "Ralentit tous les ennemis de manière permanente#↑ +0.3 Vitesse"}, -- Stop Watch
	[240] = {"240", "Experimental Treatment", "↑ Augmente 4 stats aléatoireset en ↓ diminue 2 autres"}, -- Experimental Treatmen
	[245] = {"245", "", "Double tous vos tirs#↓ -25% Dégâts"}, -- 20/20
	[248] = {"248", "Hive Mind", "Les mouches et araignées bleues inflige le double de dégâts#Les familiers mouches et araignées deviennent plus forts"}, -- Hive Mind
	[253] = {"253", "Magic Scab", "↑ +1 Chance#↑ +1 Coeur max#Soigne un coeur rouge"}, -- Magic Scab
	[254] = {"254", "Blood Clot", "↑ +1 Dégâts#↑ +1.5 Portée#!!! Ne fonctionne que pour l'oeil gauche"}, -- Blood Clot
	[256] = {"256", "", "Bombes incendiaires#+5 Bombes#Les bombes font des dégâts au corps à corps"}, -- Hot Bombs
	[261] = {"261", "", "↑ +0.5 Dégâts#↓ Plus la larme reste en l'air, moins elle inflige de dégâts#300% de dégâts à la distance 0"}, -- Proptosis ... Wiki not updated yet
	[262] = {"262", "", "+1 Coeur noir#En tombant à un coeur, inflige des dégâts à tous les ennemis de la salle#Les coeurs noirs infligent le double de dégâts"}, -- Missing Page 2
	[263] = {"263", "", "Copie les effets de la rune ou pierre d'âme tenue#Fait tomber une rune aléatoire à l'obtention"}, -- Clear Rune   (REPENTANCE ITEM)
	[273] = {"273", "", "Familier explosif#Les dégâts ignorent l'armure"}, -- Bob's Brain
	[274] = {"274", "", "Fait apparaître un orbital quand vous vous faites toucher"}, -- Best Bud
	[275] = {"275", "Lil Brimstone", "Familier tirant un laser Bromstone#Inflige jusqu'à 20 dégâts si l'ennemi subit l'entièreté du tir"}, -- Lil Brimstont	
	[276] = {"276", "", "Obtenez un corps invulnérable#!!! Vous prenez des dégâts quand le coeur se fait toucher#Tire un amas de larmes"}, -- Isaac's Heart
	[278] = {"278", "", "!!! Convertit:#1,5 Coeurs rouges en 1 coeur bleu/noir, une araignée, une pilule, une carte ou une rune"}, -- Dark Bum
	[280] = {"280", "", "Fait apparaître des araignées bleues dans les salles hostiles#Charme les ennemis qui la touchent"}, -- Sissy Longlegs
	[283] = {"283", "", "Change tous les objets sur piédestaux, les stats, les collectibles et tous vos objets#Duplique un collectible aléatoire de la salle#Redémarre la salle actuelle en y changeant les ennemis#Change tous les rochers"}, -- D100
	[285] = {"285", "", "Change tous les ennemis de la salle#Les nouveaux ennemis ont une vie max équivalente aux anciens"}, -- D10
	[287] = {"287", "", "Révèle des parties de la map#Montre des effets de map que vous ne possédez pas encore"}, -- Book of Secrets
	[288] = {"288", "", "Fait apparaître 4-8 araignées bleues"}, -- Box of Spiders
	[289] = {"289", "", "Tire une flamme rouge#La flamme persiste pendant 10 secondes ou après avoir infligé des dégâts 5 fois"}, -- Red Candle
	[291] = {"291", "", "!!! Tue tous les ennemis et boss cacas!#Transforme les ennemis en cacas#Éteins toutes les flammes#Transforme toutes les zones de lave en zones franchissables"}, -- Flush!
	[292] = {"292", "", "+1 Coeur noir#Si utilisée avant un combat de boss, l'objet de boss sera un devil deal"}, -- Satanic Bible
	[294] = {"294", "", "Repousse les ennemis et projectiles#Inflige des dégâts aux ennemis repoussés contre un obstacle#10% de chance  de se tranformer en un meilleur \"Wait What?\" en l'échangeant avec un autre objet actif et en le reprenant ensuite"}, -- Butter Bean
	[295] = {"295", "", "Inflige 2x les dégâts d'Isaac à tous les ennemis de la salle en échange d'une pièce"}, -- Magic Fingers
	[296] = {"296", "", "!!! Convertit:#1 Coeur bleu/noir en un Coeur rouge"}, -- Converter
	[297] = {"297", "Pandora's Box", "!!! USAGE UNIQUE !#!!! Fait tomber des objets sur le sol selon l'étage sur lequel vous vous trouvez :#B1: 2 Coeurs bleus#B2: 2 Clefs et bombes#C1: 1 Objet de boss#C2: B1+C1#D1: 4 Coeurs bleus#D2: 30 Pièces#W1: 2 Objets de boss#W2: Bible#Sheol: 1 Objet démoniaque + 1 Coeur noir#Cathédrale: 1 Objet angélique + 1 Coeur bleu#Chest: 1 Pièce#Home: Red Key"}, -- Pandora's box
	[300] = {"300", "Aries", "↑ +0.25 Vitesse#Toucher un ennemi lui inflige des dégâts#En courant suffisamment vite, vous ignorez les dégâts au corps à corps"}, -- Aries
	[307] = {"307", "", "↑ +1 Coeur max / Clé / Bombe / Pièce#↑ +0.93 Dégâts#↑ +0.1 Vitesse#↑ +0.75 Portée#↑ Cadence de tir"}, -- Capricorn
	[308] = {"308", "", "Laisse une trainée derrière vous qui inflige des dégâts#Synergise avec les effets de larme"}, -- Aquarius
	[314] = {"314", "Thunder Thighs", "↑ +1 Coeur max#↓ -0.4 Vitesse#Soigne un coeur rouge#Marcher un rocher va le détruire"}, -- Thunder Thighs
	[315] = {"315", "Strange Attractor", "Larmes magnétiques#Affecte les ennemis, collectibles et trinkets#Les objets sont attirés vers le point d'atterrissage de la larme"}, -- Strange Attractor
	[320] = {"320", "???'s Only Friend", "Mouche contrôlable#Inflige 3.5 dégâts par coup"}, -- ???'s Only Friend
	[326] = {"326", "Breath of Life", "Maintenez Espace jusqu'à ce que la barre soit vide pour devenir invincible#Des rayons de lumière attaqueront les ennemis qui vous touchent pendant cette invincibilité#!!! Ne maintenez pas trop longtemps !"}, -- Breath of Life
	[328] = {"328", "", "↑ +1.0 Dégâts#Si vous avez un demi coeur rouge ou moins, inflige des dégâts à tous les ennemis quand vous vous faites toucher"}, -- The Negative
	[330] = {"330", "Soy Milk", "↑ Grosse cadence de tir : (x 5.5)#↓ -80% Dégâts#Réduit grandement le recul"}, -- Soy Milk
	[331] = {"331", "", "Larmes autoguidées#↑ +0.93 Dégâts#↑ +0.5 Portée#↓ -0.6 Cadence de tir#↓ -30% Vitesse des larmes#↑ +0.8 Hauteur des larmes"}, -- Godhead
	[336] = {"336", "", "Larmes spectrales et transperçantes↓ -1.5 Portée#↓ -0.4 Vitesse des larmes"}, -- Dead Onion
	[339] = {"339", "Safety Pin", "↑ +1.5 Portée#↑ +0.16 Vitesse des larmes#+1 Coeur noir#↑ +0.5 Hauteur des larmes"}, -- Safety Pin
	[342] = {"342", "Blue Cap", "↑ +1 Coeur max#↑ +0.7 Cadence de tir#↓ -16% Vitesse des larmes#Soigne deux coeurs rouges"}, -- Blue Cap
	[344] = {"344", "", "+1 Coeur noir#Fait apparaître 2-3 bombes#Fait apparaître le {{Trinket41}} Trinket Allumette"}, -- Match Book
	[345] = {"345", "Synthoil", "↑ +1.0 Dégâts#↑ +1.5 Portée#↑ +0.5 Hauteur des larmes"}, -- Synthoil
	[346] = {"346", "", "↑ +1 Coeur max#Soigne deux coeurs rouges"}, -- A Snack
	[350] = {"350", "Toxic Shock", "Au début de chaque salle, chaque ennemi est empoisonné#Immunité aux nuages toxiques"}, -- Toxic Shock
	[352] = {"352", "", "Tire une grosse larme spectrale transperçante ((DMG+1) X 10)#Augmente de deux coeurs les dégâts reçus par Isaac"}, -- Glass Canon
	[355] = {"355", "", "↑ +1.25 Portée#↑ +1 Chance#+1 Coeur bleu#↑ +0.5 Hauteur des larmes"}, -- Mom's Pearl
	[360] = {"360", "Incubus", "Copie les effets et stats des larmes d'Isaac#Inflige 100% de vos dégâts quand joué avec Lilith#Sinon, inflige 75% de vos dégâts"}, -- Incubus
	[366] = {"366", "Scatter Bombs", "+5 Bombes#Vos bombes se divisent en 4-5 mini-bombes quand elles explosent"}, -- Scatter Bombs
	[369] = {"369", "", "↑ +3.0 Portée#↑ +1.5 Hauteur des larmes#Les larmes traversent les murs et reviennent par le mur opposé"}, -- Continuum
	[370] = {"370", "Mr. Dolly", "↑ +0.7 Cadence de tir#↑ +1.5 Portée#↑ +0.5 Hauteur des larmes#Fait apparaître 3 coeurs aléatoires"}, -- Mr. Dolly
	[372] = {"372", "", "Chance aléatoire d'obtenir une micro batterie ou de paralyser tous les ennemis dans la salle#Chance d'ajouter une charge à votre objet"}, -- Charged Baby
	[374] = {"374", "Holy Light", "Chance aléatoire de tirer une larme sacrée qui fera tomber un rayon de lumière sur l'ennemi touché#Le rayon inflige 3x vos dégâts"}, -- Holy Light
	[375] = {"375", "Host hat", "20% chances de bloquer les larmes ennemies#Immunité aux explosions"}, -- Host hat
	[376] = {"376", "", "Fait apparaître 3 collectibles aléatoires#Les magasins refont apparaître un objet quand vous achetez#Les objets restockés sont plus chers"}, -- Restock
	[382] = {"382", "", "Lancez la sur un ennemi pour le capturer#Relancez la pour faire apparaître cet ennemi qui se battra à vos côtés#Marcher sur la ball rechargera votre objet"}, -- Friendly Ball
	[384] = {"384", "Lil Gurdy", "Va se propulser et glisser à travers la salle#Inflige 5-20 dégâts en fonction de la durée de la charge"}, -- Lil Gurdy
	[389] = {"389", "Rune Bag", "Fait tomber une rune aléatoire toutes les 7-8 salles#Peut aussi faire tomber des Soul Stones"}, -- Rune Bag
	[393] = {"393", "", "Chance aléatoire de tirer une larme empoisonnée#Empoisonne les ennemis au corps à corps#Les ennemis tués par le poison de contact ont 20% de chance de faire tomber un coeur noir"}, -- Serpent`s Kiss
	[394] = {"394", "Marked", "Les larmes sont automatiquement tirées en direction de la cible sur le sol#↑ +0.7 Cadence de tir#↑ +3.0 Portée#↑ +0.3 Hauteur des larmes#Les familiers sont aussi affectés"}, -- Marked
	[395] = {"395", "", "Octroie le pouvoir de charger et tirer un anneau laser à travers la salle#Les dégâts augmentent avec la durée de la charge#100% de dégâts avec une charge complète"}, -- Tech X
	[397] = {"397", "Tractor Beam", "Les larmes d'Isaac vont suivre un halo de lumière situé devant vous#↑ +0.5 Cadence de tir#↑ +1.5 Portée#↑ +0.16 Vitesse des larmes#↑ +0.5 Hauteur des larmes"},
	[399] = {"399", "Maw of the Void", "Après avoir tiré pendant 3 secondes, une croix rouge apparaît sur la tête d'Isaac.#Relâcher le bouton de tir va créer un anneau noir autour de vous qui inflige des dégâts aux ennemis# 5% de chance qu'un ennemi tué par l'anneau lâche un coeur noir"}, -- Maw of the Void
	[401] = {"401", "Explosivo", "Chance de tirer une bombe collante#Les bombes collées font des dégâts réguliers avant d'exploser"}, -- Explosivo
	[404] = {"404", "Farting Baby", "Bloque les projectiles ennemis#Si touché, il va péter, charmant, empoisonnant et repoussant les ennemis"}, -- Farting Baby
	[405] = {"405", "", "{{Throwable}} {{ColorOrange}}Jetable{{CR}} (Appuyez deux fois sur la touche de tir)#Change les ennemis et collectibles qui entrent en contact avec l'objet"}, -- GB Bug
	[407] = {"407", "Purity", "↑ Booste une de vos stats en fonction de la couleur de l'aura qui vous entoure#En recevant des dégâts, la couleur change#{{ColorRed}}Rouge{{CR}} = +4.0 Dégâts#{{ColorBlue}}Bleu{{CR}} = -4 Délai de tir#{{ColorYellow}}Jaune{{CR}} = +0.5 Vitesse#{{ColorOrange}}Orange{{CR}} = +3.0 Portée, +1 Hauteur des larmes"},
	[408] = {"408", "Athame", "En recevant des dégâts, un anneau noir va apparaître autour d'Isaac, infligeant des dégâts aux ennemis#Les ennemis tués par l'anneau ont 5% de chance faire tomber un coeur noir"}, -- Athame
	[416] = {"416", "", "#Fait apparaître 1-3 pièces si la salle n'a pas donnée de récompense#Augmente votre capacité de pièces à 999"}, -- Deep Pockets
	[417] = {"417", "Succubus", "Rebondit à travers la salle infligeant des dégâts aux ennemis dans son aura chaque seconde#↑ Vous gagnez +50% de dégâts en restant dans l'aura"}, -- Succubus
	[421] = {"421", "Kidney Bean", "Charme les ennemis proches"}, -- Kidney Bean
	[426] = {"426", "Obsessed Fan", "Suit vos mouvements exacts avec 0.66 secondes de délai#Inflige 30 dégâts par seconde"}, -- Obsessed Fan
	[430] = {"430", "Papa Fly", "Suit vos mouvements avec 0.6 secondes de délai#Tire des larmes aux ennemis proches aux dégâts égaux aux vôtres"}, -- papa Fly
	[431] = {"431", "Multidimensional Baby", "Suit vos mouvements exacts avec 0.66 secondes de délai#Vos larmes qui passent à travers lui seront doublées et gagneront en vitesse"},
	[437] = {"437", "D7", "Fait réapparaître tous les ennemis de la salle#Permet de farmer les récompenses de salle"}, -- D7
	[440] = {"440", "Kidney Stone", "Aléatoirement, vous arrêterez de tirer pour relâcher un amas de larmes et de caillots"}, -- Kidney Stone
	[442] = {"442", "Dark Princes Crown", "!!! Si vous avez un seul coeur rouge :#↑ +1.5 Portée#↑ +2.0 Cadence de tir#↑ +0.2 Vitesse des larmes#(Ne fonctionne pas sur les personnages n'ayant pas de coeur rouge)"}, -- Dark Princes Crown
	[444] = {"444", "Lead Pencil", "Toutes les 15 larmes tirées, vous tirez un amas de larmes"}, -- Lead Pencil
	[448] = {"448", "", "En recevant des dégâts, chance de gagner ↑ +5 Portée, de vomir des larmes rouges et laisser une flaque de sang, ou de faire apparaître un coeur rouge"}, -- Shard of Glass
	[451] = {"451", "", "Une fois obtenu, fait apparaître une carte ou rune aléatoire#Double les effets des cartes#Certaines cartes gagnent un effet supplémentaire"}, -- Tarot Cloth
	[453] = {"453", "Compound Fracture", "Larmes osseuses#Les larmes se brisernt en 1-3 petits morceaux d'os en touchant un obstacle ou ennemi#↑ +0.38 Portée#↑ +1.0 Tear height"}, -- Compound Fracture
	[455] = {"455", "Dad's Lost Pièce", "↑ +0.38 Portée#Fait apparaître un lucky penny"},
	[456] = {"456", "Midnight Snack", "↑ +1 Coeur max#Soigne un coeur rouge"}, -- Midnight Snack
	[464] = {"464", "", "+2 Coeurs bleus#Les ennemis d'élite et récompenses de salle sont plus fréquents#La priorité des collectibles obtenus change avec ce dont vous avez besoin"}, -- Glyph of Balance
	[472] = {"472", "King Baby", "Vos autres familiers vont le suivre et tirer automatiquement sur les ennemis#S'arrête de bouger quand vous tirez#Se téléporte sur vous quand vous arrêtez de tirer"}, -- King Baby
	[474] = {"474", "", "Se change en Glass Canon"}, -- broken Glass Canon
	[489] = {"489", "", "Effet de dé aléatoire à chaque utilisation#Cyclez les dés en appuyant sur la touche pour lâcher vos objets"}, -- D Infinity
	[491] = {"491", "", "Fait apparaître une pilule aléatoire toutes les 7 salles#Utiliser une pilule empoisonne tous les ennemis dans la salle"}, -- Acid Baby
	[493] = {"493", "Adrenaline", "Pour chaque coeur rouge vide :#↑ Dégâts "}, -- Adrenaline
	[494] = {"494", "", "Les larmes provoquent 1-2 éclairs électriques à l'impact#Les éclairs infligent la moitié de vos dégâts#Les éclairs peuvent se propager d'un ennemi à l'autre"}, -- Jacobs Ladder
	[503] = {"503", "", "Chance de tirer une larme qui fait apparaître une main de Big Horn#La main tue instantanément les ennemis et inflige des dégâts aux boss#Courir sur les ennemis leur infligera des dégâts"}, -- Little Horn
	[504] = {"504", "", "Fait apparaître une mouche sentinelle qui tire sur les ennemis"}, -- Brown Nugget
	[509] = {"509", "Bloodshot Eye", "Orbital tirant sur les ennemis proches#Inflige 3.5 dégâts par larme#Inflige 30 dégâts par seconde au corps à corps"}, -- Bloodshot Eye
	[523] = {"523", "", "Stocke jusqu'à 6 collectibles de la salle#Pose au sol les collectibles stockés"}, -- Moving Box
	[524] = {"524", "", "Les larmes sont reliées par des arcs électriques#L'électricité inflige 1/3 de vos dégâts"}, -- Technology Zero
	[531] = {"531", "Haemolacria", "Vous tirez des larmes en cloche#Les larmes se séparent en larmes plus petites à l'impact#↓ Cadence de tir#↑ +50% Dégâts#↑ +1 Dégâts"}, -- Haemolacria
	[541] = {"541", "Marrow", "+1 Coeur d'os#Fait apparaître 3 coeurs rouges"}, -- Marrow
	[543] = {"543", "", "Fait apparaître un caca blanc quand vous vous faites toucher#(Le caca blanc a une aura qui augmente vos dégâts et votre cadence de tir et qui rend vos larmes autoguidées et capables de bloquer les tirs ennemis)"}, -- Hallowed Ground
	------PAUSE-----------
	[553] = {"553", "", "Chance de tirer une spore collante#Les spores explosent après 2.5 secondes, infligeant des dégâts et empoisonnant les ennemis proches tout en libérant d'autres spores"}, --  Mucormycosis
	[554] = {"554", "", "Effraie les ennemis proches d'Isaac"}, --  2Spooky
	[555] = {"555", "", "+1.2 Dégâts dans la salle en échange de 5 pièces"}, --  Golden Razor
	[556] = {"556", "", "Brimstone pour la salle actuelle"}, --  Sulfur
	[557] = {"557", "", "Donne à Isaac un message, un coeur bleu, une carte de tarot ou un trinket"}, --  Fortune Cookie
	[558] = {"558", "", "Chance de tirer 1-2 larme supplémentaire dans une direction aléatoire"}, --  Eye Sore
	[559] = {"559", "", "Électrocute les ennemis proches#L'électricité inflige 75% de vos dégâts"}, --  120 Volt
	[560] = {"560", "", "Relâche un anneau de 10 larmes en vous faisant toucher#↑ +1.2 Cadence de tir pour le premier coup reçu#↑ +0.4 pour chaque coup suivant reçu"}, --  It Hurts
	[561] = {"561", "", "↑ Cadence de tir x 4#↓ Dégâts x 0.3#Les larmes gagnent un effet de ver aléatoire"}, --  Almond Milk
	[562] = {"562", "", "Remets toutes les stats à leur valeur de base#Empêche les stats de baisser pour le reste de la partie"}, --  Rock Bottom
	[563] = {"563", "", "+5 Bombes#Effet d'explosion aléatoire"}, --  Nancy Bombs
	[564] = {"564", "", "↑ +0.5 Cadence de tir#↑ +0.2 Vitesse des larmes"}, --  A Bar of Soap
	[565] = {"565", "", "Familier qui pourchasse les ennemis#Après avoir tué suffisamment d'ennemis, il gagne en puissance mais essayera aussi de vous blesser#Attaquez-le pour le calmer"}, --  Blood Puppy
	[566] = {"566", "", "+1 Demi coeur bleu en changeant d'étage#Révèle le boss et l'objet d'Item room durant le cauchemar de changement d'étage"}, --  Dream Catcher
	[567] = {"567", "", "↑ +0.4 Cadence de tir pour chaque salle terminée sans prendre de dégâts#Se cumule jusqu'à 5 fois"}, --  Paschal Candle
	[568] = {"568", "", "En appuyant deux fois rapidement sur la touche de tir, crée un bouclier#Le bouclier dure 1 seconde, repousse les ennemis et renvoie les projectiles et lasers"}, --  Divine Intervention
	[569] = {"569", "", "Vous poignarde à chaque nouvel étage, aspirant tous vos coeurs rouges en vous en laissant un demi#Augmente vos stats pour l'étage:#↑ Dégâts + 0.15 * Coeurs perdus^2#↑ Vitesse + 0.05*Coeurs perdus"}, --  Blood Oath
	[570] = {"570", "", "Larmes multicolores avec des effets différents"}, --  Playdough Cookie
	[571] = {"571", "", "Annule les dégâts des pics et flaques au sol#↑ +0.3 Vitesse#↑ +2 Coeurs bleus"}, --  Orphan Socks
	[572] = {"572", "", "Larmes contrôlables#↑ +1 Dégâts#↑ +7.5 Portée#↓ -0.16 Vitesse des larmes"}, --  Eye of the Occult
	[573] = {"573", "", "+1 Réceptacle de coeur rouge#↑ +20% Dégâts#Soin complet#Chance de tirer des larmes spectrales qui orbitent autour de vous"}, --  Immaculate Heart
	[574] = {"574", "", "Génère deux auras qui infligent des dégâts aux ennemis#L'aura intérieure fait plus de dégâts"}, --  Monstrance
	[575] = {"575", "", "Un familier niché dans votre tête, tirant 4 larmes ralentissantes#Quitte votre tête en recevant des dégâts"}, --  The Intruder
	[576] = {"576", "", "Détruire un caca fait apparaître 1-4 petits cacas amicaux#Leur type dépend du type de caca détruit"}, --  Dirty Mind
	[577] = {"577", "", "{{Warning}} USAGE UNIQUE {{Warning}}#Fait apparaître une épée au dessus de votre tête, doublant tous les objets sur piédestaux#Peut vous tuer si vous prenez des dégâts en tenant l'épée en l'air"}, --  Damocles
	[578] = {"578", "", "Crée une grande flaque jaune"}, --  Free Lemonade
	[579] = {"579", "", "À la place des larmes, Isaac manipule une épée#Inflige 3x vos dégâts#Fait une attaque rotative et un tir de projectile une fois chargée#Si vous avez toute votre vie, tire des projectiles lors des coups normaux"}, --  Spirit Sword
	[580] = {"580", "", "Crée une nouvelle salle adjascente à un mur viable, indiqué par un contour de porte#Les salles peuvent être des salles spéciales#Une salle hors des coordonnées 13x13 vous téléportera dans I AM ERROR"}, --  Red Key
	[581] = {"581", "", "Mouche orbitale#Pourchasse et dévie un projectile#Inflige des dégâts au contact"}, --  Psy Fly
	[582] = {"582", "", "↑ +0.75 Cadence de tir#↓ -0.03 Vitesse#Déforme l'écran#L'effet peut être cumulé"}, --  Wavy Cap
	[583] = {"583", "", "+5 Bombes#Si une bombe est posée en marchant, la transforme en roquette fonçant dans la direction de la marche"}, --  Rocket in a Jar
	[584] = {"584", "", "Fait apparaître une flammèche qui tire des larmes spectrales mais qui peuvent être éteintes#Peut être combiné avec un second objet activable pour créer des flammèches personnalisées#Transforme la première Devil Room en Angel Room"}, --  Book of Virtues
	[585] = {"585", "", "Fait apparaître 3 coeurs bleus et deux objets d'Angel Room#Se charge en ramassant des coeurs bleus"}, --  Alabaster Box
	[586] = {"586", "", "Fait apparaître une échelle menant à une boutique angélique à chaque nouvel étage"}, --  The Stairway
	[587] = {"587", "", "<Cet objet n'existe pas>"}, -- Menorah (Unused but skripted)
	[588] = {"588", "", "Révèle l'emplacement de la salle de boss {{BossRoom}}#Active la carte XIX - The Sun {{Card20}} en battant un boss #Recharge complètement votre objet activable et confère +3 dégâts et +1 chance pour le reste de l'étage"}, --  Sol
	[589] = {"589", "", "Ajoute une Secret Room {{SecretRoom}} et une Super Secret Room {{SuperSecretRoom}} supplémentaires à chaque étage#Les salles secrètes contiennent un rayon de lumière augementant la cadence de tir pour l'étage et donnant un demi coeur bleu"}, --  Luna
	[590] = {"590", "", "↑ +0.4 Vitesse#Les portes restent ouvertes en entrant dans une salle"}, --  Mercurius
	[591] = {"591", "", "+1 Réceptacle de coeur rouge#Soin complet#Charme les ennemis proches"}, --  Venus
	[592] = {"592", "", "↑ +1.0 Dégâts#Remplaces les larmes par des rochers#Ils inflegent des dégâts variables#Peuvent détruire les obstacles#Repousseny les ennemis"}, --  Terra
	[593] = {"593", "", "Appuyez deux fois sur la touche de déplacement permet de réaliser un dash#Vous rend invulnérable et octroie x4 dégâts#3 secondes de récupération"}, --  Mars
	[594] = {"594", "", "+2 Réceptacles de coeur rouge#↓ -0.3 Vitesse#Se charge en restant immobile#Relâche un nuage de gas empoisonné en bougeant à nouveau"}, --  Jupiter
	[595] = {"595", "", "Un cercle vous entoure#En entrant dans une salle, 7 larmes orbiteront à l'intérieur#Chance d'attirer des projectiles ennemis dans l'orbite"}, --  Saturnus
	[596] = {"596", "", "Tire des larmes gelées ralentissant les ennemis et gelant les ennemis qu'elles tuent#Toucher un ennemi gelé le fait glisser et exploser en 6 fragement de glace"}, --  Uranus
	[597] = {"597", "", "Cumule un gros amas de larmes en ne tirant pas pendant 3 secondes##Tirer relâchera les larmes cumulées"}, --  Neptunus
	[598] = {"598", "", "↑ +0.7 Cadence de tir#Rapetissit Isaac, lui permettant de passer entre les objets#Les projectiles peuvent passer au-dessus de lui"}, --  Pluto
	[599] = {"599", "", "Fait apparaître une Curse Room {{CursedRoom}} supplémentaire à chaque étage"}, --  Voodoo Head
	[600] = {"600", "", "↑ Augmente la cadence de tir de l'oeil gauche de 28%"}, --  Eye Drops
	[601] = {"601", "", "↑ Cadence de tir#+1 Coeur éternel#Permet aux Angel Rooms d'apparaître même si un Devil Deal a été accepté"}, --  Act of Contrition
	[602] = {"602", "", "Ajoute une trappe dans chaque magasin menant vers un second magasin avec un stock unique"}, --  Member Card
	[603] = {"603", "", "Fait apparaître 2-4 batteries#Recharge complètement votre objet activable"}, --  Battery Pack
	[604] = {"604", "", "Permet de ramasser et de lancer les rochers, TNT, cacas, et autres obstacles#Permet de les transporter d'une salle à l'autre"}, --  Mom's Bracelet
	[605] = {"605", "", "Invoque un familier Peeper dans la salle actuelle, laissant une traînée de sang"}, --  The Scooper
	[606] = {"606", "", "Chance de tirer des larmes créeant des failles en atterissant#Attire les ennemis, collectibles et projectiles proches"}, --  Ocular Rift
	[607] = {"607", "", "Familier tirant des amas de larmes chaotiques dans toutes les directions#Inflige 3.5 ou 5.3 dégâts par larme"}, --  Boiled Baby
	[608] = {"608", "", "Familier qui tirer des larmes gelées#Gèle les ennemis qu'il tue"}, --  Freezer Baby
	[609] = {"609", "", "Change tous les objets de la salle#Les objets ont une chance de disparaître"}, --  Eternal D6
	[610] = {"610", "", "Familier qui saute sur un ennemi au premier dégât reçu dans la salle#Inflige des dégâts et crée une onde de choc de rochers#Poursuis ensuite les ennemis"}, --  Bird Cage
	[611] = {"611", "", "Vous fait crier, infligeant des dégâts et repoussant les ennemis proches#Plus l'objet a de charges, plus le cri sera puissant"}, --  Larynx
	[612] = {"612", "", "Familier mourant en un coup, revenant à la vie à l'étage suivant#S'il survit à l'étage entier, il fait apparaître 3 coeurs bleus, deux coeurs éternels ou un objet"}, --  Lost Soul
	[613] = {"613", "", "<Cet objet n'existe pas>"},
	[614] = {"614", "", "+1 Réceptacle de coeur rouge#Soigne 5 coeurs#Les bombes laissent une flaque de sang#Si le joueur n'a pas de bombe, peut sacrifier un demi coeur pour en placer une"}, --  Blood Bombs
	[615] = {"615", "", "Familier qui repousse, empoisonne ou étourdit les ennemis quand il reçoit des dégâts"}, --  Lil Dumpy
	[616] = {"616", "", "Chance de tirer des flammes qui bloquent les larmes ennemies et infligent des dégâts#Les dégâts max équivelent à 4x vos dégâts"}, --  Bird's Eye
	[617] = {"617", "", "Chance de tirer des flammes qui magnétisent les ennemis#Attirent les collectibles, projectiles et ennemis proches"}, --  Lodestone
	[618] = {"618", "", "Chance de tirer des flammes qui marquent les ennemis#Les ennemis marqués se font attaquer par les autres ennemis"}, --  Rotten Tomato
	[619] = {"619", "", "A un effet différent pour chaque personnage"}, --  Birthright
	[620] = {"620", "", "<Cet objet n'existe pas>"},
	[621] = {"621", "", "Soin complet#↑ +21.6 Dégâts#Les dégâts se réduisent pendant les 3 prochaines minutes"}, --  Red Stew
	[622] = {"622", "", "{{Warning}} USAGE UNIQUE {{Warning}}#Retire tous les objets et collectibles d'Isaac#Vous téléporte dans une chambre unique avec des collectibles, coffres et une trappe#Pour chaque objet perdu, les Item Rooms {{TreasureRoom}} proposent un choix entre 3 objets"}, --  Genesis
	[623] = {"623", "", "+5 Clés#Jette une clé pour infliger des dégâts, détruire des obstacles ou ouvrir des portes"}, --  Sharp Key
	[624] = {"624", "", "Fait apparaître 5 cartes aléatoires"}, --  Booster Pack
	[625] = {"625", "", "Vous rend géant pendant 30 secondes#Augmente vos dégâts et la portée de tir#Confère une invulnérabilité et le pouvoir d'écraser les ennemis et obstacles#Les effets persistent entre les salles"}, --  Mega Mush
	[626] = {"626", "", "La première partie d'un couteau"}, --  Knife Piece 1
	[627] = {"627", "", "Combiné avec la première partie {{Collectible627}}, crée un couteau#Inflige des dégâts aux ennemis#Peut ouvrir une porte particulière faite de chair"}, --  Knife Piece 2
	[628] = {"628", "", "{{Warning}} USAGE UNIQUE {{Warning}}#Vous emmène à un étage contenant tous les objets du jeu#Après avoir pris un objet, vous ramène à la salle d'où vous venez"}, --  Death Certificate
	[629] = {"629", "", "Orbital tirant des larmes bouclier"}, --  Bot Fly
	[630] = {"630", "", "<Cet objet n'existe pas>"},
	[631] = {"631", "", "Divise les ennemis de la salle en 2 versions plus petites possédant moins de vie"}, --  Meat Cleaver
	[632] = {"632", "", "↑ +2 Chance#+1 Demi coeur bleu à chaque étage"}, --  Evil Charm
	[633] = {"633", "", "Vous donne la possibilité de voler et un seul effet de Holy Mantle {{Collectible313}}#↑ +2.0 Dégâts#↑ +0.1 Vitesse#Si le joueur a moins de 6 coeurs, le soigne avec une combinaison de coeur rouges et bleus"}, --  Dogma
	[634] = {"634", "", "Dans une salle remplie d'ennemis, crée des fissures dans le sol#Marcher sur ces fissures fait apparaître des fantômes explosifs"}, --  Purgatory
	[635] = {"635", "", "Fait apparaître un familier qui se déplace dans la direction des tirs d'Isaac#À l'utilisation, Isaac change de place avec le familier et obtient une courte invincibilité#Se téléporter sur des obstacles peut les détruire ou leur infliger des dégâts"}, --  Stitches
	[636] = {"636", "", "{{Warning}} USAGE UNIQUE {{Warning}}#Vous téléporte au premier étage pour une nouvelle tentative#Vous conservez les objets et collectibles obtenus précédemment"}, --  R Key
	[637] = {"637", "", "Chance de tirer un poing qui repousse les ennemis et les assomme"}, --  Knockout Drops
	[638] = {"638", "", "Lance une gomme qui tue instantanément un ennemi#Empêche cet ennemi d'apparaître pour toute la partie#Fonctionne une fois par étage"}, --  Eraser
	[639] = {"639", "", "Confère un coeur pourri"}, --  Yuck Heart
	[640] = {"640", "", "Vomit un flux de flammes#Gagne une charge à chaque fois qu'un ennemi meurt"}, --  Urn of Souls
	[641] = {"641", "", "Crée une chaîne de larmes derrière vous pendant les combats"}, --  Akeldama
	[642] = {"642", "", "Consomme un réceptacle de coeur ou deux coeurs bleus pour faire apparaître un objet de la rotation de la salle#Confère aussi un coeur brisé qui ne peut jamais être rempli#{{Warning}} Utilisation unique pour The Lost"}, --  Magic Skin
	[643] = {"643", "", "Vous permet de voler et confère 2 coeurs bleus#Tirer pendant 2.5 secondes va déclencher un laser béni en relâchant le bouton de tir"}, --  Revelation
	[644] = {"644", "", "Augmente la stat la plus faible#Fait tomber 3 pièces, 1 bombe ou 1 clé en fonction de ce que vous possédez le moins"}, --  Consolation Prize
	[645] = {"645", "", "Tératome orbital#Bloque les projectiles#Inflige des dégâts au corps à corps#Après avoir reçu 3 coups, se divise en plus petites versions#Les versions les plus petites  se transforment en araignées bleues#Réapparaît 5 secondes après sa disparition complète"}, --  Tinytoma
	[646] = {"646", "", "+5 Bombes#Les bombes créent un laser Brimstone dans les 4 directions"}, --  Brimstone Bombs
	[647] = {"647", "", "Les objets activables ne se chargent plus en terminant une salle#Ils se chargent en infligeant des dégâts aux ennemis"}, --  4.5 Volt
	[648] = {"648", "", "<Cet objet n'existe pas>"},
	[649] = {"649", "", "Un familier bébé Plum#Se propulse à travers la salle en diagonale en tirant des larmes derrière lui"}, --  Fruity Plum
	[650] = {"650", "", "Invoque un bébé Plum amical dans la salle pour 10 secondes"}, --  Plum Flute
	[651] = {"651", "", "Familier qui se balade lentement dans la salle de boss#Émet une aura qui donne +20% Dégâts, +1 Cadence de tir et la capacité de tirer des larmes autoguidées"}, --  Star of Bethlehem
	[652] = {"652", "", "Familier qui glisse si on le bouscule#Il ralentit les ennemis et leur inflige des dégâts, gelant ceux qu'il tue"}, --  Cube Baby
	[653] = {"653", "", "Lorsqu'il est tenu, les ennemis non fantômatiques font apparaître des petits fantômes rouges à leurs mort#Quand utilisé, fait exploser les fantômes"}, --  Vade Retro
	[654] = {"654", "", "Identifie toutes les pilules#+1 Coeur noir#Convertit les bonnes pilules en mauvaises pilules#↑ Les pilules qui fait baisser les stats font gagner des dégâts#Les autres pilules font tomber un coeur noir une fois mangées"}, --  False PHD
	[655] = {"655", "", "Ajoute un orbital qui bloque les projectiles ennemis et inflige des dégâts au corps à corps#Quand utilisé,↑ +0.5 Vitesse et augmente significativement la vitesse de rotation des orbitaux"}, --  Spin to Win
	[656] = {"656", "", "<Cet objet ne peut pas être obtenu>"}, -- Damocles
	[657] = {"657", "", "Les ennemis projetent des larmes à leur mort qui profitent des effets de larme d'Isaac"}, --  Vasculitis
	[658] = {"658", "", "Fait apparaître un micro-Isaac en recevant des dégâts#Il pourchasse et tire sur les ennemis proches"}, --  Giant Cell
	[659] = {"659", "", "↑ +1.5 Portée#Augmente la taille des larmes"}, --  Tropicamide
	[660] = {"660", "", "Fait apparaître deux portails au début de chaque étage#Les portails disparaissent en quittant la salle#{{ColorRed}}Rouge: {{CR}}Boss room#{{ColorYellow}}Jaune: {{CR}}Item Room#{{ColorBlue}}Bleu: {{CR}}Secret Room"}, --  Card Reading
	[661] = {"661", "", "Fait apparaître un familier aléatoire à l'endroit où un ennemi est mort#Maximum 5 familiers"}, --  Quints
	[662] = {"662", "", "<Cet objet n'existe pas>"}, -- Pacifist (Cut item)
	[663] = {"663", "", "Devient invincible toutes les 6 secondes pendant 1 seconde#Un flash apparaît juste avant la transition"}, --  Tooth and Nail
	[664] = {"664", "", "+1 Réceptacle de coeur rouge#Les objets sur piédestal sont périodiquement remplacés par de la nourriture#Prendre de la nourriture donne temporairement +3.6 dégâts et augmente deux stats aléatoires de façon permanente"}, --  Binge Eater
	[665] = {"665", "", "Montre le contenu des coffres, sacs et feux avant qu'ils soient ouverts ou détruits"}, --  Guppy's Eye
	[666] = {"666", "", "<Cet objet n'existe pas>"},
	[667] = {"667", "", "Fait apparaître Keeper en tant que personnage secondaire#S'il meurt, il fait apparaître des araignées bleues#L'objet est ensuite détruit"}, --  Strawman
	[668] = {"668", "", "Démarre la séquence pour atteindre l'étage de la maison"}, --  Dad's Note
	[669] = {"669", "", "↑ +0.5 Dégâts#↑ +0.2 Vitesse#↑ +1.2 Vitesse des larmes#↑ +0.16 Portée#↑ +1 Chance"}, --  Sausage
	[670] = {"670", "", "Si une salle donne une récompense de complétion, il y aura deux récompenses différentes entre lesquelles choisir#Prendre l'une fera disparaître l'autre"}, --  Options?
	[671] = {"671", "", "Boost de façon permanente une stat aléatoire lors d'un soin en ramassant un coeur rouge"}, --  Candy Heart
	[672] = {"672", "", "Les Devils Deals coûtent maintenant de l'argent#Les objets du Shop coûtent maintenant de la santé#Les consommables des magasins sont gratuits mais entourés de pics"}, --  A Pound of Flesh
	[673] = {"673", "", "Donne un coeur bleu et +1.0 dégâts en entrant dans une Devil Room et en n'y prenant pas d'objet"}, --  Redemption
	[674] = {"674", "", "En mourant, le fantôme d'Isaac est enchaîné à son cadavre et il peut continuer à voler avec un demi coeur#Revient à la vie après 10 secondes#Se recharge en ramassant un coeur bleu"}, --  Spirit Shackles
	[675] = {"675", "", "En prenant des dégâts, révèle une salle aléatoire de l'étage#Déverouille également les portes nécessitant une clé#Peut ouvrir la porte de Mega Satan#Peut révéler l'ultra secret room"}, --  Cracked Orb
	[676] = {"676", "", "Si un de vos réceptacles de coeur est vide au début de l'étage, vous en donne un second#Les coeurs d'os ne comptent pas"}, --  Empty Heart
	[677] = {"677", "", "En vous faisant toucher, arrête le temps pendant 3 secondes#Isaac devient un fantôme et quitte son corps#En forme de fantôme, ignorez le prochain dégât reçu"}, --  Astral Projection
	[678] = {"678", "", "Lance un bébé attaché avec un cordon ombilical#Inflige des dégâts au corps à corps#Le bébé tire des larmes et se déplace quand vous tirez#Reviens quand vous arrêtez de tirer"}, --  C Section
	[679] = {"679", "", "Familier qui tire des mini Maw of the Void {{Collectible399}}"}, --  Lil Abaddon
	[680] = {"680", "", "Quand vous tirez, charge un Brimstone à courte portée#Tire derrière vous"}, --  Montezuma's Revenge
	[681] = {"681", "", "Inflige des dégâts au corps à corps et vole vers l'avant#Consomme les collectibles sur son chemin#Chaque collectible augmente sa taille, ses dégâts et fait apparaître une mouche bleue#Tous les 4 collectibles consommés, fait apparaître un portail vers une salle non explorée"}, --  Lil Portal
	[682] = {"682", "", "Fait sortir un tentacule du sol#Peut détenir un ennemi et infliger des dégâts"}, --  Worm Friend
	[683] = {"683", "", "Les ennemis font apparaître des os à leur mort#Les os bloquent les projectiles et infligent des dégâts au corps à corps"}, --  Bone Spurs
	[684] = {"684", "", "Chance de faire apparaître un fantôme quand vous tuez un ennemi#Les fantômes pourchassent les ennemis et infligent des dégâts au corps à corps"}, --  Hungry Soul
	[685] = {"685", "", "Fait apparaître une flammèche aléatoire qui peut tirer, bloquer des projectiles et infliger des dégâts au corps à corps#Plus vous l'utilisez, plus le nombre de flammèches invoquées augmente"}, --  Jar of Wisps
	[686] = {"686", "", "Augmente une stat aléatoire de manière permanente quand vous ramassez un coeur bleu#Fait apparaître un coeur bleu quand vous l'obtenez"}, --  Soul Locket
	[687] = {"687", "", "Fait apparaître un monstre allié aléatoire qui imite les mouvements et attaques d'Isaac"}, --  Friend Finder
	[688] = {"688", "", "+1 Vie supplémentaire#Revis dans la salle actuelle avec un demi coeur, une perte de taille et +0.2 Vitesse"}, --  Inner Child
	[689] = {"689", "", "Les objets sur piédestaux changent rapidement entre 5 objets aléatoires"}, --  Glitched Crown
	[690] = {"690", "", "Repousse les ennemis d'Isaac#Les repousser contre un obstacle leur inflige des dégâts#Chance de dévier un projectile ennemi"}, --  Belly Jelly
	[691] = {"691", "", "Empêche les objets médiocres d'apparaître#Augmente significativement la qualité des objets suivants"}, --  Sacred Orb
	[692] = {"692", "", "Fait apparaître des pics dans la Devil Room#Prendre des dégâts des pics peut faire apparaître un objet:#35% 6 pièces#15% +0.5 Dégâts#5% 2 Coeur noirs#2% Objet aléatoire#1% Transformation en Leviathan"}, --  Sanguine Bond
	[693] = {"693", "", "Confère 9 mouches orbitales qui se transforment en mouches bleues en bloquant un projectile#Fait apparaître une nouvelle mouche à chaque salle nettoyée"}, --  The Swarm
	[694] = {"694", "", "Donne 3 coeurs brisés#↑ +0.25 dégâts pour chaque coeur brisé#Chaque coup fatal va ajouter deux coeurs brisés supplémentaires#Vous mourez si vous possédez 12 coeurs brisés"}, --  Heartbreak
	[695] = {"695", "", "Quand vous prenez des dégâts, gagnez de la vitesse et de la cadence de tir pour l'étage"}, --  Bloody Gust
	[696] = {"696", "", "Confère un halo qui fait apparaître des rayons de lumière sur les ennemis à l'intérieur#Plus vous prenez de dégâts sur l'étage, plus le halo grandit"}, --  Salvation
	[697] = {"697", "", "Familier qui devient un clone du boss que vous affrontez#Donne un objet supplémentaire une fois le boss battu#Le clone est plus lent et a 75% de la vie du boss cloné"}, --  Vanishing Twin
	[698] = {"698", "", "Deux familiers qui restent à vos côtés#Tirent des larmes identiques aux vôtres, mais avec 37.5% de vos dégâts"}, --  Twisted Pair
	[699] = {"699", "", "Gagnez de la rage à chaque salle nettoyée#Après 4 salles, tirez un laser Brimstone lors de votre entrée dans la prochaine salle"}, --  Azazel's Rage
	[700] = {"700", "", "Quand Isaac utilise une carte, pilule ou rune, il utilise également une copie de chaque carte, pilule ou rune utilisée après avoir pris cet objet"}, --  Echo Chamber
	[701] = {"701", "", "Fait apparaître un vieux coffre au début de chaque étage#Peut contenir des coeurs bleus, des trinkets ou des objets d'Angel Room ou de Maman ou Papa"}, --  Isaac's Tomb
	[702] = {"702", "", "Après avoir reçu des dégâts, fait apparaître une flammèche pour toute la durée de l'étage#6 flammèches maximum#Les flammèches tirent des larmes mais ne bloquent pas les projectiles"}, --  Vengeful Spirit
	[703] = {"703", "", "Devenez Esau Jr., possédant 3 coeurs noirs, +2 dégâts et la capacité de voler#Chaque personnage a des objets et une vie différente#{{Warning}} Si un des deux personnages meurt, la partie est perdue"}, --  Esau Jr.
	[704] = {"704", "", "Mode Berserk pendant 5 secondes :#↑ +0.4 Vitesse#↑ Cadence de tir#↑ +3.0 Dégâts#Attaque en mêlée"}, --  Berserk!
	[705] = {"705", "", "Quand utilisé, gagnez ↑ +1.0 vitesse et la capacité de marcher à travers les ennemis et les projectiles pendant 1 seconde#Augemente vos dégâts pour chaque ennemi traversé#Les ennemis traversés prennent 3x vos dégâts"}, --  Dark Arts
	[706] = {"706", "", "Détruit tous les objets de la salle et fait apparaître une mouche aggressive pour chaque objet détruit#Les effets des mouches dépendent des objets détruits"}, --  Abyss
	[707] = {"707", "", "+1 Réceptacle de coeur rouge#Soigne un coeur"}, --  Supper
	[708] = {"708", "", "↑ +1.0 Dégâts#L'un des yeux d'Isaac ne peut plus tirer de larmes"}, --  Stapler
	[709] = {"709", "", "Vous permet d'attraper un ennemi et de le plaquer contre le sol#Inflige 50 de dégâts et fait jaillir des vagues de rochers"}, --  Suplex!
	[710] = {"710", "", "Ramasse et stocke jusqu'à 8 collectibles#Maintenir la touche d'activation permet de fabriquer un objet#La qualité de l'objet dépend de la qualité des collectibles"}, --  Bag of Crafting
	[711] = {"711", "", "Permet de changer entre Tainted Lazarus et Dead Tainted Lazarus"}, --  Flip
	[712] = {"712", "", "Fait apparaître un objet orbital fantômatique destructible#L'effet de l'objet en orbite est appliqué au joueur#L'objet choisi dépend de la salle d'activation"}, --  Lemegeton
	[713] = {"713", "", "En maintenant la touche de tir pendant 2 secondes, convertit un demi coeur en un familier#Activer l'objet reconvertit les familiers en coeurs#Le type de coeur sacrifié change le comportement du familier"}, --  Sumptorium
	[714] = {"714", "", "Permet de retrouver le corps de Forgotten à n'importe quelle distance"}, --  Recall
	[715] = {"715", "", "Stocke une bombe caca pouvant être utilisée plus tard"}, --  Hold
	[716] = {"716", "", "Confère de la portée, de la vitesse ou des dégâts en achetant des les magasins#Fait apparaître 3 pièces et une clé quand vous le ramassez"}, --  Keeper's Sack
	[717] = {"717", "", "Les rochers détruits font apparaître 2 araignées bleues"}, --  Keeper's Kin
	[718] = {"718", "", "<Cet objet n'existe pas>"}, -- Keepers Robe (Cut item)
	[719] = {"719", "", "Fait apparaître un objet/collectible aléatoire du magasin"}, --  Keeper's Box
	[720] = {"720", "", "Fait apparaître certains collectibles en fonction du nombre de charges de l'objet#En cas de charge complète, l'effet sera bien plus fort#Récompenses de charge :#1: Caca 2:{{Pièce}} 3:{{Bomb}} 4:{{Key}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}"}, --  Everything Jar
	[721] = {"721", "", "Tous les prochains objets seront buggés#Leurs effets seront aléatoires"}, --  TMTRAINER
	[722] = {"722", "", "Enchaîne l'ennemi le plus proche pendant 5 secondes, l'empêchant d'agir"}, --  Anima Sola
	[723] = {"723", "", "Transforme tous les objets de la salle en baissant leur n° d'ID de un"}, --  Spindown Dice
	[724] = {"724", "", "En vous faisant toucher, fait apparaître un demi coeur rouge ou un coeur rouge complet#Ces coeurs disparaissent après 1.5 secondes s'ils ne sont pas ramassés"}, --  Hypercoagulation
	[725] = {"725", "", "En infligeant des dégâts, chance de déclencher un des effets suivants :#Lance un caca#Crée une flaque stimulante#Pet#Fait tomber 5 bombes allumées"}, --  IBS
	[726] = {"726", "", "Éternuez du sang en appuyant deux fois sur la touche de tir#Infligez ainsi 150% de vos dégâts aux ennemis devant vous#Délai de récupération : 1 seconde"}, --  Hemoptysis
	[727] = {"727", "", "+5 Bombes#Les bombes font apparaître des fantômes qui infligent des dégâts au corps à corps et explosent au bout de 10 secondes"}, --  Ghost Bombs
	[728] = {"728", "", "Fait apparaître un familier démoniaque attaché à Isaac#Copie les larmes d'Isaac, leurs effets et leurs stats"}, --  Gello
	[729] = {"729", "", "Lance la tête d'Isaac, tout en étant capable de tirer des larmes à l'endroit d'arrivée du lancer#Réactiver l'objet ou marcher sur la tête permet de la réattacher"}, --  Decap Attack
	
}
EID:updateDescriptionsViaTable(repCollectibles, EID.descriptions["fr"].collectibles)

EID.descriptions["fr"].birthright ={
	{"Isaac", "", "Tous les objets cyclent entre deux rotations"},
	{"Magdalene", "", "<Pas encore d'effet>"},
	{"Cain", "", "<Pas encore d'effet>"},
	{"Judas", "", "<Pas encore d'effet>"},
	{"???", "", "Les coeurs bleus obtenus via des objets Hp up sont doublés"},
	{"Eve", "", "Whore of Babylon est toujours actif, peu importe votre vie#Dead Bird est là en permanence, même sans prendre de dégâts"},
	{"Samson", "", "Bloody Lust peut être activé 4 fois supplémentaires"},
	{"Azazel", "", "Le Brimstone d'Azazel est plus large, comme le Mega Blast"},
	{"Lazarus", "", "En mourant, ressuscite en tant que Lazarus Risen#Lazarus Risen gagne un bonus de dégâts de +21.6 qui s'estompe progressivement"},
	{"Eden", "", "Fait apparaître 3 objets aléatoires#Seul l'un d'entre eux peut être choisi"},
	{"The Lost", "", "Empêche les objets inutiles pour The Lost d'apparaître#Exemples: les objets de soin, les objets qui permettent de voler, les objets conférant des larmes spectrales, etc"},
	{"Lazarus Risen", "", "Confère un bonus de dégâts de +21.6 qui s'estompe progressivement"},
	{"Black Judas", "", "<Pas encore d'effet>"},
	{"Lilith", "", "<Pas encore d'effet>"},
	{"Keeper", "", "<Pas encore d'effet>"},
	{"Apollyon", "", "<Pas encore d'effet>"},
	{"The Forgotten", "", "L'âme est libérée de ses entraves et peut se déplacer librement"},
	{"The Forgotten Soul", "", "L'âme est libérée de ses entraves et peut se déplacer librement"},
	{"Bethany", "", "Activer un objet en utilsant les charges d'âme est parfois gratuit"},
	{"Jacob", "", "Le personnage qui ramasse un objet gagne trois copies d'objets passifs détenus par l'autre personnage"},
	{"Esau", "", "Le personnage qui ramasse un objet gagne trois copies d'objets passifs détenus par l'autre personnage"},
	{"Tainted Isaac", "", "Ajoute 4 réceptacles d'objets supplémentaires"},
	{"Tainted Magdalene", "", "Ajoute un coeur rouge supplémentaire"},
	{"Tainted Cain", "", "Le nombre de collectibles obtenus en ramassant un objet est doublé"},
	{"Tainted Judas", "", "<Pas encore d'effet>"},
	{"Tainted ???", "", "Augmente le nombre maximum de cacas transportés à 29"},
	{"Tainted Eve", "", "<Pas encore d'effet>"},
	{"Tainted Samson", "", "Le temps restant de The Berserk augmente de 3 secondes au lieu de 1 quand Tainted Samson tue un ennemi"},
	{"Tainted Azazel", "", "Double la taille de l'Hemoptysis {{Collectible726}} de Tainted Azazel"},
	{"Tainted Lazarus", "", "<Pas encore d'effet>"},
	{"Tainted Eden", "", "Les objets passifs obtenus avant le Birthright ne seront pas changés quand vous prenez des dégâts"},
	{"Tainted Lost", "", "+1 Vie qui ramène Tainted Lost dans la salle de sa mort et inflige 200 dégâts aux ennemis proches#Peut toucher le même ennemi plusieurs fois"},
	{"Tainted Lilith", "", ""},
	{"Tainted Keeper", "", "Attire les pièces lâchées par les ennemis#Pas d'effet sur les pièces qui ne sont pas lâchées par des ennemis"},
	{"Tainted Apollyon", "", "<Pas encore d'effet>"},
	{"Tainted Forgotten", "", "Tainted Soul gagne la capacité Recall {{Collectible714}}, pour regagner immédiatement le corps de Tainted  Forgotten"},
	{"Tainted Bethany", "", "<Pas encore d'effet>"},
	{"Tainted Jacob", "", "<Pas encore d'effet>"},
	{"Dead Tainted Lazarus", "", "<Pas encore d'effet>"},
	{"Tainted Jacob 2", "", "<Pas encore d'effet>"},
	{"Tainted Forgotten Soul", "", "Tainted Soul gagne la capacité Recall {{Collectible714}}, pour regagner immédiatement le corps de Tainted  Forgotten"},
}

-- Buffs caused by Binge Eater
-- Note: "#" will be replaced with "#{{Collectible664}} " automatically, in order to add Binge eater icon infront of each buff-bulletpoint

EID.descriptions["fr"].bingeEaterBuffs = {
	[22] = {"22", "", "↑+0.5 Cadence de tir#↑+1.5 Portée"}, -- Lunch
	[23] = {"23", "", "↑+0.5 Cadence de tir#↑+0.2 Vitesse des larmes"}, -- Dinner
	[24] = {"24", "", "↑+1.0 Dégâts#↑+0.2 Vitesse"}, -- Dessert
	[25] = {"25", "", "↑+0.2 Vitesse#↑+1.5 Portée"}, -- Breakfast
	[26] = {"26", "", "↑+1.0 Dégâts#↑+1.5 Portée"}, -- Rotten Meat
	[456] = {"456", "", "↑+1.0 Dégâts#↑+1.0 Chance"}, -- Midnight Snack
	[346] = {"346", "", "↑+0.2 Vitesse des larmes#↑+1.0 Chance"}, -- A Snack
	[707] = {"707", "", "↑+0.5 Cadence de tir#↑+1.0 Chance"}, -- Supper
}
EID.descriptions["fr"].spindownError = "Item disappears"

---------- Trinkets ----------

local repTrinkets={
	[1] = {"1", "Swallowed Penny", "Fait tomber 1 pièce quand vous vous faites toucher#0-1 si vous jouez Keeper"}, -- Swallowed Penny
	[10] = {"10", "", "Les larmes bougent en vagues#↑ +0.4 Cadence de tir#Larmes spectrales"}, -- Wiggle Worm
	[11] = {"11", "", "Les larmes bougent en spirales à haute vitesse#Larmes spectrales"}, -- Ring Worm
	[15] = {"15", "Lucky Rock", "33% de chances d'obtenir une pièce en détruisant un rocher"},-- Lucky Rock
	[24] = {"24", "Butt Penny", "Produit un pet quand vous ramassez une pièce#Les pets repoussent et empoisonnent les ennemis"}, -- Butt Penny
	[26] = {"26", "", "Les larmes font des angles#↑ +10 Portée#Larmes spectrales"}, -- Hook Worm
	[32] = {"32", "Liberty Cap", "Effet de champignon aléatoire pour la salle"}, -- Liberty Cap
	[33] = {"33", "", "En tombant à un demi coeur rouge, confère Little Steven#Grande chance de faire apparaître un familier Gemini en vous faisant toucher"}, -- Umbilical Cord
	[48] = {"48", "A Missing Page", "En vous faisant toucher, chance d'infliger des dégâts à tous les ennemis dans la salle#Les coeurs noirs et les effets similaires au Necronomicon {{Collectible35}} infligent le double de dégâts"}, -- A Missing Page
	[49] = {"49", "", "25% de chances de faire tomber un demi coeur rouge en rammassant une pièce"}, -- Bloody Penny
	[50] = {"50", "", "25% de chances de faire tomber une bombe en ramassant une pièce"}, -- Burnt Penny
	[51] = {"51", "", "25% de chances de faire tomber une clé en ramassant une pièce"}, -- Flat Penny
	[65] = {"65", "Tape Worm", "↑ +3 Portée"}, -- Tape Worm
	[66] = {"66", "Lazy Worm", "↓ -0.5 Vitesse des larmes#↑ +2 Hauteur des larmes"}, -- Lazy Worm
	[69] = {"69", "", "Camouflage aléatoire#Rend les ennemis confus#Peut être utilisé pour ouvrir la porte vers l'étage \"Home\""}, -- Faded Polaroid
	[80] = {"80", "Black Feather", "↑ +0.5 Dégâts pour chaque objet démoniaque en votre possession"}, -- Black Feather
	[92] = {"92", "", "↑ Les bonus de stats donnés par vos objets augmentent de 20%#↑ +0.2 Cadence de tir#↑ -1 Délai des larmes"}, -- Cracked Crown
	[95] = {"95", "", "Chance de tirer des dents empoisonnées#Les ennemis touchés sont attaqués par la main de Big Horn"}, -- Black tooth
	[101] = {"101", "Dim Bulb", "!!! En ayant un objet actif déchargé :#↑ +1.5 Dégâts#↑ +0.5 Vitesse#↑ +1.5 Portée#↑ +0.5 Cadence de tir#↑ +0.3 Vitesse des larmes#↑ +2 Chance"},
	[110] = {"110", "Silver Dollar", "Les shops {{Shop}} apparaissent désormais dans le Womb et le Corpse"},
	[111] = {"111", "", "Les Item rooms {{TreasureRoom}} apparaissent désormais dans le Womb et le Corpse"}, -- Bloody Crown
	[119] = {"119", "", "Au début de chaque étage, soigne des coeurs rouges pour avoir 50% de votre vie max#Si vous avez plus de 50% de vie, vous soigne un demi coeur rouge"}, -- Stem Cell
	[128] = {"128", "", "5% de chances de gagner un coeur d'os en vous faisant toucher"}, -- Finger Bone
	[129] = {"129", "", "Chance de tirer des dents"}, --  Jawbreaker
	[130] = {"130", "", "Chance de tirer des larmes ralentissantes"}, --  Chewed Pen
	[131] = {"131", "", "Chance de faire tomber un demi coeur bleu en ramassant une pièce"}, --  Blessed Penny
	[132] = {"132", "", "Chance de gagner un effet de seringue aléatoire en entrant dans une salle et pour la durée de la salle"}, --  Broken Syringe
	[133] = {"133", "", "Les bombes placées par Isaac explosent plus rapidement"}, --  Short Fuse
	[134] = {"134", "", "Augmente la taille des pets"}, --  Gigante Bean
	[135] = {"135", "", "Chance d'appliquer un effet de brûlure aux ennemis en entrant dans une salle"}, --  A Lighter
	[136] = {"136", "", "Les portes, blocs verrouillés et coffres en or peuvent être ouverts avec une explosion#Peut aussi ouvrir la porte vers Home"}, --  Broken Padlock
	[137] = {"137", "", "À chaque nouvel étage, jusqu'à 4 collectibles non ramassés à l'étage précédent apparaîssent dans la salle de départ de l'étage"}, --  Myosotis
	[138] = {"138", "", "Utiliser un objet actif le change en un autre"}, --  'M
	[139] = {"139", "", "Les effets de larmes basés sur la chance ont lieu plus souvent"}, --  Teardrop Charm
	[140] = {"140", "", "Ramasser des coeurs rouges peut les convertir en araignées bleues#Fonctionne même si votre santé est pleine#Cet effet peut vous empêcher de vous soigner en consommant le coeur"}, --  Apple of Sodom
	[141] = {"141", "", "Augmente la cadence de tir des familiers"}, --  Forgotten Lullaby
	[142] = {"142", "", "Au début de chaque étage, fait apparaître 4 flammèches du Book of virtue {{Collectible584}}"}, --  Beth's Faith
	[143] = {"143", "", "Empêche les objets activables de se charger#Chance de faire apparaître une petite batterie en terminant une salle"}, --  Old Capacitor
	[144] = {"144", "", "Les larmes tournent à 90 degrés pour viser un ennemi qui aurait été loupé"}, --  Brain Worm
	[145] = {"145", "Perfection", "↑ +10 Chance#Se détruit si vous prenez des dégâts"}, --  Perfection
	[146] = {"146", "", "Les Item Rooms {{TreasureRoom}} contiennent maintenant des Devil Deals"}, --  Devil's Crown
	[147] = {"147", "", "Ramasser des pièces peut charger votre objet activable"}, --  Charged Penny
	[148] = {"148", "", "Fait tourner les familiers autour d'Isaac"}, --  Friendship Necklace
	[149] = {"149", "", "Active votre objet activable quand vous prenez des dégâts"}, --  Panic Button
	[150] = {"150", "", "Entrer dans une salle nécessitant une clé vous amène dans une salle ressemblant à l'étage de Hush#La salle agit comme un entre-deux des deux salles"}, --  Blue Key
	[151] = {"151", "", "Détruit les pics, les rendant inoffensifs#Concerne les CursedRooms {{CursedRoom}}, les coffres piégés et tous les obstacles à pics"}, --  Flat File
	[152] = {"152", "", "Rend possible l'apparition d'un second Planetarium#Les Planetariums peuvent maintenant appraître dans le Womb"}, --  Telescope Lens
	[153] = {"153", "", "À chaque salle, confère l'effet d'un objet de Mom"}, --  Mom's Lock
	[154] = {"154", "", "En entrant dans une nouvelle salle, confère un dé consommable temporaire#Le dé disparait en quittant la salle#Permet de tenir deux consommables"}, --  Dice Bag
	[155] = {"155", "", "Fait apparaître une Item Room {{TreasureRoom}} dans la Cathédrale"}, --  Holy Crown
	[156] = {"156", "", "Confère un réceptacle de coeur#Fonctionne également pour Keeper"}, --  Mother's Kiss
	[157] = {"157", "", "Tous les 15 tirs, tire un Ipecac {{Collectible149}} + My Reflection {{Collectible5}} avec une grande portée"}, --  Torn Card
	[158] = {"158", "", "Quand il se fait toucher, Isaac fait tomber tous ses collectibles#(Exception: Coeurs, Cartes, Pilules, Runes)"}, --  Torn Pocket
	[159] = {"159", "", "Remplace tous les nouveaux coffres par des coffres verrouillés#Exception: Mega Coffre"}, --  Gilded Key
	[160] = {"160", "", "Fait apparaître un sac de collectibles à chaque nouvel étage"}, --  Lucky Sack
	[161] = {"161", "", "Fait apparaître une Item Room {{TreasureRoom}} dans Sheol"}, --  Wicked Crown
	[162] = {"162", "", "Chance de se transformer en Azazel en entrant dans une nouvelle salle"}, --  Azazel's Stump
	[163] = {"163", "", "Fait apparaître une goutte de caca alliée en terminant une salle"}, --  Dingle Berry
	[164] = {"164", "", "Fait apparaître une bombes supplémentaire pour chaque bombe posée"}, --  Ring Cap
	[165] = {"165", "", "Au Womb et au-delà, remplace tous les collectibles qui apparaissent#Les bombes et les coeurs sont plus fréquents"}, --  Nuh Uh!
	[166] = {"166", "", "Confère l'effet d'un objet passif aléatoire à chaque salle"}, --  Modeling Clay
	[167] = {"167", "", "Chance de faire apparaître un squelette allié en terminant une salle"}, --  Polished Bone
	[168] = {"168", "", "+1 réceptacle de coeur d'os en commençant un nouvel étage"}, --  Hollow Heart
	[169] = {"169", "", "Quand tenu, est considéré comme un objet participant à la transformation de Guppy"}, --  Kid's Drawing
	[170] = {"170", "", "Confère la chance d'automatiquement créer des salle de Red Key {{Collectible580}}"}, --  Crystal Key
	[171] = {"171", "", "Les Devil Deals peuvent parfois coûter des pièces plutôt que de la vie"}, --  Keeper's Bargain
	[172] = {"172", "", "Vous téléporte dans une salle aléatoire en ramassant un penny#Peut vous téléporter dans une salle secrète"}, --  Cursed Penny
	[173] = {"173", "", "{{Warning}} USAGE UNIQUE {{Warning}}#Peut être utilisé pour payer un Devil Deal sans perdre de coeurs"}, --  Your Soul
	[174] = {"174", "", "+10% Chances de Devil Deal "}, --  Number Magnet
	[175] = {"175", "", "Débloque le passage vers Hush, peu importe la durée de la partie#Utiliser la Pandora's Box {{Collectible297}} fait apparaître 6 objets aléatoires"}, --  Strange Key
	[176] = {"176", "", "Fait apparaître un familier 'Blood Clot' qui imite les mouvements, larmes et effets d'Isaac"}, --  Lil Clot
	[177] = {"177", "", "Fait apparaître un coffre en triomphant d'une Challenge Room classique#Fait apparaître un collectible en triomphant d'une Boss Challenge Room"}, --  Temporary Tattoo
	[178] = {"178", "", "Le joueur explose quand il prend des dégâts"}, --  Swallowed M80
	[179] = {"179", "", "Permet de diriger les familiers en même temps qu'Isaac"}, --  RC Remote
	[180] = {"180", "", "Familier qui suit les mouvements exacts d'Isaac et tire des larmes spectrales#A les mêmes dégâts et effets de larmes qu'Isaac"}, --  Found Soul
	[181] = {"181", "", "Déclenche l'effet d'un objet activable aléatoire en utilisant un objet activable"}, --  Expansion Pack
	[182] = {"182", "", "Une fois par étage, crée une flammèche {{Collectible584}} et rend invincible en recevant des dégâts#Fait apparaître 5 flammèches en entrant dans une Angel Room#Créé une flammèche en donnant de l'argent aux mendiants"}, --  Beth's Essence
	[183] = {"183", "", "Dans chaque salle:#Sans familiers: chance d'obtenir Brother Bobby {{Collectible8}} et/ou Sister Maggy {{Collectible67}}#Avec des familiers: chance de dupliquer un de vos familiers"}, --  The Twins
	[184] = {"184", "", "Les magasins peuvent vendre des familiers#Les familiers seront toujours en solde"}, --  Adoption Papers
	[185] = {"185", "", "Chance de faire apparaître un criquet aléatoire en tuant un ennemi"}, --  Cricket Leg
	[186] = {"186", "", "{{Throwable}} {{ColorOPortée}}Peut être lancé{{CR}} (appuyer deux fois sur la touche)#Confère 2 familiers mouches qui peuvent attaquer"}, --  Apollyon's Best Friend
	[187] = {"187", "", "33% de chances d'ajouter un objet caché aléatoire dans les Item Rooms {{TreasureRoom}}"}, --  Broken Glasses
	[188] = {"188", "", "Ajoute une chance de pétrifier un ennemi en entrant dans une salle#Tuer un ennemi pétrifié le transforme en glace"}, --  Ice Cube
	[189] = {"189", "", "Active un bouclier d'une seconde en tuant un ennemi"}, --  Sigil of Baphomet
}
EID:updateDescriptionsViaTable(repTrinkets, EID.descriptions["fr"].trinkets)

-- Card Buffs caused by Tarot Cloth
-- Note: "#" will be replaced with "#{{Collectible451}}" automatically, in order to add Tarot Cloth icon infront of each buff-bulletpoint

EID.descriptions["fr"].tarotClothBuffs = {
	[2] = {"2", "", "Donne également l'effet Book of Belial{{Collectible34}} "}, -- I - The Magician
	[3] = {"3", "", "Un second pied tombe peu de temps après le premier"}, -- II - The High Priestess
	[4] = {"4", "", "Quadruple l'augmentation de stats"}, -- III - The Empress
	[5] = {"5", "", "Si le boss n'a pas encore été vaincu, donne un coeur bleu en supplément"}, -- IV - The Emperor
	[6] = {"6", "", "Fait apparaître 3 coeurs bleus"}, -- V - The Hierophant
	[7] = {"7", "", "Fait apparaître 3 coeurs rouges"}, -- VI - The Lovers
	[8] = {"8", "", "Durée doublée"}, -- VII - The Chariot
	[9] = {"9", "", "La quantité de collectible obtenue est doublée"}, -- VIII - Justice
	[10] = {"10", "", "Empêche Greed d'apparaître dans les Shops#Si Greed a déjà été combattu dans l'étage, fait apparaître un Shop sur le lieu du combat"}, -- IX - The Hermit
	[11] = {"11", "", "Fait apparaître 2 machines de casino"}, -- X - Wheel of Fortune
	[12] = {"12", "", "Double l'effet, ne prend pas en compte les multiplicateurs de dégâts"}, -- XI - Strength
	[14] = {"14", "", "Inflige 80 de dégâts à tous les ennemis"}, -- XIII - Death
	[15] = {"15", "", "Fait apparaître 2 machines de don du sang"}, -- XIV - Temperance
	[16] = {"16", "", "L'augmentation des dégâts est doublée"}, -- XV - The Devil
	[17] = {"17", "", "Fait apparaître 12 bombes trolles"}, -- XVI - The Tower
	[18] = {"18", "", "Si l'Item room n'a pas encore été visitée, vous aurez le choix entre 2 objets"}, -- XVII - The Stars
	[21] = {"21", "", "Fait apparaître 2 mendiants"}, -- XX - Judgement
	[56] = {"56", "", "Vous fait lâcher tous vos collectibles ainsi que Tarot Cloth"}, -- 0 - The Fool?
	[59] = {"59", "", "Confère 3 réceptacles de coeurs temporaires"}, -- III - The Empress?
	[61] = {"61", "", "Fait apparaître 6 coeurs d'os"}, -- V - The Hierophant?
	[62] = {"62", "", "Fait apparaître 4 coeurs brisés et apparaître 4 objets"}, -- VI - The Lovers?
	[64] = {"64", "", "Fait apparaître 4-14 coffres dorés"}, -- VIII - Justice?
	[70] = {"70", "", "Mange 20 pilules"}, -- XIV - Temperance?
	[72] = {"72", "", "Fait apparaître 14 rochers aléatoires"}, -- XVI - The Tower?
	[73] = {"73", "", "Retire 2 objets et en fait apparaître 4"}, -- XVII - The Stars?
	[76] = {"76", "", "Fait apparaître 2 machines de reroll"}, -- XX - Judgement?
}
EID.descriptions["fr"].goldenTrinket = "GOLD: Effect doubled!"

---------- Cards ----------

local repCards={
	[27] = {"27", "", "Transforme tous les collectibles, coffres et ennemis en bombes"},
	[28] = {"28", "", "Transforme tous les collectibles, coffres et ennemis en pièces"},
	[29] = {"29", "", "Transforme tous les collectibles, coffres et ennemis en clefs"},
	[30] = {"30", "", "Transforme tous les collectibles, coffres et ennemis en coeurs"},
	[39] = {"39", "", "Incinvibilité pendant 20 secondes"},
	[51] = {"51", "Holy Card", "Donne l'effet de Holy Mantle#(Annule le prochain dégât reçu)#Ne fonctionne qu'une fois"}, -- Holy card
	[55] = {"55", "", "Effet de rune aléatoire#L'effet est plus faible que la rune imitée"},
	[56] = {"56", "", "Fait tomber tous vos coeurs et collectibles sur le sol#Vous laisse à un demi coeur#Fait apparaître {{Collectible74}} {{Collectible19}} si le nombre de collectibles est insuffisant"},
	[57] = {"57", "", "Vous donne une grande aura qui dévie les tirs ennemis#Dure 1 minute"},
	[58] = {"58", "", "Le pied de Mom tombe régulièrement pendant 1 minute"},
	[59] = {"59", "", "Effet temporaire :#↑ +2 Coeurs rouges#↑ +1.35 Cadence de tir"},
	[60] = {"60", "", "Vous téléporte dans une salle de Boss supplémentaire"},
	[61] = {"61", "", "Fait apparaître 2 coeurs d'os"},
	[62] = {"62", "", "Fait apparaître un objet correspondant à la salle d'utilisation#Convertit 1 réceptacle de coeur rouge ou 2 coeurs bleus en un coeur brisé"},
	[63] = {"63", "", "Vous transforme en une statue invincible pendant 10 secondes#Cadence de tir extrême pendant la durée de l'effet"},
	[64] = {"64", "", "Fait apparaître 2-4 coffres dorés"},
	[65] = {"65", "", "Convertit les collectibles et objets de la salle en pièces#La valeur des pièces est égale à la valeur des objets dans le Shop"},
	[66] = {"66", "", "Effet de salle de dé aléatoire"},
	[67] = {"67", "", "Les ennemis de la salle sont affaiblis, ralentis et subissent le double de dégâts"},
	[68] = {"68", "", "Change le joueur en Keeper pendant 30 secondes#Confère un triple shot et un boost de vitesse#Les ennemis tués font tomber des pièces"},
	[69] = {"69", "", "Active l'effet du Book of the Dead {{Collectible545}}#(Fait apparaître des entités squelettiques pour chaque ennemi tué dans la salle)"},
	[70] = {"70", "", "Active 5 effets de pilule aléatoire"},
	[71] = {"71", "", "Active l'effet de Bible {{Collectible33}}#Confère le familier Seraphim {{Collectible390}}#Dure 30 secondes"},
	[72] = {"72", "", "Fait apparaître 6 rochers ou obstacles aléatoires"},
	[73] = {"73", "", "Retire l'objet passif le plus ancien#Fait apparaître 2 objets aléatoires correspondant à la salle d'utilisation"},
	[74] = {"74", "", "Vous téléporte à l'Ultra Secret Room#Le chemin de retour sera constitué de salles rouges"},
	[75] = {"75", "", "Confère Spirit of the Night {{Collectible159}}#↑ +1.5 Dégâts#Actif pour l'étage#Convertit les coeurs rouges en coeurs d'os mais retourne à la normale à la fin de l'effet#Applique la Curse of the Darkness"},
	[76] = {"76", "", "Fait apparaître une machine de reroll"},
	[77] = {"77", "", "Fait apparaître une trappe menant à une salle souterraine"},
	[78] = {"78", "", "Active l'effet de la Red Key {{Collectible580}}"},
	[79] = {"79", "", "Fait apparaître 1-20 coeurs rouges"},
	[80] = {"80", "", "Copie l'effet de la pilule, carte, rune, objet activable ou soul stone le plus récemment utilisé"},
	[81] = {"81", "", "Change les objets de la salle#Se retransforment en l'objet d'origine après 1 seconde#L'effet se répète en continu"},
	[82] = {"82", "", "Entoure Isaac d'une aura rouge pour la salle actuelle#Les ennemis tués font tomber des demi-coeurs rouges qui disparaissent au bout de 2 secondes"},
	[83] = {"83", "", "Crée des salles rouges avec la Red Key {{Collectible580}} pour chaque sortie possible"},
	[84] = {"84", "", "Transforme Isaac en une ombre qui peut traverser les ennemis pour les paralyser#Après quelques secondes; les attaque tous, gagnant en dégâts pour chaque ennemi traversé"},
	[85] = {"85", "", "Provoque 8 pets empoisonnés avec une flaque brunâtre#Crée ensuite une rangée de 7 Bombes caca#Rester dans la flaque confère ↑ +1.35 Cadence de tir et ↑ +1 Dégâts"},
	[86] = {"86", "", "14 oiseaux morts volent et attaquent les ennemis#L'effet s'estompe en changeant de salle"},
	[87] = {"87", "", "Vous transforme en un Samson berserker avec des attaques de mélée pendant 10 secondes#↑ +0.4 Vitesse#↑ Cadence de tir#↑ +3 Dégâts"},
	[88] = {"88", "", "Active Mega Blast {{Collectible441}} pendant 7.5 secondes"},
	[89] = {"89", "", "Mourez et revivez avec un demi coeur et devenez temporairement invincible#L'objet est automatiquement utilisé en prenant un coup fatal (comme une vie supplémentaire)"},
	[90] = {"90", "", "Active les effets du D6 {{Collectible105}}  D20 {{Collectible166}}#Les objets apparus de cette manière sont totalement aléatoires"},
	[91] = {"91", "", "Mourez et devenez The Lost pour la salle actuelle"},
	[92] = {"92", "", "Ajoute un familier supplémentaire aléatoire"},
	[93] = {"93", "", "Fait apparaître 3-25 pièces aléatoires"},
	[94] = {"94", "", "Fait apparaître 15 criquets aléatoires"},
	[95] = {"95", "", "Fait apparaître The Forgotten en tant que personnage secondaire pour la salle actuelle"},
	[96] = {"96", "", "Fait apparaître 6 flammèches du Book of Virtues {{Collectible584}} avec une propriété aléatoire"},
	[97] = {"97", "", "Fait apparaître Esau en tant que personnages secondaire pour la salle actuelle"},
}
EID:updateDescriptionsViaTable(repCards, EID.descriptions["fr"].cards)

---------- Pills ----------

local repPills={
	[4] = {"3", "", "Inverse le nombre de bombes avec le nombre de clefs#Les bombes dorées et clefs dorées sont aussi affectées"},
	[12] = {"11", "", "↓ -0.6 Portée"},
	[13] = {"12", "", "↑ +0.45 Portée"},
	[42] = {"41", "", "Ralentit les ennemis et Isaac dans la salle"},
	[43] = {"42", "", "Accélère tous les ennemis et Isaac dans la salle#Se réactive à nouveau au bout de 30 et 60 secondes"},
	
	[48] = {"47", "", "↓ -0.15 Vitesse des larmes"},
	[49] = {"48", "", "↑ +0.15 Vitesse des larmes"},
	[50] = {"49", "", "↑ Augmente une stat aléatoire#↓ Baisse une autre stat aléatoire#Si vous avez le PHD, aucune stat ne sera baissée"},
	[9999] = {"", "Golden Pill", "Effet de pilule aléatoire#S'autodétruit après quelques utilisations"}, -- golden Pill
}
EID:updateDescriptionsViaTable(repPills, EID.descriptions["fr"].pills)

EID.descriptions["fr"].horsepills={
	{"0", "", "Empoisonne la salle entière"},
	{"1", "", "Vous inflige 2 coeurs de dégâts"},
	{"2", "", "+4 Coeurs bleus"},
	{"3", "", "Inverse votre nombre de bombes avec votre nombre de clefs#Augmente le nombre de clefs et de bombes de 50%#Les bombes et clefs dorées sont aussi affectées"},
	{"4", "", "Fait apparaître des méga troll bombes autoguidées sur votre position"},
	{"5", "", "Soin complet#+3 Coeurs bleus"},
	{"6", "", "↓ -2 Coeurs max"},
	{"7", "", "↑ +2 réceptacles de coeurs vides"},
	{"8", "", "Pas d'effet"},
	{"9", "", "Pas d'effet"}, -- Puberty
	{"10", "", "Ajoute un orbital Big Fan {{Collectible279}}#Il n'y a pas de limite"},
	{"11", "", "↓ -1.2 Portée"},
	{"12", "", "↑ +0.9 Portée"},
	{"13", "", "↓ -0.24 Vitesse"},
	{"14", "", "↑ +0.3 Vitesse"},
	{"15", "", "↓ -0.56 Cadence de tir"},
	{"16", "", "↑ +0.70 Cadence de tir"},
	{"17", "", "↓ -2 Chance"},
	{"18", "", "↑ +2 Chance"},
	{"19", "", "Vous téléporte dans une salle aléatoire"},
	{"20", "", "Recharge votre objet activable#Fait tomber des batteries"},
	{"21", "", "Absorbe tous vos réceptacles de coeurs rouges sauf un#Fait apparaître des coeurs rouges"},
	{"22", "", "Vous ne pouvez pas bouger pendant 4 secondes"},
	{"23", "", "Ouvre les entrées des salles secrètes de l'étage#Révèle l'entièreté de l'étage sur votre carte"},
	{"24", "", "Change tous les ennemis de la salle en alliés"},
	{"25", "", "Cache la carte de l'étage"},
	{"26", "", "fait apparaître une flaque sur le sol qui inflige des dégâts aux ennemis"},
	{"27", "", "Tirez en diagonale pendant 60 secondes"},
	{"28", "", "Subissez la moitié des dégâts prévus pendant la salle actuelle"}, 
	{"29", "", "Vous faire toucher dans la salle vous fera perdre un coeur entier"},
	{"30", "", "Fait apparaître des cacas sur votre passage pendant 4 secondes"},
	{"31", "", "Effet Curse of the maze pour l'étage actuel"},
	{"32", "", "Vous avez une sacrée poussée de croissance#N'affecte pas votre hitbox"},
	{"33", "", "Vous rapetissez beaucoup#Votre hitbox diminue également"},
	{"34", "", "Fait apparaître 2 araignées bleues pour chaque caca présent dans la salle"},
	{"35", "", "Fait apparaître 2 araignées bleues pour chaque ennemi dans la salle#Fait apparaître 2-6 araignées bleues quand il n'y a aucun ennemi"},
	{"36", "", "Courte invincibilité#↑ #7 Dégâts#↑ +3 Portée# L'augmentation de stats persiste pour la salle actuelle"},
	{"37", "", "Pixellise l'écran pendant 90 secondes"},
	{"38", "", "Fait apparaître 6 mouches bleues"},
	{"39", "", "Fait apparaître une flaque glissante"},
	{"40", "", "Fait apparaître une flaque ralentissante"},
	{"41", "", "Ralentit tous les ennemis dans la salle"},
	{"42", "", "Accélère tous les ennemis dans la salle"},
	{"43", "", "Consomme votre trinket actuel et gagnez son effet de manière permanente"},
	{"44", "", "Tire un amas de larmes explosives"},
	{"45", "", "Courte invincibilité#Effraie tous les ennemis#Deux ennemis mangés régénèrent un demi coeur"},
	{"46", "", "Fait apparaître la dernière pilule utilisée en version <<Horse Pill>>"},
	{"47", "", "↓ -0.3 Vitesse des larmes"},
	{"48", "", "↑ +0.3 Vitesse des larmes"},
	{"49", "", "↑ Augmente une stat aléatoire deux fois#↓ Diminue une autre stat aléatoire deux fois#Aucune stat n'est baissée si vous possédez le PHD"},
	[9999] = {"", "Golden Pill", "Effet de <<Horse Pill>> aléatoire#S'autodétruit après quelques utilisations"}, -- golden Pill
}

EID.descriptions["fr"].CraftingBagContent = "Sac:"
EID.descriptions["fr"].CraftingRoomContent = "Salle:"
EID.descriptions["fr"].CraftingFloorContent = "Étage:"
EID.descriptions["fr"].CraftingResults = "Results:#(Scroll: hold {{CONFIG_BoC_Toggle}} + {{ButtonY}} {{ButtonA}})"
EID.descriptions["fr"].CraftingBagModError = "!!! {{ColorRed}}ERROR:#{{ColorRed}}This feature currently does not support games with modded items installed"
