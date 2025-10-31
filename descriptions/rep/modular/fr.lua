
local languageCode = "fr"
---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 13] = "Rentrer en contact avec un ennemi l'empoisonne", -- The Virus
	-- Full old Desc: "↑ Vitesse {{ColorLime}}+0.2#Rentrer en contact avec un ennemi l'empoisonne"
	-- English: "{{Poison}} Touching enemies poisons them"

	[C_ID .. 42] = "Bombe jetable#Crée un nuage de poison à l'endroit de l'explosion", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes where it lands and creates a poison cloud#Deals Isaac's damage + 185"

	[C_ID .. 46] = "Augmente les chances de gagner aux jeux d'argent et d'obtenir des récompenses de salle#Les pilules n'ont plus d'effets négatifs", -- Lucky Foot
	-- Full old Desc: "↑ Chance {{ColorLime}}+1#Augmente les chances de gagner aux jeux d'argent et d'obtenir des récompenses de salle#Les pilules n'ont plus d'effets négatifs"
	-- English: "Better chance to win while gambling#Increases room clearing drop chance#Turns bad pills into good ones"

	[C_ID .. 53] = "Isaac attire les ressources#Permet d'ouvrir les coffres sans devoir les toucher", -- Magneto
	-- English: "Pickups are attracted to Isaac#Opens chests from 2 tiles away, ignoring damage of Spike Chests"

	[C_ID .. 69] = "Permet à Isaac de charger ses tirs#Une larme complètement chargée inflige {{ColorLime}}dégâts x4", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x"

	[C_ID .. 78] = "Les Cavaliers ne peuvent apparaître qu'une fois par chapitre et ne peuvent pas remplacer les boss majeurs", -- Book of Revelations
	-- Full old Desc: "{{SoulHeart}} +1 cœur d'âme#Remplace le boss par un {{ColorCyan}}Cavalier de l'Apocalypse#Les Cavaliers ne peuvent apparaître qu'une fois par chapitre et ne peuvent pas remplacer les boss majeurs#{{AngelDevilChanceSmall}} {{ColorLime}}+17.5%{{ColorWhite}} de chances de Pacte avec le Diable ou d'Offrande des Anges"
	-- English: "Using the item replaces the floor's boss with a horseman"

	[C_ID .. 84] = "Ouvre une trappe vers l'étage suivant#Utiliser l'objet sur un élément de décor au sol ouvre une trappe vers un Souterrain {{LadderRoom}}", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} Opens a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[C_ID .. 91] = "Révèle les icônes sur la carte à deux salles de distance#Révèle la salle secrète, super secrète et de mini-boss sur la carte#Protège des projectiles qui tombent du plafond", -- Spelunker Hat
	-- English: "Rooms on the map are revealed from further away#{{SecretRoom}} Can also reveal Secret and Super Secret Rooms#Prevents damage from falling projectiles"

	[C_ID .. 114] = "Remplace les larmes d'Isaac par un couteau#Le couteau inflige entre {{ColorLime}}dégâts x2{{ColorWhite}} et {{ColorLime}}dégâts x6{{ColorWhite}} selon la distance du lancer", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and caps at 6x damage at 1/3 charge#Charging further only increases throwing range#Damage reduces to 2x when returning to Isaac"

	[C_ID .. 123] = "Invoque un familier au hasard#Le familier disparaît à l'étage suivant", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the floor"

	[C_ID .. 126] = "Inflige 1 cœur de dégâts à Isaac {{ColorSilver}}(un demi-cœur si réutilisé dans la même salle) {{ColorWhite}}et donne {{ColorLime}}Dégâts +1.2#Retire les cœurs rouges en priorité#{{Timer}} L'effet dure une salle", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first"

	[C_ID .. 140] = "Rend Isaac invulnérable aux nuages de poison", -- Bob's Curse
	-- Full old Desc: "{{Bomb}} +5 bombes#Les bombes d'Isaac laissent un nuage de poison#Rend Isaac invulnérable aux nuages de poison"
	-- English: "{{Poison}} Isaac's bombs create a cloud of poison#{{Poison}} Poison immunity"

	[C_ID .. 142] = "Descendre à un demi-cœur de vie totale ajoute un cœur d'âme aux PV d'Isaac#L'effet ne se déclenche qu'une fois par salle#{{Warning}} L'effet ne se déclenche pas sur un don de sang", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again#{{Warning}} Doesn't trigger from health donations"

	[C_ID .. 147] = "Donner un coup de pioche brise les obstacles et inflige des dégâts#Chaque touche avec la pioche la décharge partiellement#Ne se recharge qu'au changement d'étage", -- Notched Axe
	-- English: "Using the item makes Isaac hold the axe#Holding the axe allows Isaac to break rocks, secret room entrances and damage enemies#Landing a hit with the axe reduces its charge#Entering a new floor fully recharges the axe"

	[C_ID .. 152] = "Remplace les larmes de l'œil droit d'Isaac par un laser continu#Le laser inflige 13% des dégâts d'Isaac", -- Technology 2
	-- Full old Desc: "↓ Débit {{ColorError}}-33%#Remplace les larmes de l'œil droit d'Isaac par un laser continu#Le laser inflige 13% des dégâts d'Isaac"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} The laser deals 2x Isaac's damage per second"

	[C_ID .. 171] = "Ralentit les ennemis pendant 4 secondes et leur inflige 10 dégâts", -- Spider Butt
	-- Full old Desc: "Ralentit les ennemis pendant 4 secondes et leur inflige 10 dégâts#Les ennemis tués par cet objet font apparaître des araignées bleues"
	-- English: "{{Slow}} Slows down enemies for 4 seconds#Enemies killed by the item spawn blue spiders"

	[C_ID .. 178] = "Se projette dans la direction où tire Isaac#Répand une flaque paralysante en se brisant", -- Holy Water
	-- English: "{{Throwable}} Launches itself in the direction Isaac shoots#Breaks and deals 7 damage upon hitting an enemy#{{Petrify}} Leaves a pool of petrifying + damaging creep"

	[C_ID .. 180] = "Subir un dégât fait péter Isaac plusieurs fois et crée des nuages de poison", -- The Black Bean
	-- English: "Isaac farts multiple times when damaged#{{Poison}} The farts leave poison clouds and deflects projectiles"

	[C_ID .. 203] = "50% de chances de faire apparaître les versions doublées des ressources", -- Humbleing Bundle
	-- English: "Pickups have a 50% chance to be doubled"

	[C_ID .. 205] = "Utiliser un objet activable partiellement chargé le recharge complètement#{{Warning}} Inflige un demi-cœur de dégâts à Isaac par barre de charge remplie#Retire les cœurs rouges en priorité", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of half a heart per missing charge#{{Heart}} Removes Red Hearts first"

	[C_ID .. 222] = "Maintenir les boutons de tir fait flotter les larmes d'Isaac sur place#Relâcher les boutons de tir envoie toutes les larmes dans la direction où elles ont été tirées", -- Anti-Gravity
	-- Full old Desc: "↑ Débit {{ColorLime}}+1#Maintenir les boutons de tir fait flotter les larmes d'Isaac sur place#Relâcher les boutons de tir envoie toutes les larmes dans la direction où elles ont été tirées"
	-- English: "Holding the fire buttons causes tears to hover in mid-air#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "{{HealingRed}} Les explosions soignent un demi-cœur rouge#Rend Isaac invulnérable aux flammes et aux explosions", -- Pyromaniac
	-- Full old Desc: "{{Bomb}} +5 Bombes#{{HealingRed}} Les explosions soignent un demi-cœur rouge#Rend Isaac invulnérable aux flammes et aux explosions"
	-- English: "Immunity to explosions and fire#{{HealingRed}} Getting hit by explosions heals half a heart"

	[C_ID .. 224] = "Les larmes d'Isaac se divisent en 4 au contact", -- Cricket's Body
	-- Full old Desc: "↑ Débit {{ColorLime}}+0.5#↓ Portée {{ColorError}}-20%#Les larmes d'Isaac se divisent en 4 au contact"
	-- English: "Tears split in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "Subir un dégât fait parfois apparaître un cœur d'âme#Tuer un ennemi fait parfois apparaître un demi-cœur rouge#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 46 Chance)", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a 8% chance to spawn a Soul Heart#{{Luck}} +2% chance per luck#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 230] = "Isaac tire parfois une larme terrifiante", -- Abaddon
	-- Full old Desc: "↑ Dégâts {{ColorLime}}+1.5#↑ Vitesse {{ColorLime}}+0.2#{{BlackHeart}} +2 cœurs noirs#Convertit tous les réceptacles de cœur d'Isaac en cœurs noirs#Isaac tire parfois une larme terrifiante#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 85 Chance)"
	-- English: "{{BlackHeart}} Converts all heart containers into Black Hearts#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 232] = "Ralentit tous les ennemis de manière permanente", -- Stop Watch
	-- Full old Desc: "↑ Vitesse {{ColorLime}}+0.3#Ralentit tous les ennemis de manière permanente"
	-- English: "{{Slow}} Enemies are permanently slowed down to 80% of their attack and movement speed"

	[C_ID .. 248] = "Double les dégâts infligés par les locustes, les mouches et araignées bleues, et les familiers mouches et araignées", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage#Spider and fly familiars become stronger"

	[C_ID .. 261] = "Les larmes d'Isaac infligent {{ColorLime}}dégâts x3{{ColorWhite}} à bout portant mais leurs dégâts diminuent avec le temps qu'elles passent en l'air", -- Proptosis
	-- Full old Desc: "↑ Dégâts {{ColorLime}}+0.5#Les larmes d'Isaac infligent {{ColorLime}}dégâts x3{{ColorWhite}} à bout portant mais leurs dégâts diminuent avec le temps qu'elles passent en l'air"
	-- English: "↓ Tears deal less damage the longer they are airborne#Tears deal 3x damage at point blank range and no damage after 0.8 seconds"

	[C_ID .. 262] = "Double les dégâts infligés en perdant un cœur noir#Inflige 80 dégâts à tous les ennemis de la salle quand les PV totaux d'Isaac sont réduits à 1 cœur", -- Missing Page 2
	-- Full old Desc: "{{BlackHeart}} +1 cœur noir#Double les dégâts infligés en perdant un cœur noir#Inflige 80 dégâts à tous les ennemis de la salle quand les PV totaux d'Isaac sont réduits à 1 cœur"
	-- English: "Taking damage down to 1 heart damages all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[C_ID .. 263] = "Le temps de recharge de l'objet varie selon la rune", -- Clear Rune
	-- Full old Desc: "Déclenche l'effet de la rune ou pierre d'âme portée par Isaac sans la consommer#Le temps de recharge de l'objet varie selon la rune#Fait apparaître une rune"
	-- English: "{{Rune}} Triggers the effect of the rune Isaac holds without using it"

	[C_ID .. 276] = "Rend Isaac invulnérable et invoque un familier qui le suit#{{Warning}} Isaac subit un dégât si le familier touche un ennemi ou un projectile#Le cœur charge une vague de larmes quand Isaac tire et la crache quand les boutons de tir sont relâchés", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#The heart charges up when Isaac fires and releases a burst of tears when he stops#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 278] = "Ramasse les cœurs rouges au sol et convertit 1,5 cœurs rouges en 1 cœur noir, une araignée, une pilule, une carte ou une rune", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#Spawns a Black Heart, rune, card, pill, or spider for every 1.5 hearts picked up"

	[C_ID .. 280] = "Invoque des araignées bleues dans les salles hostiles#Envoûte les ennemis qui la touchent", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms#{{Charm}} Charms enemies it comes in contact with"

	[C_ID .. 283] = "Rejoue tous les objets sur piédestaux, les ressources, les rochers, les stats et tous les objets d'Isaac#Duplique une ressource aléatoire dans la salle#Rejoue la salle actuelle et affaiblit les ennemis", -- D100
	-- English: "Duplicates 1 pickup in the room#Rerolls Isaac's speed, tears, damage, range and passive items#Rerolls all pedestal items, pickups and rocks in the room#Restarts the room, respawns all enemies and devolves them"

	[C_ID .. 285] = "Transforme tous les ennemis de la salle en ennemis moins forts", -- D10
	-- English: "Devolves all enemies in the room#For instance, all Red Flies become Black Flies"

	[C_ID .. 286] = "Déclenche l'effet de la carte portée par Isaac sans la consommer#Le temps de recharge de l'objet dépend de la carte", -- Blank Card
	-- English: "Triggers the effect of the card Isaac holds without using it"

	[C_ID .. 287] = "Active l'effet de la {{ColorYellow}}Carte au Trésor{{ColorWhite}} {{Collectible54}}, la {{ColorYellow}}Boussole{{ColorWhite}} {{Collectible21}} ou la {{ColorYellow}}Carte Perdue{{ColorWhite}} {{Collectible246}}", -- Book of Secrets
	-- Full old Desc: "Active l'effet de la {{ColorYellow}}Carte au Trésor{{ColorWhite}} {{Collectible54}}, la {{ColorYellow}}Boussole{{ColorWhite}} {{Collectible21}} ou la {{ColorYellow}}Carte Perdue{{ColorWhite}} {{Collectible246}}#Ne donne que les effets qui ne sont pas déjà actifs#Quand tous les effets sont actifs, donne l'effet des {{ColorYellow}}Lunettes à Rayon X{{ColorWhite}} {{Collectible76}}#{{Timer}} L'effet dure un étage"
	-- English: "Highlights tinted and crawlspace rocks in the room#{{Timer}} Receive one of these effects for the floor:#{{IND}}{{NameC54}}#{{IND}}{{NameC21}}#{{IND}}{{NameC246}}#Only grants effects not already active#{{Collectible76}} If all effects are active, grants X-Ray Vision"

	[C_ID .. 289] = "Lance une flamme rouge dans la direction choisie#Les flammes disparaîssent après 10 secondes, ou après avoir infligé des dégâts ou bloqué des tirs 5 fois", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 4 times or after 10 seconds"

	[C_ID .. 291] = "Tue instantanément les ennemis et boss cacas#Transforme les ennemis de la salle en cacas#Éteint les feux et inonde le sol de la salle#Transforme la lave en sol franchissable", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses#Extinguishes fire places and fills the room with water#Turns lava pits into walkable ground"

	[C_ID .. 292] = "Utiliser l'objet avant un combat de boss transforme la récompense du combat en un Pacte avec le Diable", -- Satanic Bible
	-- Full old Desc: "{{BlackHeart}} +1 cœur noir#Utiliser l'objet avant un combat de boss transforme la récompense du combat en un Pacte avec le Diable"
	-- English: "{{DevilRoom}} Using the item before a boss fight makes the boss reward a devil deal#Purchasing these devil deals has the same consequences as those in Devil Rooms#Does not affect item pedestals in The Void floor"

	[C_ID .. 294] = "Repousse les ennemis et les projectiles#Projeter un ennemi contre un mur ou un obstacle lui inflige des dégâts", -- Butter Bean
	-- English: "Knocks back nearby enemies and projectiles#Enemies pushed into obstacles take 10 damage"

	[C_ID .. 295] = "Retire une pièce à Isaac#Inflige{{ColorLime}} dégâts x2{{CR}} à tous les ennemis dans la salle", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage + 10 to all enemies in the room#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "Convertit un cœur d'âme ou un cœur noir en un réceptacle de cœur", -- Converter
	-- English: "{{Heart}} Converts 1 Soul or Black Heart into 1 heart container"

	[C_ID .. 297] = "Donne selon l'étage :#SS1 : {{SoulHeart}}{{SoulHeart}}#SS2 : {{Key}}{{Key}}{{Bomb}}{{Bomb}}#Gr1 : Objet de boss#Gr2 : Objet de boss + {{SoulHeart}}{{SoulHeart}}#Pr1 : {{SoulHeart}}{{SoulHeart}}{{SoulHeart}}{{SoulHeart}}#Pr2 : 30{{Coin}}#Ut1 : 2 Objets de boss#Ut2 : La {{ColorYellow}}Bible {{Collectible33}}#??? / Néant : Rien#Shé : Objet diabolique + {{BlackHeart}}#Cat : Objet angélique + {{SoulHeart}}#Chambre Noire : Débloque le {{ColorYellow}}Carton de Déménagement {{Collectible523}}#Coffre : {{Coin}}#Maison : La {{ColorYellow}}Clé Rouge {{Collectible580}}", -- Pandora's Box
	-- English: "{{NoLB}}Spawns rewards based on floor:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#{{NoLB}}C1: Boss item; C2: C1 + 2{{SoulHeart}}#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Boss items#W2: {{Collectible33}} The Bible#???/Void: Nothing#Sheol: Devil item + 1{{BlackHeart}}#Cathe: Angel item + 1{{EternalHeart}}#{{NoLB}}Dark Room: Unlocks {{Collectible523}} Moving Box#Chest: 1{{Coin}}#Home: {{Collectible580}} Red Key"

	[C_ID .. 300] = "Isaac inflige des dégâts de contact aux ennemis", -- Aries
	-- Full old Desc: "↑ Vitesse {{ColorLime}}+0.25#Isaac inflige des dégâts de contact aux ennemis#Marcher suffisamment vite rend Isaac invulnérable aux dégâts de contact"
	-- English: "Moving above 0.85 Speed makes Isaac immune to contact damage and deals 25 damage to enemies"

	[C_ID .. 308] = "Isaac répand derrière lui une trainée d'eau qui inflige 66% de ses dégâts#La traînée d'eau hérite des effets des larmes d'Isaac", -- Aquarius
	-- English: "Isaac leaves a trail of creep#{{Damage}} The creep deals 66% of Isaac's damage per second and inherits his tear effects"

	[C_ID .. 315] = "Les larmes d'Isaac attirent les ennemis, ressources et babioles#L'attraction augmente selon la distance parcourue par la larme", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets#The attraction effect is much stronger at the end of the tears' path"

	[C_ID .. 319] = "Tire les même larmes qu'Isaac dans une direction cardinale aléatoire#{{DamageSmall}} Inflige 75% des dégâts d'Isaac", -- Cain's Other Eye
	-- English: "Shoots tears in random directions with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 323] = "Projette 8 larmes qui infligent {{ColorLime}}dégâts +5{{ColorWhite}} en cercle autour d'Isaac#Chaque larme tirée par Isaac recharge une barre de l'objet", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects, plus 5 damage#Recharges by shooting tears"

	[C_ID .. 325] = "Sépare la tête d'Isaac de son corps#Le joueur contrôle le corps#La tête est immobile et tire en même temps que le corps", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The body is controlled separately and gushes blood tears in the direction Isaac is shooting"

	[C_ID .. 326] = "Maintenir [Utiliser] vide la barre de charge#Une fois vide, Isaac devient invulnérable 1 seconde et crée des rayons de lumière au contact#Effectuer un blocage parfait envoie des rayons de lumière en croix#{{Warning}} Appuyer trop longtemps inflige des dégâts à Isaac", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#Isaac summons light beams on contact with enemies when invincible#If damage is blocked with perfect timing, shoot a 4-way holy beam and gain a brief shield#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 331] = "Les larmes d'Isaac sont entourées d'une aura qui inflige des dégâts", -- Godhead
	-- Full old Desc: "↑ Dégâts {{ColorLime}}+0.5#↓ Débit {{ColorError}}-0.3#↓ Vitesse des tirs {{ColorError}}-0.3#Larmes autoguidées#Les larmes d'Isaac sont entourées d'une aura qui inflige des dégâts"
	-- English: "Tears gain an aura that deals 60 damage per second"

	[C_ID .. 344] = "Fait apparaître {{ColorYellow}}Allumette {{Trinket41}}", -- Match Book
	-- Full old Desc: "{{BlackHeart}} +1 cœur noir#Fait apparaître 3 bombes#Fait apparaître {{ColorYellow}}Allumette {{Trinket41}}"
	-- English: "{{Trinket41}} Spawns Match Stick"

	[C_ID .. 352] = "Tire une énorme larme spectrale transperçante#{{Warning}} Augmente de deux cœurs les dégâts infligés à Isaac#Quand Isaac subit un dégât, il gagne {{ColorLime}}portée +1.5{{ColorWhite}}, laisse une traînée de sang corrosif derrière lui, et brise le canon#Le canon brisé devra recharger pendant 4 salles avant de pouvoir être utilisé à nouveau", -- Glass Cannon
	-- English: "{{Damage}} Shoots a large piercing spectral tear that does 10x Isaac's damage#{{Warning}} While held, taking damage:#↓ Removes an extra 2 hearts of health#↓ Breaks the cannon for a few rooms#↑ {{Range}} +1.5 Range and leaves a blood trail for the room#The extra damage can't kill Isaac#Self-damage does not trigger the effect"

	[C_ID .. 360] = "Imite les stats et effets des larmes d'Isaac#{{DamageSmall}} Inflige 75% des dégâts d'Isaac", -- Incubus
	-- English: "Shoots tears with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 365] = "Longe les murs et les obstacles et inflige des dégâts de contact#{{DamageSmall}} 30 dégâts par seconde", -- Lost Fly
	-- Full old Desc: "Longe les murs et les obstacles et inflige des dégâts de contact#Les ennemis à proximité la prennent pour cible#{{DamageSmall}} 30 dégâts par seconde"
	-- English: "Moves along walls/obstacles in the room#Nearby enemies target the fly"

	[C_ID .. 367] = "Les bombes d'Isaac répandent une flaque ralentissante et collent aux ennemis#Les ennemis tués par des bombes invoquent 2 à 4 araignées bleues", -- Sticky Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombes#Les bombes d'Isaac répandent une flaque ralentissante et collent aux ennemis#Les ennemis tués par des bombes invoquent 2 à 4 araignées bleues"
	-- English: "{{Slow}} Isaac's bombs stick to enemies and leave white slowing creep#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "Tirer dans la même direction augmente progressivement le débit jusqu'à {{ColorLime}}200%", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually increases fire rate up to 200% and decreases accuracy"

	[C_ID .. 374] = "{{Blank}} {{ColorSilver}}(50% à 9 Chance)", -- Holy Light
	-- Full old Desc: "Isaac tire parfois une larme sacrée qui frappe l'ennemi touché d'un rayon de lumière#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à 9 Chance)"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot holy tears, which spawn a beam of light on hit#{{Damage}} The beams deals 3x Isaac's damage"

	[C_ID .. 375] = "20% de chances de bloquer les projectiles ennemis#Rend Isaac invulnérable aux explosions et aux projectiles qui tombent du plafond ", -- Host Hat
	-- English: "Grants immunity to explosions and falling projectiles#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Les objets et ressources achetés à la boutique sont réapprovisionnés après chaque achat, permettant d'en acheter plusieurs#Le prix des objets réapprovisionnés augmente avec chaque achat", -- Restock
	-- English: "Buying an item from a Shop restocks it instantly#Restocked items increase in price each time"

	[C_ID .. 380] = "Les serrures s'ouvrent avec des pièces", -- Pay To Play
	-- Full old Desc: "{{Coin}} +5 Pièces#Les serrures s'ouvrent avec des pièces"
	-- English: "Locked blocks, doors and chests must be opened with coins instead of keys"

	[C_ID .. 382] = "Jeter la boule sur un ennemi le capture#Lancer une boule qui contient un ennemi le fait sortir et se battre aux côtés d'Isaac#Marcher sur la boule après avoir capturé un ennemi la recharge complètement", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns the capture as a friendly companion#Walking over the ball after a capture instantly recharges the item"

	[C_ID .. 384] = "Charge quand Isaac tire, puis se propulse à travers la salle et rebondit contre les murs quand les boutons de tirs sont relâchés", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-20 contact damage per hit depending on speed"

	[C_ID .. 386] = "Rejoue tous les obstacles de la salle", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)#Small chance to reroll obstacles into buttons, killswitches, crawlspaces or trapdoors"

	[C_ID .. 389] = "Fait apparaître une rune ou une pierre d'âme toutes les 7 ou 8 salles", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune or Soul Stone every 7-8 rooms"

	[C_ID .. 391] = "Les larmes ennemies peuvent infliger des dégâts aux autres ennemis#Un ennemi touché par la larme d'un autre ennemi attaquera celui-ci", -- Betrayal
	-- English: "Enemies can hit each other with their projectiles, and start infighting"

	[C_ID .. 393] = "15% de chances de tirer une larme empoisonnée#Entrer en contact avec un ennemi l'empoisonne#Les ennemis tués par le poison de contact ont 20% de chances de faire apparaitre un cœur noir", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Enemies killed by contact poison have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "Isaac et ses familiers tirent automatiquement vers une cible déplaçable avec les boutons de tir#Appuyer sur le bouton {{ColorSilver}}[Lâcher]{{ColorWhite}} met en pause le tir automatique", -- Marked
	-- Full old Desc: "↑ Débit {{ColorLime}}+0.7#↑ Portée {{ColorLime}}+3.0#Isaac et ses familiers tirent automatiquement vers une cible déplaçable avec les boutons de tir#Appuyer sur le bouton {{ColorSilver}}[Lâcher]{{ColorWhite}} met en pause le tir automatique"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground#Familiars shoot towards the target too#You can stop shooting and reset the target's location by pressing the drop button ({{ButtonRT}})"

	[C_ID .. 395] = "Remplace les larmes d'Isaac par des anneaux laser#La taille et les dégâts des anneaux augmentent avec la durée de la charge#100% de dégâts avec une charge complète", -- Tech X
	-- English: "Isaac's tears are replaced by a chargeable laser ring#Ring size and damage increases up to 100% with charge time"

	[C_ID .. 399] = "Tirer pendant 3 secondes puis relâcher les boutons de tir crée un anneau noir autour d'Isaac qui inflige des dégâts de contact", -- Maw of the Void
	-- English: "{{Chargeable}} Firing tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds"

	[C_ID .. 401] = "25% de chances de tirer une larme collante qui explose après quelques secondes", -- Explosivo
	-- English: "25% chance to shoot sticky tears#Sticky tears grow and explode after a few seconds, dealing Isaac's damage +60"

	[C_ID .. 405] = "Peut être projeté avec un double appui sur un bouton de tir#Rejoue les ressources et ennemis avec lesquels il entre en contact", -- GB Bug
	-- English: "{{Throwable}} Throwable (double-tap shoot)#Rerolls enemies and pickups it comes in contact with"

	[C_ID .. 407] = "Entoure Isaac d'une aura :#{{Blank}} {{ColorRed}}Rouge{{ColorWhite}} = Dégâts {{ColorLime}}+4.0#{{Blank}} {{ColorCyan}}Bleu{{ColorWhite}} = Débit {{ColorLime}}+4.0#{{Blank}} {{ColorYellow}}Jaune{{ColorWhite}} = Vitesse {{ColorLime}}+0.5#{{Blank}} {{ColorOrange}}Orange{{ColorWhite}} = Portée {{ColorLime}}+3.0#Subir un dégât désactive l'effet pour une salle puis le change", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and grants a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} +2 Fire rate#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +3 Range"

	[C_ID .. 408] = "Entoure parfois les ennemis tués d'un cercle noir qui inflige des dégâts de contact aux autres ennemis#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 30 Chance)", -- Athame
	-- English: "25% chance for a black brimstone ring to spawn around killed enemies#It deals 30x Isaac's damage over 2 seconds#{{Luck}} +2.5% chance per luck"

	[C_ID .. 416] = "Augmente la capacité du compteur de pièces à 999#Fait apparaître 1 à 3 pièces si terminer une salle n'aurait pas donné de récompense", -- Deep Pockets
	-- English: "{{Coin}} If clearing a room would yield no reward, spawns 1-3 coins#{{Coin}} Increases the coin cap to 999"

	[C_ID .. 417] = "Rebondit contre les murs entourée d'une aura#↑ Dégâts {{ColorLime}}+50%{{ColorWhite}} tant qu'Isaac reste dans l'aura#Inflige des dégâts aux ennemis dans l'aura", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 7.5-10 damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 421] = "Isaac pète et envoûte les ennemis à proximité", -- Kidney Bean
	-- English: "{{Charm}} Charms all enemies in close range"

	[C_ID .. 422] = "Ramène Isaac dans la salle précédente et annule toutes les actions faites, les ressources ramassées et les dégâts subis dans la salle où l'objet a été utilisé#{{Timer}} 3 utilisations par étage", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in#The rewind can be used three times per floor#{{Collectible66}} Acts as The Hourglass when out of rewinds, which slows enemies down for 8 seconds"

	[C_ID .. 432] = "Les bombes d'Isaac font parfois apparaître une ressource et ont 15% de chances d'envoûter les ennemis en explosant#Les bombes ne peuvent pas faire apparaître plus de 63 ressources par étage", -- Glitter Bombs
	-- Full old Desc: "{{Bomb}} +5 bombes#Les bombes d'Isaac font parfois apparaître une ressource et ont 15% de chances d'envoûter les ennemis en explosant#Les bombes ne peuvent pas faire apparaître plus de 63 ressources par étage"
	-- English: "{{Charm}} Bombs have a 63% chance to drop a random pickup and a 15% chance to charm enemies when they explode#The pickup spawn chance goes down by 1% for each spawn this floor"

	[C_ID .. 433] = "Suit Isaac avec un délai#Invoque des sangsues alliées quand un ennemi entre en contact avec l'ombre", -- My Shadow
	-- Full old Desc: "Suit Isaac avec un délai#Invoque des sangsues alliées quand un ennemi entre en contact avec l'ombre"
	-- English: "A small shadow follows Isaac#{{Friendly}} When an enemy touches the shadow a friendly black charger spawns for the room"

	[C_ID .. 437] = "Fait réapparaître tous les ennemis de la salle et ferme les portes#Terminer la salle à nouveau peut faire apparaître une ressource", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room"

	[C_ID .. 444] = "Toutes les 15 larmes tirées, Isaac crache une gerbe de larmes", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears"

	[C_ID .. 448] = "Quand Isaac subit un dégât, il gicle des larmes dans la direction où il tire et perd un demi-cœur rouge toutes les 20 secondes#Perdre un demi-cœur rouge a une chance de faire apparaître un cœur rouge#L'effet prend fin quand Isaac se soigne ou quand la prochaine perte le tuerait", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{BleedingOut}} Isaac bleeds, spewing tears in the direction he is shooting#The bleeding does half a Red Heart of damage every 20 seconds#The bleeding stops if a Red Heart is healed, all Red Hearts are empty, or the next damage would kill Isaac"

	[C_ID .. 450] = "{{Warning}} Toutes les 20 larmes, Isaac tire une de ses pièces#Toucher un ennemi avec une pièce le transforme en statue d'or et fait apparaître une pièce#Tuer un ennemi doré fait apparaître 1 à 3 pièces", -- Eye of Greed
	-- English: "{{Damage}} Every 20 tears, Isaac shoots a coin tear that deals x1.5 +10 damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-3 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "Double les effets des cartes de tarot ou leur donne un effet supplémentaire", -- Tarot Cloth
	-- Full old Desc: "Fait apparaître une carte ou une rune#Double les effets des cartes de tarot ou leur donne un effet supplémentaire"
	-- English: "{{Card}} Tarot card effects are doubled or enhanced"

	[C_ID .. 453] = "Les larmes d'Isaac se brisent en 1 à 3 petits morceaux d'os au contact d'un obstacle ou d'un ennemi", -- Compound Fracture
	-- Full old Desc: "↑ Portée {{ColorLime}}+0.38#Les larmes d'Isaac se brisent en 1 à 3 petits morceaux d'os au contact d'un obstacle ou d'un ennemi"
	-- English: "Tears shatter into 1-3 bone shards upon hitting anything"

	[C_ID .. 464] = "Change les récompenses de salle et d'ennemis d'élite selon ce qui manque à Isaac", -- Glyph of Balance
	-- Full old Desc: "{{SoulHeart}} +2 cœurs d'âme#Change les récompenses de salle et d'ennemis d'élite selon ce qui manque à Isaac"
	-- English: "Room clear rewards and champion enemy drops become whatever pickup Isaac needs the most"

	[C_ID .. 472] = "Tirer immobilise tous les familiers et les fait tirer en direction des ennemis#Arrêter de tirer téléporte les familiers à Isaac", -- King Baby
	-- English: "Other familiars follow it and automatically shoot at enemies#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 474] = "Se change en {{ColorYellow}}Canon de Verre", -- Broken Glass Cannon
	-- English: "Using the item turns it back into Glass Cannon"

	[C_ID .. 476] = "Fait apparaître une ressource du même type qu'une autre ressource dans la salle", -- D1
	-- English: "Duplicates a random pickup in the room#Duplicated pickups may not be identical to the original"

	[C_ID .. 477] = "Absorbe tous les objets sur piédestal dans la salle#{{ColorLightYellow}}Objets activables{{ColorWhite}} : Les utilisations suivantes de Néant déclenchent l'effet de tous les objets absorbés#{{ColorLightYellow}}Objets passifs{{ColorWhite}} : Augmente 2 stats aléatoires", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 489] = "Imite les effets de dé (sauf le {{ColorYellow}}Dé Compteur{{ColorWhite}} {{Collectible723}})#L'effet du dé peut être modifié en appuyant sur la touche {{ColorSilver}}[Lâcher] ", -- D Infinity
	-- Full old Desc: "Imite les effets de dé (sauf le {{ColorYellow}}Dé Compteur{{ColorWhite}} {{Collectible723}})#L'effet du dé peut être modifié en appuyant sur la touche {{ColorSilver}}[Lâcher] #Le temps de recharge varie selon le dé utilisé"
	-- English: "Can be made to act as any die item (except {{Name723}}) with the drop button ({{ButtonRT}})#Charge time varies based on the last die used and updates with every use"

	[C_ID .. 493] = "↑ Dégâts augmentés pour chaque réceptacle de cœur vide ", -- Adrenaline
	-- English: "↑ {{Damage}} Damage up for every empty heart container#The more empty heart containers, the bigger the bonus for each new one"

	[C_ID .. 494] = "Les larmes d'Isaac provoquent 1 ou 2 éclairs électriques à l'impact#Les éclairs infligent la moitié des dégâts d'Isaac et peuvent se propager d'un ennemi à l'autre", -- Jacob's Ladder
	-- English: "Tears spawn a spark of electricity on impact#Sparks deal half of Isaac's damage#Sparks can arc to up to 4 other enemies"

	[C_ID .. 495] = "{{Blank}} {{ColorSilver}}(50% à 10 Chance)", -- Ghost Pepper
	-- Full old Desc: "Isaac tire parfois une flamme bleue qui inflige des dégâts de contact, bloque les projectiles ennemis et disparait après 2 secondes#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à 10 Chance)"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a blue fire that blocks enemy shots and deals contact damage#Fires shrink and disappear after 2 seconds"

	[C_ID .. 497] = "Entrer dans une salle étourdit tous les ennemis et donne {{ColorLime}}vitesse +0.5#Tirer désactive l'effet, inflige des dégâts aux ennemis à proximité et donne {{ColorLime}}dégâts +10{{ColorWhite}} et {{ColorLime}}débit +10{{ColorWhite}} pendant 1 seconde", -- Camo Undies
	-- English: "{{Confusion}} Entering a room camouflages Isaac and confuses all enemies until a tear is shot#↑ {{Speed}} +0.5 Speed while cloaked#Uncloaking deals damage around Isaac and grants a very brief fire rate and damage up"

	[C_ID .. 501] = "{{Heart}} +1 réceptacle de cœur toutes les 25 pièces au compteur", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins Isaac has"

	[C_ID .. 503] = "{{LuckSmall}} Effet affecté par la statistique de chance", -- Little Horn
	-- Full old Desc: "Isaac tire parfois une larme qui tue les ennemis instantanément et inflige de gros dégâts aux boss#Permet à Isaac d'infliger des dégâts de contact#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(20% à 15 Chance)"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a tear that summons a Big Horn hand#The hand instantly kills enemies and deals 36 damage to bosses"

	[C_ID .. 504] = "Invoque une mouche immobile qui tire sur les ennemis à proximité", -- Brown Nugget
	-- Full old Desc: "Invoque une mouche immobile qui tire sur les ennemis à proximité#{{DamageSmall}} 3.5 dégâts par larme"
	-- English: "Spawns a fly that shoots at enemies"

	[C_ID .. 506] = "Toucher un ennemi dans le dos avec une larme inflige le double de dégâts et le fait saigner#Le saignement inflige des dégâts à l'ennemi selon sa vitesse de déplacement", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which makes enemies leave creep and take damage when they move"

	[C_ID .. 507] = "Inflige les dégâts d'Isaac et retire 10% des PV totaux des ennemis de la salle#Infliger des dégâts avec cet objet génère parfois un demi-cœur rouge", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts"

	[C_ID .. 508] = "Orbite autour d'Isaac#Inflige {{ColorLime}}dégâts x3{{CR}} et fait saigner les ennemis au contact#Le saignement inflige des dégâts à l'ennemi selon sa vitesse et lui fait répandre du sang corrosif", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which makes enemies take damage when they move#{{Damage}} Deals 1.5x Isaac's damage per second"

	[C_ID .. 509] = "Orbite autour d'Isaac, inflige des dégâts de contact et tire sur les ennemis à proximité", -- Bloodshot Eye
	-- Full old Desc: "Orbite autour d'Isaac, inflige des dégâts de contact et tire sur les ennemis à proximité#{{DamageSmall}} 20 dégâts par seconde#{{Blank}} 3.5 dégâts par larme"
	-- English: "Orbital that shoots a tear every 0.33 seconds to nearby enemies"

	[C_ID .. 514] = "Paralyse parfois les ennemis et projectiles#Les projectiles paralysés disparaissent#25% de chances de dupliquer une récompense de salle#{{LuckSmall}} Effet affecté par la statistique de chance", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#Paused projectiles disappear#25% chance to double room clear rewards"

	[C_ID .. 517] = "Permet à Isaac de poser plusieurs bombes sans délai#Les bombes d'Isaac ne se repoussent plus entre elles en explosant", -- Fast Bombs
	-- Full old Desc: "{{Bomb}} +7 Bombes#Permet à Isaac de poser plusieurs bombes sans délai#Les bombes d'Isaac ne se repoussent plus entre elles en explosant"
	-- English: "Removes the delay between bomb placements#Bombs don't deal knockback to each other"

	[C_ID .. 522] = "Entoure Isaac d'une aura qui repousse les ennemis et immobilise leurs projectiles#Après 3 secondes, les projectiles immobilisés sont renvoyés", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards#Pushes close enemies away during the effect"

	[C_ID .. 523] = "Utiliser l'objet absorbe jusqu'à 10 ressources ou objets dans la salle#Utiliser l'objet à nouveau pose les éléments absorbés sur le sol", -- Moving Box
	-- English: "Stores up to 10 pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Relie les larmes d'Isaac par des arcs électriques", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#Electricity deals 4.5x Isaac's damage per second"

	[C_ID .. 552] = "Ouvre une trappe vers l'étage suivant#{{UltraSecretRoom}} Permet de déterrer quelque chose d'enfoui dans la {{ColorTransform}}Chambre Noire", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 553] = "25% de chances de tirer une spore collante#Les spores explosent après 2.5 secondes, infligent des dégâts, empoisonnent les ennemis à proximité et libèrent d'autres spores", -- Mucormycosis
	-- English: "25% chance to shoot a sticky spore tear#{{Luck}} Not affected by luck#{{Poison}} Spores blow up after 2.5 seconds, dealing damage, poisoning nearby enemies and releasing more spores"

	[C_ID .. 554] = "Effraie les ennemis à proximité d'Isaac", -- 2Spooky
	-- English: "{{Fear}} Fears enemies in a small radius around Isaac"

	[C_ID .. 555] = "↓ Retire {{ColorError}}5 pièces {{ColorWhite}}à Isaac#{VAR:EFFECTLIST}", -- Golden Razor
	-- Full old Desc: "↑ Dégâts {{ColorLime}}+1.2 {{ColorWhite}}#↓ Retire {{ColorError}}5 pièces {{ColorWhite}}à Isaac#{{Coin}} +5 pièces la première fois qu'elle est ramassée"
	-- English: "{{Timer}} Pay 5 {{Coin}} coins and receive for the room:#{VAR:EFFECTLIST}"

	[C_ID .. 556] = "{{Timer}} L'effet dure une salle", -- Sulfur
	-- Full old Desc: "Active l'effet de {{ColorYellow}}Soufre{{ColorWhite}} {{Collectible118}}#{{Timer}} L'effet dure une salle"
	-- English: "{{Timer}} {{NameC118}} for the room#Using it multiple times in one room grants increased damage and a larger beam"

	[C_ID .. 557] = "Donne une prédiction ou fait apparaître un cœur d'âme, une carte, une rune ou une babiole", -- Fortune Cookie
	-- English: "Grants one of the following rewards:#A fortune#{{SoulHeart}} A Soul Heart#{{Rune}} A Rune or Soul Stone#{{Card}} A Tarot card#{{Trinket}} A Trinket"

	[C_ID .. 558] = "Isaac tire parfois 1 à 3 larmes supplémentaires dans une direction aléatoire", -- Eye Sore
	-- English: "Chance to shoot 1-3 extra tears in random directions#{{Luck}} Not affected by luck"

	[C_ID .. 559] = "Électrocute les ennemis à proximité d'Isaac", -- 120 Volt
	-- English: "Repeatedly zaps nearby enemies#{{Damage}} Electricity deals up to 3.75x Isaac's damage per second#Sparks can arc to up to 4 other enemies"

	[C_ID .. 560] = "Subir un dégât projette 10 larmes tout autour d'Isaac#↑ Débit {{ColorLime}}+1.2{{ColorWhite}} au premier dégât subi, {{ColorLime}}+0.4{{ColorWhite}} pour chaque dégât suivant", -- It Hurts
	-- English: "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac"

	[C_ID .. 562] = "Empêche les stats d'Isaac de diminuer pour le reste de la partie", -- Rock Bottom
	-- English: "↑ Prevents stats from being lowered for the rest of the run"

	[C_ID .. 563] = "Les bombes d'Isaac ont des effets aléatoires", -- Nancy Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombes#Les bombes d'Isaac ont des effets aléatoires"
	-- English: "Isaac's bombs explode with random effects"

	[C_ID .. 565] = "Pourchasse et inflige des dégâts aux ennemis#Après avoir tué assez d'ennemis, il s'énerve et peut aussi attaquer Isaac#Il peut être calmé si Isaac lui inflige assez de dégâts ou le fait exploser", -- Blood Puppy
	-- English: "Chases enemies#After killing 15 enemies, it deals more damage, spawns a half Red Heart every 10 kills, but tries to hurt Isaac#After killing 40 enemies, it deals even more damage, spawns full Red Hearts, and can destroy rocks#Dealing enough damage to it returns it to its first phase"

	[C_ID .. 566] = "{{HalfSoulHeart}} +1 demi-cœur d'âme à chaque nouvel étage#Révèle le boss et le contenu de la Salle du Trésor dans le cauchemar entre les étages", -- Dream Catcher
	-- English: "{{HalfSoulHeart}} +1 half Soul Heart when entering a new floor#The stage transition nightmare reveals the next floor's boss fight and Treasure Room item"

	[C_ID .. 567] = "↑ Débit {{ColorLime}}+0.4{{ColorWhite}} pour chaque salle terminée sans subir de dégâts {{ColorSilver}}(jusqu'à {{ColorLime}}débit +2{{ColorSilver}})#Subir un dégât remet le bonus à zéro", -- Paschal Candle
	-- English: "↑ {{Tears}} Clearing a room without taking damage grants +0.4 Fire rate#Caps at +2 Fire rate {{ColorSilver}}(5 rooms){{CR}}"

	[C_ID .. 568] = "Appuyer 2 fois sur un bouton de tir invoque un bouclier qui repousse les ennemis et renvoie les projectiles et lasers#{{Timer}} L'effet dure 1 seconde#{{Timer}} 3 secondes de recharge", -- Divine Intervention
	-- English: "Double-tapping a fire key creates a shield#The shield lasts 1 second, pushes enemies away and reflects enemy projectiles and lasers"

	[C_ID .. 569] = "Au début de chaque étage, vide Isaac de tous ses cœurs rouges sans le tuer#Chaque cœur perdu augmente les dégâts et la vitesse pour l'étage#Chaque demi-cœur perdu compte comme un dégât individuel infligé à Isaac", -- Blood Oath
	-- English: "{{Warning}} Entering a new floor drains all of Isaac's Red Hearts, but grants speed and damage bonuses for each heart lost#Each half heart lost counts as an individual hit for on-hit effects"

	[C_ID .. 570] = "Donne un effet différent à chaque larme d'Isaac", -- Playdough Cookie
	-- English: "Each of Isaac's tears have a different color and status effect"

	[C_ID .. 571] = "Rend Isaac invulnérable aux flaques et aux piques", -- Orphan Socks
	-- Full old Desc: "↑ Vitesse {{ColorLime}}+0.3#{{SoulHeart}} +2 cœurs d'âme#Rend Isaac invulnérable aux flaques et aux piques"
	-- English: "Immune to creep and floor spikes"

	[C_ID .. 572] = "Permet de contrôler les larmes d'Isaac en vol", -- Eye of the Occult
	-- Full old Desc: "↑ Dégâts {{ColorLime}}+1.0#↑ Portée {{ColorLime}}+7.5#↓ Vitesse des tirs {{ColorError}}-0.16#Permet de contrôler les larmes d'Isaac en vol"
	-- English: "Isaac's tears can be controlled in mid-air"

	[C_ID .. 573] = "20% de chances de tirer une larme spectrale bonus qui orbite autour d'Isaac", -- Immaculate Heart
	-- Full old Desc: "↑ Dégâts {{ColorLime}}+20%#{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soin complet#20% de chances de tirer une larme spectrale bonus qui orbite autour d'Isaac"
	-- English: "20% chance to shoot an extra orbiting spectral tear"

	[C_ID .. 574] = "Entoure Isaac de deux auras qui infligent des dégâts aux ennemis#L'aura intérieure inflige plus de dégâts que l'aura extérieure", -- Monstrance
	-- English: "Isaac is surrounded by a damaging aura#The closer enemies are to Isaac, the more damage the aura deals to them"

	[C_ID .. 575] = "Se niche dans la tête d'Isaac et tire 4 larmes ralentissantes#Subir un dégât fait parfois sortir l'araignée#Une fois sortie, l'araignée tire deux fois plus vite et bondit sur les ennemis#{{LuckSmall}} Effet affecté par la statistique de chance#{{DamageSmall}} 1.5 dégâts par larme", -- The Intruder
	-- English: "{{Slow}} Buries itself in Isaac's head and shoots 4 extra slowing tears that deal 1.5 damage#Taking damage can make the spider exit the head and chase enemies"

	[C_ID .. 576] = "Détruire un caca fait apparaître 1 à 4 petits cacas amicaux#Leur type dépend du type de caca détruit#Tous les ennemis {{ColorCyan}}crottes{{ColorWhite}} deviennent amicaux#Remplace certains rochers par des cacas", -- Dirty Mind
	-- English: "All Dip (small poop) enemies are friendly#Destroying poop spawns 1-4 Dips#Dip type depends on the poop type#Rocks may be replaced with poop"

	[C_ID .. 577] = "Une fois utilisé, ajoute un objet gratuit à tous les futurs piédestaux#{{Warning}} Dès qu'Isaac subit un dégât, l'épée peut tomber et le tuer à tout moment#Une fois l'épée tombée, les objets sur piédestal ne sont plus doublés", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 578] = "Répand une grande flaque corrosive sur le sol", -- Free Lemonade
	-- English: "Creates a large pool of yellow creep#The creep deals 24 damage per second"

	[C_ID .. 579] = "↑ Dégâts {{ColorLime}}x3 +3.5#Remplace les larmes d'Isaac par une épée#Charger l'attaque fait tournoyer l'épée autour d'Isaac#Si les PV d'Isaac sont égaux ou supérieurs à ses réceptacles de cœur, l'épée tire des projectiles", -- Spirit Sword
	-- English: "Instead of shooting tears, swing a sword#{{Damage}} The sword deals 3x Isaac's damage +3.5 and swings as fast as the fire button is tapped#{{Chargeable}} Charging does a spin attack + projectile shot#Shoots projectiles with swings at full health"

	[C_ID .. 580] = "Ouvre une porte vers une salle rouge dans les murs marqués d'une porte rouge#Les salles rouges peuvent être des salles spéciales#Sortir de la grille de 13x13 téléporte Isaac dans la salle d'erreur", -- Red Key
	-- English: "Creates a red room adjacent to a regular room, indicated by a door outline#Red Rooms can be special rooms#{{ErrorRoom}} Entering a room outside the 13x13 floor map teleports Isaac to the I AM ERROR room"

	[C_ID .. 581] = "Pourchasse et détruit les projectiles ennemis", -- Psy Fly
	-- Full old Desc: "Pourchasse et détruit les projectiles ennemis#Inflige des dégâts de contact#{{DamageSmall}} 15 dégâts par seconde"
	-- English: "Chases and deflects enemy projectiles"

	[C_ID .. 582] = "Déforme l'écran#L'effet peut être cumulé", -- Wavy Cap
	-- Full old Desc: "↑ Débit {{ColorLime}}+0.75#↓ Vitesse {{ColorError}}-0.03#Déforme l'écran#L'effet peut être cumulé"
	-- English: "Distorts the screen#Takes longer to recharge each use#Leaving or clearing rooms reduces the effects"

	[C_ID .. 583] = "Poser une bombe en tirant la propulse dans la direction du tir", -- Rocket in a Jar
	-- Full old Desc: "{{Bomb}} +5 Bombes#Poser une bombe en tirant la propulse dans la direction du tir"
	-- English: "Placing a bomb while shooting fires a rocket in that direction instead"

	[C_ID .. 584] = "Combiner le livre avec un autre objet activable invoque un feu follet spécial#Transforme le premier Pacte avec le Diable en Offrande des Anges", -- Book of Virtues
	-- Full old Desc: "Invoque un feu follet qui tire des larmes spectrales#Combiner le livre avec un autre objet activable invoque un feu follet spécial#Transforme le premier Pacte avec le Diable en Offrande des Anges"
	-- English: "Spawns an orbital wisp familiar that shoots spectral tears but can be destroyed#Can be combined with a second active item to create special wisps#{{AngelRoom}} Turns the first Devil Room into an Angel Room#{{AngelRoom}} Allows Angel Rooms to spawn after taking a Devil deal"

	[C_ID .. 585] = "Doit être chargée en ramassant des cœurs d'âme#Fait apparaître 2 objets angéliques et 3 cœurs d'âme {{ColorSilver}}(1 objet angélique et 2 cœurs d'âme si un Pacte avec le Diable a été signé)", -- Alabaster Box
	-- English: "Must be charged by picking up Soul Hearts, then spawns:#{{SoulHeart}} Three Soul Hearts#{{AngelRoom}} Two Angel Room items#{{DevilRoom}} Only spawns 2 Soul Hearts and 1 Angel item if a Devil deal was taken previously"

	[C_ID .. 586] = "Fait apparaître une échelle vers une boutique angélique dans la première salle d'un étage#L'échelle disparaît quand Isaac quitte la salle où elle se trouve", -- The Stairway
	-- English: "Spawns a ladder in the first room of every floor that leads to a unique {{AngelRoom}} Angel Room shop with items and pickups"

	[C_ID .. 588] = "Déclenche {{ColorCard}}XIX-Le Soleil {{Card20}}", -- Sol
	-- Full old Desc: "Révèle l'emplacement de la salle de boss#Après avoir battu un boss:#↑ Dégâts {{ColorLime}}+3.0#↑ Chance {{ColorLime}}+1.0#Recharge entièrement l'objet activable#Retire tous les fléaux#Déclenche {{ColorCard}}XIX-Le Soleil {{Card20}}"
	-- English: "{{BossRoom}} Reveals the location of the Boss Room#{{Timer}} When the floor boss is defeated, receive for the floor:#{VAR:EFFECTLIST}#{{NameK20}} effect#{{Battery}} Fully recharges the active item#{{CurseBlind}} Removes any curses"

	[C_ID .. 589] = "Ajoute une salle secrète et super secrète à chaque étage#Révèle la position d'une des quatre salles secrètes#Une lumière dans les salles secrètes augmente le débit pour l'étage et donne un demi-cœur d'âme", -- Luna
	-- English: "Adds an extra {{SecretRoom}} Secret Room and {{SuperSecretRoom}} Super Secret Room to each floor#Reveals one Secret Room each floor#{{Timer}} Secret Rooms contain a beam of light that grant for the floor:#↑ {{Tears}} +0.5 Fire rate#↑ {{Tears}} Additional +0.5 Fire rate from the first beam per floor#{{HalfSoulHeart}} Half a Soul Heart"

	[C_ID .. 590] = "Les portes restent ouvertes en permanence", -- Mercurius
	-- Full old Desc: "↑ Vitesse {{ColorLime}}+0.4#Les portes restent ouvertes en permanence"
	-- English: "Most doors stay permanently open"

	[C_ID .. 591] = "Envoûte les ennemis à proximité d'Isaac", -- Venus
	-- Full old Desc: "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soin complet#Envoûte les ennemis à proximité d'Isaac"
	-- English: "{{Charm}} Charms nearby enemies"

	[C_ID .. 592] = "Les larmes d'Isaac infligent des dégâts variables, repoussent les ennemis et détruisent les obstacles", -- Terra
	-- Full old Desc: "↑ Dégâts {{ColorLime}}+1.0#Les larmes d'Isaac infligent des dégâts variables, repoussent les ennemis et détruisent les obstacles"
	-- English: "Replaces Isaac's tears with rocks#Rocks deal variable damage, can destroy obstacles and have increased knockback"

	[C_ID .. 593] = "Appuyer 2 fois sur un bouton de déplacement fait se ruer Isaac#La ruée rend Isaac invulnérable et inflige {{ColorLime}}dégâts x3{{ColorWhite}} au contact#{{Timer}} 3 secondes de recharge", -- Mars
	-- English: "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown"

	[C_ID .. 595] = "7 larmes orbitent Isaac en entrant dans une salle#Les projectiles ennemis entrent parfois en orbite autour d'Isaac", -- Saturnus
	-- English: "Entering a room causes 7 tears to orbit Isaac#Those tears last for 13 seconds and deal 1.5x Isaac's damage +5#Enemy projectiles have a chance to orbit Isaac"

	[C_ID .. 596] = "Isaac tire des larmes de glace ralentissantes#Tuer un ennemi le gèle", -- Uranus
	-- English: "{{Freezing}} Isaac shoots petrifying tears that freeze enemies on death#Touching a frozen enemy makes it slide away and explode into 10 ice shards"

	[C_ID .. 597] = "Ne pas tirer augmente progressivement le débit#Tirer diminue le débit jusqu'à ce qu'il revienne à sa valeur de base", -- Neptunus
	-- English: "{{Tears}} Not shooting builds up a tear bonus over 3 seconds#The tear bonus decreases as Isaac shoots"

	[C_ID .. 598] = "Diminue fortement la taille d'Isaac et lui permet de passer entre les obstacles et sous certains projectiles", -- Pluto
	-- Full old Desc: "↑ Débit {{ColorLime}}+0.7#Diminue fortement la taille d'Isaac et lui permet de passer entre les obstacles et sous certains projectiles"
	-- English: "Significantly shrinks Isaac, allowing him to squeeze between objects#Projectiles can pass over him"

	[C_ID .. 599] = "Fait apparaître une Salle Maudite {{CursedRoom}} supplémentaire à chaque étage#Les Salles Maudites sont de meilleure qualité et contiennent une pièce", -- Voodoo Head
	-- English: "{{CursedRoom}} Spawns an additional Curse Room each floor#Improves Curse Room layouts and rewards#{{Coin}} Spawns a coin in every Curse Room"

	[C_ID .. 601] = "Les chances d'ouvrir l'Antre du Diable ou le Refuge des Anges diminuent moins", -- Act of Contrition
	-- Full old Desc: "↑ Débit {{ColorLime}}+0.7#{{EternalHeart}} +1 cœur éternel#Permet au Refuge des Anges d'apparaître si un Pacte avec le Diable a été signé#Les chances d'ouvrir l'Antre du Diable ou le Refuge des Anges diminuent moins"
	-- English: "{{AngelChance}} Allows Angel Rooms to spawn after taking a devil deal#Taking Red Heart damage doesn't reduce Devil/Angel Room chance as much"

	[C_ID .. 602] = "Ouvre une trappe vers l'arrière-boutique dans chaque Boutique {{Shop}}#L'arrière-boutique peut proposer des babioles, des ressources et des objets de n'importe quelle banque", -- Member Card
	-- English: "{{Shop}} Opens a trapdoor in every Shop#The trapdoor leads to an underground shop that sells trinkets, runes, cards, special hearts and items from any pool"

	[C_ID .. 603] = "Recharge complètement l'objet activable", -- Battery Pack
	-- Full old Desc: "Fait apparaître 2 à 4 piles#Recharge complètement l'objet activable"
	-- English: "{{Battery}} Fully recharges the active item"

	[C_ID .. 604] = "Permet à Isaac de soulever et lancer les obstacles#Les obstacles ramassés peuvent être transportés d'une salle à l'autre", -- Mom's Bracelet
	-- English: "Allows Isaac to pick up and throw rocks, TNT, poops, friendly Dips, Hosts and other obstacles#Allows carrying them between rooms"

	[C_ID .. 606] = "{{LuckSmall}} Effet affecté par la statistique de chance", -- Ocular Rift
	-- Full old Desc: "Isaac tire parfois une larme vortex qui crée une faille là où elle atterrit#Les failles attirent les ennemis, ressources et projectiles à proximité#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(20% à 15 Chance)"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot tears that create rifts where they land#Rifts do 3x Isaac's damage per second and pull in nearby enemies, pickups, and projectiles"

	[C_ID .. 607] = "Tire des gerbes de larmes dans toutes les directions", -- Boiled Baby
	-- Full old Desc: "Tire des gerbes de larmes dans toutes les directions#{{DamageSmall}} 3.5 ou 5.25 dégâts par larme"
	-- English: "Shoots chaotic bursts of tears in all directions"

	[C_ID .. 608] = "Tire des larmes de glace#Gèle les ennemis qu'il tue#{{DamageSmall}} 3.5 dégâts par larme", -- Freezer Baby
	-- English: "{{Petrify}} Shoots petrifying tears that deal 3.5 damage#{{Freezing}} Freezes enemies upon killing them"

	[C_ID .. 609] = "{{ColorLime}}75%{{ColorWhite}} de chances de rejouer les objets de la salle#{{ColorError}}25%{{ColorWhite}} de chances de les faire disparaître", -- Eternal D6
	-- English: "Rerolls all pedestal items in the room#Has a 25% chance to delete items instead of rerolling them"

	[C_ID .. 610] = "Plonge sur l'ennemi responsable du premier dégât infligé à Isaac dans la salle et crée une vague de rochers, puis pourchasse les ennemis", -- Bird Cage
	-- English: "Leaps on the enemy that deals the first damage to Isaac in a room#Deals 45 damage and releases a rock wave#Chases enemies afterwards for 6.5 contact damage per second"

	[C_ID .. 611] = "Isaac hurle, inflige des dégâts et repousse les ennemis à proximité#Plus l'objet est chargé, plus le hurlement est puissant", -- Larynx
	-- English: "Isaac screams, damages and knocks back nearby enemies#The scream gets stronger the more charges the item has"

	[C_ID .. 612] = "Suit Isaac et meurt si elle subit un dégât#Si elle est encore vivante en entrant dans un nouvel étage, elle peut donner :#{{SoulHeart}} 3 cœurs d'âme#{{EternalHeart}} 2 cœurs éternels#{{AngelRoom}} 1 objet angélique#{{TreasureRoom}} 1 objet de Salle du Trésor", -- Lost Soul
	-- English: "Dies in one hit and respawns at the start of the next floor#If it is brought alive to the next floor, it can spawn:#{{SoulHeart}} 3 Soul Hearts#{{EternalHeart}} 2 Eternal Hearts#{{TreasureRoom}} A Treasure Room item#{{AngelRoom}} An Angel Room item"

	[C_ID .. 614] = "Les explosions des bombes d'Isaac répandent une flaque de sang corrosif#Permet à Isaac de sacrifier un demi-cœur pour placer une bombe s'il n'en a pas", -- Blood Bombs
	-- Full old Desc: "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soigne 5 cœurs rouges#Les explosions des bombes d'Isaac répandent une flaque de sang corrosif#Permet à Isaac de sacrifier un demi-cœur pour placer une bombe s'il n'en a pas"
	-- English: "{{HalfHeart}} If Isaac has no bombs, one can be placed at the cost of half a heart#Isaac's bombs leave red creep"

	[C_ID .. 615] = "Repousse les ennemis ou projectiles sur le point de toucher Isaac, puis devient inactif jusqu'à ce qu'Isaac s'approche de lui", -- Lil Dumpy
	-- English: "Deflects an enemy or projectile right before Isaac would take damage from it#Chance to deflect projectiles near it#Needs to be touched after deflecting to be reactivated"

	[C_ID .. 616] = "{{LuckSmall}} Effet affecté par la statistique de chance", -- Bird's Eye
	-- Full old Desc: "Isaac tire parfois une flamme orange qui bloque les projectiles ennemis et inflige des dégâts#Les flammes rapetissent au contact ou disparaissent après 10 secondes#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à 10 Chance)"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a red fire that blocks enemy shots and deals contact damage#Fires disappear after blocking 4 shots, dealing damage 4 times or after 10 seconds"

	[C_ID .. 617] = "{{LuckSmall}} Effet affecté par la statistique de chance", -- Lodestone
	-- Full old Desc: "Isaac tire parfois une larme magnétisante#Les ennemis magnétisés attirent les ressources, projectiles et ennemis #{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 5 Chance)"
	-- English: "{{Magnetize}} {VAR:LUCKCHANCE}% chance to shoot magnetizing tears#Magnetized enemies attract nearby pickups, projectiles and enemies"

	[C_ID .. 618] = "{{LuckSmall}} Effet affecté par la statistique de chance", -- Rotten Tomato
	-- Full old Desc: "Isaac tire parfois une larme qui marque les ennemis#Les ennemis marqués sont pris pour cible par les autres ennemis#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 5 Chance)"
	-- English: "{{Bait}} {VAR:LUCKCHANCE}% chance to shoot tears that mark enemies#Marked enemies are targeted by other enemies"

	[C_ID .. 619] = "A un effet différent pour chaque personnage", -- Birthright
	-- English: "Has a different effect for each character"

	[C_ID .. 621] = "Le bonus de dégâts diminue progressivement sur une période de 3 minutes jusqu'à retourner à zéro#Tuer des ennemis ralentit la diminution", -- Red Stew
	-- Full old Desc: "{{HealingRed}} Soin complet#↑ Dégâts {{ColorLime}}+21.6#Le bonus de dégâts diminue progressivement sur une période de 3 minutes jusqu'à retourner à zéro#Tuer des ennemis ralentit la diminution"
	-- English: "The damage up wears off over 3 minutes#Killing enemies while the effect is active extends it"

	[C_ID .. 622] = "Retire tous les objets et ressources d'Isaac#Téléporte Isaac dans une pièce où il peut choisir parmi 3 objets pour remplacer chaque objet perdu#Sortir de cette salle mène Isaac à l'étage suivant", -- Genesis
	-- English: "Removes all of Isaac's items and pickups#Teleports Isaac to a bedroom with pickups and chests#For every item removed, Isaac can choose between 3 items from the same pool#Leaving the bedroom takes Isaac to the next floor"

	[C_ID .. 623] = "Permet à Isaac de jeter une de ses clés pour infliger des dégâts, détruire des obstacles ou ouvrir des serrures#Tuer un ennemi avec une clé peut faire apparaître le contenu d'un coffre", -- Sharp Key
	-- Full old Desc: "{{Key}} +5 Clés#Permet à Isaac de jeter une de ses clés pour infliger des dégâts, détruire des obstacles ou ouvrir des serrures#Tuer un ennemi avec une clé peut faire apparaître le contenu d'un coffre"
	-- English: "Throws one of Isaac's keys in the direction he shoots#Thrown keys deal damage, destroy obstacles, and open doors#Enemies killed with keys can spawn the contents of a chest, including items"

	[C_ID .. 625] = "{VAR:TIMEDEFFECT}", -- Mega Mush
	-- Full old Desc: "↑ Dégâts {{ColorLime}}x4#↑ Portée {{ColorLime}}+2#↓ Débit {{ColorError}}-1.9#Rend Isaac géant, invulnérable et lui permet de tout détruire au contact#{{Timer}} L'effet dure 30 secondes et persiste entre les salles"
	-- English: "{VAR:TIMEDEFFECT}#Gigantifies Isaac#Ability to crush enemies and obstacles#Persists between rooms and floors"

	[C_ID .. 627] = "Le couteau inflige des dégâts et peut ouvrir une porte faite de chair", -- Knife Piece 2
	-- Full old Desc: "Combiné avec la {{ColorYellow}}poignée{{ColorWhite}} {{Collectible626}}, forme un couteau#Le couteau inflige des dégâts et peut ouvrir une porte faite de chair#{{DamageSmall}} 25 dégâts par seconde"
	-- English: "Turns into a throwable knife that deals 25 damage when combined with {{NameC626}}#The knife can open a door made of flesh"

	[C_ID .. 628] = "Téléporte Isaac dans un étage contenant tous les objets du jeu#Après avoir choisi un objet, Isaac est renvoyé dans la salle où il a utilisé l'Acte de Décès", -- Death Certificate
	-- English: "Teleports Isaac to a floor that contains every item in the game#Choosing an item from this floor teleports Isaac back to the room he came from"

	[C_ID .. 629] = "Suit Isaac, inflige des dégâts de contact et tire sur les projectiles ennemis pour les détruire", -- Bot Fly
	-- Full old Desc: "Suit Isaac, inflige des dégâts de contact et tire sur les projectiles ennemis pour les détruire#{{DamageSmall}} 3 dégâts par seconde"
	-- English: "Shoots shielded tears to destroy enemy projectiles"

	[C_ID .. 631] = "Découpe tous les ennemis et boss de la salle en 2 versions plus petites avec moins de vie#Inflige 25 dégâts aux ennemis trop petits pour être découpés", -- Meat Cleaver
	-- English: "Splits all enemies in the room into 2 smaller versions with 40% health#Enemies that naturally split (like Envy) take enough damage to split instead#Deals 25 damage to enemies that can't be split"

	[C_ID .. 632] = "Rend Isaac invulnérable au poison, à la terreur et au gaz toxique", -- Evil Charm
	-- Full old Desc: "↑ Chance {{ColorLime}}+2.0#Rend Isaac invulnérable au poison, à la terreur et au gaz toxique"
	-- English: "Immune to {{Burning}} burn, {{Confusion}} confusion, {{Fear}} fear, and {{Poison}} poison effects"

	[C_ID .. 634] = "Crée une fissure dans le sol des salles hostiles#Marcher sur une fissure invoque un fantôme qui pourchasse les ennemis puis explose", -- Purgatory
	-- English: "Red cracks spawn on the ground in hostile rooms#Walking over the cracks summons homing exploding ghosts"

	[C_ID .. 635] = "Peut être déplacée avec les boutons de tir#Utiliser l'objet inverse la position d'Isaac avec celle du familier#Se téléporter détruit ou inflige des dégâts à ce qui se trouve au point d'arrivée", -- Stitches
	-- English: "Spawns a familiar that moves in the direction Isaac shoots#On use, Isaac swaps places with the familiar and becomes briefly invincible#Teleporting onto things can damage or destroy them"

	[C_ID .. 636] = "Relance une partie depuis le premier étage mais conserve les stats, ressources et objets obtenus par Isaac#Ne remet pas le chronomètre à zéro", -- R Key
	-- English: "Restarts the entire run#All items, trinkets, stats and pickups collected are kept#The timer does not reset"

	[C_ID .. 637] = "{{Blank}} {{ColorSilver}}(100% à 9 Chance)", -- Knockout Drops
	-- Full old Desc: "Isaac tire parfois une larme poing qui repousse fortement les ennemis et les étourdit#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 9 Chance)"
	-- English: "{{Confusion}} {VAR:LUCKCHANCE}% chance to shoot a fist that inflicts confusion and extreme knockback#Enemies take damage when they get knocked into a wall/obstacle"

	[C_ID .. 638] = "Utiliser l'objet et tirer dans une direction lance une gomme qui efface un ennemi si elle le touche#Les ennemis effacés n'apparaissent plus pour le reste de la partie#{{Timer}} 1 utilisation par étage", -- Eraser
	-- English: "Throws an eraser that instantly kills an enemy#Prevents the erased enemy from spawning for the rest of the run#Deals 15 damage to bosses#Can only be used once per floor"

	[C_ID .. 640] = "Utiliser l'objet ouvre et ferme l'urne#L'urne ouverte remplace les larmes d'Isaac par des flammes bleues#Tirer quand l'urne est ouverte fait baisser les charges de l'urne#Tuer un ennemi ajoute une charge à l'urne", -- Urn of Souls
	-- English: "Spews a stream of flames#Killing an enemy adds a charge to the urn"

	[C_ID .. 641] = "Pend une traînée de larmes derrière Isaac dans les salles hostiles", -- Akeldama
	-- English: "Creates a chain of tears behind Isaac in hostile rooms#The tears deal 3.5 damage"

	[C_ID .. 642] = "Remplace 1 réceptacle de cœur ou 2 cœurs d'âme par un cœur brisé#Fait apparaître un objet qui provient de la banque d'objets de la salle#{{Warning}} Si Isaac ne garde pas l'objet après l'avoir utilisé, il a une chance de remplacer les futurs objets de la partie", -- Magic Skin
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Turns 1 heart container or 1 Bone Heart or 2 Soul Hearts into a Broken Heart#{{Warning}} Replaces future items if Isaac isn't holding it {{ColorSilver}}(33% after 1 use, 50% after 2, 100% after 3)#Lower chance if Magic Skin is on a pedestal on the current floor"

	[C_ID .. 643] = "Tirer pendant 2.5 secondes charge un rayon de lumière", -- Revelation
	-- Full old Desc: "{{SoulHeart}} +2 cœurs d'âme#Permet à Isaac de voler#Tirer pendant 2.5 secondes charge un rayon de lumière"
	-- English: "{{Chargeable}} Chargeable high damage holy beam#Does not replace Isaac's tears"

	[C_ID .. 644] = "↑ Augmente la statistique la plus faible d'Isaac#Fait apparaître la ressource qui manque le plus à Isaac", -- Consolation Prize
	-- English: "↑ Increases Isaac's lowest stat out of Speed, Fire rate, Damage, and Range#Spawns either 3 {{Coin}} coins, 1 {{Bomb}} bomb, or 1 {{Key}} key depending on what Isaac has the least of"

	[C_ID .. 645] = "Orbite autour d'Isaac, bloque les projectiles ennemis et inflige des dégâts de contact#Réapparaît 5 secondes après avoir disparu#{{DamageSmall}} 3.5 dégâts par seconde", -- Tinytoma
	-- Full old Desc: "Orbite autour d'Isaac, bloque les projectiles ennemis et inflige des dégâts de contact#Après avoir subi 3 dégâts, se sépare en parties plus petites puis en araignées bleues quand elles meurent#Réapparaît 5 secondes après avoir disparu#{{DamageSmall}} 3.5 dégâts par seconde"
	-- English: "Large orbital that blocks shots#Splits into smaller versions of itself upon taking 3 hits#The smaller versions break into blue spiders#Respawns 5 seconds after fully disappearing"

	[C_ID .. 646] = "Les explosions des bombes d'Isaac crachent 4 lasers de sang en forme de +", -- Brimstone Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombes#Les explosions des bombes d'Isaac crachent 4 lasers de sang en forme de +"
	-- English: "{{Collectible118}} Isaac's bombs release a 4-way blood beam#The beams don't hurt Isaac"

	[C_ID .. 647] = "Les objets activables ne se rechargent plus en terminant les salles mais en infligeant des dégâts", -- 4.5 Volt
	-- English: "Clearing rooms no longer charges active items#Dealing damage to enemies slowly fills up the charge bar#Damage needed per charge increases each floor"

	[C_ID .. 649] = "Se propulse en diagonale, tire des larmes derrière elle et inflige des dégâts de contact", -- Fruity Plum
	-- Full old Desc: "Se propulse en diagonale, tire des larmes derrière elle et inflige des dégâts de contact#{{DamageSmall}} 3 dégâts par larme#{{Blank}} 6 dégâts par seconde"
	-- English: "Propels herself diagonally around the room, firing tears in her path that deal 3 damage"

	[C_ID .. 650] = "Invoque une {{ColorCyan}}Prunelle{{ColorWhite}} amicale dans la salle#{{Timer}} L'effet dure 10 secondes", -- Plum Flute
	-- English: "{{Timer}} Summons a friendly Baby Plum in the room for 10 seconds"

	[C_ID .. 651] = "Se déplace lentement vers la salle de boss#{{Blank}} Être dans son aura donne :#↑ Dégâts {{ColorLime}}x1.8#{VAR:EFFECTLIST}", -- Star of Bethlehem
	-- Full old Desc: "Se déplace lentement vers la salle de boss#{{Blank}} Être dans son aura donne :#↑ Dégâts {{ColorLime}}x1.8#↑ Débit {{ColorLime}}x2.5#Larmes autoguidées#Chance de nullifier les dégâts subis"
	-- English: "Slowly travels from the first room of the floor to the {{BossRoom}} Boss Room#Moves faster if you're ahead of it, and slower if you're behind it#Standing in its aura grants:#{VAR:EFFECTLIST}#50% chance to ignore damage"

	[C_ID .. 652] = "Peut être poussé par Isaac#Ralentit les ennemis et inflige des dégâts de contact#Gèle les ennemis qu'il tue#{{DamageSmall}} 17.5 dégâts par seconde", -- Cube Baby
	-- English: "Can be kicked around by walking into it#{{Slow}} Slows and deals up to 17.5 contact damage depending on speed#{{Freezing}} Freezes enemies it kills"

	[C_ID .. 653] = "Quand Isaac tient cet objet, tuer un ennemi invoque un fantôme rouge#Utiliser l'objet fait exploser les fantômes", -- Vade Retro
	-- English: "Holding the item causes non-ghost enemies to spawn small red ghosts on death#Using the item causes the ghosts to explode#Using the item also kills any ghost enemies (including bosses) that have less than 50% HP left"

	[C_ID .. 655] = "Orbite autour d'Isaac, bloque les projectiles ennemis et inflige des dégâts de contact#{VAR:ONUSEEFFECT}", -- Spin to Win
	-- Full old Desc: "Orbite autour d'Isaac, bloque les projectiles ennemis et inflige des dégâts de contact#Utiliser l'objet donne {{ColorLime}}vitesse +0.5{{ColorWhite}} et augmente la vitesse de rotation et les dégâts de contact des familiers#{{DamageSmall}} 10.5 dégâts par seconde"
	-- English: "Passively grants an orbital that blocks enemy shots and deals 10.5 contact damage per second#{VAR:ONUSEEFFECT}#{{IND}}Increases speed and damage of orbitals"

	[C_ID .. 656] = "<Cet objet ne peut pas être obtenu>", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 657] = "Tuer un ennemi le fait éclater en larmes qui héritent des effets de celles d'Isaac", -- Vasculitis
	-- English: "Enemies explode into tears upon death, which inherit the effects of Isaac's tears"

	[C_ID .. 658] = "Subir un dégât fait apparaître un Micro-Isaac qui pourchasse et tire sur les ennemis à proximité", -- Giant Cell
	-- English: "Taking damage spawns a Minisaac#Minisaacs chase and shoot at nearby enemies"

	[C_ID .. 660] = "Fait apparaître deux vortex dans la première salle de chaque étage#Entrer dans un vortex téléporte Isaac :#{{Blank}} {{ColorRed}}Rouge {{ColorWhite}}= Salle du Boss#{{Blank}} {{ColorYellow}}Jaune {{ColorWhite}}= Salle du Trésor#{{Blank}} {{ColorBlue}}Bleu {{ColorWhite}} = Salle Secrète#Les vortex disparaissent si Isaac quitte la salle", -- Card Reading
	-- English: "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room"

	[C_ID .. 661] = "Transforme jusqu'à 5 ennemis tués par salle en familiers immobiles", -- Quints
	-- English: "Killing an enemy spawns a stationary familiar in its place#Caps at 5 familiars"

	[C_ID .. 663] = "Toutes les 6 secondes, Isaac devient invulnérable pendant 1 seconde", -- Tooth and Nail
	-- English: "1 second of invincibility every 6 seconds#Isaac flashes right before the effect triggers"

	[C_ID .. 664] = "Les objets sur piédestal alternent avec un objet de nourriture#Choisir la nourriture donne {{ColorLime}}dégâts +3.6{{ColorWhite}},{{ColorError}} vitesse -0.03{{CR}}, augmente deux stats, et soigne davantage", -- Binge Eater
	-- Full old Desc: "{{Heart}} +1 réceptacle de cœur#{{HealingRed}} Soin complet#Les objets sur piédestal alternent avec un objet de nourriture#Choisir la nourriture donne {{ColorLime}}dégâts +3.6{{ColorWhite}},{{ColorError}} vitesse -0.03{{CR}}, augmente deux stats, et soigne davantage#Ces bonus de dégâts s'estompent avec le temps"
	-- English: "Item pedestals cycle between their item and a food item#Picking up a food item grants:#{{HealingRed}} Heal 2 hearts#↑ {{Damage}} Temporary +3.6 damage#↑ 2 permanent stat ups (depending on the food)#↓ {{Speed}} -0.03 speed"

	[C_ID .. 665] = "Révèle le contenu des coffres, sacs, feux et gardiens avant qu'ils ne soient ouverts ou détruits", -- Guppy's Eye
	-- English: "Reveals the contents of {{Chest}} chests, {{GrabBag}} sacks, shopkeepers, and fireplaces before they're opened or destroyed"

	[C_ID .. 668] = "Démarre l'Ascension", -- Dad's Note
	-- English: "Begins the Ascent#Trinkets left in previous {{TreasureRoom}} Treasure or {{BossRoom}} Boss Rooms turn into {{Card78}} Cracked Keys"

	[C_ID .. 670] = "Permet à Isaac de choisir entre 2 récompenses après avoir terminé une salle", -- Options?
	-- English: "Allows Isaac to choose from two different room clear rewards"

	[C_ID .. 671] = "↑ Ramasser un cœur rouge augmente une stat aléatoire de manière permanente", -- Candy Heart
	-- English: "↑ Healing with {{Heart}} Red Hearts grants random permanent stat ups#{{Heart}} Spawns a Red Heart"

	[C_ID .. 672] = "Les Pactes avec le Diable coûtent de l'argent#Les objets de la boutique coûtent des PV#Les ressources de la boutique ne coûtent plus d'argent mais sont entourées de piques", -- A Pound of Flesh
	-- English: "{{DevilRoom}} Devil Room items cost coins#{{Shop}} Shop items cost hearts#Consumables in Shops are surrounded by spikes"

	[C_ID .. 673] = "Entrer dans l'Antre du Diable et ne toucher à rien donne un cœur d'âme et {{ColorLime}}dégâts +1{{ColorWhite}} au prochain étage#{VAR:EFFECTLIST}", -- Redemption
	-- Full old Desc: "Entrer dans l'Antre du Diable et ne toucher à rien donne un cœur d'âme et {{ColorLime}}dégâts +1{{ColorWhite}} au prochain étage"
	-- English: "{{DevilRoom}} Entering a new floor after visiting a Devil Room and not taking any item/pickup grants:#{VAR:EFFECTLIST}"

	[C_ID .. 674] = "Subir un dégât fatal transforme Isaac en fantôme enchaîné à son corps#Isaac peut continuer à se battre et ressuscite avec un demi-cœur après 10 secondes#L'objet se recharge en ramassant un cœur d'âme", -- Spirit Shackles
	-- English: "Taking fatal damage transforms Isaac into a ghost chained to his dead body and allows him to continue to fight with half a heart#If the ghost survives, Isaac revives after 10 seconds#Must be recharged by picking up a Soul Heart"

	[C_ID .. 675] = "{{Blank}} Subir un dégât :#Révèle une salle de l'étage#Déverrouille les portes qui nécessitent des ressources#Peut ouvrir les portes uniques et spéciales", -- Cracked Orb
	-- English: "Taking damage:#Unlocks all locked doors in the room#Reveals a random room on the map#Destroys all tinted and crawlspace rocks"

	[C_ID .. 676] = "{{EmptyHeart}} +1 réceptacle de cœur vide si Isaac ne possède qu'un cœur rouge ou moins en changeant d'étage", -- Empty Heart
	-- English: "{{EmptyHeart}} +1 Empty heart container when at 1 Red Heart or less at the start of a new floor"

	[C_ID .. 677] = "Subir un dégât arrête le temps pendant 3 secondes#Durant cette période, Isaac devient un fantôme et se sépare de son corps#Sous cette forme, Isaac vole, tire des larmes spectrales et nullifie le premier dégât subi", -- Astral Projection
	-- English: "{{Timer}} Taking damage in an uncleared room grants for the fight:#Spectral tears#Flight#Negates the next damage taken#Stops time for 2 seconds#Greatly increases speed and fire rate for 2 seconds"

	[C_ID .. 678] = "Remplace les larmes d'Isaac par des fœtus qui pourchassent les ennemis", -- C Section
	-- English: "{{Chargeable}} Replaces Isaac's tears with a charge attack that shoots homing, spectral fetus tears#{{Damage}} Fetus tears deal about 2.8x Isaac's damage per second"

	[C_ID .. 679] = "Charge l'effet de {{ColorYellow}}Gouffre du Néant{{ColorWhite}} {{Collectible399}} quand Isaac tire et le crache quand les boutons de tir sont relâchés", -- Lil Abaddon
	-- English: "{{Collectible399}} Familiar that charges and unleashes a Maw of the Void circle#It deals 52.5 damage over 1 second"

	[C_ID .. 680] = "Se charge quand Isaac tire#Quand la barre est chargée, relâcher les boutons de tir fait déféquer Isaac en une courte ligne droite", -- Montezuma's Revenge
	-- English: "{{Chargeable}} Firing charges up a short-ranged high damage backwards beam#Does not replace Isaac's tears"

	[C_ID .. 681] = "S'élance dans la direction des tirs d'Isaac#Inflige des dégâts de contact et consomme les ressources sur son chemin#Chaque ressource absorbée augmente sa taille, ses dégâts et fait apparaître une mouche bleue#Toutes les 4 ressources consommées, fait apparaître un vortex vers une salle inexplorée", -- Lil Portal
	-- English: "Deals contact damage and flies forward#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming four pickups spawns a portal to an unexplored room"

	[C_ID .. 682] = "Un tentacule sort parfois du sol pour immobiliser un ennemi et lui infliger des dégâts#{{DamageSmall}} 8 dégâts par seconde", -- Worm Friend
	-- English: "Sometimes bursts out of the ground and grabs an enemy#Grabbed enemies take 8 damage per second, are slowed and cannot move"

	[C_ID .. 683] = "Tuer un ennemi le transforme en os#Les os bloquent les projectiles et infligent des dégâts de contact", -- Bone Spurs
	-- English: "Enemies spawn bone shards on death#Bones block projectiles and deal contact damage"

	[C_ID .. 684] = "Tuer un ennemi le transforme parfois en un fantôme qui pourchasse les ennemis et inflige des dégâts de contact, puis explose après 5 secondes#Isaac est immunisé à ces explosions", -- Hungry Soul
	-- English: "Killing an enemy has a chance to spawn a ghost#Ghosts chase enemies, deal contact damage and explode after 5 seconds#Isaac doesn't take damage from the explosion"

	[C_ID .. 685] = "Invoque un feu follet aléatoire qui tire, bloque les projectiles et inflige des dégâts de contact#Chaque utilisation invoque un feu follet de plus, jusqu'à 12", -- Jar of Wisps
	-- English: "Spawns a random wisp#Spawns one additional wisp with each use, up to 12"

	[C_ID .. 686] = "↑ Ramasser un cœur d'âme augmente une stat aléatoire de manière permanente", -- Soul Locket
	-- Full old Desc: "↑ Ramasser un cœur d'âme augmente une stat aléatoire de manière permanente#Fait apparaître un cœur d'âme"
	-- English: "↑ Picking up {{SoulHeart}} Soul Hearts grants random permanent stat ups"

	[C_ID .. 687] = "Invoque un monstre allié qui imite les mouvements et attaques d'Isaac", -- Friend Finder
	-- English: "{{Friendly}} Spawns a random friendly monster that mimics Isaac's movements and attacks"

	[C_ID .. 688] = "À sa mort, Isaac ressuscite dans la même salle avec :#{{HalfHeart}} Un demi-cœur rouge#↑ Vitesse {{ColorLime}}+0.2#Taille diminuée", -- Inner Child
	-- Full old Desc: "↑ +1 vie#À sa mort, Isaac ressuscite dans la même salle avec :#{{HalfHeart}} Un demi-cœur rouge#↑ Vitesse {{ColorLime}}+0.2#Taille diminuée"
	-- English: "Upon death:#Respawns Isaac in the same room with half a heart#↑ {{Speed}} +0.2 Speed#↑ Massive size down"

	[C_ID .. 689] = "Les objets sur piédestaux alternent rapidement entre 5 objets#4 de ces objets proviennent de la banque d'objets de la salle", -- Glitched Crown
	-- English: "Item pedestals quickly cycle between 5 random items"

	[C_ID .. 690] = "Entrer en contact avec un ennemi le repousse#50% de chances de nullifier un dégât subi au contact#50% de chances de renvoyer un projectile ennemi", -- Belly Jelly
	-- English: "Enemies bounce off of Isaac#50% chance to negate contact damage#50% chance to deflect enemy projectiles"

	[C_ID .. 691] = "Empêche les objets de qualité {{Quality0}} et {{Quality1}} d'apparaître#33% de chances de rejouer un objet de qualité {{Quality2}} en objet de qualité {{Quality2}}, {{Quality3}} ou {{Quality4}}", -- Sacred Orb
	-- English: "Prevents Quality {{Quality0}}/{{Quality1}} items from spawning#Quality {{Quality2}} items have a 33% chance to be rerolled"

	[C_ID .. 692] = "Fait apparaître des piques dans l'Antre du Diable {{DevilRoom}}#{{Blank}} Marcher dessus peut donner :#Rien {{ColorSilver}}(35%)#↑ Dégâts {{ColorLime}}+0.5{{ColorWhite}} {{ColorSilver}}(33%)#6 pièces {{ColorSilver}}(15%)#2 cœurs noirs {{ColorSilver}}(10%)#Objet diabolique {{ColorSilver}}(5%)#Transfo. en Léviathan {{ColorSilver}}(2%)", -- Sanguine Bond
	-- English: "Spawns a set of spikes in the {{DevilRoom}} Devil Room#Taking damage on the spikes grants:#35%: Nothing#33%: ↑ {{Damage}} +0.5 Damage#15%: 6 {{Coin}} pennies#10%: 2 {{BlackHeart}} Black Hearts#5%: {{DevilRoom}} Random Devil item#2%: Leviathan transformation"

	[C_ID .. 693] = "Une mouche qui bloque un projectile se transforme en mouche bleue#Terminer une salle invoque une mouche", -- The Swarm
	-- Full old Desc: "9 mouches orbitent Isaac#Une mouche qui bloque un projectile se transforme en mouche bleue#Terminer une salle invoque une mouche"
	-- English: "Clearing a room spawns a new fly#Flies turn into blue flies after blocking a shot"

	[C_ID .. 694] = "Chaque coup fatal laisse Isaac en vie mais brise deux cœurs supplémentaires#Isaac meurt si tous ses cœurs sont brisés", -- Heartbreak
	-- Full old Desc: "Brise 3 des cœurs d'Isaac#↑ Dégâts {{ColorLime}}+0.25{{ColorWhite}} pour chaque cœur brisé#Chaque coup fatal laisse Isaac en vie mais brise deux cœurs supplémentaires#Isaac meurt si tous ses cœurs sont brisés"
	-- English: "↑ {{Damage}} +0.25 Damage for each Broken Heart#{{BrokenHeart}} Every fatal hit grants +2 Broken Hearts#Isaac dies at 12 Broken Hearts"

	[C_ID .. 695] = "{{Blank}} Subir un dégât donne :#↑ Débit augmenté#↑ Vitesse augmentée#{{Timer}} L'effet dure un étage", -- Bloody Gust
	-- English: "When taking damage, receive for the floor:#↑ {{Speed}} Speed up#↑ {{Tears}} Fire rate up#Caps at +1.02 speed and +3 fire rate"

	[C_ID .. 696] = "Entoure Isaac d'un halo#Les ennemis qui restent assez longtemps dans le halo sont frappés d'un rayon de lumière en forme de croix#Le halo grandit à chaque dégât subi dans l'étage", -- Salvation
	-- English: "Isaac is surrounded by a halo#Enemies that stand in the halo for too long are hit by a cross-shaped beam of light#Taking damage increases the size of the halo for the floor"

	[C_ID .. 697] = "Clone le boss de l'étage dans la Salle du Boss#Tuer le clone donne un objet supplémentaire#Le boss et son clone sont plus lents et n'ont que 75% de leurs PV", -- Vanishing Twin
	-- English: "Entering a boss room spawns a clone of the boss#Defeating the clone spawns an extra item#The clone is slower and has 75% health"

	[C_ID .. 698] = "Se placent aux côtés d'Isaac et tirent les mêmes larmes que lui#Infligent chacun 37.5% des dégâts d'Isaac", -- Twisted Pair
	-- English: "Two familiars that shoot tears with the same stats and effects as Isaac#{{Damage}} They deal 37.5% of Isaac's damage"

	[C_ID .. 699] = "Toutes les 4 salles terminées, Isaac clignote en rouge et vomit un énorme laser de sang lorsqu'il rentre dans une salle hostile", -- Azazel's Rage
	-- English: "{{Collectible118}} Clearing 4 rooms fires a large Brimstone beam upon entering the next room"

	[C_ID .. 700] = "Utiliser une carte, pilule ou rune déclenche aussi l'effet des 3 dernières#Ne fonctionne qu'avec celles utilisées après avoir obtenu l'objet", -- Echo Chamber
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill also uses a copy of the last 3 runes/cards/pills used after picking up Echo Chamber"

	[C_ID .. 701] = "Fait apparaître un Coffre Antique {{DirtyChest}} dans la salle de départ de chaque étage#Les coffres antiques peuvent contenir :#{{SoulHeart}} Cœurs d'âme#{{Trinket}} Babioles#{{Collectible}} Objet angélique#{{Collectible}} Objet de Papa ou Maman", -- Isaac's Tomb
	-- English: "Spawns an {{DirtyChest}} Old Chest at the start of every floor#Old Chests require a key to unlock and can contain {{SoulHeart}} Soul Hearts, {{Trinket}} trinkets or Mom, Dad and Angel items"

	[C_ID .. 702] = "Subir un dégât invoque un feu follet invulnérable pour la durée de l'étage#Les feux follets infligent des dégâts de contact mais ne bloquent pas les projectiles", -- Vengeful Spirit
	-- English: "Taking damage spawns an orbital wisp#Wisps shoot tears, do not block shots and disappear on the next floor#Caps at 6 wisps"

	[C_ID .. 703] = "Transforme Isaac en Ésaü Junior et inversement#Ésaü Junior peut voler, possède 3 cœurs noirs et a des objets et PV séparés", -- Esau Jr.
	-- English: "Swaps between the current character and Esau Jr.#Esau Jr. has {{BlackHeart}} 3 Black Hearts, {{Damage}} +2 Damage, flight, and random items equal to the number of items the player has the first time this item is used#Characters have independent items and health#{{Warning}} Dying as either character ends the run"

	[C_ID .. 705] = "{VAR:EFFECTLIST}#Permet à Isaac de traverser les ennemis et projectiles#{{Timer}} L'effet dure 1 seconde#Paralyse et inflige des dégâts aux ennemis traversés", -- Dark Arts
	-- Full old Desc: "↑ Vitesse {{ColorLime}}+1.0{{ColorWhite}}#Permet à Isaac de traverser les ennemis et projectiles#{{Timer}} L'effet dure 1 seconde#Paralyse et inflige des dégâts aux ennemis traversés"
	-- English: "{{Timer}} Receive for 1 second (or until shooting):#{VAR:EFFECTLIST}#Isaac can pass through enemies/projectiles and paralyzes them#When the effect ends, damages paralyzed enemies, removes paralyzed projectiles and creates a blast at Isaac's location#The attacks and blast are more powerful the more enemies/projectiles have been hit"

	[C_ID .. 706] = "Absorbe tous les objets de la salle et invoque un locuste abyssal pour chaque objet détruit#Les locustes abyssaux sont invulnérables et foncent dans la direction où tire Isaac", -- Abyss
	-- English: "Consumes all item pedestals in the room and spawns a locust familiar for each one#Locusts deal Isaac's damage 2-3 times an attack#Some items spawn a special locust when consumed"

	[C_ID .. 708] = "Toutes les larmes d'Isaac sont tirées de l'œil droit", -- Stapler
	-- Full old Desc: "↑ Dégâts {{ColorLime}}+1.0#Toutes les larmes d'Isaac sont tirées de l'œil droit"
	-- English: "All of Isaac's tears are shot from the right eye"

	[C_ID .. 709] = "Permet à Isaac de foncer sur un ennemi et de l'écraser au sol#L'attaque augmente en puissance et en portée selon la taille d'Isaac", -- Suplex!
	-- English: "Isaac dashes in the direction he moves#Dashing into an enemy or boss picks it up and slams it into the ground#Slam deals damage and spawns rock waves based on Isaac's size#You're invincible during the dash and slam"

	[C_ID .. 710] = "Utiliser l'objet puis tirer balaye le sac#Toucher une ressource avec le sac la place dedans#Maintenir [Utiliser] quand le sac contient 8 ressources fabrique un objet#La qualité de l'objet dépend des ressources ramassées", -- Bag of Crafting
	-- English: "Collects up to 8 pickups which cannot be dropped#Using the item with 8 pickups in the bag crafts an item#Item quality is based on the quality of the pickups"

	[C_ID .. 711] = "Affiche un deuxième objet transparent sur les piédestaux#Utiliser l'objet inverse l'objet solide et l'objet transparent#L'objet transparent disparait s'il est laissé seul sur un piédestal#Ne fonctionne qu'avec les objets déjà présents dans une salle", -- Flip
	-- English: "Entering a room with item pedestals displays a ghostly second item on the pedestals#Using the item flips the real and ghostly item#Using Flip after taking the first item allows Isaac to pick up the other item#{{Warning}} Ghostly items alone on pedestals disappear after leaving the room"

	[C_ID .. 712] = "Invoque un feu follet violet en forme d'objet et donne son effet#L'effet est perdu si le feu follet est détruit#25% de chances d'invoquer un objet qui provient de la banque d'objets de la salle", -- Lemegeton
	-- English: "Spawns an orbital that grants a random item's effect#The items have a 25% chance to be from the current room's item pool and 75% chance to be from the Treasure, Boss or Shop pools"

	[C_ID .. 713] = "Convertit un demi-cœur en un familier pâté#Le type de pâté change selon le cœur sacrifié", -- Sumptorium
	-- English: "Removes half a heart and creates a clot#Clots copy Isaac's tears#Each type of heart generates a clot with different HP, damage and tear effect"

	[C_ID .. 714] = "Ramène le corps du Délaissé à l'Âme", -- Recall
	-- English: "Retrieves the Forgotten's body from any distance#The Soul is invincible while the Forgotten is returning"

	[C_ID .. 715] = "Stocke un caca jetable à la première utilisation#Utilise le caca stocké à la deuxième utilisation", -- Hold
	-- English: "Using the item when empty stores the next poop inside#Using the item with a poop inside uses that poop"

	[C_ID .. 716] = "Fait apparaître 3 pièces et une clé#{VAR:EFFECTLIST}", -- Keeper's Sack
	-- Full old Desc: "↑ Dépenser 3 pièces augmente la stat de portée, vitesse ou dégâts#Fait apparaître 3 pièces et une clé"
	-- English: "{{Shop}} Spending 3 coins grants either:#{VAR:EFFECTLIST}"

	[C_ID .. 717] = "Détruire un obstacle invoque 2 araignées bleues#Les obstacles invoquent des araignées bleues dans les salles hostiles", -- Keeper's Kin
	-- English: "Rocks and other obstacles spawn 2 blue spiders when destroyed#Rocks can occasionally spawn blue spiders in hostile rooms"

	[C_ID .. 719] = "Fait apparaître un objet ou une ressource à acheter", -- Keeper's Box
	-- English: "{{Shop}} Spawns a random Shop item/pickup to be purchased"

	[C_ID .. 720] = "Fait apparaître selon son nombre de charges :#{{Blank}} 1:{{Poop}} 2:{{Coin}} 3:{{Bomb}}#{{Blank}} 4:{{Key}} 5:{{Heart}} 6:{{Pill}}#{{Blank}} 7:{{Card}} 8:{{SoulHeart}} 9:{{GoldenHeart}}#{{Blank}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} 12: Effet aléatoire", -- Everything Jar
	-- English: "Spawns pickups based on the number of charges#Charge Rewards:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} Triggers a powerful random effect at 12 charges"

	[C_ID .. 721] = "Corrompt tous les futurs objets de la partie#Les effets et icônes des objets corrompus sont complètement aléatoires", -- TMTRAINER
	-- English: "Causes all future items to be glitched#Glitched items have completely random effects"

	[C_ID .. 722] = "Paralyse l'ennemi le plus proche d'Isaac#{{Timer}} L'effet dure 5 secondes", -- Anima Sola
	-- English: "{{Chained}} Chains down the nearest enemy for 5 seconds#Chained enemies cannot move or attack"

	[C_ID .. 723] = "Retire 1 à l'ID interne de tous les objets de la salle", -- Spindown Dice
	-- English: "Rerolls all items in the room by decreasing their internal ID by one"

	[C_ID .. 724] = "Subir un dégât fait apparaître un cœur ou demi-cœur rouge#Ces cœurs disparaissent après 1.5 secondes s'ils ne sont pas ramassés", -- Hypercoagulation
	-- English: "{{Heart}} Taking damage drops a half or full Red Heart depending on how much Isaac lost#The hearts launch out and despawn after 1.5 seconds"

	[C_ID .. 725] = "Infliger suffisamment de dégâts fait clignoter Isaac en rouge#Relâcher les boutons de tir quand Isaac clignote lance un caca jetable", -- IBS
	-- English: "Dealing enough damage causes Isaac to flash red#Releasing the fire button while Isaac is flashing either:#Throws a random poop#Creates buffing creep#{{Poison}} Farts a poison cloud#Spawns 5 live bombs"

	[C_ID .. 726] = "Appuyer deux fois sur un bouton de tir fait éternuer Isaac#L'éternuement inflige des dégâts et rend les ennemis plus vulnérables aux lasers de sang", -- Hemoptysis
	-- English: "Double-tapping a fire button makes Isaac sneeze blood#The sneeze deals 1.5x Isaac's damage#1 second cooldown#{{BrimstoneCurse}} Affected enemies take extra damage from Brimstone beams"

	[C_ID .. 727] = "Les bombes d'Isaac invoquent des fantômes qui pourchassent les ennemis, infligent des dégâts de contact et explosent après 10 secondes", -- Ghost Bombs
	-- Full old Desc: "{{Bomb}} +5 Bombes#Les bombes d'Isaac invoquent des fantômes qui pourchassent les ennemis, infligent des dégâts de contact et explosent après 10 secondes"
	-- English: "Isaac's bombs spawn ghosts that chase enemies#Ghosts deal 2x Isaac's damage per second and explode after 10 seconds"

	[C_ID .. 728] = "Invoque un familier qui copie les stats et les effets des larmes d'Isaac#{{DamageSmall}} Inflige 75% des dégâts d'Isaac#{{Timer}} L'effet dure une salle", -- Gello
	-- English: "A demon familiar bursts out of Isaac for the room#The demon shoots towards the nearest enemy, mimicing Isaac's tears, stats and effects#{{Damage}} Its tears deal 75% of Isaac's damage"

	[C_ID .. 729] = "Lance la tête d'Isaac dans la direction où il tire et inflige des dégâts de contact#Utiliser l'objet à nouveau ou toucher la tête permet de la réattacher", -- Decap Attack
	-- English: "Throws Isaac's head in a direction#The head deals contact damage and shoots tears from where it lands#Using the item again or stepping on the head reattaches it"

	[C_ID .. 732] = "Fait apparaître une rune ou une pierre d'âme", -- Mom's Ring
	-- Full old Desc: "↑ Dégâts {{ColorLime}}+1.0#Fait apparaître une rune ou une pierre d'âme"
	-- English: "{{Rune}} Spawns a random rune or soul stone"

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 15] = "Détruire un obstacle a 33% de chances de faire apparaître une pièce", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks has a 33% chance to spawn a coin"

	[T_ID .. 24] = "Ramasser une pièce fait péter Isaac#Augmente de 20% les chances de trouver des pièces dans les cacas", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#{{Poison}} Picking up coins makes Isaac fart, which poisons and knocks back enemies and projectiles"

	[T_ID .. 32] = "25% de chances de gagner l'effet d'un objet champignon pour la durée d'une salle", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room"

	[T_ID .. 33] = "Subir un dégât invoque parfois {{ColorYellow}}Gémeaux{{ColorWhite}} {{Collectible318}}", -- Umbilical Cord
	-- Full old Desc: "Invoque {{ColorYellow}}P'tit Steven{{ColorWhite}} {{Collectible100}} quand Isaac n'a qu'un demi-cœur rouge ou moins#Subir un dégât invoque parfois {{ColorYellow}}Gémeaux{{ColorWhite}} {{Collectible318}}"
	-- English: "{{HalfHeart}} Having half a Red Heart or less grants {{NameC100}}#{{Collectible318}} Taking damage has a high chance to spawn a Gemini familiar for the room"

	[T_ID .. 48] = "Subir un dégât inflige parfois 80 dégâts à tous les ennemis de la salle#Double les dégâts infligés par les cœurs noirs et les effets similaires au {{ColorYellow}}Necronomicon{{ColorWhite}} {{Collectible35}}#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(50% à ~55 Chance)", -- A Missing Page
	-- English: "Taking damage has a 5% chance to deal 80 damage to all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[T_ID .. 49] = "Ramasser une pièce a 25% de chances de faire apparaître un demi-cœur rouge", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 25% chance to spawn a half Red Heart#Higher chance from nickels and dimes"

	[T_ID .. 50] = "Ramasser une pièce a 25% de chances de faire apparaître une bombe", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 25% chance to spawn a bomb#Higher chance from nickels and dimes"

	[T_ID .. 51] = "Ramasser une pièce a 25% de chances de faire apparaître une clé", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 25% chance to spawn a key#Higher chance from nickels and dimes"

	[T_ID .. 69] = "Camoufle parfois Isaac#Étourdit parfois les ennemis#Peut être utilisé pour ouvrir la porte vers l'Ascension", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies#Can be used to open the "Strange Door" in "Depths II""

	[T_ID .. 92] = "↑ Augmente de 20% les bonus de stats donnés par les objets d'Isaac", -- Cracked Crown
	-- English: "↑ x1.33 Stat multiplier (except fire rate) for the stats that are above 1 {{Speed}} speed, 2.73 {{Tears}} tears, 3.5 {{Damage}} damage, 6.5 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 107] = "Subir un dégât retire les cœurs rouges en priorité", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#{{Warning}} Taking Red Heart damage will reduce Devil/Angel Room chance"

	[T_ID .. 110] = "Des boutiques apparaissent dans l'{{ColorTransform}}Utérus{{ColorWhite}} et le {{ColorTransform}}Cadavre", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb and Corpse"

	[T_ID .. 111] = "Des Salles du Trésor {{TreasureRoom}} apparaissent dans l'{{ColorTransform}}Utérus{{ColorWhite}} et le {{ColorTransform}}Cadavre", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb and Corpse"

	[T_ID .. 119] = "{{HealingRed}} Soigne la moitié des cœurs rouges d'Isaac au début de chaque étage {{ColorSilver}}(Au minimum un demi-cœur)", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half of Isaac's empty Red/Bone Hearts#{{HealingRed}} Heals half a heart minimum"

	[T_ID .. 131] = "Ramasser une pièce a 17% de chances de faire apparaître un demi-cœur d'âme", -- Blessed Penny
	-- English: "{{HalfSoulHeart}} Picking up a coin has a 17% chance to spawn a half Soul Heart#Higher chance from nickels and dimes"

	[T_ID .. 132] = "25% de chances de gagner l'effet d'une seringue pour la durée d'une salle", -- Broken Syringe
	-- English: "25% chance to get a random syringe effect each room"

	[T_ID .. 133] = "Les bombes placées par Isaac explosent plus rapidement", -- Short Fuse
	-- English: "Isaac's bombs explode faster"

	[T_ID .. 134] = "Augmente la taille des pets d'Isaac", -- Gigante Bean
	-- English: "Increases fart size"

	[T_ID .. 136] = "Permet d'ouvrir les serrures avec une explosion", -- Broken Padlock
	-- English: "Doors, key blocks and golden chests can be opened with explosions#Explosions can also open the "Strange Door" in "Depths II""

	[T_ID .. 137] = "Fait apparaître jusqu'à 4 ressources laissées à l'étage précédent dans la première salle d'un nouvel étage", -- Myosotis
	-- English: "Entering a new floor spawns up to 4 uncollected pickups from the previous floor in the starting room"

	[T_ID .. 138] = "Utiliser un objet activable le rejoue", -- 'M
	-- English: "Using an active item rerolls it"

	[T_ID .. 139] = "Chance {{ColorLime}}+4{{ColorWhite}} envers les effets de larmes", -- Teardrop Charm
	-- English: "{{Luck}} +4 Luck towards luck-based tear effects"

	[T_ID .. 140] = "Ramasser un cœur rouge a 50% de chances de le convertir en araignées bleues#Fonctionne même si les PV d'Isaac sont pleins#Cet effet peut empêcher Isaac de se soigner", -- Apple of Sodom
	-- English: "Picking up Red Hearts can convert them into blue spiders#Works even while at full health#Effect may consume hearts needed for healing"

	[T_ID .. 141] = "Double le débit des familiers d'Isaac", -- Forgotten Lullaby
	-- English: "2x Fire rate for familiars"

	[T_ID .. 142] = "Entrer dans un nouvel étage invoque 4 feux follets du {{ColorYellow}}Livre des Vertus{{ColorWhite}} {{Collectible584}}", -- Beth's Faith
	-- English: "{{Collectible584}} Entering a new floor spawns 4 Book of Virtues wisps"

	[T_ID .. 144] = "Les larmes d'Isaac peuvent tourner à 90° pour toucher un ennemi qui aurait été loupé", -- Brain Worm
	-- English: "Tears turn 90 degrees to target enemies that they may have missed"

	[T_ID .. 145] = "{{Warning}} Subir un dégât détruit la babiole", -- Perfection
	-- Full old Desc: "↑ Chance {{ColorLime}}+10#{{Warning}} Subir un dégât détruit la babiole"
	-- English: "Taking damage destroys the trinket"

	[T_ID .. 146] = "Les Salles du Trésor {{TreasureRoom}} contiennent des Pactes avec le Diable", -- Devil's Crown
	-- English: "{{RedTreasureRoom}} Treasure Room items are replaced with devil deals"

	[T_ID .. 147] = "Ramasser une pièce a 17% de chances de recharger une barre de l'objet activable", -- Charged Penny
	-- English: "{{Battery}} Picking up a coin has a 17% chance to add 1 charge to the active item#Higher chance from nickels and dimes"

	[T_ID .. 148] = "Tous les familiers orbitent autour d'Isaac", -- Friendship Necklace
	-- English: "All familiars orbit around Isaac"

	[T_ID .. 149] = "Utilise l'objet activable d'Isaac quand il est sur le point de subir un dégât", -- Panic Button
	-- English: "Right before taking damage, uses the active item if it is charged"

	[T_ID .. 150] = "Ouvre gratuitement les portes verrouillées#Isaac doit traverser une salle de l'{{ColorTransform}}Utérus Bleu{{ColorWhite}} pour atteindre la salle de l'autre côté de la porte", -- Blue Key
	-- English: "Locked doors can be opened for free, but Isaac has to clear a room from the Hush floor before accessing the room behind them"

	[T_ID .. 151] = "Rétracte la majorité des piques du jeu et les rend innofensifs", -- Flat File
	-- English: "Retracts most spikes, rendering them harmless#Also affects {{CursedRoom}} Curse Room doors, mimics and any spike obstacle"

	[T_ID .. 152] = "{{PlanetariumChanceSmall}} {{ColorLime}}+9%{{ColorWhite}} de chances de Planétarium s'il a déjà été trouvé#Les Planétariums peuvent apparaître dans l'{{ColorTransform}}Utérus{{ColorWhite}} et le {{ColorTransform}}Cadavre", -- Telescope Lens
	-- Full old Desc: "{{PlanetariumChanceSmall}} {{ColorLime}}+24%{{ColorWhite}} de chances de Planétarium s'il n'a pas encore été trouvé#{{PlanetariumChanceSmall}} {{ColorLime}}+9%{{ColorWhite}} de chances de Planétarium s'il a déjà été trouvé#Les Planétariums peuvent apparaître dans l'{{ColorTransform}}Utérus{{ColorWhite}} et le {{ColorTransform}}Cadavre"
	-- English: "Additional +15% chance if a Planetarium hasn't been entered yet#Planetariums can spawn in the Womb and Corpse"

	[T_ID .. 153] = "25% de chances de gagner l'effet d'un objet de Maman pour la durée d'une salle", -- Mom's Lock
	-- English: "25% chance for a random Mom item effect each room"

	[T_ID .. 154] = "Entrer dans une nouvelle salle a 50% de chances de donner un dé à USAGE UNIQUE {{Warning}}#Le dé disparait en quittant la salle#Le dé ne remplace pas la carte, pilule ou rune portée par Isaac", -- Dice Bag
	-- English: "50% chance per new room to grant a single use die consumable item#The die disappears when leaving#The die does not take up a pill/card slot"

	[T_ID .. 155] = "Fait apparaître une Salle du Trésor dans la Cathédrale", -- Holy Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Cathedral"

	[T_ID .. 156] = "{{Heart}} +1 réceptacle de cœur", -- Mother's Kiss
	-- English: "{{Heart}} +1 Heart container while held"

	[T_ID .. 158] = "Subir un dégât retire deux pièces, clés ou bombes à Isaac et les fait tomber au sol", -- Torn Pocket
	-- English: "Taking damage makes Isaac drop 2 of his coins, keys or bombs#The pickups can be replaced with other variants, such as golden keys, nickels, dimes, etc."

	[T_ID .. 159] = "Ne peut pas remplacer les coffres Antiques {{DirtyChest}} et Géants {{MegaChest}}", -- Gilded Key
	-- Full old Desc: "{{Key}} +1 Clé#Remplace tous les coffres par des coffres dorés {{GoldenChest}}#Ne peut pas remplacer les coffres Antiques {{DirtyChest}} et Géants {{MegaChest}}"
	-- English: "{{GoldenChest}} Replaces all chests (except Old/Mega) with golden chests#{{GoldenChest}} Golden chests can contain extra cards, pills or trinkets"

	[T_ID .. 160] = "Fait apparaître un sachet dans la première salle d'un nouvel étage", -- Lucky Sack
	-- English: "{{GrabBag}} Entering a new floor spawns a sack"

	[T_ID .. 161] = "Une Salle du Trésor apparaît à {{ColorTransform}}Shéol", -- Wicked Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Sheol"

	[T_ID .. 162] = "Terminer une salle a 50% de chances de transformer Isaac en {{ColorLightOrange}}Azazel{{ColorWhite}} pour la durée de la salle suivante", -- Azazel's Stump
	-- English: "{{Player7}} Clearing a room has a 33% chance to turn the player into Azazel#{{Timer}} Effect lasts until clearing and leaving another room"

	[T_ID .. 163] = "Toutes les Crottes deviennent amicales#Terminer une salle invoque une Crotte amicale", -- Dingle Berry
	-- English: "All Dip (small poop) enemies are friendly#Clearing a room spawns 1 random Dip"

	[T_ID .. 164] = "Ajoute gratuitement une bombe à chaque bombe posée", -- Ring Cap
	-- English: "{{Bomb}} Spawns 1 extra bomb for each bomb placed"

	[T_ID .. 165] = "À partir de l'{{ColorTransform}}Utérus{{ColorWhite}}, remplace les pièces et les clés par des bombes, des cœurs, des pilules, des cartes, des runes, des piles, des babioles ou des mouches", -- Nuh Uh!
	-- English: "On Womb and beyond, replaces all coin and key spawns with a bomb, heart, pill, card, trinket, battery, or enemy fly"

	[T_ID .. 166] = "50% de chances de gagner l'effet d'un objet passif aléatoire pour la durée d'une salle", -- Modeling Clay
	-- English: "50% chance to grant the effect of a random passive item each room"

	[T_ID .. 167] = "Terminer une salle a 25% de chances d'invoquer un Osselet allié", -- Polished Bone
	-- English: "{{Friendly}} Clearing a room has a 25% chance to spawn a friendly Bony"

	[T_ID .. 168] = "{{EmptyBoneHeart}} +1 cœur d'os au début de chaque étage", -- Hollow Heart
	-- English: "{{EmptyBoneHeart}} Entering a new floor grants +1 Bone Heart"

	[T_ID .. 169] = "Compte comme 1 objet envers la transformation en Guppy", -- Kid's Drawing
	-- English: "{{Guppy}} Counts as 1 item towards the Guppy transformation while held"

	[T_ID .. 170] = "Terminer une salle a 33% de chances d'ouvrir une porte rouge", -- Crystal Key
	-- English: "{{Collectible580}} Clearing a room has a 33% chance to create a Red Key room#Lower chance to occur when in a red room"

	[T_ID .. 171] = "Les Pactes avec le Diable ont 50% de chances de coûter de l'argent plutôt que des PV", -- Keeper's Bargain
	-- English: "{{DevilRoom}} 50% chance for devil deals to cost coins instead of hearts"

	[T_ID .. 172] = "Ramasser une pièce téléporte Isaac dans une pièce aléatoire", -- Cursed Penny
	-- English: "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms"

	[T_ID .. 173] = "{{Warning}} USAGE UNIQUE{{Warning}}#Peut être échangée pour signer un pacte avec le diable sans perdre de réceptacles de cœur", -- Your Soul
	-- English: "{{DevilRoom}} Allows Isaac to take 1 Devil Room item for free#{{Warning}} The free Devil deal still affects Angel Room chance"

	[T_ID .. 174] = "Krampus n'apparaît plus dans l'Antre du Diable#L'Antre du Diable contient plus d'objets, de cœurs noirs et d'ennemis", -- Number Magnet
	-- Full old Desc: "{{DevilChance}} {{ColorLime}}+10%{{ColorWhite}} de chances de Pacte avec le Diable#Krampus n'apparaît plus dans l'Antre du Diable#L'Antre du Diable contient plus d'objets, de cœurs noirs et d'ennemis"
	-- English: "Prevents Krampus from appearing in Devil Rooms#Devil Rooms are special variants with more deals, Black Hearts and enemies"

	[T_ID .. 175] = "Ouvre le passage vers {{ColorCyan}}Murmure{{ColorWhite}} même si la limite de temps est passée", -- Strange Key
	-- Full old Desc: "Ouvre le passage vers {{ColorCyan}}Murmure{{ColorWhite}} même si la limite de temps est passée#Utiliser la {{ColorYellow}}Boîte de Pandore{{ColorWhite}} {{Collectible297}} fait apparaître 6 objets aléatoires"
	-- English: "Opens the door to the Hush floor regardless of the timer#Using {{NameC297}} consumes the key and spawns 6 items from random pools"

	[T_ID .. 176] = "Invoque un pâté qui imite les mouvements et les larmes d'Isaac", -- Lil Clot
	-- English: "Spawns a blood clot that mimics Isaac's movement#Copies Isaac's stats, tear effects and 35% of his damage#Respawns each room"

	[T_ID .. 177] = "Triompher d'une Salle de Défi {{ChallengeRoom}} fait apparaître un coffre #Triompher d'une Salle de Défi Royale {{BossRushRoom}} fait apparaître un objet", -- Temporary Tattoo
	-- English: "{{Chest}} Clearing a {{ChallengeRoom}} Challenge Room spawns a chest#Clearing a {{BossRushRoom}} Boss Challenge Room spawns an item"

	[T_ID .. 178] = "Subir un dégât a 50% de chances de faire exploser Isaac", -- Swallowed M80
	-- English: "Taking damage has a 50% chance for Isaac to explode#Doesn't destroy Blood Donation Machines or Confessionals, while spawning pickups as if it did"

	[T_ID .. 179] = "Contrôler Isaac contrôle aussi ses familiers#Maintenir le bouton {{ColorSilver}}[Lâcher]{{ColorWhite}} bloque les familiers sur place", -- RC Remote
	-- English: "Familiars mimic Isaac's movement#Hold the drop button ({{ButtonRT}}) to keep the familiars in place"

	[T_ID .. 180] = "Suit les mouvements d'Isaac et tire des larmes spectrales#Imite les larmes d'Isaac#Meurt s'il subit un dégât#Revient à l'étage suivant", -- Found Soul
	-- English: "Follows Isaac's movement and shoots spectral tears#Copies Isaac's stats, tear effects and 50% of his damage#Uses most active items when Isaac does#Dies in one hit#Respawns each floor"

	[T_ID .. 181] = "Utiliser un objet activable déclenche aussi l'effet d'un objet activable à 1 ou 2 charges", -- Expansion Pack
	-- English: "Using an active item triggers the effect of an additional 1-2 charge active item"

	[T_ID .. 182] = "Entrer dans le Refuge des Anges invoque 5 feux follets#Faire un don à un mendiant a 25% de chances d'invoquer un feu follet", -- Beth's Essence
	-- English: "Entering an {{AngelRoom}} Angel Room spawns 5 wisps#Donating to Beggars has a 25% chance to spawn a wisp"

	[T_ID .. 183] = "50% de chances de dupliquer un familier pour la durée d'une salle", -- The Twins
	-- Full old Desc: "50% de chances de dupliquer un familier pour la durée d'une salle#Si Isaac n'a aucun familier, donne {{ColorYellow}}Frère Bobby{{ColorWhite}} {{Collectible8}} ou {{ColorYellow}}Sœurette Marie{{ColorWhite}} {{Collectible67}}"
	-- English: "50% chance to duplicate a familiar each room#Grants {{NameC8}} or {{NameC67}} if Isaac has no familiars"

	[T_ID .. 184] = "Les boutiques vendent des familiers pour 10 pièces", -- Adoption Papers
	-- English: "{{Shop}} Shops sell familiars for 10 coins"

	[T_ID .. 185] = "Tuer un ennemi a 17% de chances d'invoquer un locuste", -- Cricket Leg
	-- English: "Killing an enemy has a 17% chance to spawn a random locust"

	[T_ID .. 186] = "Invoque un locuste abyssal", -- Apollyon's Best Friend
	-- English: "{{Collectible706}} Grants 1 Abyss locust"

	[T_ID .. 187] = "Les Salles du Trésor {{TreasureRoom}} ont 50% de chances de contenir un objet inconnu supplémentaire#50% de chances de révéler les objets inconnus du chemin alternatif", -- Broken Glasses
	-- English: "{{TreasureRoom}} 50% chance of adding an extra blind item in Treasure Rooms#50% chance to reveal the blind item in alt path Treasure Rooms"

	[T_ID .. 188] = "Tuer un ennemi pétrifié le gèle", -- Ice Cube
	-- Full old Desc: "Entrer dans une salle pétrifie parfois certains ennemis#Tuer un ennemi pétrifié le gèle#{{LuckSmall}} Effet affecté par la statistique de chance#{{Blank}} {{ColorSilver}}(100% à 40 Chance)"
	-- English: "{{Petrify}} Entering a room has a {VAR:LUCKCHANCE}% chance to petrify random enemies#{{Freezing}} Killing a petrified enemy freezes it"

	[T_ID .. 189] = "Tuer un ennemi rend Isaac invulnérable pendant 1 seconde", -- Sigil of Baphomet
	-- English: "Killing an enemy makes Isaac invincible for 1 second#Invincibility stacks with successive enemy kills"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 18] = "Téléporte Isaac dans la Salle du Trésor {{TreasureRoom}}", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room#{{Planetarium}} If there is a Planetarium, it teleports there instead"

	[Card_ID .. 20] = "Retire le Fléau d'Obscurité", -- XIX - The Sun
	-- Full old Desc: "{{HealingRed}} Soin complet#Inflige 100 dégâts à tous les ennemis de la salle#Révèle l'intégralité de l'étage sur la carte#Retire le Fléau d'Obscurité"
	-- English: "{{CurseDarkness}} Removes Curse of Darkness"

	[Card_ID .. 21] = "{{Beggar}} Invoque un mendiant#{{DemonBeggar}} 33% de chances d'être un mendiant démoniaque #5% de chances d'être un maître des clés, un clochard aux bombes, un clochard aux batteries ou un mendiant pourri", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#5% chance for it to be a Key Master, Bomb Bum, Battery Bum, or Rotten Beggar"

	[Card_ID .. 27] = "Transforme toutes les ressources, coffres et ennemis de la salle en bombes", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups, chests and non-boss enemies into random bombs"

	[Card_ID .. 28] = "Transforme toutes les ressources, coffres et ennemis de la salle en pièces", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups, chests and non-boss enemies into random coins"

	[Card_ID .. 29] = "Transforme toutes les ressources, coffres et ennemis de la salle en clés", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups, chests and non-boss enemies into random keys"

	[Card_ID .. 30] = "Transforme toutes les ressources, coffres et ennemis de la salle en cœurs", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups, chests and non-boss enemies into random hearts"

	[Card_ID .. 34] = "Ouvre une trappe vers l'étage suivant#Utiliser la rune sur un élément de décor au sol ouvre une trappe vers un Souterrain {{LadderRoom}}", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[Card_ID .. 42] = "Utiliser cette carte la lance dans la direction où se déplace Isaac#La carte tue instantanément les ennemis ou boss avec lesquels elle rentre en contact#La carte ne peut pas tuer {{ColorCyan}}Delirium{{ColorWhite}} ou {{ColorCyan}}la Bête", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium or the Beast)"

	[Card_ID .. 51] = "Nullifie le prochain dégât subi", -- Holy Card
	-- English: "{{HolyMantle}} A one-use Holy Mantle shield (prevents damage once)"

	[Card_ID .. 55] = "Déclenche un effet de rune aléatoire#L'effet est plus faible que celui de la rune imitée", -- Rune Shard
	-- English: "{{Rune}} Activates a random rune effect#The rune effect is weaker"

	[Card_ID .. 56] = "Fait tomber tous les cœurs et ressources d'Isaac au sol#Fait apparaître {{ColorYellow}}Une Petite Pièce{{ColorWhite}} {{Collectible74}} ou {{ColorYellow}}Boum !{{ColorWhite}} {{Collectible19}} si Isaac a suffisamment de ressources", -- 0 - The Fool?
	-- English: "Drops all of Isaac's hearts but one and all of his pickups on the floor#Coins and bombs are dropped as {{Collectible74}} The Quarter or {{Collectible19}} Boom! if possible"

	[Card_ID .. 57] = "Entoure Isaac d'une aura qui dévie les projectiles ennemis#{{Timer}} L'effet dure 60 secondes", -- I - The Magician?
	-- English: "{{Timer}} Grants an aura that repels enemies and projectiles for 60 seconds"

	[Card_ID .. 58] = "Les pieds de {{ColorCyan}}Maman{{ColorWhite}} tentent d'écraser Isaac pendant 60 secondes", -- II - The High Priestess?
	-- English: "{{Timer}} Mom's Foot tries to stomp Isaac for 60 seconds"

	[Card_ID .. 60] = "Téléporte Isaac dans une salle de Boss séparée du reste de l'étage#Le boss provient de deux étages plus profond#Battre le boss fait apparaître un objet", -- IV - The Emperor?
	-- English: "Teleports Isaac to an extra Boss room that can be defeated for an item#The boss is chosen from two floors deeper than the current one"

	[Card_ID .. 62] = "Fait apparaître un objet qui provient de la banque d'objets de la salle#Convertit 1 réceptacle de cœur ou 2 cœurs d'âme en un cœur brisé", -- VI - The Lovers?
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Converts 1 heart container or 2 Soul Hearts into a Broken Heart"

	[Card_ID .. 63] = "{VAR:TIMEDEFFECT}#{{Timer}} L'effet dure 10 secondes", -- VII - The Chariot?
	-- Full old Desc: "↑ Débit fortement augmenté#Transforme Isaac en une statue invulnérable#{{Timer}} L'effet dure 10 secondes"
	-- English: "{VAR:TIMEDEFFECT}#Invincible but can't move"

	[Card_ID .. 64] = "Fait apparaître 2 à 4 coffres dorés {{GoldenChest}}", -- VIII - Justice?
	-- English: "{{GoldenChest}} Spawns 2-4 golden chests"

	[Card_ID .. 65] = "Convertit les ressources et objets de la salle en pièces#Le nombre de pièces est égal à la valeur des objets dans la boutique", -- IX - The Hermit?
	-- English: "{{Coin}} Turns all pickups and items in the room into a number of coins equal to their Shop value#If there is nothing to turn, spawns a Penny instead"

	[Card_ID .. 66] = "Déclenche l'effet d'une salle de dé au hasard", -- X - Wheel of Fortune?
	-- English: "{{DiceRoom}} Triggers a random Dice Room effect"

	[Card_ID .. 67] = "Les ennemis sont ralentis et subissent deux fois plus de dégâts#{{TimerSmall}} L'effet dure 30 secondes ou jusqu'à ce qu'Isaac quitte la salle", -- XI - Strength?
	-- English: "{{Timer}} Enemies in the room are {{Slow}} slowed and take double damage for 30 seconds"

	[Card_ID .. 68] = "{VAR:TIMEDEFFECT}#Tuer un ennemi fait apparaître une pièce#{{Timer}} L'effet dure 60 secondes", -- XII - The Hanged Man?
	-- Full old Desc: "↓ Vitesse {{ColorError}}-0.1#Triple tir#Tuer un ennemi fait apparaître une pièce#{{Timer}} L'effet dure 60 secondes"
	-- English: "{VAR:TIMEDEFFECT}#Triple shot#{{Coin}} Killed enemies drop coins"

	[Card_ID .. 69] = "Invoque une entité squelette pour chaque ennemi tué dans la salle", -- XIII - Death?
	-- English: "{{Collectible545}} Activates Book of the Dead#{{Friendly}} Spawns friendly Bone entities for each enemy killed in room"

	[Card_ID .. 70] = "Déclenche l'effet de 5 pilules", -- XIV - Temperance?
	-- English: "{{Pill}} Forces Isaac to eat 5 random pills"

	[Card_ID .. 71] = "Déclenche l'effet de la {{ColorYellow}}Bible{{ColorWhite}} {{Collectible33}}#Donne {{ColorYellow}}Séraphin{{ColorWhite}} {{Collectible390}}#{{Timer}} L'effet dure 30 secondes", -- XV - The Devil?
	-- English: "{{Timer}} Receive for 60 seconds:#{{Collectible33}} Activates The Bible (flight)#{{Collectible390}} Seraphim familiar#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[Card_ID .. 72] = "Fait apparaître 7 groupes de rochers ou obstacles", -- XVI - The Tower?
	-- English: "Spawns 7 clusters of random rocks and obstacles#Clusters often contain Tinted Rocks"

	[Card_ID .. 73] = "Retire l'objet passif d'Isaac le plus ancien, hors objets de départ#Fait apparaître 2 objets qui proviennent de la banque d'objets de la salle", -- XVII - The Stars?
	-- English: "Removes Isaac's oldest collected passive item (ignoring starting items)#Spawns 2 random items from the current room's item pool"

	[Card_ID .. 74] = "Téléporte Isaac à la Salle Ultra Secrète {{UltraSecretRoom}}#Le chemin de retour est constitué de salles rouges", -- XVIII - The Moon?
	-- English: "{{UltraSecretRoom}} Teleports Isaac to the Ultra Secret Room#Pathway back will be made of red rooms"

	[Card_ID .. 75] = "{{Timer}} L'effet dure un étage", -- XIX - The Sun?
	-- Full old Desc: "↑ Dégâts {{ColorLime}}+1.5#Active les effets d'{{ColorYellow}}Esprit de la Nuit{{ColorWhite}} {{Collectible159}}#Convertit les réceptacles de cœurs rouges d'Isaac en cœurs d'os#Applique le Fléau d'Obscurité#{{Timer}} L'effet dure un étage"
	-- English: "{{Timer}} Receive for the floor:#{VAR:EFFECTLIST}#{{BoneHeart}} Converts heart containers into Bone Hearts (reverts)#{{CurseDarkness}} Curse of Darkness"

	[Card_ID .. 76] = "Fait apparaître une machine de réapprovisionnement {{RestockMachine}}", -- XX - Judgement?
	-- English: "{{RestockMachine}} Spawns a Restock Machine"

	[Card_ID .. 77] = "Ouvre une trappe vers un Souterrain", -- XXI - The World?
	-- English: "{{LadderRoom}} Spawns a trapdoor to a crawlspace"

	[Card_ID .. 78] = "Déclenche l'effet de la {{ColorYellow}}Clé Rouge{{ColorWhite}} {{Collectible580}}", -- Cracked Key
	-- English: "{{Collectible580}} Single-use Red Key"

	[Card_ID .. 80] = "Copie l'effet de la pilule, carte, rune, objet activable ou pierre d'âme la plus récemment utilisée", -- Wild Card
	-- English: "Copies the effect of your most recently used pill, card, rune, soul stone or activated item"

	[Card_ID .. 81] = "Tous les objets sur piédestal de la salle alternent avec un objet différent à intervalles d'une seconde#Seul un deux objets de la rotation peut être ramassé", -- Soul of Isaac
	-- English: "Makes all item pedestals in the room cycle between two different items"

	[Card_ID .. 82] = "Pour la durée d'une salle, les ennemis tués lâchent des demi-cœurs rouges qui disparaissent après 2 secondes", -- Soul of Magdalene
	-- English: "{{Timer}} Effect lasts for the room:#{{HalfHeart}} Enemies killed drop half Red Hearts that disappear after 2 seconds"

	[Card_ID .. 83] = "Ouvre toutes les portes de la salle, y compris les portes des salles rouges {{Collectible580}}) si possible#Brise le miroir de {{ColorTransform}}Canalisations 2", -- Soul of Cain
	-- English: "Opens all doors in the room#{{Collectible580}} Creates red rooms on every wall possible"

	[Card_ID .. 84] = "Paralyse tous les ennemis pendant 3 secondes#Transforme Isaac en une ombre qui peut traverser les ennemis#Inflige des dégâts à tous les ennemis traversés#Augmente temporairement la stat de dégâts pour chaque ennemi traversé", -- Soul of Judas
	-- English: "{{Collectible705}} Activates Dark Arts with a 3 second duration#Temporary ↑ {{Damage}} damage up for every enemy/projectile hit"

	[Card_ID .. 85] = "Provoque 8 pets empoisonnés, répand une flaque brunâtre et fait apparaître 7 Bombes Bronze#Marcher dans la flaque donne {{ColorLime}}débit +1.35{{ColorWhite}} et {{ColorLime}}dégâts +1#{VAR:EFFECTLIST}", -- Soul of ???
	-- Full old Desc: "Provoque 8 pets empoisonnés, répand une flaque brunâtre et fait apparaître 7 Bombes Bronze#Marcher dans la flaque donne {{ColorLime}}débit +1.35{{ColorWhite}} et {{ColorLime}}dégâts +1"
	-- English: "{{Poison}} Causes 8 poison farts with brown creep, then quickly spawns 7 Butt Bombs#Standing on the creep grants:#{VAR:EFFECTLIST}"

	[Card_ID .. 86] = "Invoque 14 oiseaux morts#Les oiseaux pourchassent et infligent des dégâts aux ennemis#Les oiseaux disparaissent quand toutes les cibles sont mortes ou quand Isaac quitte la salle", -- Soul of Eve
	-- English: "{{Timer}} 14 Dead Bird familiars fly in and attack enemies for the room"

	[Card_ID .. 87] = "Déclenche l'effet de {{ColorYellow}}Frénésie{{ColorWhite}} {{Collectible704}}#↑ Vitesse {{ColorLime}}+0.4#↑ Dégâts {{ColorLime}}+3.0#↑ Débit augmenté#{{Timer}} L'effet dure 10 secondes", -- Soul of Samson
	-- English: "{{Collectible704}} Activates Berserk! for 10 seconds#{{Timer}} Each kill increases the duration by 1 second"

	[Card_ID .. 88] = "Déclenche l'effet de {{ColorYellow}}Souffle du Diable{{ColorWhite}} {{Collectible441}}#{{Timer}} L'effet dure 7.5 secondes", -- Soul of Azazel
	-- English: "{{Collectible441}} Fires a Mega Blast beam for 7.5 seconds"

	[Card_ID .. 89] = "Isaac meurt et revient à la vie avec un demi-cœur#Subir un dégât fatal utilise automatiquement l'objet", -- Soul of Lazarus
	-- English: "Isaac dies and immediately revives at half a heart#This item is automatically used upon taking fatal damage (acts as an extra life)"

	[Card_ID .. 90] = "Déclenche les effets du {{ColorYellow}}D6{{ColorWhite}} {{Collectible105}} et du {{ColorYellow}}D20{{ColorWhite}} {{Collectible166}}#Les objets rejoués peuvent provenir de n'importe quelle banque d'objets", -- Soul of Eden
	-- English: "Rerolls item pedestals and pickups in the room#The rerolled items come from random item pools"

	[Card_ID .. 91] = "Isaac meurt et devient {{ColorLightOrange}}L'Égaré#{{Timer}} L'effet dure une salle", -- Soul of the Lost
	-- English: "{{Player10}} Turns the player into The Lost for the room#Allows taking one {{DevilRoom}} Devil Room item for free#Allows entering the Mausoleum or Gehenna door for free"

	[Card_ID .. 92] = "Invoque un familier aléatoire de manière permanente", -- Soul of Lilith
	-- English: "Permanently grants a random familiar"

	[Card_ID .. 94] = "Invoque 15 locustes aléatoires", -- Soul of Apollyon
	-- English: "Spawns 15 random locusts"

	[Card_ID .. 95] = "Invoque Le {{ColorLightOrange}}Délaissé{{ColorWhite}} en tant que personnage secondaire pour la durée d'une salle", -- Soul of the Forgotten
	-- English: "{{Player16}} Spawns The Forgotten as a secondary character for the room"

	[Card_ID .. 96] = "Fait apparaître 6 feux follets aléatoires du {{ColorYellow}}Livre des Vertus{{ColorWhite}} {{Collectible584}}", -- Soul of Bethany
	-- English: "{{Collectible584}} Spawns 6 random Book of Virtues wisps"

	[Card_ID .. 97] = "Invoque {{ColorLightOrange}}Ésaü{{ColorWhite}} en tant que personnage secondaire pour la durée d'une salle", -- Soul of Jacob and Esau
	-- English: "{{Player20}} Spawns Esau as a secondary character for the room#He spawns with as many passive items as the player"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 4] = "Inverse les compteurs de bombes et de clés#Inverse également les bombes et clés dorées", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Golden bombs and keys are also swapped"

	[Pill_ID .. 38] = "Pixellise l'écran pendant 30 secondes", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen for 30 seconds"

	[Pill_ID .. 42] = "Ralentit Isaac et les ennemis pour la durée d'une salle", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. 43] = "Accélère Isaac et les ennemis pour la durée d'une salle#L'effet se réactive après 30 et 60 secondes", -- I'm Excited!!
	-- English: "{{Timer}} Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. 9999] = "Effet de pilule aléatoire#A une chance de disparaître après chaque utilisation", -- Golden Pill
	-- English: "Random pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Horse Pills ----------

local HorseID = PillColor.PILL_GIANT_FLAG
local additionalHorsePillInformations = {
	[Pill_ID .. (HorseID + 1)] = "Empoisonne tous les ennemis de la salle", -- Bad Gas
	-- English: "{{Poison}} Poisons the entire room"

	[Pill_ID .. (HorseID + 2)] = "Inflige 2 cœurs de dégâts à Isaac", -- Bad Trip
	-- English: "{{Warning}} Deals 2 hearts of damage to Isaac#Becomes a Full Health horse pill (+3 Soul Hearts) at 1 heart or less"

	[Pill_ID .. (HorseID + 4)] = "Inverse les compteurs de bombes et de clés#Augmente le nombre de clés et de bombes de 50%#Inverse également les bombes et clés dorées", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Increases bomb and key count by 50%#Golden bombs and keys are also swapped"

	[Pill_ID .. (HorseID + 5)] = "Fait apparaître des maxi troll bombes à la position du joueur", -- Explosive Diarrhea
	-- English: "Spawns a few homing Mega Troll Bombs"

	[Pill_ID .. (HorseID + 11)] = "Donne {{ColorYellow}}Mon Plus Gros Fan{{ColorWhite}} {{Collectible279}}#Pas de limite au nombre de familiers obtenables", -- Pretty Fly
	-- English: "{{Collectible279}} Grants a Big Fan orbital#There is no limit on the number of Big Fans Isaac can have"

	[Pill_ID .. (HorseID + 21)] = "Recharge l'objet activable", -- 48 Hour Energy!
	-- Full old Desc: "Recharge l'objet activable#Fait apparaître des piles"
	-- English: "{{Battery}} Fully recharges active items"

	[Pill_ID .. (HorseID + 22)] = "Vide tous les réceptacles de cœurs d'Isaac sauf un", -- Hematemesis
	-- Full old Desc: "Vide tous les réceptacles de cœurs d'Isaac sauf un#Fait apparaître 1 à 4 cœurs rouges"
	-- English: "{{EmptyHeart}} Drains all but one heart container"

	[Pill_ID .. (HorseID + 23)] = "Paralysie pendant 4 secondes", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 4 seconds"

	[Pill_ID .. (HorseID + 25)] = "Change tous les ennemis de la salle en alliés", -- Pheromones
	-- English: "{{Charm}} Turns every enemy in the room permanently friendly"

	[Pill_ID .. (HorseID + 27)] = "Répand une flaque sur le sol qui inflige des dégâts aux ennemis", -- Lemon Party
	-- English: "Spawns a puddle of creep the size of a room which damages enemies"

	[Pill_ID .. (HorseID + 28)] = "Force Isaac à tirer en diagonale pendant 60 secondes", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 60 seconds"

	[Pill_ID .. (HorseID + 31)] = "Laisse une traînée de cacas derrière Isaac pendant 4 secondes", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 10 seconds"

	[Pill_ID .. (HorseID + 32)] = "Fléau du Dédale pour l'étage actuel", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. (HorseID + 33)] = "Augmente fortement la taille d'Isaac#N'affecte pas sa hitbox", -- One makes you larger
	-- English: "Greatly increases Isaac's size#Doesn't affect his hitbox"

	[Pill_ID .. (HorseID + 34)] = "Diminue fortement la taille d'Isaac#Sa hitbox diminue également", -- One makes you small
	-- English: "Greatly decreases Isaac's size#Also decreases his hitbox's size"

	[Pill_ID .. (HorseID + 35)] = "Fait apparaître 2 araignées bleues pour chaque caca présent dans la salle", -- Infested!
	-- English: "Spawns 2 blue spiders for each poop in the room"

	[Pill_ID .. (HorseID + 36)] = "Fait apparaître 2 araignées bleues pour chaque ennemi dans la salle#S'il n'y a aucun ennemi, fait apparaître 2 à 6 araignées bleues", -- Infested?
	-- English: "Spawn 2 blue spiders for each enemy in the room#Spawns 2-6 blue spiders if there are no enemies in the room"

	[Pill_ID .. (HorseID + 38)] = "Pixellise l'écran pendant 90 secondes", -- Retro Vision
	-- English: "Pixelates the screen for 90 seconds"

	[Pill_ID .. (HorseID + 40)] = "Répand une flaque glissante", -- X-Lax
	-- English: "Spawns a pool of long lasting slippery creep"

	[Pill_ID .. (HorseID + 41)] = "Répand une flaque ralentissante", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of long lasting slowing creep"

	[Pill_ID .. (HorseID + 42)] = "Ralentit tous les ennemis dans la salle", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. (HorseID + 43)] = "Accélère tous les ennemis dans la salle", -- I'm Excited!!
	-- English: "Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. (HorseID + 44)] = "Absorbe la babiole d'Isaac et active son effet de manière permanente", -- Gulp!
	-- English: "Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. (HorseID + 45)] = "Tire une gerbe de larmes explosives", -- Horf!
	-- English: "{{Collectible149}} Shoots a cluster of Ipecac tears"

	[Pill_ID .. (HorseID + 47)] = "Fait apparaître la dernière pilule utilisée en double-dose", -- Vurp!
	-- English: "Spawns the last pill Isaac used as a horse pill"

	[Pill_ID .. (HorseID + 50)] = "↑ Augmente une stat aléatoire deux fois#↓ Diminue une stat aléatoire deux fois#Aucune stat n'est baissée si Isaac possède {{ColorYellow}}Doctorat{{Collectible75}}{{ColorWhite}}, {{ColorYellow}}Pied Chanceux{{Collectible46}}{{ColorWhite}} ou {{ColorYellow}}Vierge{{Collectible303}}{{ColorWhite}}#Aucune stat n'est augmentée si Isaac possède {{ColorYellow}}Doctorat Falsifié{{Collectible654}}", -- Experimental Pill
	-- English: "↑ Increases 1 random stat twice#↓ Decreases 1 random stat twice"

	[Pill_ID .. (HorseID + 9999)] = "Effet de double-dose aléatoire#A une chance de disparaître après chaque utilisation", -- Golden Pill
	-- English: "Random horse pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalHorsePillInformations, EID.descriptions[languageCode].AdditionalInformations)
