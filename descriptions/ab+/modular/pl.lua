---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 5] = "↑ +1 Wysokości lotu łez", -- My Reflection
	-- Full old Desc: "Daje łzom efekt bumerangu#↑ +1.5 Zasięgu#↑ +0.6 Prędkości Strzałów#↑ +1 Wysokości lotu łez"
	-- English: "Tears get a boomerang effect"

	[C_ID .. 8] = "Sojusznik ze zwykłymi łzami", -- Brother Bobby
	-- Full old Desc: "Sojusznik ze zwykłymi łzami#Zadaje 3.5 Obrażeń na łzę"
	-- English: "Shoots normal tears"

	[C_ID .. 9] = "Wszystkie wrogie muchy są teraz przyjazne", -- Skatole
	-- English: "All fly enemies are friendly"

	[C_ID .. 11] = "Odrodzisz się z pełnym zdrowiem", -- 1up!
	-- Full old Desc: "↑ +1 Życie#Odrodzisz się z pełnym zdrowiem"
	-- English: "Isaac respawns with full health on death"

	[C_ID .. 13] = "Zatruci wrogowie mogą upuścić czarne serca", -- The Virus
	-- Full old Desc: "Zatruwasz dotykiem#↓ -0.1 Prędkości#Zatruci wrogowie mogą upuścić czarne serca"
	-- English: "{{Poison}} Touching enemies poisons them#{{BlackHeart}} Poisoned enemies can drop Black Hearts"

	[C_ID .. 21] = "Ujawnia wszystkie ikony na mapie#Nie pokazuje układu mapy", -- The Compass
	-- English: "Reveals icons on the map#Does not reveal the layout of the map"

	[C_ID .. 33] = "Latanie w tym pokoju#Natychmiastowo zabija Mamę, Serce Matki oraz To Żyje#!!! Zabija CIEBIE jeśli użyjesz na Szatanie", -- The Bible
	-- English: "{{Timer}} Flight for the room#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[C_ID .. 36] = "Tworzy jedną kupę#Stwórz ją przy przepaści i zniszcz bombą, aby zrobić most", -- The Poop
	-- English: "Spawns one poop and knocks back enemies#Can be placed next to a pit and destroyed with a bomb to make a bridge"

	[C_ID .. 38] = "Wystrzeliwuje wokół ciebie 10 łez", -- Tammy's Head
	-- English: "Shoots 10 tears in a circle around Isaac#The tears copy Isaac's tear effects, plus 25 damage"

	[C_ID .. 39] = "Zamraża wszystkich przeciwników w pokoju na 4 sekundy", -- Mom's Bra
	-- English: "{{Petrify}} Petrifies all enemies in the room for 4 seconds"

	[C_ID .. 40] = "Powoduje eksplozję pod twoimi nogami", -- Kamikaze!
	-- Full old Desc: "Powoduje eksplozję pod twoimi nogami#Zadaje 40 obrażeń"
	-- English: "Causes an explosion at Isaac's location#Deals {VAR:1} damage"

	[C_ID .. 41] = "Straszy wszystkich przeciwników w pokoju na 5 sekund", -- Mom's Pad
	-- English: "{{Fear}} Fears all enemies in the room for 5 seconds"

	[C_ID .. 42] = "Trująca bomba do rzucania", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes on impact and poisons enemies"

	[C_ID .. 44] = "Teleportuje cię do dowolnego, losowego pokoju poza pokojem I AM ERROR", -- Teleport!
	-- English: "Teleports Isaac into a random room, except I AM ERROR rooms"

	[C_ID .. 46] = "Zwiększa szanse wygranej na automatach#Zwiększa szanse na nagrodę po oczyszczeniu pokoju", -- Lucky Foot
	-- Full old Desc: "↑ +1.0 Szczęścia#Zwiększa szanse wygranej na automatach#Zwiększa szanse na nagrodę po oczyszczeniu pokoju"
	-- English: "+8% room clear reward chance#Better chance to win while gambling"

	[C_ID .. 47] = "Epic Fetus na żądanie#Kontrolowane Naloty", -- Doctor's Remote
	-- English: "{{Collectible168}} On use, start aiming a crosshair#A missile lands on the crosshair after 1.5 seconds#It deals 20x Isaac's damage"

	[C_ID .. 49] = "Laser zadający duże obrażenia", -- Shoop da Whoop!
	-- Full old Desc: "Laser zadający duże obrażenia"
	-- English: "The next shot is replaced with a beam#It deals {VAR:1}x Isaac's damage over {VAR:2} seconds"

	[C_ID .. 53] = "Przyciąga do ciebie pickupy", -- Magneto
	-- English: "Pickups are attracted to Isaac"

	[C_ID .. 54] = "Ujawnia układ piętra", -- Treasure Map
	-- English: "Reveals the floor layout#Does not reveal room icons"

	[C_ID .. 56] = "Tworzy kałużę lemoniady#Zadaje wrogom 66 Obrażeń kontaktowych", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 57] = "Orbitująca mucha na średnim dystansie", -- Distant Admiration
	-- Full old Desc: "Orbitująca mucha na średnim dystansie#Zadaje wrogom 75 Obrażeń kontaktowych"
	-- English: "Mid-range fly orbital"

	[C_ID .. 60] = "Możesz przechodzić przez pojedyńcze dziury", -- The Ladder
	-- English: "Allows Isaac to cross 1-tile gaps"

	[C_ID .. 62] = "Leczy pół serca co 13 zabitych wrogów", -- Charm of the Vampire
	-- English: "{{HealingRed}} Killing 13 enemies heals half a heart"

	[C_ID .. 63] = "Przedmioty na spację mogą być naładowane dwukrotnie", -- The Battery
	-- English: "{{Battery}} Active items can be overcharged to two full charges"

	[C_ID .. 64] = "Zniżka -50% na wszystko w sklepie#Zebranie dwóch sprawi, że wszystko będzie darmowe", -- Steam Sale
	-- English: "{{Shop}} Shop items cost 50% less"

	[C_ID .. 65] = "Tworzy 6 troll bomb w pobliżu środka pokoju", -- Anarchist Cookbook
	-- English: "Spawns 6 Troll Bombs near the center of the room"

	[C_ID .. 66] = "Spowalnia przeciwników na 8 sekund", -- The Hourglass
	-- English: "{{Slow}} Slows enemies down for 8 seconds"

	[C_ID .. 67] = "Sojusznik ze zwykłymi łzami", -- Sister Maggy
	-- Full old Desc: "Sojusznik ze zwykłymi łzami#Zadaje 3.5 Obrażeń na łzę"
	-- English: "Shoots normal tears"

	[C_ID .. 68] = "Laser zamiast łez", -- Technology
	-- English: "Isaac shoots lasers instead of tears"

	[C_ID .. 69] = "Ładowane łzy#↑ Aż do 400% Obrażeń#↓ Mniejsza Szybkostrzelność", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x#{{Tears}} Max charge time is 2.5x tear delay"

	[C_ID .. 71] = "↑ Malejesz", -- Mini Mush
	-- Full old Desc: "↑ +0.3 Prędkości#↓ -4.25 Zasięgu*#↑ +1.5 Wysokości lotu łez*#(*razem wychodzi nieco większy Zasięg)#↑ Malejesz"
	-- English: "The tear height up and range down = slight range up"

	[C_ID .. 73] = "LVL1: Orbituje#LVL2: Orbituje i strzela#LVL3: Meat Boy poziomu 1#LVL4: Meat Boy poziomu 2", -- Cube of Meat
	-- English: "Lv1: Orbital#Lv2: Shooting orbital#Lv3: Meat Boy#Lv4: Super Meat Boy"

	[C_ID .. 75] = "Więcej pieniędzy z Automatu Krwiodawstwa", -- PHD
	-- Full old Desc: "Lepsze pigułki# +1 pigułka#Leczy 2 serca#Więcej pieniędzy z Automatu Krwiodawstwa"
	-- English: "{{Pill}} Changes bad pills into good pills#{{BloodDonationMachine}} Blood Donation Machines give more {{Coin}} coins"

	[C_ID .. 76] = "Odsłania wejścia do sekretnych pokoi", -- X-Ray Vision
	-- English: "{{SecretRoom}} Opens all secret room entrances"

	[C_ID .. 78] = "↑ +17.5% szansy na Pokój Diabła{{DevilRoom}}", -- Book of Revelations
	-- Full old Desc: "+1 Serce duszy#Po użyciu większa szansa na Jeźdźca jako bossa#↑ +17.5% szansy na Pokój Diabła{{DevilRoom}}"
	-- English: "Using the item has a high chance to replace the floor's boss with a horseman"

	[C_ID .. 81] = "Odrodzisz się z 1 Sercem#↓ Ustawia ilość twoich czerwonych serc na 1", -- Dead Cat
	-- Full old Desc: "↑ +9 Żyć#Odrodzisz się z 1 Sercem#↓ Ustawia ilość twoich czerwonych serc na 1"
	-- English: "Isaac respawns with 1 heart container on death#{{Warning}} Sets Isaac's heart containers to 1 when picked up"

	[C_ID .. 83] = "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}", -- The Nail
	-- Full old Desc: "+1 Serce duszy#↑ +0.7 Obrażeń#↓ -0.18 Prędkości#Zadajesz Obrażenia kontaktowe#Miażdżysz kamienie"
	-- English: "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#{{IND}}Allows Isaac to destroy rocks by walking into them"

	[C_ID .. 84] = "Tworzy zapadnię z przejściem na następne piętro#10% szans na wejście do szczeliny", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} 10% chance to open a crawlspace trapdoor"

	[C_ID .. 86] = "Przyzywasz Monstro na jeden atak", -- Monstro's Tooth
	-- English: "Monstro falls on an enemy and deals 120 damage#{{Warning}} Monstro falls on Isaac if the room has no enemies"

	[C_ID .. 88] = "Sojusznik szarżujący w przód", -- Little Chubby
	-- Full old Desc: "Sojusznik szarżujący w przód#Zadaje 52.5 obrażeń kontaktowych na sekundę"
	-- English: "Charges forward in the direction Isaac is shooting"

	[C_ID .. 91] = "Wyjawia typy sąsiednich pokoi#Może wyjawić równiż pokoje sekretne, super sekretne i pokoje mini-bossów", -- Spelunker Hat
	-- English: "Reveals the room type of adjacent rooms#{{SecretRoom}} Can reveal Secret and Super Secret Rooms"

	[C_ID .. 93] = "{VAR:TIMEDEFFECT}", -- The Gamekid
	-- Full old Desc: "Nieśmiertelność +obrażenia kontaktowe#Zjadanie przeciwników regeneruje zdrowie"
	-- English: "{VAR:TIMEDEFFECT}#{{IND}}{{HealingRed}} Killing 2 enemies heals half a heart#{{IND}}{{Fear}} Fears all enemies in the room"

	[C_ID .. 94] = "Upuszcza losową monetę co 2 pokoje", -- Sack of Pennies
	-- English: "{{Coin}} Spawns a random coin every 2 rooms"

	[C_ID .. 95] = "Laserowe łzy", -- Robo-Baby
	-- Full old Desc: "Laserowe łzy#Zadaje 3.5 obrażeń na strzał"
	-- English: "Shoots lasers"

	[C_ID .. 96] = "Upuszcza pół serca co 3 pokoje", -- Little C.H.A.D.
	-- English: "{{HalfHeart}} Spawns a half Red Heart every 3 rooms"

	[C_ID .. 99] = "Spowalniające łzy", -- Little Gish
	-- Full old Desc: "Spowalniające łzy#Zadaje 3.5 obrażeń na strzał"
	-- English: "{{Slow}} Shoots slowing tears"

	[C_ID .. 100] = "Naprowadzane łzy", -- Little Steven
	-- Full old Desc: "Naprowadzane łzy#Zadaje 3.5 obrażeń na strzał"
	-- English: "Shoots homing tears"

	[C_ID .. 104] = "Łzy rozdzielają się na 2 przy kontakcie#Rozdzielone łzy zadają połowę obrażeń", -- The Parasite
	-- English: "Tears split in two on contact#Split tears deal half damage"

	[C_ID .. 105] = "Przelosowuje przedmioty na piedestałach w obecnym pokoju", -- The D6
	-- English: "Rerolls pedestal items in the room"

	[C_ID .. 107] = "{VAR:ROOMEFFECT}", -- The Pinking Shears
	-- Full old Desc: "Latanie#Twoje ciało atakuje wrogów, zadając im 82.5 obrażeń kontaktowych na sekundę"
	-- English: "{VAR:ROOMEFFECT}#{{IND}}Isaac's body separates from his head and attacks enemies with {VAR:1} contact damage per second"

	[C_ID .. 108] = "Wszelkie otrzymane obrażenia są redukowane do połowy serca", -- The Wafer
	-- English: "Reduces most damage taken to half a heart"

	[C_ID .. 109] = "↑ +0.04 Obrażeń za każdą posiadaną monetę", -- Money = Power
	-- English: "↑ {{Damage}} +0.04 Damage for every {{Coin}} coin Isaac has"

	[C_ID .. 111] = "Trujący pierd", -- The Bean
	-- English: "{{Poison}} Deals 5 damage to enemies nearby and poisons them#The poison deals Isaac's damage 6 times"

	[C_ID .. 112] = "Przyspiesza orbitujących sojuszników", -- Guardian Angel
	-- Full old Desc: "Orbituje#Przyspiesza orbitujących sojuszników#Blokuje pociski#Zadaje 105 obrażeń kontaktowych na sekundę"
	-- English: "Speeds up all other orbitals"

	[C_ID .. 113] = "Samostrzelający sojusznik", -- Demon Baby
	-- Full old Desc: "Samostrzelający sojusznik#Zadaje 3 obrażeń na strzał"
	-- English: "Shoots enemies that get close to him"

	[C_ID .. 114] = "Kontrolowany atak nożem#Trzymany, nóż zadaje 2x twoje obrażenia oraz 6x twoich obrażeń będąc w najdalszym, możliwym punkcie", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and 6x at the furthest possible distance"

	[C_ID .. 116] = "-1 Wymagany Ładunek aktywnych przedmiotów#W pełni ładuje obecny aktywny przedmiot", -- 9 Volt
	-- English: "{{Battery}} Automatically charges the first bar of active items#{{Battery}} Fully recharges the active item on pickup"

	[C_ID .. 117] = "Tworzy ptaka, gdy zostaniesz trafiony", -- Dead Bird
	-- Full old Desc: "Tworzy ptaka, gdy zostaniesz trafiony#Ptak zadaje 4 obrażeń kontaktowych na sekundę"
	-- English: "Taking damage spawns a bird that attacks enemies"

	[C_ID .. 122] = "!!! Mając pół czerwonego serca lub mniej:#{VAR:EFFECTLIST}", -- Whore of Babylon
	-- Full old Desc: "!!! Mając pół czerwonego serca lub mniej:#↑ +1.5 Obrażeń#↑ +0.3 Prędkości"
	-- English: "When on half a Red Heart or less:#{VAR:EFFECTLIST}"

	[C_ID .. 123] = "Losowy sojusznik na obecny pokój", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the room"

	[C_ID .. 124] = "Losowy efekt aktywnego przedmiotu", -- Dead Sea Scrolls
	-- English: "Triggers a random active item effect#Chooses the effect from a fixed list of items"

	[C_ID .. 125] = "+5 Bomb", -- Bobby-Bomb
	-- Full old Desc: "Naprowadzane bomby#+5 Bomb"
	-- English: "Homing bombs"

	[C_ID .. 126] = "↑ +1.2 Obrażeń w obecnym pokoju#↓ Zadaje ci 1 serce obrażeń", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 127] = "Przelosowuje całe piętro", -- Forget Me Now
	-- English: "Rerolls and restarts the entire floor"

	[C_ID .. 128] = "Orbitująca mucha", -- Forever Alone
	-- Full old Desc: "Orbitująca mucha#Trzyma się daleko#Zadaje 30 obrażeń kontaktowych na sekundę"
	-- English: "Long range fly orbital"

	[C_ID .. 130] = "Latanie, gdy trzymasz ten przedmiot#Ustawia twoją prędkość na 1.5 jeżeli masz mniejszą#Przy użyciu Szarża w wybranym kierunku#", -- A Pony
	-- English: "While held:#{{Speed}} Sets your Speed to at least 1.5#Flight#Upon use, dashes in the direction of Isaac's movement"

	[C_ID .. 131] = "Upuszcza 1 Bombę do podniesienia co 2-3 pokoje", -- Bomb Bag
	-- English: "{{Bomb}} Spawns 1 bomb pickup every 3 rooms"

	[C_ID .. 132] = "Obrażenia wzrastają wraz z przebytym przez łzę dystansem", -- A Lump of Coal
	-- English: "{{Damage}} Tears deal more damage the further they travel"

	[C_ID .. 133] = "!!! Zamienia:#1 Czerwone serce na 3 Serca duszy", -- Guppy's Paw
	-- English: "{{SoulHeart}} Converts 1 heart container into 3 Soul Hearts"

	[C_ID .. 134] = "Pojawia się więcej skrzynek", -- Guppy's Tail
	-- English: "{{Chest}} 33% chance to replace the room clear reward with a chest#33% chance to spawn no room clear reward"

	[C_ID .. 135] = "Przenośny automat krwiodawsta#Pół serca = 1-3 Monet", -- IV Bag
	-- English: "{{Coin}} Hurts Isaac for half a heart and spawns 1-2 coins#{{Heart}} Removes Red Hearts first"

	[C_ID .. 136] = "Wybuchowa przynęta#Wabi przeciwników", -- Best Friend
	-- English: "Spawns a decoy Isaac that attracts enemies and explodes after 5 seconds"

	[C_ID .. 137] = "+5 bomb", -- Remote Detonator
	-- Full old Desc: "Detonacja bomb na życzenie#+5 bomb"
	-- English: "Isaac's bombs no longer explode automatically#Upon use, detonates all of Isaac's bombs at once"

	[C_ID .. 139] = "Możesz mieć 2 trynkiety na raz", -- Mom's Purse
	-- English: "{{Trinket}} Isaac can hold 2 trinkets"

	[C_ID .. 140] = "+5 bomb", -- Bob's Curse
	-- Full old Desc: "Trujące bomby#+5 bomb"
	-- English: "{{Poison}} Isaac's bombs poison enemies caught in the blast"

	[C_ID .. 142] = "Gdy obrażenia sprowadzą twoje zdrowie do połowy serca, dostajesz 1 Serce duszy#(Raz na pokój)", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again"

	[C_ID .. 144] = "Zamienia Monety w Pickupy", -- Bum Friend
	-- English: "{{Coin}} Picks up nearby coins#Spawns random pickups every 3-4 coins"

	[C_ID .. 147] = "W tym pokoju niszczysz kamienie dotykiem", -- Notched Axe
	-- English: "{{Timer}} For the room, Isaac can break rocks and Secret Room walls by walking into them"

	[C_ID .. 151] = "1/6 szansy na stworzenie muchy, gdy twoje łzy trafią przeciwnika", -- The Mulligan
	-- English: "Tears have a 1/6 chance to spawn a blue fly when hitting an enemy"

	[C_ID .. 155] = "Lata po pokoju", -- The Peeper
	-- Full old Desc: "Lata po pokoju#Zadaje 17.1 obrażeń kontaktowych na sekundę"
	-- English: "Floats around the room"

	[C_ID .. 156] = "+1 Ładunek, gdy otrzymujesz obrażenia", -- Habit
	-- English: "{{Battery}} Taking damage adds 1 charge to the active item"

	[C_ID .. 157] = "↑ Obrażenia rosną za każdym razem, gdy zostaniesz trafiony#Działa do 6 razy na piętro#Efekt utrzymuje się przez całe piętro", -- Bloody Lust
	-- English: "↑ {{Damage}} Taking damage grants a damage up#Applies up to 6 times per floor#Lasts for the whole floor"

	[C_ID .. 158] = "Ujawnia całą mapę#{VAR:EFFECTLIST}", -- Crystal Ball
	-- Full old Desc: "Ujawnia całą mapę#Upuszcza losową Kartę albo Serce duszy"
	-- English: "Spawns a {{SoulHeart}} Soul Heart, {{Rune}} rune or {{Card}} card#{VAR:EFFECTLIST}"

	[C_ID .. 160] = "Tworzy 5 promieni światła przy przeciwnikach #Zadają twoje obrażenia +20", -- Crack the Sky
	-- English: "Spawns 5 beams of light near enemies#Each beam deals 8x Isaac's damage + 160 over 0.8 seconds"

	[C_ID .. 161] = "Po śmierci odrodzisz się jako ??? (Blue Baby)", -- Ankh
	-- English: "{{Player4}} Respawn as ??? (Blue Baby) on death"

	[C_ID .. 163] = "Sojusznik z Widowymi łzami", -- Ghost Baby
	-- Full old Desc: "Sojusznik z Widowymi łzami#Zadaje 3.5 obrażeń na strzał"
	-- English: "Shoots spectral tears"

	[C_ID .. 164] = "Tworzy niebieski ogień#Zadaje obrażenia kontaktowe#Blokuje wrogie łzy#Znika po 2 sekundach", -- The Candle
	-- English: "Throws a blue flame#It deals contact damage, blocks enemy tears, and despawns after 2 seconds"

	[C_ID .. 166] = "Przelosowuje Pickupy", -- D20
	-- English: "Rerolls all pickups in the room"

	[C_ID .. 167] = "Strzela dwiema łzami w kształcie V", -- Harlequin Baby
	-- Full old Desc: "Strzela dwiema łzami w kształcie V#Zadaje 4 obrażeń na strzał"
	-- English: "Shoots two tears in a V-shaped pattern"

	[C_ID .. 168] = "Kontrolowany nalot zamiast łez#Zadaje twoje obrażenia x20", -- Epic Fetus
	-- English: "Instead of shooting tears, aim a crosshair#A rocket lands on the crosshair after 1.5 seconds#{{Damage}} Rockets deal 20x Isaac's damage"

	[C_ID .. 170] = "Depta wrogów", -- Daddy Longlegs
	-- Full old Desc: "Depta wrogów#Zadaje 40 obrażeń na sekundę"
	-- English: "Stomps on a nearby enemy every 4 seconds"

	[C_ID .. 171] = "Spowalnia wrogów na 4 sekundy", -- Spider Butt
	-- Full old Desc: "Spowalnia wrogów na 4 sekundy#Zadaje 10 obrażeń wszystkim wrogom"
	-- English: "{{Slow}} Slows down enemies for 4 seconds"

	[C_ID .. 174] = "Strzela losowymi łzami", -- Rainbow Baby
	-- Full old Desc: "Strzela losowymi łzami#Zadaje 3-5 obrażeń na strzał"
	-- English: "Shoots random tears"

	[C_ID .. 175] = "Otwiera wszystkie drzwi w obecnym pokoju, nawet do sekretnych pokoi", -- Dad's Key
	-- English: "Opens all doors in the room, including {{SecretRoom}}{{SuperSecretRoom}}Secret Rooms, {{ChallengeRoom}}{{BossRushRoom}}Challenge Rooms, and the Mega Satan door"

	[C_ID .. 177] = "Przenośny automat do gier", -- Portable Slot
	-- English: "{{Coin}} Spend 1 coin for a chance to spawn a pickup"

	[C_ID .. 178] = "Tworzy kałużę mazi, gdy zostaniesz trafiony#Zadaje 24 obrażeń na sekundę", -- Holy Water
	-- English: "Taking damage spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 180] = "Pierd przy dotyku", -- The Black Bean
	-- English: "Isaac farts when damaged#{{Poison}} The fart poisons enemies"

	[C_ID .. 181] = "Latanie, gdy trzymasz ten przedmiot#Ustawia twoją prędkość na 1.5 jeżeli masz mniejszą#Przy użyciu Szarża w wybranym kierunku#Szarżując, tworzysz raniące wrogów słupy światła", -- White Pony
	-- English: "{{Speed}} Sets your Speed to at least 1.5#Flight while held#Using the item dashes in the direction of Isaac's movement, leaving behind beams of light"

	[C_ID .. 187] = "Rosnąca kula włosów#Huśta się w okół ciebie#Rośnie, gdy zabija wrogów#Im jest większa, tym większe obrażenia zadaje", -- Guppy's Hairball
	-- English: "Moving swings the hairball around#The ball grows when it kills an enemy#It deals more damage the bigger it is"

	[C_ID .. 188] = "Odzwierciedla twoje ruchy#Strzela w twoim kierunku", -- Abel
	-- Full old Desc: "Odzwierciedla twoje ruchy#Strzela w twoim kierunku#Zadaje 3.5 obrażeń na strzał"
	-- English: "Mirrors Isaac's movement#Shoots towards Isaac"

	[C_ID .. 191] = "Losowy efekt łez co 2-3 sekundy", -- 3 Dollar Bill
	-- English: "Isaac's tears get random effects every 2-3 seconds"

	[C_ID .. 198] = "Tworzy 1 pickup każdego rodzaju", -- Box
	-- English: "Spawns 1 pickup of each type"

	[C_ID .. 199] = "Ze skrzynek wypada więcej rzeczy", -- Mom's Key
	-- Full old Desc: "+2 Klucze#Ze skrzynek wypada więcej rzeczy"
	-- English: "Chests contain more pickups"

	[C_ID .. 202] = "Przy dotyku zamienia wrogów w złoto#Zadaje obrażenia kontaktowe dostosowane do liczby twoich monet#Złoci wrogowie upuszczają monety", -- Midas' Touch
	-- English: "{{Petrify}} Touching enemies petrifies them and turns them gold#Isaac deals contact damage based on his coin count#{{Coin}} Killing a golden enemy spawns coins#Poop spawned by Isaac has a high chance to be golden poop"

	[C_ID .. 203] = "Podwaja wszystkie pickupy", -- Humbleing Bundle
	-- English: "Pickups spawned are doubled if possible"

	[C_ID .. 204] = "50% na upuszczenie losowego pickupa, gdy zostaniesz trafiony", -- Fanny Pack
	-- English: "Taking damage has a 50% chance to spawn a random pickup"

	[C_ID .. 205] = "-2 Serca = W pełni ładuje twój przedmiot przy wciśnięciu spacji#!!! Działa tylko, gdy przedmiot nie ma ładunków!", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of 2 hearts#Only works when the item has no charges"

	[C_ID .. 207] = "LVL1: Orbituje#LVL2: Orbituje i strzela#LVL3: Dziewczyna z bandaży poziomu 1#LVL4: Dziewczyna z bandaży poziomu 2", -- Ball of Bandages
	-- English: "Lv1: Orbital#{{Charm}} Lv2: Orbital that shoots charmed tears#{{Charm}} Lv3: Bandage Girl#{{Charm}} Lv4: Super Bandage Girl"

	[C_ID .. 208] = "!!! Więcej Mistrzowskich Przeciwników", -- Champion Belt
	-- Full old Desc: "↑ +1 Obrażeń#!!! Więcej Mistrzowskich Przeciwników"
	-- English: "Champion enemy chance goes from 5% to 20%#Doesn't increase chance of champion bosses"

	[C_ID .. 209] = "Wybuchy ogłuszają i ranią każdego przeciwnika w pokoju", -- Butt Bombs
	-- Full old Desc: "↑ +5 Bomb#Wybuchy ogłuszają i ranią każdego przeciwnika w pokoju"
	-- English: "{{Confusion}} Explosions concuss and damage every enemy in the room"

	[C_ID .. 210] = "Jesteś nietykalny, jeśli stoisz nieruchomo przez conajmniej 1 sekundę", -- Gnawed Leaf
	-- English: "After 1 second of inactivity, Isaac becomes invincible"

	[C_ID .. 212] = "↑ 50% szansy na odrodzenie", -- Guppy's Collar
	-- English: "50% chance to revive with half a heart on death"

	[C_ID .. 213] = "Blokują wrogie pociski", -- Lost Contact
	-- Full old Desc: "Łzy z tarczą#Blokują wrogie pociski#↓ -0.16 Prędkości Strzałów"
	-- English: "Isaac's tears destroy enemy shots"

	[C_ID .. 214] = "Zostawiasz pod sobą maź, gdy zostaniesz trafiony", -- Anemic
	-- Full old Desc: "↑ +5 Zasięgu#Zostawiasz pod sobą maź, gdy zostaniesz trafiony"
	-- English: "{{Timer}} When taking damage Isaac leaves a trail of blood creep for the room#The creep deals 6 damage per second"

	[C_ID .. 218] = "Powoli regeneruje zdrowie", -- Placenta
	-- Full old Desc: "↑ +1 Serce#Powoli regeneruje zdrowie"
	-- English: "{{HealingRed}} 50% chance to heal half a heart every minute"

	[C_ID .. 220] = "+5 Bomb", -- Sad Bombs
	-- Full old Desc: "Wybuch łez!#+5 Bomb"
	-- English: "Isaac's bombs shoot 10 tears in a circle when they explode"

	[C_ID .. 221] = "Odbijające się łzy", -- Rubber Cement
	-- English: "Isaac's tears bounce off enemies and obstacles"

	[C_ID .. 222] = "Antygrawitacyjne łzy", -- Anti-Gravity
	-- Full old Desc: "↑ 2 Szybkostrzelności#Antygrawitacyjne łzy"
	-- English: "Holding the fire buttons causes tears to hover in midair#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "+5 Bomb", -- Pyromaniac
	-- Full old Desc: "Wybuchy cię leczą#+5 Bomb"
	-- English: "Immunity to explosions, rock waves, and stomp attacks#{{HealingRed}} Getting hit by explosions heals 1 heart"

	[C_ID .. 224] = "Powstałe łezki zadają połowiczne obrażenia", -- Cricket's Body
	-- Full old Desc: "↑ +1 Szybkostrzelności#↓ -10 Zasięgu#Łzy rozdzielają się na 4 przy trafieniu#Powstałe łezki zadają połowiczne obrażenia"
	-- English: "Tears split up in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "Szansa na upuszczenie Serca Duszy/Czarnego Serca, gdy zostaniesz trafiony#Szansa na stworzenie połówki serca przy zabiciu wroga", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a chance to spawn a Soul Heart#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 227] = "Upuszczasz 1-2 monet, gdy zostaniesz trafiony", -- Piggy Bank
	-- Full old Desc: "+3 Monety#Upuszczasz 1-2 monet, gdy zostaniesz trafiony#Dozorca/Keeper upuszcza 0-1 monet"
	-- English: "{{Coin}} Taking damage spawns 1-2 coins"

	[C_ID .. 228] = "↑ +1 Szybkostrzelności", -- Mom's Perfume
	-- Full old Desc: "Szana na straszące wrogów strzały#↑ +1 Szybkostrzelności"
	-- English: "{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 230] = "+6 Czarnych Serc", -- Abaddon
	-- Full old Desc: "↑ +1.5 Obrażeń#↑ +0.2 Prędkości#Straszące wrogów łzy#↓ Usuwa wszystkie czerwone serca#+6 Czarnych Serc"
	-- English: "↓ {{EmptyHeart}} Removes all heart containers#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 232] = "(aktywowany przy zostaniu trafionym)", -- Stop Watch
	-- Full old Desc: "Permanentny efekt spowolnienia#(aktywowany przy zostaniu trafionym)#↑ +0.3 Prędkości"
	-- English: "{{Slow}} Taking damage slows all enemies in the room permanently"

	[C_ID .. 233] = "Widmowe łzy", -- Tiny Planet
	-- Full old Desc: "Łzy orbitują wokół ciebie#↑ +7.0 Wysokość lotu łez#Widmowe łzy"
	-- English: "Isaac's tears orbit around him"

	[C_ID .. 234] = "Tworzy pająki, gdy zabijasz wrogów", -- Infestation 2
	-- English: "Killing an enemy spawns a blue spider"

	[C_ID .. 236] = "Dotykiem zamieniasz przeciwników w kupy", -- E. Coli
	-- English: "Touching an enemy turns it into poop"

	[C_ID .. 241] = "Podwaja wszystkie Pickupy#Brak efektu w Trybie Chciwym/Greed Mode", -- Contract from Below
	-- English: "Doubles all room clear rewards#33% chance for no room clear reward"

	[C_ID .. 242] = "50% Szans na zablokowanie wrogich łez", -- Infamy
	-- English: "50% chance to block enemy shots"

	[C_ID .. 243] = "Tarcza blokująca łzy", -- Trinity Shield
	-- English: "Blocks enemy shots coming from the direction Isaac is shooting"

	[C_ID .. 244] = "Losowo strzelasz laserowym typem łez", -- Tech.5
	-- English: "Occasionally shoot lasers in addition to Isaac's tears"

	[C_ID .. 245] = "Podwaja wszystkie twoje strzały", -- 20/20
	-- English: "Isaac shoots 2 tears at once"

	[C_ID .. 246] = "Ujawnia Sekretne Pokoje", -- Blue Map
	-- English: "{{SecretRoom}} Reveals secret room locations on the map"

	[C_ID .. 247] = "Twoi Sojusznicy zadają podwójne obrażenia", -- BFFS!
	-- English: "Familiars deal double damage"

	[C_ID .. 248] = "Niebieskie Pająki/Muchy zadają podwójne obrażenia", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage"

	[C_ID .. 249] = "2 Przedmioty za pokonanie Bossa zamiast 1#!!! Tylko jeden może być wzięty", -- There's Options
	-- English: "Allows Isaac to choose between 2 items after beating a boss"

	[C_ID .. 250] = "Podwaja wszystkie pojawienia się bomb", -- Bogo Bombs
	-- English: "{{Bomb}} All bomb drops become double bombs"

	[C_ID .. 251] = "Zamienia wszystkie Pigułki w Karty", -- Starter Deck
	-- Full old Desc: "Możesz trzymać 2 Karty#Zamienia wszystkie Pigułki w Karty"
	-- English: "Isaac can carry 2 cards#Turns all pills into cards"

	[C_ID .. 252] = "Zamienia wszystkie Karty w Pigułki", -- Little Baggy
	-- Full old Desc: "Możesz trzymać 2 Pigułki#Zamienia wszystkie Karty w Pigułki"
	-- English: "Isaac can carry 2 pills#Turns all cards into pills"

	[C_ID .. 256] = "+5 Bomb", -- Hot Bombs
	-- Full old Desc: "Płonące bomby#+5 Bomb"
	-- English: "{{Burning}} Isaac's bombs leave a flame where they explode"

	[C_ID .. 258] = "Przelosowuje twoje przedmioty i statystyki przy podniesieniu oraz z każdą zmianą piętra", -- Missing No.
	-- English: "Rerolls all of Isaac's items and stats on pickup and at every new floor"

	[C_ID .. 260] = "Odporność na klątwy", -- Black Candle
	-- Full old Desc: "Odporność na klątwy#+1 Czarne Serce#Zwiększona szansa na Pokój Diabła{{DevilRoom}}/Anioła{{AngelRoom}}"
	-- English: "{{CurseBlind}} Immune to curses"

	[C_ID .. 261] = "↓ Obrażenia spadają wraz z przebytym dystansem łez", -- Proptosis
	-- Full old Desc: "↑ +100% Obrażeń#↓ Obrażenia spadają wraz z przebytym dystansem łez"
	-- English: "↓ Tears deal less damage the further they travel"

	[C_ID .. 262] = "Kiedy twoje zdrowie spadnie do 1 Serca, ranisz wszystkich wrogów w pokoju", -- Missing Page 2
	-- Full old Desc: "+1 Czarne Serce#Kiedy twoje zdrowie spadnie do 1 Serca, ranisz wszystkich wrogów w pokoju"
	-- English: "Taking damage down to 1 heart damages all enemies in the room"

	[C_ID .. 264] = "Atakuje wrogów, gdy zostaniesz trafiony", -- Smart Fly
	-- Full old Desc: "Orbituje#Atakuje wrogów, gdy zostaniesz trafiony#Zadaje 22.5 obrażeń na sekundę"
	-- English: "Attacks enemies when Isaac takes damage"

	[C_ID .. 265] = "Ma 10% szans na zranienie wszystkich wrogów w pokoju, gdy zostanie trafiony łzą przeciwnika", -- Dry Baby
	-- English: "10% chance to damage all enemies in the room when it is hit by an enemy tear"

	[C_ID .. 266] = "Zostawia spowalniającą maź#Tworzy 1-2 przyjazne pająki po oczyszczeniu pokoju", -- Juicy Sack
	-- English: "{{Slow}} Leaves slowing creep#Spawns 1-2 friendly spiders after clearing a room"

	[C_ID .. 267] = "Strzela laserem#Porusza się w kierunku, w którym strzelasz", -- Robo-Baby 2.0
	-- Full old Desc: "Strzela laserem#Zadaje 3.5 obrażeń na strzał#Porusza się w kierunku, w którym strzelasz"
	-- English: "Shoots lasers#Moves in the direction Isaac is shooting"

	[C_ID .. 268] = "Tworzy niebieskie muchy, gdy strzelasz", -- Rotten Baby
	-- English: "Spawns blue flies when Isaac shoots"

	[C_ID .. 269] = "Zostawia na ziemi maź, zadającą 6 obrażeń na sekundę", -- Headless Baby
	-- English: "Leaves creep which deals 6 damage per second"

	[C_ID .. 270] = "Leczy pół serca przy zabiciu wroga#Zadaje 3.2 obrażeń na sekundę", -- Leech
	-- Full old Desc: "Leczy pół serca przy zabiciu wroga#Zadaje 3.2 obrażeń na sekundę"
	-- English: "Chases enemies#{{HealingRed}} Heals Isaac for half a heart when it kills an enemy"

	[C_ID .. 271] = "Co kilka pokoi upuszcza losowe Pickupy", -- Mystery Sack
	-- English: "Spawns a random pickup every 5-6 rooms"

	[C_ID .. 272] = "Przyjazna wybuchowa mucha", -- BBF
	-- Full old Desc: "Przyjazna wybuchowa mucha#Wybuch zadaje 60 Obrażeń"
	-- English: "Friendly exploding fly#The explosion deals {VAR:1} damage#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 273] = "Rzucany sojusznik w stylu bomby#Wybuch zadaje 60 Obrażeń", -- Bob's Brain
	-- Full old Desc: "Rzucany sojusznik w stylu bomby#Wybuch zadaje 60 Obrażeń"
	-- English: "Dashes in the direction Isaac is shooting#Explodes when it hits an enemy#{{Poison}} The explosion deals {VAR:1} damage and poisons enemies#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 274] = "Kiedy zostaniesz trafiony, dostajesz orbitującego sojusznika", -- Best Bud
	-- Full old Desc: "Kiedy zostaniesz trafiony, dostajesz orbitującego sojusznika#Zadaje on 75 obrażeń na sekundę"
	-- English: "Taking damage spawns one midrange orbital for the room"

	[C_ID .. 275] = "Strzela laserem z Ognia Piekielnego{{Collectible118}}", -- Lil Brimstone
	-- Full old Desc: "Strzela laserem z Ognia Piekielnego{{Collectible118}}"
	-- English: "{{Chargeable}} Familiar that charges and shoots a {{Collectible118}} blood beam#It deals {VAR:1} damage over 0.63 seconds"

	[C_ID .. 276] = "Twoje ciało jest teraz nieśmiertelne#!!! Otrzymujesz obrażenia, gdy Serce zostanie trafione", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 277] = "Przyjazny Sojusznik-Duch", -- Lil Haunt
	-- Full old Desc: "Przyjazny Sojusznik-Duch#Zadaje 4 obrażenia na sekundę"
	-- English: "{{Fear}} Chases and fears enemies"

	[C_ID .. 278] = "!!! Zamienia:#1,5 Czerwonego serca w 1 Serce Duszy lub Pająka", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#{{SoulHeart}} Spawns a Soul Heart or spider for every 1.5 Red Hearts picked up"

	[C_ID .. 279] = "Duży, gruby orbitujący Sojusznik", -- Big Fan
	-- Full old Desc: "Duży, gruby orbitujący Sojusznik#Zadaje 30 obrażeń na sekundę"
	-- English: "Large orbital"

	[C_ID .. 280] = "Losowo tworzy niebieskie pająki w pokoju z wrogami", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms"

	[C_ID .. 281] = "Sojusznik-przynęta#Wrogowie będą atakować jego", -- Punching Bag
	-- English: "Decoy familiar#Enemies target him instead of Isaac"

	[C_ID .. 282] = "Pozwala ci skakać", -- How to Jump
	-- English: "Allows Isaac to jump over gaps and obstacles"

	[C_ID .. 283] = "Przelosowuje wszystkie Pickupy, piedestały i twoje pasywne przedmioty", -- D100
	-- English: "Reroll all pickups and pedestal items in the room, and all of Isaac's passive items"

	[C_ID .. 284] = "Przelosowuje wszystkie twoje pasywne przedmioty", -- D4
	-- English: "Reroll all of Isaac's passive items"

	[C_ID .. 285] = "Przelosowuje wszystkich przeciwników w pokoju", -- D10
	-- English: "Reroll all enemies in the room"

	[C_ID .. 286] = "Kopiuje efekt twojej trzymanej karty, nie zużywając jej", -- Blank Card
	-- English: "Triggers the effect of the rune or card Isaac holds without using it"

	[C_ID .. 289] = "Rzuca czerwony płomień#Płomień zniknie po zadaniu obrażeń 5 razy", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 5 times"

	[C_ID .. 290] = "Może przechować do 4 czerwonych serc", -- The Jar
	-- English: "{{Heart}} Picking up Red Hearts while at full health stores up to 4 of them in the Jar#Using the item drops all stored hearts on the floor"

	[C_ID .. 291] = "!!! Zabija przeciwników-kupy!#Zamienia normalnych przeciwników w kupy", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses"

	[C_ID .. 293] = "Strzela laserem z Ognia Piekielnego{{Collectible118}} w 4 kierunkach", -- Head of Krampus
	-- Full old Desc: "Strzela laserem z Ognia Piekielnego{{Collectible118}} w 4 kierunkach"
	-- English: "{{Collectible118}} Shoot a 4-way blood beam#They each deal {VAR:1} damage over 1.33 seconds"

	[C_ID .. 294] = "Odrzuca pobliskich przeciwników i strzały", -- Butter Bean
	-- Full old Desc: "Odrzuca pobliskich przeciwników i strzały#Przy zmianie na inny przedmiot aktywny, po czym podniesieniu tego ponownie, ma 10% szans na zmianę w silniejszy przedmiot Chwila, Co?{{Collectible484}}"
	-- English: "Knocks back nearby enemies and projectiles#10% chance to turn into the stronger {{NameC484}} when swapping it with a different active item and picking it up again"

	[C_ID .. 295] = "Rani wszystkich wrogów w pokoju twoimi obrażeniami x2#Koszt: 1 moneta{{Coin}}", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage to all enemies#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "!!! Konwertuje:#2 Serca Duszy/Czarne w 1 Czerwone Serce", -- Converter
	-- English: "{{Heart}} Converts 2 Soul/Black Hearts into 1 heart container"

	[C_ID .. 299] = "Daje nietykalność gdy jesteś wystarczająco szybki", -- Taurus
	-- Full old Desc: "Jesteś szybszy w pokoju z przeciwnikami!#Daje nietykalność gdy jesteś wystarczająco szybki"
	-- English: "↑ {{Speed}} Slowly gain speed while in hostile rooms#At 2 speed, Isaac becomes invincible and deals contact damage#Afterwards, lose the Taurus speed boost for the room"

	[C_ID .. 300] = "Dotykanie przeciwników ich rani", -- Aries
	-- Full old Desc: "↑ +0.25 Prędkości#Dotykanie przeciwników ich rani"
	-- English: "Touching enemies deals contact damage"

	[C_ID .. 301] = "Po otrzymaniu obrażeń, każde następne w tym samym pokoju zada połowę obrażeń", -- Cancer
	-- Full old Desc: "+3 Serca Duszy#Po otrzymaniu obrażeń, każde następne w tym samym pokoju zada połowę obrażeń"
	-- English: "Taking damage reduces all future damage in the room to half a heart"

	[C_ID .. 303] = "Szansa na nietykalność, gdy zostaniesz trafiony#Zamienia negatywne pigułki w pozytywne", -- Virgo
	-- English: "Taking damage can make Isaac temporarily invincible#{{Luck}} 100% chance at 10 luck#{{Pill}} Converts negative pills into positive ones"

	[C_ID .. 304] = "Balansuje twoje statystyki!#!!! Każde następne podniesienie statystyk wpłynie również na pozostałe", -- Libra
	-- Full old Desc: "+6 Monet{{Coin}}/Kluczy{{Key}}/Bomb{{Bomb}}#Balansuje twoje statystyki!#!!! Każde następne podniesienie statystyk wpłynie również na pozostałe"
	-- English: "Balances Isaac's stats#Future stat changes will be spread across all stats"

	[C_ID .. 308] = "Zostawiasz za sobą maź#Zadaje ona 6 obrażeń na sekundę", -- Aquarius
	-- English: "Isaac leaves a trail of creep#The creep deals 6 damage per second"

	[C_ID .. 311] = "Po śmierci odradzasz się jako Czarny Judasz#↑ (Obrażenia x 2)", -- Judas' Shadow
	-- English: "{{Player12}} When dead, respawn as Dark Judas with a x2 damage multiplier"

	[C_ID .. 313] = "Ignoruje pierwsze otrzymane obrażenia w każdym pokoju", -- Holy Mantle
	-- English: "Negates the first hit taken once per room"

	[C_ID .. 314] = "Niszczysz kamienie wchodząc w nie", -- Thunder Thighs
	-- Full old Desc: "↑ +1 Serce#-0.4 Prędkości#Niszczysz kamienie wchodząc w nie"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 315] = "Magnetyczne łzy#Wpływa na wrogów, pickupy i trynkiety", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets"

	[C_ID .. 316] = "Kiedy ładujesz i zostaniesz trafiony, teleportuje cię do losowego pokoju", -- Cursed Eye
	-- Full old Desc: "Ładowalna fala łez#Kiedy ładujesz i zostaniesz trafiony, teleportuje cię do losowego pokoju"
	-- English: "Charged wave of {VAR:1} tears#{{Warning}} Taking damage while partially charged teleports Isaac to a random room"

	[C_ID .. 317] = "Łzy zostawiają maź#Zadaje ona 30 obrażeń na sekundę", -- Mysterious Liquid
	-- English: "Isaac's tears leave creep#The creep deals 30 damage per second"

	[C_ID .. 318] = "Sojusznik trzymający się blisko", -- Gemini
	-- Full old Desc: "Sojusznik trzymający się blisko#Zadaje 6 obrażeń kontaktowych na sekundę"
	-- English: "Close combat familiar"

	[C_ID .. 319] = "Odbija się po pokoju#Strzela w twoją stronę#Jego obrażenia równe są twoim", -- Cain's Other Eye
	-- English: "Bounces around the room#Low accuracy tears that deal Isaac's damage"

	[C_ID .. 320] = "Kontrolowana Mucha", -- ???'s Only Friend
	-- Full old Desc: "Kontrolowana Mucha#Zadaje 5 obrażeń kontaktowych na sekundę"
	-- English: "Controllable fly"

	[C_ID .. 321] = "Niszcząca kamienie kula na łańcuchu, którą ciągniesz za sobą", -- Samson's Chains
	-- Full old Desc: "Niszcząca kamienie kula na łańcuchu, którą ciągniesz za sobą#Zadaje 10.7 obrażeń kontaktowych na sekundę"
	-- English: "Draggable ball that can destroy rocks"

	[C_ID .. 322] = "Kopiuje efekt jednego z twoich sojuszników#Zadaje ich obrażenia x2", -- Mongo Baby
	-- English: "Mimics your baby familiars' tears#If you have none, shoots normal 3.5 damage tears"

	[C_ID .. 323] = "Wystrzeliwujesz 8 łez we wszystkie kierunki#Ładuje się podczas strzelania", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects#Recharges by shooting tears"

	[C_ID .. 324] = "Teleportuje cię do:#{{TreasureRoom}}Pokoju Skarbów, {{SecretRoom}}{{SuperSecretRoom}}Sekretu lub Pokoju Error", -- Undefined
	-- English: "Teleports Isaac to the {{TreasureRoom}} Treasure, {{SecretRoom}} Secret, {{SuperSecretRoom}} Super Secret or {{ErrorRoom}} I AM ERROR Room"

	[C_ID .. 325] = "Odcina ci głowę#Twoja głowa od teraz stoi w miejscu#Kontrolujesz swoje ciało oddzielnie", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The head shoots 3.5 damage tears#The body is controlled separately and still shoots Isaac's tears"

	[C_ID .. 326] = "Trzymanie spacji do wyczerpania ładunków da ci nieśmiertelność#!!! Nie trzymaj za długo!", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 327] = "Nieśmiertelność, gdy zostaniesz trafiony mając pół czerwonego serca lub kompletny jego brak", -- The Polaroid
	-- English: "Taking damage at half a Red Heart or none makes Isaac temporarily invincible"

	[C_ID .. 328] = "Gdy zostaniesz trafiony mając pół czerwonego serca lub kompletny jego brak, ranisz wszystkich wrogów w pokoju", -- The Negative
	-- English: "Taking damage at half a Red Heart or none damages all enemies in the room"

	[C_ID .. 329] = "Kontrolowana łza", -- The Ludovico Technique
	-- English: "Replaces Isaac's tears with one giant controllable tear"

	[C_ID .. 331] = "Łzy otrzymują aurę, zadającą obrażenia", -- Godhead
	-- Full old Desc: "Naprowadzane łzy#↑ +0.5 Obrażeń#↑ +1.2 Zasięgu#↓ -0.3 Szybkostrzelności#↓ -0.3 Prędkości Strzałów#↑ +0.8 Wysokości lotu łez#Łzy otrzymują aurę, zadającą obrażenia"
	-- English: "{{Damage}} Tears gain an aura that deals 4.5x Isaac's damage per second"

	[C_ID .. 332] = "Po śmierci odradzasz się jako Łazarz (Powstały)", -- Lazarus' Rags
	-- English: "{{Player11}} When dead, revive as Lazarus (Risen)"

	[C_ID .. 333] = "Odkrywa całą mapę", -- The Mind
	-- English: "Full mapping effect"

	[C_ID .. 335] = "Dostajesz aurę odpychającą od ciebie wrogów oraz pociski", -- The Soul
	-- Full old Desc: "+2 Serca Duszy#Dostajesz aurę odpychającą od ciebie wrogów oraz pociski"
	-- English: "Grants an aura that repels enemies and projectiles"

	[C_ID .. 337] = "Spowalnia lub przyspiesza co czwarty pokój", -- Broken Watch
	-- English: "{{Slow}} Slows down every 4th room#13% chance to speed up the room instead"

	[C_ID .. 338] = "Rzucany bumerang#Przy trafieniu wroga ogłusza go i zadaje mu twoje obrażenia x2#Może zbierać pickupy", -- The Boomerang
	-- English: "Throwable boomerang#{{Petrify}} Petrifies enemies and deals 2x Isaac's damage#Can grab and bring back items"

	[C_ID .. 347] = "Duplikuje piedestały / pickupy w pokoju", -- Diplopia
	-- English: "Duplicates all item pedestals and pickups in the room"

	[C_ID .. 348] = "Kopiuje efekt twojej trzymanej pigułki", -- Placebo
	-- English: "{{Pill}} Triggers the effect of the pill Isaac holds without using it"

	[C_ID .. 350] = "Przy wejściu do pokoju zatruwa wszystkich obecnych przeciwników", -- Toxic Shock
	-- English: "{{Poison}} Entering a room poisons all enemies#Enemies killed leave a puddle of creep#The creep deals 30 damage per second"

	[C_ID .. 351] = "Zamraża wrogów w pokoju#Zadaje 5 obrażeń i zatruwa pobliskich przeciwników#Wysyła falę kolców#!!! Może być użyte do otwarcia {{SecretRoom}}Sekretnych Pokoi", -- Mega Bean
	-- English: "{{Petrify}} Petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Sends a rock wave in the direction Isaac is moving#The rock wave can open secret rooms and break rocks"

	[C_ID .. 352] = "↓ Redukuje twoje zdrowie do pół serca#Strzela wielką widmową, penetrującą, łzą ((Obrażenia+1) X 10)", -- Glass Cannon
	-- English: "{{Warning}} Firing the cannon reduces Isaac's health down to half a heart#Shoots a large piercing + spectral tear that does 10x Isaac's damage"

	[C_ID .. 353] = "Bomby będą wybuchać w kształcie krzyżyka", -- Bomber Boy
	-- Full old Desc: "+5 Bomb#Bomby będą wybuchać w kształcie krzyżyka"
	-- English: "Bombs explode in a cross-shaped pattern"

	[C_ID .. 356] = "Sprawia, że twój przedmiot aktywny aktywuje się podwójnie", -- Car Battery
	-- English: "{{Battery}} Using an active item triggers its effect twice"

	[C_ID .. 357] = "Duplikuje twoich sojuszników na jeden pokój", -- Box of Friends
	-- English: "{{Timer}} Duplicates all your familiars for the room#{{Collectible113}} Grants a Demon Baby for the room if Isaac has no familiars"

	[C_ID .. 358] = "Widmowe łzy", -- The Wiz
	-- Full old Desc: "Strzelasz równocześnie dwiema łzami na skos, jak przy pigułce {{Pill}}JESTEŚ CZARODZIEJEM?#Widmowe łzy"
	-- English: "Isaac shoots 2 tears at once diagonally"

	[C_ID .. 359] = "Zwiększa odrzut", -- 8 Inch Nails
	-- Full old Desc: "↑ +1.5 Obrażeń#Zwiększa odrzut"
	-- English: "Increases knockback"

	[C_ID .. 360] = "Strzela takimi samymi łzami jak ty, w odniesieniu do obrażeń, statystyk czy efektów", -- Incubus
	-- English: "Shoots tears with the same tear rate, damage and effects as Isaac"

	[C_ID .. 361] = "Strzela łzami z takimi samymi obrażeniami, jak ty", -- Fate's Reward
	-- English: "Shoots tears with the same damage and effects as Isaac#Shoots at half the rate of other familiars"

	[C_ID .. 362] = "Tworzy losowy pickup co kilka pokoi", -- Lil Chest
	-- English: "35% chance to spawn a pickup every room"

	[C_ID .. 363] = "Blokuje i przyciąga pociski#Zablokowanie 10 łez w jednym pokoju da ci wieczne serce", -- Sworn Protector
	-- Full old Desc: "Orbitujący sojusznik#Zadaje 105 obrażeń kontaktowych na sekundę#Blokuje i przyciąga pociski#Zablokowanie 10 łez w jednym pokoju da ci wieczne serce"
	-- English: "Blocks and attracts enemy shots#{{EternalHeart}} Blocking 10 shots in one room spawns an Eternal Heart"

	[C_ID .. 364] = "Orbitujący sojusznik", -- Friend Zone
	-- Full old Desc: "Orbitujący sojusznik#Zadaje 45 obrażeń kontaktowych na sekundę"
	-- English: "Midrange fly orbital"

	[C_ID .. 365] = "Porusza się wzdłuż ścian/przeszkód w pokoju", -- Lost Fly
	-- Full old Desc: "Porusza się wzdłuż ścian/przeszkód w pokoju#Zadaje 105 obrażeń kontaktowych na sekundę"
	-- English: "Moves along walls/obstacles"

	[C_ID .. 367] = "Gdy bomba zabije przeciwnika, tworzy niebieskie pająki#Twoje bomby lepią się do wrogów", -- Sticky Bombs
	-- Full old Desc: "+5 bomb#Gdy bomba zabije przeciwnika, tworzy niebieskie pająki#Twoje bomby lepią się do wrogów"
	-- English: "Isaac's bombs stick to enemies#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "Strzelanie w jednym kierunku zwiększa szybkostrzelność maksymalnie o 200%", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually decreases tear delay up to 200% and decreases accuracy"

	[C_ID .. 371] = "Tworzy 6 troll bomb za każdym razem, gdy zostaniesz trafiony#Przedmioty zmieniające bomby mają na to wpływ", -- Curse of the Tower
	-- English: "{{Warning}} Taking damage spawns 6 Troll Bombs#The Troll Bombs inherit Isaac's bomb effects"

	[C_ID .. 372] = "Losowa szansa na upuszczenie baterii lub zamrożenie przeciwników w pokoju#Szansa na dodanie jednego ładunku do twojego przedmiotu aktywnego", -- Charged Baby
	-- English: "Every 30 seconds while in an uncleared room, the familiar can:#{{Battery}} Spawn a Battery (max 2 per room)#{{Battery}} Add one charge to the active item (max 2 per room)#{{Petrify}} Petrify all enemies in the room"

	[C_ID .. 373] = "↑ +12.5% obrażeń za każdą łzę, która trafi przeciwnika#(max. +100%)", -- Dead Eye
	-- English: "↑ {{Damage}} Consecutive tear hits on enemies grant +25% damage (max +100%)#Missing has a chance to reset the multiplier"

	[C_ID .. 375] = "20% szans na zablokowanie wrogiej łzy#Odporność na wybuchy/nadepnięcia Mamy i Szatana", -- Host Hat
	-- English: "Grants immunity to explosions, rock wave attacks and Mom and Satan's stomp attacks#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Sklepy natychmiast uzupełniają swoje zaopatrzenie, gdy tylko coś kupisz", -- Restock
	-- Full old Desc: "Tworzy 3 losowe Pickupy#Sklepy natychmiast uzupełniają swoje zaopatrzenie, gdy tylko coś kupisz"
	-- English: "Buying an item from a Shop restocks it instantly"

	[C_ID .. 377] = "Wrogie pająki już cię nie atakują ani nie zadają ci obrażeń kontaktowych", -- Bursting Sack
	-- English: "Spider enemies no longer target or deal contact damage to Isaac"

	[C_ID .. 378] = "Ciągłe strzelanie przez 3 sekundy upuści Dupną Bombę", -- No. 2
	-- English: "Holding a fire button for 2.35 seconds spawns a lit Butt Bomb"

	[C_ID .. 380] = "Otwierasz drzwi monetami, zamiast kluczami", -- Pay To Play
	-- Full old Desc: "+5 monet#Otwierasz drzwi monetami, zamiast kluczami"
	-- English: "{{Coin}} Single-key doors must be opened with coins instead of keys"

	[C_ID .. 381] = "Na początku następnej rozgrywki dostajesz losowy przedmiot", -- Eden's Blessing
	-- Full old Desc: "↑ +0.7 Szybkostrzelności#Na początku następnej rozgrywki dostajesz losowy przedmiot"
	-- English: "Grants a random item at the start of the next run"

	[C_ID .. 382] = "Rzucona w przeciwnika nie-bossa złapie go#Następny rzut wypuści złapanego przeciwnika, który będzie walczyć dla ciebie", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns it as a friendly companion"

	[C_ID .. 383] = "Detonuje wszystkie łzy znajdujące się na ekranie, a każda z nich rozpada się na 6 kolejnych łez", -- Tear Detonator
	-- English: "Splits all of Isaac's tears currently on screen in a circle of 6 tears"

	[C_ID .. 384] = "Wystrzeliwuje i ślizga się po pokoju#Zadaje 90 obrażeń kontaktowych na sekundę", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-90 contact damage per second depending on speed"

	[C_ID .. 385] = "Zjada pobliskie monety#Co każde 6 monet zwiększa swój poziom, poza poziomem 4, który zajmuje mu 12 monet#Poziom 2: może upuścić losowy pickup#Poziom 3: Strzela w tym samym kierunku, co ty#Poziom 4: Zamiast strzelać goni wrogów. Losowo upuszcza bomby#Po Poziomie 4: dalej zjada monety i upuszcza losowe pickupy", -- Bumbo
	-- English: "{{Coin}} Picks up nearby coins#Levels up after getting 6, 12, and 24 coins#Lv2: Chance to spawn item after room clears#Lv3: Shoots tears that can spawn coins on hit#Lv4: Chases enemies, occasionally dropping bombs, can spawn item on coin pickup"

	[C_ID .. 386] = "Przelosowuje wszystkie obiekty-przeszkody, w inny losowy typ obiektu (np. kupę, wazony, TNT, grzyby itp.)", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)"

	[C_ID .. 387] = "Tworzy wielką aurę światła, która spowalnia przeciwników i ich pociski", -- Censer
	-- English: "{{Slow}} Familiar surrounded by a huge aura of light that slows down enemies and projectiles in it"

	[C_ID .. 388] = "Zbiera klucze, w zamian dając losowe skrzynki", -- Key Bum
	-- English: "{{Key}} Picks up nearby keys#{{Chest}} Spawns random chests in return"

	[C_ID .. 389] = "Upuszcza losową runę co 5-6 pokoi", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune every 5-6 rooms"

	[C_ID .. 390] = "Strzela łzami z Najświętszego Serca{{Collectible182}}", -- Seraphim
	-- Full old Desc: "Strzela łzami z Najświętszego Serca{{Collectible182}}#Zadaje 10 obrażeń na strzał"
	-- English: "Shoots Sacred Heart tears"

	[C_ID .. 391] = "Przy każdym otrzymaniu przez ciebie obrażeń, wszyscy przeciwnicy w pokoju zostają oczarowani", -- Betrayal
	-- English: "{{Charm}} Taking damage charms all enemies in the room"

	[C_ID .. 392] = "Dostajesz efekt losowego znaku zodiaku co każde piętro", -- Zodiac
	-- English: "Grants a random zodiac item effect every floor"

	[C_ID .. 393] = "Losowa szansa na wystrzelenie trujących łez#Trujesz wrogów dotykiem#Zatruci wrogowie mogą upuścić czarne serca przy śmierci", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Poisoned enemies have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "↑ +0.3 Wysokości lotu łez", -- Marked
	-- Full old Desc: "Twoje strzały lecą w kierunku położonego na ziemi celownika, którym sterujesz#↑ +0.7 Szybkostrzelności#↑ +3.15 Zasięgu#↑ +0.3 Wysokości lotu łez"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground"

	[C_ID .. 395] = "Strzelasz laserowym kręgiem, który możesz ładować#Krąg ten leci przez cały pokój", -- Tech X
	-- English: "{{Chargeable}} Isaac's tears are replaced by a chargeable laser ring#Ring size increases with charge amount"

	[C_ID .. 396] = "Tworzy do dwóch portali, między którymi możesz się przemieszczać#Możesz je zostawić w innych pokojach", -- Ventricle Razor
	-- English: "Creates up to two portals to travel between#Can be placed in different rooms"

	[C_ID .. 397] = "↑ +0.5 Wysokości lotu łez", -- Tractor Beam
	-- Full old Desc: "Łzy podążają za słupem światła, dopasowując się do zmiany kierunku#↑ +0.5 Szybkostrzelności#↑ +5.25 Zasięgu#↑ +0.16 Prędkości Strzałów#↑ +0.5 Wysokości lotu łez"
	-- English: "Isaac's tears always travel along a beam of light in front of him"

	[C_ID .. 398] = "Łzy mogą zmniejszyć wrogów#Zmniejszeni wrogowie mogą być zadeptani na śmierć", -- God's Flesh
	-- English: "{{Shrink}} Tears can shrink enemies#Shrunken enemies can be crushed and killed by walking over them"

	[C_ID .. 400] = "Pojawia przed tobą włócznię#Zadaje twoje obrażenia x2#Szansa na straszenie przeciwników przy kontakcie", -- Spear of Destiny
	-- English: "Isaac holds a spear in front of him#{{Fear}} The spear deals twice his damage and can fear enemies on contact"

	[C_ID .. 401] = "Szansa na wystrzelenie czegoś na wzór klejącej się bomby", -- Explosivo
	-- English: "25% chance to shoot sticky bomb tears#Sticky bomb tears do not deal damage on hit and explode after a few seconds"

	[C_ID .. 402] = "Przedmioty na piedestałach będą teraz wybierane z losowych puli przedmiotów", -- Chaos
	-- Full old Desc: "Przedmioty na piedestałach będą teraz wybierane z losowych puli przedmiotów#Tworzy 1-6 losowych pickupów"
	-- English: "All items are chosen from random item pools"

	[C_ID .. 403] = "Widzisz obrażenia twoich łez oraz paski zdrowia przeciwników#Nakłada losowy efekt przy kontakcie z wrogiem#Losowo upuszcza baterie", -- Spider Mod
	-- English: "Displays tear damage and health bars of all enemies#Inflicts random status effects to enemies on contact#Randomly spawns batteries"

	[C_ID .. 404] = "Pierdzi, gdy zostanie trafiony. Ten pierd może przeciwników odrzucić, zatruć lub oczarować", -- Farting Baby
	-- Full old Desc: "Blokuje pociski#Pierdzi, gdy zostanie trafiony. Ten pierd może przeciwników odrzucić, zatruć lub oczarować"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies"

	[C_ID .. 405] = "Lata po pokoju", -- GB Bug
	-- Full old Desc: "Lata po pokoju#Zadaje 120 obrażeń na sekundę i nakłada losowe efektu"
	-- English: "Bounces around the room#Applies random status effects to enemies on contact"

	[C_ID .. 406] = "Przelosowuje twoje statystyki#Wpływa jedynie na obrażenia, szybkostrzelność, zasięg i prędkość", -- D8
	-- English: "Multiplies Isaac's damage, tears, range and speed stats by between x0.5 and x2#The multipliers are rerolled each use"

	[C_ID .. 407] = "↑ Zwiększa jedną z twoich statystyk zależnie od koloru aury#Dostajesz nową aurę po otrzymaniu obrażeń#{{ColorRed}}Czerwona{{CR}} =#{{Blank}} +4.0 Obrażeń#{{ColorBlue}}Niebieska{{CR}} =#{{Blank}} -4 Opóźnienia wystrzału#{{ColorYellow}}Żółta{{CR}} = +0.5 Prędkości#{{ColorOrange}}Pomarańczowa{{CR}} =#{{Blank}} +7.5 Zasięgu,#{{Blank}} +1 Wysokości lotu łez", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and gives Isaac a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} -4 Tear delay#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +7.5 Range, ↑ +1 Tear height"

	[C_ID .. 408] = "Po otrzymaniu obrażeń, wokół ciebie pojawi się krąg z czarnego lasera#Zabici nim wrogowie mogą upuścić czarne serce", -- Athame
	-- English: "Taking damage creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the ring have a 15% chance to drop a Black Heart"

	[C_ID .. 409] = "Gdy nie posiadasz czerwonych serc, otrzymujesz latanie i szansę na uzyskanie tarczy", -- Empty Vessel
	-- Full old Desc: "+2 Czarne Serca#Gdy nie posiadasz czerwonych serc, otrzymujesz latanie i szansę na uzyskanie tarczy"
	-- English: "{{EmptyHeart}} When Isaac has no Red Hearts:#Flight#Every 40 seconds while in a hostile room, gain a shield for 10 seconds"

	[C_ID .. 411] = "↑ +0.5 Obrażeń za każdego zabitego przeciwnika w tym pokoju#Maksymalnie +5 Obrażeń po 10 zabiciach", -- Lusty Blood
	-- English: "↑ {{Damage}} +0.5 Damage for each enemy killed in the room#Caps at +5 Damage after 10 kills"

	[C_ID .. 412] = "Po otrzymaniu obrażeń 15 razy, dostajesz na stałe demonicznego sojusznika#Maksymalnie 4 sojuszników", -- Cambion Conception
	-- English: "Taking damage 15 times spawns a permanent demon familiar#After two familiars, it takes 30 instead of 15#Caps at 4 familiars"

	[C_ID .. 413] = "Po podniesieniu 15 serc, dostajesz na stałe anielskiego sojusznika#Maksymalnie 5 sojuszników", -- Immaculate Conception
	-- English: "Picking up 15 hearts spawns a permanent angelic familiar#Caps at 5 familiars#{{SoulHeart}} If all familiars have been granted, spawns a Soul Heart instead"

	[C_ID .. 414] = "2 przedmioty zamiast 1 w Pokoju Skarbów{{TreasureRoom}}#Możesz podnieść tylko 1", -- More Options
	-- English: "{{TreasureRoom}} Allows Isaac to choose between 2 items in treasure rooms"

	[C_ID .. 415] = "↑ Obrażenia X 2, jeśli nie posiadasz żadnych rannych, czerwonych zasobników#{VAR:EFFECTLIST}", -- Crown Of Light
	-- Full old Desc: "+2 Serca Duszy#↑ Obrażenia X 2, jeśli nie posiadasz żadnych rannych, czerwonych zasobników#Bez względu na zasobniki, wyłączy się na pokój przy otrzymaniu obrażeń"
	-- English: "If Isaac has no damaged heart containers:#{VAR:EFFECTLIST}#Taking any damage removes the effect for the room"

	[C_ID .. 416] = "Pozwala ci nosić na raz dwie karty/pigułki/runy", -- Deep Pockets
	-- English: "Allows Isaac to carry two runes/cards/pills"

	[C_ID .. 417] = "Lata po pokoju mając na sobie raniącą aurę, która zadaje 129% twoich obrażeń na sekundę#↑ +50% obrażeń, gdy stoisz w tej aurze", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 1.29x Isaac's damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 418] = "Przy każdym strzale otrzymujesz inny efekt łez", -- Fruit Cake
	-- English: "Each one of Isaac's tears gets a different effect"

	[C_ID .. 419] = "Teleportuje cię do innego, losowego pokoju w którym jeszcze nie byłeś", -- Teleport 2.0
	-- Full old Desc: "Teleportuje cię do innego, losowego pokoju w którym jeszcze nie byłeś#Kolejność: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}>{{IsaacsRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}> Pokój-Error"
	-- English: "Teleports Isaac to a room that has not been cleared yet#Hierarchy: {VAR:TEXT}"

	[C_ID .. 420] = "Poruszając się na wzór koła, stworzysz na ziemi symbol pentagramu, który zadaje 10 obrażeń na jeden tick czasu", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds"

	[C_ID .. 421] = "Nakłada efekt oczarowania na wszystkich pobliskich przeciwników#{{Blank}} oraz zadaje im 5 obrażeń", -- Kidney Bean
	-- English: "{{Charm}} Charms and deals 5 damage to all enemies in close range"

	[C_ID .. 422] = "Cofa czas do poprzedniego pokoju,#{{Blank}} wracając cię do tego samego stanu, w jakim wtedy byłeś", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in"

	[C_ID .. 423] = "Masz wokół siebie dużą otoczkę, która zadaje twoje obrażenia przy kontakcie z wrogiem#{{Blank}} co sekundę#Szansa na odbicie wrogiego pocisku", -- Circle of Protection
	-- English: "Surrounds Isaac with a large halo that deals his damage on contact per second#Chance to reflect enemy projectiles"

	[C_ID .. 424] = "Pickupy mają 33% szans na zmianę w sakiewkę#Tworzy sakiewkę", -- Sack Head
	-- English: "Pickups have a chance to be replaced with a {{GrabBag}}sack:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Spawns a sack"

	[C_ID .. 425] = "Tworzy przed tobą słup światła, który spowalnia wrogów i pociski znajdujące się w nim", -- Night Light
	-- English: "{{Slow}} Spawns a slowing cone of light in front of Isaac"

	[C_ID .. 427] = "Tworzy przesuwalną beczkę z TNT#Użyte drugi raz w pokoju z pojawioną beczką, zdalnie ją wysadzi", -- Mine Crafter
	-- English: "Spawns a pushable TNT barrel#Using the item a second time in the same room remotely detonates the barrel"

	[C_ID .. 429] = "Wrogowie mają 5% szans na upuszczenie Centa, gdy zostaną trafieni twoim pociskiem", -- Head of the Keeper
	-- English: "{{Coin}} Hitting an enemy with a tear has a 5% chance to spawn a Penny"

	[C_ID .. 430] = "Strzela w najbliższych wrogów łzami, zadającymi twoje obrażenia", -- Papa Fly
	-- Full old Desc: "Śledzi każdy twój ruch z sekundowym opóźnieniem#Strzela w najbliższych wrogów łzami, zadającymi twoje obrażenia"
	-- English: "{{Damage}} Shoots tears at nearby enemies that deal Isaac's damage"

	[C_ID .. 431] = "Łzy, które przez nie przelecą rozdzielą się na dwie i przyspieszą", -- Multidimensional Baby
	-- Full old Desc: "Śledzi każdy twój ruch z 2-sekundowym opóźnieniem#Łzy, które przez nie przelecą rozdzielą się na dwie i przyspieszą"
	-- English: "Tears that pass through it are doubled and gain a range + shot speed boost"

	[C_ID .. 432] = "Bomby mogą upuścić losowy pickup przy wybuchu", -- Glitter Bombs
	-- Full old Desc: "+5 bomb#Bomby mogą upuścić losowy pickup przy wybuchu"
	-- English: "{{Charm}} Isaac's bombs have a 25% chance to drop a random pickup and a 15% chance to charm enemies when they explode"

	[C_ID .. 433] = "Za każdym razem gdy otrzymasz obrażenia, nakłada strach na wszystkich wrogów", -- My Shadow
	-- Full old Desc: "Za każdym razem gdy otrzymasz obrażenia, nakłada strach na wszystkich wrogów#{{Blank}} i tworzy przyjazny cień, szarżujący na przeciwników#Zadaje on 5 obrażeń na sekundę"
	-- English: "{{Fear}} Taking damage fears all enemies in the room and spawns a friendly black charger"

	[C_ID .. 434] = "Za każdym razem gdy zabijesz przeciwnika, niebieska mucha zostanie dodana do Słoika#Maksymalnie 20 much#Użycie przedmiotu wypuści wszystkie muchy", -- Jar of Flies
	-- English: "Killing an enemy adds a blue fly to the jar, up to 20 flies#Using the item releases all the flies"

	[C_ID .. 435] = "Wystrzeliwuje 4 łzy na krzyż", -- Lil Loki
	-- Full old Desc: "Wystrzeliwuje 4 łzy na krzyż#Zadaje 3.5 obrażeń na strzał"
	-- English: "Shoots 4 tears in a cross pattern"

	[C_ID .. 436] = "Po otrzymaniu obrażeń zwiększa się twoja Szybkostrzelność na resztę pokoju", -- Milk!
	-- English: "{{Tears}} Taking damage grants a Tears up for the duration of the room"

	[C_ID .. 437] = "Odradza wszystkich przeciwników w pokoju#Pozwala na kilkukrotne zdobycie nagród za oczyszczenie pokoju#!!! Użyte na walce z Chciwością, może przelosować pokój w Sklep{{Shop}}", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room#If used after a Greed fight, rerolls the room into a normal Shop/Secret Room"

	[C_ID .. 440] = "↑ +2.0 Wysokości lotu łez", -- Kidney Stone
	-- Full old Desc: "Losowo w trakcie strzelania przestaniesz strzelać, po czym wypuścisz serię pocisków i kamień nerkowy#↓ -0.2 Prędkości#↓ -17 Zasięgu#↑ +2.0 Wysokości lotu łez"
	-- English: "Isaac occasionally stops firing and charges an attack that releases a burst of tears and a kidney stone"

	[C_ID .. 441] = "Przez 15 sekund strzelasz wielkim laserem Mega Szatana#Efekt utrzymuje się przy zmianie pokoju czy piętra", -- Mega Blast
	-- English: "{{Timer}} Fires a huge Mega Satan blood beam for 15 seconds#The beam persists between rooms and floors"

	[C_ID .. 442] = "!!! Mając 1 pełne, czerwone serce:#{VAR:EFFECTLIST}", -- Dark Prince's Crown
	-- Full old Desc: "!!! Mając 1 pełne, czerwone serce:#↑ +1.5 Zasięgu#↑ +0.7 Szybkostrzelności#↑ +0.2 Prędkości Strzałów#(Nie działa na postaciach bez czerwonych serc)"
	-- English: "While at 1 full Red Heart:#{VAR:EFFECTLIST}"

	[C_ID .. 444] = "Co 15 strzałów, wystrzeliwujesz chmarę łez#Każda wystrzelona w ten sposób łza zadaje podwójne obrażenia", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears#Tears in the cluster deal double damage"

	[C_ID .. 445] = "Słyszysz szczekanie w pokoju, w którym znajduje się szczelina", -- Dog Tooth
	-- Full old Desc: "↑ +0.3 Obrażeń#↑ +0.1 Prędkości#Słyszysz wycie w pomieszczeniu, obok Sekretnego Pokoju#Słyszysz szczekanie w pokoju, w którym znajduje się szczelina"
	-- English: "{{SecretRoom}}{{SuperSecretRoom}} A wolf howls in rooms adjacent to a Secret/Super Secret Room#{{LadderRoom}} A dog barks in rooms with a crawlspace under a rock"

	[C_ID .. 446] = "W trakcie strzelania dostajesz zieloną aurę, która zatruwa przeciwników#Ta trucizna zadaje twoje obrażenia", -- Dead Tooth
	-- English: "{{Poison}} While firing, Isaac is surrounded by a green aura that poisons enemies"

	[C_ID .. 447] = "Tworzy chmurkę smrodu co 7.5 sekund, gdy strelasz bez przerwy#Chmura ta zadaje 3.5 obrażeń, 5 razy#{{Blank}} na sekundę#Chmura utrzymuje się 15 sekund#Możesz nią poruszać, strzelając w nią", -- Linger Bean
	-- English: "Firing without pause for 7.5 seconds spawns a poop cloud#The cloud deals Isaac's damage 5 times a second#The cloud lasts 15 seconds and can be moved by shooting it"

	[C_ID .. 448] = "Gdy otrzymasz obrażenia, masz szansę na dostanie ↑ +5 Zasięgu + zostawiasz za sobą krawą maź, albo tworzysz czerowne serce", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{Collectible214}} 10% chance to get ↑ {{Range}} +5 Range and leave a trail of blood creep for the room"

	[C_ID .. 449] = "25% szans na odbicie wrogiego pocisku, zmieniając go przy tym", -- Metal Plate
	-- Full old Desc: "+1 Serce Duszy#25% szans na odbicie wrogiego pocisku, zmieniając go przy tym#{{Blank}} w ogłuszający"
	-- English: "{{Confusion}} Enemy bullets have a 25% chance to be reflected as concussive tears"

	[C_ID .. 450] = "Co 20 strzałów, wystrzeliwujesz monetę zmieniającą przeciwników w złoto#Kosztuje cię to 1 monetę#Trafieni przeciwnicy upuszczają monetę", -- Eye of Greed
	-- English: "Every 20 tears, Isaac shoots a coin tear that deals double damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-4 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "{{Blank}} kartę {{Card}} lub runę {{Rune}}", -- Tarot Cloth
	-- Full old Desc: "Przy podniesieniu upuszcza losową#{{Blank}} kartę {{Card}} lub runę {{Rune}}#Podwaja efekt użytej karty"
	-- English: "{{Card}} Card effects are doubled or enhanced"

	[C_ID .. 452] = "Gdy otrzymasz obrażenia, wystrzeliwujesz 10 łez w kręgu#{{Blank}} wokół ciebie#Łzy te zadają 125% twoich obrażeń", -- Varicose Veins
	-- English: "Taking damage shoots 10 tears in a circle around Isaac#The tears deal Isaac's damage + 25"

	[C_ID .. 453] = "{{Blank}} na 1-3 mniejsze", -- Compound Fracture
	-- Full old Desc: "Kościane łzy#Po trafieniu w cokolwiek, Łzy rozpadają się#{{Blank}} na 1-3 mniejsze#{{Blank}} odłamki kości#↑ +1.5 Zasięgu#↑ +1.0 Wysokości lotu łez"
	-- English: "Tears shatter into 1-3 small bone shards upon hitting anything"

	[C_ID .. 454] = "Możesz trzymać dwie karty, runy czy pigułki#Przy podniesieniu tworzy losową kartę, pigułkę lub runę", -- Polydactyly
	-- English: "Spawns a {{Rune}} rune, {{Card}} card or {{Pill}} pill on pickup#Allows Isaac to carry 2 runes/cards/pills"

	[C_ID .. 457] = "20% Szans na zignorowanie obrażeń", -- Cone Head
	-- Full old Desc: "+1 Serce Duszy#20% Szans na zignorowanie obrażeń"
	-- English: "20% chance to negate damage taken"

	[C_ID .. 458] = "Przy podniesieniu tworzy losowy trynkiet {{Trinket}}", -- Belly Button
	-- Full old Desc: "Przy podniesieniu tworzy losowy trynkiet {{Trinket}}#Dodaje 1 miejsce na trynkiety"
	-- English: "{{Trinket}} Allows Isaac to carry 2 trinkets"

	[C_ID .. 459] = "Lepkie, trujące Łzy#Przykleja się do wroga, aż ten umrze", -- Sinus Infection
	-- Full old Desc: "Lepkie, trujące Łzy#Zadaje twoje obrażenia co sekundę#Przykleja się do wroga, aż ten umrze#{{Blank}} lub minie 60 sekund"
	-- English: "20% chance to shoot a sticky booger#{{Damage}} Boogers deal Isaac's damage once a second and stick for {VAR:1} seconds#{{Luck}} Not affected by luck"

	[C_ID .. 460] = "Szansa na wystrzał ogłuszających łez", -- Glaucoma
	-- English: "{{Confusion}} 5% chance to shoot concussive tears#Makes the screen slightly darker"

	[C_ID .. 461] = "Tworzy niebieskiego pająka lub muchę przy trafieniu", -- Parasitoid
	-- Full old Desc: "Szansa na strzał jajem#Tworzy spowalniającą maź przy trafieniu#Tworzy niebieskiego pająka lub muchę przy trafieniu"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot egg sacks#{{Slow}} Egg sacks spawn slowing creep and a blue spider or fly on hit"

	[C_ID .. 462] = "Po trafieniu pierwszego wroga, łza zadaje podwójne obrażenia i dostaje efekt naprowadzania", -- Eye of Belial
	-- Full old Desc: "↑ +1.5 Zasięgu#↑ +1.0 Wysokości lotu łez#Dostajesz penetrujące łzy#Po trafieniu pierwszego wroga, łza zadaje podwójne obrażenia i dostaje efekt naprowadzania"
	-- English: "Hitting an enemy makes the tear homing and doubles its damage"

	[C_ID .. 463] = "Szansa na niszczenie kamieni i otwarcie drzwi twoimi łzami", -- Sulfuric Acid
	-- Full old Desc: "↑ +0.3 Obrażeń#Szansa na niszczenie kamieni i otwarcie drzwi twoimi łzami"
	-- English: "Isaac's tears can destroy rocks and open doors"

	[C_ID .. 464] = "Mistrzowscy przeciwnicy częściej upuszczają pickupy", -- Glyph of Balance
	-- Full old Desc: "+2 Serca Duszy#Mistrzowscy przeciwnicy częściej upuszczają pickupy"
	-- English: "Champion enemies drop whatever pickup Isaac needs the most"

	[C_ID .. 465] = "Pozwala strzelać ci w dowolnym kierunku", -- Analog Stick
	-- Full old Desc: "↑ +0.3 Szybkostrzelności#Pozwala strzelać ci w dowolnym kierunku"
	-- English: "Allows Isaac to shoot tears in any direction"

	[C_ID .. 466] = "Pierwszy zabity wróg w pokoju wybuchnie i zarazi pobliskich przeciwników", -- Contagion
	-- English: "{{Poison}} The first enemy killed in a room explodes and poisons all nearby enemies#Enemies that die while poisoned also explode and poison nearby enemies"

	[C_ID .. 467] = "Nieprzerwanie zadaje 10% twoich obrażeń przeciwnikom, na których wskazujesz", -- Finger!
	-- English: "{{Damage}} Constantly deals 10% of Isaac's damage in the direction it points"

	[C_ID .. 469] = "Zostawia za sobą maź#Maź ta zadaje 6 obrażeń na sekundę#Przy dotknięciu wroga może stworzyć słup Świętej Światłośći {{Collectible374}}", -- Depression
	-- English: "Leaves a trail of creep#The creep deals 6 damage per second#Enemies that touch the cloud can be hit by a holy light beam"

	[C_ID .. 470] = "Lata po pokoju#Nie porusza się, gdy strzelasz#Blokuje pociski, gdy jest nieruchomy", -- Hushy
	-- Full old Desc: "Lata po pokoju#Zadaje obrażenia kontaktowe#Nie porusza się, gdy strzelasz#Blokuje pociski, gdy jest nieruchomy"
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped"

	[C_ID .. 471] = "(Podobnie jak", -- Lil Monstro
	-- Full old Desc: "Ładowany strzał na wzór strzelby#(Podobnie jak#{{Blank}} Płuco Monstro {{Collectible229}})#Każda łza zadaje 3.5 obrażeń"
	-- English: "{{Chargeable}} Charges a shotgun attack similar to {{NameC229}}#Each tear deals 3.5 damage"

	[C_ID .. 472] = "Podążają za nim inni sojusznicy#Nie porusza się, gdy strzelasz#Gdy przestaniesz strzelać, teleportuje się do ciebie", -- King Baby
	-- English: "Other familiars follow it#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 473] = "Powoli szarżuje przed siebie", -- Big Chubby
	-- Full old Desc: "Powoli szarżuje przed siebie#Zadaje 40.5 obrażeń kontaktowych na sekundę"
	-- English: "Very slowly charges forwards"

	[C_ID .. 476] = "Duplikuje 1 losowy Pickup w obecnym pokoju", -- D1
	-- English: "Duplicates a random pickup in the room"

	[C_ID .. 477] = "!!! Użyta, 'pożera' wszystkie przedmioty na piedestałach w pokoju#Przedmiot aktywny: Jego efekt zostanie dodany do efektu Pustki (Nakładając je na siebie)#↑ Przedmiot pasywny: Małe ulepszenie losowej statystyki", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate, and will activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 478] = "Zamraża wszystkich wrogów w pokoju, dopóki nie zaczniesz strzelać#Dotknięcie zamrożonego wroga cię zrani#Wrogowie się odmrożą po 30 sekundach", -- Pause
	-- English: "Pauses all enemies in the room until Isaac shoots#Touching a paused enemy still deals damage to Isaac#Enemies unpause after 30 seconds"

	[C_ID .. 479] = "Zjadasz swój trynkiet, zyskując na stałe jego efekt#Pojawia się więcej trynkietów {{Trinket}}", -- Smelter
	-- English: "{{Trinket}} Consumes Isaac's held trinkets and grants their effects permanently#Increases the spawn rate of trinkets"

	[C_ID .. 480] = "Zmienia pickupy w niebieskie muchy lub pająki#Podwaja twoją obecną ilość niebieskich much/pająków#Tworzy 1 niebieską muchę lub pająka, gdy nie masz żadnych", -- Compost
	-- English: "Converts pickups into blue flies or spiders#Doubles all blue flies and spiders#Spawns 1 blue fly or spider if Isaac has none"

	[C_ID .. 482] = "Zmienia cię w inną postać#Usuwa ostatni przedmiot, jaki zdobyłeś", -- Clicker
	-- English: "Changes your character to a random character#Removes the most recent item collected"

	[C_ID .. 483] = "Wpływa na całe piętro#Wysadza wszystkie obiekty#{VAR:EFFECTLIST}#Otwiera:#drogę na Boss Rush", -- Mama Mega!
	-- Full old Desc: "Wpływa na całe piętro#Wysadza wszystkie obiekty#Zadaje 200 obrażeń wszystkim przeciwnikom#Otwiera:#drogę na Boss Rush#drzwi do Husha#Sekretne Pokoje"
	-- English: "Affects the whole floor#Explodes all objects#{VAR:EFFECTLIST}#Opens secret rooms#Opens Boss Rush and Hush regardless of time"

	[C_ID .. 484] = "Przy użyciu odpycha przeciwników i tworzy falę kamieni#Może otwierać pokoje i niszczyć kamienie", -- Wait What?
	-- English: "Upon use, pushes enemies away and spawns a rock wave around Isaac#The rock wave can open rooms and break rocks"

	[C_ID .. 485] = "50% szans na podwojenie przedmiotów, pickupów i skrzynek#{{Blank}} w pokoju#50% szans usunięcie przedmiotów/pickupów w pokoju i stworzenie#{{Blank}} 1 monety", -- Crooked Penny
	-- English: "50% chance to double all items, pickups and chests in room#50% chance to remove items / pickups in room and spawn 1 coin"

	[C_ID .. 486] = "Rani cię, bez zadawania ci obrażeń#Może być użyta do aktywowania efektów przedmiotów", -- Dull Razor
	-- English: "Hurts Isaac without removing health#Triggers any on-hit item effects"

	[C_ID .. 488] = "Dostajesz efekt losowego przedmiotu w każdym pokoju", -- Metronome
	-- English: "Grants a random item effect for the room"

	[C_ID .. 489] = "Efekt losowej Kości przy każdym użyciu", -- D Infinity
	-- English: "Triggers a random dice effect each use"

	[C_ID .. 490] = "Tworzy 2 losowe przedmioty z puli pokoju, w którym zostanie użyte", -- Eden's Soul
	-- English: "Spawns 2 random items depending on the current room's item pool#Starts with no charges"

	[C_ID .. 491] = "Użycie pigułki zatruwa wszystkich przeciwników w pokoju", -- Acid Baby
	-- Full old Desc: "Upuszcza losową pigułkę {{Pill}} co 3 pokoje#Użycie pigułki zatruwa wszystkich przeciwników w pokoju"
	-- English: "{{Pill}} Spawns a random pill every {VAR:1} rooms#{{Poison}} Using a pill poisons all enemies in the room"

	[C_ID .. 492] = "Wskazuje położenie sekretnych pokoi, kamieni z X oraz szczelin", -- YO LISTEN!
	-- Full old Desc: "↑ +1 Szczęścia#Wskazuje położenie sekretnych pokoi, kamieni z X oraz szczelin"
	-- English: "Highlights the location of {{SecretRoom}} secret rooms, tinted rocks and {{LadderRoom}} crawlspaces"

	[C_ID .. 493] = "Za każdy pusty zasobnik na serce:#{VAR:EFFECTLIST}", -- Adrenaline
	-- Full old Desc: "Za każdy pusty zasobnik na serce:#↑ +0.2 Obrażeń"
	-- English: "For every empty heart container:#{VAR:EFFECTLIST}"

	[C_ID .. 494] = "Przy kontakcie,#{{Blank}} łzy tworzą 1-2 iskry elektryczne#Iskry zadają połowę twoich obrażeń", -- Jacob's Ladder
	-- English: "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half of Isaac's damage"

	[C_ID .. 495] = "Szansa na wystrzelenie Ognia zamiast łez#Ogień utrzyma się, dopóki nie zada obrażeń 5 razy", -- Ghost Pepper
	-- English: "Chance to shoot a red flame that blocks enemy shots and deals contact damage#The flame disappears after dealing damage or blocking shots 5 times"

	[C_ID .. 496] = "W innym przypadku zadają 3x twoje obrażenia", -- Euthanasia
	-- Full old Desc: "Szansa na wystrzelenie strzykawki#Strzykawki natychmiastowo zabijają zwykłuch przeciwników#W innym przypadku zadają 3x twoje obrażenia"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a needle#Needles kill normal enemies instantly, bursting them into 10 tears#{{Damage}} Needles deal 3x Isaac's damage against bosses"

	[C_ID .. 497] = "Po wejściu do pokoju wszyscy wrogowie dostają dezorientację i cię nie widzą, dopóki nie zaczniesz strzelać", -- Camo Undies
	-- English: "{{Confusion}} Entering a room confuses all enemies until Isaac starts shooting"

	[C_ID .. 498] = "Tworzy pokoje#{{Blank}} Diabła{{DevilRoom}} i Anioła{{AngelRoom}}#Po wejściu do jednego, drugi zniknie", -- Duality
	-- English: "{{AngelDevilChance}} Spawns both a Devil and Angel Room if either would have spawned#Entering one makes the other disappear"

	[C_ID .. 501] = "Dostajesz 1 zasobnik na serca za każde 25 monet#Dozorca / Keeper otrzyma dodatkowe Pieniężne Serca {{CoinHeart}}", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins gained after getting Greed's Gullet"

	[C_ID .. 502] = "Szansa na strzelenie zadającą podwójne obrażenia łzą, pozostawiającą Maź", -- Large Zit
	-- English: "{{Slow}} Firing occasionally shoots a white creep tear that deals double damage and slows enemies#Taking damage shoots a white creep tear"

	[C_ID .. 503] = "{{Blank}} zada im 3.5 obrażeń", -- Little Horn
	-- Full old Desc: "Szansa na wystrzelenie łzy, która natychmiastowo zabija wrogów nie-bossów#Wbieganie we wrogów#{{Blank}} zada im 3.5 obrażeń"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot tears that instantly kill enemies#Isaac deals 3.5 contact damage"

	[C_ID .. 504] = "Tworzy muchę-wieżyczkę, strzelającą w przeciwników#Każdy strzał zadaje 2 obrażeń", -- Brown Nugget
	-- English: "Spawns a fly turret that shoots at enemies#Each shot deals 2 damage"

	[C_ID .. 505] = "Szansa na stworzenie Oczarowanego przeciwnika przy wejściu do pokoju z wrogami", -- Poke Go
	-- English: "{{Friendly}} Entering a hostile room has a chance to spawn a friendly enemy"

	[C_ID .. 506] = "Łzy mogą wywołać u wrogów krwawienie, które co 5 sekund zadaje im obrażenia o wartości 10% ich pełnego zdrowia", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds"

	[C_ID .. 507] = "Zadaje twoje obrażenia +10% wartości maksymalnego zdrowia przeciwnika#Wpływa na wszystkich wrogów w pokoju#Szansa na upuszczenie połówki serca przy zadawaniu obrażeń", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts#{{HalfSoulHeart}} Having no heart containers drops Soul Hearts instead"

	[C_ID .. 508] = "Orbituje wokół ciebie#Nakłada na wrogów krwawienie, które co 5 sekund zadaje im obrażenia o wartości 10% ich maksymalnego zdrowia#Przy kontakcie zadaje 300% twoich obrażeń na sekundę", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds#{{Damage}} Deals 3x Isaac's damage per second#Does not block shots"

	[C_ID .. 509] = "Orbituje wokół ciebie#Zadaje 30 obrażeń kontaktowych na sekundę", -- Bloodshot Eye
	-- Full old Desc: "Orbituje wokół ciebie#Strzela łzą w losowym kierunku co 2 sekundy#Zadaje 3.5 obrażeń na łzę#Zadaje 30 obrażeń kontaktowych na sekundę"
	-- English: "Orbital that shoots a tear in a random direction every 2 seconds#Does not block shots"

	[C_ID .. 510] = "Tworzy przyjazną wersję Delirium na jeden pokój, który przyjmuje formę bossa", -- Delirious
	-- English: "{{Friendly}} Spawns a friendly delirium version of a boss for the room"

	[C_ID .. 511] = "Orbituje wokół losowego wroga, dopóki ten nie umrze", -- Angry Fly
	-- Full old Desc: "Orbituje wokół losowego wroga, dopóki ten nie umrze#Zadaje 30 obrażeń kontaktowych na sekundę"
	-- English: "Orbits a random enemy until that enemy dies"

	[C_ID .. 512] = "Rzucana czarna dziura, która wszystko wciąga#Zadaje 0.4 obrażeń na każdy tick czasu#Niszczy pobliskie kamienie#Utrzymuje się 6 sekund", -- Black Hole
	-- English: "Throwable black hole, which sucks in everything#Deals 6 damage per second#Destroys nearby rocks#Lasts 6 seconds"

	[C_ID .. 513] = "Losowa szansa na oczarowanie/wystraszenie wroga#Losowa szansa na stworzenie tęczowej kupy, gdy otrzymasz obrażenia", -- Bozo
	-- Full old Desc: "↑ +0.1 Obrażeń#+1 Serce Duszy#Losowa szansa na oczarowanie/wystraszenie wroga#Losowa szansa na stworzenie tęczowej kupy, gdy otrzymasz obrażenia"
	-- English: "{{Charm}} Randomly charms/fears enemies#Taking damage has a random chance to spawn a Rainbow Poop"

	[C_ID .. 514] = "Sprawia, że losowi wrogowie mają 'lagi' w losowych odstępach czasu, przez co chwilowo stają w miejscu#25% szans na podwojenie nagrody za oczyszczenie pokoju", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#25% chance to double room clear drops"

	[C_ID .. 515] = "Tworzy losowy przedmiot z puli obecnego pokoju#Szansa na stworzenie Bryły Węgla{{Collectible132}} lub Kupy{{Collectible36}}", -- Mystery Gift
	-- English: "Spawns a random item from the current room's item pool#Chance to spawn Lump of Coal or The Poop instead"

	[C_ID .. 516] = "Tworzy Zraszacz, który obraca się w stylu koła, strzelając łzami we wszystkie kierunki", -- Sprinkler
	-- English: "Spawns a Sprinkler that shoots the same tears as Isaac in a circle around itself"

	[C_ID .. 517] = "Pozwala ci bardzo szybko stawiać bomby na ziemi", -- Fast Bombs
	-- Full old Desc: "+7 Bomb#Pozwala ci bardzo szybko stawiać bomby na ziemi"
	-- English: "Removes the delay between bomb placements"

	[C_ID .. 518] = "Sojusznik o wyglądzie losowego Dziecka z trybu kooperacji#Losowy efekt łez#Losowy co każde piętro", -- Buddy in a Box
	-- English: "Familiar which looks like a random co-op baby#Has random tear effects#Effects change every floor"

	[C_ID .. 519] = "Sojusznik, który zmienia się w innych losowych sojuszników co 10 sekund", -- Lil Delirium
	-- English: "Transforms into a random familiar every 10 seconds"

	[C_ID .. 520] = "+1 ładunek dla twojego przedmiotu aktywnego co każde 15 zabitych wrogów", -- Jumper Cables
	-- English: "Killing 15 enemies adds 1 charge to the active item"

	[C_ID .. 521] = "Użyte sprawia, że losowy przedmiot w Sklepie{{Shop}} lub#{{Blank}} Pokoju Diabła{{DevilRoom}} stanie się darmowy", -- Coupon
	-- English: "Makes one random item in the {{Shop}} Shop or {{DevilRoom}} Devil Room free#Holding the item guarantees one Shop item is on sale"

	[C_ID .. 522] = "Pobliskie pociski wrogów zatrzymują się na 3 sekundy#Następnie są one od ciebie odrzucane#Odnawia się co#{{Blank}} 3 sekundy", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards"

	[C_ID .. 523] = "Użyte, przechowuje wszystkie Pickupy z obecnego pokoju#Użyte ponownie wyrzuci swoją zawartość na ziemię#Możesz w ten sposób przenosić rzeczy między pokojami", -- Moving Box
	-- English: "Stores all pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Łzy są połączone wiązką elektryczną#Elektryczność zadaje obrażenia równe twoim", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#The beams deal Isaac's damage"

	[C_ID .. 525] = "Przy otrzymaniu obrażeń tworzy orbitujący wokół ciebie strzęp blokujący wrogie pociski#Maks. 3 na raz#Strzępy są niszczone. gdy otrzymają zbyt wiele obrażeń", -- Leprosy
	-- English: "Taking damage spawns a projectile blocking orbital#Caps at 3 orbitals#They deal 35 contact damage per second#Orbitals are destroyed if they take too much damage"

	[C_ID .. 526] = "Tworzy małych jeźdźców w roli sojuszników, którzy tworzą własne szarańcze#Jeźdźcy zmieniają się co 10 sekund", -- 7 Seals
	-- English: "Spawns a small horseman familiar that spawns locusts#The horseman and its locust changes every 10 seconds"

	[C_ID .. 527] = "!!! Sojusznik wykonujący twoje polecenia:#Otwiera drzwi & skrzynki, Przynosi przedmioty, Kradnie ze Sklepu / od Diabła, walczy z wrogami, wybucha, oraz naciska przyciski", -- Mr. ME!
	-- English: "Displays a movable cursor for a few seconds, then summons a ghost that will, depending on the cursor position:#Open doors or chests#Fetch an item#50% chance to steal from the Shop / Devil#Attack an enemy until it dies#Explode walls, rocks, shopkeepers, angel statues, machines, beggars"

	[C_ID .. 528] = "Orbitujący pryzmat#Przy kontakcie z nim, łzy rozdzielają się na 4", -- Angelic Prism
	-- English: "Orbital prism#Friendly tears hitting it split into 4"

	[C_ID .. 529] = "Łzy zachowują się jak kule od bilarda", -- Pop!
	-- English: "Isaac's tears bounce off each other and disappear when they stop moving"

	[C_ID .. 530] = "Dostaniesz nagrodę za zabicie wrogów w kolejności, w której są oznaczeni czaszką", -- Death's List
	-- English: "Killing enemies in the order dictated by the mark {{DeathMark}} above them grants a random pickup or stat increase"

	[C_ID .. 531] = "↑ +31% Obrażeń", -- Haemolacria
	-- Full old Desc: "Łzy lecą łukiem#Przy kontakcie rozpadają się na wiele mniejszych#↓ Mniejsza Szybkostrzelność#↑ +31% Obrażeń"
	-- English: "Isaac's tears fly in an arc and burst into smaller tears on impact"

	[C_ID .. 532] = "Łzy spowalniają wraz z przebytym dystansem#Po zatrzymaniu, eksplodują w 8 mniejszych łez#Strzelając łzami w łzy, możesz je powiększać", -- Lachryphagy
	-- English: "Isaac's tears progressively slow down, stop, then explode into 8 smaller tears#Tears can merge and become bigger"

	[C_ID .. 533] = "Strzelasz białymi promieniami światła", -- Trisagion
	-- English: "Replaces Isaac's tears with piercing beams of light#The beams deal 33% damage but can hit enemies multiple times"

	[C_ID .. 534] = "Pozwala ci trzymać 2 przedmioty aktywne#Przełącz się między nimi wciskając przycisk od upuszczania rzeczy (przytrzymaj jako \"The Forgotten / Zapomniany\")", -- Schoolbag
	-- English: "Allows Isaac to hold 2 active items#The items can be swapped using the Drop button ({{ButtonRT}})"

	[C_ID .. 535] = "Dostajesz tarczę po wejściu do pokoju z bossem {{BossRoom}}", -- Blanket
	-- Full old Desc: "+1 Serce Duszy#Leczy 1 Czerwone Serce#Dostajesz tarczę po wejściu do pokoju z bossem {{BossRoom}}"
	-- English: "{{HolyMantle}} Entering a boss room grants a Holy Mantle shield (prevents damage once)"

	[C_ID .. 536] = "Poświęcasz 1-2 sojuszników i tworzysz przedmiot z puli Pokoju Diabła{{DevilRoom}}#Zmienia twoje niebieskie pająki/muchy w monety", -- Sacrificial Altar
	-- English: "Sacrifices up to 2 familiars and spawns a devil item for each sacrifice#{{Coin}} Turns blue spiders/flies into coins"

	[C_ID .. 537] = "Tworzy losową pigułkę#Sojusznik, który wymiotuje mazią#Typ mazi zmienia się wraz z każdą spożytą pigułką", -- Lil Spewer
	-- English: "{{Pill}} Spawns a random pill on pickup#Fires a line of creep#The type of creep changes with each pill use"

	[C_ID .. 538] = "Przy otrzymaniu obrażeń istnieje szansa, że połkniesz trynkiet, zyskując jego efekt na stałe", -- Marbles
	-- Full old Desc: "Tworzy 3 losowe trynkiety {{Trinket}}#Przy otrzymaniu obrażeń istnieje szansa, że połkniesz trynkiet, zyskując jego efekt na stałe"
	-- English: "{{Collectible479}} Taking damage has a 10% chance to consume Isaac's held trinket and grant its effects permanently"

	[C_ID .. 539] = "Tworzy zauroczonego przeciwnika, gdy zostaniesz trafiony#Stworzysz tym silniejszego kolegę, im więcej pokoi wyczyścisz bez otrzymania obrażeń", -- Mystery Egg
	-- English: "{{Friendly}} Taking damage spawns a friendly enemy#Spawns stronger friends the more rooms are cleared without taking damage"

	[C_ID .. 540] = "Łzy odbijają się od podłogi#Zadają obrażenia rozpryskowe przy każdym odbiciu", -- Flat Stone
	-- English: "Isaac's tears bounce off the floor and cause splash damage on every bounce"

	[C_ID .. 542] = "Odbija pociski", -- Slipped Rib
	-- Full old Desc: "Orbituje#Odbija pociski"
	-- English: "Reflects enemy projectiles"

	[C_ID .. 543] = "Tworzy białą kupę, gdy zostaniesz trafiony#Biała kupa może blokować obrażenia i ma aurę zwiększającą Szybkostrzelność#{VAR:EFFECTLIST}", -- Hallowed Ground
	-- Full old Desc: "Tworzy białą kupę, gdy zostaniesz trafiony#Biała kupa może blokować obrażenia i ma aurę zwiększającą Szybkostrzelność"
	-- English: "Taking damage spawns a white poop#While inside the poop's aura:#{VAR:EFFECTLIST}#{{IND}}Chance to block damage"

	[C_ID .. 544] = "Unosi się przed tobą#Zadaje obrażenia równe twoim 6 razy na sekundę", -- Pointy Rib
	-- English: "Levitates in front of Isaac#Deals 6x Isaac's damage per second"

	[C_ID .. 545] = "Tworzy orbitującą kość lub oczarowanego Bony'ego za każdego zabitego w pokoju wroga", -- Book of the Dead
	-- English: "{{Friendly}} Spawns a bone orbital or friendly bony per enemy killed in the room (up to 8)"

	[C_ID .. 546] = "Daje ci aurę, która zamraża przeciwników", -- Dad's Ring
	-- English: "{{Petrify}} Grants an aura that petrifies enemies"

	[C_ID .. 547] = "Tworzy trynkiet", -- Divorce Papers
	-- Full old Desc: "+1 Kościane Serce#↑ +0.7 Szybkostrzelności#Tworzy trynkiet#{{Blank}} {{Trinket21}} Tajemnicza Kartka"
	-- English: "{{Trinket21}} Spawns the Mysterious Paper trinket"

	[C_ID .. 548] = "Sojusznik Bumerangowy#Może zbierać dla ciebie pickupy", -- Jaw Bone
	-- Full old Desc: "Sojusznik Bumerangowy#Zadaje 7 obrażeń kontaktowych#Może zbierać dla ciebie pickupy"
	-- English: "Boomerang-like familiar#Can grab and bring back pickups"

	[C_ID .. 550] = "Stopa mamy będzie cię ciągle atakować#Użycie wyłączy ataki stopy mamy w tym pokoju#!!! Spróbuj przejść Bossrush z jej pomocą!", -- Broken Shovel
	-- English: "Mom's Foot constantly tries to stomp Isaac#Using the item stops the stomping for the room (or one Boss Rush wave)#{{Warning}} (Try to beat Boss Rush with it!)"

	[C_ID .. 551] = "Druga część rozwalonej łopaty#!!! Użyj na stercie brudu w#{{Blank}} \"Ciemni/Dark Room\"", -- Broken Shovel
	-- English: "Completes Mom's Shovel#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 552] = "Tworzy zapadnię na następne piętro#!!! Użyj na stercie brudu w#{{Blank}} \"Ciemni/Dark Room\"#!!! Odblokujesz coś czadowego", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#10% chance for {{LadderRoom}} crawlspace trapdoor#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 1] = "Upuszcza 1 monetę, gdy otrzymasz obrażenia", -- Swallowed Penny
	-- English: "{{Coin}} Taking damage spawns 1 coin"

	[T_ID .. 2] = "50% więcej pickupów z kup", -- Petrified Poop
	-- English: "50% chance to get drops from poop"

	[T_ID .. 3] = "-1 potrzebnego ładunku do przedmiotu aktywnego", -- AAA Battery
	-- English: "{{Battery}} -1 Charge needed for active items"

	[T_ID .. 4] = "Teleportuje cię w losowe miejsce, kiedy używasz przedmiotu", -- Broken Remote
	-- English: "{{Collectible44}} Using an active item teleports Isaac to a random room"

	[T_ID .. 5] = "Więcej mistrzowskich przeciwników#Większa szansa na pokoje wyzwań z bossami{{BossRushRoom}}", -- Purple Heart
	-- English: "2x chance for champion enemies"

	[T_ID .. 6] = "Magnes na monety", -- Broken Magnet
	-- English: "{{Coin}} Attracts coins to Isaac"

	[T_ID .. 7] = "Większa szansa na znalezienie Biblii {{Collectible33}}", -- Rosary Bead
	-- Full old Desc: "Większa szansa na pokój anioła{{AngelRoom}}#Większa szansa na znalezienie Biblii {{Collectible33}}"
	-- English: "{{Collectible33}} Higher chance to find The Bible in {{Shop}} Shops and {{Library}} Libraries"

	[T_ID .. 8] = "{VAR:ITEMDESCRIPTION}", -- Cartridge
	-- Full old Desc: "Szansa na efekt#{{Blank}} {{Collectible93}} Gamekid, gdy otrzymasz obrażenia"
	-- English: "{{Timer}} {VAR:LUCKCHANCE}% chance upon taking damage:#{VAR:ITEMDESCRIPTION}"

	[T_ID .. 9] = "Pulsujące łzy#Wpływa na hitbox łez", -- Pulse Worm
	-- English: "Isaac's tears pulsate#Affects tear hitbox"

	[T_ID .. 10] = "↑ +0.3 Szybkostrzelności", -- Wiggle Worm
	-- Full old Desc: "Falujące łzy#↑ +0.3 Szybkostrzelności"
	-- English: "Isaac's tears move in waves"

	[T_ID .. 11] = "Łzy poruszają się spiralnie z dużą prędkością", -- Ring Worm
	-- English: "Isaac's tears move in spirals with high speed"

	[T_ID .. 12] = "50% szersze łzy", -- Flat Worm
	-- English: "50% wider tears#Increases knockback"

	[T_ID .. 13] = "Jeden darmowy przedmiot w sklepie", -- Store Credit
	-- English: "{{Shop}} Allows Isaac to take 1 Shop item for free"

	[T_ID .. 14] = "Zapobiega obrażeniom od mazi i kolców", -- Callus
	-- English: "Immune to creep and floor spikes"

	[T_ID .. 15] = "Rozwalanie kamieni tworzy monety", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks spawns coins"

	[T_ID .. 17] = "Więcej pojawiających się czarnych serc {{BlackHeart}}", -- Black Lipstick
	-- English: "{{BlackHeart}} +10% chance for random Soul Hearts to spawn as Black Hearts"

	[T_ID .. 18] = "Wiecej pojawiających się wiecznych serc {{EternalHeart}}", -- Bible Tract
	-- English: "{{EternalHeart}} +3% chance for Eternal Hearts"

	[T_ID .. 19] = "Otwieranie skrzynek bez użycia kluczy", -- Paper Clip
	-- English: "{{GoldenChest}} Gold chests can be opened for free"

	[T_ID .. 20] = "Gdy masz połowę serca, tworzy czarne serca {{BlackHeart}}#!!! Do 3 użyć", -- Monkey Paw
	-- English: "{{BlackHeart}} Spawns 1 Black Heart when Isaac's health is reduced to half a heart#{{Warning}} Disappears after spawning 3 Black Hearts"

	[T_ID .. 21] = "Imituje \"Polaroid\"{{Collectible327}}, \"Negatyw\"{{Collectible328}}, \"Brakującą Kartkę\"{{Trinket48}} oraz \"Plakat Zaginionego\"{{Trinket23}}#{VAR:TEXT}", -- Mysterious Paper
	-- Full old Desc: "Imituje "Polaroid"{{Collectible327}}, "Negatyw"{{Collectible328}}, "Brakującą Kartkę"{{Trinket48}} oraz "Plakat Zaginionego"{{Trinket23}}"
	-- English: "Randomly grants the effect of:#{VAR:TEXT}"

	[T_ID .. 22] = "Obniża współczynnik tworzenia serc do 20%#Zwiększa szanse na upuszczenie kluczy#Serca do podniesienia zmieniane są na czarne serca", -- Daemon's Tail
	-- English: "{{Heart}} Decreases spawn rate of hearts to 20%#{{BlackHeart}} All Heart pickups turn into Black Hearts#{{Key}} Increases the drop chance of keys"

	[T_ID .. 23] = "Odradzasz się jako \"Zaginiony/The Lost\" kiedy zginiesz w Pokoju Poświęceń {{SacrificeRoom}} #Jeśli jest już odblokowany, odrodzisz się jako on nawet poza Pokojami Poświęceń", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death"

	[T_ID .. 24] = "Pierdzisz, gdy podnosisz monety#Pierdy odrzucają przeciwników", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#Picking up coins makes Isaac fart"

	[T_ID .. 25] = "Pierdzisz lub tworzysz kupy co#{{Blank}} 30 sekund", -- Mysterious Candy
	-- English: "Isaac farts or spawns poop every 30 seconds"

	[T_ID .. 26] = "{{Blank}} pod kątem", -- Hook Worm
	-- Full old Desc: "Łzy poruszają się#{{Blank}} pod kątem#↑ +10 Zasięgu"
	-- English: "Isaac's tears move in angular patterns"

	[T_ID .. 28] = "22% szans na odrodzenie się jako \"???\"", -- Broken Ankh
	-- English: "{{Player4}} 22% chance to respawn as ??? (Blue Baby) on death"

	[T_ID .. 29] = "Tworzy niebieskie muchy, kiedy otrzymujesz obrażenia", -- Fish Head
	-- English: "Taking damage spawns 1 blue fly"

	[T_ID .. 32] = "Losowy efekt grzyba#{{Blank}} co pokój#Może odkrywać specjalne pokoje na minimapie.", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room#Can reveal special rooms on the minimap"

	[T_ID .. 34] = "Powstaje więcej czerwonych serc", -- Child's Heart
	-- English: "{{UnknownHeart}} 10% chance for the room clear reward to be a random heart#{{Heart}} 33% chance for a bonus heart from chests, tinted rocks, and destroyed machines"

	[T_ID .. 36] = "Pojawia się więcej kluczy", -- Rusted Key
	-- English: "{{Key}} 10% chance for the room clear reward to be a key#{{Key}} 33% chance for a bonus key from chests, tinted rocks, and destroyed machines"

	[T_ID .. 38] = "Powstaje więcej#{{Blank}} Serc Duszy {{SoulHeart}}", -- Mom's Pearl
	-- English: "+10% chance for heart drops to be {{SoulHeart}} Soul Hearts, {{BlackHeart}} Black Hearts or {{EmptyBoneHeart}} Bone Hearts"

	[T_ID .. 40] = "↑ Szansa na +1.8 Obrażeń na pokój,", -- Red Patch
	-- Full old Desc: "↑ Szansa na +1.8 Obrażeń na pokój,#{{Blank}} gdy otrzymujesz obrażenia"
	-- English: "{{Timer}} Taking damage has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +1.8 damage for the room"

	[T_ID .. 41] = "Więcej pojawiających się bomb#!!! Usuwa \"Kleszcza\"{{Trinket53}}", -- Match Stick
	-- English: "{{Bomb}} 10% chance for the room clear reward to be a bomb#{{Bomb}} 33% chance for a bonus bomb from chests, tinted rocks, and destroyed machines#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 42] = "Szansa na dodatkowe pickupy", -- Lucky Toe
	-- Full old Desc: "↑ +1 Szczęścia#Szansa na dodatkowe pickupy"
	-- English: "+8% room clear reward chance#33% chance for an extra pickup from chests, tinted rocks, and destroyed machines"

	[T_ID .. 43] = "Gdy twoje zdrowie spadnie do połowy serca lub jego braku, teleportuje cię do losowego pokoju", -- Cursed Skull
	-- English: "When damaged down to half a heart or less, Isaac is teleported to a random room"

	[T_ID .. 44] = "Więcej pojawiających się pigułek", -- Safety Cap
	-- English: "{{Pill}} 10% chance for the room clear reward to be a pill#{{Pill}} 33% chance for a bonus pill from chests, tinted rocks, and destroyed machines"

	[T_ID .. 45] = "Więcej pojawiających się kart", -- Ace of Spades
	-- English: "{{Card}} 10% chance for the room clear reward to be a card#{{Card}} 33% chance for a bonus card from chests, tinted rocks, and destroyed machines"

	[T_ID .. 49] = "50% szans na upuszczenie połowy serca, gdy podniesiesz monetę", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 50% chance to spawn a half Red Heart"

	[T_ID .. 50] = "50% szans na upuszczenie bomby, gdy podniesiesz monetę", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 50% chance to spawn a bomb"

	[T_ID .. 51] = "50% szans na upuszczenie klucza, gdy podniesiesz monetę", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 50% chance to spawn a key"

	[T_ID .. 52] = "50% szans na +1 monetę, gdy podniesiesz monetę", -- Counterfeit Penny
	-- English: "{{Coin}} Picking up a coin has a 50% chance to add another coin to the counter"

	[T_ID .. 53] = "-15% zdrowia bossa#Leczy 1 czerwone serce, gdy wchodzisz bo pokoju bossa {{BossRoom}}#!!! Raz podniesionego nie da się pozbyć#Zdejmiesz go jedynie przy pomocy Zapałki {{Trinket41}}#{{Blank}} lub poprzez połknięcie", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick or gulping"

	[T_ID .. 54] = "Sojusznik z penetrującymi łzami", -- Isaac's Head
	-- Full old Desc: "Sojusznik z penetrującymi łzami#Zadaje 3.5 obrażeń na łzę"
	-- English: "Familiar with piercing tears"

	[T_ID .. 55] = "Dostajesz jedno wieczne serce {{EternalHeart}} na start kolejnego piętra", -- Maggy's Faith
	-- English: "{{EternalHeart}} Entering a new floor grants +1 Eternal Heart"

	[T_ID .. 56] = "Ustawia ceny przedmiotów u Diabła na 1 serce", -- Judas' Tongue
	-- English: "{{DevilRoom}} Reduces all devil deal prices to 1 heart container#Doesn't reduce 3 Soul Heart prices"

	[T_ID .. 57] = "Sojusznik latający po pokoju#Strzela w tym samym kierunku, co ty", -- ???'s Soul
	-- Full old Desc: "Sojusznik latający po pokoju#Strzela w tym samym kierunku, co ty#Zadaje 3.5 obrażeń na łzę"
	-- English: "Familiar that bounces around the room#Shoots in the same direction as Isaac"

	[T_ID .. 58] = "↑ 1/15 szans na +0.5 Obrażeń, gdy zabijesz przeciwnika", -- Samson's Lock
	-- Full old Desc: "↑ 1/15 szans na +0.5 Obrażeń, gdy zabijesz przeciwnika#Efekt utrzymuje się przez aktualny pokój"
	-- English: "{{Timer}} Killing an enemy has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +0.5 damage for the room"

	[T_ID .. 61] = "Zamienia wszystkie skrzynki na czerwone", -- The Left Hand
	-- English: "{{RedChest}} Turns all chests into Red Chests"

	[T_ID .. 62] = "Kamienie kryjące Szczelinę i Kamienie z X'em migają co 10 sekund", -- Shiny Rock
	-- English: "Crawlspace rocks and tinted rocks blink every 10 seconds"

	[T_ID .. 63] = "Zamienia troll bomby w bomb pickupy", -- Safety Scissors
	-- English: "{{Bomb}} Turns Troll Bombs into bomb pickups"

	[T_ID .. 64] = "Losowy wężowy efekt co 3 sekundy", -- Rainbow Worm
	-- English: "Grants a random worm effect every 3 seconds"

	[T_ID .. 67] = "Szansa na losowy efekt kostki, gdy otrzymujesz obrażenia.#{VAR:TEXT}", -- Cracked Dice
	-- Full old Desc: "Szansa na losowy efekt kostki, gdy otrzymujesz obrażenia."
	-- English: "Taking damage has a 50% chance to trigger one of these effects:#{VAR:TEXT}"

	[T_ID .. 68] = "Magnes na pickupy i przeciwników", -- Super Magnet
	-- English: "Isaac attracts pickups and enemies"

	[T_ID .. 69] = "Losowo kamufluje gracza#Dezorientuje przeciwników", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies"

	[T_ID .. 70] = "Szansa na stworzenie pająka we wrogim pokoju", -- Louse
	-- English: "Occasionally spawns a blue spider in hostile rooms"

	[T_ID .. 71] = "Bomby pozostawiają maź", -- Bob's Bladder
	-- English: "Isaac's bombs leave damaging creep"

	[T_ID .. 72] = "Więcej pojawiających się baterii#5% szans na odładowanie jednego ładunku twoje przedmiotu aktynego", -- Watch Battery
	-- English: "{{Battery}} 6.66% chance for the room clear reward to be a battery#{{Battery}} +10% chance for random pickups to be a battery#{{Battery}} 5% chance to add 1 charge to held active item when clearing a room"

	[T_ID .. 73] = "Wybuchające bomby mogą upuścić bomby do podniesienia", -- Blasting Cap
	-- English: "{{Bomb}} 10% chance for exploding bombs to drop a bomb pickup"

	[T_ID .. 74] = "Większa szansa na znalezienie Szczeliny przy niszczeniu kamieni", -- Stud Finder
	-- English: "{{LadderRoom}} +0.5% chance to reveal a crawlspace when breaking a rock"

	[T_ID .. 75] = "Efekt losowego trynkietu co pokój", -- Error
	-- English: "Grants a random trinket effect every room"

	[T_ID .. 76] = "Skrzynie mają 50/50 szans na stworzenie większych pickupów LUB nic/przeciwników", -- Poker Chip
	-- English: "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly"

	[T_ID .. 77] = "Zwiększony odrzut", -- Blister
	-- English: "Increases knockback"

	[T_ID .. 78] = "Dłużej działające efekty na przeciwnikach", -- Second Hand
	-- English: "Status effects applied to enemies last twice as long"

	[T_ID .. 79] = "Gdy użyjesz pigułki/karty, istnieje 25% szans na pojawienie się jej kopii.", -- Endless Nameless
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill has a 25% chance to spawn a copy of that rune, card or pill"

	[T_ID .. 81] = "Nietykalność trwa dłużej po dostaniu obrażenia.", -- Blind Rage
	-- English: "Invincibility frames after taking damage last twice as long"

	[T_ID .. 82] = "+15% na podwójne przedmioty w Pokoju Skarbów na kolejnym piętrze", -- Golden Horse Shoe
	-- English: "{{TreasureRoom}} Future Treasure Rooms have +15% chance to let Isaac choose between two items"

	[T_ID .. 83] = "Otwiera sklepy{{Shop}} za darmo", -- Store Key
	-- English: "{{Shop}} Lets Isaac open Shops for free"

	[T_ID .. 84] = "Greed/Super Greed nie pojawia się więcej w sklepie#Więcej pojawiających się monet", -- Rib of Greed
	-- English: "{{Coin}} 5% more coins and fewer hearts from room clear rewards#Greed and Super Greed no longer appear in {{Shop}} Shops or {{SecretRoom}} Secret Rooms"

	[T_ID .. 85] = "Użycie Automatu do Wpłat może Cię uleczyć lub stworzyć żebraka", -- Karma
	-- English: "{{DonationMachine}} Using a Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)"

	[T_ID .. 86] = "Rozwalanie kup tworzy niebieskie muchy", -- Lil Larva
	-- English: "Destroying poop spawns 1 blue fly"

	[T_ID .. 87] = "Leczy połowę serca, gdy używamy klucza#Zamienia połowy serc w całe", -- Mom's Locket
	-- English: "{{HealingRed}} Using a key heals half a heart#{{Heart}} Turns half hearts into full hearts"

	[T_ID .. 88] = "Bardzo mała szansa na przedmioty aktywne w Pokojach Skarbów{{TreasureRoom}}", -- NO!
	-- English: "Prevents active items from spawning"

	[T_ID .. 89] = "Sojusznicy są bliżej Ciebie", -- Child Leash
	-- English: "Familiars stay closer to Isaac"

	[T_ID .. 90] = "Kupy eksplodują przy rozwaleniu", -- Brown Cap
	-- English: "Poop explodes for 100 damage when destroyed"

	[T_ID .. 91] = "Zwiększona szansa na pojawienie się Czarnych Kup#Szansa na stworzenie czarnego serca, gdy rozwalasz czarną kupę", -- Meconium
	-- English: "33% chance for Black Poops to spawn#{{BlackHeart}} Destroying Black Poop has a 5% chance to spawn a Black Heart"

	[T_ID .. 92] = "↑ +0.2 Szybkostrzelności", -- Cracked Crown
	-- Full old Desc: "↑ Przedmioty zwiększające Twoje statystyki są 33% bardziej efektywne#↑ +0.2 Szybkostrzelności#↑ -1 Opóźnienie Wystrzału"
	-- English: "↑ x1.33 Stat multiplier for the stats that are above 1 {{Speed}} speed, 3.5 {{Damage}} damage, 23.75 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 93] = "Latający przeciwnicy stają się przyjaźni", -- Used Diaper
	-- English: "15% chance per room for all fly enemies to become friendly"

	[T_ID .. 94] = "Podwaja wszystkie niebieskie muchy/pająki", -- Fish Tail
	-- English: "Doubles all blue fly / spider spawns"

	[T_ID .. 97] = "Do +2 Możliwych sojuszników", -- Tonsil
	-- Full old Desc: "Szansa na orbitującego sojusznika, który blokuje strzały, po dostaniu obrażenia 12-20 razy#Do +2 Możliwych sojuszników"
	-- English: "Taking damage {VAR:RANGE} times spawns a projectile blocking familiar#Disappears after spawning 2 familiars"

	[T_ID .. 98] = "Szansa na klejąco-trujące łzy", -- Nose Goblin
	-- Full old Desc: "Szansa na klejąco-trujące łzy"
	-- English: "10% chance to shoot a sticky tear#50% chance for it to be homing#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for {VAR:1} seconds"

	[T_ID .. 99] = "Szansa na odbijające łzy", -- Super Ball
	-- English: "10% chance to shoot bouncing tears"

	[T_ID .. 100] = "!!! Gdy trzymasz naładowany aktywny przedmiot:#{VAR:EFFECTLIST}", -- Vibrant Bulb
	-- Full old Desc: "!!! Gdy trzymasz naładowany aktywny przedmiot:#↑ +0.5 Obrażeń#↑ +0.25 Prędkości#↑ +0.75 Zasięgu#↑ +0.2 Szybkostrzelności#↑ +0.1 Prędkości strzałów#↑ +1 Szczęścia"
	-- English: "Holding a fully charged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 101] = "!!! Gdy trzymasz nienaładowany aktywny przedmiot:#{VAR:EFFECTLIST}", -- Dim Bulb
	-- Full old Desc: "!!! Gdy trzymasz nienaładowany aktywny przedmiot:#↑ +1.5 Obrażeń#↑ +0.5 Prędkości#↑ +1.5 Zasięgu#↑ +0.4 Szybkostrzelności#↑ +0.3 Prędkości strzałów#↑ +2 Szczęścia"
	-- English: "Holding a completely uncharged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 102] = "+1 dodatkowy sekretny pokój na każde piętro, gdy to trzymasz", -- Fragmented Card
	-- English: "{{SecretRoom}} +1 extra Secret Room per floor while held"

	[T_ID .. 103] = "!!! Gdy liczba monet, kluczy i bomb jest równa:#Zamienia ich połowiczne wersje w podwójne wersje", -- Equality!
	-- English: "Turns single pickups into double pickups when Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal"

	[T_ID .. 106] = "Zwiększa promień każdej mazi, jaką produkujesz", -- Lost Cork
	-- English: "Increases the radius of friendly creep"

	[T_ID .. 107] = "Otrzymanie obrażeń ignoruje w pierwszej kolejności serca duszy/czarne serca/zgniłe serca, przed czerwonymi", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#This red heart damage does not reduce Devil/Angel Room chances"

	[T_ID .. 108] = "Szansa na drop losowego pickupa / trynkietu, gdy otrzymasz obrażenia od eksplozji#Zostaje po tym zniszczony", -- Walnut
	-- English: "Getting hit by 1-9 explosions destroys the trinket and drops a random {{UnknownHeart}} heart, {{Coin}} coin, {{Key}} key and {{Trinket}} trinket#Taking damage isn't required"

	[T_ID .. 109] = "Powoduje, że wszyscy sojusznicy przestają się poruszać", -- Duct Tape
	-- English: "Familiars are stuck in one spot and cannot move"

	[T_ID .. 110] = "Sklepy{{Shop}} mogą się pojawić na piętrze W1/W2", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb"

	[T_ID .. 111] = "Pokój Skarbów {{TreasureRoom}} pojawia się w Womb'ie", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb"

	[T_ID .. 112] = "Automat z zapasami będzie się zawsze pojawiał w Pokoju Skarbów{{TreasureRoom}}", -- Pay To Win
	-- English: "{{RestockMachine}} Restock boxes always spawn in {{TreasureRoom}} Treasure Rooms"

	[T_ID .. 113] = "Tworzy eksplodującą, atakującą muchę, która pojawia się w pokoju z wrogami#Mucha zadaje podwójne Twoje obrażenia + obrażenia od eksplozji", -- Locust of War
	-- English: "Entering a hostile room spawns an exploding attack fly #The fly deals 2x Isaac's damage + explosion damage"

	[T_ID .. 114] = "Tworzy trującą, atakującą muchę, która pojawia się w pokoju z wrogami#Mucha zadaje podwójne Twoje obrażenia", -- Locust of Pestilence
	-- English: "{{Poison}} Entering a hostile room spawns a poison attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 115] = "Tworzy spowalniającą, atakującą muchę, która pojawia się w pokoju z wrogami#Mucha zadaje podwójne Twoje obrażenia", -- Locust of Famine
	-- English: "{{Slow}} Entering a hostile room spawns a slowing attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 116] = "Tworzy atakującą muchę, która pojawia się w pokoju z wrogami#Mucha zadaje poczwórne Twoje obrażenia", -- Locust of Death
	-- English: "Entering a hostile room spawns an attack fly#The fly deals 4x Isaac's damage"

	[T_ID .. 117] = "Tworzy 1-4 atakujących much w pokoju z wrogami#Każda z much zadaje podwójne Twoje obrażenia", -- Locust of Conquest
	-- English: "Entering a hostile room spawns 1-4 attack flies#Each fly deals 2x Isaac's damage"

	[T_ID .. 118] = "Szansa na otrzymanie latania po zabiciu przeciwnika#Działa w danym pokoju", -- Bat Wing
	-- English: "{{Timer}} Killing an enemy has a 5% chance to grant flight for the room"

	[T_ID .. 119] = "Leczy połowę serca po podróży na kolejne piętro", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half a heart"

	[T_ID .. 120] = "Pełne naładowanie aktywnego przedmiotu na start walki z bossem", -- Hairpin
	-- English: "{{Battery}} Entering an uncleared boss room fully recharges active items"

	[T_ID .. 121] = "Co poziom, chroni Cię przed otrzymaniem pierwszego obrażenia", -- Wooden Cross
	-- English: "{{Collectible313}} Grants a Holy shield that prevents damage once per floor"

	[T_ID .. 122] = "Użycie aktywnego przedmiotu upuszcza go z powrotem na piedestał", -- Butter!
	-- English: "Using an active item drops it on a pedestal on the ground#Taking damage has a 2% chance to drop one of Isaac's passive items"

	[T_ID .. 123] = "Powoduje, że Anioły w Pokoju Aniołów będą dropić zwykłe przedmioty zamiast części klucza", -- Filigree Feather
	-- English: "Angel bosses drop angel items instead of Key Pieces"

	[T_ID .. 124] = "Ostatnie użyte drzwi pozostaną nadal otwarte", -- Door Stop
	-- English: "The last door used stays open"

	[T_ID .. 125] = "Łączy Twoich sojuszników elektrycznymi wiązkami#Zadaje 6 obrażeń co uderzenie", -- Extension Cord
	-- English: "Connects all familiars with beams of electricity#The beams deal 6 damage"

	[T_ID .. 126] = "Tworzy niebieską muchę, gdy podnosisz monetę", -- Rotten Penny
	-- English: "Picking up a coin spawns a blue fly"

	[T_ID .. 127] = "Gwarantuje Twoim sojusznikom naprowadzane łzy", -- Baby-Bender
	-- English: "Grants all familiars homing shots"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 1] = "Teleportuje cię na start piętra", -- 0 - The Fool
	-- English: "Teleports Isaac to the first room of the floor"

	[Card_ID .. 3] = "Stopa Mamy depta przeciwnika, zadając mu 300 obrażeń", -- II - The High Priestess
	-- English: "Mom's Foot stomps on an enemy#Mom's Foot stomps Isaac if there are no enemies"

	[Card_ID .. 5] = "Teleportuje cię do pokoju Bossa {{BossRoom}}", -- IV - The Emperor
	-- English: "{{BossRoom}} Teleports Isaac to the Boss Room"

	[Card_ID .. 9] = "Tworzy 1 bombę,#{{Blank}} 1 klucz, 1 monetę#{{Blank}} oraz 1 serce", -- VIII - Justice
	-- English: "Spawns a random {{UnknownHeart}} heart, {{Coin}} coin, {{Bomb}} bomb and {{Key}} key"

	[Card_ID .. 10] = "Teleportuje cię#{{Blank}} do Sklepu {{Shop}}", -- IX - The Hermit
	-- English: "{{Shop}} Teleports Isaac to the Shop"

	[Card_ID .. 11] = "Tworzy Automat do Gier lub z Wróżbami", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 25% chance for it to be a Fortune Telling Machine"

	[Card_ID .. 15] = "Tworzy Automat Krwiodawstwa", -- XIV - Temperance
	-- English: "{{DonationMachine}} Spawns a Blood Donation Machine"

	[Card_ID .. 17] = "Tworzy 6 troll bomb", -- XVI - The Tower
	-- English: "Spawns 6 Troll Bombs"

	[Card_ID .. 18] = "Teleportuje cię do Pokoju Skarbów {{TreasureRoom}}", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room"

	[Card_ID .. 19] = "Teleportuje cię do sekretnego pokoju {{SecretRoom}}", -- XVIII - The Moon
	-- English: "{{SecretRoom}} Teleports Isaac to the Secret Room"

	[Card_ID .. 21] = "Tworzy żebraka", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#2% chance for it to be a Key Master or Bomb Bum"

	[Card_ID .. 23] = "Podwaja twoje bomby", -- 2 of Clubs
	-- English: "{{Bomb}} Doubles Isaac's number of bombs"

	[Card_ID .. 24] = "Podwaja twoje monety", -- 2 of Diamonds
	-- English: "{{Coin}} Doubles Isaac's number of coins"

	[Card_ID .. 25] = "Podwaja twoje klucze", -- 2 of Spades
	-- English: "{{Key}} Doubles Isaac's number of keys"

	[Card_ID .. 26] = "Podwaja twoje czerwone serca#Ma jedynie efekt leczący", -- 2 of Hearts
	-- English: "{{HealingRed}} Doubles Isaac's number of Red Hearts {{ColorSilver}}(not containers){{CR}}"

	[Card_ID .. 27] = "Zmienia wszystkie pickupy w bomby", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups into random bombs"

	[Card_ID .. 28] = "Zmienia wszystkie pickupy w monety", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups into random coins"

	[Card_ID .. 29] = "Zmienia wszystkie pickupy w klucze", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups into random keys"

	[Card_ID .. 30] = "Zmienia wszystkie pickupy w serca", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups into random hearts"

	[Card_ID .. 31] = "Teleportuje cię do Pokoju Diabła{{DevilRoom}} lub Pokoju Anioła{{AngelRoom}}", -- Joker
	-- English: "{{AngelDevilChance}} Teleports Isaac to the Devil or Angel Room"

	[Card_ID .. 32] = "Niszczy wszystkie kamienie w tym pokoju", -- Hagalaz
	-- English: "Destroy all rocks in the room"

	[Card_ID .. 33] = "Podwaja wszystkie pickupy w tym pokoju", -- Jera
	-- English: "Duplicates all pickups in room"

	[Card_ID .. 34] = "Tworzy zapadnię na następne piętro", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} 8% chance for a crawlspace trapdoor"

	[Card_ID .. 35] = "Usuwa obecne klątwy", -- Dagaz
	-- Full old Desc: "+1 Serce Duszy#Usuwa obecne klątwy"
	-- English: "{{CurseCursed}} Removes all curses for the floor"

	[Card_ID .. 37] = "Przelosowuje przedmioty na piedestałach", -- Perthro
	-- English: "Rerolls all pedestal items in the room"

	[Card_ID .. 40] = "Efekt losowej runy#25% szans, że stworzy swoją kopię", -- Blank Rune
	-- English: "Triggers a random rune effect#25% chance to duplicate itself when used"

	[Card_ID .. 41] = "{{Blank}} w tym pokoju#Wzrost losowej statystyki za każdy przedmiot na piedestale", -- Black Rune
	-- Full old Desc: "Zadaje 40 obrażeń przeciwnikom#{{Blank}} w tym pokoju#Wzrost losowej statystyki za każdy przedmiot na piedestale#(Niszczy wszystkie piedestały w pokoju)"
	-- English: "Converts all pedestal items in the room into random stat ups#Converts all pickups in the room into blue flies"

	[Card_ID .. 42] = "Rzucasz w kierunku ruchu kartą, która zabije prawie wszystko na swojej drodze", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium)"

	[Card_ID .. 43] = "Usuwa ceny wszystkiego w tym sklepie lub#{{Blank}} pokoju Diabła {{DevilRoom}}", -- Credit Card
	-- English: "Makes all items and pickups in a {{Shop}} Shop or {{DevilRoom}} Devil Room free"

	[Card_ID .. 44] = "Pokazuje \"przydatne\" porady", -- Rules Card
	-- English: "Displays "helpful" tips on use"

	[Card_ID .. 45] = "Wypełnia cały pokój kupami", -- A Card Against Humanity
	-- English: "Fills the whole room with poop"

	[Card_ID .. 46] = "Zabija cię i tworzy 10 pickupów/przedmiotów na podłodze", -- Suicide King
	-- English: "Instantly kills Isaac and spawns 10 pickups or items on the floor#Spawned items will use the current room's item pool"

	[Card_ID .. 47] = "Otwiera wszystkie drzwi w tym pokoju", -- Get Out Of Jail Free Card
	-- English: "Open all doors in the room"

	[Card_ID .. 48] = "Używa twojego aktywnego przedmiotu, bez zużywania jego ładunku", -- ? Card
	-- English: "Uses Isaac's active item for free"

	[Card_ID .. 49] = "Przelosowuje piedestały i pickupy w tym pokoju", -- Dice Shard
	-- English: "Rerolls all item pedestals and pickups in the room"

	[Card_ID .. 50] = "Przyzywa dwie dłonie Mamy, które łapią wrogów", -- Emergency Contact
	-- English: "Two of Mom's Hands come down and grab an enemy each"

	[Card_ID .. 51] = "Daje efekt Świętego Okrycia{{Collectible313}} w tym pokoju#(Neguje następne otrzymane obrażenia)#25% Szans na stworzenie kopii tej karty", -- Holy Card
	-- English: "{{HolyMantle}} Holy Mantle shield for the room (prevents damage once)#25% chance to spawn another Holy Card"

	[Card_ID .. 52] = "{VAR:ROOMEFFECT}#Efekt tylko na ten pokój", -- Huge Growth
	-- Full old Desc: "↑ +7 Obrażeń#↑ +30 Zasięgu#↑ +Rośniesz#Miażdżysz kamienie!#Efekt tylko na ten pokój"
	-- English: "{VAR:ROOMEFFECT}#Allows Isaac to destroy rocks by walking into them"

	[Card_ID .. 54] = "{VAR:ROOMEFFECT}#Efekt tylko na ten pokój", -- Era Walk
	-- Full old Desc: "Spowalnia wrogów#↓ -0.5 Prędkości#-1 Prędkości Strzałów#Efekt tylko na ten pokój"
	-- English: "{VAR:ROOMEFFECT}#{{Slow}} Slow down enemies"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 1] = "Tworzy chmurę Gazu", -- Bad Gas
	-- English: "{{Poison}} Isaac farts and poisons nearby enemies"

	[Pill_ID .. 2] = "Tracisz 1 serce", -- Bad Trip
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#Becomes a Full Health pill at 1 heart or less"

	[Pill_ID .. 4] = "Zamienia ilość bomb z kluczami", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys"

	[Pill_ID .. 5] = "Tworzy 5 troll bomb pod twoimi nogami", -- Explosive Diarrhea
	-- English: "Isaac quickly spawns 5 lit bombs"

	[Pill_ID .. 10] = "{VAR:EFFECTLIST}", -- Puberty
	-- Full old Desc: "Po zjedzeniu 3 otrzymasz transformację Adult (+1 Czerwone Serce)"
	-- English: "Eating 3 grants the Adult transformation:#{VAR:EFFECTLIST}"

	[Pill_ID .. 20] = "Teleport do losowego pokoju", -- Telepills
	-- English: "Teleports Isaac to a random room#{{ErrorRoom}} Small chance to teleport Isaac to the I AM ERROR room"

	[Pill_ID .. 21] = "Odładowuje twój przedmiot aktywny", -- 48 Hour Energy!
	-- Full old Desc: "Odładowuje twój przedmiot aktywny#Upuszcza od 1 do 2 baterii"
	-- English: "{{Battery}} Fully recharges the active item"

	[Pill_ID .. 22] = "Opróżnia wszystkie zasobniki na serca poza jednym", -- Hematemesis
	-- Full old Desc: "Opróżnia wszystkie zasobniki na serca poza jednym#Tworzy od 1 do 4 czerwonych serc"
	-- English: "{{Warning}} Drains all but one heart container"

	[Pill_ID .. 23] = "Brak możliwości ruchu na 2 sekundy", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 2 seconds"

	[Pill_ID .. 24] = "Otwiera przejścia do sekretnych pokoi na tym piętrze", -- I can see forever!
	-- English: "{{SecretRoom}} Opens all secret room entrances on the floor"

	[Pill_ID .. 25] = "Oczarowuje wszystkich przeciwników w tym pokoju", -- Pheromones
	-- English: "{{Charm}} Charms all enemies in the room"

	[Pill_ID .. 26] = "Ukrywa mapę piętra", -- Amnesia
	-- English: "{{CurseLost}} Hides the map for the floor"

	[Pill_ID .. 27] = "Tworzy na ziemi kałużę, która rani nielatających wrogów", -- Lemon Party
	-- English: "Spawns a large puddle on the ground which damages enemies"

	[Pill_ID .. 28] = "Przez 30 sekund strzelasz na skos", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 30 seconds"

	[Pill_ID .. 29] = "W tym pokoju otrzymujesz maksymalnie pół serca obrażeń", -- Percs!
	-- English: "{{Timer}} Reduces all damage taken to half a heart for the room"

	[Pill_ID .. 30] = "W tym pokoju wszystko zrani cię za pełne serce", -- Addicted!
	-- English: "{{Timer}} Increases all damage taken to a full heart for the room"

	[Pill_ID .. 31] = "Przez 2 sekundy tworzysz kupy pod nogami", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 2 seconds"

	[Pill_ID .. 32] = "Efekt Klątwy Dezorientacji na całe piętro", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. 33] = "Brak wpływu na twój hitbox", -- One makes you larger
	-- Full old Desc: "Rośniesz#Brak wpływu na twój hitbox"
	-- English: "Doesn't affect his hitbox"

	[Pill_ID .. 34] = "Twój hitbox również się zmniejsza", -- One makes you small
	-- Full old Desc: "Malejesz#Twój hitbox również się zmniejsza"
	-- English: "Also decreases his hitbox"

	[Pill_ID .. 35] = "Tworzy 1 niebieskiego pająka na każdą kupę w pokoju", -- Infested!
	-- English: "Spawns 1 blue spider for each poop in the room"

	[Pill_ID .. 36] = "Tworzy 1 niebieskiego pająka na każdego wroga w pokoju#Tworzy od 1 do 3 pająków w przypadku braku przeciwników", -- Infested?
	-- English: "Spawn 1 blue spider for each enemy in the room#Spawns 1-3 blue spiders if there are no enemies in the room"

	[Pill_ID .. 38] = "Rozpikselowuje ekran na 30 sekund", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen 3 times over 30 second"

	[Pill_ID .. 40] = "Tworzy kałużę śliskiej mazi", -- X-Lax
	-- English: "Spawns a pool of slippery creep"

	[Pill_ID .. 41] = "Tworzy kałużę spowalniającej mazi", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of slowing creep"

	[Pill_ID .. 42] = "Spowalnia przeciwników w tym pokoju", -- I'm Drowsy...
	-- English: "{{Slow}} Slows all enemies in the room"

	[Pill_ID .. 43] = "Przyspiesza przeciwników w tym pokoju", -- I'm Excited!!
	-- English: "Speeds up all enemies in the room"

	[Pill_ID .. 44] = "Połykasz swój trynkiet, zyskując permanentnie jego efekt", -- Gulp!
	-- English: "{{Trinket}} Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. 45] = "Wystrzeliwujesz jedną łzę z efektem Wymiotnicy", -- Horf!
	-- English: "{{Collectible149}} Shoots one Ipecac tear"

	[Pill_ID .. 47] = "Tworzy ostatnią połkniętą pigułkę", -- Vurp!
	-- English: "Spawns the last pill used before Vurp!"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)
