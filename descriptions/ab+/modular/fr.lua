-- This file contains text elements that are used for the modular description system.
-- Each entry corresponds to a specific item and will be appended to the modular item's description in combination 
-- with the generated description parts based on the item stats and effects defined in the "item_data.lua" file.

-- The following entries are automatically extracted from the original description files.
-- As a referenence, you can find comments with the expected english text below them.
-- The automatic fill is done by taking the "old" translated text from your translation file, and trying to match it to the
-- english text and its structure. If the match was not successful, it will also adds the full original translated description ("Full old Desc: ...")
-- To check for any mistakes, you can compare the english expected text and the original translation with the text inside the entry and adjust it if nessesary.

---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 5] = "Les larmes d'Isaac reviennent vers lui comme un boomerang", -- My Reflection
	-- Full old Desc: "↑ Portée {{ColorLime}}+1.5#↑ Vitesse des tirs {{ColorLime}}+0.6#↑ +1 Hauteur des larmes#Les larmes d'Isaac reviennent vers lui comme un boomerang"
	-- English: "Tears get a boomerang effect"

	[C_ID .. 8] = "Suit Isaac et tire dans la même direction que lui", -- Brother Bobby
	-- Full old Desc: "Suit Isaac et tire dans la même direction que lui#{{DamageSmall}} 3.5 dégâts par larme"
	-- English: "Shoots normal tears"

	[C_ID .. 9] = "Les mouches ennemies sont inoffensives", -- Skatole
	-- English: "All fly enemies are friendly"

	[C_ID .. 11] = "{{HealingRed}} Isaac reçoit un soin complet en ressuscitant", -- 1up!
	-- Full old Desc: "↑ +1 Vie#{{HealingRed}} Isaac reçoit un soin complet en ressuscitant"
	-- English: "Isaac respawns with full health on death"

	[C_ID .. 13] = "Les ennemis empoisonnés tués peuvent lâcher un cœur noir", -- The Virus
	-- Full old Desc: "↓ Vitesse {{ColorError}}-0.1#Entrer en contact avec un ennemi l'empoisonne#Les ennemis empoisonnés tués peuvent lâcher un cœur noir"
	-- English: "{{Poison}} Touching enemies poisons them#{{BlackHeart}} Poisoned enemies can drop Black Hearts"

	[C_ID .. 21] = "Révèle la position des salles spéciales sur la carte#Ne révèle pas la disposition des salles", -- The Compass
	-- English: "Reveals icons on the map#Does not reveal the layout of the map"

	[C_ID .. 33] = "Permet à Isaac de voler pour la durée de la salle#Tue instantanément {{ColorCyan}}Mom's Foot{{ColorWhite}}, {{ColorCyan}}Mom's Heart{{ColorWhite}} et {{ColorCyan}}It Lives!{{ColorWhite}}#{{Warning}} Tue Isaac si utilisée pendant le combat contre {{ColorCyan}}Satan", -- The Bible
	-- English: "{{Timer}} Flight for the room#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[C_ID .. 36] = "Pose un caca {{Poop}} au sol", -- The Poop
	-- English: "Spawns one poop and knocks back enemies#Can be placed next to a pit and destroyed with a bomb to make a bridge"

	[C_ID .. 38] = "Tire 10 larmes en cercle autour d'Isaac", -- Tammy's Head
	-- English: "Shoots 10 tears in a circle around Isaac#The tears copy Isaac's tear effects, plus 25 damage"

	[C_ID .. 39] = "Pétrifie tous les ennemis dans la salle#{{Timer}} L'effet dure 4 secondes", -- Mom's Bra
	-- English: "{{Petrify}} Petrifies all enemies in the room for 4 seconds"

	[C_ID .. 40] = "Déclenche une explosion à l'emplacement d'Isaac", -- Kamikaze!
	-- Full old Desc: "Déclenche une explosion à l'emplacement d'Isaac#{{Warning}} Inflige un demi-cœur de dégâts à Isaac"
	-- English: "Causes an explosion at Isaac's location#Deals {VAR:1} damage"

	[C_ID .. 41] = "Terrifie tous les ennemis de la salle pendant 5 secondes", -- Mom's Pad
	-- English: "{{Fear}} Fears all enemies in the room for 5 seconds"

	[C_ID .. 42] = "Bombe jetable avec les boutons de tir#Inflige 50 dégâts d'explosion#Empoisonne les ennemis à proximité", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes on impact and poisons enemies"

	[C_ID .. 44] = "Téléporte Isaac dans une salle au hasard#Ne peut pas téléporter dans la salle I AM ERROR", -- Teleport!
	-- English: "Teleports Isaac into a random room, except I AM ERROR rooms"

	[C_ID .. 46] = "↑ Augmente les chances de gagner aux jeux de hasard", -- Lucky Foot
	-- Full old Desc: "↑ Chance {{ColorLime}}+1.0#↑ Augmente les chances de gagner aux jeux de hasard"
	-- English: "+8% room clear reward chance#Better chance to win while gambling"

	[C_ID .. 47] = "Utiliser l'objet affiche un curseur déplaçable#Un missile frappe le curseur après 2 secondes", -- Doctor's Remote
	-- English: "{{Collectible168}} On use, start aiming a crosshair#A missile lands on the crosshair after 1.5 seconds#It deals 20x Isaac's damage"

	[C_ID .. 49] = "Crache un laser dans la direction choisie", -- Shoop da Whoop!
	-- Full old Desc: "Crache un laser dans la direction choisie"
	-- English: "The next shot is replaced with a beam#It deals {VAR:1}x Isaac's damage over {VAR:2} seconds"

	[C_ID .. 53] = "Isaac attire les ressources", -- Magneto
	-- English: "Pickups are attracted to Isaac"

	[C_ID .. 54] = "Révèle la disposition des salles sur la carte", -- Treasure Map
	-- English: "Reveals the floor layout#Does not reveal room icons"

	[C_ID .. 56] = "Répand une flaque au sol et inflige des dégâts aux ennemis qui marchent dedans", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 57] = "Orbite autour d'Isaac et inflige des dégâts de contact", -- Distant Admiration
	-- Full old Desc: "Orbite autour d'Isaac et inflige des dégâts de contact#{{DamageSmall}} 75 dégâts par seconde"
	-- English: "Mid-range fly orbital"

	[C_ID .. 60] = "Permet à Isaac de traverser les précipices d'une case", -- The Ladder
	-- English: "Allows Isaac to cross 1-tile gaps"

	[C_ID .. 62] = "{{HealingRed}} Tuer 13 ennemis soigne un demi-cœur rouge", -- Charm of the Vampire
	-- English: "{{HealingRed}} Killing 13 enemies heals half a heart"

	[C_ID .. 63] = "Permet de surcharger les objets activables#Un objet complètement surchargé peut être utilisé deux fois d'affilée", -- The Battery
	-- English: "{{Battery}} Active items can be overcharged to two full charges"

	[C_ID .. 64] = "Réduit le prix des objets du shop de moitié", -- Steam Sale
	-- English: "{{Shop}} Shop items cost 50% less"

	[C_ID .. 65] = "Invoque 6 troll bombs", -- Anarchist Cookbook
	-- English: "Spawns 6 Troll Bombs near the center of the room"

	[C_ID .. 66] = "Ralentit les ennemis pendant 8 secondes", -- The Hourglass
	-- English: "{{Slow}} Slows enemies down for 8 seconds"

	[C_ID .. 67] = "Suit Isaac et tire en même temps que lui", -- Sister Maggy
	-- Full old Desc: "Suit Isaac et tire en même temps que lui#{{DamageSmall}} 3.5 dégâts par larme"
	-- English: "Shoots normal tears"

	[C_ID .. 68] = "Remplace les larmes d'Isaac par des lasers", -- Technology
	-- English: "Isaac shoots lasers instead of tears"

	[C_ID .. 69] = "↓ Débit diminué#Permet à Isaac de charger ses tirs#Une larme complètement chargée inflige {{ColorLime}}dégâts x4", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x#{{Tears}} Max charge time is 2.5x tear delay"

	[C_ID .. 73] = "Obtenir plusieurs copies de cet objet l'améliore :#1: Orbite autour d'Isaac#2: Orbite autour d'Isaac et tire#3: Pourchasse les ennemis et inflige 7 dégâts de contact#4: Pourchasse les ennemis et inflige 11 dégâts de contact", -- Cube of Meat
	-- English: "Lv1: Orbital#Lv2: Shooting orbital#Lv3: Meat Boy#Lv4: Super Meat Boy"

	[C_ID .. 75] = "Les banques du sang {{BloodDonationMachine}} et {{ColorYellow}}IV Bag{{ColorWhite}} {{Collectible135}} donnent davantage de pièces", -- PHD
	-- Full old Desc: "{{HealingRed}} Soigne 2 cœurs rouges#{{Pill}} +1 pilule#Les pilules ne peuvent plus avoir d'effet négatif#Les banques du sang {{BloodDonationMachine}} et {{ColorYellow}}IV Bag{{ColorWhite}} {{Collectible135}} donnent davantage de pièces"
	-- English: "{{Pill}} Changes bad pills into good pills#{{BloodDonationMachine}} Blood Donation Machines give more {{Coin}} coins"

	[C_ID .. 76] = "Ouvre les entrées des Secret Rooms {{SecretRoom}} et Super Secret Rooms {{SuperSecretRoom}}", -- X-Ray Vision
	-- English: "{{SecretRoom}} Opens all secret room entrances"

	[C_ID .. 78] = "{{AngelDevilChanceSmall}} +17.5% de chances de Devil Deal", -- Book of Revelations
	-- Full old Desc: "{{SoulHeart}} +1 cœur d'âme#Augmente les chances d'affronter un {{ColorCyan}}Harbinger{{ColorWhite}} dans la salle du boss#{{AngelDevilChanceSmall}} +17.5% de chances de Devil Deal"
	-- English: "Using the item has a high chance to replace the floor's boss with a horseman"

	[C_ID .. 81] = "↓ Réduit le nombre de réceptacles de cœurs rouges d'Isaac à 1#Mourir ressuscite Isaac avec 1 réceptacle de cœur", -- Dead Cat
	-- Full old Desc: "↑ +9 Vies#↓ Réduit le nombre de réceptacles de cœurs rouges d'Isaac à 1#Mourir ressuscite Isaac avec 1 réceptacle de cœur"
	-- English: "Isaac respawns with 1 heart container on death#{{Warning}} Sets Isaac's heart containers to 1 when picked up"

	[C_ID .. 83] = "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}", -- The Nail
	-- Full old Desc: "{{SoulHeart}} +1 cœur d'âme#↑ Dégâts {{ColorLime}}+0.7#↓ Vitesse {{ColorError}}-0.18#Marcher sur les obstacles les détruit"
	-- English: "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#{{IND}}Allows Isaac to destroy rocks by walking into them"

	[C_ID .. 84] = "Ouvre une trappe vers l'étage suivant#La trappe a 10% de chances de contenir une échelle de corde", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} 10% chance to open a crawlspace trapdoor"

	[C_ID .. 86] = "{{ColorCyan}}Monstro{{ColorWhite}} tombe et écrase un ennemi au hasard#Dans une salle vide, Monstro écrase Isaac", -- Monstro's Tooth
	-- English: "Monstro falls on an enemy and deals 120 damage#{{Warning}} Monstro falls on Isaac if the room has no enemies"

	[C_ID .. 88] = "S'élance dans la direction des tirs d'Isaac et inflige des dégâts de contact", -- Little Chubby
	-- Full old Desc: "S'élance dans la direction des tirs d'Isaac et inflige des dégâts de contact#{{DamageSmall}} 52.5 dégâts par seconde"
	-- English: "Charges forward in the direction Isaac is shooting"

	[C_ID .. 91] = "Révèle le type des salles spéciales adjacentes", -- Spelunker Hat
	-- English: "Reveals the room type of adjacent rooms#{{SecretRoom}} Can reveal Secret and Super Secret Rooms"

	[C_ID .. 93] = "{VAR:TIMEDEFFECT}", -- The Gamekid
	-- Full old Desc: "Rend Isaac invulnérable#Terrifie tous les ennemis de la salle#{{HealingRed}} Tuer un ennemi soigne parfois un demi-cœur rouge#{{Timer}} L'effet dure 6.5 secondes"
	-- English: "{VAR:TIMEDEFFECT}#{{IND}}{{HealingRed}} Killing 2 enemies heals half a heart#{{IND}}{{Fear}} Fears all enemies in the room"

	[C_ID .. 94] = "Fait apparaître une pièce toutes les 2 salles", -- Sack of Pennies
	-- English: "{{Coin}} Spawns a random coin every 2 rooms"

	[C_ID .. 95] = "Tire des lasers", -- Robo-Baby
	-- Full old Desc: "Tire des lasers#{{DamageSmall}} 3.5 dégâts par laser"
	-- English: "Shoots lasers"

	[C_ID .. 96] = "Fait apparaître un demi-cœur toutes les 3 salles", -- Little C.H.A.D.
	-- English: "{{HalfHeart}} Spawns a half Red Heart every 3 rooms"

	[C_ID .. 99] = "Tire des larmes ralentissantes", -- Little Gish
	-- Full old Desc: "Tire des larmes ralentissantes#{{DamageSmall}} 3.5 dégâts par larme"
	-- English: "{{Slow}} Shoots slowing tears"

	[C_ID .. 100] = "Tire des larmes autoguidées", -- Little Steven
	-- Full old Desc: "Tire des larmes autoguidées#{{DamageSmall}} 3.5 dégâts par larme"
	-- English: "Shoots homing tears"

	[C_ID .. 104] = "Les larmes d'Isaac se divisent en deux au contact d'un obstacle ou d'un ennemi", -- The Parasite
	-- English: "Tears split in two on contact#Split tears deal half damage"

	[C_ID .. 105] = "Rejoue tous les objets sur piédestal de la salle", -- The D6
	-- English: "Rerolls pedestal items in the room"

	[C_ID .. 107] = "{VAR:ROOMEFFECT}", -- The Pinking Shears
	-- Full old Desc: "Permet à Isaac de voler#Le corps d'Isaac se sépare de sa tête, pourchasse les ennemis et inflige des dégâts de contact#{{DamageSmall}} 82.5 dégâts par seconde"
	-- English: "{VAR:ROOMEFFECT}#{{IND}}Isaac's body separates from his head and attacks enemies with {VAR:1} contact damage per second"

	[C_ID .. 108] = "Réduit tous les dégâts subis à un demi-cœur", -- The Wafer
	-- English: "Reduces most damage taken to half a heart"

	[C_ID .. 109] = "↑ Dégâts {{ColorLime}}+0.04{{ColorWhite}} pour chaque pièce au compteur", -- Money = Power
	-- English: "↑ {{Damage}} +0.04 Damage for every {{Coin}} coin Isaac has"

	[C_ID .. 111] = "Isaac pète, empoisonne, et inflige des dégâts aux ennemis à proximité", -- The Bean
	-- English: "{{Poison}} Deals 5 damage to enemies nearby and poisons them#The poison deals Isaac's damage 6 times"

	[C_ID .. 112] = "{{DamageSmall}} 105 dégâts par seconde", -- Guardian Angel
	-- Full old Desc: "Orbite autour d'Isaac, bloque les projectiles ennemis et inflige des dégâts de contact#{{DamageSmall}} 105 dégâts par seconde#Augmente la vitesse de rotation des familiers"
	-- English: "Speeds up all other orbitals"

	[C_ID .. 113] = "Tire automatiquement sur les ennemis à proximité", -- Demon Baby
	-- Full old Desc: "Tire automatiquement sur les ennemis à proximité#{{DamageSmall}} 3 dégâts par larme"
	-- English: "Shoots enemies that get close to him"

	[C_ID .. 114] = "Remplace les larmes d'Isaac par un couteau#Le couteau inflige {{ColorLime}}dégâts x2{{ColorWhite}} dans les mains d'Isaac et {{ColorLime}}dégâts x6{{ColorWhite}} au plus loin de lui", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and 6x at the furthest possible distance"

	[C_ID .. 116] = "Charge automatiquement la première barre des objets activables#Charge complètement l'objet activable tenu", -- 9 Volt
	-- English: "{{Battery}} Automatically charges the first bar of active items#{{Battery}} Fully recharges the active item on pickup"

	[C_ID .. 117] = "Subir un dégât invoque un oiseau qui pourchasse et inflige des dégâts aux ennemis", -- Dead Bird
	-- Full old Desc: "Subir un dégât invoque un oiseau qui pourchasse et inflige des dégâts aux ennemis#{{DamageSmall}} 4.3 dégâts par seconde"
	-- English: "Taking damage spawns a bird that attacks enemies"

	[C_ID .. 122] = "Quand Isaac n'a qu'un demi-cœur rouge ou moins:#{VAR:EFFECTLIST}", -- Whore of Babylon
	-- Full old Desc: "Quand Isaac n'a qu'un demi-cœur rouge ou moins:#↑ Dégâts {{ColorLime}}+1.5#↑ Vitesse {{ColorLime}}+0.3"
	-- English: "When on half a Red Heart or less:#{VAR:EFFECTLIST}"

	[C_ID .. 123] = "Invoque un familier au hasard pour la durée d'une salle", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the room"

	[C_ID .. 124] = "Déclenche l'effet d'un objet activable au hasard#Ne peut pas déclencher d'effets qui infligent des dégâts directs à Isaac", -- Dead Sea Scrolls
	-- English: "Triggers a random active item effect#Chooses the effect from a fixed list of items"

	[C_ID .. 125] = "Les bombes placées par Isaac se déplacent en direction des ennemis", -- Bobby-Bomb
	-- Full old Desc: "{{Bomb}} +5 Bombes#Les bombes placées par Isaac se déplacent en direction des ennemis"
	-- English: "Homing bombs"

	[C_ID .. 126] = "↑ Dégâts {{ColorLime}}+1.2#{{Warning}} Inflige 1 cœur de dégâts à Isaac#Retire les cœurs rouges en priorité", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 127] = "Rejoue et redémarre l'étage", -- Forget Me Now
	-- English: "Rerolls and restarts the entire floor"

	[C_ID .. 128] = "Orbite autour d'Isaac et inflige des dégâts de contact", -- Forever Alone
	-- Full old Desc: "Orbite autour d'Isaac et inflige des dégâts de contact#{{DamageSmall}} 30 dégâts par seconde"
	-- English: "Long range fly orbital"

	[C_ID .. 130] = "↑ Vitesse =1.5#Permet à Isaac de voler#Utiliser l'objet déclenche une ruée dans la direction où se déplace Isaac#Isaac est invulnérable durant la ruée", -- A Pony
	-- English: "While held:#{{Speed}} Sets your Speed to at least 1.5#Flight#Upon use, dashes in the direction of Isaac's movement"

	[C_ID .. 131] = "Fait apparaître une bombe toutes les 3 salles", -- Bomb Bag
	-- English: "{{Bomb}} Spawns 1 bomb pickup every 3 rooms"

	[C_ID .. 132] = "Augmente les dégâts des larmes d'Isaac selon la distance qu'elles parcourent", -- A Lump of Coal
	-- English: "{{Damage}} Tears deal more damage the further they travel"

	[C_ID .. 133] = "Convertit 1 réceptacle de cœur en 3 cœurs d'âme", -- Guppy's Paw
	-- English: "{{SoulHeart}} Converts 1 heart container into 3 Soul Hearts"

	[C_ID .. 134] = "{{ColorLime}}33%{{ColorWhite}} de chances de remplacer la récompense d'une salle par un coffre#{{ColorError}}33%{{ColorWhite}} de chances d'annuler la récompense d'une salle", -- Guppy's Tail
	-- English: "{{Chest}} 33% chance to replace the room clear reward with a chest#33% chance to spawn no room clear reward"

	[C_ID .. 135] = "Inflige un demi-cœur de dégâts à Isaac et fait apparaître 2 à 3 pièces", -- IV Bag
	-- English: "{{Coin}} Hurts Isaac for half a heart and spawns 1-2 coins#{{Heart}} Removes Red Hearts first"

	[C_ID .. 136] = "Place une peluche qui attire les ennemis et explose après 5 secondes", -- Best Friend
	-- English: "Spawns a decoy Isaac that attracts enemies and explodes after 5 seconds"

	[C_ID .. 137] = "Les bombes d'Isaac n'explosent plus automatiquement#Utiliser l'objet fait exploser toutes les bombes placées par Isaac", -- Remote Detonator
	-- Full old Desc: "{{Bomb}} +5 Bombes#Les bombes d'Isaac n'explosent plus automatiquement#Utiliser l'objet fait exploser toutes les bombes placées par Isaac"
	-- English: "Isaac's bombs no longer explode automatically#Upon use, detonates all of Isaac's bombs at once"

	[C_ID .. 139] = "Permet à Isaac de porter deux trinkets", -- Mom's Purse
	-- English: "{{Trinket}} Isaac can hold 2 trinkets"

	[C_ID .. 140] = "{{Bomb}} +5 Bombes", -- Bob's Curse
	-- Full old Desc: "L'explosion des bombes empoisonne les ennemis#{{Bomb}} +5 Bombes"
	-- English: "{{Poison}} Isaac's bombs poison enemies caught in the blast"

	[C_ID .. 142] = "Descendre à un demi-cœur de vie totale ajoute un cœur d'âme aux PV d'Isaac#L'effet ne peut se déclencher qu'une fois par salle#Quitter et revenir dans la salle permet à l'effet de se déclencher à nouveau", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again"

	[C_ID .. 144] = "Ramasse les pièces au sol et en convertit 3 ou 4 en une ressource au hasard", -- Bum Friend
	-- English: "{{Coin}} Picks up nearby coins#Spawns random pickups every 3-4 coins"

	[C_ID .. 147] = "Permet à Isaac de détruire les rochers et les murs des Secret Rooms {{SecretRoom}} et Super Secret Rooms {{SuperSecretRoom}} pour la durée d'une salle", -- Notched Axe
	-- English: "{{Timer}} For the room, Isaac can break rocks and Secret Room walls by walking into them"

	[C_ID .. 149] = "Empoisonne les ennemis dans le rayon de l'explosion", -- Ipecac
	-- Full old Desc: "↑ Dégâts {{ColorLime}}+40#↓ Débit diminué#Remplace les larmes d'Isaac par des tirs en cloche explosifs#Empoisonne les ennemis dans le rayon de l'explosion"
	-- English: "Isaac's tears are shot in an arc#{{Poison}} The tears explode and poison enemies where they land"

	[C_ID .. 151] = "Toucher un ennemi avec une larme a 17% de chances d'invoquer une mouche bleue", -- The Mulligan
	-- English: "Tears have a 1/6 chance to spawn a blue fly when hitting an enemy"

	[C_ID .. 155] = "Rebondit contre les murs de la salle et inflige des dégâts de contact", -- The Peeper
	-- Full old Desc: "Rebondit contre les murs de la salle et inflige des dégâts de contact#{{DamageSmall}} 17 dégâts par seconde"
	-- English: "Floats around the room"

	[C_ID .. 156] = "Subir un dégât charge une barre de l'objet activable", -- Habit
	-- English: "{{Battery}} Taking damage adds 1 charge to the active item"

	[C_ID .. 157] = "↑ Dégâts augmentés pour chaque dégât subi#L'augmentation de dégâts persiste pour la durée de l'étage", -- Bloody Lust
	-- English: "↑ {{Damage}} Taking damage grants a damage up#Applies up to 6 times per floor#Lasts for the whole floor"

	[C_ID .. 158] = "Révèle l'étage sur la carte#{VAR:EFFECTLIST}", -- Crystal Ball
	-- Full old Desc: "Révèle l'étage sur la carte#Fait apparaître une carte ou un cœur d'âme"
	-- English: "Spawns a {{SoulHeart}} Soul Heart, {{Rune}} rune or {{Card}} card#{VAR:EFFECTLIST}"

	[C_ID .. 160] = "5 rayons de lumière frappent le sol à proximité des ennemis et leur infligent des dégâts", -- Crack the Sky
	-- English: "Spawns 5 beams of light near enemies#Each beam deals 8x Isaac's damage + 160 over 0.8 seconds"

	[C_ID .. 161] = "Réincarne Isaac en {{ColorLightOrange}}???{{ColorWhite}} à sa mort", -- Ankh
	-- English: "{{Player4}} Respawn as ??? (Blue Baby) on death"

	[C_ID .. 163] = "Tire des larmes spectrales", -- Ghost Baby
	-- Full old Desc: "Tire des larmes spectrales#{{DamageSmall}} 3.5 dégâts par larme"
	-- English: "Shoots spectral tears"

	[C_ID .. 164] = "Lance une flamme bleue dans la direction choisie#Les flammes durent 2 secondes, bloquent les projectiles ennemis et infligent des dégâts de contact", -- The Candle
	-- English: "Throws a blue flame#It deals contact damage, blocks enemy tears, and despawns after 2 seconds"

	[C_ID .. 166] = "Rejoue toutes les ressources de la salle", -- D20
	-- English: "Rerolls all pickups in the room"

	[C_ID .. 167] = "Tire deux larmes écartées", -- Harlequin Baby
	-- Full old Desc: "Tire deux larmes écartées#{{DamageSmall}} 4 dégâts par larme"
	-- English: "Shoots two tears in a V-shaped pattern"

	[C_ID .. 168] = "Les larmes d'Isaac sont remplacées par un curseur déplaçable#Un missile frappe le sol à l'emplacement du curseur après 1.5 secondes", -- Epic Fetus
	-- English: "Instead of shooting tears, aim a crosshair#A rocket lands on the crosshair after 1.5 seconds#{{Damage}} Rockets deal 20x Isaac's damage"

	[C_ID .. 170] = "Écrase un ennemi au hasard toutes les 4 secondes", -- Daddy Longlegs
	-- Full old Desc: "Écrase un ennemi au hasard toutes les 4 secondes#{{DamageSmall}} 40 dégâts par coup"
	-- English: "Stomps on a nearby enemy every 4 seconds"

	[C_ID .. 171] = "Ralentit tous les ennemis pendant 4 secondes", -- Spider Butt
	-- Full old Desc: "Ralentit tous les ennemis pendant 4 secondes#Inflige 10 dégâts à tous les ennemis"
	-- English: "{{Slow}} Slows down enemies for 4 seconds"

	[C_ID .. 174] = "Tire des larmes aléatoires", -- Rainbow Baby
	-- Full old Desc: "Tire des larmes aléatoires#{{DamageSmall}} 3 à 5 dégâts par larme"
	-- English: "Shoots random tears"

	[C_ID .. 175] = "Ouvre toutes les portes de la salle#Peut ouvrir la majorité des portes spéciales", -- Dad's Key
	-- English: "Opens all doors in the room, including {{SecretRoom}}{{SuperSecretRoom}}Secret Rooms, {{ChallengeRoom}}{{BossRushRoom}}Challenge Rooms, and the Mega Satan door"

	[C_ID .. 177] = "Retire 1 pièce à Isaac#Fait parfois apparaître une ressource", -- Portable Slot
	-- English: "{{Coin}} Spend 1 coin for a chance to spawn a pickup"

	[C_ID .. 178] = "Subir un dégât répand une flaque d'eau qui inflige des dégâts de contact", -- Holy Water
	-- English: "Taking damage spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 180] = "Subir un dégât fait péter Isaac", -- The Black Bean
	-- English: "Isaac farts when damaged#{{Poison}} The fart poisons enemies"

	[C_ID .. 181] = "↑ Vitesse =1.5#Permet à Isaac de voler#Utiliser l'objet déclenche une ruée dans la direction où se déplace Isaac#Des rayons de lumière frappent aléatoirement le sol pendant la ruée#Isaac est invulnérable pendant la ruée", -- White Pony
	-- English: "{{Speed}} Sets your Speed to at least 1.5#Flight while held#Using the item dashes in the direction of Isaac's movement, leaving behind beams of light"

	[C_ID .. 187] = "Peut être projetée en déplaçant Isaac#Grandit et inflige davantage de dégâts pour chaque ennemi qu'elle tue#La boule se réinitialise à chaque nouvel étage", -- Guppy's Hairball
	-- English: "Moving swings the hairball around#The ball grows when it kills an enemy#It deals more damage the bigger it is"

	[C_ID .. 188] = "Se déplace à l'inverse d'Isaac et tire dans sa direction#{{DamageSmall}} 3.5 dégâts par larme", -- Abel
	-- Full old Desc: "Se déplace à l'inverse d'Isaac et tire dans sa direction#{{DamageSmall}} 3.5 dégâts par larme"
	-- English: "Mirrors Isaac's movement#Shoots towards Isaac"

	[C_ID .. 191] = "Donne aux larmes d'Isaac un effet aléatoire toutes les 2 ou 3 secondes", -- 3 Dollar Bill
	-- English: "Isaac's tears get random effects every 2-3 seconds"

	[C_ID .. 198] = "Fait apparaître une ressource de chaque type", -- Box
	-- English: "Spawns 1 pickup of each type"

	[C_ID .. 199] = "Les coffres contiennent davantage de ressources", -- Mom's Key
	-- Full old Desc: "{{Key}} +2 Clés#Les coffres contiennent davantage de ressources"
	-- English: "Chests contain more pickups"

	[C_ID .. 202] = "Entrer en contact avec un ennemi le transforme en or#Tuer un ennemi doré fait apparaître des pièces#Isaac inflige des dégâts de contact proportionnels à son nombre de pièces", -- Midas' Touch
	-- English: "{{Petrify}} Touching enemies petrifies them and turns them gold#Isaac deals contact damage based on his coin count#{{Coin}} Killing a golden enemy spawns coins#Poop spawned by Isaac has a high chance to be golden poop"

	[C_ID .. 203] = "Toutes les ressources sont doublées si possible", -- Humbleing Bundle
	-- English: "Pickups spawned are doubled if possible"

	[C_ID .. 204] = "Subir un dégât a 50% de chances de faire apparaître une ressource", -- Fanny Pack
	-- English: "Taking damage has a 50% chance to spawn a random pickup"

	[C_ID .. 205] = "Inflige deux cœurs de dégâts à Isaac et recharge complètement l'objet activable#Ne fonctionne que si l'objet est entièrement déchargé", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of 2 hearts#Only works when the item has no charges"

	[C_ID .. 207] = "Obtenir plusieurs copies de cet objet l'améliore :#1: Orbite autour d'Isaac#2: Orbite autour d'Isaac et tire des larmes envoûtantes#3: Pourchasse les ennemis et inflige 7 dégâts de contact#4: Pourchasse les ennemis et inflige 11 dégâts de contact", -- Ball of Bandages
	-- English: "Lv1: Orbital#{{Charm}} Lv2: Orbital that shoots charmed tears#{{Charm}} Lv3: Bandage Girl#{{Charm}} Lv4: Super Bandage Girl"

	[C_ID .. 208] = "Augmente de 15% les chances de rencontrer des ennemis d'élite", -- Champion Belt
	-- Full old Desc: "↑ Dégâts {{ColorLime}}+1.0#Augmente de 15% les chances de rencontrer des ennemis d'élite"
	-- English: "Champion enemy chance goes from 5% to 20%#Doesn't increase chance of champion bosses"

	[C_ID .. 209] = "Les explosions des bombes d'Isaac étourdissent et infligent 10 dégâts à tous les ennemis de la salle", -- Butt Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombes#Les explosions des bombes d'Isaac étourdissent et infligent 10 dégâts à tous les ennemis de la salle"
	-- English: "{{Confusion}} Explosions concuss and damage every enemy in the room"

	[C_ID .. 210] = "N'appuyer sur aucun bouton pendant une seconde rend Isaac invulnérable#L'effet prend fin dès qu'Isaac fait une quelconque action", -- Gnawed Leaf
	-- English: "After 1 second of inactivity, Isaac becomes invincible"

	[C_ID .. 212] = "À sa mort, Isaac a 50% de chances d'être ressuscité", -- Guppy's Collar
	-- English: "50% chance to revive with half a heart on death"

	[C_ID .. 213] = "Les larmes d'Isaac bloquent et détruisent les projectiles ennemis", -- Lost Contact
	-- Full old Desc: "↓ Vitesse des tirs {{ColorError}}-0.15#Les larmes d'Isaac bloquent et détruisent les projectiles ennemis"
	-- English: "Isaac's tears destroy enemy shots"

	[C_ID .. 214] = "Subir un dégât répand une traînée de sang corrosif derrière Isaac pour la durée d'une salle", -- Anemic
	-- Full old Desc: "↑ Portée {{ColorLime}}+5#Subir un dégât répand une traînée de sang corrosif derrière Isaac pour la durée d'une salle"
	-- English: "{{Timer}} When taking damage Isaac leaves a trail of blood creep for the room#The creep deals 6 damage per second"

	[C_ID .. 218] = "Régénère parfois un demi-cœur rouge quand le minuteur finit par :00", -- Placenta
	-- Full old Desc: "{{Heart}} +1 réceptacle de cœur#Régénère parfois un demi-cœur rouge quand le minuteur finit par :00"
	-- English: "{{HealingRed}} 50% chance to heal half a heart every minute"

	[C_ID .. 220] = "Les bombes d'Isaac projettent 10 larmes en cercle autour d'elles en explosant", -- Sad Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombes#Les bombes d'Isaac projettent 10 larmes en cercle autour d'elles en explosant"
	-- English: "Isaac's bombs shoot 10 tears in a circle when they explode"

	[C_ID .. 221] = "Les larmes d'Isaac rebondissent sur les murs, les obstacles et les ennemis", -- Rubber Cement
	-- English: "Isaac's tears bounce off enemies and obstacles"

	[C_ID .. 222] = "Maintenir les boutons de tir fait flotter les larmes d'Isaac sur place#Relâcher les boutons de tir envoie toutes les larmes dans la direction où elles ont été tirées", -- Anti-Gravity
	-- Full old Desc: "↑ Débit {{ColorLime}}+2.0#Maintenir les boutons de tir fait flotter les larmes d'Isaac sur place#Relâcher les boutons de tir envoie toutes les larmes dans la direction où elles ont été tirées"
	-- English: "Holding the fire buttons causes tears to hover in midair#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "{{HealingRed}} Les explosions soignent un cœur rouge#Rend Isaac invulnérable aux explosions", -- Pyromaniac
	-- Full old Desc: "{{Bomb}} +5 Bombes#{{HealingRed}} Les explosions soignent un cœur rouge#Rend Isaac invulnérable aux explosions"
	-- English: "Immunity to explosions, rock waves, and stomp attacks#{{HealingRed}} Getting hit by explosions heals 1 heart"

	[C_ID .. 225] = "Subir un dégât a une chance de faire apparaître un cœur d'âme#Tuer un ennemi a une chance de faire apparaître un demi-cœur rouge#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à 20 Chance)", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a chance to spawn a Soul Heart#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 227] = "Subir un dégât fait apparaître 1 ou 2 pièces", -- Piggy Bank
	-- Full old Desc: "{{Coin}} +3 Pièces#Subir un dégât fait apparaître 1 ou 2 pièces"
	-- English: "{{Coin}} Taking damage spawns 1-2 coins"

	[C_ID .. 228] = "Isaac tire parfois une larme terrifiante", -- Mom's Perfume
	-- Full old Desc: "↑ Débit {{ColorLime}}+1.0#Isaac tire parfois une larme terrifiante#Les ennemis terrifiés fuient Isaac#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 85 Chance)"
	-- English: "{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 229] = "Remplace les larmes d'Isaac par une attaque chargée qui crache une gerbe de larmes", -- Monstro's Lung
	-- Full old Desc: "↓ Débit {{ColorError}}diminué#Remplace les larmes d'Isaac par une attaque chargée qui crache une gerbe de larmes"
	-- English: "{{Chargeable}} Tears are charged and released in a shotgun style attack"

	[C_ID .. 230] = "Isaac tire parfois une larme terrifiante", -- Abaddon
	-- Full old Desc: "↑ Dégâts {{ColorLime}}+1.5#↑ Vitesse {{ColorLime}}+0.2#{{BlackHeart}} +6 cœurs noirs#Retire tous les réceptacles de cœur#Isaac tire parfois une larme terrifiante#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 85 Chance)"
	-- English: "↓ {{EmptyHeart}} Removes all heart containers#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 231] = "{{LuckSmall}} Effet affecté par la statistique de chance", -- Ball of Tar
	-- Full old Desc: "Isaac répand une traînée de goudron ralentissante#Isaac tire parfois une larme ralentissante#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 18 Chance)"
	-- English: "{{Slow}} {VAR:LUCKCHANCE}% chance to shoot slowing tears#{{Slow}} Isaac leaves a trail of slowing creep"

	[C_ID .. 232] = "Ralentit tous les ennemis de la salle quand Isaac subit un dégât", -- Stop Watch
	-- Full old Desc: "↑ Vitesse {{ColorLime}}+0.3#Ralentit tous les ennemis de la salle quand Isaac subit un dégât"
	-- English: "{{Slow}} Taking damage slows all enemies in the room permanently"

	[C_ID .. 233] = "Larmes spectrales", -- Tiny Planet
	-- Full old Desc: "↑ Portée {{ColorLime}}+6.5#↑ Hauteur des larmes {{ColorLime}}+7.0#Larmes spectrales#Les larmes d'Isaac l'orbitent"
	-- English: "Isaac's tears orbit around him"

	[C_ID .. 234] = "Tuer un ennemi invoque une araignée bleue#Les ennemis tués par des araignées bleues n'invoquent pas d'araignées bleues", -- Infestation 2
	-- English: "Killing an enemy spawns a blue spider"

	[C_ID .. 236] = "Entrer en contact avec un ennemi le transforme en caca", -- E. Coli
	-- English: "Touching an enemy turns it into poop"

	[C_ID .. 238] = "{{AngelDevilChanceSmall}} Augmente les chances d'Angel Rooms {{AngelRoom}}", -- Key Piece 1
	-- Full old Desc: "Combiner ce morceau de clé avec l'autre {{Collectible239}} permet d'ouvrir la grande porte dorée dans {{ColorTransform}}Chest{{ColorWhite}} et {{ColorTransform}}Dark Room #Augmente la fréquence d'apparition des cœurs éternels#{{AngelDevilChanceSmall}} Augmente les chances d'Angel Rooms {{AngelRoom}}"
	-- English: "{{Warning}} Getting both parts of the key opens a big golden door#{{EternalHeart}} +2% chance for Eternal Hearts"

	[C_ID .. 239] = "{{AngelDevilChanceSmall}} Augmente les chances d'Angel Rooms {{AngelRoom}}", -- Key Piece 2
	-- Full old Desc: "Combiner ce morceau de clé avec l'autre {{Collectible238}} permet d'ouvrir la grande porte dorée dans {{ColorTransform}}Chest{{ColorWhite}} et {{ColorTransform}}Dark Room #Augmente la fréquence d'apparition des cœurs éternels#{{AngelDevilChanceSmall}} Augmente les chances d'Angel Rooms {{AngelRoom}}"
	-- English: "{{Warning}} Getting both parts of the key opens a big golden door#{{EternalHeart}} +2% chance for Eternal Hearts"

	[C_ID .. 241] = "{{ColorLime}}66%{{CR}} de chances de doubler une récompense de salle#{{ColorError}}33%{{ColorWhite}} de chances d'annuler une récompense de salle", -- Contract from Below
	-- English: "Doubles all room clear rewards#33% chance for no room clear reward"

	[C_ID .. 242] = "50% de chances de nullifier un dégât infligé à Isaac par un projectile", -- Infamy
	-- English: "50% chance to block enemy shots"

	[C_ID .. 243] = "Bloque les projectiles#S'oriente dans la direction où tire Isaac", -- Trinity Shield
	-- English: "Blocks enemy shots coming from the direction Isaac is shooting"

	[C_ID .. 244] = "Isaac tire parfois un laser en plus de ses larmes", -- Tech.5
	-- English: "Occasionally shoot lasers in addition to Isaac's tears"

	[C_ID .. 245] = "Double les larmes tirées par Isaac", -- 20/20
	-- English: "Isaac shoots 2 tears at once"

	[C_ID .. 246] = "Révèle l'emplacement des Secret Room {{SecretRoom}} et Super Secret Room {{SuperSecretRoom}} sur la carte", -- Blue Map
	-- English: "{{SecretRoom}} Reveals secret room locations on the map"

	[C_ID .. 247] = "Double les dégâts infligés par les familiers d'Isaac", -- BFFS!
	-- English: "Familiars deal double damage"

	[C_ID .. 248] = "Double les dégâts infligés par les mouches et araignées bleues", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage"

	[C_ID .. 249] = "Permet à Isaac de choisir entre 2 objets après avoir battu un boss", -- There's Options
	-- English: "Allows Isaac to choose between 2 items after beating a boss"

	[C_ID .. 250] = "Double toutes les bombes ramassables", -- Bogo Bombs
	-- English: "{{Bomb}} All bomb drops become double bombs"

	[C_ID .. 251] = "Transforme toutes les pilules en cartes", -- Starter Deck
	-- Full old Desc: "Permet à Isaac de porter deux cartes#Transforme toutes les pilules en cartes"
	-- English: "Isaac can carry 2 cards#Turns all pills into cards"

	[C_ID .. 252] = "Transforme toutes les cartes en pilules", -- Little Baggy
	-- Full old Desc: "Permet à Isaac de porter deux pilules#Transforme toutes les cartes en pilules"
	-- English: "Isaac can carry 2 pills#Turns all cards into pills"

	[C_ID .. 256] = "Les bombes d'Isaac allument une flamme à l'emplacement de l'explosion", -- Hot Bombs
	-- Full old Desc: "Les bombes d'Isaac infligent des dégâts de contact aux ennemis#Les bombes d'Isaac allument une flamme à l'emplacement de l'explosion#{{Bomb}} +5 Bombes"
	-- English: "{{Burning}} Isaac's bombs leave a flame where they explode"

	[C_ID .. 257] = "{{LuckSmall}} Effet affecté par la statistique de chance", -- Fire Mind
	-- Full old Desc: "Enflamme les ennemis touchés par les larmes d'Isaac#Les larmes d'Isaac explosent parfois au contact d'un ennemi#{{Warning}} Ces explosions peuvent infliger des dégâts à Isaac#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 13 Chance)"
	-- English: "{{Burning}} Isaac's tears light enemies on fire#{VAR:LUCKCHANCE}% chance for tears to explode on enemy impact#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 258] = "Rejoue tous les objets d'Isaac au changement d'étage", -- Missing No.
	-- English: "Rerolls all of Isaac's items and stats on pickup and at every new floor"

	[C_ID .. 260] = "{{BlackHeart}} +1 cœur noir", -- Black Candle
	-- Full old Desc: "{{BlackHeart}} +1 cœur noir#Empêche l'apparition de Curses#Annule l'effet de téléportation de {{ColorYellow}}Cursed Eye {{Collectible316}}"
	-- English: "{{CurseBlind}} Immune to curses"

	[C_ID .. 261] = "↓ Les dégâts des larmes diminuent progressivement avec la distance parcourue", -- Proptosis
	-- Full old Desc: "↑ Dégâts {{ColorLime}}+100%#↓ Les dégâts des larmes diminuent progressivement avec la distance parcourue"
	-- English: "↓ Tears deal less damage the further they travel"

	[C_ID .. 262] = "Active l'effet du {{ColorYellow}}Necronomicon{{ColorWhite}} {{Collectible35}} quand les PV d'Isaac sont réduits à 1 cœur", -- Missing Page 2
	-- Full old Desc: "{{BlackHeart}} +1 cœur noir#Active l'effet du {{ColorYellow}}Necronomicon{{ColorWhite}} {{Collectible35}} quand les PV d'Isaac sont réduits à 1 cœur"
	-- English: "Taking damage down to 1 heart damages all enemies in the room"

	[C_ID .. 264] = "{{DamageSmall}} 22.5 dégâts par seconde", -- Smart Fly
	-- Full old Desc: "Orbite autour d'Isaac et attaque les ennemis qui lui infligent des dégâts#{{DamageSmall}} 22.5 dégâts par seconde"
	-- English: "Attacks enemies when Isaac takes damage"

	[C_ID .. 265] = "10% de chances de déclencher l'effet du {{ColorYellow}}Necronomicon{{ColorWhite}} {{Collectible35}} s'il touche un projectile ennemi", -- Dry Baby
	-- English: "10% chance to damage all enemies in the room when it is hit by an enemy tear"

	[C_ID .. 266] = "Répand une traînée ralentissante derrière lui#Terminer une salle invoque 1 ou 2 araignées bleues", -- Juicy Sack
	-- English: "{{Slow}} Leaves slowing creep#Spawns 1-2 friendly spiders after clearing a room"

	[C_ID .. 267] = "Tire des lasers#{{DamageSmall}} 3.5 dégâts par laser", -- Robo-Baby 2.0
	-- Full old Desc: "Tire des lasers#Peut être déplacé avec les boutons de tir#{{DamageSmall}} 3.5 dégâts par laser"
	-- English: "Shoots lasers#Moves in the direction Isaac is shooting"

	[C_ID .. 268] = "Crache des mouches bleues quand Isaac tire", -- Rotten Baby
	-- English: "Spawns blue flies when Isaac shoots"

	[C_ID .. 269] = "Répand une traînée de sang corrosif derrière lui", -- Headless Baby
	-- English: "Leaves creep which deals 6 damage per second"

	[C_ID .. 270] = "Pourchasse les ennemis et leur inflige des dégâts de contact#{{HealingRed}} Soigne un demi-cœur rouge par ennemi qu'elle tue", -- Leech
	-- Full old Desc: "Pourchasse les ennemis et leur inflige des dégâts de contact#{{HealingRed}} Soigne un demi-cœur rouge par ennemi qu'elle tue#{{DamageSmall}} 3.2 dégâts par seconde"
	-- English: "Chases enemies#{{HealingRed}} Heals Isaac for half a heart when it kills an enemy"

	[C_ID .. 271] = "Fait apparaître une ressource toutes les 5 ou 6 salles", -- Mystery Sack
	-- English: "Spawns a random pickup every 5-6 rooms"

	[C_ID .. 272] = "Rebondit contre les murs de la salle et explose au contact d'un ennemi#{{Warning}} L'explosion peut infliger des dégâts à Isaac", -- BBF
	-- Full old Desc: "Rebondit contre les murs de la salle et explose au contact d'un ennemi#{{DamageSmall}} 60 dégâts par explosion#{{Warning}} L'explosion peut infliger des dégâts à Isaac"
	-- English: "Friendly exploding fly#The explosion deals {VAR:1} damage#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 273] = "Peut être projeté en tirant#Explose au contact d'un ennemi#{{Warning}} L'explosion peut infliger des dégâts à Isaac", -- Bob's Brain
	-- Full old Desc: "Peut être projeté en tirant#Explose au contact d'un ennemi#{{DamageSmall}} 60 dégâts par explosion#{{Warning}} L'explosion peut infliger des dégâts à Isaac"
	-- English: "Dashes in the direction Isaac is shooting#Explodes when it hits an enemy#{{Poison}} The explosion deals {VAR:1} damage and poisons enemies#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 274] = "Subir un dégât invoque une mouche qui orbite autour d'Isaac et inflige des dégâts de contact pour la durée d'une salle", -- Best Bud
	-- Full old Desc: "Subir un dégât invoque une mouche qui orbite autour d'Isaac et inflige des dégâts de contact pour la durée d'une salle#{{DamageSmall}} 75 dégâts par seconde"
	-- English: "Taking damage spawns one midrange orbital for the room"

	[C_ID .. 275] = "Tire des lasers de sang", -- Lil Brimstone
	-- Full old Desc: "Tire des lasers de sang#{{DamageSmall}} 31.5 dégâts par laser"
	-- English: "{{Chargeable}} Familiar that charges and shoots a {{Collectible118}} blood beam#It deals {VAR:1} damage over 0.63 seconds"

	[C_ID .. 276] = "Rend Isaac invulnérable et invoque un familier qui le suit#{{Warning}} Isaac subit un dégât si le familier touche un ennemi ou un projectile", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 277] = "Pourchasse, terrifie et inflige des dégâts aux ennemis", -- Lil Haunt
	-- Full old Desc: "Pourchasse, terrifie et inflige des dégâts aux ennemis#{{DamageSmall}} 4 dégâts par seconde"
	-- English: "{{Fear}} Chases and fears enemies"

	[C_ID .. 278] = "Ramasse les cœurs rouges au sol et convertit 1,5 cœurs rouges en 1 cœur d'âme ou une araignée", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#{{SoulHeart}} Spawns a Soul Heart or spider for every 1.5 Red Hearts picked up"

	[C_ID .. 279] = "Orbite autour d'Isaac, bloque les projectiles ennemis et inflige des dégâts de contact", -- Big Fan
	-- Full old Desc: "Orbite autour d'Isaac, bloque les projectiles ennemis et inflige des dégâts de contact#{{DamageSmall}} 30 dégâts par seconde"
	-- English: "Large orbital"

	[C_ID .. 280] = "Invoque des araignées bleues dans les salles hostiles", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms"

	[C_ID .. 281] = "Est pris pour cible par les ennemis s'il est plus près d'eux qu'Isaac#Les ennemis attaquent Théodule pendant 6 secondes toutes les 12 secondes", -- Punching Bag
	-- English: "Decoy familiar#Enemies target him instead of Isaac"

	[C_ID .. 282] = "Permet à Isaac de sauter par-dessus les obstacles et les précipices", -- How to Jump
	-- English: "Allows Isaac to jump over gaps and obstacles"

	[C_ID .. 283] = "Rejoue tous les objets sur piédestal, les ressources et les objets d'Isaac", -- D100
	-- English: "Reroll all pickups and pedestal items in the room, and all of Isaac's passive items"

	[C_ID .. 284] = "Rejoue tous les objets passifs d'Isaac", -- D4
	-- English: "Reroll all of Isaac's passive items"

	[C_ID .. 285] = "Rejoue tous les ennemis de la salle", -- D10
	-- English: "Reroll all enemies in the room"

	[C_ID .. 286] = "Déclenche l'effet de la carte portée par Isaac sans la consommer", -- Blank Card
	-- English: "Triggers the effect of the rune or card Isaac holds without using it"

	[C_ID .. 289] = "Lance une flamme rouge#La flamme disparaît après avoir infligé des dégâts ou bloqué des tirs 5 fois", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 5 times"

	[C_ID .. 290] = "Ramasser un cœur rouge quand tous les réceptacles de cœur d'Isaac sont pleins le met dans le bocal#Utiliser l'objet sort tous les cœurs rouges du bocal et les place sur le sol", -- The Jar
	-- English: "{{Heart}} Picking up Red Hearts while at full health stores up to 4 of them in the Jar#Using the item drops all stored hearts on the floor"

	[C_ID .. 291] = "Tue instantanément tous les ennemis et boss cacas#Transforme les ennemis en cacas", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses"

	[C_ID .. 293] = "Crache un laser de sang dans 4 directions", -- Head of Krampus
	-- Full old Desc: "Crache un laser de sang dans 4 directions#Les lasers ont 50% de chances de tourner pendant l'attaque"
	-- English: "{{Collectible118}} Shoot a 4-way blood beam#They each deal {VAR:1} damage over 1.33 seconds"

	[C_ID .. 294] = "Isaac pète et repousse les ennemis et les projectiles à proximité", -- Butter Bean
	-- Full old Desc: "Isaac pète et repousse les ennemis et les projectiles à proximité#10% de chances de devenir {{ColorYellow}}Wait What?{{ColorWhite}}{{Collectible484}} quand il est échangé avec un autre objet activable"
	-- English: "Knocks back nearby enemies and projectiles#10% chance to turn into the stronger {{NameC484}} when swapping it with a different active item and picking it up again"

	[C_ID .. 295] = "Inflige des dégâts à toute la salle#Retire 1 pièce à Isaac", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage to all enemies#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "Convertit 2 cœurs d'âme/noirs en un réceptacle de cœur rouge", -- Converter
	-- English: "{{Heart}} Converts 2 Soul/Black Hearts into 1 heart container"

	[C_ID .. 299] = "La vitesse d'Isaac augmente progressivement dans les salles hostiles#Quand sa vitesse atteint 2, Isaac devient invulnérable pendant 5 secondes", -- Taurus
	-- Full old Desc: "↓ Vitesse {{ColorError}}-0.3#La vitesse d'Isaac augmente progressivement dans les salles hostiles#Quand sa vitesse atteint 2, Isaac devient invulnérable pendant 5 secondes"
	-- English: "↑ {{Speed}} Slowly gain speed while in hostile rooms#At 2 speed, Isaac becomes invincible and deals contact damage#Afterwards, lose the Taurus speed boost for the room"

	[C_ID .. 300] = "Entrer en contact avec un ennemi lui inflige des dégâts", -- Aries
	-- Full old Desc: "↑ Vitesse {{ColorLime}}+0.25#Entrer en contact avec un ennemi lui inflige des dégâts"
	-- English: "Touching enemies deals contact damage"

	[C_ID .. 301] = "Subir un dégât réduit les futurs dégâts subis à un demi-cœur", -- Cancer
	-- Full old Desc: "{{SoulHeart}} +3 cœurs d'âme#Subir un dégât réduit les futurs dégâts subis à un demi-cœur#{{Timer}} L'effet dure une salle"
	-- English: "Taking damage reduces all future damage in the room to half a heart"

	[C_ID .. 302] = "Marcher sur les obstacles les détruit", -- Leo
	-- Full old Desc: "Taille augmentée#Marcher sur les obstacles les détruit"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 303] = "Les pilules ne peuvent plus avoir d'effets négatifs#Subir un dégât rend parfois Isaac invulnérable pendant 10 secondes#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 10 Chance)", -- Virgo
	-- English: "Taking damage can make Isaac temporarily invincible#{{Luck}} 100% chance at 10 luck#{{Pill}} Converts negative pills into positive ones"

	[C_ID .. 304] = "{{Key}} +6 Clés#{{Bomb}} +6 Bombes", -- Libra
	-- Full old Desc: "{{Coin}} +6 Pièces#{{Key}} +6 Clés#{{Bomb}} +6 Bombes#Équilibre les stats d'Isaac#Répartit les changements de stat entre toutes les stats"
	-- English: "Balances Isaac's stats#Future stat changes will be spread across all stats"

	[C_ID .. 308] = "Isaac répand une trainée de larmes derrière lui#La traînée de larmes inflige 6 dégâts de contact par seconde", -- Aquarius
	-- English: "Isaac leaves a trail of creep#The creep deals 6 damage per second"

	[C_ID .. 311] = "À sa mort, réincarne Isaac en {{ColorLightOrange}}Black Judas", -- Judas' Shadow
	-- English: "{{Player12}} When dead, respawn as Dark Judas with a x2 damage multiplier"

	[C_ID .. 313] = "Nullifie le premier dégât subi dans chaque salle", -- Holy Mantle
	-- English: "Negates the first hit taken once per room"

	[C_ID .. 314] = "Marcher sur les obstacles les détruit", -- Thunder Thighs
	-- Full old Desc: "{{Heart}} +1 réceptacle de cœur#Vitesse {{ColorError}}-0.4#Marcher sur les obstacles les détruit"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 315] = "Les larmes d'Isaac attirent les ennemis, ressources et trinkets", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets"

	[C_ID .. 316] = "L'attaque complètement chargée tire 4 larmes d'un coup, mais le chargement peut être interrompu pour en tirer moins", -- Cursed Eye
	-- Full old Desc: "Remplace les larmes d'Isaac par une attaque chargée#L'attaque complètement chargée tire 4 larmes d'un coup, mais le chargement peut être interrompu pour en tirer moins#{{Warning}} Subir un dégât pendant le chargement de l'attaque téléporte Isaac dans une salle aléatoire"
	-- English: "Charged wave of {VAR:1} tears#{{Warning}} Taking damage while partially charged teleports Isaac to a random room"

	[C_ID .. 317] = "Les larmes d'Isaac éclatent en une flaque toxique qui inflige des dégâts", -- Mysterious Liquid
	-- English: "Isaac's tears leave creep#The creep deals 30 damage per second"

	[C_ID .. 318] = "Est lié à Isaac", -- Gemini
	-- Full old Desc: "Est lié à Isaac#Attaque les ennemis qui s'approchent de lui#{{DamageSmall}} 6 dégâts par seconde"
	-- English: "Close combat familiar"

	[C_ID .. 319] = "Rebondit contre les murs de la salle#Tire dans la même direction qu'Isaac et inflige les mêmes dégâts que lui", -- Cain's Other Eye
	-- English: "Bounces around the room#Low accuracy tears that deal Isaac's damage"

	[C_ID .. 320] = "Inflige des dégâts de contact", -- ???'s Only Friend
	-- Full old Desc: "Inflige des dégâts de contact#Peut être déplacée avec les boutons de tir#{{DamageSmall}} 37.5 dégâts par seconde"
	-- English: "Controllable fly"

	[C_ID .. 321] = "Traîne derrière Isaac et détruit les rochers, bloque les projectiles et inflige des dégâts de contact", -- Samson's Chains
	-- Full old Desc: "Traîne derrière Isaac et détruit les rochers, bloque les projectiles et inflige des dégâts de contact#{{DamageSmall}} 10.7 dégâts par seconde"
	-- English: "Draggable ball that can destroy rocks"

	[C_ID .. 322] = "Imite les tirs d'un des familiers d'Isaac#Le familier imité change régulièrement", -- Mongo Baby
	-- English: "Mimics your baby familiars' tears#If you have none, shoots normal 3.5 damage tears"

	[C_ID .. 323] = "Projette 8 larmes en cercle autour d'Isaac#Chaque larme tirée par Isaac recharge une barre de l'objet", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects#Recharges by shooting tears"

	[C_ID .. 324] = "{{Blank}} Téléporte Isaac vers l'une de ces salles :#{{TreasureRoom}} Treasure Room#{{SecretRoom}} Secret Room#{{SuperSecretRoom}} Super Secret Room#I AM ERROR Room", -- Undefined
	-- English: "Teleports Isaac to the {{TreasureRoom}} Treasure, {{SecretRoom}} Secret, {{SuperSecretRoom}} Super Secret or {{ErrorRoom}} I AM ERROR Room"

	[C_ID .. 325] = "Sépare la tête d'Isaac de son corps#Le joueur contrôle le corps#La tête est immobile et tire en même temps que le corps#{{DamageSmall}} 3.5 dégâts par larme", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The head shoots 3.5 damage tears#The body is controlled separately and still shoots Isaac's tears"

	[C_ID .. 326] = "Maintenir le bouton d'utilisation vide progressivement la barre de charge#Quand elle est vide, Isaac devient invulnérable pour une seconde#{{Warning}} Rester appuyé plus d'une seconde après que la barre a été vidée inflige des dégâts à Isaac", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 327] = "Si Isaac subit un dégât alors qu'il n'a qu'un demi-cœur rouge ou moins, il devient invulnérable pour 5 secondes#Permet d'entrer dans le {{ColorTransform}}Chest", -- The Polaroid
	-- English: "Taking damage at half a Red Heart or none makes Isaac temporarily invincible"

	[C_ID .. 328] = "Si Isaac subit un dégât alors qu'il n'a qu'un demi-cœur rouge ou moins, inflige 40 dégâts à tous les ennemis de la salle#Permet d'entrer dans la {{ColorTransform}}Dark Room", -- The Negative
	-- English: "Taking damage at half a Red Heart or none damages all enemies in the room"

	[C_ID .. 329] = "Remplace les larmes d'Isaac par une grosse larme déplaçable avec les boutons de tir", -- The Ludovico Technique
	-- English: "Replaces Isaac's tears with one giant controllable tear"

	[C_ID .. 332] = "À sa mort, Isaac est réincarné en {{ColorLightOrange}}Lazarus Risen", -- Lazarus' Rags
	-- English: "{{Player11}} When dead, revive as Lazarus (Risen)"

	[C_ID .. 333] = "Révèle l'intégralité de l'étage sur la carte", -- The Mind
	-- English: "Full mapping effect"

	[C_ID .. 335] = "Entoure Isaac d'un halo qui dévie les ennemis et leurs projectiles", -- The Soul
	-- Full old Desc: "{{SoulHeart}} +2 cœurs d'âme#Entoure Isaac d'un halo qui dévie les ennemis et leurs projectiles"
	-- English: "Grants an aura that repels enemies and projectiles"

	[C_ID .. 337] = "Ralentit fortement les ennemis toutes les 4 salles#{{Warning}} Faible chance d'accélérer les ennemis au lieu de les ralentir", -- Broken Watch
	-- English: "{{Slow}} Slows down every 4th room#13% chance to speed up the room instead"

	[C_ID .. 338] = "Utiliser l'objet et appuyer sur un bouton de tir lance le boomerang#Le boomerang peut attraper des ressources et les ramener à Isaac#Toucher un ennemi avec le boomerang l'étourdit et lui inflige des dégâts", -- The Boomerang
	-- English: "Throwable boomerang#{{Petrify}} Petrifies enemies and deals 2x Isaac's damage#Can grab and bring back items"

	[C_ID .. 347] = "Duplique tous les objets et ressources de la salle", -- Diplopia
	-- English: "Duplicates all item pedestals and pickups in the room"

	[C_ID .. 348] = "Déclenche l'effet de la pilule portée par Isaac sans la consommer", -- Placebo
	-- English: "{{Pill}} Triggers the effect of the pill Isaac holds without using it"

	[C_ID .. 350] = "Entrer dans une salle empoisonne tous les ennemis#Les ennemis répandent une flaque toxique à leur mort", -- Toxic Shock
	-- English: "{{Poison}} Entering a room poisons all enemies#Enemies killed leave a puddle of creep#The creep deals 30 damage per second"

	[C_ID .. 351] = "Pétrifie tous les ennemis de la salle#Inflige des dégâts et empoisonne tous les ennemis à proximité#Envoie une vague de rochers dans une direction aléatoire", -- Mega Bean
	-- English: "{{Petrify}} Petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Sends a rock wave in the direction Isaac is moving#The rock wave can open secret rooms and break rocks"

	[C_ID .. 352] = "↓ Réduit les PV d'Isaac à un demi-cœur#Tire une énorme larme spectrale et transperçante qui inflige {{ColorLime}}dégâts x10 +10", -- Glass Cannon
	-- English: "{{Warning}} Firing the cannon reduces Isaac's health down to half a heart#Shoots a large piercing + spectral tear that does 10x Isaac's damage"

	[C_ID .. 353] = "Les bombes d'Isaac explosent en forme de croix", -- Bomber Boy
	-- Full old Desc: "{{Bomb}} +5 Bombes#Les bombes d'Isaac explosent en forme de croix"
	-- English: "Bombs explode in a cross-shaped pattern"

	[C_ID .. 356] = "Double toute utilisation d'un objet activable", -- Car Battery
	-- English: "{{Battery}} Using an active item triggers its effect twice"

	[C_ID .. 357] = "Invoque un double de chaque familier d'Isaac#{{Timer}} L'effet dure une salle", -- Box of Friends
	-- English: "{{Timer}} Duplicates all your familiars for the room#{{Collectible113}} Grants a Demon Baby for the room if Isaac has no familiars"

	[C_ID .. 358] = "Larmes spectrales", -- The Wiz
	-- Full old Desc: "Isaac tire 2 larmes en diagonale#Larmes spectrales"
	-- English: "Isaac shoots 2 tears at once diagonally"

	[C_ID .. 359] = "Augmente le recul infligé par les larmes d'Isaac", -- 8 Inch Nails
	-- Full old Desc: "↑ Dégâts {{ColorLime}}+1.5#Augmente le recul infligé par les larmes d'Isaac"
	-- English: "Increases knockback"

	[C_ID .. 360] = "Imite les stats et effets des larmes d'Isaac", -- Incubus
	-- English: "Shoots tears with the same tear rate, damage and effects as Isaac"

	[C_ID .. 361] = "Tire des larmes qui imitent les dégâts et les effets de celles d'Isaac avec un plus faible débit", -- Fate's Reward
	-- English: "Shoots tears with the same damage and effects as Isaac#Shoots at half the rate of other familiars"

	[C_ID .. 362] = "{{Blank}} Peut faire apparaître à la fin d'une salle :#Ressource {{ColorSilver}}(25%)#Trinket {{ColorSilver}}(10%)", -- Lil Chest
	-- English: "35% chance to spawn a pickup every room"

	[C_ID .. 363] = "{{DamageSmall}} 105 dégâts par seconde", -- Sworn Protector
	-- Full old Desc: "Orbite autour d'Isaac, attire et bloque les projectiles ennemis, et inflige des dégâts de contact#Fait parfois apparaître un cœur éternel s'il bloque 10 projectiles dans une salle#{{DamageSmall}} 105 dégâts par seconde"
	-- English: "Blocks and attracts enemy shots#{{EternalHeart}} Blocking 10 shots in one room spawns an Eternal Heart"

	[C_ID .. 364] = "Orbite autour d'Isaac et inflige des dégâts de contact", -- Friend Zone
	-- Full old Desc: "Orbite autour d'Isaac et inflige des dégâts de contact#{{DamageSmall}} 45 dégâts par seconde"
	-- English: "Midrange fly orbital"

	[C_ID .. 365] = "Longe les murs et les obstacles et inflige des dégâts de contact", -- Lost Fly
	-- Full old Desc: "Longe les murs et les obstacles et inflige des dégâts de contact#{{DamageSmall}} 105 dégâts par seconde"
	-- English: "Moves along walls/obstacles"

	[C_ID .. 367] = "Les bombes placées par Isaac collent aux ennemis#Les ennemis tués par des bombes invoquent 2 à 4 araignées bleues", -- Sticky Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombes#Les bombes placées par Isaac collent aux ennemis#Les ennemis tués par des bombes invoquent 2 à 4 araignées bleues"
	-- English: "Isaac's bombs stick to enemies#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "Tirer dans la même direction augmente progressivement le débit jusqu'à 200%", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually decreases tear delay up to 200% and decreases accuracy"

	[C_ID .. 371] = "Fait apparaître 6 Troll Bombs quand Isaac subit un dégât#Les Troll Bombs imitent les effets des bombes d'Isaac", -- Curse of the Tower
	-- English: "{{Warning}} Taking damage spawns 6 Troll Bombs#The Troll Bombs inherit Isaac's bomb effects"

	[C_ID .. 372] = "Peut parfois faire apparaître une pile, paralyser tous les ennemis de la salle ou ajouter une charge à l'objet activable", -- Charged Baby
	-- English: "Every 30 seconds while in an uncleared room, the familiar can:#{{Battery}} Spawn a Battery (max 2 per room)#{{Battery}} Add one charge to the active item (max 2 per room)#{{Petrify}} Petrify all enemies in the room"

	[C_ID .. 373] = "↑ Dégâts {{ColorLime}}+12.5%{{ColorWhite}} pour chaque larme consécutive qui touche un ennemi#Plafonne à {{ColorLime}}dégâts x2#Ne pas toucher d'ennemi avec une larme peut remettre le bonus à zéro", -- Dead Eye
	-- English: "↑ {{Damage}} Consecutive tear hits on enemies grant +25% damage (max +100%)#Missing has a chance to reset the multiplier"

	[C_ID .. 374] = "{{LuckSmall}} Effet affecté par la statistique de chance", -- Holy Light
	-- Full old Desc: "Isaac tire parfois une larme sacrée qui frappe l'ennemi touché d'un rayon de lumière#Le rayon inflige 400% des dégâts d'Isaac#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à 9 Chance)"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot holy tears, which spawn a beam of light on hit#{{Damage}} The beam deals 4x Isaac's damage"

	[C_ID .. 375] = "20% de chances de bloquer les projectiles ennemis#Rend Isaac invulnérable aux explosions#Rend Isaac invulnérable aux coups de pieds de {{ColorCyan}}Mom{{ColorWhite}} et {{ColorCyan}}Satan", -- Host Hat
	-- English: "Grants immunity to explosions, rock wave attacks and Mom and Satan's stomp attacks#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Fait apparaître 3 ressources", -- Restock
	-- Full old Desc: "Les objets et ressources achetés à la boutique sont réapprovisionnées après chaque achat, permettant d'en acheter plusieurs#Fait apparaître 3 ressources"
	-- English: "Buying an item from a Shop restocks it instantly"

	[C_ID .. 377] = "Les araignées ne prennent plus pour cible ni n'infligent de dégâts à Isaac", -- Bursting Sack
	-- English: "Spider enemies no longer target or deal contact damage to Isaac"

	[C_ID .. 378] = "Tirer pendant 3 secondes fait apparaître une bombe caca à la position d'Isaac", -- No. 2
	-- English: "Holding a fire button for 2.35 seconds spawns a lit Butt Bomb"

	[C_ID .. 380] = "Les portes qui doivent être ouvertes par une clé se déverrouillent avec une pièce", -- Pay To Play
	-- Full old Desc: "{{Coin}} +5 Pièces#Les portes qui doivent être ouvertes par une clé se déverrouillent avec une pièce"
	-- English: "{{Coin}} Single-key doors must be opened with coins instead of keys"

	[C_ID .. 381] = "Donne à Isaac un objet aléatoire au début de la prochaine partie", -- Eden's Blessing
	-- Full old Desc: "↑ Débit {{ColorLime}}+0.7#Donne à Isaac un objet aléatoire au début de la prochaine partie"
	-- English: "Grants a random item at the start of the next run"

	[C_ID .. 382] = "Jeter la boule sur un ennemi le capture#Lancer une boule qui contient un ennemi le fait sortir et se battre aux côtés d'Isaac", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns it as a friendly companion"

	[C_ID .. 383] = "Divise en 6 toutes les larmes d'Isaac à l'écran", -- Tear Detonator
	-- English: "Splits all of Isaac's tears currently on screen in a circle of 6 tears"

	[C_ID .. 384] = "Charge quand Isaac tire, puis se propulse à travers la salle et rebondit contre les murs quand les boutons de tirs sont relâchés", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-90 contact damage per second depending on speed"

	[C_ID .. 385] = "Ramasse les pièces au sol#Évolue et change de capacités après avoir ramassé assez de pièces#Peut faire apparaître une ressource pour chaque pièce ramassée", -- Bumbo
	-- English: "{{Coin}} Picks up nearby coins#Levels up after getting 6, 12, and 24 coins#Lv2: Chance to spawn item after room clears#Lv3: Shoots tears that can spawn coins on hit#Lv4: Chases enemies, occasionally dropping bombs, can spawn item on coin pickup"

	[C_ID .. 386] = "Rejoue tous les rochers de la salle", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)"

	[C_ID .. 387] = "Suit Isaac et ralentit les ennemis et projectiles qui entrent dans son aura", -- Censer
	-- English: "{{Slow}} Familiar surrounded by a huge aura of light that slows down enemies and projectiles in it"

	[C_ID .. 388] = "Ramasse les clés au sol et fait parfois apparaître un coffre en échange", -- Key Bum
	-- English: "{{Key}} Picks up nearby keys#{{Chest}} Spawns random chests in return"

	[C_ID .. 389] = "Fait apparaître une rune toutes les 5 ou 6 salles", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune every 5-6 rooms"

	[C_ID .. 390] = "Tire des larmes autoguidées", -- Seraphim
	-- Full old Desc: "Tire des larmes autoguidées#{{DamageSmall}} 10 dégâts par larme"
	-- English: "Shoots Sacred Heart tears"

	[C_ID .. 391] = "Subir un dégât envoûte tous les ennemis de la salle", -- Betrayal
	-- English: "{{Charm}} Taking damage charms all enemies in the room"

	[C_ID .. 392] = "Donne à Isaac l'effet d'un objet du zodiaque au hasard#L'effet accordé change à chaque étage", -- Zodiac
	-- English: "Grants a random zodiac item effect every floor"

	[C_ID .. 393] = "Les larmes ont une chance d'empoisonner les ennemis#Entrer en contact avec un ennemi l'empoisonne#Les ennemis qui meurent sous l'effet du poison ont 20% de chances de lâcher un cœur noir", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Poisoned enemies have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "Isaac tire automatiquement en direction d'une cible rouge  avec les boutons de tir", -- Marked
	-- Full old Desc: "↑ Débit {{ColorLime}}+0.7#↑ Hauteur des larmes {{ColorLime}}+0.3#↑ Portée {{ColorLime}}+3.15#Isaac tire automatiquement en direction d'une cible rouge  avec les boutons de tir"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground"

	[C_ID .. 395] = "Les larmes d'Isaac sont remplacées par des anneaux laser#La taille des anneaux augmente avec la durée de la charge", -- Tech X
	-- English: "{{Chargeable}} Isaac's tears are replaced by a chargeable laser ring#Ring size increases with charge amount"

	[C_ID .. 396] = "Utiliser l'objet place un trou orange ou bleu au sol#Si les deux sont posés, entrer dans l'un des trous téléporte Isaac à l'autre", -- Ventricle Razor
	-- English: "Creates up to two portals to travel between#Can be placed in different rooms"

	[C_ID .. 397] = "Les larmes d'Isaac volent en ligne droite en suivant un rayon de lumière", -- Tractor Beam
	-- Full old Desc: "↑ Hauteur des larmes {{ColorLime}}+0.5#↑ Débit {{ColorLime}}+0.5#↑ Portée {{ColorLime}}+5.25#↑ Vitesse des tirs {{ColorLime}}+0.16#Les larmes d'Isaac volent en ligne droite en suivant un rayon de lumière#Se déplacer sur les côtés déplace également les larmes"
	-- English: "Isaac's tears always travel along a beam of light in front of him"

	[C_ID .. 398] = "Isaac tire parfois une larme rétrécissante#Marcher sur un ennemi rétréci le tue#Les ennemis retrouvent leur taille après 5 secondes", -- God's Flesh
	-- English: "{{Shrink}} Tears can shrink enemies#Shrunken enemies can be crushed and killed by walking over them"

	[C_ID .. 399] = "Les ennemis tués avec le halo noir ont une chance de lâcher un cœur noir", -- Maw of the Void
	-- Full old Desc: "↑ Dégâts {{ColorLime}}+1.0#Tirer pendant 3 secondes fait apparaître une croix rouge sur la tête d'Isaac#Relâcher les boutons de tir crée un anneau noir autour de lui qui inflige des dégâts de contact#Les ennemis tués avec le halo noir ont une chance de lâcher un cœur noir"
	-- English: "{{Chargeable}} Shooting tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the black ring have a 5% chance to drop a Black Heart"

	[C_ID .. 400] = "Isaac brandit devant lui une lance qui inflige des dégâts et terrifie parfois les ennemis au contact#La lance ne remplace pas les larmes d'Isaac", -- Spear of Destiny
	-- English: "Isaac holds a spear in front of him#{{Fear}} The spear deals twice his damage and can fear enemies on contact"

	[C_ID .. 401] = "25% de chances de tirer une larme collante#Les larmes collantes s'attachent aux ennemis et explosent après quelques secondes", -- Explosivo
	-- English: "25% chance to shoot sticky bomb tears#Sticky bomb tears do not deal damage on hit and explode after a few seconds"

	[C_ID .. 402] = "Tous les futurs objets proviendront d'une banque d'objet aléatoire au lieu de celle de la salle où ils sont générés", -- Chaos
	-- Full old Desc: "Tous les futurs objets proviendront d'une banque d'objet aléatoire au lieu de celle de la salle où ils sont générés#Fait apparaître 1 à 6 ressources"
	-- English: "All items are chosen from random item pools"

	[C_ID .. 403] = "Affiche les PV des ennemis#Inflige un effet aléatoire aux ennemis qui entrent en contact avec elle#Fait parfois apparaître une pile", -- Spider Mod
	-- English: "Displays tear damage and health bars of all enemies#Inflicts random status effects to enemies on contact#Randomly spawns batteries"

	[C_ID .. 404] = "Pète et envoûte, empoisonne ou repousse les ennemis lorsqu'il est touché par un de leurs projectile", -- Farting Baby
	-- Full old Desc: "Bloque les projectiles ennemis#Pète et envoûte, empoisonne ou repousse les ennemis lorsqu'il est touché par un de leurs projectile"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies"

	[C_ID .. 405] = "Rebondit contre les murs de la salle", -- GB Bug
	-- Full old Desc: "Rebondit contre les murs de la salle#Inflige des dégâts et un effet aléatoire aux ennemis avec lesquels il entre en contact#Rejoue parfois les ressources avec lesquelles il entre en contact#{{DamageSmall}} 120 dégâts par seconde"
	-- English: "Bounces around the room#Applies random status effects to enemies on contact"

	[C_ID .. 406] = "Rejoue les stats de dégâts, débit, portée et vitesse d'Isaac", -- D8
	-- English: "Multiplies Isaac's damage, tears, range and speed stats by between x0.5 and x2#The multipliers are rerolled each use"

	[C_ID .. 407] = "{{Blank}} Entoure Isaac d'une aura :#{{Blank}} {{ColorRed}}Rouge{{ColorWhite}} = Dégâts {{ColorLime}}+4.0#{{Blank}} {{ColorCyan}}Bleu{{ColorWhite}} = Débit {{ColorLime}}+4.0#{{Blank}} {{ColorYellow}}Jaune{{ColorWhite}} = Vitesse {{ColorLime}}+0.5#{{Blank}} {{ColorOrange}}Orange{{ColorWhite}} = Portée {{ColorLime}}+7.5#Subir un dégât fait disparaître l'effet pour la durée d'une salle", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and gives Isaac a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} -4 Tear delay#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +7.5 Range, ↑ +1 Tear height"

	[C_ID .. 408] = "Subir un dégât entoure Isaac d'un anneau noir qui inflige des dégâts de contact aux ennemis#Les ennemis tués par le halo noir ont une chance de lâcher un cœur noir", -- Athame
	-- English: "Taking damage creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the ring have a 15% chance to drop a Black Heart"

	[C_ID .. 409] = "Quand Isaac n'a pas de cœurs rouges, il devient brièvement invulnérable toutes les 40 secondes et peut voler", -- Empty Vessel
	-- Full old Desc: "{{BlackHeart}} +2 cœurs noirs#Quand Isaac n'a pas de cœurs rouges, il devient brièvement invulnérable toutes les 40 secondes et peut voler"
	-- English: "{{EmptyHeart}} When Isaac has no Red Hearts:#Flight#Every 40 seconds while in a hostile room, gain a shield for 10 seconds"

	[C_ID .. 410] = "{{LuckSmall}} Effet affecté par la statistique de chance", -- Evil Eye
	-- Full old Desc: "Isaac tire parfois un œil qui se déplace lentement en ligne droite#L'œil tire des larmes identiques à celles d'Isaac#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(10% à 20 Chance)"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot an eye#The eye moves in a straight line and shoots tears in the same direction as Isaac"

	[C_ID .. 411] = "↑ Dégâts {{ColorLime}}+0.5{{ColorWhite}} pour chaque ennemi tué dans une salle#Plafonne à {{ColorLime}}dégâts +5 {{ColorSilver}}(10 ennemis tués)#Le bonus persiste pour la durée d'une salle", -- Lusty Blood
	-- English: "↑ {{Damage}} +0.5 Damage for each enemy killed in the room#Caps at +5 Damage after 10 kills"

	[C_ID .. 412] = "Subir suffisamment de dégâts invoque un familier démoniaque permanent#Peut invoquer jusqu'à 4 familiers {{ColorSilver}}(90 dégâts subis)", -- Cambion Conception
	-- English: "Taking damage 15 times spawns a permanent demon familiar#After two familiars, it takes 30 instead of 15#Caps at 4 familiars"

	[C_ID .. 413] = "Ramasser 15 cœurs invoque un familier angélique permanent#Peut invoquer jusqu'à 5 familiers", -- Immaculate Conception
	-- English: "Picking up 15 hearts spawns a permanent angelic familiar#Caps at 5 familiars#{{SoulHeart}} If all familiars have been granted, spawns a Soul Heart instead"

	[C_ID .. 414] = "Permet à Isaac de choisir entre deux objets dans les Treasure Rooms", -- More Options
	-- English: "{{TreasureRoom}} Allows Isaac to choose between 2 items in treasure rooms"

	[C_ID .. 415] = "↑ Dégâts {{ColorLime}}+100%#{VAR:EFFECTLIST}", -- Crown Of Light
	-- Full old Desc: "{{SoulHeart}} +2 Cœurs d'âme#↑ Dégâts {{ColorLime}}+100%#↑ Portée {{ColorLime}}+5.25#↑ Vitesse des tirs {{ColorError}}-0.3#Subir un dégât désactive ces effets pour la durée d'une salle#Les effets restent désactivés tant que tous les réceptacles de cœurs d'Isaac ne sont pas remplis"
	-- English: "If Isaac has no damaged heart containers:#{VAR:EFFECTLIST}#Taking any damage removes the effect for the room"

	[C_ID .. 416] = "Permet à Isaac de porter 2 cartes, pilules ou runes", -- Deep Pockets
	-- English: "Allows Isaac to carry two runes/cards/pills"

	[C_ID .. 417] = "Rebondit à travers la salle entourée d'une aura qui donne {{ColorLime}}Dégâts +50%{{ColorWhite}} à Isaac et inflige des dégâts aux ennemis", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 1.29x Isaac's damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 418] = "Donne à chaque larme d'Isaac un effet aléatoire", -- Fruit Cake
	-- English: "Each one of Isaac's tears gets a different effect"

	[C_ID .. 419] = "Téléporte Isaac dans une salle inexplorée", -- Teleport 2.0
	-- Full old Desc: "Téléporte Isaac dans une salle inexplorée#{{Blank}} Ordre de téléportation#{{Blank}} {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>#{{Blank}} {{SacrificeRoom}}>{{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>#{{Blank}} {{ChallengeRoom}}>{{IsaacsRoom}}>{{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>#{{Blank}}#{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"
	-- English: "Teleports Isaac to a room that has not been cleared yet#Hierarchy: {VAR:TEXT}"

	[C_ID .. 420] = "Dessiner un cercle en marchant crée un pentagramme sur le sol#Le pentagramme inflige des dégâts aux ennemis qui marchent dessus", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds"

	[C_ID .. 421] = "Isaac pète, envoûte et inflige 5 dégâts aux ennemis à proximité", -- Kidney Bean
	-- English: "{{Charm}} Charms and deals 5 damage to all enemies in close range"

	[C_ID .. 422] = "Remonte le temps et ramène Isaac dans la salle précédente#Annule toutes les actions faites, les dégâts subis, les ressources ramassées dans la salle où l'objet a été utilisé", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in"

	[C_ID .. 423] = "Entoure Isaac d'un halo de lumière qui inflige des dégâts de contact et peut renvoyer les projectiles ennemis", -- Circle of Protection
	-- English: "Surrounds Isaac with a large halo that deals his damage on contact per second#Chance to reflect enemy projectiles"

	[C_ID .. 424] = "10% de chances de convertir les pièces en sachet#20% de chances de convertir les autres ressources en sachet#Fait apparaître un sachet", -- Sack Head
	-- English: "Pickups have a chance to be replaced with a {{GrabBag}}sack:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Spawns a sack"

	[C_ID .. 425] = "Éclaire dans la direction des mouvements d'Isaac#Ralentit les ennemis et projectiles pris dans le rayon de lumière", -- Night Light
	-- English: "{{Slow}} Spawns a slowing cone of light in front of Isaac"

	[C_ID .. 427] = "Place un baril de TNT qui peut être déplacé#Utiliser l'objet une seconde fois fait exploser le baril à distance", -- Mine Crafter
	-- English: "Spawns a pushable TNT barrel#Using the item a second time in the same room remotely detonates the barrel"

	[C_ID .. 429] = "Toucher un ennemi avec une larme a 5% de chances de faire apparaître une pièce", -- Head of the Keeper
	-- English: "{{Coin}} Hitting an enemy with a tear has a 5% chance to spawn a Penny"

	[C_ID .. 430] = "Tire des larmes qui infligent les dégâts d'Isaac sur les ennemis à proximité", -- Papa Fly
	-- Full old Desc: "Suit Isaac avec un délai#Tire des larmes qui infligent les dégâts d'Isaac sur les ennemis à proximité"
	-- English: "{{Damage}} Shoots tears at nearby enemies that deal Isaac's damage"

	[C_ID .. 431] = "Duplique et accélère les larmes d'Isaac qui le traversent", -- Multidimensional Baby
	-- Full old Desc: "Suit Isaac avec un délai#Duplique et accélère les larmes d'Isaac qui le traversent"
	-- English: "Tears that pass through it are doubled and gain a range + shot speed boost"

	[C_ID .. 432] = "Les bombes d'Isaac font parfois apparaître des ressources en explosant", -- Glitter Bombs
	-- Full old Desc: "{{Bomb}} +5 bombes#Les bombes d'Isaac font parfois apparaître des ressources en explosant"
	-- English: "{{Charm}} Isaac's bombs have a 25% chance to drop a random pickup and a 15% chance to charm enemies when they explode"

	[C_ID .. 433] = "Subir un dégât terrifie tous les ennemis de la salle et invoque une sangsue amicale", -- My Shadow
	-- Full old Desc: "Subir un dégât terrifie tous les ennemis de la salle et invoque une sangsue amicale#La sangsue inflige 5 dégâts de contact par seconde#La sangsue meurt si elle subit trop de dégâts"
	-- English: "{{Fear}} Taking damage fears all enemies in the room and spawns a friendly black charger"

	[C_ID .. 434] = "Tuer un ennemi ajoute une mouche bleue au bocal#Le bocal peut contenir jusqu'à 20 mouches#Utiliser l'objet libère autant de mouches bleues qu'indiqué sur le bocal", -- Jar of Flies
	-- English: "Killing an enemy adds a blue fly to the jar, up to 20 flies#Using the item releases all the flies"

	[C_ID .. 435] = "Tire dans les 4 directions", -- Lil Loki
	-- Full old Desc: "Tire dans les 4 directions#{{DamageSmall}} 3.5 dégâts par larme"
	-- English: "Shoots 4 tears in a cross pattern"

	[C_ID .. 436] = "Subir un dégât donne {{ColorLime}}débit +2{{ColorWhite}} pour une salle", -- Milk!
	-- English: "{{Tears}} Taking damage grants a Tears up for the duration of the room"

	[C_ID .. 437] = "Fait rapparaître tous les ennemis de la salle et ferme les portes#Éliminer les ennemis fera apparaître la récompense de la salle à nouveau", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room#If used after a Greed fight, rerolls the room into a normal Shop/Secret Room"

	[C_ID .. 440] = "Change régulièrement les larmes d'Isaac en une attaque chargée", -- Kidney Stone
	-- Full old Desc: "↓ Vitesse {{ColorError}}-0.2#↓ Portée {{ColorError}}-15#↑ Hauteur des larmes {{ColorLime}}+2.0#Change régulièrement les larmes d'Isaac en une attaque chargée#Relâcher le bouton de tir quand l'attaque est chargée crache un gros caillot suivi d'une gerbe de tirs rapides"
	-- English: "Isaac occasionally stops firing and charges an attack that releases a burst of tears and a kidney stone"

	[C_ID .. 441] = "Tire un énorme laser de sang pendant 15 secondes#Le laser persiste entre les salles et les étages", -- Mega Blast
	-- English: "{{Timer}} Fires a huge Mega Satan blood beam for 15 seconds#The beam persists between rooms and floors"

	[C_ID .. 442] = "{{Warning}}Avoir précisément 1 cœur rouge rempli donne :#{VAR:EFFECTLIST}", -- Dark Prince's Crown
	-- Full old Desc: "{{Warning}}Avoir précisément 1 cœur rouge rempli donne :#↑ Portée {{ColorLime}}+1.5#↑ Débit {{ColorLime}}+0.75#↑ Vitesse des tirs {{ColorLime}}+0.2"
	-- English: "While at 1 full Red Heart:#{VAR:EFFECTLIST}"

	[C_ID .. 444] = "Toutes les 15 larmes tirées, Isaac crache une gerbe de larmes#La gerbe inflige {{ColorLime}}dégâts x2", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears#Tears in the cluster deal double damage"

	[C_ID .. 445] = "Un aboiement retentit dans les salles où un rocher cache une trappe vers un Crawl Space {{LadderRoom}}", -- Dog Tooth
	-- Full old Desc: "↑ Dégâts {{ColorLime}}+0.3#↑ Vitesse {{ColorLime}}+0.1#Un hurlement de chien retentit dans les salles voisines aux Secret {{SecretRoom}} et Super Secret rooms {{SuperSecretRoom}}#Un aboiement retentit dans les salles où un rocher cache une trappe vers un Crawl Space {{LadderRoom}}"
	-- English: "{{SecretRoom}}{{SuperSecretRoom}} A wolf howls in rooms adjacent to a Secret/Super Secret Room#{{LadderRoom}} A dog barks in rooms with a crawlspace under a rock"

	[C_ID .. 446] = "Tirer entoure Isaac d'une aura qui empoisonne les ennemis qui y entrent", -- Dead Tooth
	-- English: "{{Poison}} While firing, Isaac is surrounded by a green aura that poisons enemies"

	[C_ID .. 447] = "Tirer pendant 7.5 secondes crée un nuage qui inflige des dégâts de contact aux ennemis", -- Linger Bean
	-- English: "Firing without pause for 7.5 seconds spawns a poop cloud#The cloud deals Isaac's damage 5 times a second#The cloud lasts 15 seconds and can be moved by shooting it"

	[C_ID .. 448] = "{{Blank}} Subir des dégâts peut :#Faire apparaître un cœur rouge {{ColorSilver}}(25%)#Donner l'effet d'{{ColorYellow}}Anemic{{ColorWhite}}{{Collectible214}} {{ColorSilver}}(10%)", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{Collectible214}} 10% chance to get ↑ {{Range}} +5 Range and leave a trail of blood creep for the room"

	[C_ID .. 449] = "25% de chances de renvoyer un projectile ennemi", -- Metal Plate
	-- Full old Desc: "{{SoulHeart}} +1 cœur d'âme#25% de chances de renvoyer un projectile ennemi"
	-- English: "{{Confusion}} Enemy bullets have a 25% chance to be reflected as concussive tears"

	[C_ID .. 450] = "Toutes les 20 larmes, Isaac tire une larme en forme de pièce qui transforme les ennemis en statues d'or#Tuer un ennemi doré fait apparaître 1 à 4 pièces#Tirer une larme en forme de pièce retire 1 pièce à Isaac", -- Eye of Greed
	-- English: "Every 20 tears, Isaac shoots a coin tear that deals double damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-4 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "Double les effets des cartes et des runes", -- Tarot Cloth
	-- Full old Desc: "Fait apparaître une carte ou une rune#Double les effets des cartes et des runes"
	-- English: "{{Card}} Card effects are doubled or enhanced"

	[C_ID .. 452] = "Subir un dégât projette 10 larmes en cercle autour d'Isaac", -- Varicose Veins
	-- English: "Taking damage shoots 10 tears in a circle around Isaac#The tears deal Isaac's damage + 25"

	[C_ID .. 453] = "Les os se brisent en 1 à 3 morceaux au contact d'un objet, d'un ennemi ou d'un mur", -- Compound Fracture
	-- Full old Desc: "↑ Portée +1.5#Remplace les larmes d'Isaac par des os#Les os se brisent en 1 à 3 morceaux au contact d'un objet, d'un ennemi ou d'un mur"
	-- English: "Tears shatter into 1-3 small bone shards upon hitting anything"

	[C_ID .. 454] = "Permet à Isaac de porter deux cartes, runes ou pilules#Fait apparaître une carte, rune ou pilule", -- Polydactyly
	-- English: "Spawns a {{Rune}} rune, {{Card}} card or {{Pill}} pill on pickup#Allows Isaac to carry 2 runes/cards/pills"

	[C_ID .. 457] = "20% de chances de nullifier un dégât subi", -- Cone Head
	-- Full old Desc: "{{SoulHeart}} +1 cœur d'âme#20% de chances de nullifier un dégât subi"
	-- English: "20% chance to negate damage taken"

	[C_ID .. 458] = "Permet à Isaac de porter deux trinkets", -- Belly Button
	-- Full old Desc: "Permet à Isaac de porter deux trinkets#Fait apparaître un trinket"
	-- English: "{{Trinket}} Allows Isaac to carry 2 trinkets"

	[C_ID .. 459] = "20% de chances de tirer une crotte de nez qui se colle aux ennemis et inflige des dégâts une fois par seconde", -- Sinus Infection
	-- Full old Desc: "20% de chances de tirer une crotte de nez qui se colle aux ennemis et inflige des dégâts une fois par seconde"
	-- English: "20% chance to shoot a sticky booger#{{Damage}} Boogers deal Isaac's damage once a second and stick for {VAR:1} seconds#{{Luck}} Not affected by luck"

	[C_ID .. 460] = "Isaac tire parfois une larme étourdissante#L'effet infligé aux ennemis par ces larmes est permanent#L'effet infligé aux boss est long mais temporaire", -- Glaucoma
	-- English: "{{Confusion}} 5% chance to shoot concussive tears#Makes the screen slightly darker"

	[C_ID .. 461] = "{{LuckSmall}} Effet affecté par la statistique de chance", -- Parasitoid
	-- Full old Desc: "Isaac tire parfois un cocon#Toucher un ennemi avec un cocon invoque 1 ou 2 mouches ou araignées bleues et répand une flaque ralentissante#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à 5 Chance)"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot egg sacks#{{Slow}} Egg sacks spawn slowing creep and a blue spider or fly on hit"

	[C_ID .. 463] = "Isaac tire parfois des larmes corrosives", -- Sulfuric Acid
	-- Full old Desc: "↑ Dégâts {{ColorLime}}+0.3#Isaac tire parfois des larmes corrosives#Les larmes corrosives détruisent les obstacles, les portes et les entrées des Secret Rooms {{SecretRoom}} et Super Secret Rooms {{SuperSecretRoom}}"
	-- English: "Isaac's tears can destroy rocks and open doors"

	[C_ID .. 464] = "Change les ressources lâchées par les ennemis d'élite selon ce qui manque à Isaac", -- Glyph of Balance
	-- Full old Desc: "{{SoulHeart}} +2 cœurs d'âme#Change les ressources lâchées par les ennemis d'élite selon ce qui manque à Isaac"
	-- English: "Champion enemies drop whatever pickup Isaac needs the most"

	[C_ID .. 465] = "Permet à Isaac de tirer en diagonale {{ColorSilver}}(Clavier/boutons)", -- Analog Stick
	-- Full old Desc: "↑ Débit {{ColorLime}}+0.35#Permet à Isaac de tirer en diagonale {{ColorSilver}}(Clavier/boutons)#Permet à Isaac de tirer dans n'importe quelle direction {{ColorSilver}}(Joystick)"
	-- English: "Allows Isaac to shoot tears in any direction"

	[C_ID .. 466] = "Le premier ennemi tué dans une salle explose et empoisonne les ennemis à proximité#Les ennemis tués par le poison explosent à leur tour", -- Contagion
	-- English: "{{Poison}} The first enemy killed in a room explodes and poisons all nearby enemies#Enemies that die while poisoned also explode and poison nearby enemies"

	[C_ID .. 467] = "Inflige des dégâts aux ennemis qu'il vise#Peut éteindre les feux et détruire les cacas#{{DamageSmall}} Inflige 10% des dégâts d'Isaac", -- Finger!
	-- English: "{{Damage}} Constantly deals 10% of Isaac's damage in the direction it points"

	[C_ID .. 469] = "Suit Isaac et répand une traînée d'eau qui inflige des dégâts de contact#Les ennemis qui entrent en contact avec le nuage sont parfois frappés par un rayon de lumière", -- Depression
	-- English: "Leaves a trail of creep#The creep deals 6 damage per second#Enemies that touch the cloud can be hit by a holy light beam"

	[C_ID .. 470] = "Rebondit contre les murs de la salle et inflige des dégâts de contact#{{DamageSmall}} 30 dégâts par seconde", -- Hushy
	-- Full old Desc: "Rebondit contre les murs de la salle et inflige des dégâts de contact#Tirer l'immobilise#{{DamageSmall}} 30 dégâts par seconde"
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped"

	[C_ID .. 471] = "{{DamageSmall}} 3.5 dégâts par larme", -- Lil Monstro
	-- Full old Desc: "Charge et crache une gerbe de larmes#{{DamageSmall}} 3.5 dégâts par larme"
	-- English: "{{Chargeable}} Charges a shotgun attack similar to {{NameC229}}#Each tear deals 3.5 damage"

	[C_ID .. 472] = "Tirer immobilise tous les familiers#Arrêter de tirer téléporte les familiers à Isaac", -- King Baby
	-- English: "Other familiars follow it#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 473] = "Se déplace lentement dans la direction des tirs d'Isaac", -- Big Chubby
	-- Full old Desc: "Se déplace lentement dans la direction des tirs d'Isaac#Bloque les projectiles ennemis et inflige des dégâts de contact#{{DamageSmall}} 40.5 dégâts par seconde"
	-- English: "Very slowly charges forwards"

	[C_ID .. 476] = "Duplique une ressource aléatoire dans la salle", -- D1
	-- English: "Duplicates a random pickup in the room"

	[C_ID .. 477] = "Absorbe tous les objets sur piédestal de la salle#Objets actifs :#{{Blank}} Les prochaines utilisations de Void activeront l'effet de tous les objets absorbés#Objets passifs :#{{Blank}} Augmente 2 stats aléatoires", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate, and will activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 478] = "Immobilise tous les ennemis de la salle#Les ennemis immobilisés peuvent infliger des dégâts de contact à Isaac#{{Timer}}L'effet prend fin si Isaac tire", -- Pause
	-- English: "Pauses all enemies in the room until Isaac shoots#Touching a paused enemy still deals damage to Isaac#Enemies unpause after 30 seconds"

	[C_ID .. 479] = "Absorbe le trinket porté par Isaac et active son effet de manière permanente", -- Smelter
	-- English: "{{Trinket}} Consumes Isaac's held trinkets and grants their effects permanently#Increases the spawn rate of trinkets"

	[C_ID .. 480] = "Convertit toutes les ressources dans la salle en mouches ou araignées bleues#Double les mouches et araignées bleues déjà présentes", -- Compost
	-- English: "Converts pickups into blue flies or spiders#Doubles all blue flies and spiders#Spawns 1 blue fly or spider if Isaac has none"

	[C_ID .. 481] = "Déforme visuellement les éléments de la salle", -- Dataminer
	-- Full old Desc: "↑ Augmente une stat#↓ Diminue une stat#Donne aux larmes d'Isaac des effets aléatoires#Déforme visuellement les éléments de la salle#{{Timer}} L'effet dure une salle"
	-- English: "{{Timer}} Random tear effects for the room#{{Blank}} Corrupts all sprites and music in the room"

	[C_ID .. 482] = "Transforme le personnage actuel en un autre personnage au hasard#Retire de l'inventaire du personnage le dernier objet passif obtenu", -- Clicker
	-- English: "Changes your character to a random character#Removes the most recent item collected"

	[C_ID .. 483] = "Ravage toutes les salles inexplorées de l'étage d'une énorme explosion#Si Isaac possède une bombe dorée, utiliser Mama Méga la consomme et permet à l'objet d'être utilisé une seconde fois#{VAR:EFFECTLIST}", -- Mama Mega!
	-- Full old Desc: "Ravage toutes les salles inexplorées de l'étage d'une énorme explosion#Si Isaac possède une bombe dorée, utiliser Mama Méga la consomme et permet à l'objet d'être utilisé une seconde fois"
	-- English: "Affects the whole floor#Explodes all objects#{VAR:EFFECTLIST}#Opens secret rooms#Opens Boss Rush and Hush regardless of time"

	[C_ID .. 484] = "Isaac pète, repousse les ennemis et provoque une vague de rochers", -- Wait What?
	-- English: "Upon use, pushes enemies away and spawns a rock wave around Isaac#The rock wave can open rooms and break rocks"

	[C_ID .. 485] = "{{ColorLime}}50%{{ColorWhite}} de chances de dupliquer toutes les ressources et objets de la salle#{{ColorError}}50%{{ColorWhite}} de chances de remplacer toutes les ressources et objets de la salle par une pièce", -- Crooked Penny
	-- English: "50% chance to double all items, pickups and chests in room#50% chance to remove items / pickups in room and spawn 1 coin"

	[C_ID .. 486] = "Inflige un dégât factice à Isaac qui ne retire pas de points de vie#Déclenche les effets qui s'activent quand Isaac subit des dégâts", -- Dull Razor
	-- English: "Hurts Isaac without removing health#Triggers any on-hit item effects"

	[C_ID .. 488] = "Active l'effet d'un objet activable ou passif aléatoire#{{Timer}} L'effet dure une salle", -- Metronome
	-- English: "Grants a random item effect for the room"

	[C_ID .. 489] = "Active l'effet d'un dé aléatoire", -- D Infinity
	-- English: "Triggers a random dice effect each use"

	[C_ID .. 490] = "Fait apparaître deux objets#Les objets proviennent de la banque d'objets de la salle où se trouve Isaac", -- Eden's Soul
	-- English: "Spawns 2 random items depending on the current room's item pool#Starts with no charges"

	[C_ID .. 491] = "Avaler une pilule empoisonne tous les ennemis de la salle", -- Acid Baby
	-- Full old Desc: "Fait apparaître une pilule toutes les 3 salles#Avaler une pilule empoisonne tous les ennemis de la salle"
	-- English: "{{Pill}} Spawns a random pill every {VAR:1} rooms#{{Poison}} Using a pill poisons all enemies in the room"

	[C_ID .. 492] = "Révèle la position des rochers marqués, des entrées de Crawl Spaces {{LadderRoom}}, des Secret Rooms {{SecretRoom}} et des Super Secret Rooms {{SuperSecretRoom}}", -- YO LISTEN!
	-- Full old Desc: "↑ Chance {{ColorLime}}+1#Révèle la position des rochers marqués, des entrées de Crawl Spaces {{LadderRoom}}, des Secret Rooms {{SecretRoom}} et des Super Secret Rooms {{SuperSecretRoom}}"
	-- English: "Highlights the location of {{SecretRoom}} secret rooms, tinted rocks and {{LadderRoom}} crawlspaces"

	[C_ID .. 493] = "Pour chaque réceptacle de cœur vide :#{VAR:EFFECTLIST}", -- Adrenaline
	-- Full old Desc: "Pour chaque réceptacle de cœur vide :#↑ Dégâts {{ColorLime}}+0.2"
	-- English: "For every empty heart container:#{VAR:EFFECTLIST}"

	[C_ID .. 494] = "Les larmes génèrent des arcs électriques en touchant un mur, un obstacle ou un ennemi", -- Jacob's Ladder
	-- English: "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half of Isaac's damage"

	[C_ID .. 495] = "Isaac tire parfois une flamme bleue qui inflige des dégâts de contact et bloque les projectiles ennemis#La flamme disparait après avoir bloqué 5 projectiles ou infligé des dégâts 5 fois#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à 10 Chance)", -- Ghost Pepper
	-- English: "Chance to shoot a red flame that blocks enemy shots and deals contact damage#The flame disappears after dealing damage or blocking shots 5 times"

	[C_ID .. 496] = "Les seringues infligent {{ColorLime}}dégâts x3{{ColorWhite}} aux boss#{{LuckSmall}} Effet affecté par la statistique de chance", -- Euthanasia
	-- Full old Desc: "Isaac tire parfois une seringue#Les seringues tuent instantanément les ennemis et se divisent en 10 larmes#Les seringues infligent {{ColorLime}}dégâts x3{{ColorWhite}} aux boss#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 14.5 Chance)"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a needle#Needles kill normal enemies instantly, bursting them into 10 tears#{{Damage}} Needles deal 3x Isaac's damage against bosses"

	[C_ID .. 497] = "Isaac est camouflé et étourdit les ennemis au début de chaque salle#L'effet disparait dès qu'Isaac tire", -- Camo Undies
	-- English: "{{Confusion}} Entering a room confuses all enemies until Isaac starts shooting"

	[C_ID .. 498] = "Fait apparaître les portes du Devil Deal {{DevilRoom}} et de l'Angel Room {{AngelRoom}} si l'une des deux doit apparaître#Entrer dans une des salles fait disparaître l'autre#Ne garantit pas l'apparition des portes", -- Duality
	-- English: "{{AngelDevilChance}} Spawns both a Devil and Angel Room if either would have spawned#Entering one makes the other disappear"

	[C_ID .. 501] = "{{Heart}} +1 réceptacle de cœur toutes les 25 pièces au compteur", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins gained after getting Greed's Gullet"

	[C_ID .. 502] = "Isaac tire parfois une pustule qui inflige {{ColorLime}}dégâts x2{{ColorWhite}} et répand une flaque ralentissante#Subir un dégât tire une pustule", -- Large Zit
	-- English: "{{Slow}} Firing occasionally shoots a white creep tear that deals double damage and slows enemies#Taking damage shoots a white creep tear"

	[C_ID .. 503] = "{{Blank}} {{ColorSilver}}(20% à 15 Chance)", -- Little Horn
	-- Full old Desc: "Isaac tire parfois une larme transperçante qui tue instantanément les ennemis qu'elle touche#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(20% à 15 Chance)"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot tears that instantly kill enemies#Isaac deals 3.5 contact damage"

	[C_ID .. 504] = "Invoque une mouche immobile qui tire sur les ennemis à proximité#{{DamageSmall}} 2 dégâts par larme", -- Brown Nugget
	-- English: "Spawns a fly turret that shoots at enemies#Each shot deals 2 damage"

	[C_ID .. 505] = "Entrer dans une salle hostile a 20% de chances d'invoquer un monstre allié", -- Poke Go
	-- English: "{{Friendly}} Entering a hostile room has a chance to spawn a friendly enemy"

	[C_ID .. 506] = "Toucher un enenmi dans le dos avec une larme inflige le double de dégâts et le fait saigner#Le saignement retire 10% des PV totaux de l'ennemi toutes les 5 secondes", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds"

	[C_ID .. 507] = "Inflige les dégâts d'Isaac et retire 10% des PV totaux de tous les ennemis de la salle#Infliger des dégâts avec cet objet génère parfois un demi-cœur d'âme", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts#{{HalfSoulHeart}} Having no heart containers drops Soul Hearts instead"

	[C_ID .. 508] = "Orbite autour d'Isaac#Inflige {{ColorLime}}dégâts x3{{CR}} et fait saigner les ennemis au contact#Le saignement retire 10% des PV totaux de l'ennemi toutes les 5 secondes", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds#{{Damage}} Deals 3x Isaac's damage per second#Does not block shots"

	[C_ID .. 509] = "Orbite autour d'Isaac et inflige des dégâts de contact#{{Blank}} 3.5 dégâts par larme", -- Bloodshot Eye
	-- Full old Desc: "Orbite autour d'Isaac et inflige des dégâts de contact#Tire une larme toutes les 2 secondes#{{DamageSmall}} 30 dégâts par seconde#{{Blank}} 3.5 dégâts par larme"
	-- English: "Orbital that shoots a tear in a random direction every 2 seconds#Does not block shots"

	[C_ID .. 510] = "Invoque un boss allié#{{Timer}} L'effet dure une salle", -- Delirious
	-- English: "{{Friendly}} Spawns a friendly delirium version of a boss for the room"

	[C_ID .. 511] = "Orbite un ennemi et inflige des dégâts de contact", -- Angry Fly
	-- Full old Desc: "Orbite un ennemi et inflige des dégâts de contact#Attaque parfois l'ennemi qu'elle orbite#{{DamageSmall}} 30 dégâts par seconde"
	-- English: "Orbits a random enemy until that enemy dies"

	[C_ID .. 512] = "Lance un trou noir qui attire tout dans la salle, inflige des dégâts de contact et détruit les rochers à proximité", -- Black Hole
	-- English: "Throwable black hole, which sucks in everything#Deals 6 damage per second#Destroys nearby rocks#Lasts 6 seconds"

	[C_ID .. 513] = "Envoûte ou terrifie parfois un ennemi#Subir un dégât fait parfois apparaître un caca arc-en-ciel", -- Bozo
	-- Full old Desc: "↑ Dégâts {{ColorLime}}+0.1#{{SoulHeart}} +1 cœur d'âme#Envoûte ou terrifie parfois un ennemi#Subir un dégât fait parfois apparaître un caca arc-en-ciel"
	-- English: "{{Charm}} Randomly charms/fears enemies#Taking damage has a random chance to spawn a Rainbow Poop"

	[C_ID .. 514] = "Paralyse parfois les ennemis et projectiles#25% de chances de dupliquer une récompense de salle#{{LuckSmall}} Effet affecté par la statistique de chance", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#25% chance to double room clear drops"

	[C_ID .. 515] = "Fait apparaître un objet aléatoire qui provient de la banque d'objets de la salle où il a été ouvert#Peut faire apparaître {{ColorYellow}}A Lump of Coal{{ColorWhite}}{{Collectible132}} ou {{ColorYellow}}The Poop{{ColorWhite}}{{Collectible36}} à la place#{{LuckSmall}} Effet affecté par la statistique de chance", -- Mystery Gift
	-- English: "Spawns a random item from the current room's item pool#Chance to spawn Lump of Coal or The Poop instead"

	[C_ID .. 516] = "Place un arroseur qui tourne sur lui-même et tire des larmes identiques à celles d'Isaac", -- Sprinkler
	-- English: "Spawns a Sprinkler that shoots the same tears as Isaac in a circle around itself"

	[C_ID .. 517] = "Permet à Isaac de poser plusieurs bombes sans délai", -- Fast Bombs
	-- Full old Desc: "{{Bomb}} +7 Bombes#Permet à Isaac de poser plusieurs bombes sans délai"
	-- English: "Removes the delay between bomb placements"

	[C_ID .. 518] = "Familier dont l'apparence et les effets de larmes changent à chaque étage", -- Buddy in a Box
	-- English: "Familiar which looks like a random co-op baby#Has random tear effects#Effects change every floor"

	[C_ID .. 519] = "Se transforme en un familier au hasard toutes les 10 secondes", -- Lil Delirium
	-- English: "Transforms into a random familiar every 10 seconds"

	[C_ID .. 520] = "Tuer 15 ennemis charge une barre de l'objet activable", -- Jumper Cables
	-- English: "Killing 15 enemies adds 1 charge to the active item"

	[C_ID .. 521] = "Rend gratuit un objet payant dans la salle#Fonctionne pour les coûts en pièces et en PV#Garantit un objet en solde au Shop {{Shop}} tant qu'Isaac porte l'objet", -- Coupon
	-- English: "Makes one random item in the {{Shop}} Shop or {{DevilRoom}} Devil Room free#Holding the item guarantees one Shop item is on sale"

	[C_ID .. 522] = "Entoure Isaac d'une aura qui immobilise les projectiles ennemis#Après 3 secondes, les projectiles immobilisés sont renvoyés", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards"

	[C_ID .. 523] = "Utiliser l'objet absorbe toutes les ressources et objets de la salle#Utiliser l'objet à nouveau pose les éléments absorbés sur le sol", -- Moving Box
	-- English: "Stores all pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Relie les larmes d'Isaac par des arcs électriques", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#The beams deal Isaac's damage"

	[C_ID .. 525] = "Subir un dégât invoque jusqu'à 3 orbitaux qui bloquent les projectiles ennemis et infligent des dégâts de contact#Les orbitaux peuvent mourir#{{DamageSmall}} 35 dégâts par seconde", -- Leprosy
	-- English: "Taking damage spawns a projectile blocking orbital#Caps at 3 orbitals#They deal 35 contact damage per second#Orbitals are destroyed if they take too much damage"

	[C_ID .. 526] = "Familier Cavalier de l'Apocalypse qui inflige des dégâts de contact et invoque des locustes#Le cavalier et le type de locustes changent toutes les 10 secondes", -- 7 Seals
	-- English: "Spawns a small horseman familiar that spawns locusts#The horseman and its locust changes every 10 seconds"

	[C_ID .. 527] = "Utiliser l'objet affiche un curseur déplaçable#Après quelques secondes, invoque un familier qui va interagir avec l'élément le plus proche du curseur#Peut voler des objets, ouvrir des serrures ou exploser des obstacles", -- Mr. ME!
	-- English: "Displays a movable cursor for a few seconds, then summons a ghost that will, depending on the cursor position:#Open doors or chests#Fetch an item#50% chance to steal from the Shop / Devil#Attack an enemy until it dies#Explode walls, rocks, shopkeepers, angel statues, machines, beggars"

	[C_ID .. 528] = "Orbite autour d'Isaac et quadruple les larmes qui passent à travers", -- Angelic Prism
	-- English: "Orbital prism#Friendly tears hitting it split into 4"

	[C_ID .. 529] = "Les larmes d'Isaac rebondissent entre elles et contre les murs et les obstacles", -- Pop!
	-- English: "Isaac's tears bounce off each other and disappear when they stop moving"

	[C_ID .. 530] = "Récompense Isaac s'il tue les ennemis dans l'ordre indiqué par la marque {{DeathMark}}", -- Death's List
	-- English: "Killing enemies in the order dictated by the mark {{DeathMark}} above them grants a random pickup or stat increase"

	[C_ID .. 532] = "Les larmes d'Isaac ralentissent avec la distance#Une fois à l'arrêt, elles éclatent en 5 à 8 larmes#Plusieurs larmes peuvent fusionner en une larme plus grosse", -- Lachryphagy
	-- English: "Isaac's tears progressively slow down, stop, then explode into 8 smaller tears#Tears can merge and become bigger"

	[C_ID .. 533] = "Remplace les larmes d'Isaac par des rayons de lumière#Les rayons de lumière infligent {{ColorError}}dégâts -66%{{ColorWhite}} mais peuvent toucher le même ennemi plusieurs fois#Larmes transperçantes", -- Trisagion
	-- English: "Replaces Isaac's tears with piercing beams of light#The beams deal 33% damage but can hit enemies multiple times"

	[C_ID .. 534] = "Permet à Isaac de porter deux objets activables#Les objets peuvent être échangés avec le bouton {{ColorSilver}}[Lâcher]", -- Schoolbag
	-- English: "Allows Isaac to hold 2 active items#The items can be swapped using the Drop button ({{ButtonRT}})"

	[C_ID .. 535] = "Nullifie le premier dégât subi dans une salle de boss", -- Blanket
	-- Full old Desc: "{{SoulHeart}} +1 cœur d'âme#{{HealingRed}} Soigne 1 cœur rouge#Nullifie le premier dégât subi dans une salle de boss"
	-- English: "{{HolyMantle}} Entering a boss room grants a Holy Mantle shield (prevents damage once)"

	[C_ID .. 536] = "Sacrifie jusqu'à 2 des familiers d'Isaac#Chaque familier sacrifié fait apparaître un objet diabolique", -- Sacrificial Altar
	-- English: "Sacrifices up to 2 familiars and spawns a devil item for each sacrifice#{{Coin}} Turns blue spiders/flies into coins"

	[C_ID .. 537] = "Crache des flaques#Avaler une pilule change la couleur et l'effet des flaques du familier#Fait apparaître une pilule", -- Lil Spewer
	-- English: "{{Pill}} Spawns a random pill on pickup#Fires a line of creep#The type of creep changes with each pill use"

	[C_ID .. 538] = "Subir un dégât a 5% de chances d'absorber le trinket porté par Isaac et d'activer ses effets de manière permanente", -- Marbles
	-- Full old Desc: "Fait apparaître 3 trinkets#Subir un dégât a 5% de chances d'absorber le trinket porté par Isaac et d'activer ses effets de manière permanente"
	-- English: "{{Collectible479}} Taking damage has a 10% chance to consume Isaac's held trinket and grant its effects permanently"

	[C_ID .. 539] = "Subir un dégât invoque un ennemi envoûté#Plus Isaac termine de salles sans subir de dégâts, plus l'ennemi invoqué est puissant", -- Mystery Egg
	-- English: "{{Friendly}} Taking damage spawns a friendly enemy#Spawns stronger friends the more rooms are cleared without taking damage"

	[C_ID .. 540] = "Les larmes d'Isaac rebondissent sur le sol et infligent des dégâts de zone à chaque rebond", -- Flat Stone
	-- English: "Isaac's tears bounce off the floor and cause splash damage on every bounce"

	[C_ID .. 543] = "Subir un dégât fait apparaître un caca sacré entouré d'une aura#Quand Isaac se tient à l'intérieur de l'aura :#{VAR:EFFECTLIST}#Chance de nullifier un dégât subi", -- Hallowed Ground
	-- Full old Desc: "Subir un dégât fait apparaître un caca sacré entouré d'une aura#Quand Isaac se tient à l'intérieur de l'aura :#↑ Débit augmenté#Chance de nullifier un dégât subi"
	-- English: "Taking damage spawns a white poop#While inside the poop's aura:#{VAR:EFFECTLIST}#{{IND}}Chance to block damage"

	[C_ID .. 544] = "Pointe dans la direction où tire Isaac et inflige des dégâts de contact#{{DamageSmall}} {{ColorLime}}Dégâts x6{{CR}} par seconde", -- Pointy Rib
	-- English: "Levitates in front of Isaac#Deals 6x Isaac's damage per second"

	[C_ID .. 545] = "Invoque jusqu'à 8 entités squelettiques selon le nombre d'ennemis tués dans la salle", -- Book of the Dead
	-- English: "{{Friendly}} Spawns a bone orbital or friendly bony per enemy killed in the room (up to 8)"

	[C_ID .. 546] = "Entoure Isaac d'un halo qui pétrifie les ennemis au contact", -- Dad's Ring
	-- English: "{{Petrify}} Grants an aura that petrifies enemies"

	[C_ID .. 547] = "Fait apparaître {{ColorYellow}}Mysterious Paper{{Trinket21}}", -- Divorce Papers
	-- Full old Desc: "{{EmptyBoneHeart}} +1 cœur d'os#↑ Débit {{ColorLime}}+0.7#Fait apparaître {{ColorYellow}}Mysterious Paper{{Trinket21}}"
	-- English: "{{Trinket21}} Spawns the Mysterious Paper trinket"

	[C_ID .. 548] = "Part dans la direction des tirs d'Isaac puis revient#{{DamageSmall}} 7 dégâts par ennemi", -- Jaw Bone
	-- Full old Desc: "Part dans la direction des tirs d'Isaac puis revient#Inflige des dégâts de contact et peut ramener des ressources#{{DamageSmall}} 7 dégâts par ennemi"
	-- English: "Boomerang-like familiar#Can grab and bring back pickups"

	[C_ID .. 550] = "Le pied de {{ColorCyan}}Mom{{ColorWhite}} tente en permanence d'écraser Isaac#Utiliser cet objet cesse les attaques pour la durée d'une salle ou d'une vague#{{Warning}} Poser cet objet sur un piédestal puis quitter la salle le fait disparaître#{{UltraSecretRoom}} Emporte la pelle avec toi le plus loin possible", -- Broken Shovel
	-- English: "Mom's Foot constantly tries to stomp Isaac#Using the item stops the stomping for the room (or one Boss Rush wave)#{{Warning}} (Try to beat Boss Rush with it!)"

	[C_ID .. 551] = "Le deuxième morceau d'une pelle maudite#{{UltraSecretRoom}} Permet de déterrer quelque chose d'enfoui dans la {{ColorTransform}}Dark Room", -- Broken Shovel
	-- English: "Completes Mom's Shovel#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 552] = "Ouvre une trappe vers l'étage suivant#{{UltraSecretRoom}} Permet de déterrer quelque chose d'enfoui dans la {{ColorTransform}}Dark Room", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#10% chance for {{LadderRoom}} crawlspace trapdoor#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 1] = "Subir un dégât fait apparaître une pièce", -- Swallowed Penny
	-- English: "{{Coin}} Taking damage spawns 1 coin"

	[T_ID .. 2] = "Détruire un caca a 50% de chances de faire apparaître une ressource", -- Petrified Poop
	-- English: "50% chance to get drops from poop"

	[T_ID .. 3] = "Termine de charger l'objet activable s'il lui manque une charge", -- AAA Battery
	-- English: "{{Battery}} -1 Charge needed for active items"

	[T_ID .. 4] = "Utiliser un objet activable téléporte Isaac dans une salle aléatoire", -- Broken Remote
	-- English: "{{Collectible44}} Using an active item teleports Isaac to a random room"

	[T_ID .. 5] = "Double les chances de rencontrer des ennemis et boss d'élite", -- Purple Heart
	-- English: "2x chance for champion enemies"

	[T_ID .. 6] = "Isaac attire les pièces", -- Broken Magnet
	-- English: "{{Coin}} Attracts coins to Isaac"

	[T_ID .. 7] = "Augmente les chances de trouver {{ColorYellow}}The Bible{{ColorWhite}} dans une Library {{Library}} ou un Shop {{Shop}}", -- Rosary Bead
	-- Full old Desc: "{{AngelChanceSmall}} Augmente les chances d'Angel Rooms {{AngelRoom}}#Augmente les chances de trouver {{ColorYellow}}The Bible{{ColorWhite}} dans une Library {{Library}} ou un Shop {{Shop}}"
	-- English: "{{Collectible33}} Higher chance to find The Bible in {{Shop}} Shops and {{Library}} Libraries"

	[T_ID .. 8] = "{VAR:ITEMDESCRIPTION}", -- Cartridge
	-- Full old Desc: "Subir un dégât déclenche parfois l'effet de {{ColorYellow}}The Gamekid{{Collectible93}}#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 38 Chance)"
	-- English: "{{Timer}} {VAR:LUCKCHANCE}% chance upon taking damage:#{VAR:ITEMDESCRIPTION}"

	[T_ID .. 9] = "Les larmes d'Isaac pulsent", -- Pulse Worm
	-- English: "Isaac's tears pulsate#Affects tear hitbox"

	[T_ID .. 10] = "La trajectoire des larmes d'Isaac forme des vagues", -- Wiggle Worm
	-- Full old Desc: "↑ Débit {{ColorLime}}+0.4#La trajectoire des larmes d'Isaac forme des vagues"
	-- English: "Isaac's tears move in waves"

	[T_ID .. 11] = "La trajectoire des larmes d'Isaac forme des cercles", -- Ring Worm
	-- English: "Isaac's tears move in spirals with high speed"

	[T_ID .. 12] = "Les larmes d'Isaac sont 50% plus larges", -- Flat Worm
	-- English: "50% wider tears#Increases knockback"

	[T_ID .. 13] = "Permet à Isaac d'obtenir un objet du Shop {{Shop}} gratuitement#Le trinket disparaît une fois l'objet acheté", -- Store Credit
	-- English: "{{Shop}} Allows Isaac to take 1 Shop item for free"

	[T_ID .. 14] = "Isaac ne subit plus les dégâts des piques et des flaques au sol", -- Callus
	-- English: "Immune to creep and floor spikes"

	[T_ID .. 15] = "Détruire un obstacle fait apparaître 1 pièce", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks spawns coins"

	[T_ID .. 17] = "Les cœurs d'âme au sol ont 10% de chances d'être convertis en cœurs noirs", -- Black Lipstick
	-- English: "{{BlackHeart}} +10% chance for random Soul Hearts to spawn as Black Hearts"

	[T_ID .. 18] = "Augmente de 3% la fréquence d'apparition des cœurs éternels", -- Bible Tract
	-- English: "{{EternalHeart}} +3% chance for Eternal Hearts"

	[T_ID .. 19] = "Ouvrir un coffre doré {{GoldenChest}} ne diminue pas le compteur de clés", -- Paper Clip
	-- English: "{{GoldenChest}} Gold chests can be opened for free"

	[T_ID .. 20] = "Descendre à un demi-cœur de vie totale fait apparaître un cœur noir#Après avoir fait apparaître 3 cœurs noirs, le trinket disparaît", -- Monkey Paw
	-- English: "{{BlackHeart}} Spawns 1 Black Heart when Isaac's health is reduced to half a heart#{{Warning}} Disappears after spawning 3 Black Hearts"

	[T_ID .. 21] = "Donne parfois l'effet de {{ColorYellow}}The Polaroid {{Collectible327}}{{ColorWhite}}, {{ColorYellow}}The Negative {{Collectible328}}{{ColorWhite}}, {{ColorYellow}}Missing Poster {{Trinket23}}{{ColorWhite}} et {{ColorYellow}}A Missing Page {{Trinket48}}{{ColorWhite}}#{VAR:TEXT}", -- Mysterious Paper
	-- Full old Desc: "Donne parfois l'effet de {{ColorYellow}}The Polaroid {{Collectible327}}{{ColorWhite}}, {{ColorYellow}}The Negative {{Collectible328}}{{ColorWhite}}, {{ColorYellow}}Missing Poster {{Trinket23}}{{ColorWhite}} et {{ColorYellow}}A Missing Page {{Trinket48}}{{ColorWhite}}"
	-- English: "Randomly grants the effect of:#{VAR:TEXT}"

	[T_ID .. 22] = "Remplace 80% des cœurs ramassables par des clés#Remplace les 20% restants par des cœurs noirs", -- Daemon's Tail
	-- English: "{{Heart}} Decreases spawn rate of hearts to 20%#{{BlackHeart}} All Heart pickups turn into Black Hearts#{{Key}} Increases the drop chance of keys"

	[T_ID .. 23] = "À sa mort, Isaac ressuscite en {{ColorLightOrange}}The Lost#Le trinket disparaît à la mort d'Isaac", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death"

	[T_ID .. 24] = "Ramasser une pièce fait péter Isaac#Augmente de 20% les chances de trouver une pièce dans un caca", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#Picking up coins makes Isaac fart"

	[T_ID .. 25] = "Isaac pète ou fait apparaître un caca à intervalles irréguliers", -- Mysterious Candy
	-- English: "Isaac farts or spawns poop every 30 seconds"

	[T_ID .. 26] = "La trajectoire des larmes d'Isaac forme des vagues carrées", -- Hook Worm
	-- Full old Desc: "↑ Portée {{ColorLime}}+10#La trajectoire des larmes d'Isaac forme des vagues carrées"
	-- English: "Isaac's tears move in angular patterns"

	[T_ID .. 28] = "À sa mort, Isaac a 22% de chances de ressusciter en {{ColorLightOrange}}???", -- Broken Ankh
	-- English: "{{Player4}} 22% chance to respawn as ??? (Blue Baby) on death"

	[T_ID .. 29] = "Subir un dégât invoque une mouche bleue", -- Fish Head
	-- English: "Taking damage spawns 1 blue fly"

	[T_ID .. 32] = "Active parfois l'effet de {{ColorYellow}}Mini Mush{{ColorWhite}} {{Collectible71}}, {{ColorYellow}}Odd Mushroom{{ColorWhite}} {{Collectible121}}, {{ColorYellow}}Odd Mushroom{{ColorWhite}} {{Collectible120}} ou {{ColorYellow}}The Compass{{ColorWhite}} {{Collectible21}} pour la durée d'une salle", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room#Can reveal special rooms on the minimap"

	[T_ID .. 34] = "Augmente la fréquence d'apparition des cœurs rouges", -- Child's Heart
	-- English: "{{UnknownHeart}} 10% chance for the room clear reward to be a random heart#{{Heart}} 33% chance for a bonus heart from chests, tinted rocks, and destroyed machines"

	[T_ID .. 36] = "Augmente la fréquence d'apparition des clés", -- Rusted Key
	-- English: "{{Key}} 10% chance for the room clear reward to be a key#{{Key}} 33% chance for a bonus key from chests, tinted rocks, and destroyed machines"

	[T_ID .. 38] = "Les cœurs au sol ont 10% de chances d'être convertis en cœurs d'âme", -- Mom's Pearl
	-- English: "+10% chance for heart drops to be {{SoulHeart}} Soul Hearts, {{BlackHeart}} Black Hearts or {{EmptyBoneHeart}} Bone Hearts"

	[T_ID .. 40] = "Subir un dégât donne parfois {{ColorLime}}dégâts +1.8{{ColorWhite}} pour la durée d'une salle", -- Red Patch
	-- Full old Desc: "Subir un dégât donne parfois {{ColorLime}}dégâts +1.8{{ColorWhite}} pour la durée d'une salle#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 8 Chance)"
	-- English: "{{Timer}} Taking damage has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +1.8 damage for the room"

	[T_ID .. 41] = "Augmente la fréquence d'apparition des bombes#Permet de retirer {{ColorYellow}}The Tick{{ColorWhite}} {{Trinket53}}", -- Match Stick
	-- English: "{{Bomb}} 10% chance for the room clear reward to be a bomb#{{Bomb}} 33% chance for a bonus bomb from chests, tinted rocks, and destroyed machines#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 43] = "Descendre à un demi-cœur de vie totale téléporte Isaac dans une salle aléatoire", -- Cursed Skull
	-- English: "When damaged down to half a heart or less, Isaac is teleported to a random room"

	[T_ID .. 44] = "Augmente la fréquence d'apparition des pilules", -- Safety Cap
	-- English: "{{Pill}} 10% chance for the room clear reward to be a pill#{{Pill}} 33% chance for a bonus pill from chests, tinted rocks, and destroyed machines"

	[T_ID .. 45] = "Augmente la fréquence d'apparition des cartes", -- Ace of Spades
	-- English: "{{Card}} 10% chance for the room clear reward to be a card#{{Card}} 33% chance for a bonus card from chests, tinted rocks, and destroyed machines"

	[T_ID .. 49] = "Ramasser une pièce a 50% de chances de faire apparaître un demi-cœur rouge", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 50% chance to spawn a half Red Heart"

	[T_ID .. 50] = "Ramasser une pièce a 50% de chances de faire apparaître une bombe", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 50% chance to spawn a bomb"

	[T_ID .. 51] = "Ramasser une pièce a 50% de chances de faire apparaître une clé", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 50% chance to spawn a key"

	[T_ID .. 52] = "Ramasser une pièce a 50% de chances d'ajouter une pièce supplémentaire au compteur", -- Counterfeit Penny
	-- English: "{{Coin}} Picking up a coin has a 50% chance to add another coin to the counter"

	[T_ID .. 53] = "{{HealingRed}} Entrer dans une salle de boss soigne 1 cœur rouge#Retire 15% des PV des boss#{{Warning}} Ne peut pas être retiré sans {{ColorYellow}}Match Stick{{ColorWhite}} {{Trinket41}}", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick or gulping"

	[T_ID .. 54] = "Suit Isaac et tire des larmes transperçantes", -- Isaac's Head
	-- Full old Desc: "Suit Isaac et tire des larmes transperçantes#{{DamageSmall}} 3.5 dégâts par larme"
	-- English: "Familiar with piercing tears"

	[T_ID .. 55] = "{{EternalHeart}} +1 cœur éternel au début de chaque étage", -- Maggy's Faith
	-- English: "{{EternalHeart}} Entering a new floor grants +1 Eternal Heart"

	[T_ID .. 56] = "Réduit le prix de tous les Devil Deals à 1 réceptacle de cœur#N'affecte pas les objets payés en cœurs d'âme", -- Judas' Tongue
	-- English: "{{DevilRoom}} Reduces all devil deal prices to 1 heart container#Doesn't reduce 3 Soul Heart prices"

	[T_ID .. 57] = "Rebondit contre les murs et tire des larmes spectrales autoguidées#{{DamageSmall}} 3.5 dégâts par larme", -- ???'s Soul
	-- Full old Desc: "Rebondit contre les murs et tire des larmes spectrales autoguidées#{{DamageSmall}} 3.5 dégâts par larme"
	-- English: "Familiar that bounces around the room#Shoots in the same direction as Isaac"

	[T_ID .. 58] = "Tuer un ennemi donne parfois {{ColorLime}}dégâts +0.5{{ColorWhite}} pour la durée d'une salle", -- Samson's Lock
	-- Full old Desc: "Tuer un ennemi donne parfois {{ColorLime}}dégâts +0.5{{ColorWhite}} pour la durée d'une salle#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 10 Chance)"
	-- English: "{{Timer}} Killing an enemy has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +0.5 damage for the room"

	[T_ID .. 61] = "Transforme tous les coffres en coffres rouges {{RedChest}}", -- The Left Hand
	-- English: "{{RedChest}} Turns all chests into Red Chests"

	[T_ID .. 62] = "Révèle les rochers marqués et l'entrée des Crawl Spaces {{LadderRoom}}", -- Shiny Rock
	-- English: "Crawlspace rocks and tinted rocks blink every 10 seconds"

	[T_ID .. 63] = "Désamorce les Troll Bombs et Maxi Troll Bombs et permet à Isaac de les ramasser", -- Safety Scissors
	-- English: "{{Bomb}} Turns Troll Bombs into bomb pickups"

	[T_ID .. 64] = "Donne l'effet d'un trinket de ver différent toutes les 3 secondes", -- Rainbow Worm
	-- English: "Grants a random worm effect every 3 seconds"

	[T_ID .. 67] = "Subir un dégât active l'effet du {{ColorYellow}}D6{{ColorWhite}} {{Collectible105}}, {{ColorYellow}}D8{{ColorWhite}} {{Collectible406}}, {{ColorYellow}}D12{{ColorWhite}} {{Collectible386}} ou {{ColorYellow}}D20{{ColorWhite}} {{Collectible166}}#{VAR:TEXT}", -- Cracked Dice
	-- Full old Desc: "Subir un dégât active l'effet du {{ColorYellow}}D6{{ColorWhite}} {{Collectible105}}, {{ColorYellow}}D8{{ColorWhite}} {{Collectible406}}, {{ColorYellow}}D12{{ColorWhite}} {{Collectible386}} ou {{ColorYellow}}D20{{ColorWhite}} {{Collectible166}}"
	-- English: "Taking damage has a 50% chance to trigger one of these effects:#{VAR:TEXT}"

	[T_ID .. 68] = "Isaac attire les ressources et les ennemis", -- Super Magnet
	-- English: "Isaac attracts pickups and enemies"

	[T_ID .. 69] = "Camoufle parfois Isaac et étourdit les ennemis", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies"

	[T_ID .. 70] = "Invoque parfois une araignée bleue dans les salles hostiles", -- Louse
	-- English: "Occasionally spawns a blue spider in hostile rooms"

	[T_ID .. 71] = "Les bombes d'Isaac répandent une flaque corrosive sur le sol", -- Bob's Bladder
	-- English: "Isaac's bombs leave damaging creep"

	[T_ID .. 72] = "Augmente la fréquence d'apparition des piles#Terminer une salle charge parfois une barre supplémentaire de l'objet activable", -- Watch Battery
	-- English: "{{Battery}} 6.66% chance for the room clear reward to be a battery#{{Battery}} +10% chance for random pickups to be a battery#{{Battery}} 5% chance to add 1 charge to held active item when clearing a room"

	[T_ID .. 73] = "Les bombes d'Isaac ont 10% de chances de faire apparaître une bombe ramassable en explosant", -- Blasting Cap
	-- English: "{{Bomb}} 10% chance for exploding bombs to drop a bomb pickup"

	[T_ID .. 74] = "Augmente de 0.5% les chances de trouver l'entrée d'un Crawl Space {{LadderRoom}}", -- Stud Finder
	-- English: "{{LadderRoom}} +0.5% chance to reveal a crawlspace when breaking a rock"

	[T_ID .. 75] = "Active l'effet d'un trinket aléatoire à chaque salle", -- Error
	-- English: "Grants a random trinket effect every room"

	[T_ID .. 76] = "{{ColorLime}}50%{{ColorWhite}} de chances de doubler le contenu d'un coffre#{{ColorError}}50%{{ColorWhite}} de chances de remplacer le contenu d'un coffre par une mouche", -- Poker Chip
	-- English: "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly"

	[T_ID .. 77] = "Augmente le recul infligé par les larmes d'Isaac", -- Blister
	-- English: "Increases knockback"

	[T_ID .. 78] = "Double la durée des effets infligés aux ennemis", -- Second Hand
	-- English: "Status effects applied to enemies last twice as long"

	[T_ID .. 79] = "Utiliser une pilule, une carte ou une rune a 25% de chances d'en faire apparaître une copie", -- Endless Nameless
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill has a 25% chance to spawn a copy of that rune, card or pill"

	[T_ID .. 81] = "Double la durée de l'invulnérabilité accordée à Isaac après qu'il a subi un dégât", -- Blind Rage
	-- English: "Invincibility frames after taking damage last twice as long"

	[T_ID .. 82] = "Les Treasure Rooms {{TreasureRoom}} ont {{ColorLime}}+15%{{ColorWhite}} de chances de proposer un choix entre deux objets", -- Golden Horse Shoe
	-- English: "{{TreasureRoom}} Future Treasure Rooms have +15% chance to let Isaac choose between two items"

	[T_ID .. 83] = "Permet d'ouvrir gratuitement les portes des Shops {{Shop}}", -- Store Key
	-- English: "{{Shop}} Lets Isaac open Shops for free"

	[T_ID .. 84] = "Empêche {{ColorCyan}}Greed{{ColorWhite}} et {{ColorCyan}}Super Greed{{ColorWhite}} d'apparaître dans les Shops {{Shop}}", -- Rib of Greed
	-- English: "{{Coin}} 5% more coins and fewer hearts from room clear rewards#Greed and Super Greed no longer appear in {{Shop}} Shops or {{SecretRoom}} Secret Rooms"

	[T_ID .. 85] = "Faire un don à une boîte à dons a 33% de chances de:#{{HealingRed}} Soigner un cœur rouge {{ColorSilver}}(40%)#Donner 1 pièce {{ColorSilver}}(40%)#Donner {{ColorLime}}Chance +1 {{ColorSilver}}(15%)#Invoquer un mendiant {{ColorSilver}}(5%)", -- Karma
	-- English: "{{DonationMachine}} Using a Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)"

	[T_ID .. 86] = "Détruire un caca invoque une mouche bleue", -- Lil Larva
	-- English: "Destroying poop spawns 1 blue fly"

	[T_ID .. 87] = "{{HealingRed}} Utiliser une clé soigne un demi-cœur rouge#Remplace les demi-cœurs rouges au sol par des cœurs entiers", -- Mom's Locket
	-- English: "{{HealingRed}} Using a key heals half a heart#{{Heart}} Turns half hearts into full hearts"

	[T_ID .. 88] = "Empêche la génération d'objets activables", -- NO!
	-- English: "Prevents active items from spawning"

	[T_ID .. 89] = "Réduit la distance entre les familiers d'Isaac", -- Child Leash
	-- English: "Familiars stay closer to Isaac"

	[T_ID .. 90] = "Les cacas détruits explosent et infligent 100 dégâts", -- Brown Cap
	-- English: "Poop explodes for 100 damage when destroyed"

	[T_ID .. 91] = "Augmente la fréquence d'apparition des cacas noirs", -- Meconium
	-- English: "33% chance for Black Poops to spawn#{{BlackHeart}} Destroying Black Poop has a 5% chance to spawn a Black Heart"

	[T_ID .. 92] = "↑ Augmente de {{ColorLime}}33%{{ColorWhite}} les bonus de stats donnés par les objets d'Isaac", -- Cracked Crown
	-- Full old Desc: "↑ Débit {{ColorLime}}+0.2#↑ Augmente de {{ColorLime}}33%{{ColorWhite}} les bonus de stats donnés par les objets d'Isaac"
	-- English: "↑ x1.33 Stat multiplier for the stats that are above 1 {{Speed}} speed, 3.5 {{Damage}} damage, 23.75 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 93] = "Les mouches ennemies sont parfois inoffensives", -- Used Diaper
	-- English: "15% chance per room for all fly enemies to become friendly"

	[T_ID .. 94] = "Double les apparitions de mouches et araignées bleues", -- Fish Tail
	-- English: "Doubles all blue fly / spider spawns"

	[T_ID .. 95] = "{{LuckSmall}} Effet affecté par la statistique de chance", -- Black Tooth
	-- Full old Desc: "Isaac tire parfois une dent morte qui inflige {{ColorLime}}dégâts x2{{ColorWhite}} et empoisonne les ennemis#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 32 Chance)"
	-- English: "{{Poison}} {VAR:LUCKCHANCE}% chance to shoot poison tooth tears#The tooth deals 2x Isaac's damage"

	[T_ID .. 96] = "{{Blank}} {{ColorSilver}}(100% à 9 Chance)", -- Ouroboros Worm
	-- Full old Desc: "↑ Portée {{ColorLime}}+4.0#La trajectoire des larmes d'Isaac forme une très grande spirale#Larmes spectrales#Isaac tire parfois une larme autoguidée#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 9 Chance)"
	-- English: "{VAR:LUCKCHANCE}% chance for homing tears#Isaac's tears move quickly in a spiral pattern"

	[T_ID .. 97] = "Les familiers bloquent les tirs ennemis et n'infligent pas de dégâts", -- Tonsil
	-- Full old Desc: "Subir entre 12 et 20 dégâts invoque jusqu'à deux familiers#Les familiers bloquent les tirs ennemis et n'infligent pas de dégâts"
	-- English: "Taking damage {VAR:RANGE} times spawns a projectile blocking familiar#Disappears after spawning 2 familiars"

	[T_ID .. 98] = "Isaac tire parfois une crotte de nez qui se colle aux ennemis et inflige les dégâts d'Isaac une fois par seconde#Les crottes de nez se décollent si l'ennemi meurt, s'enterre, saute hors de l'écran ou au bout de 60 secondes", -- Nose Goblin
	-- Full old Desc: "Isaac tire parfois une crotte de nez qui se colle aux ennemis et inflige les dégâts d'Isaac une fois par seconde#Les crottes de nez se décollent si l'ennemi meurt, s'enterre, saute hors de l'écran ou au bout de 60 secondes"
	-- English: "10% chance to shoot a sticky tear#50% chance for it to be homing#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for {VAR:1} seconds"

	[T_ID .. 99] = "Isaac tire parfois une larme rebondissante", -- Super Ball
	-- English: "10% chance to shoot bouncing tears"

	[T_ID .. 100] = "Si l'objet activable est entièrement chargé :#{VAR:EFFECTLIST}", -- Vibrant Bulb
	-- Full old Desc: "Si l'objet activable est entièrement chargé :#↑ Dégâts {{ColorLime}}+0.5#↑ Débit {{ColorLime}}+0.2#↑ Vitesse {{ColorLime}}+0.25#↑ Portée {{ColorLime}}+0.75#↑ Vitesse des tirs {{ColorLime}}+0.10#↑ Chance {{ColorLime}}+1"
	-- English: "Holding a fully charged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 101] = "Si l'objet activable est entièrement déchargé :#{VAR:EFFECTLIST}", -- Dim Bulb
	-- Full old Desc: "Si l'objet activable est entièrement déchargé :#↑ Vitesse {{ColorLime}}+0.5#↑ Portée {{ColorLime}}+1.5#↑ Débit {{ColorLime}}+0.4#↑ Vitesse des tirs {{ColorLime}}+0.3#↑ Dégâts {{ColorLime}}+1.5#↑ Chance {{ColorLime}}+2"
	-- English: "Holding a completely uncharged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 102] = "Génère une Secret Room de plus à chaque étage#Ne rajoute pas de Secret Room à un étage déjà généré", -- Fragmented Card
	-- English: "{{SecretRoom}} +1 extra Secret Room per floor while held"

	[T_ID .. 103] = "Transforme les ressources en leur version doublée si les compteurs de pièces, bombes et clés sont identiques", -- Equality!
	-- English: "Turns single pickups into double pickups when Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal"

	[T_ID .. 106] = "Augmente la taille des flaques créées par Isaac", -- Lost Cork
	-- English: "Increases the radius of friendly creep"

	[T_ID .. 107] = "Subir des dégâts retire les cœurs rouges en priorité#Les dégâts qui retirent des cœurs rouges ne diminuent pas les chances de Pacte avec le Diable ou d'Offrande des Anges", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#This red heart damage does not reduce Devil/Angel Room chances"

	[T_ID .. 108] = "Subir 1 à 9 explosions détruit le trinket et fait apparaître une bombe, une pièce, une clé et un trinket", -- Walnut
	-- English: "Getting hit by 1-9 explosions destroys the trinket and drops a random {{UnknownHeart}} heart, {{Coin}} coin, {{Key}} key and {{Trinket}} trinket#Taking damage isn't required"

	[T_ID .. 109] = "Immobilise tous les familiers d'Isaac", -- Duct Tape
	-- English: "Familiars are stuck in one spot and cannot move"

	[T_ID .. 110] = "Des Shops {{Shop}} apparaissent dans le {{ColorTransform}}Womb", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb"

	[T_ID .. 111] = "Des Treasure Rooms {{TreasureRoom}} apparaissent dans le {{ColorTransform}}Womb", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb"

	[T_ID .. 112] = "Des Restock Machines {{RestockMachine}} apparaissent dans toutes les Treasure Rooms {{TreasureRoom}}", -- Pay To Win
	-- English: "{{RestockMachine}} Restock boxes always spawn in {{TreasureRoom}} Treasure Rooms"

	[T_ID .. 113] = "Entrer dans une salle hostile invoque un locuste explosif", -- Locust of War
	-- English: "Entering a hostile room spawns an exploding attack fly #The fly deals 2x Isaac's damage + explosion damage"

	[T_ID .. 114] = "Entrer dans une salle hostile invoque un locuste empoisonné", -- Locust of Pestilence
	-- English: "{{Poison}} Entering a hostile room spawns a poison attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 115] = "Entrer dans une salle hostile invoque un locuste ralentissant", -- Locust of Famine
	-- English: "{{Slow}} Entering a hostile room spawns a slowing attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 116] = "Entrer dans une salle hostile invoque un locuste qui inflige {{ColorLime}}dégâts x4", -- Locust of Death
	-- English: "Entering a hostile room spawns an attack fly#The fly deals 4x Isaac's damage"

	[T_ID .. 117] = "Entrer dans une salle hostile invoque 2 à 5 locustes", -- Locust of Conquest
	-- English: "Entering a hostile room spawns 1-4 attack flies#Each fly deals 2x Isaac's damage"

	[T_ID .. 118] = "Tuer un ennemi permet parfois à Isaac de voler pour la durée d'une salle", -- Bat Wing
	-- English: "{{Timer}} Killing an enemy has a 5% chance to grant flight for the room"

	[T_ID .. 119] = "{{HealingRed}} Entrer dans un nouvel étage soigne un demi-cœur rouge", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half a heart"

	[T_ID .. 120] = "Entrer dans une salle de boss recharge entièrement l'objet activable", -- Hairpin
	-- English: "{{Battery}} Entering an uncleared boss room fully recharges active items"

	[T_ID .. 121] = "Entoure Isaac d'un bouclier sacré {{HolyMantleSmall}} qui nullifie le premier dégât subi dans l'étage#Le bouclier se régénère à chaque étage", -- Wooden Cross
	-- English: "{{Collectible313}} Grants a Holy shield that prevents damage once per floor"

	[T_ID .. 122] = "Utiliser un objet activable le retire de l'inventaire d'Isaac et le pose sur un piédestal#Subir un dégât a 2% de chances de retirer un objet passif à isaac et de le poser sur un piédestal", -- Butter!
	-- English: "Using an active item drops it on a pedestal on the ground#Taking damage has a 2% chance to drop one of Isaac's passive items"

	[T_ID .. 123] = "Tuer {{ColorCyan}}Uriel{{ColorWhite}} ou {{ColorCyan}}Gabriel{{ColorWhite}} fait apparaître un objet angélique au lieu d'une {{ColorYellow}}Key Piece {{Collectible238}}{{Collectible239}}", -- Filigree Feather
	-- English: "Angel bosses drop angel items instead of Key Pieces"

	[T_ID .. 124] = "Entrer dans une salle hostile ne referme pas la porte par laquelle Isaac est entré", -- Door Stop
	-- English: "The last door used stays open"

	[T_ID .. 125] = "Relie les familiers d'Isaac par des arcs électriques", -- Extension Cord
	-- English: "Connects all familiars with beams of electricity#The beams deal 6 damage"

	[T_ID .. 126] = "Ramasser une pièce invoque 1 mouche bleue", -- Rotten Penny
	-- English: "Picking up a coin spawns a blue fly"

	[T_ID .. 127] = "Les larmes des familiers d'Isaac sont autoguidées", -- Baby-Bender
	-- English: "Grants all familiars homing shots"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 1] = "Téléporte Isaac dans la première salle de l'étage", -- 0 - The Fool
	-- English: "Teleports Isaac to the first room of the floor"

	[Card_ID .. 3] = "Le pied de {{ColorCyan}}Mom{{ColorWhite}} écrase l'ennemi de la salle avec le plus de PV#Dans une salle vide, le pied écrase Isaac", -- II - The High Priestess
	-- English: "Mom's Foot stomps on an enemy#Mom's Foot stomps Isaac if there are no enemies"

	[Card_ID .. 5] = "Téléporte Isaac dans la Boss Room", -- IV - The Emperor
	-- English: "{{BossRoom}} Teleports Isaac to the Boss Room"

	[Card_ID .. 9] = "Fait apparaître une clé, une bombe, une pièce et un cœur", -- VIII - Justice
	-- English: "Spawns a random {{UnknownHeart}} heart, {{Coin}} coin, {{Bomb}} bomb and {{Key}} key"

	[Card_ID .. 10] = "Téléporte Isaac dans le Shop {{Shop}}", -- IX - The Hermit
	-- English: "{{Shop}} Teleports Isaac to the Shop"

	[Card_ID .. 11] = "Fait apparaître 1 des machines suivantes:#Machine à sous {{Slotmachine}} {{ColorSilver}}(75%)#Diseuse de bonne aventure {{FortuneTeller}} {{ColorSilver}} (24%)", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 25% chance for it to be a Fortune Telling Machine"

	[Card_ID .. 15] = "Fait apparaître une banque du sang {{BloodDonationMachine}}", -- XIV - Temperance
	-- English: "{{DonationMachine}} Spawns a Blood Donation Machine"

	[Card_ID .. 17] = "Invoque 6 Troll Bombs", -- XVI - The Tower
	-- English: "Spawns 6 Troll Bombs"

	[Card_ID .. 18] = "Téléporte Isaac dans la Treasure Room {{TreasureRoom}}", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room"

	[Card_ID .. 19] = "Téléporte Isaac dans la Secret Room {{SecretRoom}}", -- XVIII - The Moon
	-- English: "{{SecretRoom}} Teleports Isaac to the Secret Room"

	[Card_ID .. 21] = "{{Beggar}} Invoque un mendiant#{{DemonBeggar}} 33% de chances d'être un mendiant démoniaque #2% de chances d'être un mendiant clé ou bombe", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#2% chance for it to be a Key Master or Bomb Bum"

	[Card_ID .. 23] = "Multiplie le nombre de bombes d'Isaac par 2#{{Bomb}} +2 bombes si Isaac ne possède aucune bombe", -- 2 of Clubs
	-- English: "{{Bomb}} Doubles Isaac's number of bombs"

	[Card_ID .. 24] = "Multiplie le nombre de pièces d'Isaac par 2#{{Coin}} +2 pièces si Isaac ne possède aucune pièce", -- 2 of Diamonds
	-- English: "{{Coin}} Doubles Isaac's number of coins"

	[Card_ID .. 25] = "Multiplie le nombre de clés d'Isaac par 2#{{Key}} +2 clés si Isaac ne possède aucune clé", -- 2 of Spades
	-- English: "{{Key}} Doubles Isaac's number of keys"

	[Card_ID .. 26] = "{{HealingRed}} Soigne le double des réceptacles de cœurs remplis d'Isaac#{{HealingRed}} Soigne 1 cœur rouge si tous les réceptacles de cœur d'Isaac sont vides", -- 2 of Hearts
	-- English: "{{HealingRed}} Doubles Isaac's number of Red Hearts {{ColorSilver}}(not containers){{CR}}"

	[Card_ID .. 27] = "Transforme toutes les ressources de la salle en bombes", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups into random bombs"

	[Card_ID .. 28] = "Transforme toutes les ressources de la salle en pièces", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups into random coins"

	[Card_ID .. 29] = "Transforme toutes les ressources de la salle en clés", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups into random keys"

	[Card_ID .. 30] = "Transforme toutes les ressources de la salle en cœurs", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups into random hearts"

	[Card_ID .. 31] = "Téléporte Isaac dans la Devil Room {{DevilRoom}} ou l'Angel Room {{AngelRoom}}", -- Joker
	-- English: "{{AngelDevilChance}} Teleports Isaac to the Devil or Angel Room"

	[Card_ID .. 32] = "Détruit tous les obstacles dans la salle", -- Hagalaz
	-- English: "Destroy all rocks in the room"

	[Card_ID .. 33] = "Duplique toutes les ressources présentes dans la salle", -- Jera
	-- English: "Duplicates all pickups in room"

	[Card_ID .. 34] = "Ouvre une trappe vers l'étage suivant#8% de chances d'ouvrir une trappe vers un Crawl Space {{LadderRoom}}", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} 8% chance for a crawlspace trapdoor"

	[Card_ID .. 35] = "Retire toutes les Curses", -- Dagaz
	-- Full old Desc: "{{SoulHeart}} +1 cœur d'âme#Retire toutes les Curses"
	-- English: "{{CurseCursed}} Removes all curses for the floor"

	[Card_ID .. 37] = "Rejoue les objets sur piédestal présents dans la salle", -- Perthro
	-- English: "Rerolls all pedestal items in the room"

	[Card_ID .. 40] = "Déclenche l'effet d'une rune au hasard#Peut faire apparaître une copie d'elle-même une fois utilisée", -- Blank Rune
	-- English: "Triggers a random rune effect#25% chance to duplicate itself when used"

	[Card_ID .. 41] = "Détruit tous les objets et ressources présents dans la salle#Invoque une mouche bleue pour chaque ressource détruite", -- Black Rune
	-- Full old Desc: "Inflige 40 dégâts à tous les ennemis dans la salle#Détruit tous les objets et ressources présents dans la salle#Invoque une mouche bleue pour chaque ressource détruite#↑ Augmente une stat aléatoire pour chaque objet détruit"
	-- English: "Converts all pedestal items in the room into random stat ups#Converts all pickups in the room into blue flies"

	[Card_ID .. 42] = "Utiliser cette carte la lance dans la direction où se déplace Isaac#La carte tue instantanément les ennemis ou boss avec lequels elle rentre en contact#La carte ne peut pas tuer Delirium", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium)"

	[Card_ID .. 43] = "Rend gratuits tous les objets en vente#Fonctionne sur les coûts en pièces et en PV", -- Credit Card
	-- English: "Makes all items and pickups in a {{Shop}} Shop or {{DevilRoom}} Devil Room free"

	[Card_ID .. 44] = "Donne un indice sur un des secrets du jeu", -- Rules Card
	-- English: "Displays "helpful" tips on use"

	[Card_ID .. 45] = "Couvre la totalité du sol de la salle de cacas {{Poop}}", -- A Card Against Humanity
	-- English: "Fills the whole room with poop"

	[Card_ID .. 46] = "Tue Isaac et fait apparaître 10 ressources ou objets dans la salle#Les objets proviennent de la banque d'objets de la salle où se trouve Isaac", -- Suicide King
	-- English: "Instantly kills Isaac and spawns 10 pickups or items on the floor#Spawned items will use the current room's item pool"

	[Card_ID .. 47] = "Ouvre toutes les portes de la salle, y compris la majorité des portes spéciales", -- Get Out Of Jail Free Card
	-- English: "Open all doors in the room"

	[Card_ID .. 48] = "Utilise l'objet activable d'Isaac sans le décharger", -- ? Card
	-- English: "Uses Isaac's active item for free"

	[Card_ID .. 49] = "Rejoue tous les objets et ressources présentes dans la salle", -- Dice Shard
	-- English: "Rerolls all item pedestals and pickups in the room"

	[Card_ID .. 50] = "2 mains de {{ColorCyan}}Mom{{ColorWhite}} attrapent un ennemi chacune, leur infligent 40 dégâts et les paralysent", -- Emergency Contact
	-- English: "Two of Mom's Hands come down and grab an enemy each"

	[Card_ID .. 51] = "Entoure Isaac d'un bouclier sacré {{HolyMantleSmall}} qui nullifie le prochain dégât subi dans la salle", -- Holy Card
	-- English: "{{HolyMantle}} Holy Mantle shield for the room (prevents damage once)#25% chance to spawn another Holy Card"

	[Card_ID .. 52] = "{VAR:ROOMEFFECT}#{{Timer}} L'effet dure une salle", -- Huge Growth
	-- Full old Desc: "↑ Dégâts {{ColorLime}}+7#↑ Portée {{ColorLime}}+30#↑ Taille augmentée#Marcher sur les obstacles les détruit#{{Timer}} L'effet dure une salle"
	-- English: "{VAR:ROOMEFFECT}#Allows Isaac to destroy rocks by walking into them"

	[Card_ID .. 54] = "{VAR:ROOMEFFECT}#{{Timer}} L'effet dure une salle", -- Era Walk
	-- Full old Desc: "↑ Vitesse {{ColorLime}}+0.5#↓ Vitesse des tirs {{ColorError}}-1#Ralentit les ennemis#{{Timer}} L'effet dure une salle"
	-- English: "{VAR:ROOMEFFECT}#{{Slow}} Slow down enemies"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 1] = "Fait apparaître un nuage de gaz qui inflige 5 dégâts de contact et empoisonne les ennemis", -- Bad Gas
	-- English: "{{Poison}} Isaac farts and poisons nearby enemies"

	[Pill_ID .. 2] = "Inflige 1 cœur de dégâts à Isaac", -- Bad Trip
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#Becomes a Full Health pill at 1 heart or less"

	[Pill_ID .. 4] = "Inverse les compteurs de bombes et de clés", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys"

	[Pill_ID .. 5] = "Fait apparaître 5 bombes amorcées derrière Isaac", -- Explosive Diarrhea
	-- English: "Isaac quickly spawns 5 lit bombs"

	[Pill_ID .. 10] = "{VAR:EFFECTLIST}", -- Puberty
	-- Full old Desc: "Avaler 3 pilules {{ColorYellow}}Puberty{{ColorWhite}} ajoute 1 réceptacle de cœur aux PV d'Isaac"
	-- English: "Eating 3 grants the Adult transformation:#{VAR:EFFECTLIST}"

	[Pill_ID .. 20] = "Téléporte Isaac dans une salle aléatoire", -- Telepills
	-- English: "Teleports Isaac to a random room#{{ErrorRoom}} Small chance to teleport Isaac to the I AM ERROR room"

	[Pill_ID .. 21] = "Recharge l'objet activable d'Isaac", -- 48 Hour Energy!
	-- Full old Desc: "Recharge l'objet activable d'Isaac#Fait apparaître 1 ou 2 piles"
	-- English: "{{Battery}} Fully recharges the active item"

	[Pill_ID .. 22] = "Vide tous les réceptacles de cœur d'Isaac sauf 1", -- Hematemesis
	-- Full old Desc: "Vide tous les réceptacles de cœur d'Isaac sauf 1#Fait apparaître 1 à 4 cœurs rouges"
	-- English: "{{Warning}} Drains all but one heart container"

	[Pill_ID .. 23] = "Empêche toute action pendant 2 secondes", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 2 seconds"

	[Pill_ID .. 24] = "Ouvre les entrées des Secret {{SecretRoom}} et Super Secret Rooms {{SuperSecretRoom}} de l'étage", -- I can see forever!
	-- English: "{{SecretRoom}} Opens all secret room entrances on the floor"

	[Pill_ID .. 25] = "Envoûte tous les ennemis de la salle", -- Pheromones
	-- English: "{{Charm}} Charms all enemies in the room"

	[Pill_ID .. 26] = "Masque la carte de l'étage", -- Amnesia
	-- English: "{{CurseLost}} Hides the map for the floor"

	[Pill_ID .. 27] = "Répand une large flaque sur le sol qui inflige des dégâts de contact aux ennemis", -- Lemon Party
	-- English: "Spawns a large puddle on the ground which damages enemies"

	[Pill_ID .. 28] = "Isaac tire en diagonale pendant 60 secondes", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 30 seconds"

	[Pill_ID .. 29] = "Les dégâts subis sont réduits à un demi-cœur pour la durée d'une salle", -- Percs!
	-- English: "{{Timer}} Reduces all damage taken to half a heart for the room"

	[Pill_ID .. 30] = "Les dégâts subis sont augmentés à un cœur entier pour la durée d'une salle", -- Addicted!
	-- English: "{{Timer}} Increases all damage taken to a full heart for the room"

	[Pill_ID .. 31] = "Isaac pose des cacas derrière lui pendant 2 secondes", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 2 seconds"

	[Pill_ID .. 32] = "Inflige Curse of the Maze pour la durée de l'étage", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. 34] = "Diminue la hitbox d'Isaac", -- One makes you small
	-- Full old Desc: "Diminue la taille d'Isaac#Diminue la hitbox d'Isaac"
	-- English: "Also decreases his hitbox"

	[Pill_ID .. 35] = "Invoque une araignée bleue pour chaque caca dans la salle", -- Infested!
	-- English: "Spawns 1 blue spider for each poop in the room"

	[Pill_ID .. 36] = "Invoque une araignée bleue pour chaque ennemi dans la salle#Utilisée dans une salle vide, invoque 1 à 3 araignées", -- Infested?
	-- English: "Spawn 1 blue spider for each enemy in the room#Spawns 1-3 blue spiders if there are no enemies in the room"

	[Pill_ID .. 38] = "Pixellise l'écran pendant 30 secondes", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen 3 times over 30 second"

	[Pill_ID .. 40] = "Répand une flaque glissante", -- X-Lax
	-- English: "Spawns a pool of slippery creep"

	[Pill_ID .. 41] = "Répand une flaque qui ralentit les ennemis", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of slowing creep"

	[Pill_ID .. 42] = "Ralentit tous les ennemis dans la salle", -- I'm Drowsy...
	-- English: "{{Slow}} Slows all enemies in the room"

	[Pill_ID .. 43] = "Accélère tous les ennemis dans la salle", -- I'm Excited!!
	-- English: "Speeds up all enemies in the room"

	[Pill_ID .. 44] = "Absorbe le trinket porté par Isaac et active son effet de manière permanente", -- Gulp!
	-- English: "{{Trinket}} Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. 45] = "Tire une larme explosive qui inflige 200 dégâts", -- Horf!
	-- English: "{{Collectible149}} Shoots one Ipecac tear"

	[Pill_ID .. 47] = "Isaac recrache la dernière pilule avalée :", -- Vurp!
	-- English: "Spawns the last pill used before Vurp!"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)
