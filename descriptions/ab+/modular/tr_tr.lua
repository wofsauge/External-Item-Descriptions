---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 5] = "↑ +1 Tear Height", -- My Reflection
	-- Full old Desc: "Gives tears a boomerang effect#↑ +1.5 Range up#↑ +0.6 Shot Speed up#↑ +1 Tear Height"
	-- English: "Tears get a boomerang effect"

	[C_ID .. 8] = "Normal gözyaşı arkadaşı", -- Brother Bobby
	-- Full old Desc: "Normal gözyaşı arkadaşı#Gözyaşı başına 3.5 Hasar verir"
	-- English: "Shoots normal tears"

	[C_ID .. 9] = "Bütün sinek düşmanları artık arkadaş canlısı", -- Skatole
	-- English: "All fly enemies are friendly"

	[C_ID .. 11] = "Full can ile tekrar doğarsın", -- 1up!
	-- Full old Desc: "↑ +1 hayat#Full can ile tekrar doğarsın"
	-- English: "Isaac respawns with full health on death"

	[C_ID .. 13] = "Enemies can drop black hearts if poisoned", -- The Virus
	-- Full old Desc: "Poison touch#↓ -0.1 Speed down#Enemies can drop black hearts if poisoned"
	-- English: "{{Poison}} Touching enemies poisons them#{{BlackHeart}} Poisoned enemies can drop Black Hearts"

	[C_ID .. 21] = "Haritadaki tüm ikonları açar#Odaların diziliş şeklini göstermez", -- The Compass
	-- English: "Reveals icons on the map#Does not reveal the layout of the map"

	[C_ID .. 33] = "Oda için uçuş#Annenin ayağını ve annenin kalbi bosslarını anında öldürür#!!! Satanda kullanıldığında SENİ öldürür", -- The Bible
	-- English: "{{Timer}} Flight for the room#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[C_ID .. 36] = "Bir bok çıkartır#Deliğe yerleştirilip bomba ile köprü yapılabilir", -- The Poop
	-- English: "Spawns one poop and knocks back enemies#Can be placed next to a pit and destroyed with a bomb to make a bridge"

	[C_ID .. 38] = "Isaacin etrafında halka şeklinde 10 gözyaşı atar", -- Tammy's Head
	-- English: "Shoots 10 tears in a circle around Isaac#The tears copy Isaac's tear effects, plus 25 damage"

	[C_ID .. 39] = "Odadaki tüm düşmanları 4 saniyeliğine dondurur", -- Mom's Bra
	-- English: "{{Petrify}} Petrifies all enemies in the room for 4 seconds"

	[C_ID .. 40] = "Causes an explosion at the players location", -- Kamikaze!
	-- Full old Desc: "Causes an explosion at the players location#Deals 40 damage"
	-- English: "Causes an explosion at Isaac's location#Deals {VAR:1} damage"

	[C_ID .. 41] = "Odadaki tüm düşmanları 5 saniyeliğine korkutur", -- Mom's Pad
	-- English: "{{Fear}} Fears all enemies in the room for 5 seconds"

	[C_ID .. 42] = "Throwable poison bomb", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes on impact and poisons enemies"

	[C_ID .. 44] = "Teleports Isaac into a random room except I AM ERROR rooms", -- Teleport!
	-- English: "Teleports Isaac into a random room, except I AM ERROR rooms"

	[C_ID .. 46] = "Better chance to win while gambling#Increases room clearing drop chance", -- Lucky Foot
	-- Full old Desc: "↑ +1.0 Luck up#Better chance to win while gambling#Increases room clearing drop chance"
	-- English: "+8% room clear reward chance#Better chance to win while gambling"

	[C_ID .. 47] = "Kullanılabilir Epic Fetus!#Kontrol edilebilir hava saldırısı", -- Doctor's Remote
	-- English: "{{Collectible168}} On use, start aiming a crosshair#A missile lands on the crosshair after 1.5 seconds#It deals 20x Isaac's damage"

	[C_ID .. 49] = "Yüksek hasarlı brimstone lazeri", -- Shoop da Whoop!
	-- Full old Desc: "Yüksek hasarlı brimstone lazeri"
	-- English: "The next shot is replaced with a beam#It deals {VAR:1}x Isaac's damage over {VAR:2} seconds"

	[C_ID .. 53] = "Magnetic attraction for Pick-ups", -- Magneto
	-- English: "Pickups are attracted to Isaac"

	[C_ID .. 54] = "Odaların diziliş şeklini açar", -- Treasure Map
	-- English: "Reveals the floor layout#Does not reveal room icons"

	[C_ID .. 56] = "Limonata havuzu bırakır#Saniyede 66 dokunma hasarı verir", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 57] = "Orta-menzil sinek yörüngeci", -- Distant Admiration
	-- Full old Desc: "Orta-menzil sinek yörüngeci#Saniyede 75 dokunma hasarı verir"
	-- English: "Mid-range fly orbital"

	[C_ID .. 60] = "Küçük boşluklar üzerinde yürü", -- The Ladder
	-- English: "Allows Isaac to cross 1-tile gaps"

	[C_ID .. 62] = "Heals half a heart every 13 enemies killed", -- Charm of the Vampire
	-- English: "{{HealingRed}} Killing 13 enemies heals half a heart"

	[C_ID .. 63] = "Aktif itemler artık iki defa şarj edilebilir", -- The Battery
	-- English: "{{Battery}} Active items can be overcharged to two full charges"

	[C_ID .. 64] = "-50% on shop items#Getting this item two times will make everything free", -- Steam Sale
	-- English: "{{Shop}} Shop items cost 50% less"

	[C_ID .. 65] = "Odanın ortasına yakın 6 troll bombası çıkartır", -- Anarchist Cookbook
	-- English: "Spawns 6 Troll Bombs near the center of the room"

	[C_ID .. 66] = "8 Saniyeliğine düşmanları yavaşlatır", -- The Hourglass
	-- English: "{{Slow}} Slows enemies down for 8 seconds"

	[C_ID .. 67] = "Normal tear familiar", -- Sister Maggy
	-- Full old Desc: "Normal tear familiar#Deals 3.5 Damage per tear"
	-- English: "Shoots normal tears"

	[C_ID .. 68] = "Gözyaşları artık lazer", -- Technology
	-- English: "Isaac shoots lasers instead of tears"

	[C_ID .. 69] = "Şarj edilebilir gözyaşları#↑ 400%e kadar hasar#↓ Gözyaşı azalır", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x#{{Tears}} Max charge time is 2.5x tear delay"

	[C_ID .. 71] = "↑ Size down", -- Mini Mush
	-- Full old Desc: "↑ +0.3 Speed up#↓ -4.25 Range down*#↑ +1.5 Tear height*#(*both add up to a slight Range up)#↑ Size down"
	-- English: "The tear height up and range down = slight range up"

	[C_ID .. 73] = "LVL1: Yörüngeç#LVL2: Ateş eden yörüngeç#LVL3: Meat boy LVL 1#LVL4: Meat boy LVL 2", -- Cube of Meat
	-- English: "Lv1: Orbital#Lv2: Shooting orbital#Lv3: Meat Boy#Lv4: Super Meat Boy"

	[C_ID .. 75] = "Kan başığı makinalarından daha fazla para", -- PHD
	-- Full old Desc: "Daha iyi haplar# +1 hap#2 Kalp iyileştirir#Kan başığı makinalarından daha fazla para"
	-- English: "{{Pill}} Changes bad pills into good pills#{{BloodDonationMachine}} Blood Donation Machines give more {{Coin}} coins"

	[C_ID .. 76] = "Gizli oda girişlerini gösterir", -- X-Ray Vision
	-- English: "{{SecretRoom}} Opens all secret room entrances"

	[C_ID .. 78] = "↑ +17.5% Şeytan odası şansı", -- Book of Revelations
	-- Full old Desc: "+1 Ruh kalbi#Kullanılırsa daha yüksek atlı şansı#↑ +17.5% Şeytan odası şansı"
	-- English: "Using the item has a high chance to replace the floor's boss with a horseman"

	[C_ID .. 81] = "1 Kalp ile tekrar doğarsın#↓ Kırmızı kalp sayını 1e indirir", -- Dead Cat
	-- Full old Desc: "↑ +9 Hayat#1 Kalp ile tekrar doğarsın#↓ Kırmızı kalp sayını 1e indirir"
	-- English: "Isaac respawns with 1 heart container on death#{{Warning}} Sets Isaac's heart containers to 1 when picked up"

	[C_ID .. 83] = "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}", -- The Nail
	-- Full old Desc: "+1 Soul heart#↑ +0.7 Damage up#↓ -0.18 Speed down#Deal contact Damage#Crush rocks"
	-- English: "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#{{IND}}Allows Isaac to destroy rocks by walking into them"

	[C_ID .. 84] = "Katı geçmek için bir tuzak kapısı yaratır#10% şans ile sürünme alanı tuzak kapısı şansı", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} 10% chance to open a crawlspace trapdoor"

	[C_ID .. 86] = "1 vuruş için Monstro çıkartır", -- Monstro's Tooth
	-- English: "Monstro falls on an enemy and deals 120 damage#{{Warning}} Monstro falls on Isaac if the room has no enemies"

	[C_ID .. 88] = "Öne atılan arkadaş", -- Little Chubby
	-- Full old Desc: "Öne atılan arkadaş#Saniyede 52.5 dokunma hasarı verir"
	-- English: "Charges forward in the direction Isaac is shooting"

	[C_ID .. 91] = "Bitişik odaların tiplerini gösterir#Gizli odaları, Süper gizli odaları ve MiniBoss odalarını da göstereblir", -- Spelunker Hat
	-- English: "Reveals the room type of adjacent rooms#{{SecretRoom}} Can reveal Secret and Super Secret Rooms"

	[C_ID .. 93] = "{VAR:TIMEDEFFECT}", -- The Gamekid
	-- Full old Desc: "Dokunulmazlık + dokunma hasarı#Düşmanı yemek canı iyileştirir"
	-- English: "{VAR:TIMEDEFFECT}#{{IND}}{{HealingRed}} Killing 2 enemies heals half a heart#{{IND}}{{Fear}} Fears all enemies in the room"

	[C_ID .. 94] = "Her 2 odada rastgele bir altın düşürür", -- Sack of Pennies
	-- English: "{{Coin}} Spawns a random coin every 2 rooms"

	[C_ID .. 95] = "Lazer gözyaşları", -- Robo-Baby
	-- Full old Desc: "Lazer gözyaşları#Atış başına 3.5 hasar verir"
	-- English: "Shoots lasers"

	[C_ID .. 96] = "Her 3 odada yarım kırmızı kalp düşürür", -- Little C.H.A.D.
	-- English: "{{HalfHeart}} Spawns a half Red Heart every 3 rooms"

	[C_ID .. 99] = "Yavaşlatan gözyaşları", -- Little Gish
	-- Full old Desc: "Yavaşlatan gözyaşları#Atış başına 3.5 hasar verir"
	-- English: "{{Slow}} Shoots slowing tears"

	[C_ID .. 100] = "Takip eden gözyaşları", -- Little Steven
	-- Full old Desc: "Takip eden gözyaşları#Atış başına 3.5 hasar verir"
	-- English: "Shoots homing tears"

	[C_ID .. 104] = "Temas ettiğinde gözyaşları ikiye bölünür#Bölünen gözyaşları yarım hasar verir", -- The Parasite
	-- English: "Tears split in two on contact#Split tears deal half damage"

	[C_ID .. 105] = "Odadaki itemleri değiştirir", -- The D6
	-- English: "Rerolls pedestal items in the room"

	[C_ID .. 107] = "{VAR:ROOMEFFECT}", -- The Pinking Shears
	-- Full old Desc: "Uçuş#Vücudun saniyede 82.5 hasar ile düşmanlara saldırır"
	-- English: "{VAR:ROOMEFFECT}#{{IND}}Isaac's body separates from his head and attacks enemies with {VAR:1} contact damage per second"

	[C_ID .. 108] = "Alınan tüm hasarı yarım kalbe indirir", -- The Wafer
	-- English: "Reduces most damage taken to half a heart"

	[C_ID .. 109] = "Eldeki her altın için ↑ +0.04 Hasar", -- Money = Power
	-- English: "↑ {{Damage}} +0.04 Damage for every {{Coin}} coin Isaac has"

	[C_ID .. 111] = "Zehir osuruğu", -- The Bean
	-- English: "{{Poison}} Deals 5 damage to enemies nearby and poisons them#The poison deals Isaac's damage 6 times"

	[C_ID .. 112] = "Tüm yörüngeçleri hızlandırır", -- Guardian Angel
	-- Full old Desc: "Yörüngeç#Tüm yörüngeçleri hızlandırır#Düşman ateşlerini bloklar#Saniyede 105 dokunma hasarı verir"
	-- English: "Speeds up all other orbitals"

	[C_ID .. 113] = "Otomatik ateş eden arkadaş", -- Demon Baby
	-- Full old Desc: "Otomatik ateş eden arkadaş#Atış başına 3 hasar verir"
	-- English: "Shoots enemies that get close to him"

	[C_ID .. 114] = "Kontrol edilebilir bıçak atağı#Bıçak elde iken Isaacin 2x hasarını verir ve en uzağa atıldığında 6x hasar verir", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and 6x at the furthest possible distance"

	[C_ID .. 116] = "Aktif itemler için -1 Şarj#Eldeki itemi tamamen şarj eder", -- 9 Volt
	-- English: "{{Battery}} Automatically charges the first bar of active items#{{Battery}} Fully recharges the active item on pickup"

	[C_ID .. 117] = "Hasar aldığında kuş çıkartır", -- Dead Bird
	-- Full old Desc: "Hasar aldığında kuş çıkartır#Kuş saniyede 4 dokunma hasarı verir"
	-- English: "Taking damage spawns a bird that attacks enemies"

	[C_ID .. 122] = "!!! Yarım kırmızı kalpte beya daha azında iken:#{VAR:EFFECTLIST}", -- Whore of Babylon
	-- Full old Desc: "!!! Yarım kırmızı kalpte beya daha azında iken:#↑ +1.5 Hasar#↑ +0.3 Hız"
	-- English: "When on half a Red Heart or less:#{VAR:EFFECTLIST}"

	[C_ID .. 123] = "Random familiar for current room", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the room"

	[C_ID .. 124] = "Rastgele aktif item efekti", -- Dead Sea Scrolls
	-- English: "Triggers a random active item effect#Chooses the effect from a fixed list of items"

	[C_ID .. 125] = "+5 Bomba", -- Bobby-Bomb
	-- Full old Desc: "Takip eden bombalar#+5 Bomba"
	-- English: "Homing bombs"

	[C_ID .. 126] = "Oda için ↑ +1.2 hasar#↓ Sana 1 Kalp hasarı verir", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 127] = "Tüm katı baştan değiştir", -- Forget Me Now
	-- English: "Rerolls and restarts the entire floor"

	[C_ID .. 128] = "Sinek yörüngeci", -- Forever Alone
	-- Full old Desc: "Sinek yörüngeci#Uzakta#Saniyede 30 dokunma hasarı verir"
	-- English: "Long range fly orbital"

	[C_ID .. 130] = "Elde ike uçuş sağlar#Hızın 1.5tan düşük ise hızını 1.5 yapar#Kullanıldığında bir yönde hızla ilerler", -- A Pony
	-- English: "While held:#{{Speed}} Sets your Speed to at least 1.5#Flight#Upon use, dashes in the direction of Isaac's movement"

	[C_ID .. 131] = "Her 2-3 odada 1 Bomba pickupı düşürür", -- Bomb Bag
	-- English: "{{Bomb}} Spawns 1 bomb pickup every 3 rooms"

	[C_ID .. 132] = "Gözyaşının gittiği mesafeye göre daha çok hasar verir", -- A Lump of Coal
	-- English: "{{Damage}} Tears deal more damage the further they travel"

	[C_ID .. 133] = "!!! Çevir:#1 Kırmızı kalp to 3 Ruh kalbi", -- Guppy's Paw
	-- English: "{{SoulHeart}} Converts 1 heart container into 3 Soul Hearts"

	[C_ID .. 134] = "Daha fazla kasa çıkar", -- Guppy's Tail
	-- English: "{{Chest}} 33% chance to replace the room clear reward with a chest#33% chance to spawn no room clear reward"

	[C_ID .. 135] = "Portatif kan bankası#Yarım kalp = 1-3 Altın", -- IV Bag
	-- English: "{{Coin}} Hurts Isaac for half a heart and spawns 1-2 coins#{{Heart}} Removes Red Hearts first"

	[C_ID .. 136] = "Patlayan bir yanıltıcı#Düşmanları üzerine çeker", -- Best Friend
	-- English: "Spawns a decoy Isaac that attracts enemies and explodes after 5 seconds"

	[C_ID .. 137] = "+5 bomba", -- Remote Detonator
	-- Full old Desc: "Bombaları istediğinde patlat#+5 bomba"
	-- English: "Isaac's bombs no longer explode automatically#Upon use, detonates all of Isaac's bombs at once"

	[C_ID .. 139] = "You can now hold 2 trinkets", -- Mom's Purse
	-- English: "{{Trinket}} Isaac can hold 2 trinkets"

	[C_ID .. 140] = "+5 bombs", -- Bob's Curse
	-- Full old Desc: "Poison bombs#+5 bombs"
	-- English: "{{Poison}} Isaac's bombs poison enemies caught in the blast"

	[C_ID .. 142] = "Yarım kalbe kadar indiğinde, 1 Ruh kalbi kazanırsın#(Odada 1 kere)", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again"

	[C_ID .. 144] = "Altınları pickuplara çevirir", -- Bum Friend
	-- English: "{{Coin}} Picks up nearby coins#Spawns random pickups every 3-4 coins"

	[C_ID .. 147] = "Break rocks in current room on touch", -- Notched Axe
	-- English: "{{Timer}} For the room, Isaac can break rocks and Secret Room walls by walking into them"

	[C_ID .. 151] = "Düşmanlara gözyaşı vurunca 1/6 şans ile sinek çıkartır", -- The Mulligan
	-- English: "Tears have a 1/6 chance to spawn a blue fly when hitting an enemy"

	[C_ID .. 155] = "Odada gezer", -- The Peeper
	-- Full old Desc: "Odada gezer#Saniyede 17.1 hasar verir"
	-- English: "Floats around the room"

	[C_ID .. 156] = "Hasar alınca +1 şarj", -- Habit
	-- English: "{{Battery}} Taking damage adds 1 charge to the active item"

	[C_ID .. 157] = "Her hasar aldığında ↑ Hasar artar #Kat başına 6 defaya kadar#Kat boyunca sürer", -- Bloody Lust
	-- English: "↑ {{Damage}} Taking damage grants a damage up#Applies up to 6 times per floor#Lasts for the whole floor"

	[C_ID .. 158] = "Reveal full map#{VAR:EFFECTLIST}", -- Crystal Ball
	-- Full old Desc: "Reveal full map#Drops random Card or soul heart"
	-- English: "Spawns a {{SoulHeart}} Soul Heart, {{Rune}} rune or {{Card}} card#{VAR:EFFECTLIST}"

	[C_ID .. 160] = "Düşmanların yakınında 5 Işık hüzmesi çıkartır#Senin hasarın +20 verir", -- Crack the Sky
	-- English: "Spawns 5 beams of light near enemies#Each beam deals 8x Isaac's damage + 160 over 0.8 seconds"

	[C_ID .. 161] = "Ölünce ??? (Blue Baby) olarak tekrar doğarsın", -- Ankh
	-- English: "{{Player4}} Respawn as ??? (Blue Baby) on death"

	[C_ID .. 163] = "Hayalet gözyaşı arkadaşı", -- Ghost Baby
	-- Full old Desc: "Hayalet gözyaşı arkadaşı#Atış başına 3.5 hasar verir"
	-- English: "Shoots spectral tears"

	[C_ID .. 164] = "Mavi ateş çıkartır#Dokunma hasarı verir#Düşman gözyaşlarını bloklar#2 Saniye sonra yok olur", -- The Candle
	-- English: "Throws a blue flame#It deals contact damage, blocks enemy tears, and despawns after 2 seconds"

	[C_ID .. 166] = "Bütün pickupları değiştir", -- D20
	-- English: "Rerolls all pickups in the room"

	[C_ID .. 167] = "V şeklinde iki gözyaşı atar", -- Harlequin Baby
	-- Full old Desc: "V şeklinde iki gözyaşı atar#Atış başına 4 hasar verir"
	-- English: "Shoots two tears in a V-shaped pattern"

	[C_ID .. 168] = "Gözyaşları yerine kontrol edilebilir hava saldırısı#Hasarının 20 katını verir", -- Epic Fetus
	-- English: "Instead of shooting tears, aim a crosshair#A rocket lands on the crosshair after 1.5 seconds#{{Damage}} Rockets deal 20x Isaac's damage"

	[C_ID .. 170] = "Düşmanların üstüne basar", -- Daddy Longlegs
	-- Full old Desc: "Düşmanların üstüne basar#Saniyede 40 hasar verir"
	-- English: "Stomps on a nearby enemy every 4 seconds"

	[C_ID .. 171] = "Slows down enemies for 4 seconds", -- Spider Butt
	-- Full old Desc: "Slows down enemies for 4 seconds#10 Damage to all enemies"
	-- English: "{{Slow}} Slows down enemies for 4 seconds"

	[C_ID .. 174] = "Rastgele gözyaşı atar", -- Rainbow Baby
	-- Full old Desc: "Rastgele gözyaşı atar#Atış başına 3-5 hasar verir"
	-- English: "Shoots random tears"

	[C_ID .. 175] = "Opens all doors in the current room, including secret rooms", -- Dad's Key
	-- English: "Opens all doors in the room, including {{SecretRoom}}{{SuperSecretRoom}}Secret Rooms, {{ChallengeRoom}}{{BossRushRoom}}Challenge Rooms, and the Mega Satan door"

	[C_ID .. 177] = "Portatif slot makinesi", -- Portable Slot
	-- English: "{{Coin}} Spend 1 coin for a chance to spawn a pickup"

	[C_ID .. 178] = "Leaves pool of creep when you get hit#Deals 24 damage per second", -- Holy Water
	-- English: "Taking damage spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 180] = "Dokunulduğunda osurursun", -- The Black Bean
	-- English: "Isaac farts when damaged#{{Poison}} The fart poisons enemies"

	[C_ID .. 181] = "Elde iken uçuş sağlar#Hızın 1.5den küçük ise 1.5 Hız verir#Kullanıldığında kutsal ve hızlı hareket eder", -- White Pony
	-- English: "{{Speed}} Sets your Speed to at least 1.5#Flight while held#Using the item dashes in the direction of Isaac's movement, leaving behind beams of light"

	[C_ID .. 187] = "Büyüyen kıl yumağı#Etrafında salınır#Düşman öldürdüğünde büyür#Büyük yumak daha fazla hasar verir", -- Guppy's Hairball
	-- English: "Moving swings the hairball around#The ball grows when it kills an enemy#It deals more damage the bigger it is"

	[C_ID .. 188] = "Mirrors your movement#Shoots towards the player", -- Abel
	-- Full old Desc: "Mirrors your movement#Shoots towards the player#Deals 3.5 damage per shot"
	-- English: "Mirrors Isaac's movement#Shoots towards Isaac"

	[C_ID .. 191] = "Her 2-3 saniyede bir rastgele gözyaşı efekti", -- 3 Dollar Bill
	-- English: "Isaac's tears get random effects every 2-3 seconds"

	[C_ID .. 198] = "Her tipten 1 pickup düşürür", -- Box
	-- English: "Spawns 1 pickup of each type"

	[C_ID .. 199] = "Kasalardan daha fazla şey düşer", -- Mom's Key
	-- Full old Desc: "+2 Anahtar#Kasalardan daha fazla şey düşer"
	-- English: "Chests contain more pickups"

	[C_ID .. 202] = "Dokunduğun düşmanları altına çevir#Elindeki altın sayısına göre dokunma hasarı verir#Altın düşmanlar altın düşürür", -- Midas' Touch
	-- English: "{{Petrify}} Touching enemies petrifies them and turns them gold#Isaac deals contact damage based on his coin count#{{Coin}} Killing a golden enemy spawns coins#Poop spawned by Isaac has a high chance to be golden poop"

	[C_ID .. 203] = "Doubles all pickups", -- Humbleing Bundle
	-- English: "Pickups spawned are doubled if possible"

	[C_ID .. 204] = "Hasar aldığında 50% ihtimal ile rastgele pickup düşürür", -- Fanny Pack
	-- English: "Taking damage has a 50% chance to spawn a random pickup"

	[C_ID .. 205] = "-2 Hearts = Fully charges item when pressing space#!!! Only works when item has no charges!", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of 2 hearts#Only works when the item has no charges"

	[C_ID .. 207] = "LVL1: Yörüngeç#LVL2: Ateş eden yörüngeç#LVL3: Bandage girl#LVL4: Bandage girl LVL2", -- Ball of Bandages
	-- English: "Lv1: Orbital#{{Charm}} Lv2: Orbital that shoots charmed tears#{{Charm}} Lv3: Bandage Girl#{{Charm}} Lv4: Super Bandage Girl"

	[C_ID .. 208] = "!!! Şampiyon düşmanlar daha fazla çıkar", -- Champion Belt
	-- Full old Desc: "↑ +1 Hasar#!!! Şampiyon düşmanlar daha fazla çıkar"
	-- English: "Champion enemy chance goes from 5% to 20%#Doesn't increase chance of champion bosses"

	[C_ID .. 209] = "Patlamalar odadaki düşmanları afallatır ve hasar verir", -- Butt Bombs
	-- Full old Desc: "↑ +5 Bomba#Patlamalar odadaki düşmanları afallatır ve hasar verir"
	-- English: "{{Confusion}} Explosions concuss and damage every enemy in the room"

	[C_ID .. 210] = "1 saniye sabit durduğunda dokunulmazlık", -- Gnawed Leaf
	-- English: "After 1 second of inactivity, Isaac becomes invincible"

	[C_ID .. 212] = "↑ 50% tekrar doğma şansı", -- Guppy's Collar
	-- English: "50% chance to revive with half a heart on death"

	[C_ID .. 213] = "Gözyaşları düşman ateşlerini bloklar", -- Lost Contact
	-- Full old Desc: "Korumalı gözyaşları#Gözyaşları düşman ateşlerini bloklar#↓ -0.16 Gözyaşı hızı azalır"
	-- English: "Isaac's tears destroy enemy shots"

	[C_ID .. 214] = "Leave creep on floor when getting hit", -- Anemic
	-- Full old Desc: "↑ +5 Range up#Leave creep on floor when getting hit"
	-- English: "{{Timer}} When taking damage Isaac leaves a trail of blood creep for the room#The creep deals 6 damage per second"

	[C_ID .. 218] = "Yavaşça canını doldurur", -- Placenta
	-- Full old Desc: "↑ +1 HP#Yavaşça canını doldurur"
	-- English: "{{HealingRed}} 50% chance to heal half a heart every minute"

	[C_ID .. 220] = "+5 Bomba", -- Sad Bombs
	-- Full old Desc: "Gözyaşı patlaması!#+5 Bomba"
	-- English: "Isaac's bombs shoot 10 tears in a circle when they explode"

	[C_ID .. 221] = "Bouncing tears", -- Rubber Cement
	-- English: "Isaac's tears bounce off enemies and obstacles"

	[C_ID .. 222] = "Anti-Yerçekimi gözyaşları", -- Anti-Gravity
	-- Full old Desc: "↑ +2 Gözyaşı#Anti-Yerçekimi gözyaşları"
	-- English: "Holding the fire buttons causes tears to hover in midair#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "+5 Bomba", -- Pyromaniac
	-- Full old Desc: "Patlamalar seni iyileştirir#+5 Bomba"
	-- English: "Immunity to explosions, rock waves, and stomp attacks#{{HealingRed}} Getting hit by explosions heals 1 heart"

	[C_ID .. 224] = "Splitted tears deal half damage", -- Cricket's Body
	-- Full old Desc: "↑ +1 Tears up#↓ -10 Range down#Tears split up in 4 on hit#Splitted tears deal half damage"
	-- English: "Tears split up in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "Hasar alınca Ruh/Siyah kalp çıkarma şansı#Düşman öldürürken yarım kırmızı kalp çıkarma şansı", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a chance to spawn a Soul Heart#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 227] = "Hasar aldığında 1-2 altın çıkartır", -- Piggy Bank
	-- Full old Desc: "+3 Altın#Hasar aldığında 1-2 altın çıkartır#Keeper için 0-1"
	-- English: "{{Coin}} Taking damage spawns 1-2 coins"

	[C_ID .. 228] = "↑ +1 Tears up", -- Mom's Perfume
	-- Full old Desc: "Chance to shoot fearing tears#↑ +1 Tears up"
	-- English: "{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 230] = "+6 Black hearts", -- Abaddon
	-- Full old Desc: "↑ +1.5 Damage up#↑ +0.2 Speed up#Fear tears#↓ Removes all red hearts#+6 Black hearts"
	-- English: "↓ {{EmptyHeart}} Removes all heart containers#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 232] = "(activated when getting hit)", -- Stop Watch
	-- Full old Desc: "Permanent slow effect#(activated when getting hit)#↑ +0.3 Speed up"
	-- English: "{{Slow}} Taking damage slows all enemies in the room permanently"

	[C_ID .. 233] = "Hayalet gözyaşı", -- Tiny Planet
	-- Full old Desc: "Gözyaşları etrafında yörünge yapar#↑ +7.0 Gözyaşı yüksekliği#Hayalet gözyaşı"
	-- English: "Isaac's tears orbit around him"

	[C_ID .. 234] = "Düşman öldürdüğünde mavi örümcek çıkartır", -- Infestation 2
	-- English: "Killing an enemy spawns a blue spider"

	[C_ID .. 236] = "Dokunulduğunda düşmanı boka çevirir", -- E. Coli
	-- English: "Touching an enemy turns it into poop"

	[C_ID .. 241] = "Düşen pickupları iki katına çıkartır#Greed modunda işe yaramaz", -- Contract from Below
	-- English: "Doubles all room clear rewards#33% chance for no room clear reward"

	[C_ID .. 242] = "50% şans ile düşman ateşini bloklar", -- Infamy
	-- English: "50% chance to block enemy shots"

	[C_ID .. 243] = "Gözyaşı bloklayan kalkan", -- Trinity Shield
	-- English: "Blocks enemy shots coming from the direction Isaac is shooting"

	[C_ID .. 244] = "Rastgele lazer tipi gözyaşları at", -- Tech.5
	-- English: "Occasionally shoot lasers in addition to Isaac's tears"

	[C_ID .. 245] = "Doubles all your shots", -- 20/20
	-- English: "Isaac shoots 2 tears at once"

	[C_ID .. 246] = "Gizli odaları gösterir", -- Blue Map
	-- English: "{{SecretRoom}} Reveals secret room locations on the map"

	[C_ID .. 247] = "Your familiars deal double damage", -- BFFS!
	-- English: "Familiars deal double damage"

	[C_ID .. 248] = "Blue Spiders/flies deal double damage", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage"

	[C_ID .. 249] = "1 yerine 2 Boss itemi çıkar#!!! Sadece biri seçilebilir", -- There's Options
	-- English: "Allows Isaac to choose between 2 items after beating a boss"

	[C_ID .. 250] = "Bütün düşen bombaları iki katına çıkart", -- Bogo Bombs
	-- English: "{{Bomb}} All bomb drops become double bombs"

	[C_ID .. 251] = "Bütün hapları karta çevirir", -- Starter Deck
	-- Full old Desc: "2 Kart taşıyabilirsin#Bütün hapları karta çevirir"
	-- English: "Isaac can carry 2 cards#Turns all pills into cards"

	[C_ID .. 252] = "Bütün kartları hapa çevirir", -- Little Baggy
	-- Full old Desc: "2 Hap taşıyabilirsin#Bütün kartları hapa çevirir"
	-- English: "Isaac can carry 2 pills#Turns all cards into pills"

	[C_ID .. 256] = "+5 Bombs", -- Hot Bombs
	-- Full old Desc: "Burning bombs#+5 Bombs"
	-- English: "{{Burning}} Isaac's bombs leave a flame where they explode"

	[C_ID .. 258] = "Aldığında bütün itemlerini ve özelliklerini değiştirir, kat değişiminde de aynı efekti verir", -- Missing No.
	-- English: "Rerolls all of Isaac's items and stats on pickup and at every new floor"

	[C_ID .. 260] = "Lanetlere bağışıklık", -- Black Candle
	-- Full old Desc: "Lanetlere bağışıklık#+1 Siyah kalp#Daha yüksek Şeytan{{DevilRoom}} / Melek{{AngelRoom}} odası şansı"
	-- English: "{{CurseBlind}} Immune to curses"

	[C_ID .. 261] = "↓ Dealt damage decreases for traveled distance of the tear", -- Proptosis
	-- Full old Desc: "↑ +100% Damage up#↓ Dealt damage decreases for traveled distance of the tear"
	-- English: "↓ Tears deal less damage the further they travel"

	[C_ID .. 262] = "When down to 1 Heart, damages all enemies in the room", -- Missing Page 2
	-- Full old Desc: "+1 black heart#When down to 1 Heart, damages all enemies in the room"
	-- English: "Taking damage down to 1 heart damages all enemies in the room"

	[C_ID .. 264] = "Hasar aldığında düşmanlara saldırır", -- Smart Fly
	-- Full old Desc: "Yörüngeç#Hasar aldığında düşmanlara saldırır#Saniyede 22.5 hasar verir"
	-- English: "Attacks enemies when Isaac takes damage"

	[C_ID .. 265] = "Düşman tarafından vurulduğunda, 10% şans ile tüm düşmanlara hasar verme şansı#Arkasına saklanılabilir", -- Dry Baby
	-- English: "10% chance to damage all enemies in the room when it is hit by an enemy tear"

	[C_ID .. 266] = "Yavaşlatan sıvı bırakır#Oda temizlendiğinde 1-2 mavi örümcek çıkartır", -- Juicy Sack
	-- English: "{{Slow}} Leaves slowing creep#Spawns 1-2 friendly spiders after clearing a room"

	[C_ID .. 267] = "Lazer atar#Ateş ettiğin yönde hareket eder", -- Robo-Baby 2.0
	-- Full old Desc: "Lazer atar#Atış başına 3.5 hasar verir#Ateş ettiğin yönde hareket eder"
	-- English: "Shoots lasers#Moves in the direction Isaac is shooting"

	[C_ID .. 268] = "Oyuncu ateş ederken mavi sinekler çıkartır", -- Rotten Baby
	-- English: "Spawns blue flies when Isaac shoots"

	[C_ID .. 269] = "Saniyede 6 hasar veren bir sıvı bırakır", -- Headless Baby
	-- English: "Leaves creep which deals 6 damage per second"

	[C_ID .. 270] = "Düşman öldürdüğünde yarım siyah kalp verir#Saniyede 3.2 hasar", -- Leech
	-- Full old Desc: "Düşman öldürdüğünde yarım siyah kalp verir#Saniyede 3.2 hasar"
	-- English: "Chases enemies#{{HealingRed}} Heals Isaac for half a heart when it kills an enemy"

	[C_ID .. 271] = "Bir kaç odada bir rastgele pickup düşürür", -- Mystery Sack
	-- English: "Spawns a random pickup every 5-6 rooms"

	[C_ID .. 272] = "Patlayan sinek arkadaşı", -- BBF
	-- Full old Desc: "Patlayan sinek arkadaşı#Patlama 60 hasar verir"
	-- English: "Friendly exploding fly#The explosion deals {VAR:1} damage#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 273] = "Throwable bomb familiar#The explosion deals 60 Damage", -- Bob's Brain
	-- Full old Desc: "Throwable bomb familiar#The explosion deals 60 Damage"
	-- English: "Dashes in the direction Isaac is shooting#Explodes when it hits an enemy#{{Poison}} The explosion deals {VAR:1} damage and poisons enemies#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 274] = "When getting hit, gain one midrange orbital", -- Best Bud
	-- Full old Desc: "When getting hit, gain one midrange orbital#Orbital deals 75 damage per second"
	-- English: "Taking damage spawns one midrange orbital for the room"

	[C_ID .. 275] = "Shoots a brimstone laser", -- Lil Brimstone
	-- Full old Desc: "Shoots a brimstone laser#Shot deals 31.5 damage per second"
	-- English: "{{Chargeable}} Familiar that charges and shoots a {{Collectible118}} blood beam#It deals {VAR:1} damage over 0.63 seconds"

	[C_ID .. 276] = "Gain an invulnerable body#!!! When the heart familiar gets hit you take damage", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 277] = "Hayalet arkadaşı", -- Lil Haunt
	-- Full old Desc: "Hayalet arkadaşı#Saniyede 4 hasar verir"
	-- English: "{{Fear}} Chases and fears enemies"

	[C_ID .. 278] = "!!! Converts:#1,5 Red hearts into 1 soul heart or a spider", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#{{SoulHeart}} Spawns a Soul Heart or spider for every 1.5 Red Hearts picked up"

	[C_ID .. 279] = "Büyük şişko martha yörüngeci", -- Big Fan
	-- Full old Desc: "Büyük şişko martha yörüngeci#Saniyede 30 hasar verir"
	-- English: "Large orbital"

	[C_ID .. 280] = "Randomly spawns blue spiders when in a hostile room", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms"

	[C_ID .. 281] = "Yanıltıcı arkadaş#Düşmanlar artık onu hedefler", -- Punching Bag
	-- English: "Decoy familiar#Enemies target him instead of Isaac"

	[C_ID .. 282] = "Zıplamanı sağlar", -- How to Jump
	-- English: "Allows Isaac to jump over gaps and obstacles"

	[C_ID .. 283] = "Reroll all pickups, pedestals and all your held passive items", -- D100
	-- English: "Reroll all pickups and pedestal items in the room, and all of Isaac's passive items"

	[C_ID .. 284] = "Eldeki bütün pasif itemlerini değiştirir", -- D4
	-- English: "Reroll all of Isaac's passive items"

	[C_ID .. 285] = "Reroll all enemies in the room", -- D10
	-- English: "Reroll all enemies in the room"

	[C_ID .. 286] = "Eldeki kartının efektini kopyalar", -- Blank Card
	-- English: "Triggers the effect of the rune or card Isaac holds without using it"

	[C_ID .. 289] = "Throw red fire#The flame persists until it delt damage 5 times", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 5 times"

	[C_ID .. 290] = "Sonra kullanmak üzere 4 kırmızı kalbe kadar içinde saklar", -- The Jar
	-- English: "{{Heart}} Picking up Red Hearts while at full health stores up to 4 of them in the Jar#Using the item drops all stored hearts on the floor"

	[C_ID .. 291] = "!!! Insta kills Poop enemies & bosses!#Turns enemies into poop", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses"

	[C_ID .. 293] = "4 yönde birden brimstone lazeri atar", -- Head of Krampus
	-- Full old Desc: "4 yönde birden brimstone lazeri atar"
	-- English: "{{Collectible118}} Shoot a 4-way blood beam#They each deal {VAR:1} damage over 1.33 seconds"

	[C_ID .. 294] = "Knocks back nearby enemies and projectiles", -- Butter Bean
	-- Full old Desc: "Knocks back nearby enemies and projectiles#10% chance to turn into the stronger "Wait What?" when swapping it with a different active item and picking it up again"
	-- English: "Knocks back nearby enemies and projectiles#10% chance to turn into the stronger {{NameC484}} when swapping it with a different active item and picking it up again"

	[C_ID .. 295] = "Damages the whole room with 2x the player damage#Price: 1 coin", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage to all enemies#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "!!! Convert:#2 Soul/Black hearts into 1 red heart", -- Converter
	-- English: "{{Heart}} Converts 2 Soul/Black Hearts into 1 heart container"

	[C_ID .. 299] = "Yeterince hızlı iken dokunulmazlık#↓ -0.3 Hız eksilir", -- Taurus
	-- Full old Desc: "Düşman olan odalarda hızlan!#Yeterince hızlı iken dokunulmazlık#↓ -0.3 Hız eksilir"
	-- English: "↑ {{Speed}} Slowly gain speed while in hostile rooms#At 2 speed, Isaac becomes invincible and deals contact damage#Afterwards, lose the Taurus speed boost for the room"

	[C_ID .. 300] = "Touching enemies hurts them", -- Aries
	-- Full old Desc: "↑ +0.25 Speed up#Touching enemies hurts them"
	-- English: "Touching enemies deals contact damage"

	[C_ID .. 301] = "Halves taken damage in room when you already got hit", -- Cancer
	-- Full old Desc: "+3 Soul hearts#Halves taken damage in room when you already got hit"
	-- English: "Taking damage reduces all future damage in the room to half a heart"

	[C_ID .. 303] = "Chance to get invincibility when hit#Converts negative pills into positive ones", -- Virgo
	-- English: "Taking damage can make Isaac temporarily invincible#{{Luck}} 100% chance at 10 luck#{{Pill}} Converts negative pills into positive ones"

	[C_ID .. 304] = "Balances your stats!#!!! Every stats up afterwards will affect other stats too", -- Libra
	-- Full old Desc: "+6 Coins / Keys / Bombs#Balances your stats!#!!! Every stats up afterwards will affect other stats too"
	-- English: "Balances Isaac's stats#Future stat changes will be spread across all stats"

	[C_ID .. 308] = "Leave trail of creep#Creep deals 6 damage per second", -- Aquarius
	-- English: "Isaac leaves a trail of creep#The creep deals 6 damage per second"

	[C_ID .. 311] = "Öldüğünde, Kara Judas olarak geri dön#↑ (Hasar x 2)", -- Judas' Shadow
	-- English: "{{Player12}} When dead, respawn as Dark Judas with a x2 damage multiplier"

	[C_ID .. 313] = "Her odada ilk alınan hasarı görmezden gelir", -- Holy Mantle
	-- English: "Negates the first hit taken once per room"

	[C_ID .. 314] = "Destroy rocks when walking over them", -- Thunder Thighs
	-- Full old Desc: "↑ +1 Health up#↓ -0.4 Speed down#Destroy rocks when walking over them"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 315] = "Magnetic tears#Affects enemies, pickups and trinkets", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets"

	[C_ID .. 316] = "Şarj ederken hasar alınırsa, rastgele bir odaya ışınlar", -- Cursed Eye
	-- Full old Desc: "Şarj edilen göz yaşı dalgası#Şarj ederken hasar alınırsa, rastgele bir odaya ışınlar"
	-- English: "Charged wave of {VAR:1} tears#{{Warning}} Taking damage while partially charged teleports Isaac to a random room"

	[C_ID .. 317] = "Gözyaşları sıvı bırakır#Sıvı saniyede 30 hasar verir", -- Mysterious Liquid
	-- English: "Isaac's tears leave creep#The creep deals 30 damage per second"

	[C_ID .. 318] = "Yakın dövüş arkadaşı", -- Gemini
	-- Full old Desc: "Yakın dövüş arkadaşı#Saniyede 6 dokunma hasarı verir"
	-- English: "Close combat familiar"

	[C_ID .. 319] = "Odada gezer#Isaace doğru ateş eder#Verdiği hasar senin hasarına eşit olur", -- Cain's Other Eye
	-- English: "Bounces around the room#Low accuracy tears that deal Isaac's damage"

	[C_ID .. 320] = "Controllable Fly", -- ???'s Only Friend
	-- Full old Desc: "Controllable Fly#Deals 5 contact damage per second"
	-- English: "Controllable fly"

	[C_ID .. 321] = "Draggable ball that can destroy rocks", -- Samson's Chains
	-- Full old Desc: "Draggable ball that can destroy rocks#Deals 10.7 contact damage per second"
	-- English: "Draggable ball that can destroy rocks"

	[C_ID .. 322] = "Copies the effect of one of your familiars#Deals double its damage", -- Mongo Baby
	-- English: "Mimics your baby familiars' tears#If you have none, shoots normal 3.5 damage tears"

	[C_ID .. 323] = "Shoot 8 tears in all directions when used#Charges when shooting", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects#Recharges by shooting tears"

	[C_ID .. 324] = "Teleports you to:#{{SecretRoom}}{{SuperSecretRoom}}Secret-, Error- or {{TreasureRoom}}Item-rooms", -- Undefined
	-- English: "Teleports Isaac to the {{TreasureRoom}} Treasure, {{SecretRoom}} Secret, {{SuperSecretRoom}} Super Secret or {{ErrorRoom}} I AM ERROR Room"

	[C_ID .. 325] = "Kafanı kes#Kafa sabit bir arkadaşa dönüşür#Vücudunu ayrı kontrol et", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The head shoots 3.5 damage tears#The body is controlled separately and still shoots Isaac's tears"

	[C_ID .. 326] = "Hold down space till chargebar is empty for invincibility#!!! Don't hold it for too long!", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 327] = "Yarım kırmızı kalp veya daha altında hasar aldığında dokunulmazlık", -- The Polaroid
	-- English: "Taking damage at half a Red Heart or none makes Isaac temporarily invincible"

	[C_ID .. 328] = "Damages all enemies in the room when getting hit and at half a red heart or none", -- The Negative
	-- English: "Taking damage at half a Red Heart or none damages all enemies in the room"

	[C_ID .. 329] = "Kontrol edilebilen gözyaşı", -- The Ludovico Technique
	-- English: "Replaces Isaac's tears with one giant controllable tear"

	[C_ID .. 331] = "Tears gain a damaging aura", -- Godhead
	-- Full old Desc: "Homing tears#↑ +0.5 Damage up#↑ +1.2 Range up#↓ -0.3 Tears down#↓ -30% Shot Speed down#↑ +0.8 Tear Height#Tears gain a damaging aura"
	-- English: "{{Damage}} Tears gain an aura that deals 4.5x Isaac's damage per second"

	[C_ID .. 332] = "Öldüğünde Lazarus (Risen) olarak geri dön", -- Lazarus' Rags
	-- English: "{{Player11}} When dead, revive as Lazarus (Risen)"

	[C_ID .. 333] = "Tüm haritayı açar", -- The Mind
	-- English: "Full mapping effect"

	[C_ID .. 335] = "Düşmanları ve gözyaşlarını uzaklaştıran bir aura verir", -- The Soul
	-- Full old Desc: "+2 Ruh Kalbi#Düşmanları ve gözyaşlarını uzaklaştıran bir aura verir"
	-- English: "Grants an aura that repels enemies and projectiles"

	[C_ID .. 337] = "Her 4 odada bir hızlanır veya yavaşlar", -- Broken Watch
	-- English: "{{Slow}} Slows down every 4th room#13% chance to speed up the room instead"

	[C_ID .. 338] = "Atılabilir bumerang#Düşmanları afallatır ve hasarının 2 katını verir#İtemleri alabilir", -- The Boomerang
	-- English: "Throwable boomerang#{{Petrify}} Petrifies enemies and deals 2x Isaac's damage#Can grab and bring back items"

	[C_ID .. 347] = "Yerdeki itemleri, harcanılabilirleri çiftler", -- Diplopia
	-- English: "Duplicates all item pedestals and pickups in the room"

	[C_ID .. 348] = "Elindeki hapın efektini kopyalar", -- Placebo
	-- English: "{{Pill}} Triggers the effect of the pill Isaac holds without using it"

	[C_ID .. 350] = "At the start of every room every enemy gets a poison effect", -- Toxic Shock
	-- English: "{{Poison}} Entering a room poisons all enemies#Enemies killed leave a puddle of creep#The creep deals 30 damage per second"

	[C_ID .. 351] = "Odadaki tüm düşmanları dondur#5 Hasar verir ve yakın düşmanları zehirler#Odada dıken dalgaları gönderir#!!! Gizli odaları açmak için kullanılabilir", -- Mega Bean
	-- English: "{{Petrify}} Petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Sends a rock wave in the direction Isaac is moving#The rock wave can open secret rooms and break rocks"

	[C_ID .. 352] = "↓ Reduces your health to half a heart#Fires one large piercing spectral tear ((DMG+1) X 10)", -- Glass Cannon
	-- English: "{{Warning}} Firing the cannon reduces Isaac's health down to half a heart#Shoots a large piercing + spectral tear that does 10x Isaac's damage"

	[C_ID .. 353] = "Bombalar artık artı şeklinde patlar", -- Bomber Boy
	-- Full old Desc: "+5 bomba#Bombalar artık artı şeklinde patlar"
	-- English: "Bombs explode in a cross-shaped pattern"

	[C_ID .. 356] = "Aktif item kullanıldığında iki kere aktive olmasını sağlar", -- Car Battery
	-- English: "{{Battery}} Using an active item triggers its effect twice"

	[C_ID .. 357] = "Oda boyunca arkadaşlarını iki katına çıkartır", -- Box of Friends
	-- English: "{{Timer}} Duplicates all your familiars for the room#{{Collectible113}} Grants a Demon Baby for the room if Isaac has no familiars"

	[C_ID .. 358] = "Hayalet gözyaşları", -- The Wiz
	-- Full old Desc: "Çapraz olarak aynı anda 2 gözyaşı atar, R U A WIZARD hapına benzer şekilde#Hayalet gözyaşları"
	-- English: "Isaac shoots 2 tears at once diagonally"

	[C_ID .. 359] = "Arttırılmış ittirme", -- 8 Inch Nails
	-- Full old Desc: "↑ +1.5 Hasar#Arttırılmış ittirme"
	-- English: "Increases knockback"

	[C_ID .. 360] = "Shoots the same tears as Isaac in terms of damage, stats and effects", -- Incubus
	-- English: "Shoots tears with the same tear rate, damage and effects as Isaac"

	[C_ID .. 361] = "Gözyaşlarının kopyası şeklinde ateş eder", -- Fate's Reward
	-- English: "Shoots tears with the same damage and effects as Isaac#Shoots at half the rate of other familiars"

	[C_ID .. 362] = "Bir kaç odada bir rastgele pickup çıkartır", -- Lil Chest
	-- English: "35% chance to spawn a pickup every room"

	[C_ID .. 363] = "Ateşleri bloklar ver kendine çeker#Bir odada 10 gözyaşı bloklamak ebedi kalp düşürür", -- Sworn Protector
	-- Full old Desc: "Yörüngeç arkadaş#Saniyede 105 dokunma hasarı verir#Ateşleri bloklar ver kendine çeker#Bir odada 10 gözyaşı bloklamak ebedi kalp düşürür"
	-- English: "Blocks and attracts enemy shots#{{EternalHeart}} Blocking 10 shots in one room spawns an Eternal Heart"

	[C_ID .. 364] = "Yörüngeç arkadaş", -- Friend Zone
	-- Full old Desc: "Yörüngeç arkadaş#Saniyede 45 dokunma hasarı verir"
	-- English: "Midrange fly orbital"

	[C_ID .. 365] = "Duvarların ve engellerin etrafında hareket eder", -- Lost Fly
	-- Full old Desc: "Duvarların ve engellerin etrafında hareket eder#Saniyede 105 dokunma hasarı verir"
	-- English: "Moves along walls/obstacles"

	[C_ID .. 367] = "Düşman bomba tarafından öldürüldüğünde mavi örümcekler çıkartır#Bombaların düşmana yapışmasını sağlar", -- Sticky Bombs
	-- Full old Desc: "+5 bomba#Düşman bomba tarafından öldürüldüğünde mavi örümcekler çıkartır#Bombaların düşmana yapışmasını sağlar"
	-- English: "Isaac's bombs stick to enemies#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "Tek bir yönde ateş etmek atış sıklığını 200%e kadar arttırır", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually decreases tear delay up to 200% and decreases accuracy"

	[C_ID .. 371] = "Her hasar aldığında 6 troll bombası düşürür#Bomba itemleri ile sinerji olur", -- Curse of the Tower
	-- English: "{{Warning}} Taking damage spawns 6 Troll Bombs#The Troll Bombs inherit Isaac's bomb effects"

	[C_ID .. 372] = "Random chance to drop a battery or freeze all enemies in the room#Chance to add one charge to your spacebar item", -- Charged Baby
	-- English: "Every 30 seconds while in an uncleared room, the familiar can:#{{Battery}} Spawn a Battery (max 2 per room)#{{Battery}} Add one charge to the active item (max 2 per room)#{{Petrify}} Petrify all enemies in the room"

	[C_ID .. 373] = "Düşmana vuran her gözyaşı için ↑ +12.5% hasar (max. +100%)", -- Dead Eye
	-- English: "↑ {{Damage}} Consecutive tear hits on enemies grant +25% damage (max +100%)#Missing has a chance to reset the multiplier"

	[C_ID .. 375] = "20% chance to block tears#Get immune to explosions/Stomps from Mom's and Satan's foot", -- Host Hat
	-- English: "Grants immunity to explosions, rock wave attacks and Mom and Satan's stomp attacks#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Shops instantly restock their items when you buy them", -- Restock
	-- Full old Desc: "Spawns 3 random Pickups#Shops instantly restock their items when you buy them"
	-- English: "Buying an item from a Shop restocks it instantly"

	[C_ID .. 377] = "Örümcek düşmanlar artık hedef alıp dokunma hasarı vermezler", -- Bursting Sack
	-- English: "Spider enemies no longer target or deal contact damage to Isaac"

	[C_ID .. 378] = "3 saniye boyunca ateş etmek göt bombası bırakır", -- No. 2
	-- English: "Holding a fire button for 2.35 seconds spawns a lit Butt Bomb"

	[C_ID .. 380] = "Odalar artık anahtar değil altın ile açılır", -- Pay To Play
	-- Full old Desc: "+5 altın#Odalar artık anahtar değil altın ile açılır"
	-- English: "{{Coin}} Single-key doors must be opened with coins instead of keys"

	[C_ID .. 381] = "Sonraki oyununun başında sana rastgele bir item verir", -- Eden's Blessing
	-- Full old Desc: "↑ +0.7 Gözyaşı#Sonraki oyununun başında sana rastgele bir item verir"
	-- English: "Grants a random item at the start of the next run"

	[C_ID .. 382] = "Can be thrown at enemies to capture them#Next usage will re-spawn the same enemy as a friendly companion", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns it as a friendly companion"

	[C_ID .. 383] = "Ekranda bulunan tüm gözyaşlarını patlatır, her birinin 6ya ayrılıp çember şeklinde dağılmasını sağlar", -- Tear Detonator
	-- English: "Splits all of Isaac's tears currently on screen in a circle of 6 tears"

	[C_ID .. 384] = "Will launch and slide around the room#Deals 90 contact damage per second", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-90 contact damage per second depending on speed"

	[C_ID .. 385] = "Yakındaki altınları toplar#Her 6 altında seviye atlar, sadece 4. seviye 12 sürer#Level 2: Rastgele pickup bırakır#Level 3: Seninle aynı yönde gözyaşı atar#Level 4: Ateş etmez fakat düşmanları kovalar. Rastgele bomba bırakır#Level 4 Sonrası: altın toplayup rastgele pickup dülşürmeye devam eder", -- Bumbo
	-- English: "{{Coin}} Picks up nearby coins#Levels up after getting 6, 12, and 24 coins#Lv2: Chance to spawn item after room clears#Lv3: Shoots tears that can spawn coins on hit#Lv4: Chases enemies, occasionally dropping bombs, can spawn item on coin pickup"

	[C_ID .. 386] = "Herhangi bir objeyi farklı tipte bir objeye dönüştürür (örn. bok, testi, TNT, kırmızı bok, taş vs.)", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)"

	[C_ID .. 387] = "İçindeki düşmanları ve ateşleri yavaşlatan kocaman bir aura verir", -- Censer
	-- English: "{{Slow}} Familiar surrounded by a huge aura of light that slows down enemies and projectiles in it"

	[C_ID .. 388] = "Anahtar toplar, karşılığında rastgele kasalar verir", -- Key Bum
	-- English: "{{Key}} Picks up nearby keys#{{Chest}} Spawns random chests in return"

	[C_ID .. 389] = "Drops a random rune every 5-6 rooms", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune every 5-6 rooms"

	[C_ID .. 390] = "Sacred Heart gözyaşları atar", -- Seraphim
	-- Full old Desc: "Sacred Heart gözyaşları atar#Atış başına 10 hasar verir"
	-- English: "Shoots Sacred Heart tears"

	[C_ID .. 391] = "Hasar alındığında, odadaki her düşmanı aşık eder", -- Betrayal
	-- English: "{{Charm}} Taking damage charms all enemies in the room"

	[C_ID .. 392] = "Her katta rastgele bir burç itemı efekti verir", -- Zodiac
	-- English: "Grants a random zodiac item effect every floor"

	[C_ID .. 393] = "Random chance to shoot poison tears#Poison enemies on contact#Enemies that were poisoned have a chance to drop a black heart on death", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Poisoned enemies have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "↑ +0.3 Tear Height", -- Marked
	-- Full old Desc: "Fire tears automatically directed at a red target on the ground which is controlled by the player#↑ +0.7 Tears up#↑ +3.15 Range up#↑ +0.3 Tear Height"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground"

	[C_ID .. 395] = "Gain the ability to charge and fire a laser ring that travels across the room", -- Tech X
	-- English: "{{Chargeable}} Isaac's tears are replaced by a chargeable laser ring#Ring size increases with charge amount"

	[C_ID .. 396] = "Aralarında ışınlanmak için 2 portal yaratılabilir#Portallar farklı odalara yerleştirilebilir", -- Ventricle Razor
	-- English: "Creates up to two portals to travel between#Can be placed in different rooms"

	[C_ID .. 397] = "↑ +0.5 Tear Height", -- Tractor Beam
	-- Full old Desc: "Isaac's tears now travel directly forwards following a beam of light, but will also move sideways based on your player movement#↑ +0.5 Tears up#↑ +5.25 Range up#↑ +0.16 Shot Speed up#↑ +0.5 Tear Height"
	-- English: "Isaac's tears always travel along a beam of light in front of him"

	[C_ID .. 398] = "Gözyaşları düşmanları küçültebilir#Küçülen düşmanlar üzerine yürünerek ezilip öldürülebilir", -- God's Flesh
	-- English: "{{Shrink}} Tears can shrink enemies#Shrunken enemies can be crushed and killed by walking over them"

	[C_ID .. 400] = "Önüne bir mızrak koyar#Hasarının 2 katını verir#Temas halinde düşmanları korkutma şansı", -- Spear of Destiny
	-- English: "Isaac holds a spear in front of him#{{Fear}} The spear deals twice his damage and can fear enemies on contact"

	[C_ID .. 401] = "Chance to fire sticky bomb tears", -- Explosivo
	-- English: "25% chance to shoot sticky bomb tears#Sticky bomb tears do not deal damage on hit and explode after a few seconds"

	[C_ID .. 402] = "İtemler artık rastgele havuzdan çekilir", -- Chaos
	-- Full old Desc: "İtemler artık rastgele havuzdan çekilir#Rastgele 1-6 pickup çıkartır"
	-- English: "All items are chosen from random item pools"

	[C_ID .. 403] = "Gözyaşı hasarını ve düşmanların canlarını görmeni sağlar#Temas halinde rastgele bir durum efekti uygular#Rastgele pil düşürür", -- Spider Mod
	-- English: "Displays tear damage and health bars of all enemies#Inflicts random status effects to enemies on contact#Randomly spawns batteries"

	[C_ID .. 404] = "If hit, it will fart, which will charms, poison or knockback enemies", -- Farting Baby
	-- Full old Desc: "Blocks projectiles#If hit, it will fart, which will charms, poison or knockback enemies"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies"

	[C_ID .. 405] = "Bounces around the room", -- GB Bug
	-- Full old Desc: "Bounces around the room#Deals 120 damage per second and applies a random status effect"
	-- English: "Bounces around the room#Applies random status effects to enemies on contact"

	[C_ID .. 406] = "Özelliklerini değiştirir#Sadece hasar, gözyaşı, menzil ve hızı etkiler", -- D8
	-- English: "Multiplies Isaac's damage, tears, range and speed stats by between x0.5 and x2#The multipliers are rerolled each use"

	[C_ID .. 407] = "↑ Boost one of your stats depending on the color of the aura around you#When you take damage, you will get a new aura#{{ColorRed}}Red{{CR}} = +4.0 Damage#{{ColorBlue}}Blue{{CR}} = -4 Tear Delay#{{ColorYellow}}Yellow{{CR}} = +0.5 Speed up#{{ColorOrange}}Orange{{CR}} = +7.5 Range up, +1 Tear height", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and gives Isaac a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} -4 Tear delay#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +7.5 Range, ↑ +1 Tear height"

	[C_ID .. 408] = "When you take damage, a black brimstone ring will appear around Isaac#Enemies killed with it have a chance to drop a black heart", -- Athame
	-- English: "Taking damage creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the ring have a 15% chance to drop a Black Heart"

	[C_ID .. 409] = "Isaac kırmızı kalbe sahip değil ise, uçuş kazanır ve kalkan çıkarma şansı kazanır", -- Empty Vessel
	-- Full old Desc: "+2 Siyah kalp#Isaac kırmızı kalbe sahip değil ise, uçuş kazanır ve kalkan çıkarma şansı kazanır"
	-- English: "{{EmptyHeart}} When Isaac has no Red Hearts:#Flight#Every 40 seconds while in a hostile room, gain a shield for 10 seconds"

	[C_ID .. 411] = "↑ Odada öldürülen her düşman için +0.5 Hasar#Maksimum 10 düşmandan sonra +5 Hasar", -- Lusty Blood
	-- English: "↑ {{Damage}} +0.5 Damage for each enemy killed in the room#Caps at +5 Damage after 10 kills"

	[C_ID .. 412] = "15 Defa Hasar aldıktan sonra, kalıcı şeytan arkadaşı kazanır#4 arkadaşa kadar mümkündür", -- Cambion Conception
	-- English: "Taking damage 15 times spawns a permanent demon familiar#After two familiars, it takes 30 instead of 15#Caps at 4 familiars"

	[C_ID .. 413] = "15 kalp aldıktan sonra, kalıcı melek arkadaşı kazanır#5 arkadaşa kadar mümkündür", -- Immaculate Conception
	-- English: "Picking up 15 hearts spawns a permanent angelic familiar#Caps at 5 familiars#{{SoulHeart}} If all familiars have been granted, spawns a Soul Heart instead"

	[C_ID .. 414] = "Hazine odalarında artık 2 item çıkar#Sadece birini seçebilirsin", -- More Options
	-- English: "{{TreasureRoom}} Allows Isaac to choose between 2 items in treasure rooms"

	[C_ID .. 415] = "↑ Yarım/Boş kırmızı kalp konteynırı yoksa Hasar X 2#{VAR:EFFECTLIST}", -- Crown Of Light
	-- Full old Desc: "+2 Ruh Kalbi#↑ Yarım/Boş kırmızı kalp konteynırı yoksa Hasar X 2#Odada hasar alınırsa o oda için deaktive olur"
	-- English: "If Isaac has no damaged heart containers:#{VAR:EFFECTLIST}#Taking any damage removes the effect for the room"

	[C_ID .. 416] = "Allows you to carry two cards/pills/runes", -- Deep Pockets
	-- English: "Allows Isaac to carry two runes/cards/pills"

	[C_ID .. 417] = "Bounces around the room with a damaging aura, dealing 129% of your damage every second#↑ +50% damage while standing in the aura,", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 1.29x Isaac's damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 418] = "Her atılan gözyaşı farklı bir efekte sahip olur", -- Fruit Cake
	-- English: "Each one of Isaac's tears gets a different effect"

	[C_ID .. 419] = "Henüz girilmemiş bir odaya ışınlar", -- Teleport 2.0
	-- Full old Desc: "Henüz girilmemiş bir odaya ışınlar#Hiyerarşi: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}>{{IsaacsRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}> Error-Odası"
	-- English: "Teleports Isaac to a room that has not been cleared yet#Hierarchy: {VAR:TEXT}"

	[C_ID .. 420] = "Yürürken çember çizmek yerde pentagram sembolü çıkartır, tik başına 10 hasar verir", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds"

	[C_ID .. 421] = "Applies charm effect to any enemies in close range and deals 5 damage to them", -- Kidney Bean
	-- English: "{{Charm}} Charms and deals 5 damage to all enemies in close range"

	[C_ID .. 422] = "Zamanı geri alıp bir önceki odaya ışınlar, o andaki haline geri dönersin", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in"

	[C_ID .. 423] = "Etrafında büyük bir hale olur, dokunduğunda senin hasarın kadar hasar verir#Düşman ateşlerini geri yollama şansı", -- Circle of Protection
	-- English: "Surrounds Isaac with a large halo that deals his damage on contact per second#Chance to reflect enemy projectiles"

	[C_ID .. 424] = "Pickuplar 33% şans ile keseyle değiştirilir#Kese çıkartır", -- Sack Head
	-- English: "Pickups have a chance to be replaced with a {{GrabBag}}sack:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Spawns a sack"

	[C_ID .. 425] = "Önüne düşmanları ve ateşlerini yavaşlatan bir ışık konisi çıkartır", -- Night Light
	-- English: "{{Slow}} Spawns a slowing cone of light in front of Isaac"

	[C_ID .. 427] = "İttirilebilen TNT varili çıkartır#TNT odada iken tekrar kullanıldığında uzaktan detone eder", -- Mine Crafter
	-- English: "Spawns a pushable TNT barrel#Using the item a second time in the same room remotely detonates the barrel"

	[C_ID .. 429] = "Düşmanlar vurulduğunda 5% şans ile altın düşürür", -- Head of the Keeper
	-- English: "{{Coin}} Hitting an enemy with a tear has a 5% chance to spawn a Penny"

	[C_ID .. 430] = "Fires tears at nearby enemies that deal damage equal to your damage", -- Papa Fly
	-- Full old Desc: "Follows your movement pattern on a 1 second delay#Fires tears at nearby enemies that deal damage equal to your damage"
	-- English: "{{Damage}} Shoots tears at nearby enemies that deal Isaac's damage"

	[C_ID .. 431] = "Tears that pass through it will split up and gain a speed boost", -- Multidimensional Baby
	-- Full old Desc: "Follows your movement pattern on a 2 second delay#Tears that pass through it will split up and gain a speed boost"
	-- English: "Tears that pass through it are doubled and gain a range + shot speed boost"

	[C_ID .. 432] = "Bombalar patladığında rastgele pickup düşürme şansına sahip olur", -- Glitter Bombs
	-- Full old Desc: "+5 bomba#Bombalar patladığında rastgele pickup düşürme şansına sahip olur"
	-- English: "{{Charm}} Isaac's bombs have a 25% chance to drop a random pickup and a 15% chance to charm enemies when they explode"

	[C_ID .. 433] = "Hasar aldığında, tüm düşmanlara korku efekti uygulayıp siyah charger çıkartır", -- My Shadow
	-- Full old Desc: "Hasar aldığında, tüm düşmanlara korku efekti uygulayıp siyah charger çıkartır#The charger saniyede 5 hasar verir"
	-- English: "{{Fear}} Taking damage fears all enemies in the room and spawns a friendly black charger"

	[C_ID .. 434] = "Her öldürdüğün düşmanda kavanoza mavi sinek eklenir#20 sineğe kadar#İtemi kullanmak tüm sinekleri salar", -- Jar of Flies
	-- English: "Killing an enemy adds a blue fly to the jar, up to 20 flies#Using the item releases all the flies"

	[C_ID .. 435] = "Artı şeklinde 4 gözyaşı atar", -- Lil Loki
	-- Full old Desc: "Artı şeklinde 4 gözyaşı atar#Atış başına 3.5 hasar verir"
	-- English: "Shoots 4 tears in a cross pattern"

	[C_ID .. 436] = "Hasar alındığında, oda boyunca gözyaşın artar", -- Milk!
	-- English: "{{Tears}} Taking damage grants a Tears up for the duration of the room"

	[C_ID .. 437] = "Respawn all enemies of the room#Allows you to farm room clear rewards#!!! If used in a greed fight, it can reroll the room into a Shop", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room#If used after a Greed fight, rerolls the room into a normal Shop/Secret Room"

	[C_ID .. 440] = "↑ +2.0 Tear height", -- Kidney Stone
	-- Full old Desc: "Randomly while firing you will stop firing and release a burst of tears and a kidney stone#↓ -0.2 Speed down#↓ -17 Range down#↑ +2.0 Tear height"
	-- English: "Isaac occasionally stops firing and charges an attack that releases a burst of tears and a kidney stone"

	[C_ID .. 441] = "15 Saniye boyunca dev bir Mega Satan lazeri atar#Lazer oda ve katlar arasında devam eder", -- Mega Blast
	-- English: "{{Timer}} Fires a huge Mega Satan blood beam for 15 seconds#The beam persists between rooms and floors"

	[C_ID .. 442] = "!!! While at 1 full red heart:#{VAR:EFFECTLIST}", -- Dark Prince's Crown
	-- Full old Desc: "!!! While at 1 full red heart:#↑ +1.5 Range up#↑ +0.75 Tears up#↑ +0.2 Shot Speed up#(Doesnt work with characters without red HP)"
	-- English: "While at 1 full Red Heart:#{VAR:EFFECTLIST}"

	[C_ID .. 444] = "Every 15 tears fired, you fire a cluster of tears#Each tear in the cluster deals double damage", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears#Tears in the cluster deal double damage"

	[C_ID .. 445] = "Sürünme alanı olan bir odaya girğinde köpek havlama sesi duyulur", -- Dog Tooth
	-- Full old Desc: "↑ +0.3 Hasar#↑ +0.1 Hız#Gizli odaya bitişik bir odaya girdiğinde kurt ulumaya başlar#Sürünme alanı olan bir odaya girğinde köpek havlama sesi duyulur"
	-- English: "{{SecretRoom}}{{SuperSecretRoom}} A wolf howls in rooms adjacent to a Secret/Super Secret Room#{{LadderRoom}} A dog barks in rooms with a crawlspace under a rock"

	[C_ID .. 446] = "Ateş ederken, İçindeki düşmanları zehirleyen yeşil bir auraya sahip olursun#Zehir seninle aynı hasarı verir", -- Dead Tooth
	-- English: "{{Poison}} While firing, Isaac is surrounded by a green aura that poisons enemies"

	[C_ID .. 447] = "Durmadan ateş ederken, her 7.5 saniyede bok bulutu çıkartır#Bulut saniyede 5 defa 3.5 hasar verir#Bulut 15 saniye sürer#Ateş ederek oynatılabilir", -- Linger Bean
	-- English: "Firing without pause for 7.5 seconds spawns a poop cloud#The cloud deals Isaac's damage 5 times a second#The cloud lasts 15 seconds and can be moved by shooting it"

	[C_ID .. 448] = "Hasar alırken, ↑ +5 Menzil ve kan sıvısı bırakma veya kırmızı kalp çıkarma şansı", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{Collectible214}} 10% chance to get ↑ {{Range}} +5 Range and leave a trail of blood creep for the room"

	[C_ID .. 449] = "Düşman gözyaşları 25% şans ile afallatan gözyaşı olarak geri gönderilir", -- Metal Plate
	-- Full old Desc: "+1 Ruh Kalbi#Düşman gözyaşları 25% şans ile afallatan gözyaşı olarak geri gönderilir"
	-- English: "{{Confusion}} Enemy bullets have a 25% chance to be reflected as concussive tears"

	[C_ID .. 450] = "Her 20 gözyaşında bir, düşmanları altına çeviren para gözyaşı atar#Bu 1 altına mal olur#Vurulan düşmanlar altın düşürür", -- Eye of Greed
	-- English: "Every 20 tears, Isaac shoots a coin tear that deals double damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-4 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "Doubles the effect of any card used", -- Tarot Cloth
	-- Full old Desc: "Drops a random card or rune on pickup#Doubles the effect of any card used"
	-- English: "{{Card}} Card effects are doubled or enhanced"

	[C_ID .. 452] = "Hasar alındığında, etrafında halka olarak 10 gözyaşı at#Gözyaşları hasarının 125%ini verir", -- Varicose Veins
	-- English: "Taking damage shoots 10 tears in a circle around Isaac#The tears deal Isaac's damage + 25"

	[C_ID .. 453] = "↑ +1.5 Range up", -- Compound Fracture
	-- Full old Desc: "Bone tears#Tears shatter into 1-3 smaller bone shards upon hitting anything#↑ +1.5 Range up#↑ +1.0 Tear height"
	-- English: "Tears shatter into 1-3 small bone shards upon hitting anything"

	[C_ID .. 454] = "İki kart, rune veya hap taşıyabilirsin#Alındığında rastgele kart, rune veya hap düşürür", -- Polydactyly
	-- English: "Spawns a {{Rune}} rune, {{Card}} card or {{Pill}} pill on pickup#Allows Isaac to carry 2 runes/cards/pills"

	[C_ID .. 457] = "20% şans ile hasarı görmezden gelir", -- Cone Head
	-- Full old Desc: "+1 Ruh Kalbi#20% şans ile hasarı görmezden gelir"
	-- English: "20% chance to negate damage taken"

	[C_ID .. 458] = "Yere rastgele bir trinket çıkartır", -- Belly Button
	-- Full old Desc: "Yere rastgele bir trinket çıkartır#1 ekstra trinket slotu verir"
	-- English: "{{Trinket}} Allows Isaac to carry 2 trinkets"

	[C_ID .. 459] = "Yapışan zehir gözyaşları#Düşman ölene kadar yapışık kalır", -- Sinus Infection
	-- Full old Desc: "Yapışan zehir gözyaşları#Tik başına senin hasarın kadar hasar verir#Düşman ölene kadar yapışık kalır"
	-- English: "20% chance to shoot a sticky booger#{{Damage}} Boogers deal Isaac's damage once a second and stick for {VAR:1} seconds#{{Luck}} Not affected by luck"

	[C_ID .. 460] = "Afallatan gözyaşı atma şansı", -- Glaucoma
	-- English: "{{Confusion}} 5% chance to shoot concussive tears#Makes the screen slightly darker"

	[C_ID .. 461] = "Vurduğunda mavi örümcek ya da sinek çıkartır", -- Parasitoid
	-- Full old Desc: "Yumurta kesesi atma şansı#Vurduğunda yavaşlatan sıvı çıkartır#Vurduğunda mavi örümcek ya da sinek çıkartır"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot egg sacks#{{Slow}} Egg sacks spawn slowing creep and a blue spider or fly on hit"

	[C_ID .. 462] = "İlk düşman vurulduktan sonra, gözyaşı iki katı hasar verir ve takip eden efekt kazanır", -- Eye of Belial
	-- Full old Desc: "↑ +1.5 Menzil#↑ +1.0 Gözyaşı yüksekliği#Delici gözyaşları verir#İlk düşman vurulduktan sonra, gözyaşı iki katı hasar verir ve takip eden efekt kazanır"
	-- English: "Hitting an enemy makes the tear homing and doubles its damage"

	[C_ID .. 463] = "Gözyaşları ile taşları yok edip kapıları açma şansı", -- Sulfuric Acid
	-- Full old Desc: "↑ +0.3 Hasar#Gözyaşları ile taşları yok edip kapıları açma şansı"
	-- English: "Isaac's tears can destroy rocks and open doors"

	[C_ID .. 464] = "Champion enemies drop pickups more frequently", -- Glyph of Balance
	-- Full old Desc: "+2 Soul Hearts#Champion enemies drop pickups more frequently"
	-- English: "Champion enemies drop whatever pickup Isaac needs the most"

	[C_ID .. 465] = "İki yönde ateş ederek çapraz ateş etmeyi sağlar", -- Analog Stick
	-- Full old Desc: "↑ +0.3 Gözyaşı#İki yönde ateş ederek çapraz ateş etmeyi sağlar"
	-- English: "Allows Isaac to shoot tears in any direction"

	[C_ID .. 466] = "Odada öldürülen ilk düşman patlar ve yakındaki düşmanları zehirler", -- Contagion
	-- English: "{{Poison}} The first enemy killed in a room explodes and poisons all nearby enemies#Enemies that die while poisoned also explode and poison nearby enemies"

	[C_ID .. 467] = "Parmağın baktığı yöndeki düşmanlara sürekli hasarının 10%unu uygular", -- Finger!
	-- English: "{{Damage}} Constantly deals 10% of Isaac's damage in the direction it points"

	[C_ID .. 469] = "Sıvı bırakır#Sıvı saniyede 6 hasar verir#Buluta dokunan düşmanların kutsal ışık süzmesi yaratma şansı olur", -- Depression
	-- English: "Leaves a trail of creep#The creep deals 6 damage per second#Enemies that touch the cloud can be hit by a holy light beam"

	[C_ID .. 470] = "Oda etrafında gezer#Sen ateş ederken durur#Durduğunda ateşleri bloklayabilir", -- Hushy
	-- Full old Desc: "Oda etrafında gezer#Dokunma hasarı verir#Sen ateş ederken durur#Durduğunda ateşleri bloklayabilir"
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped"

	[C_ID .. 471] = "(monstros lung benzeri)", -- Lil Monstro
	-- Full old Desc: "Şarj edilebilir pompalı atağı#(monstros lung benzeri)#Her gözyaşı 3.5 hasar verir"
	-- English: "{{Chargeable}} Charges a shotgun attack similar to {{NameC229}}#Each tear deals 3.5 damage"

	[C_ID .. 472] = "Other familiars follow it#Stops moving when you are shooting#Will teleport back to you when you stop shooting", -- King Baby
	-- English: "Other familiars follow it#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 473] = "Çok yavaşça ileri hareket eder", -- Big Chubby
	-- Full old Desc: "Çok yavaşça ileri hareket eder#Saniyede 40.5 dokunma hasarı verir"
	-- English: "Very slowly charges forwards"

	[C_ID .. 476] = "Odadaki rastgele 1 pickupı çift yapar", -- D1
	-- English: "Duplicates a random pickup in the room"

	[C_ID .. 477] = "!!! Kullanıldığında, odadaki itemleri yutar#Aktif item: Efekti Void'in efektine eklenir (üstüne biner)#↑ Pasif item: Rastgele bir özellik arttırır", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate, and will activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 478] = "Tekrar ateş edene kadar odadaki tüm düşmanları dondurur#Donmuş bir düşmana dokunmak sana hasar verir#Düşmanların 30 saniye sonra donması biter", -- Pause
	-- English: "Pauses all enemies in the room until Isaac shoots#Touching a paused enemy still deals damage to Isaac#Enemies unpause after 30 seconds"

	[C_ID .. 479] = "Trinketini yutar ve kalıcı olarak sana efektini verir#Daha çok trinket düşmesini sağlar", -- Smelter
	-- English: "{{Trinket}} Consumes Isaac's held trinkets and grants their effects permanently#Increases the spawn rate of trinkets"

	[C_ID .. 480] = "Pickupları mavi sineğe veya örümceğe çevirir#O andaki sinek/örümcek sayını ikiye katlar#Hiç yoksa 1 mavi sinek veya örümcek çıkartır", -- Compost
	-- English: "Converts pickups into blue flies or spiders#Doubles all blue flies and spiders#Spawns 1 blue fly or spider if Isaac has none"

	[C_ID .. 482] = "Seni başka bir karaktere çevirir#Son aldığın itemi siler", -- Clicker
	-- English: "Changes your character to a random character#Removes the most recent item collected"

	[C_ID .. 483] = "Bütün katı etkiler#Bütün objeleri patlatır#{VAR:EFFECTLIST}#Boss rush / hush kapılarını ve gizli odaları açar", -- Mama Mega!
	-- Full old Desc: "Bütün katı etkiler#Bütün objeleri patlatır#Her düşmana 200 hasar verir#Boss rush / hush kapılarını ve gizli odaları açar"
	-- English: "Affects the whole floor#Explodes all objects#{VAR:EFFECTLIST}#Opens secret rooms#Opens Boss Rush and Hush regardless of time"

	[C_ID .. 484] = "Kullanışdığında, düşmanları uzağa ittirir ve taş dalgası çıkartır#Odaları açıp taşları kırabilir", -- Wait What?
	-- English: "Upon use, pushes enemies away and spawns a rock wave around Isaac#The rock wave can open rooms and break rocks"

	[C_ID .. 485] = "50% şansla odadaki tüm itemleri, harcanabilirleri ve kasaları değiştirir#50% şans ile siler ve 1 altın verir", -- Crooked Penny
	-- English: "50% chance to double all items, pickups and chests in room#50% chance to remove items / pickups in room and spawn 1 coin"

	[C_ID .. 486] = "Canını azaltmadan sana hasar verir#İtem efektleri için", -- Dull Razor
	-- English: "Hurts Isaac without removing health#Triggers any on-hit item effects"

	[C_ID .. 488] = "Her odada rastgele item efekti verir", -- Metronome
	-- English: "Grants a random item effect for the room"

	[C_ID .. 489] = "Random Dice-effect each usage", -- D Infinity
	-- English: "Triggers a random dice effect each use"

	[C_ID .. 490] = "Bulunan odanın havuzundan 2 rastgele item çıkartır", -- Eden's Soul
	-- English: "Spawns 2 random items depending on the current room's item pool#Starts with no charges"

	[C_ID .. 491] = "Using a pill poisons all enemies in the room", -- Acid Baby
	-- Full old Desc: "Drops a random pill every 3 rooms#Using a pill poisons all enemies in the room"
	-- English: "{{Pill}} Spawns a random pill every {VAR:1} rooms#{{Poison}} Using a pill poisons all enemies in the room"

	[C_ID .. 492] = "Gizli odaların, işaretli taşların ve tuzak kapılarının yerini gösterir", -- YO LISTEN!
	-- Full old Desc: "↑ +1 Şans#Gizli odaların, işaretli taşların ve tuzak kapılarının yerini gösterir"
	-- English: "Highlights the location of {{SecretRoom}} secret rooms, tinted rocks and {{LadderRoom}} crawlspaces"

	[C_ID .. 493] = "For every empty heart container:#{VAR:EFFECTLIST}", -- Adrenaline
	-- Full old Desc: "For every empty heart container:#↑ +0.2 Damage up"
	-- English: "For every empty heart container:#{VAR:EFFECTLIST}"

	[C_ID .. 494] = "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half your damage", -- Jacob's Ladder
	-- English: "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half of Isaac's damage"

	[C_ID .. 495] = "Gözyaşı yerine ateş atma şansı#Ateş 5 defa hasar verene kadar kalır", -- Ghost Pepper
	-- English: "Chance to shoot a red flame that blocks enemy shots and deals contact damage#The flame disappears after dealing damage or blocking shots 5 times"

	[C_ID .. 496] = "Aksi taktirde hasarının 3 katını verir", -- Euthanasia
	-- Full old Desc: "İğne atma şansı#İğneler normal düşmanları anında öldürür#Aksi taktirde hasarının 3 katını verir"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a needle#Needles kill normal enemies instantly, bursting them into 10 tears#{{Damage}} Needles deal 3x Isaac's damage against bosses"

	[C_ID .. 497] = "Odaya girdiğinde ateş etmeye başlayana kadar kendini kamuflaj yapar ve düşmanların kafasını karıştırır", -- Camo Undies
	-- English: "{{Confusion}} Entering a room confuses all enemies until Isaac starts shooting"

	[C_ID .. 498] = "Şeytan-{{DevilRoom}} VE Melek{{AngelRoom}}-Odaso kapıları çıkartır#Birine girince, diğeri kaybolur", -- Duality
	-- English: "{{AngelDevilChance}} Spawns both a Devil and Angel Room if either would have spawned#Entering one makes the other disappear"

	[C_ID .. 501] = "Her 25 altın için 1 kalp konteynırı verir#Keeper daha fazla altın kalbine sahip olur", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins gained after getting Greed's Gullet"

	[C_ID .. 502] = "İki katı hasar veren sıvı bırakan gözyaşı atma şansı", -- Large Zit
	-- English: "{{Slow}} Firing occasionally shoots a white creep tear that deals double damage and slows enemies#Taking damage shoots a white creep tear"

	[C_ID .. 504] = "Spawns a fly turret that shoots at enemies#Each shot deals 2 damage", -- Brown Nugget
	-- English: "Spawns a fly turret that shoots at enemies#Each shot deals 2 damage"

	[C_ID .. 505] = "Düşmanlı odaya girildiğinde aşık bir düşman çıkarma şansı", -- Poke Go
	-- English: "{{Friendly}} Entering a hostile room has a chance to spawn a friendly enemy"

	[C_ID .. 506] = "Gözyaşları kanamaya sebep olabilir, düşmanın canının 10% hasarını her 5 saniye verir", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds"

	[C_ID .. 507] = "Senin hasarın + düşmanın maks canının 10%u hasar verir#Odadaki her düşmanı etkiler#Hasar verdiğinde yarım kalp düşürme şansı", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts#{{HalfSoulHeart}} Having no heart containers drops Soul Hearts instead"

	[C_ID .. 508] = "Kanamaya sebep olan arkadaş, düşmanın canının 10% hasarını her 5 saniye verir.#Hasarının 300%ünü temas halinde verir", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds#{{Damage}} Deals 3x Isaac's damage per second#Does not block shots"

	[C_ID .. 509] = "Orbital that shoots a tear every 2 seconds in a random direction", -- Bloodshot Eye
	-- Full old Desc: "Orbital that shoots a tear every 2 seconds in a random direction#Deals 3.5 damage per tear#Deals 30 contact damage per second"
	-- English: "Orbital that shoots a tear in a random direction every 2 seconds#Does not block shots"

	[C_ID .. 510] = "Oda için bossun küçük delirium versiyonunu arkadaş olarak çıkartır", -- Delirious
	-- English: "{{Friendly}} Spawns a friendly delirium version of a boss for the room"

	[C_ID .. 511] = "Öldürene kadar rastgele bir düşmanın etrafında yörünge çizer", -- Angry Fly
	-- Full old Desc: "Öldürene kadar rastgele bir düşmanın etrafında yörünge çizer#Diğer düşmanlara saniyede 30 dokunma hasarı verir"
	-- English: "Orbits a random enemy until that enemy dies"

	[C_ID .. 512] = "Atılabilir jara delik, her şeyi içine çeker#Her tikte 0.4 hasar verir#Yakındaki taşları yok eder#6 Saniye sürer", -- Black Hole
	-- English: "Throwable black hole, which sucks in everything#Deals 6 damage per second#Destroys nearby rocks#Lasts 6 seconds"

	[C_ID .. 513] = "Düşmanı aşık etme veya korkutma şansı#Hasar aldığında gökkuşağı boku çıkarma şansı", -- Bozo
	-- Full old Desc: "↑ +0.1 Hasar#+1 Ruh kalbi#Düşmanı aşık etme veya korkutma şansı#Hasar aldığında gökkuşağı boku çıkarma şansı"
	-- English: "{{Charm}} Randomly charms/fears enemies#Taking damage has a random chance to spawn a Rainbow Poop"

	[C_ID .. 514] = "Rastgele zamanlarda düşmanlarda 'lag' olmasını sağlar, donarlar#25% şans ile oda ödüllerini iki katına çıkartır", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#25% chance to double room clear drops"

	[C_ID .. 515] = "Bulunduğu odanın havuzundan rastgele bir item çıkartır#Bunun yerine Lump of Coal veya The Poop itemlerini çıkarabilir", -- Mystery Gift
	-- English: "Spawns a random item from the current room's item pool#Chance to spawn Lump of Coal or The Poop instead"

	[C_ID .. 516] = "Döçnen bir sulama aleti çıkartır, gözyaşlarını sprey olarak atar", -- Sprinkler
	-- English: "Spawns a Sprinkler that shoots the same tears as Isaac in a circle around itself"

	[C_ID .. 517] = "Sürekli bomba bırakabilmeni sağlar", -- Fast Bombs
	-- Full old Desc: "+7 Bomba#Sürekli bomba bırakabilmeni sağlar"
	-- English: "Removes the delay between bomb placements"

	[C_ID .. 518] = "Rastgele bir coop bebeği gibi gözüken arkadaş#Rastgele bir gözyaşı efektine sahip olur#Her kat değişir", -- Buddy in a Box
	-- English: "Familiar which looks like a random co-op baby#Has random tear effects#Effects change every floor"

	[C_ID .. 519] = "10 Saniyede bir başka arkadaşlara dönüşen arkadaş", -- Lil Delirium
	-- English: "Transforms into a random familiar every 10 seconds"

	[C_ID .. 520] = "Öldürülen her 15 düşman için aktif itemini +1 şarj doldurur", -- Jumper Cables
	-- English: "Killing 15 enemies adds 1 charge to the active item"

	[C_ID .. 521] = "Kullanıldığında,Dükkan{{Shop}}- veya Şeytan{{DevilRoom}}- odası itemini bedava yapar", -- Coupon
	-- English: "Makes one random item in the {{Shop}} Shop or {{DevilRoom}} Devil Room free#Holding the item guarantees one Shop item is on sale"

	[C_ID .. 522] = "Sana yakın olan düşman ateşleri 3 saniye yerınde durur#Sonrasında diper yöne atılır#3 saniye sonra dolar", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards"

	[C_ID .. 523] = "When used, stores all Pick-Ups from the current room#Using it again will put them back on the floor again#This allows you to move things between rooms", -- Moving Box
	-- English: "Stores all pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Tears will be connected with beams of electricity#Electricity damage equals your damage", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#The beams deal Isaac's damage"

	[C_ID .. 525] = "Hasar almak ateş bloklayan bir arkadaş çıkmasına sebep olur#Aynı anda maks. 3 Arkadaş#Çok hasar aldıklarında yok olurlar", -- Leprosy
	-- English: "Taking damage spawns a projectile blocking orbital#Caps at 3 orbitals#They deal 35 contact damage per second#Orbitals are destroyed if they take too much damage"

	[C_ID .. 526] = "Küçük atlı arkadaşları#10 Saniyede bir değişir", -- 7 Seals
	-- English: "Spawns a small horseman familiar that spawns locusts#The horseman and its locust changes every 10 seconds"

	[C_ID .. 527] = "!!! Senin için bir şeyler yapabilecek bir arkadaş:#Kapı & kasa aç, İtem getir, dükkandan,şeytandan item çal, düşman ile savaş, patla ve düğmelere bas", -- Mr. ME!
	-- English: "Displays a movable cursor for a few seconds, then summons a ghost that will, depending on the cursor position:#Open doors or chests#Fetch an item#50% chance to steal from the Shop / Devil#Attack an enemy until it dies#Explode walls, rocks, shopkeepers, angel statues, machines, beggars"

	[C_ID .. 528] = "Arkadaş piramidi#Piramide çarpan gözyaşları 4e katlanır", -- Angelic Prism
	-- English: "Orbital prism#Friendly tears hitting it split into 4"

	[C_ID .. 529] = "Gözyaşları bilardo topu gibi davranır", -- Pop!
	-- English: "Isaac's tears bounce off each other and disappear when they stop moving"

	[C_ID .. 530] = "Düşmanlar işaretli sırada öldürülürlerse ödül verir", -- Death's List
	-- English: "Killing enemies in the order dictated by the mark {{DeathMark}} above them grants a random pickup or stat increase"

	[C_ID .. 531] = "↑ 31% Damage up", -- Haemolacria
	-- Full old Desc: "Tears fly in an arc#Tears burst into smaller tears on impact#↓ Tears down#↑ 31% Damage up"
	-- English: "Isaac's tears fly in an arc and burst into smaller tears on impact"

	[C_ID .. 532] = "Gözyaşları hareket ederken yavaşlar#Durduğunda, 8 parçaya ayrılıp patlarlar#Gözyaşları diğer gözyaşlarının içine atılıp daha büyük yapılabilir", -- Lachryphagy
	-- English: "Isaac's tears progressively slow down, stop, then explode into 8 smaller tears#Tears can merge and become bigger"

	[C_ID .. 533] = "Beyaz işik patlamaları atar#(Kutsal Brimstone)", -- Trisagion
	-- English: "Replaces Isaac's tears with piercing beams of light#The beams deal 33% damage but can hit enemies multiple times"

	[C_ID .. 534] = "2 Aktif item tutulmasını sağlar#Drop tuşuna basarak itemler değiştirilebilir", -- Schoolbag
	-- English: "Allows Isaac to hold 2 active items#The items can be swapped using the Drop button ({{ButtonRT}})"

	[C_ID .. 535] = "Boss odasına girerken kalkan verir", -- Blanket
	-- Full old Desc: "+1 Ruh kalbi#1 Kırmızı kalp verir#Boss odasına girerken kalkan verir"
	-- English: "{{HolyMantle}} Entering a boss room grants a Holy Mantle shield (prevents damage once)"

	[C_ID .. 536] = "1-2 Arkadaşını feda edip Şeytan{{DevilRoom}} odası itemi çıkartır#Mavi sinek ve örümceklerini altına çevirir", -- Sacrificial Altar
	-- English: "Sacrifices up to 2 familiars and spawns a devil item for each sacrifice#{{Coin}} Turns blue spiders/flies into coins"

	[C_ID .. 537] = "Rastgele bir hap verir#Sıvı fırlatan arkadaş#Sıvı tipi oyuncu her hap kullandığında değişir", -- Lil Spewer
	-- English: "{{Pill}} Spawns a random pill on pickup#Fires a line of creep#The type of creep changes with each pill use"

	[C_ID .. 538] = "HAsar almak trinketın efektini kalıcı olarak ekleyebilir", -- Marbles
	-- Full old Desc: "3 rastgele trinket çıkartır#HAsar almak trinketın efektini kalıcı olarak ekleyebilir"
	-- English: "{{Collectible479}} Taking damage has a 10% chance to consume Isaac's held trinket and grant its effects permanently"

	[C_ID .. 539] = "Hasar aldığında aşık bir düşman çıkartır#Odalar hasar almadan temizlendikçe daha güçlü arkadaşlar çıkartır", -- Mystery Egg
	-- English: "{{Friendly}} Taking damage spawns a friendly enemy#Spawns stronger friends the more rooms are cleared without taking damage"

	[C_ID .. 540] = "Gözyaşları yerde zıplar#Gözyaşları her zıplamada hasar verir", -- Flat Stone
	-- English: "Isaac's tears bounce off the floor and cause splash damage on every bounce"

	[C_ID .. 542] = "Düşman ateşlerini geri gönderir", -- Slipped Rib
	-- Full old Desc: "Yörüngeç#Düşman ateşlerini geri gönderir"
	-- English: "Reflects enemy projectiles"

	[C_ID .. 543] = "Spawn white poop when you get hit#(White poop has a ↑ Tears up aura and can block damage)#{VAR:EFFECTLIST}", -- Hallowed Ground
	-- Full old Desc: "Spawn white poop when you get hit#(White poop has a ↑ Tears up aura and can block damage)"
	-- English: "Taking damage spawns a white poop#While inside the poop's aura:#{VAR:EFFECTLIST}#{{IND}}Chance to block damage"

	[C_ID .. 544] = "Önünde havada duran bir çivi#Saniyede 6 kere hasarına eşit hasar verir", -- Pointy Rib
	-- English: "Levitates in front of Isaac#Deals 6x Isaac's damage per second"

	[C_ID .. 545] = "Odada öldürülen her düşman için kemik arkadaşı ya da aşık bony çıkartır", -- Book of the Dead
	-- English: "{{Friendly}} Spawns a bone orbital or friendly bony per enemy killed in the room (up to 8)"

	[C_ID .. 546] = "Düşmanları olduğu yerde donduran bir aura verir", -- Dad's Ring
	-- English: "{{Petrify}} Grants an aura that petrifies enemies"

	[C_ID .. 547] = "Mysterious Paper trinketini çıakrtır", -- Divorce Papers
	-- Full old Desc: "+1 Kemik Kalbi#↑ +0.7 Gözyaşı#Mysterious Paper trinketini çıakrtır"
	-- English: "{{Trinket21}} Spawns the Mysterious Paper trinket"

	[C_ID .. 548] = "Bumeragn gibi arkadaş#Pickupları getirebilir", -- Jaw Bone
	-- Full old Desc: "Bumeragn gibi arkadaş#7 Dokunma hasarı#Pickupları getirebilir"
	-- English: "Boomerang-like familiar#Can grab and bring back pickups"

	[C_ID .. 550] = "Annenin ayağı sürekli sana saldırır#Kullanmak oda için annenin ayağını durdurur#!!! (bununla Bossrush odasını bitirmeyi dene!)", -- Broken Shovel
	-- English: "Mom's Foot constantly tries to stomp Isaac#Using the item stops the stomping for the room (or one Boss Rush wave)#{{Warning}} (Try to beat Boss Rush with it!)"

	[C_ID .. 551] = "broken shovelın ikinci parçası#!!! Küreği \"Dark Room\"un toprak tepeciğinde kullan", -- Broken Shovel
	-- English: "Completes Mom's Shovel#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 552] = "Sonraki kata bir tuzak kapısı açar#!!! Küreği \"Dark Room\"un toprak tepeciğinde kullan!!! Havalı bir şey açar", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#10% chance for {{LadderRoom}} crawlspace trapdoor#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 1] = "Drop 1 coin when you get hit", -- Swallowed Penny
	-- English: "{{Coin}} Taking damage spawns 1 coin"

	[T_ID .. 2] = "Boklardan 50% fazla şey düşer", -- Petrified Poop
	-- English: "50% chance to get drops from poop"

	[T_ID .. 3] = "Aktif itemler için -1 şarj gerekir", -- AAA Battery
	-- English: "{{Battery}} -1 Charge needed for active items"

	[T_ID .. 4] = "İtem kullanırken seni rastgele ışınlar", -- Broken Remote
	-- English: "{{Collectible44}} Using an active item teleports Isaac to a random room"

	[T_ID .. 5] = "Daha fazla şampiyon düşmanlar#boss challenge odaları şansını arttırır({{BossRushRoom}})", -- Purple Heart
	-- English: "2x chance for champion enemies"

	[T_ID .. 6] = "Altın mıknatısı", -- Broken Magnet
	-- English: "{{Coin}} Attracts coins to Isaac"

	[T_ID .. 7] = "Bible {{Collectible33}} bulma şansı artar", -- Rosary Bead
	-- Full old Desc: "Melek{{AngelRoom}} odası şansı artar#Bible {{Collectible33}} bulma şansı artar"
	-- English: "{{Collectible33}} Higher chance to find The Bible in {{Shop}} Shops and {{Library}} Libraries"

	[T_ID .. 8] = "{VAR:ITEMDESCRIPTION}", -- Cartridge
	-- Full old Desc: "Hasar aldığında Gamekid efekti şansı"
	-- English: "{{Timer}} {VAR:LUCKCHANCE}% chance upon taking damage:#{VAR:ITEMDESCRIPTION}"

	[T_ID .. 9] = "Boyu değişlen gözyaşları", -- Pulse Worm
	-- English: "Isaac's tears pulsate#Affects tear hitbox"

	[T_ID .. 10] = "↑ +0.3 Tears up", -- Wiggle Worm
	-- Full old Desc: "Tears move in waves#↑ +0.3 Tears up"
	-- English: "Isaac's tears move in waves"

	[T_ID .. 11] = "Tears move in spirals with high speed", -- Ring Worm
	-- English: "Isaac's tears move in spirals with high speed"

	[T_ID .. 12] = "50% daha geniş gözyaşları", -- Flat Worm
	-- English: "50% wider tears#Increases knockback"

	[T_ID .. 13] = "Bir dükkann itemi bedava", -- Store Credit
	-- English: "{{Shop}} Allows Isaac to take 1 Shop item for free"

	[T_ID .. 14] = "Sıvıdan ve dikenden gelen hasarı engeller", -- Callus
	-- English: "Immune to creep and floor spikes"

	[T_ID .. 15] = "Destroying rocks spawns coins", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks spawns coins"

	[T_ID .. 17] = "Daha fazla Siyah Kalp", -- Black Lipstick
	-- English: "{{BlackHeart}} +10% chance for random Soul Hearts to spawn as Black Hearts"

	[T_ID .. 18] = "Daha fazla Ebedi Kalp", -- Bible Tract
	-- English: "{{EternalHeart}} +3% chance for Eternal Hearts"

	[T_ID .. 19] = "Anahtar kullanmadan kasaları aç", -- Paper Clip
	-- English: "{{GoldenChest}} Gold chests can be opened for free"

	[T_ID .. 20] = "Yarım kalpteyken, Siyah Kalp verir#!!! 3 sefer kullanım", -- Monkey Paw
	-- English: "{{BlackHeart}} Spawns 1 Black Heart when Isaac's health is reduced to half a heart#{{Warning}} Disappears after spawning 3 Black Hearts"

	[T_ID .. 21] = "\"Polaroid\", \"The Negative\", \"Missing Page\" ve \"Missing Poster\"i taklit eder#{VAR:TEXT}", -- Mysterious Paper
	-- Full old Desc: ""Polaroid", "The Negative", "Missing Page" ve "Missing Poster"i taklit eder"
	-- English: "Randomly grants the effect of:#{VAR:TEXT}"

	[T_ID .. 22] = "Kalp çıkma oranı 20%ye düşer#Anahtar şansı artar#Kalp pickupları siyah kalbe dönüşür", -- Daemon's Tail
	-- English: "{{Heart}} Decreases spawn rate of hearts to 20%#{{BlackHeart}} All Heart pickups turn into Black Hearts#{{Key}} Increases the drop chance of keys"

	[T_ID .. 23] = "Feda odasında {{SacrificeRoom}} öldüğünde \"The Lost\" olarak tekrar doğarsın #Eğer karakter açıksa, her odada bu geçerli", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death"

	[T_ID .. 24] = "Fart when picking up coins#Farts knockback enemies", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#Picking up coins makes Isaac fart"

	[T_ID .. 25] = "30 Saniyede bir osurur veya bok çıkartır", -- Mysterious Candy
	-- English: "Isaac farts or spawns poop every 30 seconds"

	[T_ID .. 26] = "↑ +10 Range", -- Hook Worm
	-- Full old Desc: "Tears move in angular patterns#↑ +10 Range"
	-- English: "Isaac's tears move in angular patterns"

	[T_ID .. 28] = "22% şans ile \"Blue Baby\" olarak tekrar doğarsın", -- Broken Ankh
	-- English: "{{Player4}} 22% chance to respawn as ??? (Blue Baby) on death"

	[T_ID .. 29] = "Hasar aldığında mavi sinek çıkartır", -- Fish Head
	-- English: "Taking damage spawns 1 blue fly"

	[T_ID .. 32] = "Random mushroom effect per room#Can reveal special rooms on the minimap", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room#Can reveal special rooms on the minimap"

	[T_ID .. 34] = "Daha çok kırmızı kalp düşer", -- Child's Heart
	-- English: "{{UnknownHeart}} 10% chance for the room clear reward to be a random heart#{{Heart}} 33% chance for a bonus heart from chests, tinted rocks, and destroyed machines"

	[T_ID .. 36] = "Daha fazla anahtar", -- Rusted Key
	-- English: "{{Key}} 10% chance for the room clear reward to be a key#{{Key}} 33% chance for a bonus key from chests, tinted rocks, and destroyed machines"

	[T_ID .. 38] = "Daha fazla Ruh Kalbi", -- Mom's Pearl
	-- English: "+10% chance for heart drops to be {{SoulHeart}} Soul Hearts, {{BlackHeart}} Black Hearts or {{EmptyBoneHeart}} Bone Hearts"

	[T_ID .. 40] = "↑ Hasar alınca +1.8 hasar şansı", -- Red Patch
	-- Full old Desc: "↑ Hasar alınca +1.8 hasar şansı"
	-- English: "{{Timer}} Taking damage has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +1.8 damage for the room"

	[T_ID .. 41] = "Daha çok bomba#!!! \"The Tick\"i kaldırır", -- Match Stick
	-- English: "{{Bomb}} 10% chance for the room clear reward to be a bomb#{{Bomb}} 33% chance for a bonus bomb from chests, tinted rocks, and destroyed machines#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 42] = "Daha çok pickup düşer", -- Lucky Toe
	-- Full old Desc: "↑ +1 Şans#Daha çok pickup düşer"
	-- English: "+8% room clear reward chance#33% chance for an extra pickup from chests, tinted rocks, and destroyed machines"

	[T_ID .. 43] = "Yarım kalp ve altına hasar alındığında, rastgele odaya ışınlar", -- Cursed Skull
	-- English: "When damaged down to half a heart or less, Isaac is teleported to a random room"

	[T_ID .. 44] = "Daha çok hap", -- Safety Cap
	-- English: "{{Pill}} 10% chance for the room clear reward to be a pill#{{Pill}} 33% chance for a bonus pill from chests, tinted rocks, and destroyed machines"

	[T_ID .. 45] = "Daha çok kart", -- Ace of Spades
	-- English: "{{Card}} 10% chance for the room clear reward to be a card#{{Card}} 33% chance for a bonus card from chests, tinted rocks, and destroyed machines"

	[T_ID .. 49] = "50% chance to drop half a heart when picking up coins", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 50% chance to spawn a half Red Heart"

	[T_ID .. 50] = "50% chance to drop a bomb when picking up coins", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 50% chance to spawn a bomb"

	[T_ID .. 51] = "50% chance to drop a key when picking up coins", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 50% chance to spawn a key"

	[T_ID .. 52] = "Altın alırken 50% şans ile +1 altın", -- Counterfeit Penny
	-- English: "{{Coin}} Picking up a coin has a 50% chance to add another coin to the counter"

	[T_ID .. 53] = "-15% Boss canı#Boss odasına ({{BossRoom}}) girerken 1 kırmızı kalp iyileştirir#!!! Alındığında bırakılamaz#Sadece {{Trinket41}}Match Stick veya yutarak ile çıkarılabilir", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick or gulping"

	[T_ID .. 54] = "Delici ateş atan arkadaş", -- Isaac's Head
	-- Full old Desc: "Delici ateş atan arkadaş#3.5 Hasar"
	-- English: "Familiar with piercing tears"

	[T_ID .. 55] = "Kat başında 1 ebedi kalp", -- Maggy's Faith
	-- English: "{{EternalHeart}} Entering a new floor grants +1 Eternal Heart"

	[T_ID .. 56] = "Şeytan anlaşmalarını 2 kalpten 1e indirir", -- Judas' Tongue
	-- English: "{{DevilRoom}} Reduces all devil deal prices to 1 heart container#Doesn't reduce 3 Soul Heart prices"

	[T_ID .. 57] = "Odada gezen arkadaş#Oyuncuyla aynı yöne ateş eder", -- ???'s Soul
	-- Full old Desc: "Odada gezen arkadaş#Oyuncuyla aynı yöne ateş eder#3.5 Hasar"
	-- English: "Familiar that bounces around the room#Shoots in the same direction as Isaac"

	[T_ID .. 58] = "↑ Düşman öldürürken 1/15 Şans ile +0.5 Hasar", -- Samson's Lock
	-- Full old Desc: "↑ Düşman öldürürken 1/15 Şans ile +0.5 Hasar#Efekt oda için geçerli"
	-- English: "{{Timer}} Killing an enemy has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +0.5 damage for the room"

	[T_ID .. 61] = "Tüm kasaları kırmızı kasaya çevirir", -- The Left Hand
	-- English: "{{RedChest}} Turns all chests into Red Chests"

	[T_ID .. 62] = "Sürünme alanı tasşkarı ve işaretli taşlar her 10 saniye yanıp söner", -- Shiny Rock
	-- English: "Crawlspace rocks and tinted rocks blink every 10 seconds"

	[T_ID .. 63] = "Troll bombalarını bomba pickupına dönüştürür", -- Safety Scissors
	-- English: "{{Bomb}} Turns Troll Bombs into bomb pickups"

	[T_ID .. 64] = "Her 3 saniye rastgele solucan efekti", -- Rainbow Worm
	-- English: "Grants a random worm effect every 3 seconds"

	[T_ID .. 67] = "Hasar alınca rastgele zar efekti verme şansı#{VAR:TEXT}", -- Cracked Dice
	-- Full old Desc: "Hasar alınca rastgele zar efekti verme şansı"
	-- English: "Taking damage has a 50% chance to trigger one of these effects:#{VAR:TEXT}"

	[T_ID .. 68] = "pickup ve düşmanlar için mıknatıs", -- Super Magnet
	-- English: "Isaac attracts pickups and enemies"

	[T_ID .. 69] = "Camouflages the player randomly#Confuses enemies", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies"

	[T_ID .. 70] = "Düşman odasında örümcek çıkarma şansı", -- Louse
	-- English: "Occasionally spawns a blue spider in hostile rooms"

	[T_ID .. 71] = "Bombalar sıvı bırakır", -- Bob's Bladder
	-- English: "Isaac's bombs leave damaging creep"

	[T_ID .. 72] = "Daha fazla pil#Oda temizlendiğinde 5% şans ile tutulan aktif iteme +1 şarj ekler", -- Watch Battery
	-- English: "{{Battery}} 6.66% chance for the room clear reward to be a battery#{{Battery}} +10% chance for random pickups to be a battery#{{Battery}} 5% chance to add 1 charge to held active item when clearing a room"

	[T_ID .. 73] = "Patlayan bombalar bomba pickupı düşürür", -- Blasting Cap
	-- English: "{{Bomb}} 10% chance for exploding bombs to drop a bomb pickup"

	[T_ID .. 74] = "Taşları kırınca daha fazla sürünme alanı şansı", -- Stud Finder
	-- English: "{{LadderRoom}} +0.5% chance to reveal a crawlspace when breaking a rock"

	[T_ID .. 75] = "Her odada farklı trinket efekti", -- Error
	-- English: "Grants a random trinket effect every room"

	[T_ID .. 76] = "Kasalar 50/50 şans ile daha fazla şey çıkartır YA DA düşman veya hiç bir şey çıkartmaz", -- Poker Chip
	-- English: "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly"

	[T_ID .. 77] = "İttirmeyi arttırır", -- Blister
	-- English: "Increases knockback"

	[T_ID .. 78] = "Düşmanlarda durum efektleri daha fazla sürer", -- Second Hand
	-- English: "Status effects applied to enemies last twice as long"

	[T_ID .. 79] = "25% şansla hap/kart kullanınca kopyasını düşürür", -- Endless Nameless
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill has a 25% chance to spawn a copy of that rune, card or pill"

	[T_ID .. 81] = "Hasar alınca verilen dokunulmazlık daha fazla sürer", -- Blind Rage
	-- English: "Invincibility frames after taking damage last twice as long"

	[T_ID .. 82] = "+15% sonraki katta çift hazine odası", -- Golden Horse Shoe
	-- English: "{{TreasureRoom}} Future Treasure Rooms have +15% chance to let Isaac choose between two items"

	[T_ID .. 83] = "Dükkanları {{Shop}} ücretsiz aç", -- Store Key
	-- English: "{{Shop}} Lets Isaac open Shops for free"

	[T_ID .. 84] = "Greed/Super Greed artık dükkanlarda çıkmaz#Daha fazla altın", -- Rib of Greed
	-- English: "{{Coin}} 5% more coins and fewer hearts from room clear rewards#Greed and Super Greed no longer appear in {{Shop}} Shops or {{SecretRoom}} Secret Rooms"

	[T_ID .. 85] = "Bağış makinesi kullanmak seni iyileştirir veya dilenci çıkartır", -- Karma
	-- English: "{{DonationMachine}} Using a Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)"

	[T_ID .. 86] = "Bok parçalamak mavi sinek çıkartır", -- Lil Larva
	-- English: "Destroying poop spawns 1 blue fly"

	[T_ID .. 87] = "Anahtar kullanırken yarım kalp iyileştir#Yarım kalpleri tam kalp yapar", -- Mom's Locket
	-- English: "{{HealingRed}} Using a key heals half a heart#{{Heart}} Turns half hearts into full hearts"

	[T_ID .. 88] = "Aktif itemlerin çıkma ihtimalini çok fazla düşürür", -- NO!
	-- English: "Prevents active items from spawning"

	[T_ID .. 89] = "Arkadaşlar sana daha yakın durur", -- Child Leash
	-- English: "Familiars stay closer to Isaac"

	[T_ID .. 90] = "Boklar parçalandığında patlar", -- Brown Cap
	-- English: "Poop explodes for 100 damage when destroyed"

	[T_ID .. 91] = "Daha fazla siyah bok#Siyah bok parçalandığında siyah kalp düşürme ihtimali", -- Meconium
	-- English: "33% chance for Black Poops to spawn#{{BlackHeart}} Destroying Black Poop has a 5% chance to spawn a Black Heart"

	[T_ID .. 92] = "↑ +0.2 Tears up", -- Cracked Crown
	-- Full old Desc: "↑ Stat increases of your items are 33% more effective#↑ +0.2 Tears up#↑ -1 Tear Delay"
	-- English: "↑ x1.33 Stat multiplier for the stats that are above 1 {{Speed}} speed, 3.5 {{Damage}} damage, 23.75 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 93] = "Sinek düşmanlarının arkadaş olma ihtimali olur", -- Used Diaper
	-- English: "15% chance per room for all fly enemies to become friendly"

	[T_ID .. 94] = "Bütün çıkan mavi sinek/örümcekleri ikiye katla", -- Fish Tail
	-- English: "Doubles all blue fly / spider spawns"

	[T_ID .. 97] = "2 arkadaşa kadar", -- Tonsil
	-- Full old Desc: "12-20 defa hasar alınca bloklayıcı arkadaş verir#2 arkadaşa kadar"
	-- English: "Taking damage {VAR:RANGE} times spawns a projectile blocking familiar#Disappears after spawning 2 familiars"

	[T_ID .. 98] = "Yapışkan zehirli gözyaşı atma ihtimali", -- Nose Goblin
	-- Full old Desc: "Yapışkan zehirli gözyaşı atma ihtimali"
	-- English: "10% chance to shoot a sticky tear#50% chance for it to be homing#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for {VAR:1} seconds"

	[T_ID .. 99] = "Seken gözyaşı atma ihtimali", -- Super Ball
	-- English: "10% chance to shoot bouncing tears"

	[T_ID .. 100] = "!!! Şarjı full aktif item tutarken:#{VAR:EFFECTLIST}", -- Vibrant Bulb
	-- Full old Desc: "!!! Şarjı full aktif item tutarken:#↑ +0.5 Hasar#↑ +0.25 Hız#↑ +0.75 Menzil#↑ +0.2 Gözyaşı#↑ +0.1 Atış hızı#↑ +1 Şans"
	-- English: "Holding a fully charged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 101] = "!!! While holding an uncharged active item:#{VAR:EFFECTLIST}", -- Dim Bulb
	-- Full old Desc: "!!! While holding an uncharged active item:#↑ +1.5 Damage#↑ +0.5 Speed#↑ +1.5 Range#↑ +0.4 Tears#↑ +0.3 Shot Speed#↑ +2 Luck"
	-- English: "Holding a completely uncharged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 102] = "+1 ekstra gizli oda", -- Fragmented Card
	-- English: "{{SecretRoom}} +1 extra Secret Room per floor while held"

	[T_ID .. 103] = "!!! Altın, anahtar ve bomba sayısı eşit olduğunda:#Yarım pickupları tam yapar", -- Equality!
	-- English: "Turns single pickups into double pickups when Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal"

	[T_ID .. 106] = "Ürettiğin sıvıların çağını arttırır", -- Lost Cork
	-- English: "Increases the radius of friendly creep"

	[T_ID .. 107] = "Alınan hasar Mavi/Siyah kalplerini görmezden gelir, önce kırmızıları alır", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#This red heart damage does not reduce Devil/Angel Room chances"

	[T_ID .. 108] = "Patlamadan hasar alınca rastgele pickup/trinket düşürme ihtimali#Sonrasında yok olur", -- Walnut
	-- English: "Getting hit by 1-9 explosions destroys the trinket and drops a random {{UnknownHeart}} heart, {{Coin}} coin, {{Key}} key and {{Trinket}} trinket#Taking damage isn't required"

	[T_ID .. 109] = ":Arkadaşlarının hareket etmesini bırakmasına sebep olur", -- Duct Tape
	-- English: "Familiars are stuck in one spot and cannot move"

	[T_ID .. 110] = "Shops {{Shop}} will now appear in the womb", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb"

	[T_ID .. 111] = "Item rooms {{TreasureRoom}} now appear in the womb", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb"

	[T_ID .. 112] = "Stok kutuları her zaman item odasında({{TreasureRoom}}) bulunur", -- Pay To Win
	-- English: "{{RestockMachine}} Restock boxes always spawn in {{TreasureRoom}} Treasure Rooms"

	[T_ID .. 113] = "Düşmanlı odaya girince patlayan atak sineği çıkartır#Sinek hasarının iki katı + patlama hasarı verir", -- Locust of War
	-- English: "Entering a hostile room spawns an exploding attack fly #The fly deals 2x Isaac's damage + explosion damage"

	[T_ID .. 114] = "Düşmanlı odaya girince zehirli atak sineği çıkartır#:Sinek hasarının 2 katını verir", -- Locust of Pestilence
	-- English: "{{Poison}} Entering a hostile room spawns a poison attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 115] = "Düşmanlı odaya girince yavaşlatan atak sineği çıkartır#:Sinek hasarının 2 katını verir", -- Locust of Famine
	-- English: "{{Slow}} Entering a hostile room spawns a slowing attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 116] = "Düşmanlı odaya girince atak sineği çıkartırm#Sinek hasarının 4 katını verir", -- Locust of Death
	-- English: "Entering a hostile room spawns an attack fly#The fly deals 4x Isaac's damage"

	[T_ID .. 117] = "Düşmanlı odaya girince patlayan 1-4 atak sineği çıkartır#Her sinek hasarının 2 katını verir", -- Locust of Conquest
	-- English: "Entering a hostile room spawns 1-4 attack flies#Each fly deals 2x Isaac's damage"

	[T_ID .. 118] = "Düşman öldürdükten sonra uçuş kazanma şansı#Oda boyunca", -- Bat Wing
	-- English: "{{Timer}} Killing an enemy has a 5% chance to grant flight for the room"

	[T_ID .. 119] = "Heals half a heart upon traveling to the next floor", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half a heart"

	[T_ID .. 120] = "Boss savaşı başlangıcında aktif itemini tamamen şarj eder", -- Hairpin
	-- English: "{{Battery}} Entering an uncleared boss room fully recharges active items"

	[T_ID .. 121] = "Her katta aldığın ilk hasardan korur", -- Wooden Cross
	-- English: "{{Collectible313}} Grants a Holy shield that prevents damage once per floor"

	[T_ID .. 122] = "İtemini kullanmak yere bırakmana sebep olur", -- Butter!
	-- English: "Using an active item drops it on a pedestal on the ground#Taking damage has a 2% chance to drop one of Isaac's passive items"

	[T_ID .. 123] = "Melek bosslarının anahtar parçaları yerine melek itemleri vermesini sağlar", -- Filigree Feather
	-- English: "Angel bosses drop angel items instead of Key Pieces"

	[T_ID .. 124] = "Son kullandığın kapı açık kalır", -- Door Stop
	-- English: "The last door used stays open"

	[T_ID .. 125] = "Arkadaşlarını elektrik ile birbirine bağlar#Elektrik başına 6 hasar verir", -- Extension Cord
	-- English: "Connects all familiars with beams of electricity#The beams deal 6 damage"

	[T_ID .. 126] = "Altın alırken mavi sinek verir", -- Rotten Penny
	-- English: "Picking up a coin spawns a blue fly"

	[T_ID .. 127] = "Arkadaşların takıp eden gözyaşına sahip olur", -- Baby-Bender
	-- English: "Grants all familiars homing shots"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 1] = "Katın başladığı odaya ışınlar", -- 0 - The Fool
	-- English: "Teleports Isaac to the first room of the floor"

	[Card_ID .. 3] = "Annenin ayağı düşmanın üstüne basar!", -- II - The High Priestess
	-- English: "Mom's Foot stomps on an enemy#Mom's Foot stomps Isaac if there are no enemies"

	[Card_ID .. 5] = "Boss odasına({{BossRoom}}) ışınlar", -- IV - The Emperor
	-- English: "{{BossRoom}} Teleports Isaac to the Boss Room"

	[Card_ID .. 9] = "1 bomba, 1 anahtar, 1 altın, 1 kalp", -- VIII - Justice
	-- English: "Spawns a random {{UnknownHeart}} heart, {{Coin}} coin, {{Bomb}} bomb and {{Key}} key"

	[Card_ID .. 10] = "Dükkana{{Shop}} ışınlar", -- IX - The Hermit
	-- English: "{{Shop}} Teleports Isaac to the Shop"

	[Card_ID .. 11] = "Slot veya fal makinası çıkartır", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 25% chance for it to be a Fortune Telling Machine"

	[Card_ID .. 15] = "Kan bağış makınası çıkartır", -- XIV - Temperance
	-- English: "{{DonationMachine}} Spawns a Blood Donation Machine"

	[Card_ID .. 17] = "6 troll bombası çıkartır", -- XVI - The Tower
	-- English: "Spawns 6 Troll Bombs"

	[Card_ID .. 18] = "Hazine odasına({{TreasureRoom}}) ışınlar", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room"

	[Card_ID .. 19] = "Gizli odaya({{SecretRoom}}) ışınlar", -- XVIII - The Moon
	-- English: "{{SecretRoom}} Teleports Isaac to the Secret Room"

	[Card_ID .. 21] = "Dilenci çıkartır", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#2% chance for it to be a Key Master or Bomb Bum"

	[Card_ID .. 23] = "Bombax2", -- 2 of Clubs
	-- English: "{{Bomb}} Doubles Isaac's number of bombs"

	[Card_ID .. 24] = "Altınx2", -- 2 of Diamonds
	-- English: "{{Coin}} Doubles Isaac's number of coins"

	[Card_ID .. 25] = "Anahtarx2", -- 2 of Spades
	-- English: "{{Key}} Doubles Isaac's number of keys"

	[Card_ID .. 26] = "Kırmızı kalpx2#Sadece iyileştirir", -- 2 of Hearts
	-- English: "{{HealingRed}} Doubles Isaac's number of Red Hearts {{ColorSilver}}(not containers){{CR}}"

	[Card_ID .. 27] = "Turns all pickups into bombs", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups into random bombs"

	[Card_ID .. 28] = "Turns all pickups into coins", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups into random coins"

	[Card_ID .. 29] = "Turns all pickups into keys", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups into random keys"

	[Card_ID .. 30] = "Turns all pickups into hearts", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups into random hearts"

	[Card_ID .. 31] = "Şeytan{{DevilRoom}} veya Melek{{AngelRoom}} odasına ışınlar", -- Joker
	-- English: "{{AngelDevilChance}} Teleports Isaac to the Devil or Angel Room"

	[Card_ID .. 32] = "Odadaki bütün taşları yok eder", -- Hagalaz
	-- English: "Destroy all rocks in the room"

	[Card_ID .. 33] = "Odadaki tüm pickupları kopyalar", -- Jera
	-- English: "Duplicates all pickups in room"

	[Card_ID .. 34] = "Tuzak kapısı çıkartır", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} 8% chance for a crawlspace trapdoor"

	[Card_ID .. 35] = "Lanet efektlerini kaldırır", -- Dagaz
	-- Full old Desc: "+1 Mavi Kalp#Lanet efektlerini kaldırır"
	-- English: "{{CurseCursed}} Removes all curses for the floor"

	[Card_ID .. 37] = "Bütün alınacak itemleri değiştirir", -- Perthro
	-- English: "Rerolls all pedestal items in the room"

	[Card_ID .. 40] = "Rastgele rune efekti#25% ihtimal ile kendini tekrar çıkartır", -- Blank Rune
	-- English: "Triggers a random rune effect#25% chance to duplicate itself when used"

	[Card_ID .. 41] = "Odadaki tüm itemler için rastgele özellik artar#(İtemleri yok eder)", -- Black Rune
	-- Full old Desc: "Tüm düşmanlara 40 hasar verir#Odadaki tüm itemler için rastgele özellik artar#(İtemleri yok eder)"
	-- English: "Converts all pedestal items in the room into random stat ups#Converts all pickups in the room into blue flies"

	[Card_ID .. 42] = "Atılabilir tekte öldürme kartı", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium)"

	[Card_ID .. 43] = "Odadaki tüm dükkan veya şeytan itemlerinden fiyatı kaldırır, ücretsiz yapar", -- Credit Card
	-- English: "Makes all items and pickups in a {{Shop}} Shop or {{DevilRoom}} Devil Room free"

	[Card_ID .. 44] = "\"Yardımcı\" önerilerde bulunur", -- Rules Card
	-- English: "Displays "helpful" tips on use"

	[Card_ID .. 45] = "Bütün odayı bokla doldurur", -- A Card Against Humanity
	-- English: "Fills the whole room with poop"

	[Card_ID .. 46] = "Seni anında öldürür ve yere 10 pickup/collectible çıkartır", -- Suicide King
	-- English: "Instantly kills Isaac and spawns 10 pickups or items on the floor#Spawned items will use the current room's item pool"

	[Card_ID .. 47] = "Odadaki tüm kapıları açar", -- Get Out Of Jail Free Card
	-- English: "Open all doors in the room"

	[Card_ID .. 48] = "Aktif itemini ücretsiz aktive eder", -- ? Card
	-- English: "Uses Isaac's active item for free"

	[Card_ID .. 49] = "Odadaki itemleri ve pickupları değiştirir", -- Dice Shard
	-- English: "Rerolls all item pedestals and pickups in the room"

	[Card_ID .. 50] = "İki tane annenin eli gelir ve düşmanı alır", -- Emergency Contact
	-- English: "Two of Mom's Hands come down and grab an enemy each"

	[Card_ID .. 51] = "Grants the Holy Mantle effect for one room#(Next damage you take is 0)#25% Chance to spawn another holy card", -- Holy Card
	-- English: "{{HolyMantle}} Holy Mantle shield for the room (prevents damage once)#25% chance to spawn another Holy Card"

	[Card_ID .. 52] = "{VAR:ROOMEFFECT}#:Efekt oda boyunca sürer", -- Huge Growth
	-- Full old Desc: "↑ +7 Hasar#↑ +30 Menzil#↑ +Boy artar#Taşları kır!#:Efekt oda boyunca sürer"
	-- English: "{VAR:ROOMEFFECT}#Allows Isaac to destroy rocks by walking into them"

	[Card_ID .. 54] = "{VAR:ROOMEFFECT}#Efekt oda boyunca sürer", -- Era Walk
	-- Full old Desc: "Düşmanları yavaşlatır#↓ -0.5 Hız azalır#-1 Gözyaşı hızı azalır#Efekt oda boyunca sürer"
	-- English: "{VAR:ROOMEFFECT}#{{Slow}} Slow down enemies"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 1] = "Gaz bulutu çıkartır", -- Bad Gas
	-- English: "{{Poison}} Isaac farts and poisons nearby enemies"

	[Pill_ID .. 2] = "Sana 1 kalp hasar verir", -- Bad Trip
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#Becomes a Full Health pill at 1 heart or less"

	[Pill_ID .. 4] = "Switches number of bombs with keys", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys"

	[Pill_ID .. 5] = "Bulunduğun yerde 5 troll bombası çıkartır", -- Explosive Diarrhea
	-- English: "Isaac quickly spawns 5 lit bombs"

	[Pill_ID .. 10] = "{VAR:EFFECTLIST}", -- Puberty
	-- Full old Desc: "3 Tane kullanmak Olgun tranformastonunu sağlar (+1 Red Heart)"
	-- English: "Eating 3 grants the Adult transformation:#{VAR:EFFECTLIST}"

	[Pill_ID .. 20] = "Rastgele bir odaya ışınlar", -- Telepills
	-- English: "Teleports Isaac to a random room#{{ErrorRoom}} Small chance to teleport Isaac to the I AM ERROR room"

	[Pill_ID .. 21] = "Aktif itemini doldurur", -- 48 Hour Energy!
	-- Full old Desc: "Aktif itemini doldurur#1-2 pil düşürür"
	-- English: "{{Battery}} Fully recharges the active item"

	[Pill_ID .. 22] = "Biri dışında bütün kalpleri boşaltır", -- Hematemesis
	-- Full old Desc: "Biri dışında bütün kalpleri boşaltır#1-4 kırmızı kalp düşürür"
	-- English: "{{Warning}} Drains all but one heart container"

	[Pill_ID .. 23] = "2 Saniye hareket edemezsin", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 2 seconds"

	[Pill_ID .. 24] = "Kattaki gizli oda kapılarını açar", -- I can see forever!
	-- English: "{{SecretRoom}} Opens all secret room entrances on the floor"

	[Pill_ID .. 25] = "Odadaki tüm düşmanları aşık eder", -- Pheromones
	-- English: "{{Charm}} Charms all enemies in the room"

	[Pill_ID .. 26] = "Kat haritasını gizler", -- Amnesia
	-- English: "{{CurseLost}} Hides the map for the floor"

	[Pill_ID .. 27] = "Yerde düşmanlara hasar veren büyük sarı bir havuz bırakır", -- Lemon Party
	-- English: "Spawns a large puddle on the ground which damages enemies"

	[Pill_ID .. 28] = "30 Saniye çapraz ateş et", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 30 seconds"

	[Pill_ID .. 29] = "Oda için sadece yarım kalp hasar al", -- Percs!
	-- English: "{{Timer}} Reduces all damage taken to half a heart for the room"

	[Pill_ID .. 30] = "Oda için sadece tam kalp hasar al", -- Addicted!
	-- English: "{{Timer}} Increases all damage taken to a full heart for the room"

	[Pill_ID .. 31] = "2 Saniye yürümek bok çıkmasına sebep olur", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 2 seconds"

	[Pill_ID .. 32] = "Kat için labirent laneti efekti", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. 33] = "Hitboxına etki etmez", -- One makes you larger
	-- Full old Desc: "Büyürsün#Hitboxına etki etmez"
	-- English: "Doesn't affect his hitbox"

	[Pill_ID .. 34] = "Hitboxın da küçülür", -- One makes you small
	-- Full old Desc: "Küçülürsün#Hitboxın da küçülür"
	-- English: "Also decreases his hitbox"

	[Pill_ID .. 35] = "Odadaki her bok için 1 mavi sinek çıkartır", -- Infested!
	-- English: "Spawns 1 blue spider for each poop in the room"

	[Pill_ID .. 36] = "Odadaki her düşman için 1 mavi örümcek çıkartır#Odada düşman yok ise 1-3 mavi örümcek çıkartır", -- Infested?
	-- English: "Spawn 1 blue spider for each enemy in the room#Spawns 1-3 blue spiders if there are no enemies in the room"

	[Pill_ID .. 38] = "30 Saniyeliğine ekranı pikselleştirir", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen 3 times over 30 second"

	[Pill_ID .. 40] = "Kaygan sıvı havuzu bırakır", -- X-Lax
	-- English: "Spawns a pool of slippery creep"

	[Pill_ID .. 41] = "Yavaşlatan sıvı havuzu bırakır", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of slowing creep"

	[Pill_ID .. 42] = "Slow all enemies in room", -- I'm Drowsy...
	-- English: "{{Slow}} Slows all enemies in the room"

	[Pill_ID .. 43] = "Speed up for all enemies in room", -- I'm Excited!!
	-- English: "Speeds up all enemies in the room"

	[Pill_ID .. 44] = "Trinketi yutar ve efektine kalıcı olarak sahip olur", -- Gulp!
	-- English: "{{Trinket}} Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. 45] = "Bir ipecac gözyaşı atar", -- Horf!
	-- English: "{{Collectible149}} Shoots one Ipecac tear"

	[Pill_ID .. 47] = "Son kullanılan hapı çıkartır", -- Vurp!
	-- English: "Spawns the last pill used before Vurp!"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)
