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
	[C_ID .. 2] = "Isaac báº¯n 3 nÆ°á»›c máº¯t cÃ¹ng lÃºc", -- The Inner Eye
	-- Full old Desc: "â†“ {{Tears}} x0.48 Há»‡ sá»‘ nÆ°á»›c máº¯t#â†“ {{Tears}} +3 Äá»™ trá»… nÆ°á»›c máº¯t#Isaac báº¯n 3 nÆ°á»›c máº¯t cÃ¹ng lÃºc"
	-- English: "Isaac shoots 3 tears at once"

	[C_ID .. 5] = "NÆ°á»›c máº¯t cÃ³ hiá»‡u á»©ng boomerang", -- My Reflection
	-- Full old Desc: "â†‘ {{Range}} +1.5 Range#â†‘ +1 Tá»‘c Ä‘á»™ rÆ¡i nÆ°á»›c máº¯t#â†‘ {{Shotspeed}} +0.6 Tá»‘c Ä‘á»™ Ä‘áº¡n#NÆ°á»›c máº¯t cÃ³ hiá»‡u á»©ng boomerang"
	-- English: "Tears get a boomerang effect"

	[C_ID .. 8] = "Báº¯n nÆ°á»›c máº¯t thÆ°á»ng", -- Brother Bobby
	-- Full old Desc: "Báº¯n nÆ°á»›c máº¯t thÆ°á»ng#GÃ¢y 3.5 sÃ¡t thÆ°Æ¡ng má»—i nÆ°á»›c máº¯t"
	-- English: "Shoots normal tears"

	[C_ID .. 9] = "Táº¥t cáº£ káº» Ä‘á»‹ch lÃ  ruá»“i Ä‘á»u thÃ¢n thiá»‡n", -- Skatole
	-- English: "All fly enemies are friendly"

	[C_ID .. 11] = "Isaac há»“i sinh vá»›i Ä‘áº§y mÃ¡u khi cháº¿t", -- 1up!
	-- Full old Desc: "â†‘ +1 Máº¡ng#Isaac há»“i sinh vá»›i Ä‘áº§y mÃ¡u khi cháº¿t"
	-- English: "Isaac respawns with full health on death"

	[C_ID .. 13] = "{{BlackHeart}} Káº» Ä‘á»‹ch bá»‹ trÃºng Ä‘á»™c cÃ³ thá»ƒ tháº£ TrÃ¡i tim Ä‘en", -- The Virus
	-- Full old Desc: "â†“ {{Speed}} -0.1 Tá»‘c Ä‘á»™#{{Poison}} Cháº¡m vÃ o káº» Ä‘á»‹ch sáº½ gÃ¢y Ä‘á»™c cho chÃºng#{{BlackHeart}} Káº» Ä‘á»‹ch bá»‹ trÃºng Ä‘á»™c cÃ³ thá»ƒ tháº£ TrÃ¡i tim Ä‘en"
	-- English: "{{Poison}} Touching enemies poisons them#{{BlackHeart}} Poisoned enemies can drop Black Hearts"

	[C_ID .. 21] = "Hiá»ƒn thá»‹ cÃ¡c biá»ƒu tÆ°á»£ng trÃªn báº£n Ä‘á»“#KhÃ´ng hiá»ƒn thá»‹ bá»‘ cá»¥c cá»§a báº£n Ä‘á»“", -- The Compass
	-- English: "Reveals icons on the map#Does not reveal the layout of the map"

	[C_ID .. 33] = "{{Timer}} Bay Ä‘Æ°á»£c trong phÃ²ng#{{MomsHeart}} TiÃªu diá»‡t ngay láº­p tá»©c ChÃ¢n cá»§a Mom vÃ  TrÃ¡i tim cá»§a Mom#{{Warning}} Giáº¿t Isaac khi sá»­ dá»¥ng vá»›i Satan", -- The Bible
	-- English: "{{Timer}} Flight for the room#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[C_ID .. 36] = "Táº¡o ra má»™t phÃ¢n vÃ  Ä‘áº©y lÃ¹i káº» Ä‘á»‹ch#CÃ³ thá»ƒ Ä‘áº·t cáº¡nh há»‘ vÃ  phÃ¡ há»§y báº±ng bom Ä‘á»ƒ táº¡o cáº§u", -- The Poop
	-- English: "Spawns one poop and knocks back enemies#Can be placed next to a pit and destroyed with a bomb to make a bridge"

	[C_ID .. 38] = "Báº¯n 10 nÆ°á»›c máº¯t theo vÃ²ng trÃ²n quanh Isaac#NÆ°á»›c máº¯t sao chÃ©p hiá»‡u á»©ng nÆ°á»›c máº¯t cá»§a Isaac, cá»™ng thÃªm 25 sÃ¡t thÆ°Æ¡ng", -- Tammy's Head
	-- English: "Shoots 10 tears in a circle around Isaac#The tears copy Isaac's tear effects, plus 25 damage"

	[C_ID .. 39] = "LÃ m hÃ³a Ä‘Ã¡ táº¥t cáº£ káº» Ä‘á»‹ch trong phÃ²ng trong 4 giÃ¢y", -- Mom's Bra
	-- English: "{{Petrify}} Petrifies all enemies in the room for 4 seconds"

	[C_ID .. 40] = "GÃ¢y má»™t vá»¥ ná»• táº¡i vá»‹ trÃ­ cá»§a Isaac", -- Kamikaze!
	-- Full old Desc: "GÃ¢y má»™t vá»¥ ná»• táº¡i vá»‹ trÃ­ cá»§a Isaac#NÃ³ gÃ¢y 40 sÃ¡t thÆ°Æ¡ng"
	-- English: "Causes an explosion at Isaac's location#Deals {VAR:1} damage"

	[C_ID .. 41] = "{{Fear}} LÃ m táº¥t cáº£ káº» Ä‘á»‹ch trong phÃ²ng sá»£ hÃ£i trong 5 giÃ¢y", -- Mom's Pad
	-- English: "{{Fear}} Fears all enemies in the room for 5 seconds"

	[C_ID .. 42] = "Sá»­ dá»¥ng váº­t pháº©m vÃ  báº¯n theo má»™t hÆ°á»›ng sáº½ nÃ©m Ä‘áº§u#{{Poison}} Äáº§u ná»• khi va cháº¡m vÃ  gÃ¢y Ä‘á»™c cho káº» Ä‘á»‹ch", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes on impact and poisons enemies"

	[C_ID .. 44] = "Dá»‹ch chuyá»ƒn Isaac vÃ o má»™t phÃ²ng ngáº«u nhiÃªn, trá»« phÃ²ng I AM ERROR", -- Teleport!
	-- English: "Teleports Isaac into a random room, except I AM ERROR rooms"

	[C_ID .. 46] = "+8% CÆ¡ há»™i nháº­n thÆ°á»Ÿng khi dá»n phÃ²ng#CÆ¡ há»™i tháº¯ng cao hÆ¡n khi Ä‘Ã¡nh báº¡c", -- Lucky Foot
	-- Full old Desc: "â†‘ {{Luck}} +1 May máº¯n#+8% CÆ¡ há»™i nháº­n thÆ°á»Ÿng khi dá»n phÃ²ng#CÆ¡ há»™i tháº¯ng cao hÆ¡n khi Ä‘Ã¡nh báº¡c"
	-- English: "+8% room clear reward chance#Better chance to win while gambling"

	[C_ID .. 47] = "{{Collectible168}} Khi sá»­ dá»¥ng, báº¯t Ä‘áº§u ngáº¯m vá»›i tÃ¢m ngáº¯m#Má»™t tÃªn lá»­a háº¡ cÃ¡nh xuá»‘ng tÃ¢m ngáº¯m sau 1.5 giÃ¢y#NÃ³ gÃ¢y 20x sÃ¡t thÆ°Æ¡ng cá»§a Isaac", -- Doctor's Remote
	-- English: "{{Collectible168}} On use, start aiming a crosshair#A missile lands on the crosshair after 1.5 seconds#It deals 20x Isaac's damage"

	[C_ID .. 49] = "Láº§n báº¯n tiáº¿p theo Ä‘Æ°á»£c thay báº±ng má»™t tia", -- Shoop da Whoop!
	-- Full old Desc: "Láº§n báº¯n tiáº¿p theo Ä‘Æ°á»£c thay báº±ng má»™t tia#NÃ³ gÃ¢y 26x sÃ¡t thÆ°Æ¡ng cá»§a Isaac trong 0.9 giÃ¢y"
	-- English: "The next shot is replaced with a beam#It deals {VAR:1}x Isaac's damage over {VAR:2} seconds"

	[C_ID .. 52] = "{{Damage}} Nhá»¯ng quáº£ bom Ä‘Ã³ gÃ¢y 5x sÃ¡t thÆ°Æ¡ng cá»§a Isaac + 30", -- Dr. Fetus
	-- Full old Desc: "â†“ {{Tears}} x0.4 Há»‡ sá»‘ nÆ°á»›c máº¯t#{{Bomb}} Isaac báº¯n bom thay vÃ¬ nÆ°á»›c máº¯t#{{Damage}} Nhá»¯ng quáº£ bom Ä‘Ã³ gÃ¢y 5x sÃ¡t thÆ°Æ¡ng cá»§a Isaac + 30"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 5x Isaac's damage + 30"

	[C_ID .. 53] = "CÃ¡c váº­t pháº©m nháº·t Ä‘Æ°á»£c bá»‹ hÃºt vá» phÃ­a Isaac", -- Magneto
	-- English: "Pickups are attracted to Isaac"

	[C_ID .. 54] = "Hiá»ƒn thá»‹ bá»‘ cá»¥c táº§ng#KhÃ´ng hiá»ƒn thá»‹ biá»ƒu tÆ°á»£ng phÃ²ng", -- Treasure Map
	-- English: "Reveals the floor layout#Does not reveal room icons"

	[C_ID .. 56] = "Táº¡o má»™t vÅ©ng cháº¥t lá»ng#Cháº¥t lá»ng gÃ¢y 24 sÃ¡t thÆ°Æ¡ng má»—i giÃ¢y", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 57] = "Vá»‡ tinh ruá»“i táº§m trung", -- Distant Admiration
	-- Full old Desc: "Vá»‡ tinh ruá»“i táº§m trung#GÃ¢y 75 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y"
	-- English: "Mid-range fly orbital"

	[C_ID .. 60] = "Cho phÃ©p Isaac vÆ°á»£t qua cÃ¡c khoáº£ng trá»‘ng 1 Ã´", -- The Ladder
	-- English: "Allows Isaac to cross 1-tile gaps"

	[C_ID .. 62] = "{{HealingRed}} Giáº¿t 13 káº» Ä‘á»‹ch há»“i ná»­a trÃ¡i tim", -- Charm of the Vampire
	-- English: "{{HealingRed}} Killing 13 enemies heals half a heart"

	[C_ID .. 63] = "{{Battery}} Váº­t pháº©m kÃ­ch hoáº¡t cÃ³ thá»ƒ Ä‘Æ°á»£c sáº¡c quÃ¡ má»©c Ä‘áº¿n hai láº§n sáº¡c Ä‘áº§y", -- The Battery
	-- English: "{{Battery}} Active items can be overcharged to two full charges"

	[C_ID .. 64] = "{{Shop}} Váº­t pháº©m trong Cá»­a hÃ ng giáº£m giÃ¡ 50%", -- Steam Sale
	-- English: "{{Shop}} Shop items cost 50% less"

	[C_ID .. 65] = "Táº¡o 6 Bom Quá»· gáº§n trung tÃ¢m phÃ²ng", -- Anarchist Cookbook
	-- English: "Spawns 6 Troll Bombs near the center of the room"

	[C_ID .. 66] = "{{Slow}} LÃ m cháº­m káº» Ä‘á»‹ch trong 8 giÃ¢y", -- The Hourglass
	-- English: "{{Slow}} Slows enemies down for 8 seconds"

	[C_ID .. 67] = "Báº¯n nÆ°á»›c máº¯t thÆ°á»ng", -- Sister Maggy
	-- Full old Desc: "Báº¯n nÆ°á»›c máº¯t thÆ°á»ng#GÃ¢y 3.5 sÃ¡t thÆ°Æ¡ng má»—i nÆ°á»›c máº¯t"
	-- English: "Shoots normal tears"

	[C_ID .. 68] = "Isaac báº¯n tia laze thay vÃ¬ nÆ°á»›c máº¯t", -- Technology
	-- English: "Isaac shoots lasers instead of tears"

	[C_ID .. 69] = "{{Chargeable}} NÆ°á»›c máº¯t cÃ³ thá»ƒ sáº¡c#{{Damage}} SÃ¡t thÆ°Æ¡ng tÄƒng theo thá»i gian sáº¡c, tá»‘i Ä‘a 4x#{{Tears}} Thá»i gian sáº¡c tá»‘i Ä‘a lÃ  2.5x Ä‘á»™ trá»… nÆ°á»›c máº¯t", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x#{{Tears}} Max charge time is 2.5x tear delay"

	[C_ID .. 71] = "Tá»‘c Ä‘á»™ rÆ¡i nÆ°á»›c máº¯t tÄƒng vÃ  táº§m báº¯n giáº£m = tÄƒng nháº¹ táº§m báº¯n", -- Mini Mush
	-- Full old Desc: "â†‘ {{Speed}} +0.3 Tá»‘c Ä‘á»™#â†‘ +1.5 Tá»‘c Ä‘á»™ rÆ¡i nÆ°á»›c máº¯t#â†‘ Giáº£m kÃ­ch thÆ°á»›c#â†“ {{Range}} -4.25 Táº§m báº¯n#Tá»‘c Ä‘á»™ rÆ¡i nÆ°á»›c máº¯t tÄƒng vÃ  táº§m báº¯n giáº£m = tÄƒng nháº¹ táº§m báº¯n"
	-- English: "The tear height up and range down = slight range up"

	[C_ID .. 73] = "Cáº¥p 1: Vá»‡ tinh#Cáº¥p 2: Vá»‡ tinh báº¯n#Cáº¥p 3: Meat Boy#Cáº¥p 4: Super Meat Boy", -- Cube of Meat
	-- English: "Lv1: Orbital#Lv2: Shooting orbital#Lv3: Meat Boy#Lv4: Super Meat Boy"

	[C_ID .. 75] = "{{BloodDonationMachine}} MÃ¡y Hiáº¿n MÃ¡u cho nhiá»u {{Coin}} Ä‘á»“ng xu hÆ¡n", -- PHD
	-- Full old Desc: "{{HealingRed}} Há»“i 2 trÃ¡i tim#{{Pill}} Táº¡o 1 viÃªn thuá»‘c#{{Pill}} Biáº¿n thuá»‘c xáº¥u thÃ nh thuá»‘c tá»‘t#{{BloodDonationMachine}} MÃ¡y Hiáº¿n MÃ¡u cho nhiá»u {{Coin}} Ä‘á»“ng xu hÆ¡n"
	-- English: "{{Pill}} Changes bad pills into good pills#{{BloodDonationMachine}} Blood Donation Machines give more {{Coin}} coins"

	[C_ID .. 76] = "{{SecretRoom}} Má»Ÿ táº¥t cáº£ lá»‘i vÃ o phÃ²ng bÃ­ máº­t", -- X-Ray Vision
	-- English: "{{SecretRoom}} Opens all secret room entrances"

	[C_ID .. 78] = "Sá»­ dá»¥ng váº­t pháº©m cÃ³ cÆ¡ há»™i cao thay tháº¿ trÃ¹m táº§ng báº±ng má»™t ká»µ sÄ©", -- Book of Revelations
	-- Full old Desc: "{{SoulHeart}} +1 TrÃ¡i tim Linh há»“n#{{AngelDevilChance}} +17.5% CÆ¡ há»™i PhÃ²ng Quá»·/ThiÃªn tháº§n khi cáº§m#Sá»­ dá»¥ng váº­t pháº©m cÃ³ cÆ¡ há»™i cao thay tháº¿ trÃ¹m táº§ng báº±ng má»™t ká»µ sÄ©"
	-- English: "Using the item has a high chance to replace the floor's boss with a horseman"

	[C_ID .. 81] = "Isaac há»“i sinh vá»›i 1 há»™p tim khi cháº¿t#{{Warning}} Äáº·t há»™p tim cá»§a Isaac thÃ nh 1 khi nháº·t lÃªn", -- Dead Cat
	-- Full old Desc: "â†‘ +9 Máº¡ng#Isaac há»“i sinh vá»›i 1 há»™p tim khi cháº¿t#{{Warning}} Äáº·t há»™p tim cá»§a Isaac thÃ nh 1 khi nháº·t lÃªn"
	-- English: "Isaac respawns with 1 heart container on death#{{Warning}} Sets Isaac's heart containers to 1 when picked up"

	[C_ID .. 83] = "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#Cho phÃ©p Isaac phÃ¡ Ä‘Ã¡ báº±ng cÃ¡ch Ä‘i vÃ o chÃºng", -- The Nail
	-- Full old Desc: "Khi sá»­ dá»¥ng:#{{SoulHeart}} +1 TrÃ¡i tim Linh há»“n#{{Timer}} Nháº­n trong phÃ²ng:#â†‘ {{Damage}} +0.7 SÃ¡t thÆ°Æ¡ng#â†“ {{Speed}} -0.18 Tá»‘c Ä‘á»™#Isaac gÃ¢y 40 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y#Cho phÃ©p Isaac phÃ¡ Ä‘Ã¡ báº±ng cÃ¡ch Ä‘i vÃ o chÃºng"
	-- English: "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#{{IND}}Allows Isaac to destroy rocks by walking into them"

	[C_ID .. 84] = "Má»Ÿ cá»­a sáº­p xuá»‘ng táº§ng tiáº¿p theo#{{LadderRoom}} 10% cÆ¡ há»™i má»Ÿ cá»­a sáº­p khÃ´ng gian bÃ²", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} 10% chance to open a crawlspace trapdoor"

	[C_ID .. 86] = "Monstro rÆ¡i xuá»‘ng má»™t káº» Ä‘á»‹ch vÃ  gÃ¢y 120 sÃ¡t thÆ°Æ¡ng#{{Warning}} Monstro rÆ¡i xuá»‘ng Isaac náº¿u phÃ²ng khÃ´ng cÃ³ káº» Ä‘á»‹ch", -- Monstro's Tooth
	-- English: "Monstro falls on an enemy and deals 120 damage#{{Warning}} Monstro falls on Isaac if the room has no enemies"

	[C_ID .. 88] = "Lao vá» phÃ­a trÆ°á»›c theo hÆ°á»›ng Isaac Ä‘ang báº¯n", -- Little Chubby
	-- Full old Desc: "Lao vá» phÃ­a trÆ°á»›c theo hÆ°á»›ng Isaac Ä‘ang báº¯n#GÃ¢y 52.5 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y"
	-- English: "Charges forward in the direction Isaac is shooting"

	[C_ID .. 91] = "Hiá»ƒn thá»‹ loáº¡i phÃ²ng cá»§a cÃ¡c phÃ²ng liá»n ká»#{{SecretRoom}} CÃ³ thá»ƒ hiá»ƒn thá»‹ PhÃ²ng BÃ­ máº­t vÃ  PhÃ²ng BÃ­ máº­t SiÃªu cáº¥p", -- Spelunker Hat
	-- English: "Reveals the room type of adjacent rooms#{{SecretRoom}} Can reveal Secret and Super Secret Rooms"

	[C_ID .. 93] = "{VAR:TIMEDEFFECT}#{{Fear}} LÃ m táº¥t cáº£ káº» Ä‘á»‹ch trong phÃ²ng sá»£ hÃ£i", -- The Gamekid
	-- Full old Desc: "{{Timer}} Nháº­n trong 6.5 giÃ¢y:#Báº¥t tá»­#Isaac khÃ´ng thá»ƒ báº¯n nhÆ°ng gÃ¢y 40 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y#{{HealingRed}} Giáº¿t 2 káº» Ä‘á»‹ch há»“i ná»­a trÃ¡i tim#{{Fear}} LÃ m táº¥t cáº£ káº» Ä‘á»‹ch trong phÃ²ng sá»£ hÃ£i"
	-- English: "{VAR:TIMEDEFFECT}#{{IND}}{{HealingRed}} Killing 2 enemies heals half a heart#{{IND}}{{Fear}} Fears all enemies in the room"

	[C_ID .. 94] = "{{Coin}} Táº¡o má»™t Ä‘á»“ng xu ngáº«u nhiÃªn má»—i 2 phÃ²ng", -- Sack of Pennies
	-- English: "{{Coin}} Spawns a random coin every 2 rooms"

	[C_ID .. 95] = "Báº¯n tia laze", -- Robo-Baby
	-- Full old Desc: "Báº¯n tia laze#GÃ¢y 3.5 sÃ¡t thÆ°Æ¡ng má»—i phÃ¡t"
	-- English: "Shoots lasers"

	[C_ID .. 96] = "{{HalfHeart}} Táº¡o má»™t ná»­a TrÃ¡i tim Äá» má»—i 3 phÃ²ng", -- Little C.H.A.D.
	-- English: "{{HalfHeart}} Spawns a half Red Heart every 3 rooms"

	[C_ID .. 99] = "{{Slow}} Báº¯n nÆ°á»›c máº¯t lÃ m cháº­m", -- Little Gish
	-- Full old Desc: "{{Slow}} Báº¯n nÆ°á»›c máº¯t lÃ m cháº­m#GÃ¢y 3.5 sÃ¡t thÆ°Æ¡ng má»—i nÆ°á»›c máº¯t"
	-- English: "{{Slow}} Shoots slowing tears"

	[C_ID .. 100] = "Báº¯n nÆ°á»›c máº¯t tá»± dáº«n Ä‘Æ°á»ng", -- Little Steven
	-- Full old Desc: "Báº¯n nÆ°á»›c máº¯t tá»± dáº«n Ä‘Æ°á»ng#GÃ¢y 3.5 sÃ¡t thÆ°Æ¡ng má»—i nÆ°á»›c máº¯t"
	-- English: "Shoots homing tears"

	[C_ID .. 104] = "NÆ°á»›c máº¯t tÃ¡ch Ä‘Ã´i khi va cháº¡m#NÆ°á»›c máº¯t tÃ¡ch ra gÃ¢y ná»­a sÃ¡t thÆ°Æ¡ng", -- The Parasite
	-- English: "Tears split in two on contact#Split tears deal half damage"

	[C_ID .. 105] = "Äá»•i láº¡i cÃ¡c váº­t pháº©m trÃªn bá»‡ trong phÃ²ng", -- The D6
	-- English: "Rerolls pedestal items in the room"

	[C_ID .. 107] = "{VAR:ROOMEFFECT}", -- The Pinking Shears
	-- Full old Desc: "{{Timer}} Nháº­n trong phÃ²ng:#Bay Ä‘Æ°á»£c#CÆ¡ thá»ƒ Isaac tÃ¡ch khá»i Ä‘áº§u vÃ  táº¥n cÃ´ng káº» Ä‘á»‹ch vá»›i 82.5 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y"
	-- English: "{VAR:ROOMEFFECT}#{{IND}}Isaac's body separates from his head and attacks enemies with {VAR:1} contact damage per second"

	[C_ID .. 108] = "Giáº£m háº§u háº¿t sÃ¡t thÆ°Æ¡ng nháº­n Ä‘Æ°á»£c xuá»‘ng ná»­a trÃ¡i tim", -- The Wafer
	-- English: "Reduces most damage taken to half a heart"

	[C_ID .. 109] = "â†‘ {{Damage}} +0.04 SÃ¡t thÆ°Æ¡ng cho má»—i {{Coin}} Ä‘á»“ng xu Isaac cÃ³", -- Money = Power
	-- English: "â†‘ {{Damage}} +0.04 Damage for every {{Coin}} coin Isaac has"

	[C_ID .. 111] = "{{Poison}} GÃ¢y 5 sÃ¡t thÆ°Æ¡ng cho káº» Ä‘á»‹ch gáº§n Ä‘Ã³ vÃ  gÃ¢y Ä‘á»™c cho chÃºng#Äá»™c gÃ¢y sÃ¡t thÆ°Æ¡ng cá»§a Isaac 6 láº§n", -- The Bean
	-- English: "{{Poison}} Deals 5 damage to enemies nearby and poisons them#The poison deals Isaac's damage 6 times"

	[C_ID .. 112] = "TÄƒng tá»‘c táº¥t cáº£ cÃ¡c vá»‡ tinh khÃ¡c", -- Guardian Angel
	-- Full old Desc: "Vá»‡ tinh#TÄƒng tá»‘c táº¥t cáº£ cÃ¡c vá»‡ tinh khÃ¡c#Cháº·n Ä‘áº¡n#GÃ¢y 105 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y"
	-- English: "Speeds up all other orbitals"

	[C_ID .. 113] = "Báº¯n káº» Ä‘á»‹ch Ä‘áº¿n gáº§n Isaac", -- Demon Baby
	-- Full old Desc: "Báº¯n káº» Ä‘á»‹ch Ä‘áº¿n gáº§n Isaac#GÃ¢y 3 sÃ¡t thÆ°Æ¡ng má»—i nÆ°á»›c máº¯t"
	-- English: "Shoots enemies that get close to him"

	[C_ID .. 114] = "NÆ°á»›c máº¯t cá»§a Isaac Ä‘Æ°á»£c thay báº±ng má»™t con dao nÃ©m Ä‘Æ°á»£c#{{Damage}} Con dao gÃ¢y 2x sÃ¡t thÆ°Æ¡ng cá»§a Isaac khi cáº§m vÃ  6x á»Ÿ khoáº£ng cÃ¡ch xa nháº¥t", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and 6x at the furthest possible distance"

	[C_ID .. 116] = "{{Battery}} Tá»± Ä‘á»™ng sáº¡c thanh Ä‘áº§u tiÃªn cá»§a váº­t pháº©m kÃ­ch hoáº¡t#{{Battery}} Sáº¡c Ä‘áº§y váº­t pháº©m kÃ­ch hoáº¡t khi nháº·t lÃªn", -- 9 Volt
	-- English: "{{Battery}} Automatically charges the first bar of active items#{{Battery}} Fully recharges the active item on pickup"

	[C_ID .. 117] = "Nháº­n sÃ¡t thÆ°Æ¡ng táº¡o ra má»™t con chim táº¥n cÃ´ng káº» Ä‘á»‹ch", -- Dead Bird
	-- Full old Desc: "Nháº­n sÃ¡t thÆ°Æ¡ng táº¡o ra má»™t con chim táº¥n cÃ´ng káº» Ä‘á»‹ch#Con chim gÃ¢y 4.3 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y"
	-- English: "Taking damage spawns a bird that attacks enemies"

	[C_ID .. 122] = "Khi cÃ²n ná»­a TrÃ¡i tim Äá» hoáº·c Ã­t hÆ¡n:#{VAR:EFFECTLIST}", -- Whore of Babylon
	-- Full old Desc: "Khi cÃ²n ná»­a TrÃ¡i tim Äá» hoáº·c Ã­t hÆ¡n:#â†‘ {{Speed}} +0.3 Tá»‘c Ä‘á»™#â†‘ {{Damage}} +1.5 SÃ¡t thÆ°Æ¡ng"
	-- English: "When on half a Red Heart or less:#{VAR:EFFECTLIST}"

	[C_ID .. 123] = "{{Timer}} Táº¡o má»™t báº¡n Ä‘á»“ng hÃ nh ngáº«u nhiÃªn trong phÃ²ng", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the room"

	[C_ID .. 124] = "KÃ­ch hoáº¡t hiá»‡u á»©ng váº­t pháº©m kÃ­ch hoáº¡t ngáº«u nhiÃªn#Chá»n hiá»‡u á»©ng tá»« danh sÃ¡ch váº­t pháº©m cá»‘ Ä‘á»‹nh", -- Dead Sea Scrolls
	-- English: "Triggers a random active item effect#Chooses the effect from a fixed list of items"

	[C_ID .. 125] = "Bom tá»± dáº«n Ä‘Æ°á»ng", -- Bobby-Bomb
	-- Full old Desc: "{{Bomb}} +5 Bom#Bom tá»± dáº«n Ä‘Æ°á»ng"
	-- English: "Homing bombs"

	[C_ID .. 126] = "â†‘ {{Damage}} +1.2 SÃ¡t thÆ°Æ¡ng trong phÃ²ng#{{Warning}} GÃ¢y 1 trÃ¡i tim sÃ¡t thÆ°Æ¡ng cho Isaac#{{Heart}} Æ¯u tiÃªn loáº¡i bá» TrÃ¡i tim Äá» trÆ°á»›c", -- Razor Blade
	-- English: "â†‘ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 127] = "Äá»•i láº¡i vÃ  khá»Ÿi Ä‘á»™ng láº¡i toÃ n bá»™ táº§ng", -- Forget Me Now
	-- English: "Rerolls and restarts the entire floor"

	[C_ID .. 128] = "Vá»‡ tinh ruá»“i táº§m xa", -- Forever Alone
	-- Full old Desc: "Vá»‡ tinh ruá»“i táº§m xa#GÃ¢y 30 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y"
	-- English: "Long range fly orbital"

	[C_ID .. 130] = "Khi cáº§m:#{{Speed}} Äáº·t Tá»‘c Ä‘á»™ cá»§a báº¡n Ã­t nháº¥t lÃ  1.5#Bay Ä‘Æ°á»£c#Khi sá»­ dá»¥ng, lao theo hÆ°á»›ng di chuyá»ƒn cá»§a Isaac", -- A Pony
	-- English: "While held:#{{Speed}} Sets your Speed to at least 1.5#Flight#Upon use, dashes in the direction of Isaac's movement"

	[C_ID .. 131] = "{{Bomb}} Táº¡o 1 váº­t pháº©m bom má»—i 3 phÃ²ng", -- Bomb Bag
	-- English: "{{Bomb}} Spawns 1 bomb pickup every 3 rooms"

	[C_ID .. 132] = "{{Damage}} NÆ°á»›c máº¯t gÃ¢y sÃ¡t thÆ°Æ¡ng nhiá»u hÆ¡n khi Ä‘i xa hÆ¡n", -- A Lump of Coal
	-- English: "{{Damage}} Tears deal more damage the further they travel"

	[C_ID .. 133] = "{{SoulHeart}} Chuyá»ƒn 1 há»™p tim thÃ nh 3 TrÃ¡i tim Linh há»“n", -- Guppy's Paw
	-- English: "{{SoulHeart}} Converts 1 heart container into 3 Soul Hearts"

	[C_ID .. 134] = "{{Chest}} 33% cÆ¡ há»™i thay pháº§n thÆ°á»Ÿng dá»n phÃ²ng báº±ng rÆ°Æ¡ng#33% cÆ¡ há»™i khÃ´ng táº¡o pháº§n thÆ°á»Ÿng dá»n phÃ²ng", -- Guppy's Tail
	-- English: "{{Chest}} 33% chance to replace the room clear reward with a chest#33% chance to spawn no room clear reward"

	[C_ID .. 135] = "{{Coin}} LÃ m tá»•n thÆ°Æ¡ng Isaac ná»­a trÃ¡i tim vÃ  táº¡o 1-2 Ä‘á»“ng xu#{{Heart}} Æ¯u tiÃªn loáº¡i bá» TrÃ¡i tim Äá» trÆ°á»›c", -- IV Bag
	-- English: "{{Coin}} Hurts Isaac for half a heart and spawns 1-2 coins#{{Heart}} Removes Red Hearts first"

	[C_ID .. 136] = "Táº¡o má»™t Isaac giáº£ lÃ m má»“i nhá»­ káº» Ä‘á»‹ch vÃ  ná»• sau 5 giÃ¢y", -- Best Friend
	-- English: "Spawns a decoy Isaac that attracts enemies and explodes after 5 seconds"

	[C_ID .. 137] = "Bom cá»§a Isaac khÃ´ng tá»± Ä‘á»™ng ná»• ná»¯a#Khi sá»­ dá»¥ng, kÃ­ch ná»• táº¥t cáº£ bom cá»§a Isaac cÃ¹ng lÃºc", -- Remote Detonator
	-- Full old Desc: "{{Bomb}} +5 Bom#Bom cá»§a Isaac khÃ´ng tá»± Ä‘á»™ng ná»• ná»¯a#Khi sá»­ dá»¥ng, kÃ­ch ná»• táº¥t cáº£ bom cá»§a Isaac cÃ¹ng lÃºc"
	-- English: "Isaac's bombs no longer explode automatically#Upon use, detonates all of Isaac's bombs at once"

	[C_ID .. 139] = "{{Trinket}} Isaac cÃ³ thá»ƒ giá»¯ 2 mÃ³n trang sá»©c", -- Mom's Purse
	-- English: "{{Trinket}} Isaac can hold 2 trinkets"

	[C_ID .. 140] = "{{Poison}} Bom cá»§a Isaac gÃ¢y Ä‘á»™c cho káº» Ä‘á»‹ch bá»‹ dÃ­nh vá»¥ ná»•", -- Bob's Curse
	-- Full old Desc: "{{Bomb}} +5 Bom#{{Poison}} Bom cá»§a Isaac gÃ¢y Ä‘á»™c cho káº» Ä‘á»‹ch bá»‹ dÃ­nh vá»¥ ná»•"
	-- English: "{{Poison}} Isaac's bombs poison enemies caught in the blast"

	[C_ID .. 142] = "{{SoulHeart}} Isaac nháº­n 1 TrÃ¡i tim Linh há»“n khi bá»‹ tá»•n thÆ°Æ¡ng xuá»‘ng cÃ²n ná»­a trÃ¡i tim#Chá»‰ xáº£y ra má»™t láº§n má»—i phÃ²ng#Rá»i Ä‘i vÃ  vÃ o láº¡i phÃ²ng cho phÃ©p hiá»‡u á»©ng kÃ­ch hoáº¡t láº¡i", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again"

	[C_ID .. 144] = "{{Coin}} Nháº·t Ä‘á»“ng xu gáº§n Ä‘Ã³#Táº¡o váº­t pháº©m nháº·t ngáº«u nhiÃªn má»—i 3-4 Ä‘á»“ng xu", -- Bum Friend
	-- English: "{{Coin}} Picks up nearby coins#Spawns random pickups every 3-4 coins"

	[C_ID .. 147] = "{{Timer}} Trong phÃ²ng, Isaac cÃ³ thá»ƒ phÃ¡ Ä‘Ã¡ vÃ  tÆ°á»ng PhÃ²ng BÃ­ máº­t báº±ng cÃ¡ch Ä‘i vÃ o chÃºng", -- Notched Axe
	-- English: "{{Timer}} For the room, Isaac can break rocks and Secret Room walls by walking into them"

	[C_ID .. 149] = "NÆ°á»›c máº¯t cá»§a Isaac Ä‘Æ°á»£c báº¯n theo hÃ¬nh vÃ²ng cung#{{Poison}} NÆ°á»›c máº¯t ná»• vÃ  gÃ¢y Ä‘á»™c cho káº» Ä‘á»‹ch nÆ¡i chÃºng Ä‘Ã¡p xuá»‘ng", -- Ipecac
	-- Full old Desc: "â†‘ {{Damage}} +40 SÃ¡t thÆ°Æ¡ng#â†“ {{Tears}} x0.5 Há»‡ sá»‘ nÆ°á»›c máº¯t#â†“ {{Tears}} +10 Äá»™ trá»… nÆ°á»›c máº¯t#NÆ°á»›c máº¯t cá»§a Isaac Ä‘Æ°á»£c báº¯n theo hÃ¬nh vÃ²ng cung#{{Poison}} NÆ°á»›c máº¯t ná»• vÃ  gÃ¢y Ä‘á»™c cho káº» Ä‘á»‹ch nÆ¡i chÃºng Ä‘Ã¡p xuá»‘ng"
	-- English: "Isaac's tears are shot in an arc#{{Poison}} The tears explode and poison enemies where they land"

	[C_ID .. 151] = "NÆ°á»›c máº¯t cÃ³ 1/6 cÆ¡ há»™i táº¡o má»™t con ruá»“i xanh khi trÃºng káº» Ä‘á»‹ch", -- The Mulligan
	-- English: "Tears have a 1/6 chance to spawn a blue fly when hitting an enemy"

	[C_ID .. 152] = "Thay nÆ°á»›c máº¯t máº¯t pháº£i cá»§a Isaac báº±ng má»™t tia laze liÃªn tá»¥c#{{Damage}} NÃ³ gÃ¢y 3x sÃ¡t thÆ°Æ¡ng cá»§a Isaac má»—i giÃ¢y", -- Technology 2
	-- Full old Desc: "â†“ {{Tears}} x0.5 Há»‡ sá»‘ nÆ°á»›c máº¯t#â†“ {{Damage}} x0.65 Há»‡ sá»‘ sÃ¡t thÆ°Æ¡ng#Thay nÆ°á»›c máº¯t máº¯t pháº£i cá»§a Isaac báº±ng má»™t tia laze liÃªn tá»¥c#{{Damage}} NÃ³ gÃ¢y 3x sÃ¡t thÆ°Æ¡ng cá»§a Isaac má»—i giÃ¢y"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} It deals 3x Isaac's damage per second"

	[C_ID .. 153] = "Isaac báº¯n 4 nÆ°á»›c máº¯t cÃ¹ng lÃºc", -- Mutant Spider
	-- Full old Desc: "â†“ {{Tears}} x0.48 Há»‡ sá»‘ nÆ°á»›c máº¯t#â†“ {{Tears}} +3 Äá»™ trá»… nÆ°á»›c máº¯t#Isaac báº¯n 4 nÆ°á»›c máº¯t cÃ¹ng lÃºc"
	-- English: "Isaac shoots 4 tears at once"

	[C_ID .. 155] = "Bay lÆ¡ lá»­ng trong phÃ²ng", -- The Peeper
	-- Full old Desc: "Bay lÆ¡ lá»­ng trong phÃ²ng#GÃ¢y 17 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y"
	-- English: "Floats around the room"

	[C_ID .. 156] = "{{Battery}} Nháº­n sÃ¡t thÆ°Æ¡ng thÃªm 1 láº§n sáº¡c cho váº­t pháº©m kÃ­ch hoáº¡t", -- Habit
	-- English: "{{Battery}} Taking damage adds 1 charge to the active item"

	[C_ID .. 157] = "â†‘ {{Damage}} Nháº­n sÃ¡t thÆ°Æ¡ng tÄƒng sÃ¡t thÆ°Æ¡ng#Ãp dá»¥ng tá»‘i Ä‘a 6 láº§n má»—i táº§ng#KÃ©o dÃ i cáº£ táº§ng", -- Bloody Lust
	-- English: "â†‘ {{Damage}} Taking damage grants a damage up#Applies up to 6 times per floor#Lasts for the whole floor"

	[C_ID .. 158] = "Táº¡o má»™t {{SoulHeart}} TrÃ¡i tim Linh há»“n, {{Rune}} rune hoáº·c {{Card}} lÃ¡ bÃ i#{VAR:EFFECTLIST}", -- Crystal Ball
	-- Full old Desc: "Táº¡o má»™t {{SoulHeart}} TrÃ¡i tim Linh há»“n, {{Rune}} rune hoáº·c {{Card}} lÃ¡ bÃ i#{{Timer}} Hiá»‡u á»©ng báº£n Ä‘á»“ Ä‘áº§y Ä‘á»§ cho táº§ng (trá»« {{SuperSecretRoom}} PhÃ²ng BÃ­ máº­t SiÃªu cáº¥p)"
	-- English: "Spawns a {{SoulHeart}} Soul Heart, {{Rune}} rune or {{Card}} card#{VAR:EFFECTLIST}"

	[C_ID .. 160] = "Táº¡o 5 tia sÃ¡ng gáº§n káº» Ä‘á»‹ch#Má»—i tia gÃ¢y 8x sÃ¡t thÆ°Æ¡ng cá»§a Isaac + 160 trong 0.8 giÃ¢y", -- Crack the Sky
	-- English: "Spawns 5 beams of light near enemies#Each beam deals 8x Isaac's damage + 160 over 0.8 seconds"

	[C_ID .. 161] = "{{Player4}} Há»“i sinh thÃ nh ??? (Blue Baby) khi cháº¿t", -- Ankh
	-- English: "{{Player4}} Respawn as ??? (Blue Baby) on death"

	[C_ID .. 163] = "Báº¯n nÆ°á»›c máº¯t xuyÃªn tÆ°á»ng", -- Ghost Baby
	-- Full old Desc: "Báº¯n nÆ°á»›c máº¯t xuyÃªn tÆ°á»ng#GÃ¢y 3.5 sÃ¡t thÆ°Æ¡ng má»—i nÆ°á»›c máº¯t"
	-- English: "Shoots spectral tears"

	[C_ID .. 164] = "NÃ©m má»™t ngá»n lá»­a xanh#NÃ³ gÃ¢y sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc, cháº·n nÆ°á»›c máº¯t káº» Ä‘á»‹ch, vÃ  biáº¿n máº¥t sau 2 giÃ¢y", -- The Candle
	-- English: "Throws a blue flame#It deals contact damage, blocks enemy tears, and despawns after 2 seconds"

	[C_ID .. 166] = "Äá»•i láº¡i táº¥t cáº£ váº­t pháº©m nháº·t trong phÃ²ng", -- D20
	-- English: "Rerolls all pickups in the room"

	[C_ID .. 167] = "Báº¯n hai nÆ°á»›c máº¯t theo hÃ¬nh chá»¯ V", -- Harlequin Baby
	-- Full old Desc: "Báº¯n hai nÆ°á»›c máº¯t theo hÃ¬nh chá»¯ V#GÃ¢y 4 sÃ¡t thÆ°Æ¡ng má»—i nÆ°á»›c máº¯t"
	-- English: "Shoots two tears in a V-shaped pattern"

	[C_ID .. 168] = "Thay vÃ¬ báº¯n nÆ°á»›c máº¯t, ngáº¯m vá»›i tÃ¢m ngáº¯m#Má»™t tÃªn lá»­a háº¡ cÃ¡nh xuá»‘ng tÃ¢m ngáº¯m sau 1.5 giÃ¢y#{{Damage}} TÃªn lá»­a gÃ¢y 20x sÃ¡t thÆ°Æ¡ng cá»§a Isaac", -- Epic Fetus
	-- English: "Instead of shooting tears, aim a crosshair#A rocket lands on the crosshair after 1.5 seconds#{{Damage}} Rockets deal 20x Isaac's damage"

	[C_ID .. 169] = "NÆ°á»›c máº¯t xuyÃªn qua káº» Ä‘á»‹ch bá»‹ giáº¿t náº¿u cÃ²n dÆ° sÃ¡t thÆ°Æ¡ng", -- Polyphemus
	-- Full old Desc: "â†‘ {{Damage}} +4 SÃ¡t thÆ°Æ¡ng#â†‘ {{Damage}} x2 Há»‡ sá»‘ sÃ¡t thÆ°Æ¡ng#â†“ {{Tears}} x0.48 Há»‡ sá»‘ nÆ°á»›c máº¯t#â†“ {{Tears}} +3 Äá»™ trá»… nÆ°á»›c máº¯t#NÆ°á»›c máº¯t xuyÃªn qua káº» Ä‘á»‹ch bá»‹ giáº¿t náº¿u cÃ²n dÆ° sÃ¡t thÆ°Æ¡ng"
	-- English: "Tears pierce killed enemies if there is leftover damage"

	[C_ID .. 170] = "Dáº­m chÃ¢n lÃªn má»™t káº» Ä‘á»‹ch gáº§n Ä‘Ã³ má»—i 4 giÃ¢y", -- Daddy Longlegs
	-- Full old Desc: "Dáº­m chÃ¢n lÃªn má»™t káº» Ä‘á»‹ch gáº§n Ä‘Ã³ má»—i 4 giÃ¢y#GÃ¢y 40 sÃ¡t thÆ°Æ¡ng má»—i giÃ¢y"
	-- English: "Stomps on a nearby enemy every 4 seconds"

	[C_ID .. 171] = "{{Slow}} LÃ m cháº­m káº» Ä‘á»‹ch trong 4 giÃ¢y", -- Spider Butt
	-- Full old Desc: "{{Slow}} LÃ m cháº­m káº» Ä‘á»‹ch trong 4 giÃ¢y#GÃ¢y 10 sÃ¡t thÆ°Æ¡ng cho táº¥t cáº£ káº» Ä‘á»‹ch"
	-- English: "{{Slow}} Slows down enemies for 4 seconds"

	[C_ID .. 174] = "Báº¯n nÆ°á»›c máº¯t ngáº«u nhiÃªn", -- Rainbow Baby
	-- Full old Desc: "Báº¯n nÆ°á»›c máº¯t ngáº«u nhiÃªn#GÃ¢y 3-5 sÃ¡t thÆ°Æ¡ng má»—i nÆ°á»›c máº¯t"
	-- English: "Shoots random tears"

	[C_ID .. 175] = "Má»Ÿ táº¥t cáº£ cá»­a trong phÃ²ng, bao gá»“m {{SecretRoom}}{{SuperSecretRoom}}PhÃ²ng BÃ­ máº­t, {{ChallengeRoom}}{{BossRushRoom}}PhÃ²ng Thá»­ thÃ¡ch, vÃ  cá»­a Mega Satan", -- Dad's Key
	-- English: "Opens all doors in the room, including {{SecretRoom}}{{SuperSecretRoom}}Secret Rooms, {{ChallengeRoom}}{{BossRushRoom}}Challenge Rooms, and the Mega Satan door"

	[C_ID .. 177] = "{{Coin}} DÃ¹ng 1 Ä‘á»“ng xu Ä‘á»ƒ cÃ³ cÆ¡ há»™i táº¡o váº­t pháº©m nháº·t", -- Portable Slot
	-- English: "{{Coin}} Spend 1 coin for a chance to spawn a pickup"

	[C_ID .. 178] = "Nháº­n sÃ¡t thÆ°Æ¡ng táº¡o má»™t vÅ©ng cháº¥t lá»ng#Cháº¥t lá»ng gÃ¢y 24 sÃ¡t thÆ°Æ¡ng má»—i giÃ¢y", -- Holy Water
	-- English: "Taking damage spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 180] = "Isaac Ä‘Ã¡nh ráº¯m khi nháº­n sÃ¡t thÆ°Æ¡ng#{{Poison}} CÃ¡i ráº¯m gÃ¢y Ä‘á»™c cho káº» Ä‘á»‹ch", -- The Black Bean
	-- English: "Isaac farts when damaged#{{Poison}} The fart poisons enemies"

	[C_ID .. 181] = "{{Speed}} Äáº·t Tá»‘c Ä‘á»™ cá»§a báº¡n Ã­t nháº¥t lÃ  1.5#Bay Ä‘Æ°á»£c khi cáº§m#Sá»­ dá»¥ng váº­t pháº©m lao theo hÆ°á»›ng di chuyá»ƒn cá»§a Isaac, Ä‘á»ƒ láº¡i cÃ¡c tia sÃ¡ng", -- White Pony
	-- English: "{{Speed}} Sets your Speed to at least 1.5#Flight while held#Using the item dashes in the direction of Isaac's movement, leaving behind beams of light"

	[C_ID .. 186] = "{{Heart}} Æ¯u tiÃªn loáº¡i bá» TrÃ¡i tim Äá» trÆ°á»›c", -- Blood Rights
	-- Full old Desc: "GÃ¢y 40 sÃ¡t thÆ°Æ¡ng cho má»i káº» Ä‘á»‹ch#{{Warning}} GÃ¢y 1 trÃ¡i tim sÃ¡t thÆ°Æ¡ng cho Isaac#{{Heart}} Æ¯u tiÃªn loáº¡i bá» TrÃ¡i tim Äá» trÆ°á»›c"
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 187] = "Di chuyá»ƒn lÃ m quáº£ bÃ³ng tÃ³c xoay quanh#Quáº£ bÃ³ng lá»›n lÃªn khi giáº¿t káº» Ä‘á»‹ch#NÃ³ gÃ¢y sÃ¡t thÆ°Æ¡ng nhiá»u hÆ¡n khi lá»›n hÆ¡n", -- Guppy's Hairball
	-- English: "Moving swings the hairball around#The ball grows when it kills an enemy#It deals more damage the bigger it is"

	[C_ID .. 188] = "Báº¯t chÆ°á»›c chuyá»ƒn Ä‘á»™ng cá»§a Isaac#Báº¯n vá» phÃ­a Isaac", -- Abel
	-- Full old Desc: "Báº¯t chÆ°á»›c chuyá»ƒn Ä‘á»™ng cá»§a Isaac#Báº¯n vá» phÃ­a Isaac#GÃ¢y 3.5 sÃ¡t thÆ°Æ¡ng má»—i nÆ°á»›c máº¯t"
	-- English: "Mirrors Isaac's movement#Shoots towards Isaac"

	[C_ID .. 191] = "NÆ°á»›c máº¯t cá»§a Isaac nháº­n hiá»‡u á»©ng ngáº«u nhiÃªn má»—i 2-3 giÃ¢y", -- 3 Dollar Bill
	-- English: "Isaac's tears get random effects every 2-3 seconds"

	[C_ID .. 198] = "Táº¡o 1 váº­t pháº©m nháº·t cá»§a má»—i loáº¡i", -- Box
	-- English: "Spawns 1 pickup of each type"

	[C_ID .. 199] = "RÆ°Æ¡ng chá»©a nhiá»u váº­t pháº©m nháº·t hÆ¡n", -- Mom's Key
	-- Full old Desc: "{{Key}} +2 ChÃ¬a khÃ³a#RÆ°Æ¡ng chá»©a nhiá»u váº­t pháº©m nháº·t hÆ¡n"
	-- English: "Chests contain more pickups"

	[C_ID .. 202] = "Cháº¡m vÃ o káº» Ä‘á»‹ch lÃ m chÃºng hÃ³a Ä‘Ã¡ vÃ  biáº¿n thÃ nh vÃ ng#Isaac gÃ¢y sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc dá»±a trÃªn sá»‘ Ä‘á»“ng xu#{{Coin}} Giáº¿t káº» Ä‘á»‹ch vÃ ng táº¡o Ä‘á»“ng xu#PhÃ¢n do Isaac táº¡o cÃ³ cÆ¡ há»™i cao lÃ  phÃ¢n vÃ ng", -- Midas' Touch
	-- English: "{{Petrify}} Touching enemies petrifies them and turns them gold#Isaac deals contact damage based on his coin count#{{Coin}} Killing a golden enemy spawns coins#Poop spawned by Isaac has a high chance to be golden poop"

	[C_ID .. 203] = "Váº­t pháº©m nháº·t Ä‘Æ°á»£c sinh ra Ä‘Æ°á»£c nhÃ¢n Ä‘Ã´i náº¿u cÃ³ thá»ƒ", -- Humbleing Bundle
	-- English: "Pickups spawned are doubled if possible"

	[C_ID .. 204] = "Nháº­n sÃ¡t thÆ°Æ¡ng cÃ³ 50% cÆ¡ há»™i táº¡o váº­t pháº©m nháº·t ngáº«u nhiÃªn", -- Fanny Pack
	-- English: "Taking damage has a 50% chance to spawn a random pickup"

	[C_ID .. 205] = "{{Battery}} Sá»­ dá»¥ng váº­t pháº©m kÃ­ch hoáº¡t chÆ°a sáº¡c sáº½ sáº¡c Ä‘áº§y nÃ³ vá»›i giÃ¡ 2 trÃ¡i tim#Chá»‰ hoáº¡t Ä‘á»™ng khi váº­t pháº©m khÃ´ng cÃ³ láº§n sáº¡c nÃ o", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of 2 hearts#Only works when the item has no charges"

	[C_ID .. 207] = "Cáº¥p 1: Vá»‡ tinh#{{Charm}} Cáº¥p 2: Vá»‡ tinh báº¯n nÆ°á»›c máº¯t mÃª hoáº·c#{{Charm}} Cáº¥p 3: Bandage Girl#{{Charm}} Cáº¥p 4: Super Bandage Girl", -- Ball of Bandages
	-- English: "Lv1: Orbital#{{Charm}} Lv2: Orbital that shoots charmed tears#{{Charm}} Lv3: Bandage Girl#{{Charm}} Lv4: Super Bandage Girl"

	[C_ID .. 208] = "Tá»· lá»‡ káº» Ä‘á»‹ch dáº¡ng QuÃ¡n quÃ¢n tÄƒng tá»« 5% lÃªn 20%#KhÃ´ng tÄƒng cÆ¡ há»™i trÃ¹m QuÃ¡n quÃ¢n", -- Champion Belt
	-- Full old Desc: "â†‘ {{Damage}} +1 SÃ¡t thÆ°Æ¡ng#Tá»· lá»‡ káº» Ä‘á»‹ch dáº¡ng QuÃ¡n quÃ¢n tÄƒng tá»« 5% lÃªn 20%#KhÃ´ng tÄƒng cÆ¡ há»™i trÃ¹m QuÃ¡n quÃ¢n"
	-- English: "Champion enemy chance goes from 5% to 20%#Doesn't increase chance of champion bosses"

	[C_ID .. 209] = "{{Confusion}} Vá»¥ ná»• gÃ¢y choÃ¡ng vÃ  sÃ¡t thÆ°Æ¡ng cho má»i káº» Ä‘á»‹ch trong phÃ²ng", -- Butt Bombs
	-- Full old Desc: "{{Bomb}} +5 Bom#{{Confusion}} Vá»¥ ná»• gÃ¢y choÃ¡ng vÃ  sÃ¡t thÆ°Æ¡ng cho má»i káº» Ä‘á»‹ch trong phÃ²ng"
	-- English: "{{Confusion}} Explosions concuss and damage every enemy in the room"

	[C_ID .. 210] = "Sau 1 giÃ¢y khÃ´ng hoáº¡t Ä‘á»™ng, Isaac trá»Ÿ nÃªn báº¥t tá»­", -- Gnawed Leaf
	-- English: "After 1 second of inactivity, Isaac becomes invincible"

	[C_ID .. 212] = "50% cÆ¡ há»™i há»“i sinh vá»›i ná»­a trÃ¡i tim khi cháº¿t", -- Guppy's Collar
	-- English: "50% chance to revive with half a heart on death"

	[C_ID .. 213] = "NÆ°á»›c máº¯t cá»§a Isaac phÃ¡ há»§y Ä‘áº¡n káº» Ä‘á»‹ch", -- Lost Contact
	-- Full old Desc: "â†“ {{Shotspeed}} -0.15 Tá»‘c Ä‘á»™ Ä‘áº¡n#NÆ°á»›c máº¯t cá»§a Isaac phÃ¡ há»§y Ä‘áº¡n káº» Ä‘á»‹ch"
	-- English: "Isaac's tears destroy enemy shots"

	[C_ID .. 214] = "{{Timer}} Khi nháº­n sÃ¡t thÆ°Æ¡ng, Isaac Ä‘á»ƒ láº¡i vá»‡t cháº¥t lá»ng mÃ¡u trong phÃ²ng#Cháº¥t lá»ng gÃ¢y 6 sÃ¡t thÆ°Æ¡ng má»—i giÃ¢y", -- Anemic
	-- Full old Desc: "â†‘ {{Range}} +5 Táº§m báº¯n#{{Timer}} Khi nháº­n sÃ¡t thÆ°Æ¡ng, Isaac Ä‘á»ƒ láº¡i vá»‡t cháº¥t lá»ng mÃ¡u trong phÃ²ng#Cháº¥t lá»ng gÃ¢y 6 sÃ¡t thÆ°Æ¡ng má»—i giÃ¢y"
	-- English: "{{Timer}} When taking damage Isaac leaves a trail of blood creep for the room#The creep deals 6 damage per second"

	[C_ID .. 218] = "{{HealingRed}} 50% cÆ¡ há»™i há»“i ná»­a trÃ¡i tim má»—i phÃºt", -- Placenta
	-- Full old Desc: "â†‘ {{Heart}} +1 MÃ¡u#{{HealingRed}} 50% cÆ¡ há»™i há»“i ná»­a trÃ¡i tim má»—i phÃºt"
	-- English: "{{HealingRed}} 50% chance to heal half a heart every minute"

	[C_ID .. 220] = "Bom cá»§a Isaac báº¯n 10 nÆ°á»›c máº¯t theo vÃ²ng trÃ²n khi ná»•", -- Sad Bombs
	-- Full old Desc: "{{Bomb}} +5 Bom#Bom cá»§a Isaac báº¯n 10 nÆ°á»›c máº¯t theo vÃ²ng trÃ²n khi ná»•"
	-- English: "Isaac's bombs shoot 10 tears in a circle when they explode"

	[C_ID .. 221] = "NÆ°á»›c máº¯t cá»§a Isaac náº£y khá»i káº» Ä‘á»‹ch vÃ  chÆ°á»›ng ngáº¡i váº­t", -- Rubber Cement
	-- English: "Isaac's tears bounce off enemies and obstacles"

	[C_ID .. 222] = "Giá»¯ nÃºt báº¯n lÃ m nÆ°á»›c máº¯t lÆ¡ lá»­ng giá»¯a khÃ´ng trung#Tháº£ nÃºt báº¯n sáº½ báº¯n chÃºng theo hÆ°á»›ng Ä‘Ã£ báº¯n", -- Anti-Gravity
	-- Full old Desc: "â†‘ {{Tears}} -2 Äá»™ trá»… nÆ°á»›c máº¯t#Giá»¯ nÃºt báº¯n lÃ m nÆ°á»›c máº¯t lÆ¡ lá»­ng giá»¯a khÃ´ng trung#Tháº£ nÃºt báº¯n sáº½ báº¯n chÃºng theo hÆ°á»›ng Ä‘Ã£ báº¯n"
	-- English: "Holding the fire buttons causes tears to hover in midair#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "Miá»…n nhiá»…m vá»›i vá»¥ ná»•, sÃ³ng Ä‘Ã¡, vÃ  Ä‘Ã²n dáº­m#{{HealingRed}} Bá»‹ trÃºng vá»¥ ná»• há»“i 1 trÃ¡i tim", -- Pyromaniac
	-- Full old Desc: "{{Bomb}} +5 Bom#Miá»…n nhiá»…m vá»›i vá»¥ ná»•, sÃ³ng Ä‘Ã¡, vÃ  Ä‘Ã²n dáº­m#{{HealingRed}} Bá»‹ trÃºng vá»¥ ná»• há»“i 1 trÃ¡i tim"
	-- English: "Immunity to explosions, rock waves, and stomp attacks#{{HealingRed}} Getting hit by explosions heals 1 heart"

	[C_ID .. 224] = "NÆ°á»›c máº¯t tÃ¡ch thÃ nh 4 khi trÃºng#NÆ°á»›c máº¯t tÃ¡ch ra gÃ¢y ná»­a sÃ¡t thÆ°Æ¡ng", -- Cricket's Body
	-- Full old Desc: "â†‘ {{Tears}} -1 Äá»™ trá»… nÆ°á»›c máº¯t#â†‘ {{Tearsize}} x1.2 KÃ­ch thÆ°á»›c nÆ°á»›c máº¯t#â†“ {{Range}} -10 Táº§m báº¯n#NÆ°á»›c máº¯t tÃ¡ch thÃ nh 4 khi trÃºng#NÆ°á»›c máº¯t tÃ¡ch ra gÃ¢y ná»­a sÃ¡t thÆ°Æ¡ng"
	-- English: "Tears split up in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "{{SoulHeart}} Nháº­n sÃ¡t thÆ°Æ¡ng cÃ³ cÆ¡ há»™i táº¡o TrÃ¡i tim Linh há»“n#{{HalfHeart}} Káº» Ä‘á»‹ch cÃ³ cÆ¡ há»™i tháº£ ná»­a TrÃ¡i tim Äá» khi cháº¿t", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a chance to spawn a Soul Heart#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 227] = "{{Coin}} Nháº­n sÃ¡t thÆ°Æ¡ng táº¡o 1-2 Ä‘á»“ng xu", -- Piggy Bank
	-- Full old Desc: "{{Coin}} +3 Äá»“ng xu#{{Coin}} Nháº­n sÃ¡t thÆ°Æ¡ng táº¡o 1-2 Ä‘á»“ng xu"
	-- English: "{{Coin}} Taking damage spawns 1-2 coins"

	[C_ID .. 228] = "{{Fear}} 15% cÆ¡ há»™i báº¯n nÆ°á»›c máº¯t gÃ¢y sá»£", -- Mom's Perfume
	-- Full old Desc: "â†‘ {{Tears}} -1 Äá»™ trá»… nÆ°á»›c máº¯t#{{Fear}} 15% cÆ¡ há»™i báº¯n nÆ°á»›c máº¯t gÃ¢y sá»£"
	-- English: "{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 229] = "{{Chargeable}} NÆ°á»›c máº¯t Ä‘Æ°á»£c sáº¡c vÃ  tháº£ ra theo kiá»ƒu táº¥n cÃ´ng sÃºng ngáº¯n", -- Monstro's Lung
	-- Full old Desc: "â†“ {{Tears}} x0.23 Há»‡ sá»‘ nÆ°á»›c máº¯t#{{Chargeable}} NÆ°á»›c máº¯t Ä‘Æ°á»£c sáº¡c vÃ  tháº£ ra theo kiá»ƒu táº¥n cÃ´ng sÃºng ngáº¯n"
	-- English: "{{Chargeable}} Tears are charged and released in a shotgun style attack"

	[C_ID .. 230] = "{{Fear}} 15% cÆ¡ há»™i báº¯n nÆ°á»›c máº¯t gÃ¢y sá»£", -- Abaddon
	-- Full old Desc: "â†‘ {{Speed}} +0.2 Tá»‘c Ä‘á»™#â†‘ {{Damage}} +1.5 SÃ¡t thÆ°Æ¡ng#â†“ {{EmptyHeart}} Loáº¡i bá» táº¥t cáº£ há»™p tim#{{BlackHeart}} +6 TrÃ¡i tim Äen#{{Fear}} 15% cÆ¡ há»™i báº¯n nÆ°á»›c máº¯t gÃ¢y sá»£"
	-- English: "â†“ {{EmptyHeart}} Removes all heart containers#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 231] = "{{Slow}} Isaac Ä‘á»ƒ láº¡i vá»‡t cháº¥t lá»ng lÃ m cháº­m", -- Ball of Tar
	-- Full old Desc: "{{Slow}} 10% cÆ¡ há»™i báº¯n nÆ°á»›c máº¯t lÃ m cháº­m#{{Luck}} 100% cÆ¡ há»™i á»Ÿ 18 may máº¯n#{{Slow}} Isaac Ä‘á»ƒ láº¡i vá»‡t cháº¥t lá»ng lÃ m cháº­m"
	-- English: "{{Slow}} {VAR:LUCKCHANCE}% chance to shoot slowing tears#{{Slow}} Isaac leaves a trail of slowing creep"

	[C_ID .. 232] = "{{Slow}} Nháº­n sÃ¡t thÆ°Æ¡ng lÃ m cháº­m táº¥t cáº£ káº» Ä‘á»‹ch trong phÃ²ng vÄ©nh viá»…n", -- Stop Watch
	-- Full old Desc: "â†‘ {{Speed}} +0.3 Tá»‘c Ä‘á»™#{{Slow}} Nháº­n sÃ¡t thÆ°Æ¡ng lÃ m cháº­m táº¥t cáº£ káº» Ä‘á»‹ch trong phÃ²ng vÄ©nh viá»…n"
	-- English: "{{Slow}} Taking damage slows all enemies in the room permanently"

	[C_ID .. 233] = "NÆ°á»›c máº¯t cá»§a Isaac xoay quanh Isaac", -- Tiny Planet
	-- Full old Desc: "â†‘ +7 Tá»‘c Ä‘á»™ rÆ¡i nÆ°á»›c máº¯t#NÆ°á»›c máº¯t xuyÃªn tÆ°á»ng#NÆ°á»›c máº¯t cá»§a Isaac xoay quanh Isaac"
	-- English: "Isaac's tears orbit around him"

	[C_ID .. 234] = "Giáº¿t káº» Ä‘á»‹ch táº¡o má»™t con nhá»‡n xanh", -- Infestation 2
	-- English: "Killing an enemy spawns a blue spider"

	[C_ID .. 236] = "Cháº¡m vÃ o káº» Ä‘á»‹ch biáº¿n nÃ³ thÃ nh phÃ¢n", -- E. Coli
	-- English: "Touching an enemy turns it into poop"

	[C_ID .. 238] = "{{EternalHeart}} +2% cÆ¡ há»™i cho TrÃ¡i tim VÄ©nh cá»­u", -- Key Piece 1
	-- Full old Desc: "{{Warning}} Nháº­n cáº£ hai pháº§n chÃ¬a khÃ³a má»Ÿ má»™t cÃ¡nh cá»­a vÃ ng lá»›n#{{AngelChance}} +25% CÆ¡ há»™i PhÃ²ng ThiÃªn tháº§n#{{EternalHeart}} +2% cÆ¡ há»™i cho TrÃ¡i tim VÄ©nh cá»­u"
	-- English: "{{Warning}} Getting both parts of the key opens a big golden door#{{EternalHeart}} +2% chance for Eternal Hearts"

	[C_ID .. 239] = "{{EternalHeart}} +2% cÆ¡ há»™i cho TrÃ¡i tim VÄ©nh cá»­u", -- Key Piece 2
	-- Full old Desc: "{{Warning}} Nháº­n cáº£ hai pháº§n chÃ¬a khÃ³a má»Ÿ má»™t cÃ¡nh cá»­a vÃ ng lá»›n#{{AngelChance}} +25% CÆ¡ há»™i PhÃ²ng ThiÃªn tháº§n#{{EternalHeart}} +2% cÆ¡ há»™i cho TrÃ¡i tim VÄ©nh cá»­u"
	-- English: "{{Warning}} Getting both parts of the key opens a big golden door#{{EternalHeart}} +2% chance for Eternal Hearts"

	[C_ID .. 241] = "NhÃ¢n Ä‘Ã´i táº¥t cáº£ pháº§n thÆ°á»Ÿng dá»n phÃ²ng#33% cÆ¡ há»™i khÃ´ng cÃ³ pháº§n thÆ°á»Ÿng dá»n phÃ²ng", -- Contract from Below
	-- English: "Doubles all room clear rewards#33% chance for no room clear reward"

	[C_ID .. 242] = "50% cÆ¡ há»™i cháº·n Ä‘áº¡n káº» Ä‘á»‹ch", -- Infamy
	-- English: "50% chance to block enemy shots"

	[C_ID .. 243] = "Cháº·n Ä‘áº¡n káº» Ä‘á»‹ch tá»« hÆ°á»›ng Isaac Ä‘ang báº¯n", -- Trinity Shield
	-- English: "Blocks enemy shots coming from the direction Isaac is shooting"

	[C_ID .. 244] = "Thá»‰nh thoáº£ng báº¯n tia laze cÃ¹ng vá»›i nÆ°á»›c máº¯t cá»§a Isaac", -- Tech.5
	-- English: "Occasionally shoot lasers in addition to Isaac's tears"

	[C_ID .. 245] = "Isaac báº¯n 2 nÆ°á»›c máº¯t cÃ¹ng lÃºc", -- 20/20
	-- English: "Isaac shoots 2 tears at once"

	[C_ID .. 246] = "{{SecretRoom}} Hiá»ƒn thá»‹ vá»‹ trÃ­ phÃ²ng bÃ­ máº­t trÃªn báº£n Ä‘á»“", -- Blue Map
	-- English: "{{SecretRoom}} Reveals secret room locations on the map"

	[C_ID .. 247] = "báº¡n Ä‘á»“ng hÃ nh gÃ¢y sÃ¡t thÆ°Æ¡ng gáº¥p Ä‘Ã´i", -- BFFS!
	-- English: "Familiars deal double damage"

	[C_ID .. 248] = "Nhá»‡n xanh vÃ  ruá»“i xanh gÃ¢y sÃ¡t thÆ°Æ¡ng gáº¥p Ä‘Ã´i", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage"

	[C_ID .. 249] = "Cho phÃ©p Isaac chá»n giá»¯a 2 váº­t pháº©m sau khi Ä‘Ã¡nh báº¡i trÃ¹m", -- There's Options
	-- English: "Allows Isaac to choose between 2 items after beating a boss"

	[C_ID .. 250] = "{{Bomb}} Táº¥t cáº£ bom rÆ¡i ra trá»Ÿ thÃ nh bom Ä‘Ã´i", -- Bogo Bombs
	-- English: "{{Bomb}} All bomb drops become double bombs"

	[C_ID .. 251] = "Isaac cÃ³ thá»ƒ mang 2 lÃ¡ bÃ i#Biáº¿n táº¥t cáº£ viÃªn thuá»‘c thÃ nh lÃ¡ bÃ i", -- Starter Deck
	-- Full old Desc: "{{Card}} Táº¡o 1 lÃ¡ bÃ i khi nháº·t#Isaac cÃ³ thá»ƒ mang 2 lÃ¡ bÃ i#Biáº¿n táº¥t cáº£ viÃªn thuá»‘c thÃ nh lÃ¡ bÃ i"
	-- English: "Isaac can carry 2 cards#Turns all pills into cards"

	[C_ID .. 252] = "Isaac cÃ³ thá»ƒ mang 2 viÃªn thuá»‘c#Biáº¿n táº¥t cáº£ lÃ¡ bÃ i thÃ nh viÃªn thuá»‘c", -- Little Baggy
	-- Full old Desc: "{{Pill}} Táº¡o 1 viÃªn thuá»‘c khi nháº·t#Isaac cÃ³ thá»ƒ mang 2 viÃªn thuá»‘c#Biáº¿n táº¥t cáº£ lÃ¡ bÃ i thÃ nh viÃªn thuá»‘c"
	-- English: "Isaac can carry 2 pills#Turns all cards into pills"

	[C_ID .. 256] = "{{Burning}} Bom cá»§a Isaac Ä‘á»ƒ láº¡i ngá»n lá»­a nÆ¡i chÃºng ná»•", -- Hot Bombs
	-- Full old Desc: "{{Bomb}} +5 Bom#{{Burning}} Bom cá»§a Isaac Ä‘á»ƒ láº¡i ngá»n lá»­a nÆ¡i chÃºng ná»•"
	-- English: "{{Burning}} Isaac's bombs leave a flame where they explode"

	[C_ID .. 257] = "{{Warning}} Vá»¥ ná»• cÃ³ thá»ƒ lÃ m tá»•n thÆ°Æ¡ng Isaac", -- Fire Mind
	-- Full old Desc: "{{Burning}} NÆ°á»›c máº¯t cá»§a Isaac Ä‘á»‘t chÃ¡y káº» Ä‘á»‹ch#10% cÆ¡ há»™i nÆ°á»›c máº¯t ná»• khi trÃºng káº» Ä‘á»‹ch#{{Luck}} 100% cÆ¡ há»™i á»Ÿ 13 may máº¯n#{{Warning}} Vá»¥ ná»• cÃ³ thá»ƒ lÃ m tá»•n thÆ°Æ¡ng Isaac"
	-- English: "{{Burning}} Isaac's tears light enemies on fire#{VAR:LUCKCHANCE}% chance for tears to explode on enemy impact#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 258] = "Äá»•i láº¡i táº¥t cáº£ váº­t pháº©m vÃ  chá»‰ sá»‘ cá»§a Isaac khi nháº·t vÃ  á»Ÿ má»—i táº§ng má»›i", -- Missing No.
	-- English: "Rerolls all of Isaac's items and stats on pickup and at every new floor"

	[C_ID .. 260] = "{{CurseBlind}} Miá»…n nhiá»…m vá»›i lá»i nguyá»n", -- Black Candle
	-- Full old Desc: "{{CurseBlind}} Miá»…n nhiá»…m vá»›i lá»i nguyá»n#{{BlackHeart}} +1 TrÃ¡i tim Äen#{{AngelDevilChance}} +15% CÆ¡ há»™i PhÃ²ng Quá»·/ThiÃªn tháº§n"
	-- English: "{{CurseBlind}} Immune to curses"

	[C_ID .. 261] = "â†“ NÆ°á»›c máº¯t gÃ¢y Ã­t sÃ¡t thÆ°Æ¡ng hÆ¡n khi Ä‘i xa hÆ¡n", -- Proptosis
	-- Full old Desc: "â†‘ {{Damage}} x2 Há»‡ sá»‘ sÃ¡t thÆ°Æ¡ng#â†“ NÆ°á»›c máº¯t gÃ¢y Ã­t sÃ¡t thÆ°Æ¡ng hÆ¡n khi Ä‘i xa hÆ¡n"
	-- English: "â†“ Tears deal less damage the further they travel"

	[C_ID .. 262] = "Nháº­n sÃ¡t thÆ°Æ¡ng xuá»‘ng cÃ²n 1 trÃ¡i tim gÃ¢y sÃ¡t thÆ°Æ¡ng cho táº¥t cáº£ káº» Ä‘á»‹ch trong phÃ²ng", -- Missing Page 2
	-- Full old Desc: "{{BlackHeart}} +1 TrÃ¡i tim Äen#Nháº­n sÃ¡t thÆ°Æ¡ng xuá»‘ng cÃ²n 1 trÃ¡i tim gÃ¢y sÃ¡t thÆ°Æ¡ng cho táº¥t cáº£ káº» Ä‘á»‹ch trong phÃ²ng"
	-- English: "Taking damage down to 1 heart damages all enemies in the room"

	[C_ID .. 264] = "Táº¥n cÃ´ng káº» Ä‘á»‹ch khi Isaac nháº­n sÃ¡t thÆ°Æ¡ng", -- Smart Fly
	-- Full old Desc: "Vá»‡ tinh#Táº¥n cÃ´ng káº» Ä‘á»‹ch khi Isaac nháº­n sÃ¡t thÆ°Æ¡ng#GÃ¢y 22.5 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y"
	-- English: "Attacks enemies when Isaac takes damage"

	[C_ID .. 265] = "10% cÆ¡ há»™i gÃ¢y sÃ¡t thÆ°Æ¡ng cho táº¥t cáº£ káº» Ä‘á»‹ch trong phÃ²ng khi bá»‹ trÃºng nÆ°á»›c máº¯t káº» Ä‘á»‹ch", -- Dry Baby
	-- English: "10% chance to damage all enemies in the room when it is hit by an enemy tear"

	[C_ID .. 266] = "{{Slow}} Äá»ƒ láº¡i cháº¥t lá»ng lÃ m cháº­m#Táº¡o 1-2 con nhá»‡n thÃ¢n thiá»‡n sau khi dá»n phÃ²ng", -- Juicy Sack
	-- English: "{{Slow}} Leaves slowing creep#Spawns 1-2 friendly spiders after clearing a room"

	[C_ID .. 267] = "Báº¯n tia laze#Di chuyá»ƒn theo hÆ°á»›ng Isaac Ä‘ang báº¯n", -- Robo-Baby 2.0
	-- Full old Desc: "Báº¯n tia laze#GÃ¢y 3.5 sÃ¡t thÆ°Æ¡ng má»—i phÃ¡t#Di chuyá»ƒn theo hÆ°á»›ng Isaac Ä‘ang báº¯n"
	-- English: "Shoots lasers#Moves in the direction Isaac is shooting"

	[C_ID .. 268] = "Táº¡o ruá»“i xanh khi Isaac báº¯n", -- Rotten Baby
	-- English: "Spawns blue flies when Isaac shoots"

	[C_ID .. 269] = "Äá»ƒ láº¡i cháº¥t lá»ng gÃ¢y 6 sÃ¡t thÆ°Æ¡ng má»—i giÃ¢y", -- Headless Baby
	-- English: "Leaves creep which deals 6 damage per second"

	[C_ID .. 270] = "Äuá»•i theo káº» Ä‘á»‹ch#{{HealingRed}} Há»“i Isaac ná»­a trÃ¡i tim khi giáº¿t káº» Ä‘á»‹ch", -- Leech
	-- Full old Desc: "Äuá»•i theo káº» Ä‘á»‹ch#{{HealingRed}} Há»“i Isaac ná»­a trÃ¡i tim khi giáº¿t káº» Ä‘á»‹ch#GÃ¢y 3.2 sÃ¡t thÆ°Æ¡ng má»—i giÃ¢y"
	-- English: "Chases enemies#{{HealingRed}} Heals Isaac for half a heart when it kills an enemy"

	[C_ID .. 271] = "Táº¡o má»™t váº­t pháº©m nháº·t ngáº«u nhiÃªn má»—i 5-6 phÃ²ng", -- Mystery Sack
	-- English: "Spawns a random pickup every 5-6 rooms"

	[C_ID .. 272] = "Ruá»“i ná»• thÃ¢n thiá»‡n#{{Warning}} Vá»¥ ná»• cÃ³ thá»ƒ lÃ m tá»•n thÆ°Æ¡ng Isaac", -- BBF
	-- Full old Desc: "Ruá»“i ná»• thÃ¢n thiá»‡n#Vá»¥ ná»• gÃ¢y 60 sÃ¡t thÆ°Æ¡ng#{{Warning}} Vá»¥ ná»• cÃ³ thá»ƒ lÃ m tá»•n thÆ°Æ¡ng Isaac"
	-- English: "Friendly exploding fly#The explosion deals {VAR:1} damage#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 273] = "Lao theo hÆ°á»›ng Isaac Ä‘ang báº¯n#Ná»• khi trÃºng káº» Ä‘á»‹ch#{{Warning}} Vá»¥ ná»• cÃ³ thá»ƒ lÃ m tá»•n thÆ°Æ¡ng Isaac", -- Bob's Brain
	-- Full old Desc: "Lao theo hÆ°á»›ng Isaac Ä‘ang báº¯n#Ná»• khi trÃºng káº» Ä‘á»‹ch#{{Poison}} Vá»¥ ná»• gÃ¢y 60 sÃ¡t thÆ°Æ¡ng vÃ  gÃ¢y Ä‘á»™c cho káº» Ä‘á»‹ch#{{Warning}} Vá»¥ ná»• cÃ³ thá»ƒ lÃ m tá»•n thÆ°Æ¡ng Isaac"
	-- English: "Dashes in the direction Isaac is shooting#Explodes when it hits an enemy#{{Poison}} The explosion deals {VAR:1} damage and poisons enemies#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 274] = "Nháº­n sÃ¡t thÆ°Æ¡ng táº¡o má»™t vá»‡ tinh táº§m trung trong phÃ²ng", -- Best Bud
	-- Full old Desc: "Nháº­n sÃ¡t thÆ°Æ¡ng táº¡o má»™t vá»‡ tinh táº§m trung trong phÃ²ng#NÃ³ gÃ¢y 75 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y"
	-- English: "Taking damage spawns one midrange orbital for the room"

	[C_ID .. 275] = "{{Chargeable}} báº¡n Ä‘á»“ng hÃ nh sáº¡c vÃ  báº¯n tia mÃ¡u {{Collectible118}}", -- Lil Brimstone
	-- Full old Desc: "{{Chargeable}} báº¡n Ä‘á»“ng hÃ nh sáº¡c vÃ  báº¯n tia mÃ¡u {{Collectible118}}#NÃ³ gÃ¢y 31.5 sÃ¡t thÆ°Æ¡ng trong 0.63 giÃ¢y"
	-- English: "{{Chargeable}} Familiar that charges and shoots a {{Collectible118}} blood beam#It deals {VAR:1} damage over 0.63 seconds"

	[C_ID .. 276] = "Isaac trá»Ÿ nÃªn báº¥t tá»­#Táº¡o má»™t báº¡n Ä‘á»“ng hÃ nh trÃ¡i tim Ä‘i theo Isaac#{{Warning}} Náº¿u báº¡n Ä‘á»“ng hÃ nh trÃ¡i tim bá»‹ trÃºng, Isaac nháº­n sÃ¡t thÆ°Æ¡ng", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 277] = "{{Fear}} Äuá»•i theo vÃ  lÃ m káº» Ä‘á»‹ch sá»£ hÃ£i", -- Lil Haunt
	-- Full old Desc: "{{Fear}} Äuá»•i theo vÃ  lÃ m káº» Ä‘á»‹ch sá»£ hÃ£i#GÃ¢y 4 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y"
	-- English: "{{Fear}} Chases and fears enemies"

	[C_ID .. 278] = "{{Heart}} Nháº·t TrÃ¡i tim Äá» gáº§n Ä‘Ã³#{{SoulHeart}} Táº¡o má»™t TrÃ¡i tim Linh há»“n hoáº·c nhá»‡n cho má»—i 1.5 TrÃ¡i tim Äá» nháº·t Ä‘Æ°á»£c", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#{{SoulHeart}} Spawns a Soul Heart or spider for every 1.5 Red Hearts picked up"

	[C_ID .. 279] = "Vá»‡ tinh lá»›n", -- Big Fan
	-- Full old Desc: "Vá»‡ tinh lá»›n#GÃ¢y 30 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y"
	-- English: "Large orbital"

	[C_ID .. 280] = "Ngáº«u nhiÃªn táº¡o nhá»‡n xanh trong phÃ²ng cÃ³ káº» Ä‘á»‹ch", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms"

	[C_ID .. 281] = "báº¡n Ä‘á»“ng hÃ nh giáº£#Káº» Ä‘á»‹ch nháº¯m vÃ o nÃ³ thay vÃ¬ Isaac", -- Punching Bag
	-- English: "Decoy familiar#Enemies target him instead of Isaac"

	[C_ID .. 282] = "Cho phÃ©p Isaac nháº£y qua khoáº£ng trá»‘ng vÃ  chÆ°á»›ng ngáº¡i váº­t", -- How to Jump
	-- English: "Allows Isaac to jump over gaps and obstacles"

	[C_ID .. 283] = "Äá»•i láº¡i táº¥t cáº£ váº­t pháº©m nháº·t vÃ  váº­t pháº©m trÃªn bá»‡ trong phÃ²ng, vÃ  táº¥t cáº£ váº­t pháº©m bá»‹ Ä‘á»™ng cá»§a Isaac", -- D100
	-- English: "Reroll all pickups and pedestal items in the room, and all of Isaac's passive items"

	[C_ID .. 284] = "Äá»•i láº¡i táº¥t cáº£ váº­t pháº©m bá»‹ Ä‘á»™ng cá»§a Isaac", -- D4
	-- English: "Reroll all of Isaac's passive items"

	[C_ID .. 285] = "Äá»•i láº¡i táº¥t cáº£ káº» Ä‘á»‹ch trong phÃ²ng", -- D10
	-- English: "Reroll all enemies in the room"

	[C_ID .. 286] = "KÃ­ch hoáº¡t hiá»‡u á»©ng cá»§a rune hoáº·c lÃ¡ bÃ i Isaac Ä‘ang giá»¯ mÃ  khÃ´ng sá»­ dá»¥ng nÃ³", -- Blank Card
	-- English: "Triggers the effect of the rune or card Isaac holds without using it"

	[C_ID .. 289] = "NÃ©m má»™t ngá»n lá»­a Ä‘á»#NÃ³ gÃ¢y sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc, cháº·n nÆ°á»›c máº¯t káº» Ä‘á»‹ch, vÃ  biáº¿n máº¥t khi Ä‘Ã£ gÃ¢y sÃ¡t thÆ°Æ¡ng hoáº·c cháº·n Ä‘áº¡n 5 láº§n", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 5 times"

	[C_ID .. 290] = "{{Heart}} Nháº·t TrÃ¡i tim Äá» khi Ä‘áº§y mÃ¡u lÆ°u trá»¯ tá»‘i Ä‘a 4 trÃ¡i tim trong Lá»#Sá»­ dá»¥ng váº­t pháº©m tháº£ táº¥t cáº£ trÃ¡i tim Ä‘Ã£ lÆ°u trá»¯ xuá»‘ng sÃ n", -- The Jar
	-- English: "{{Heart}} Picking up Red Hearts while at full health stores up to 4 of them in the Jar#Using the item drops all stored hearts on the floor"

	[C_ID .. 291] = "Biáº¿n táº¥t cáº£ káº» Ä‘á»‹ch khÃ´ng pháº£i trÃ¹m thÃ nh phÃ¢n#TiÃªu diá»‡t ngay láº­p tá»©c káº» Ä‘á»‹ch phÃ¢n vÃ  trÃ¹m phÃ¢n", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses"

	[C_ID .. 293] = "{{Collectible118}} Báº¯n tia mÃ¡u 4 hÆ°á»›ng", -- Head of Krampus
	-- Full old Desc: "{{Collectible118}} Báº¯n tia mÃ¡u 4 hÆ°á»›ng#Má»—i tia gÃ¢y 440 sÃ¡t thÆ°Æ¡ng trong 1.33 giÃ¢y"
	-- English: "{{Collectible118}} Shoot a 4-way blood beam#They each deal {VAR:1} damage over 1.33 seconds"

	[C_ID .. 294] = "Äáº©y lÃ¹i káº» Ä‘á»‹ch vÃ  Ä‘áº¡n gáº§n Ä‘Ã³", -- Butter Bean
	-- Full old Desc: "Äáº©y lÃ¹i káº» Ä‘á»‹ch vÃ  Ä‘áº¡n gáº§n Ä‘Ã³#10% cÆ¡ há»™i biáº¿n thÃ nh {{Collectible484}} Wait What? máº¡nh hÆ¡n khi Ä‘á»•i vá»›i váº­t pháº©m kÃ­ch hoáº¡t khÃ¡c vÃ  nháº·t láº¡i"
	-- English: "Knocks back nearby enemies and projectiles#10% chance to turn into the stronger {{NameC484}} when swapping it with a different active item and picking it up again"

	[C_ID .. 295] = "GÃ¢y 2x sÃ¡t thÆ°Æ¡ng cá»§a Isaac cho táº¥t cáº£ káº» Ä‘á»‹ch#{{Coin}} Tá»‘n 1 Ä‘á»“ng xu", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage to all enemies#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "{{Heart}} Chuyá»ƒn 2 TrÃ¡i tim Linh há»“n/Äen thÃ nh 1 há»™p tim", -- Converter
	-- English: "{{Heart}} Converts 2 Soul/Black Hearts into 1 heart container"

	[C_ID .. 299] = "â†‘ {{Speed}} Tá»« tá»« tÄƒng tá»‘c Ä‘á»™ trong phÃ²ng cÃ³ káº» Ä‘á»‹ch#á»ž tá»‘c Ä‘á»™ 2, Isaac trá»Ÿ nÃªn báº¥t tá»­ vÃ  gÃ¢y sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc#Sau Ä‘Ã³, máº¥t tÄƒng tá»‘c cá»§a Taurus trong phÃ²ng", -- Taurus
	-- Full old Desc: "â†“ {{Speed}} -0.3 Tá»‘c Ä‘á»™#â†‘ {{Speed}} Tá»« tá»« tÄƒng tá»‘c Ä‘á»™ trong phÃ²ng cÃ³ káº» Ä‘á»‹ch#á»ž tá»‘c Ä‘á»™ 2, Isaac trá»Ÿ nÃªn báº¥t tá»­ vÃ  gÃ¢y sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc#Sau Ä‘Ã³, máº¥t tÄƒng tá»‘c cá»§a Taurus trong phÃ²ng"
	-- English: "â†‘ {{Speed}} Slowly gain speed while in hostile rooms#At 2 speed, Isaac becomes invincible and deals contact damage#Afterwards, lose the Taurus speed boost for the room"

	[C_ID .. 300] = "Cháº¡m vÃ o káº» Ä‘á»‹ch gÃ¢y sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc", -- Aries
	-- Full old Desc: "â†‘ {{Speed}} +0.25 Tá»‘c Ä‘á»™#Cháº¡m vÃ o káº» Ä‘á»‹ch gÃ¢y sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc"
	-- English: "Touching enemies deals contact damage"

	[C_ID .. 301] = "Nháº­n sÃ¡t thÆ°Æ¡ng giáº£m táº¥t cáº£ sÃ¡t thÆ°Æ¡ng tiáº¿p theo trong phÃ²ng xuá»‘ng ná»­a trÃ¡i tim", -- Cancer
	-- Full old Desc: "{{SoulHeart}} +3 TrÃ¡i tim Linh há»“n#Nháº­n sÃ¡t thÆ°Æ¡ng giáº£m táº¥t cáº£ sÃ¡t thÆ°Æ¡ng tiáº¿p theo trong phÃ²ng xuá»‘ng ná»­a trÃ¡i tim"
	-- English: "Taking damage reduces all future damage in the room to half a heart"

	[C_ID .. 302] = "Isaac cÃ³ thá»ƒ phÃ¡ Ä‘Ã¡ báº±ng cÃ¡ch Ä‘i vÃ o chÃºng", -- Leo
	-- Full old Desc: "TÄƒng kÃ­ch thÆ°á»›c#Isaac cÃ³ thá»ƒ phÃ¡ Ä‘Ã¡ báº±ng cÃ¡ch Ä‘i vÃ o chÃºng"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 303] = "Nháº­n sÃ¡t thÆ°Æ¡ng cÃ³ thá»ƒ khiáº¿n Isaac táº¡m thá»i báº¥t tá»­#{{Luck}} 100% cÆ¡ há»™i á»Ÿ 10 may máº¯n#{{Pill}} Biáº¿n thuá»‘c tiÃªu cá»±c thÃ nh thuá»‘c tÃ­ch cá»±c", -- Virgo
	-- English: "Taking damage can make Isaac temporarily invincible#{{Luck}} 100% chance at 10 luck#{{Pill}} Converts negative pills into positive ones"

	[C_ID .. 304] = "CÃ¢n báº±ng chá»‰ sá»‘ cá»§a Isaac#CÃ¡c thay Ä‘á»•i chá»‰ sá»‘ sau nÃ y sáº½ Ä‘Æ°á»£c phÃ¢n bá»• Ä‘á»u cho táº¥t cáº£ chá»‰ sá»‘", -- Libra
	-- Full old Desc: "+6 {{Coin}} Ä‘á»“ng xu, {{Bomb}} bom vÃ  {{Key}} chÃ¬a khÃ³a#CÃ¢n báº±ng chá»‰ sá»‘ cá»§a Isaac#CÃ¡c thay Ä‘á»•i chá»‰ sá»‘ sau nÃ y sáº½ Ä‘Æ°á»£c phÃ¢n bá»• Ä‘á»u cho táº¥t cáº£ chá»‰ sá»‘"
	-- English: "Balances Isaac's stats#Future stat changes will be spread across all stats"

	[C_ID .. 308] = "Isaac Ä‘á»ƒ láº¡i vá»‡t cháº¥t lá»ng#Cháº¥t lá»ng gÃ¢y 6 sÃ¡t thÆ°Æ¡ng má»—i giÃ¢y", -- Aquarius
	-- English: "Isaac leaves a trail of creep#The creep deals 6 damage per second"

	[C_ID .. 309] = "TÄƒng Ä‘á»™ Ä‘áº©y lÃ¹i cá»§a nÆ°á»›c máº¯t", -- Pisces
	-- Full old Desc: "â†‘ {{Tears}} -1 Äá»™ trá»… nÆ°á»›c máº¯t#â†‘ {{Tearsize}} x1.25 KÃ­ch thÆ°á»›c nÆ°á»›c máº¯t#TÄƒng Ä‘á»™ Ä‘áº©y lÃ¹i cá»§a nÆ°á»›c máº¯t"
	-- English: "Increases tear knockback"

	[C_ID .. 311] = "{{Player12}} Khi cháº¿t, há»“i sinh thÃ nh Dark Judas vá»›i há»‡ sá»‘ sÃ¡t thÆ°Æ¡ng x2", -- Judas' Shadow
	-- English: "{{Player12}} When dead, respawn as Dark Judas with a x2 damage multiplier"

	[C_ID .. 312] = "Táº¥t cáº£ TrÃ¡i tim Äá» há»“i gáº¥p Ä‘Ã´i giÃ¡ trá»‹ cá»§a chÃºng", -- Maggy's Bow
	-- Full old Desc: "â†‘ {{Heart}} +1 MÃ¡u#{{HealingRed}} Há»“i 1 trÃ¡i tim#Táº¥t cáº£ TrÃ¡i tim Äá» há»“i gáº¥p Ä‘Ã´i giÃ¡ trá»‹ cá»§a chÃºng"
	-- English: "All Red Hearts heal double their value"

	[C_ID .. 313] = "VÃ´ hiá»‡u hÃ³a Ä‘Ã²n Ä‘Ã¡nh Ä‘áº§u tiÃªn nháº­n Ä‘Æ°á»£c má»—i phÃ²ng", -- Holy Mantle
	-- English: "Negates the first hit taken once per room"

	[C_ID .. 314] = "Isaac cÃ³ thá»ƒ phÃ¡ Ä‘Ã¡ báº±ng cÃ¡ch Ä‘i vÃ o chÃºng", -- Thunder Thighs
	-- Full old Desc: "â†‘ {{Heart}} +1 MÃ¡u#â†“ {{Speed}} -0.4 Tá»‘c Ä‘á»™#Isaac cÃ³ thá»ƒ phÃ¡ Ä‘Ã¡ báº±ng cÃ¡ch Ä‘i vÃ o chÃºng"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 315] = "NÆ°á»›c máº¯t cá»§a Isaac thu hÃºt káº» Ä‘á»‹ch, váº­t pháº©m nháº·t vÃ  trang sá»©c", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets"

	[C_ID .. 316] = "{{Warning}} Nháº­n sÃ¡t thÆ°Æ¡ng khi Ä‘ang sáº¡c má»™t pháº§n sáº½ dá»‹ch chuyá»ƒn Isaac Ä‘áº¿n phÃ²ng ngáº«u nhiÃªn", -- Cursed Eye
	-- Full old Desc: "SÃ³ng nÆ°á»›c máº¯t sáº¡c#{{Warning}} Nháº­n sÃ¡t thÆ°Æ¡ng khi Ä‘ang sáº¡c má»™t pháº§n sáº½ dá»‹ch chuyá»ƒn Isaac Ä‘áº¿n phÃ²ng ngáº«u nhiÃªn"
	-- English: "Charged wave of {VAR:1} tears#{{Warning}} Taking damage while partially charged teleports Isaac to a random room"

	[C_ID .. 317] = "NÆ°á»›c máº¯t cá»§a Isaac Ä‘á»ƒ láº¡i cháº¥t lá»ng#Cháº¥t lá»ng gÃ¢y 30 sÃ¡t thÆ°Æ¡ng má»—i giÃ¢y", -- Mysterious Liquid
	-- English: "Isaac's tears leave creep#The creep deals 30 damage per second"

	[C_ID .. 318] = "báº¡n Ä‘á»“ng hÃ nh cáº­n chiáº¿n", -- Gemini
	-- Full old Desc: "báº¡n Ä‘á»“ng hÃ nh cáº­n chiáº¿n#GÃ¢y 6 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y"
	-- English: "Close combat familiar"

	[C_ID .. 319] = "Náº£y quanh phÃ²ng#NÆ°á»›c máº¯t chÃ­nh xÃ¡c tháº¥p gÃ¢y sÃ¡t thÆ°Æ¡ng cá»§a Isaac", -- Cain's Other Eye
	-- English: "Bounces around the room#Low accuracy tears that deal Isaac's damage"

	[C_ID .. 320] = "Ruá»“i Ä‘iá»u khiá»ƒn Ä‘Æ°á»£c", -- ???'s Only Friend
	-- Full old Desc: "Ruá»“i Ä‘iá»u khiá»ƒn Ä‘Æ°á»£c#GÃ¢y 37.5 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y"
	-- English: "Controllable fly"

	[C_ID .. 321] = "Quáº£ bÃ³ng cÃ³ thá»ƒ kÃ©o phÃ¡ Ä‘Ã¡", -- Samson's Chains
	-- Full old Desc: "Quáº£ bÃ³ng cÃ³ thá»ƒ kÃ©o phÃ¡ Ä‘Ã¡#GÃ¢y 10.7 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y"
	-- English: "Draggable ball that can destroy rocks"

	[C_ID .. 322] = "Báº¯t chÆ°á»›c nÆ°á»›c máº¯t cá»§a cÃ¡c bÃ© Ä‘á»“ng hÃ nh cá»§a báº¡n#Náº¿u khÃ´ng cÃ³, báº¯n nÆ°á»›c máº¯t thÆ°á»ng gÃ¢y 3.5 sÃ¡t thÆ°Æ¡ng", -- Mongo Baby
	-- English: "Mimics your baby familiars' tears#If you have none, shoots normal 3.5 damage tears"

	[C_ID .. 323] = "Báº¯n 8 nÆ°á»›c máº¯t theo má»i hÆ°á»›ng#NÆ°á»›c máº¯t sao chÃ©p hiá»‡u á»©ng nÆ°á»›c máº¯t cá»§a Isaac#Sáº¡c láº¡i báº±ng cÃ¡ch báº¯n nÆ°á»›c máº¯t", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects#Recharges by shooting tears"

	[C_ID .. 324] = "Dá»‹ch chuyá»ƒn Isaac Ä‘áº¿n {{TreasureRoom}} PhÃ²ng Kho bÃ¡u, {{SecretRoom}} PhÃ²ng BÃ­ máº­t, {{SuperSecretRoom}} PhÃ²ng BÃ­ máº­t SiÃªu cáº¥p hoáº·c {{ErrorRoom}} PhÃ²ng I AM ERROR", -- Undefined
	-- English: "Teleports Isaac to the {{TreasureRoom}} Treasure, {{SecretRoom}} Secret, {{SuperSecretRoom}} Super Secret or {{ErrorRoom}} I AM ERROR Room"

	[C_ID .. 325] = "{{Timer}} Äáº§u cá»§a Isaac biáº¿n thÃ nh báº¡n Ä‘á»“ng hÃ nh cá»‘ Ä‘á»‹nh trong phÃ²ng#Äáº§u báº¯n nÆ°á»›c máº¯t gÃ¢y 3.5 sÃ¡t thÆ°Æ¡ng#CÆ¡ thá»ƒ Ä‘Æ°á»£c Ä‘iá»u khiá»ƒn riÃªng vÃ  váº«n báº¯n nÆ°á»›c máº¯t cá»§a Isaac", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The head shoots 3.5 damage tears#The body is controlled separately and still shoots Isaac's tears"

	[C_ID .. 326] = "Giá»¯ nÃºt Sá»¬ Dá»¤NG lÃ m trá»‘ng thanh sáº¡c#Isaac táº¡m thá»i báº¥t tá»­ khi thanh sáº¡c trá»‘ng#{{Warning}} Giá»¯ quÃ¡ lÃ¢u gÃ¢y sÃ¡t thÆ°Æ¡ng cho Isaac", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 327] = "Nháº­n sÃ¡t thÆ°Æ¡ng á»Ÿ ná»­a TrÃ¡i tim Äá» hoáº·c khÃ´ng cÃ³ khiáº¿n Isaac táº¡m thá»i báº¥t tá»­", -- The Polaroid
	-- English: "Taking damage at half a Red Heart or none makes Isaac temporarily invincible"

	[C_ID .. 328] = "Nháº­n sÃ¡t thÆ°Æ¡ng á»Ÿ ná»­a TrÃ¡i tim Äá» hoáº·c khÃ´ng cÃ³ gÃ¢y sÃ¡t thÆ°Æ¡ng cho táº¥t cáº£ káº» Ä‘á»‹ch trong phÃ²ng", -- The Negative
	-- English: "Taking damage at half a Red Heart or none damages all enemies in the room"

	[C_ID .. 329] = "Thay nÆ°á»›c máº¯t cá»§a Isaac báº±ng má»™t nÆ°á»›c máº¯t lá»›n Ä‘iá»u khiá»ƒn Ä‘Æ°á»£c", -- The Ludovico Technique
	-- English: "Replaces Isaac's tears with one giant controllable tear"

	[C_ID .. 331] = "{{Damage}} NÆ°á»›c máº¯t cÃ³ hÃ o quang gÃ¢y 4.5x sÃ¡t thÆ°Æ¡ng cá»§a Isaac má»—i giÃ¢y", -- Godhead
	-- Full old Desc: "â†‘ {{Damage}} +0.5 SÃ¡t thÆ°Æ¡ng#â†‘ {{Range}} +1.2 Táº§m báº¯n#â†‘ +0.8 Tá»‘c Ä‘á»™ rÆ¡i nÆ°á»›c máº¯t#â†“ {{Tears}} -0.3 NÆ°á»›c máº¯t#â†“ {{Shotspeed}} -0.3 Tá»‘c Ä‘á»™ Ä‘áº¡n#NÆ°á»›c máº¯t tá»± dáº«n Ä‘Æ°á»ng#{{Damage}} NÆ°á»›c máº¯t cÃ³ hÃ o quang gÃ¢y 4.5x sÃ¡t thÆ°Æ¡ng cá»§a Isaac má»—i giÃ¢y"
	-- English: "{{Damage}} Tears gain an aura that deals 4.5x Isaac's damage per second"

	[C_ID .. 332] = "{{Player11}} Khi cháº¿t, há»“i sinh thÃ nh Lazarus (Risen)", -- Lazarus' Rags
	-- English: "{{Player11}} When dead, revive as Lazarus (Risen)"

	[C_ID .. 333] = "Hiá»‡u á»©ng báº£n Ä‘á»“ Ä‘áº§y Ä‘á»§", -- The Mind
	-- English: "Full mapping effect"

	[C_ID .. 335] = "Táº¡o hÃ o quang Ä‘áº©y lÃ¹i káº» Ä‘á»‹ch vÃ  Ä‘áº¡n", -- The Soul
	-- Full old Desc: "{{SoulHeart}} +2 TrÃ¡i tim Linh há»“n#Táº¡o hÃ o quang Ä‘áº©y lÃ¹i káº» Ä‘á»‹ch vÃ  Ä‘áº¡n"
	-- English: "Grants an aura that repels enemies and projectiles"

	[C_ID .. 337] = "{{Slow}} LÃ m cháº­m má»—i phÃ²ng thá»© 4#13% cÆ¡ há»™i tÄƒng tá»‘c phÃ²ng thay vÃ¬ lÃ m cháº­m", -- Broken Watch
	-- English: "{{Slow}} Slows down every 4th room#13% chance to speed up the room instead"

	[C_ID .. 338] = "Boomerang nÃ©m Ä‘Æ°á»£c#HÃ³a Ä‘Ã¡ káº» Ä‘á»‹ch vÃ  gÃ¢y 2x sÃ¡t thÆ°Æ¡ng cá»§a Isaac#CÃ³ thá»ƒ nháº·t vÃ  mang váº­t pháº©m vá»", -- The Boomerang
	-- English: "Throwable boomerang#{{Petrify}} Petrifies enemies and deals 2x Isaac's damage#Can grab and bring back items"

	[C_ID .. 347] = "NhÃ¢n Ä‘Ã´i táº¥t cáº£ bá»‡ váº­t pháº©m vÃ  váº­t pháº©m nháº·t trong phÃ²ng", -- Diplopia
	-- English: "Duplicates all item pedestals and pickups in the room"

	[C_ID .. 348] = "{{Pill}} KÃ­ch hoáº¡t hiá»‡u á»©ng cá»§a viÃªn thuá»‘c Isaac Ä‘ang giá»¯ mÃ  khÃ´ng sá»­ dá»¥ng nÃ³", -- Placebo
	-- English: "{{Pill}} Triggers the effect of the pill Isaac holds without using it"

	[C_ID .. 350] = "{{Poison}} VÃ o phÃ²ng gÃ¢y Ä‘á»™c cho táº¥t cáº£ káº» Ä‘á»‹ch#Káº» Ä‘á»‹ch bá»‹ giáº¿t Ä‘á»ƒ láº¡i vÅ©ng cháº¥t lá»ng#Cháº¥t lá»ng gÃ¢y 30 sÃ¡t thÆ°Æ¡ng má»—i giÃ¢y", -- Toxic Shock
	-- English: "{{Poison}} Entering a room poisons all enemies#Enemies killed leave a puddle of creep#The creep deals 30 damage per second"

	[C_ID .. 351] = "HÃ³a Ä‘Ã¡ táº¥t cáº£ káº» Ä‘á»‹ch trong phÃ²ng#{{Poison}} GÃ¢y 5 sÃ¡t thÆ°Æ¡ng vÃ  gÃ¢y Ä‘á»™c cho káº» Ä‘á»‹ch gáº§n Ä‘Ã³#Táº¡o sÃ³ng Ä‘Ã¡ theo hÆ°á»›ng Isaac di chuyá»ƒn#SÃ³ng Ä‘Ã¡ cÃ³ thá»ƒ má»Ÿ phÃ²ng bÃ­ máº­t vÃ  phÃ¡ Ä‘Ã¡", -- Mega Bean
	-- English: "{{Petrify}} Petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Sends a rock wave in the direction Isaac is moving#The rock wave can open secret rooms and break rocks"

	[C_ID .. 352] = "{{Warning}} Báº¯n phÃ¡o giáº£m mÃ¡u cá»§a Isaac xuá»‘ng cÃ²n ná»­a trÃ¡i tim#Báº¯n má»™t nÆ°á»›c máº¯t xuyÃªn tháº¥u + xuyÃªn tÆ°á»ng lá»›n gÃ¢y 10x sÃ¡t thÆ°Æ¡ng cá»§a Isaac", -- Glass Cannon
	-- English: "{{Warning}} Firing the cannon reduces Isaac's health down to half a heart#Shoots a large piercing + spectral tear that does 10x Isaac's damage"

	[C_ID .. 353] = "Bom ná»• theo hÃ¬nh chá»¯ tháº­p", -- Bomber Boy
	-- Full old Desc: "{{Bomb}} +5 Bom#Bom ná»• theo hÃ¬nh chá»¯ tháº­p"
	-- English: "Bombs explode in a cross-shaped pattern"

	[C_ID .. 356] = "{{Battery}} Sá»­ dá»¥ng váº­t pháº©m kÃ­ch hoáº¡t kÃ­ch hoáº¡t hiá»‡u á»©ng cá»§a nÃ³ hai láº§n", -- Car Battery
	-- English: "{{Battery}} Using an active item triggers its effect twice"

	[C_ID .. 357] = "{{Timer}} NhÃ¢n Ä‘Ã´i táº¥t cáº£ báº¡n Ä‘á»“ng hÃ nh cá»§a báº¡n trong phÃ²ng#{{Collectible113}} Cáº¥p má»™t Demon Baby trong phÃ²ng náº¿u Isaac khÃ´ng cÃ³ báº¡n Ä‘á»“ng hÃ nh", -- Box of Friends
	-- English: "{{Timer}} Duplicates all your familiars for the room#{{Collectible113}} Grants a Demon Baby for the room if Isaac has no familiars"

	[C_ID .. 358] = "Isaac báº¯n 2 nÆ°á»›c máº¯t cÃ¹ng lÃºc theo Ä‘Æ°á»ng chÃ©o", -- The Wiz
	-- Full old Desc: "NÆ°á»›c máº¯t xuyÃªn tÆ°á»ng#Isaac báº¯n 2 nÆ°á»›c máº¯t cÃ¹ng lÃºc theo Ä‘Æ°á»ng chÃ©o"
	-- English: "Isaac shoots 2 tears at once diagonally"

	[C_ID .. 359] = "TÄƒng Ä‘á»™ Ä‘áº©y lÃ¹i", -- 8 Inch Nails
	-- Full old Desc: "â†‘ {{Damage}} +1.5 SÃ¡t thÆ°Æ¡ng#TÄƒng Ä‘á»™ Ä‘áº©y lÃ¹i"
	-- English: "Increases knockback"

	[C_ID .. 360] = "Báº¯n nÆ°á»›c máº¯t vá»›i cÃ¹ng Tá»‘c Ä‘á»™ Ä‘áº¡n, sÃ¡t thÆ°Æ¡ng vÃ  hiá»‡u á»©ng nhÆ° Isaac", -- Incubus
	-- English: "Shoots tears with the same tear rate, damage and effects as Isaac"

	[C_ID .. 361] = "Báº¯n nÆ°á»›c máº¯t vá»›i cÃ¹ng sÃ¡t thÆ°Æ¡ng vÃ  hiá»‡u á»©ng nhÆ° Isaac#Báº¯n vá»›i tá»‘c Ä‘á»™ báº±ng ná»­a so vá»›i cÃ¡c báº¡n Ä‘á»“ng hÃ nh khÃ¡c", -- Fate's Reward
	-- English: "Shoots tears with the same damage and effects as Isaac#Shoots at half the rate of other familiars"

	[C_ID .. 362] = "35% cÆ¡ há»™i táº¡o váº­t pháº©m nháº·t má»—i phÃ²ng", -- Lil Chest
	-- English: "35% chance to spawn a pickup every room"

	[C_ID .. 363] = "Cháº·n vÃ  thu hÃºt Ä‘áº¡n káº» Ä‘á»‹ch#{{EternalHeart}} Cháº·n 10 phÃ¡t báº¯n trong má»™t phÃ²ng táº¡o má»™t TrÃ¡i tim VÄ©nh cá»­u", -- Sworn Protector
	-- Full old Desc: "Vá»‡ tinh#GÃ¢y 105 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y#Cháº·n vÃ  thu hÃºt Ä‘áº¡n káº» Ä‘á»‹ch#{{EternalHeart}} Cháº·n 10 phÃ¡t báº¯n trong má»™t phÃ²ng táº¡o má»™t TrÃ¡i tim VÄ©nh cá»­u"
	-- English: "Blocks and attracts enemy shots#{{EternalHeart}} Blocking 10 shots in one room spawns an Eternal Heart"

	[C_ID .. 364] = "Vá»‡ tinh ruá»“i táº§m trung", -- Friend Zone
	-- Full old Desc: "Vá»‡ tinh ruá»“i táº§m trung#GÃ¢y 45 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y"
	-- English: "Midrange fly orbital"

	[C_ID .. 365] = "Di chuyá»ƒn dá»c theo tÆ°á»ng/chÆ°á»›ng ngáº¡i váº­t", -- Lost Fly
	-- Full old Desc: "Di chuyá»ƒn dá»c theo tÆ°á»ng/chÆ°á»›ng ngáº¡i váº­t#GÃ¢y 105 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y"
	-- English: "Moves along walls/obstacles"

	[C_ID .. 367] = "Bom cá»§a Isaac dÃ­nh vÃ o káº» Ä‘á»‹ch#Giáº¿t káº» Ä‘á»‹ch báº±ng bom táº¡o nhá»‡n xanh", -- Sticky Bombs
	-- Full old Desc: "{{Bomb}} +5 Bom#Bom cá»§a Isaac dÃ­nh vÃ o káº» Ä‘á»‹ch#Giáº¿t káº» Ä‘á»‹ch báº±ng bom táº¡o nhá»‡n xanh"
	-- English: "Isaac's bombs stick to enemies#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "â†‘ {{Tears}} Báº¯n liÃªn tá»¥c theo má»™t hÆ°á»›ng dáº§n giáº£m Ä‘á»™ trá»… nÆ°á»›c máº¯t tá»‘i Ä‘a 200% vÃ  giáº£m Ä‘á»™ chÃ­nh xÃ¡c", -- Epiphora
	-- English: "â†‘ {{Tears}} Shooting in one direction gradually decreases tear delay up to 200% and decreases accuracy"

	[C_ID .. 369] = "NÆ°á»›c máº¯t cÃ³ thá»ƒ Ä‘i qua má»™t bÃªn mÃ n hÃ¬nh vÃ  xuáº¥t hiá»‡n á»Ÿ bÃªn kia", -- Continuum
	-- Full old Desc: "â†‘ {{Range}} +2.25 Táº§m báº¯n#â†‘ +1.5 Tá»‘c Ä‘á»™ rÆ¡i nÆ°á»›c máº¯t#NÆ°á»›c máº¯t xuyÃªn tÆ°á»ng#NÆ°á»›c máº¯t cÃ³ thá»ƒ Ä‘i qua má»™t bÃªn mÃ n hÃ¬nh vÃ  xuáº¥t hiá»‡n á»Ÿ bÃªn kia"
	-- English: "Tears can travel through one side of the screen and come out the other side"

	[C_ID .. 371] = "{{Warning}} Nháº­n sÃ¡t thÆ°Æ¡ng táº¡o 6 Bom Quá»·#Bom Quá»· thá»«a hÆ°á»Ÿng hiá»‡u á»©ng bom cá»§a Isaac", -- Curse of the Tower
	-- English: "{{Warning}} Taking damage spawns 6 Troll Bombs#The Troll Bombs inherit Isaac's bomb effects"

	[C_ID .. 372] = "Má»—i 30 giÃ¢y trong phÃ²ng chÆ°a dá»n, báº¡n Ä‘á»“ng hÃ nh cÃ³ thá»ƒ:#{{Battery}} Táº¡o má»™t Pin (tá»‘i Ä‘a 2 má»—i phÃ²ng)#{{Battery}} ThÃªm má»™t láº§n sáº¡c cho váº­t pháº©m kÃ­ch hoáº¡t (tá»‘i Ä‘a 2 má»—i phÃ²ng)#HÃ³a Ä‘Ã¡ táº¥t cáº£ káº» Ä‘á»‹ch trong phÃ²ng", -- Charged Baby
	-- English: "Every 30 seconds while in an uncleared room, the familiar can:#{{Battery}} Spawn a Battery (max 2 per room)#{{Battery}} Add one charge to the active item (max 2 per room)#{{Petrify}} Petrify all enemies in the room"

	[C_ID .. 373] = "â†‘ {{Damage}} LiÃªn tiáº¿p trÃºng nÆ°á»›c máº¯t vÃ o káº» Ä‘á»‹ch tÄƒng +25% sÃ¡t thÆ°Æ¡ng (tá»‘i Ä‘a +100%)#TrÆ°á»£t cÃ³ cÆ¡ há»™i Ä‘áº·t láº¡i há»‡ sá»‘", -- Dead Eye
	-- English: "â†‘ {{Damage}} Consecutive tear hits on enemies grant +25% damage (max +100%)#Missing has a chance to reset the multiplier"

	[C_ID .. 374] = "{{Damage}} Tia sÃ¡ng gÃ¢y 4x sÃ¡t thÆ°Æ¡ng cá»§a Isaac", -- Holy Light
	-- Full old Desc: "10% cÆ¡ há»™i báº¯n nÆ°á»›c máº¯t thÃ¡nh, táº¡o tia sÃ¡ng khi trÃºng#{{Luck}} 50% cÆ¡ há»™i á»Ÿ 9 may máº¯n#{{Damage}} Tia sÃ¡ng gÃ¢y 4x sÃ¡t thÆ°Æ¡ng cá»§a Isaac"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot holy tears, which spawn a beam of light on hit#{{Damage}} The beam deals 4x Isaac's damage"

	[C_ID .. 375] = "Miá»…n nhiá»…m vá»›i vá»¥ ná»•, táº¥n cÃ´ng sÃ³ng Ä‘Ã¡ vÃ  Ä‘Ã²n dáº­m cá»§a Mom vÃ  Satan#25% cÆ¡ há»™i pháº£n Ä‘áº¡n káº» Ä‘á»‹ch", -- Host Hat
	-- English: "Grants immunity to explosions, rock wave attacks and Mom and Satan's stomp attacks#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Mua váº­t pháº©m tá»« Cá»­a hÃ ng sáº½ lÃ m cá»­a hÃ ng tÃ¡i nháº­p hÃ ng ngay láº­p tá»©c", -- Restock
	-- Full old Desc: "Táº¡o 3 váº­t pháº©m nháº·t ngáº«u nhiÃªn#Mua váº­t pháº©m tá»« Cá»­a hÃ ng sáº½ lÃ m cá»­a hÃ ng tÃ¡i nháº­p hÃ ng ngay láº­p tá»©c"
	-- English: "Buying an item from a Shop restocks it instantly"

	[C_ID .. 377] = "Káº» Ä‘á»‹ch nhá»‡n khÃ´ng cÃ²n nháº¯m má»¥c tiÃªu hoáº·c gÃ¢y sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc cho Isaac", -- Bursting Sack
	-- English: "Spider enemies no longer target or deal contact damage to Isaac"

	[C_ID .. 378] = "Giá»¯ nÃºt báº¯n trong 2.35 giÃ¢y táº¡o má»™t Bom MÃ´ng Ä‘Ã£ tháº¯p sÃ¡ng", -- No. 2
	-- English: "Holding a fire button for 2.35 seconds spawns a lit Butt Bomb"

	[C_ID .. 380] = "{{Coin}} Cá»­a chá»‰ cáº§n má»™t chÃ¬a pháº£i má»Ÿ báº±ng Ä‘á»“ng xu thay vÃ¬ chÃ¬a khÃ³a", -- Pay To Play
	-- Full old Desc: "{{Coin}} +5 Äá»“ng xu#{{Coin}} Cá»­a chá»‰ cáº§n má»™t chÃ¬a pháº£i má»Ÿ báº±ng Ä‘á»“ng xu thay vÃ¬ chÃ¬a khÃ³a"
	-- English: "{{Coin}} Single-key doors must be opened with coins instead of keys"

	[C_ID .. 381] = "Cáº¥p má»™t váº­t pháº©m ngáº«u nhiÃªn á»Ÿ Ä‘áº§u láº§n cháº¡y tiáº¿p theo", -- Eden's Blessing
	-- Full old Desc: "â†‘ {{Tears}} +0.7 NÆ°á»›c máº¯t#Cáº¥p má»™t váº­t pháº©m ngáº«u nhiÃªn á»Ÿ Ä‘áº§u láº§n cháº¡y tiáº¿p theo"
	-- English: "Grants a random item at the start of the next run"

	[C_ID .. 382] = "CÃ³ thá»ƒ nÃ©m vÃ o káº» Ä‘á»‹ch Ä‘á»ƒ báº¯t chÃºng#Sá»­ dá»¥ng váº­t pháº©m sau khi báº¯t káº» Ä‘á»‹ch táº¡o ra chÃºng nhÆ° má»™t báº¡n Ä‘á»“ng hÃ nh thÃ¢n thiá»‡n", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns it as a friendly companion"

	[C_ID .. 383] = "TÃ¡ch táº¥t cáº£ nÆ°á»›c máº¯t hiá»‡n táº¡i cá»§a Isaac trÃªn mÃ n hÃ¬nh thÃ nh vÃ²ng trÃ²n 6 nÆ°á»›c máº¯t", -- Tear Detonator
	-- English: "Splits all of Isaac's tears currently on screen in a circle of 6 tears"

	[C_ID .. 384] = "{{Chargeable}} Lao vÃ  náº£y quanh phÃ²ng vá»›i tá»‘c Ä‘á»™ dá»±a trÃªn má»©c sáº¡c#GÃ¢y 5-90 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y tÃ¹y vÃ o tá»‘c Ä‘á»™", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-90 contact damage per second depending on speed"

	[C_ID .. 385] = "{{Coin}} Nháº·t Ä‘á»“ng xu gáº§n Ä‘Ã³#TÄƒng cáº¥p sau khi nháº­n 6, 12, vÃ  24 Ä‘á»“ng xu#Cáº¥p 2: CÆ¡ há»™i táº¡o váº­t pháº©m sau khi dá»n phÃ²ng#Cáº¥p 3: Báº¯n nÆ°á»›c máº¯t cÃ³ thá»ƒ táº¡o Ä‘á»“ng xu khi trÃºng#Cáº¥p 4: Äuá»•i theo káº» Ä‘á»‹ch, thá»‰nh thoáº£ng tháº£ bom, cÃ³ thá»ƒ táº¡o váº­t pháº©m khi nháº·t Ä‘á»“ng xu", -- Bumbo
	-- English: "{{Coin}} Picks up nearby coins#Levels up after getting 6, 12, and 24 coins#Lv2: Chance to spawn item after room clears#Lv3: Shoots tears that can spawn coins on hit#Lv4: Chases enemies, occasionally dropping bombs, can spawn item on coin pickup"

	[C_ID .. 386] = "Äá»•i láº¡i báº¥t ká»³ chÆ°á»›ng ngáº¡i váº­t nÃ o thÃ nh chÆ°á»›ng ngáº¡i váº­t ngáº«u nhiÃªn khÃ¡c (vÃ­ dá»¥: phÃ¢n, cháº­u, TNT, phÃ¢n Ä‘á», khá»‘i Ä‘Ã¡, v.v.)", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)"

	[C_ID .. 387] = "{{Slow}} báº¡n Ä‘á»“ng hÃ nh Ä‘Æ°á»£c bao quanh bá»Ÿi hÃ o quang lá»›n lÃ m cháº­m káº» Ä‘á»‹ch vÃ  Ä‘áº¡n trong Ä‘Ã³", -- Censer
	-- English: "{{Slow}} Familiar surrounded by a huge aura of light that slows down enemies and projectiles in it"

	[C_ID .. 388] = "{{Key}} Nháº·t chÃ¬a khÃ³a gáº§n Ä‘Ã³#{{Chest}} Táº¡o rÆ°Æ¡ng ngáº«u nhiÃªn Ä‘á»ƒ Ä‘á»•i láº¡i", -- Key Bum
	-- English: "{{Key}} Picks up nearby keys#{{Chest}} Spawns random chests in return"

	[C_ID .. 389] = "{{Rune}} Táº¡o má»™t rune ngáº«u nhiÃªn má»—i 5-6 phÃ²ng", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune every 5-6 rooms"

	[C_ID .. 390] = "Báº¯n nÆ°á»›c máº¯t Sacred Heart", -- Seraphim
	-- Full old Desc: "Báº¯n nÆ°á»›c máº¯t Sacred Heart#GÃ¢y 10 sÃ¡t thÆ°Æ¡ng má»—i nÆ°á»›c máº¯t"
	-- English: "Shoots Sacred Heart tears"

	[C_ID .. 391] = "{{Charm}} Nháº­n sÃ¡t thÆ°Æ¡ng mÃª hoáº·c táº¥t cáº£ káº» Ä‘á»‹ch trong phÃ²ng", -- Betrayal
	-- English: "{{Charm}} Taking damage charms all enemies in the room"

	[C_ID .. 392] = "Cáº¥p hiá»‡u á»©ng váº­t pháº©m hoÃ ng Ä‘áº¡o ngáº«u nhiÃªn má»—i táº§ng", -- Zodiac
	-- English: "Grants a random zodiac item effect every floor"

	[C_ID .. 393] = "{{Poison}} 15% cÆ¡ há»™i báº¯n nÆ°á»›c máº¯t Ä‘á»™c#{{Poison}} GÃ¢y Ä‘á»™c cho káº» Ä‘á»‹ch khi tiáº¿p xÃºc#{{BlackHeart}} Káº» Ä‘á»‹ch bá»‹ trÃºng Ä‘á»™c cÃ³ cÆ¡ há»™i tháº£ TrÃ¡i tim Äen khi cháº¿t", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Poisoned enemies have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "Isaac tá»± Ä‘á»™ng báº¯n nÆ°á»›c máº¯t vÃ o má»™t má»¥c tiÃªu Ä‘á» di Ä‘á»™ng trÃªn máº·t Ä‘áº¥t", -- Marked
	-- Full old Desc: "â†‘ {{Tears}} +0.7 NÆ°á»›c máº¯t#â†‘ {{Range}} +3.15 Táº§m báº¯n#â†‘ +0.3 Tá»‘c Ä‘á»™ rÆ¡i nÆ°á»›c máº¯t#Isaac tá»± Ä‘á»™ng báº¯n nÆ°á»›c máº¯t vÃ o má»™t má»¥c tiÃªu Ä‘á» di Ä‘á»™ng trÃªn máº·t Ä‘áº¥t"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground"

	[C_ID .. 395] = "{{Chargeable}} NÆ°á»›c máº¯t cá»§a Isaac Ä‘Æ°á»£c thay báº±ng má»™t vÃ²ng laze cÃ³ thá»ƒ sáº¡c#KÃ­ch thÆ°á»›c vÃ²ng tÄƒng theo má»©c sáº¡c", -- Tech X
	-- English: "{{Chargeable}} Isaac's tears are replaced by a chargeable laser ring#Ring size increases with charge amount"

	[C_ID .. 396] = "Táº¡o tá»‘i Ä‘a hai cá»•ng Ä‘á»ƒ di chuyá»ƒn giá»¯a chÃºng#CÃ³ thá»ƒ Ä‘áº·t á»Ÿ cÃ¡c phÃ²ng khÃ¡c nhau", -- Ventricle Razor
	-- English: "Creates up to two portals to travel between#Can be placed in different rooms"

	[C_ID .. 397] = "NÆ°á»›c máº¯t cá»§a Isaac luÃ´n di chuyá»ƒn dá»c theo má»™t tia sÃ¡ng phÃ­a trÆ°á»›c Isaac", -- Tractor Beam
	-- Full old Desc: "â†‘ {{Tears}} +0.5 NÆ°á»›c máº¯t#â†‘ {{Range}} +5.25 Táº§m báº¯n#â†‘ +0.5 Tá»‘c Ä‘á»™ rÆ¡i nÆ°á»›c máº¯t#â†‘ {{Shotspeed}} +0.16 Tá»‘c Ä‘á»™ Ä‘áº¡n#NÆ°á»›c máº¯t cá»§a Isaac luÃ´n di chuyá»ƒn dá»c theo má»™t tia sÃ¡ng phÃ­a trÆ°á»›c Isaac"
	-- English: "Isaac's tears always travel along a beam of light in front of him"

	[C_ID .. 398] = "NÆ°á»›c máº¯t cÃ³ thá»ƒ thu nhá» káº» Ä‘á»‹ch#Káº» Ä‘á»‹ch bá»‹ thu nhá» cÃ³ thá»ƒ bá»‹ nghiá»n nÃ¡t vÃ  giáº¿t báº±ng cÃ¡ch Ä‘i qua chÃºng", -- God's Flesh
	-- English: "{{Shrink}} Tears can shrink enemies#Shrunken enemies can be crushed and killed by walking over them"

	[C_ID .. 399] = "{{BlackHeart}} Káº» Ä‘á»‹ch bá»‹ giáº¿t bá»Ÿi vÃ²ng Ä‘en cÃ³ 5% cÆ¡ há»™i tháº£ TrÃ¡i tim Äen", -- Maw of the Void
	-- Full old Desc: "â†‘ {{Damage}} +1 SÃ¡t thÆ°Æ¡ng#{{Chargeable}} Báº¯n nÆ°á»›c máº¯t trong 2.35 giÃ¢y vÃ  tháº£ nÃºt báº¯n táº¡o má»™t vÃ²ng brimstone Ä‘en quanh Isaac#NÃ³ gÃ¢y 30x sÃ¡t thÆ°Æ¡ng cá»§a Isaac trong 2 giÃ¢y#{{BlackHeart}} Káº» Ä‘á»‹ch bá»‹ giáº¿t bá»Ÿi vÃ²ng Ä‘en cÃ³ 5% cÆ¡ há»™i tháº£ TrÃ¡i tim Äen"
	-- English: "{{Chargeable}} Shooting tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the black ring have a 5% chance to drop a Black Heart"

	[C_ID .. 400] = "Isaac cáº§m má»™t ngá»n giÃ¡o phÃ­a trÆ°á»›c#{{Fear}} Ngá»n giÃ¡o gÃ¢y gáº¥p Ä‘Ã´i sÃ¡t thÆ°Æ¡ng cá»§a Isaac vÃ  cÃ³ thá»ƒ lÃ m káº» Ä‘á»‹ch sá»£ hÃ£i khi tiáº¿p xÃºc", -- Spear of Destiny
	-- English: "Isaac holds a spear in front of him#{{Fear}} The spear deals twice his damage and can fear enemies on contact"

	[C_ID .. 401] = "25% cÆ¡ há»™i báº¯n nÆ°á»›c máº¯t bom dÃ­nh#NÆ°á»›c máº¯t bom dÃ­nh khÃ´ng gÃ¢y sÃ¡t thÆ°Æ¡ng khi trÃºng vÃ  ná»• sau vÃ i giÃ¢y", -- Explosivo
	-- English: "25% chance to shoot sticky bomb tears#Sticky bomb tears do not deal damage on hit and explode after a few seconds"

	[C_ID .. 402] = "Táº¥t cáº£ váº­t pháº©m Ä‘Æ°á»£c chá»n tá»« nhÃ³m váº­t pháº©m ngáº«u nhiÃªn", -- Chaos
	-- Full old Desc: "Táº¥t cáº£ váº­t pháº©m Ä‘Æ°á»£c chá»n tá»« nhÃ³m váº­t pháº©m ngáº«u nhiÃªn#Táº¡o 1-6 váº­t pháº©m nháº·t ngáº«u nhiÃªn"
	-- English: "All items are chosen from random item pools"

	[C_ID .. 403] = "Hiá»ƒn thá»‹ sÃ¡t thÆ°Æ¡ng nÆ°á»›c máº¯t vÃ  thanh mÃ¡u cá»§a táº¥t cáº£ káº» Ä‘á»‹ch#GÃ¢y hiá»‡u á»©ng tráº¡ng thÃ¡i ngáº«u nhiÃªn cho káº» Ä‘á»‹ch khi tiáº¿p xÃºc#Ngáº«u nhiÃªn táº¡o pin", -- Spider Mod
	-- English: "Displays tear damage and health bars of all enemies#Inflicts random status effects to enemies on contact#Randomly spawns batteries"

	[C_ID .. 404] = "Khi bá»‹ trÃºng, 10% cÆ¡ há»™i Ä‘Ã¡nh ráº¯m vÃ  {{Charm}} mÃª hoáº·c, {{Poison}} gÃ¢y Ä‘á»™c hoáº·c Ä‘áº©y lÃ¹i káº» Ä‘á»‹ch", -- Farting Baby
	-- Full old Desc: "Cháº·n Ä‘áº¡n#Khi bá»‹ trÃºng, 10% cÆ¡ há»™i Ä‘Ã¡nh ráº¯m vÃ  {{Charm}} mÃª hoáº·c, {{Poison}} gÃ¢y Ä‘á»™c hoáº·c Ä‘áº©y lÃ¹i káº» Ä‘á»‹ch"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies"

	[C_ID .. 405] = "Náº£y quanh phÃ²ng", -- GB Bug
	-- Full old Desc: "Náº£y quanh phÃ²ng#GÃ¢y 120 sÃ¡t thÆ°Æ¡ng má»—i giÃ¢y vÃ  Ã¡p dá»¥ng hiá»‡u á»©ng tráº¡ng thÃ¡i ngáº«u nhiÃªn cho káº» Ä‘á»‹ch khi tiáº¿p xÃºc"
	-- English: "Bounces around the room#Applies random status effects to enemies on contact"

	[C_ID .. 406] = "NhÃ¢n cÃ¡c chá»‰ sá»‘ sÃ¡t thÆ°Æ¡ng, nÆ°á»›c máº¯t, táº§m báº¯n vÃ  tá»‘c Ä‘á»™ cá»§a Isaac tá»« x0.5 Ä‘áº¿n x2#Há»‡ sá»‘ Ä‘Æ°á»£c Ä‘á»•i láº¡i má»—i láº§n sá»­ dá»¥ng", -- D8
	-- English: "Multiplies Isaac's damage, tears, range and speed stats by between x0.5 and x2#The multipliers are rerolled each use"

	[C_ID .. 407] = "â†‘ TÄƒng má»™t chá»‰ sá»‘ cá»§a Isaac tÃ¹y thuá»™c vÃ o mÃ u sáº¯c cá»§a hÃ o quang#Nháº­n sÃ¡t thÆ°Æ¡ng loáº¡i bá» hiá»‡u á»©ng, vÃ  cho Isaac hiá»‡u á»©ng má»›i á»Ÿ phÃ²ng tiáº¿p theo#{{ColorYellow}}VÃ ng{{CR}} = â†‘ {{Speed}} +0.5 Tá»‘c Ä‘á»™#{{ColorBlue}}Xanh dÆ°Æ¡ng{{CR}} = â†‘ {{Tears}} -4 Äá»™ trá»… nÆ°á»›c máº¯t#{{ColorRed}}Äá»{{CR}} = â†‘ {{Damage}} +4 SÃ¡t thÆ°Æ¡ng#{{ColorOrange}}Cam{{CR}} = â†‘ {{Range}} +7.5 Táº§m báº¯n, â†‘ +1 Tá»‘c Ä‘á»™ rÆ¡i nÆ°á»›c máº¯t", -- Purity
	-- English: "â†‘ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and gives Isaac a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = â†‘ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = â†‘ {{Tears}} -4 Tear delay#{{ColorRed}}Red{{CR}} = â†‘ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = â†‘ {{Range}} +7.5 Range, â†‘ +1 Tear height"

	[C_ID .. 408] = "Nháº­n sÃ¡t thÆ°Æ¡ng táº¡o má»™t vÃ²ng brimstone Ä‘en quanh Isaac#NÃ³ gÃ¢y 30x sÃ¡t thÆ°Æ¡ng cá»§a Isaac trong 2 giÃ¢y#{{BlackHeart}} Káº» Ä‘á»‹ch bá»‹ giáº¿t bá»Ÿi vÃ²ng cÃ³ 15% cÆ¡ há»™i tháº£ TrÃ¡i tim Äen", -- Athame
	-- English: "Taking damage creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the ring have a 15% chance to drop a Black Heart"

	[C_ID .. 409] = "{{EmptyHeart}} Khi Isaac khÃ´ng cÃ³ TrÃ¡i tim Äá»:#Bay Ä‘Æ°á»£c#Cá»© 40 giÃ¢y trong phÃ²ng cÃ³ káº» Ä‘á»‹ch, nháº­n lÃ¡ cháº¯n trong 10 giÃ¢y", -- Empty Vessel
	-- Full old Desc: "{{BlackHeart}} +2 TrÃ¡i tim Äen#{{EmptyHeart}} Khi Isaac khÃ´ng cÃ³ TrÃ¡i tim Äá»:#Bay Ä‘Æ°á»£c#Cá»© 40 giÃ¢y trong phÃ²ng cÃ³ káº» Ä‘á»‹ch, nháº­n lÃ¡ cháº¯n trong 10 giÃ¢y"
	-- English: "{{EmptyHeart}} When Isaac has no Red Hearts:#Flight#Every 40 seconds while in a hostile room, gain a shield for 10 seconds"

	[C_ID .. 410] = "Con máº¯t di chuyá»ƒn tháº³ng vÃ  báº¯n nÆ°á»›c máº¯t cÃ¹ng hÆ°á»›ng vá»›i Isaac", -- Evil Eye
	-- Full old Desc: "3.33% cÆ¡ há»™i báº¯n má»™t con máº¯t#{{Luck}} 10% cÆ¡ há»™i á»Ÿ 20 may máº¯n#Con máº¯t di chuyá»ƒn tháº³ng vÃ  báº¯n nÆ°á»›c máº¯t cÃ¹ng hÆ°á»›ng vá»›i Isaac"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot an eye#The eye moves in a straight line and shoots tears in the same direction as Isaac"

	[C_ID .. 411] = "â†‘ {{Damage}} +0.5 SÃ¡t thÆ°Æ¡ng cho má»—i káº» Ä‘á»‹ch giáº¿t trong phÃ²ng#Tá»‘i Ä‘a +5 SÃ¡t thÆ°Æ¡ng sau 10 láº§n giáº¿t", -- Lusty Blood
	-- English: "â†‘ {{Damage}} +0.5 Damage for each enemy killed in the room#Caps at +5 Damage after 10 kills"

	[C_ID .. 412] = "Nháº­n sÃ¡t thÆ°Æ¡ng 15 láº§n táº¡o má»™t báº¡n Ä‘á»“ng hÃ nh quá»· vÄ©nh viá»…n#Sau hai báº¡n Ä‘á»“ng hÃ nh, cáº§n 30 láº§n thay vÃ¬ 15#Tá»‘i Ä‘a 4 báº¡n Ä‘á»“ng hÃ nh", -- Cambion Conception
	-- English: "Taking damage 15 times spawns a permanent demon familiar#After two familiars, it takes 30 instead of 15#Caps at 4 familiars"

	[C_ID .. 413] = "Nháº·t 15 trÃ¡i tim táº¡o má»™t báº¡n Ä‘á»“ng hÃ nh thiÃªn tháº§n vÄ©nh viá»…n#Tá»‘i Ä‘a 5 báº¡n Ä‘á»“ng hÃ nh#{{SoulHeart}} Náº¿u Ä‘Ã£ cÃ³ táº¥t cáº£ báº¡n Ä‘á»“ng hÃ nh, táº¡o má»™t TrÃ¡i tim Linh há»“n thay tháº¿", -- Immaculate Conception
	-- English: "Picking up 15 hearts spawns a permanent angelic familiar#Caps at 5 familiars#{{SoulHeart}} If all familiars have been granted, spawns a Soul Heart instead"

	[C_ID .. 414] = "{{TreasureRoom}} Cho phÃ©p Isaac chá»n giá»¯a 2 váº­t pháº©m trong phÃ²ng kho bÃ¡u", -- More Options
	-- English: "{{TreasureRoom}} Allows Isaac to choose between 2 items in treasure rooms"

	[C_ID .. 415] = "Náº¿u Isaac khÃ´ng cÃ³ há»™p tim bá»‹ tá»•n thÆ°Æ¡ng:#{VAR:EFFECTLIST}#Nháº­n báº¥t ká»³ sÃ¡t thÆ°Æ¡ng nÃ o loáº¡i bá» hiá»‡u á»©ng trong phÃ²ng", -- Crown Of Light
	-- Full old Desc: "{{SoulHeart}} +2 TrÃ¡i tim Linh há»“n#Náº¿u Isaac khÃ´ng cÃ³ há»™p tim bá»‹ tá»•n thÆ°Æ¡ng:#â†‘ {{Damage}} x2 Há»‡ sá»‘ sÃ¡t thÆ°Æ¡ng#â†‘ {{Range}} +5.25 Táº§m báº¯n#â†‘ +0.5 Tá»‘c Ä‘á»™ rÆ¡i nÆ°á»›c máº¯t#â†“ {{Shotspeed}} -0.3 Tá»‘c Ä‘á»™ Ä‘áº¡n#Nháº­n báº¥t ká»³ sÃ¡t thÆ°Æ¡ng nÃ o loáº¡i bá» hiá»‡u á»©ng trong phÃ²ng"
	-- English: "If Isaac has no damaged heart containers:#{VAR:EFFECTLIST}#Taking any damage removes the effect for the room"

	[C_ID .. 416] = "Cho phÃ©p Isaac mang hai rune/lÃ¡ bÃ i/viÃªn thuá»‘c", -- Deep Pockets
	-- English: "Allows Isaac to carry two runes/cards/pills"

	[C_ID .. 417] = "Náº£y quanh phÃ²ng bao quanh bá»Ÿi hÃ o quang gÃ¢y sÃ¡t thÆ°Æ¡ng gÃ¢y 1.29x sÃ¡t thÆ°Æ¡ng cá»§a Isaac má»—i giÃ¢y#â†‘ {{Damage}} x1.5 Há»‡ sá»‘ sÃ¡t thÆ°Æ¡ng khi Ä‘á»©ng trong hÃ o quang", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 1.29x Isaac's damage per second#â†‘ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 418] = "Má»—i nÆ°á»›c máº¯t cá»§a Isaac nháº­n má»™t hiá»‡u á»©ng khÃ¡c nhau", -- Fruit Cake
	-- English: "Each one of Isaac's tears gets a different effect"

	[C_ID .. 419] = "Dá»‹ch chuyá»ƒn Isaac Ä‘áº¿n má»™t phÃ²ng chÆ°a Ä‘Æ°á»£c dá»n", -- Teleport 2.0
	-- Full old Desc: "Dá»‹ch chuyá»ƒn Isaac Ä‘áº¿n má»™t phÃ²ng chÆ°a Ä‘Æ°á»£c dá»n#Thá»© tá»± Æ°u tiÃªn: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"
	-- English: "Teleports Isaac to a room that has not been cleared yet#Hierarchy: {VAR:TEXT}"

	[C_ID .. 420] = "Äi theo vÃ²ng trÃ²n váº½ má»™t ngÃ´i sao nÄƒm cÃ¡nh trÃªn sÃ n, gÃ¢y 130 sÃ¡t thÆ°Æ¡ng trong 4 giÃ¢y", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds"

	[C_ID .. 421] = "{{Charm}} MÃª hoáº·c vÃ  gÃ¢y 5 sÃ¡t thÆ°Æ¡ng cho táº¥t cáº£ káº» Ä‘á»‹ch á»Ÿ gáº§n", -- Kidney Bean
	-- English: "{{Charm}} Charms and deals 5 damage to all enemies in close range"

	[C_ID .. 422] = "ÄÆ°a Isaac trá»Ÿ láº¡i phÃ²ng trÆ°á»›c Ä‘Ã³ vÃ  Ä‘áº£o ngÆ°á»£c táº¥t cáº£ hÃ nh Ä‘á»™ng Ä‘Ã£ thá»±c hiá»‡n trong phÃ²ng sá»­ dá»¥ng váº­t pháº©m", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in"

	[C_ID .. 423] = "Bao quanh Isaac báº±ng má»™t váº§ng hÃ o quang lá»›n gÃ¢y sÃ¡t thÆ°Æ¡ng cá»§a Isaac khi tiáº¿p xÃºc má»—i giÃ¢y#CÆ¡ há»™i pháº£n Ä‘áº¡n káº» Ä‘á»‹ch", -- Circle of Protection
	-- English: "Surrounds Isaac with a large halo that deals his damage on contact per second#Chance to reflect enemy projectiles"

	[C_ID .. 424] = "Váº­t pháº©m nháº·t cÃ³ cÆ¡ há»™i bá»‹ thay báº±ng {{GrabBag}}tÃºi:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Táº¡o má»™t tÃºi", -- Sack Head
	-- English: "Pickups have a chance to be replaced with a {{GrabBag}}sack:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Spawns a sack"

	[C_ID .. 425] = "{{Slow}} Táº¡o má»™t hÃ¬nh nÃ³n Ã¡nh sÃ¡ng lÃ m cháº­m phÃ­a trÆ°á»›c Isaac", -- Night Light
	-- English: "{{Slow}} Spawns a slowing cone of light in front of Isaac"

	[C_ID .. 427] = "Táº¡o má»™t thÃ¹ng TNT cÃ³ thá»ƒ Ä‘áº©y#Sá»­ dá»¥ng váº­t pháº©m láº§n thá»© hai trong cÃ¹ng phÃ²ng kÃ­ch ná»• thÃ¹ng tá»« xa", -- Mine Crafter
	-- English: "Spawns a pushable TNT barrel#Using the item a second time in the same room remotely detonates the barrel"

	[C_ID .. 429] = "{{Coin}} TrÃºng káº» Ä‘á»‹ch báº±ng nÆ°á»›c máº¯t cÃ³ 5% cÆ¡ há»™i táº¡o má»™t Penny", -- Head of the Keeper
	-- English: "{{Coin}} Hitting an enemy with a tear has a 5% chance to spawn a Penny"

	[C_ID .. 430] = "Báº¯n nÆ°á»›c máº¯t vÃ o káº» Ä‘á»‹ch gáº§n Ä‘Ã³ gÃ¢y sÃ¡t thÆ°Æ¡ng cá»§a Isaac", -- Papa Fly
	-- Full old Desc: "Báº¯t chÆ°á»›c chuyá»ƒn Ä‘á»™ng cá»§a Isaac sau 1 giÃ¢y#Báº¯n nÆ°á»›c máº¯t vÃ o káº» Ä‘á»‹ch gáº§n Ä‘Ã³ gÃ¢y sÃ¡t thÆ°Æ¡ng cá»§a Isaac"
	-- English: "{{Damage}} Shoots tears at nearby enemies that deal Isaac's damage"

	[C_ID .. 431] = "NÆ°á»›c máº¯t Ä‘i qua nÃ³ Ä‘Æ°á»£c nhÃ¢n Ä‘Ã´i vÃ  tÄƒng táº§m báº¯n + Tá»‘c Ä‘á»™ Ä‘áº¡n", -- Multidimensional Baby
	-- Full old Desc: "Báº¯t chÆ°á»›c chuyá»ƒn Ä‘á»™ng cá»§a Isaac sau 2 giÃ¢y#NÆ°á»›c máº¯t Ä‘i qua nÃ³ Ä‘Æ°á»£c nhÃ¢n Ä‘Ã´i vÃ  tÄƒng táº§m báº¯n + Tá»‘c Ä‘á»™ Ä‘áº¡n"
	-- English: "Tears that pass through it are doubled and gain a range + shot speed boost"

	[C_ID .. 432] = "{{Charm}} Bom cá»§a Isaac cÃ³ 25% cÆ¡ há»™i tháº£ váº­t pháº©m nháº·t ngáº«u nhiÃªn vÃ  15% cÆ¡ há»™i mÃª hoáº·c káº» Ä‘á»‹ch khi ná»•", -- Glitter Bombs
	-- Full old Desc: "{{Bomb}} +5 Bom#{{Charm}} Bom cá»§a Isaac cÃ³ 25% cÆ¡ há»™i tháº£ váº­t pháº©m nháº·t ngáº«u nhiÃªn vÃ  15% cÆ¡ há»™i mÃª hoáº·c káº» Ä‘á»‹ch khi ná»•"
	-- English: "{{Charm}} Isaac's bombs have a 25% chance to drop a random pickup and a 15% chance to charm enemies when they explode"

	[C_ID .. 433] = "{{Fear}} Nháº­n sÃ¡t thÆ°Æ¡ng lÃ m táº¥t cáº£ káº» Ä‘á»‹ch trong phÃ²ng sá»£ hÃ£i vÃ  táº¡o má»™t con sáº¡c Ä‘en thÃ¢n thiá»‡n", -- My Shadow
	-- Full old Desc: "{{Fear}} Nháº­n sÃ¡t thÆ°Æ¡ng lÃ m táº¥t cáº£ káº» Ä‘á»‹ch trong phÃ²ng sá»£ hÃ£i vÃ  táº¡o má»™t con sáº¡c Ä‘en thÃ¢n thiá»‡n#Con sáº¡c gÃ¢y 5 sÃ¡t thÆ°Æ¡ng má»—i giÃ¢y"
	-- English: "{{Fear}} Taking damage fears all enemies in the room and spawns a friendly black charger"

	[C_ID .. 434] = "Giáº¿t káº» Ä‘á»‹ch thÃªm má»™t con ruá»“i xanh vÃ o lá», tá»‘i Ä‘a 20 con ruá»“i#Sá»­ dá»¥ng váº­t pháº©m tháº£ táº¥t cáº£ con ruá»“i", -- Jar of Flies
	-- English: "Killing an enemy adds a blue fly to the jar, up to 20 flies#Using the item releases all the flies"

	[C_ID .. 435] = "Báº¯n 4 nÆ°á»›c máº¯t theo hÃ¬nh chá»¯ tháº­p", -- Lil Loki
	-- Full old Desc: "Báº¯n 4 nÆ°á»›c máº¯t theo hÃ¬nh chá»¯ tháº­p#GÃ¢y 3.5 sÃ¡t thÆ°Æ¡ng má»—i nÆ°á»›c máº¯t"
	-- English: "Shoots 4 tears in a cross pattern"

	[C_ID .. 436] = "{{Tears}} Nháº­n sÃ¡t thÆ°Æ¡ng tÄƒng NÆ°á»›c máº¯t trong suá»‘t thá»i gian trong phÃ²ng", -- Milk!
	-- English: "{{Tears}} Taking damage grants a Tears up for the duration of the room"

	[C_ID .. 437] = "Khá»Ÿi Ä‘á»™ng láº¡i phÃ²ng vÃ  lÃ m káº» Ä‘á»‹ch há»“i sinh#CÃ³ thá»ƒ dÃ¹ng Ä‘á»ƒ nháº­n nhiá»u pháº§n thÆ°á»Ÿng dá»n phÃ²ng tá»« má»™t phÃ²ng#Náº¿u dÃ¹ng sau tráº­n Ä‘áº¥u vá»›i Greed, Ä‘á»•i phÃ²ng thÃ nh Cá»­a hÃ ng/PhÃ²ng BÃ­ máº­t thÃ´ng thÆ°á»ng", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room#If used after a Greed fight, rerolls the room into a normal Shop/Secret Room"

	[C_ID .. 439] = "{{Trinket}} NhÃ¢n Ä‘Ã´i hiá»‡u á»©ng trang sá»©c", -- Mom's Box
	-- Full old Desc: "{{Trinket}} Táº¡o má»™t mÃ³n trang sá»©c ngáº«u nhiÃªn#Khi cáº§m:#â†‘ {{Luck}} +1 May máº¯n#{{Trinket}} NhÃ¢n Ä‘Ã´i hiá»‡u á»©ng trang sá»©c"
	-- English: "{{Trinket}} Doubles trinket effects"

	[C_ID .. 440] = "Isaac thá»‰nh thoáº£ng ngá»«ng báº¯n vÃ  sáº¡c má»™t Ä‘Ã²n táº¥n cÃ´ng tháº£ ra má»™t loáº¡t nÆ°á»›c máº¯t vÃ  má»™t viÃªn sá»i tháº­n", -- Kidney Stone
	-- Full old Desc: "â†‘ +2 Tá»‘c Ä‘á»™ rÆ¡i nÆ°á»›c máº¯t#â†“ {{Speed}} -0.2 Tá»‘c Ä‘á»™#â†“ {{Range}} -17 Táº§m báº¯n#Isaac thá»‰nh thoáº£ng ngá»«ng báº¯n vÃ  sáº¡c má»™t Ä‘Ã²n táº¥n cÃ´ng tháº£ ra má»™t loáº¡t nÆ°á»›c máº¯t vÃ  má»™t viÃªn sá»i tháº­n"
	-- English: "Isaac occasionally stops firing and charges an attack that releases a burst of tears and a kidney stone"

	[C_ID .. 441] = "{{Timer}} Báº¯n má»™t tia mÃ¡u Mega Satan khá»•ng lá»“ trong 15 giÃ¢y#Tia kÃ©o dÃ i giá»¯a cÃ¡c phÃ²ng vÃ  táº§ng", -- Mega Blast
	-- English: "{{Timer}} Fires a huge Mega Satan blood beam for 15 seconds#The beam persists between rooms and floors"

	[C_ID .. 442] = "Khi á»Ÿ 1 TrÃ¡i tim Äá» Ä‘áº§y:#{VAR:EFFECTLIST}", -- Dark Prince's Crown
	-- Full old Desc: "Khi á»Ÿ 1 TrÃ¡i tim Äá» Ä‘áº§y:#â†‘ {{Tears}} +0.75 NÆ°á»›c máº¯t#â†‘ {{Range}} +1.5 Táº§m báº¯n#â†‘ +1 Tá»‘c Ä‘á»™ rÆ¡i nÆ°á»›c máº¯t#â†‘ {{Shotspeed}} +0.2 Tá»‘c Ä‘á»™ Ä‘áº¡n"
	-- English: "While at 1 full Red Heart:#{VAR:EFFECTLIST}"

	[C_ID .. 444] = "Isaac báº¯n má»™t loáº¡t nÆ°á»›c máº¯t má»—i 15 nÆ°á»›c máº¯t#NÆ°á»›c máº¯t trong loáº¡t gÃ¢y gáº¥p Ä‘Ã´i sÃ¡t thÆ°Æ¡ng", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears#Tears in the cluster deal double damage"

	[C_ID .. 445] = "{{LadderRoom}} Má»™t con chÃ³ sá»§a trong phÃ²ng cÃ³ khÃ´ng gian bÃ² dÆ°á»›i Ä‘Ã¡", -- Dog Tooth
	-- Full old Desc: "â†‘ {{Speed}} +0.1 Tá»‘c Ä‘á»™#â†‘ {{Damage}} +0.3 SÃ¡t thÆ°Æ¡ng#{{SecretRoom}}{{SuperSecretRoom}} Má»™t con sÃ³i tru trong phÃ²ng liá»n ká» vá»›i PhÃ²ng BÃ­ máº­t/PhÃ²ng BÃ­ máº­t SiÃªu cáº¥p#{{LadderRoom}} Má»™t con chÃ³ sá»§a trong phÃ²ng cÃ³ khÃ´ng gian bÃ² dÆ°á»›i Ä‘Ã¡"
	-- English: "{{SecretRoom}}{{SuperSecretRoom}} A wolf howls in rooms adjacent to a Secret/Super Secret Room#{{LadderRoom}} A dog barks in rooms with a crawlspace under a rock"

	[C_ID .. 446] = "{{Poison}} Khi báº¯n, Isaac Ä‘Æ°á»£c bao quanh bá»Ÿi hÃ o quang xanh gÃ¢y Ä‘á»™c cho káº» Ä‘á»‹ch", -- Dead Tooth
	-- English: "{{Poison}} While firing, Isaac is surrounded by a green aura that poisons enemies"

	[C_ID .. 447] = "Báº¯n khÃ´ng ngá»«ng trong 7.5 giÃ¢y táº¡o má»™t Ä‘Ã¡m mÃ¢y phÃ¢n#ÄÃ¡m mÃ¢y gÃ¢y sÃ¡t thÆ°Æ¡ng cá»§a Isaac 5 láº§n má»—i giÃ¢y#ÄÃ¡m mÃ¢y kÃ©o dÃ i 15 giÃ¢y vÃ  cÃ³ thá»ƒ di chuyá»ƒn báº±ng cÃ¡ch báº¯n vÃ o nÃ³", -- Linger Bean
	-- English: "Firing without pause for 7.5 seconds spawns a poop cloud#The cloud deals Isaac's damage 5 times a second#The cloud lasts 15 seconds and can be moved by shooting it"

	[C_ID .. 448] = "Khi nháº­n sÃ¡t thÆ°Æ¡ng:#{{Heart}} 25% cÆ¡ há»™i táº¡o TrÃ¡i tim Äá»#{{Collectible214}} 10% cÆ¡ há»™i nháº­n â†‘ {{Range}} +5 Táº§m báº¯n vÃ  Ä‘á»ƒ láº¡i vá»‡t cháº¥t lá»ng mÃ¡u trong phÃ²ng", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{Collectible214}} 10% chance to get â†‘ {{Range}} +5 Range and leave a trail of blood creep for the room"

	[C_ID .. 449] = "{{Confusion}} Äáº¡n káº» Ä‘á»‹ch cÃ³ 25% cÆ¡ há»™i bá»‹ pháº£n láº¡i thÃ nh nÆ°á»›c máº¯t gÃ¢y choÃ¡ng", -- Metal Plate
	-- Full old Desc: "{{SoulHeart}} +1 TrÃ¡i tim Linh há»“n#{{Confusion}} Äáº¡n káº» Ä‘á»‹ch cÃ³ 25% cÆ¡ há»™i bá»‹ pháº£n láº¡i thÃ nh nÆ°á»›c máº¯t gÃ¢y choÃ¡ng"
	-- English: "{{Confusion}} Enemy bullets have a 25% chance to be reflected as concussive tears"

	[C_ID .. 450] = "Má»—i 20 nÆ°á»›c máº¯t, Isaac báº¯n má»™t nÆ°á»›c máº¯t Ä‘á»“ng xu gÃ¢y gáº¥p Ä‘Ã´i sÃ¡t thÆ°Æ¡ng#Káº» Ä‘á»‹ch trÃºng Ä‘á»“ng xu bá»‹ hÃ³a Ä‘Ã¡ vÃ  biáº¿n thÃ nh vÃ ng#{{Coin}} Giáº¿t káº» Ä‘á»‹ch vÃ ng tháº£ 1-4 Ä‘á»“ng xu#{{Warning}} Báº¯n nÆ°á»›c máº¯t Ä‘á»“ng xu tá»‘n 1 Ä‘á»“ng xu", -- Eye of Greed
	-- English: "Every 20 tears, Isaac shoots a coin tear that deals double damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-4 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "{{Card}} Hiá»‡u á»©ng lÃ¡ bÃ i Ä‘Æ°á»£c nhÃ¢n Ä‘Ã´i hoáº·c tÄƒng cÆ°á»ng", -- Tarot Cloth
	-- Full old Desc: "{{Card}} Táº¡o má»™t lÃ¡ bÃ i#{{Card}} Hiá»‡u á»©ng lÃ¡ bÃ i Ä‘Æ°á»£c nhÃ¢n Ä‘Ã´i hoáº·c tÄƒng cÆ°á»ng"
	-- English: "{{Card}} Card effects are doubled or enhanced"

	[C_ID .. 452] = "Nháº­n sÃ¡t thÆ°Æ¡ng báº¯n 10 nÆ°á»›c máº¯t theo vÃ²ng trÃ²n quanh Isaac#NÆ°á»›c máº¯t gÃ¢y sÃ¡t thÆ°Æ¡ng cá»§a Isaac + 25", -- Varicose Veins
	-- English: "Taking damage shoots 10 tears in a circle around Isaac#The tears deal Isaac's damage + 25"

	[C_ID .. 453] = "NÆ°á»›c máº¯t vá»¡ thÃ nh 1-3 máº£nh xÆ°Æ¡ng nhá» khi va cháº¡m báº¥t cá»© thá»© gÃ¬", -- Compound Fracture
	-- Full old Desc: "â†‘ {{Range}} +1.5 Táº§m báº¯n#â†‘ +1 Tá»‘c Ä‘á»™ rÆ¡i nÆ°á»›c máº¯t#NÆ°á»›c máº¯t vá»¡ thÃ nh 1-3 máº£nh xÆ°Æ¡ng nhá» khi va cháº¡m báº¥t cá»© thá»© gÃ¬"
	-- English: "Tears shatter into 1-3 small bone shards upon hitting anything"

	[C_ID .. 454] = "Táº¡o má»™t {{Rune}} rune, {{Card}} lÃ¡ bÃ i hoáº·c {{Pill}} viÃªn thuá»‘c khi nháº·t#Cho phÃ©p Isaac mang 2 rune/lÃ¡ bÃ i/viÃªn thuá»‘c", -- Polydactyly
	-- English: "Spawns a {{Rune}} rune, {{Card}} card or {{Pill}} pill on pickup#Allows Isaac to carry 2 runes/cards/pills"

	[C_ID .. 455] = "{{Luck}} Táº¡o má»™t Äá»“ng xu May máº¯n", -- Dad's Lost Coin
	-- Full old Desc: "â†‘ {{Range}} +1.5 Táº§m báº¯n#â†‘ +1 Tá»‘c Ä‘á»™ rÆ¡i nÆ°á»›c máº¯t#{{Luck}} Táº¡o má»™t Äá»“ng xu May máº¯n"
	-- English: "{{Luck}} Spawns a Lucky Penny"

	[C_ID .. 457] = "20% cÆ¡ há»™i vÃ´ hiá»‡u hÃ³a sÃ¡t thÆ°Æ¡ng nháº­n Ä‘Æ°á»£c", -- Cone Head
	-- Full old Desc: "{{SoulHeart}} +1 TrÃ¡i tim Linh há»“n#20% cÆ¡ há»™i vÃ´ hiá»‡u hÃ³a sÃ¡t thÆ°Æ¡ng nháº­n Ä‘Æ°á»£c"
	-- English: "20% chance to negate damage taken"

	[C_ID .. 458] = "{{Trinket}} Cho phÃ©p Isaac mang 2 mÃ³n trang sá»©c", -- Belly Button
	-- Full old Desc: "{{Trinket}} Cho phÃ©p Isaac mang 2 mÃ³n trang sá»©c#{{Trinket}} Táº¡o má»™t mÃ³n trang sá»©c ngáº«u nhiÃªn"
	-- English: "{{Trinket}} Allows Isaac to carry 2 trinkets"

	[C_ID .. 459] = "20% cÆ¡ há»™i báº¯n má»™t cá»¥c nÆ°á»›c mÅ©i dÃ­nh#{{Luck}} KhÃ´ng bá»‹ áº£nh hÆ°á»Ÿng bá»Ÿi may máº¯n", -- Sinus Infection
	-- Full old Desc: "20% cÆ¡ há»™i báº¯n má»™t cá»¥c nÆ°á»›c mÅ©i dÃ­nh#{{Damage}} NÆ°á»›c mÅ©i gÃ¢y sÃ¡t thÆ°Æ¡ng cá»§a Isaac má»—i giÃ¢y vÃ  dÃ­nh trong 60 giÃ¢y#{{Luck}} KhÃ´ng bá»‹ áº£nh hÆ°á»Ÿng bá»Ÿi may máº¯n"
	-- English: "20% chance to shoot a sticky booger#{{Damage}} Boogers deal Isaac's damage once a second and stick for {VAR:1} seconds#{{Luck}} Not affected by luck"

	[C_ID .. 460] = "{{Confusion}} 5% cÆ¡ há»™i báº¯n nÆ°á»›c máº¯t gÃ¢y choÃ¡ng#LÃ m mÃ n hÃ¬nh tá»‘i hÆ¡n má»™t chÃºt", -- Glaucoma
	-- English: "{{Confusion}} 5% chance to shoot concussive tears#Makes the screen slightly darker"

	[C_ID .. 461] = "{{Slow}} TÃºi trá»©ng táº¡o cháº¥t lá»ng lÃ m cháº­m vÃ  má»™t con nhá»‡n hoáº·c ruá»“i xanh khi trÃºng", -- Parasitoid
	-- Full old Desc: "15% cÆ¡ há»™i báº¯n tÃºi trá»©ng#{{Luck}} 50% cÆ¡ há»™i á»Ÿ 5 may máº¯n#{{Slow}} TÃºi trá»©ng táº¡o cháº¥t lá»ng lÃ m cháº­m vÃ  má»™t con nhá»‡n hoáº·c ruá»“i xanh khi trÃºng"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot egg sacks#{{Slow}} Egg sacks spawn slowing creep and a blue spider or fly on hit"

	[C_ID .. 462] = "TrÃºng káº» Ä‘á»‹ch lÃ m nÆ°á»›c máº¯t tá»± dáº«n Ä‘Æ°á»ng vÃ  tÄƒng gáº¥p Ä‘Ã´i sÃ¡t thÆ°Æ¡ng", -- Eye of Belial
	-- Full old Desc: "â†‘ {{Range}} +1.5 Táº§m báº¯n#â†‘ +1 Tá»‘c Ä‘á»™ rÆ¡i nÆ°á»›c máº¯t#NÆ°á»›c máº¯t xuyÃªn tháº¥u#TrÃºng káº» Ä‘á»‹ch lÃ m nÆ°á»›c máº¯t tá»± dáº«n Ä‘Æ°á»ng vÃ  tÄƒng gáº¥p Ä‘Ã´i sÃ¡t thÆ°Æ¡ng"
	-- English: "Hitting an enemy makes the tear homing and doubles its damage"

	[C_ID .. 463] = "NÆ°á»›c máº¯t cá»§a Isaac cÃ³ thá»ƒ phÃ¡ Ä‘Ã¡ vÃ  má»Ÿ cá»­a", -- Sulfuric Acid
	-- Full old Desc: "â†‘ {{Damage}} +0.3 SÃ¡t thÆ°Æ¡ng#NÆ°á»›c máº¯t cá»§a Isaac cÃ³ thá»ƒ phÃ¡ Ä‘Ã¡ vÃ  má»Ÿ cá»­a"
	-- English: "Isaac's tears can destroy rocks and open doors"

	[C_ID .. 464] = "Káº» Ä‘á»‹ch QuÃ¡n quÃ¢n tháº£ váº­t pháº©m nháº·t mÃ  Isaac cáº§n nháº¥t", -- Glyph of Balance
	-- Full old Desc: "{{SoulHeart}} +2 TrÃ¡i tim Linh há»“n#Káº» Ä‘á»‹ch QuÃ¡n quÃ¢n tháº£ váº­t pháº©m nháº·t mÃ  Isaac cáº§n nháº¥t"
	-- English: "Champion enemies drop whatever pickup Isaac needs the most"

	[C_ID .. 465] = "Cho phÃ©p Isaac báº¯n nÆ°á»›c máº¯t theo báº¥t ká»³ hÆ°á»›ng nÃ o", -- Analog Stick
	-- Full old Desc: "â†‘ {{Tears}} +0.3 NÆ°á»›c máº¯t#Cho phÃ©p Isaac báº¯n nÆ°á»›c máº¯t theo báº¥t ká»³ hÆ°á»›ng nÃ o"
	-- English: "Allows Isaac to shoot tears in any direction"

	[C_ID .. 466] = "{{Poison}} Káº» Ä‘á»‹ch Ä‘áº§u tiÃªn bá»‹ giáº¿t trong phÃ²ng ná»• vÃ  gÃ¢y Ä‘á»™c cho káº» Ä‘á»‹ch gáº§n Ä‘Ã³#Káº» Ä‘á»‹ch cháº¿t khi bá»‹ trÃºng Ä‘á»™c cÅ©ng ná»• vÃ  gÃ¢y Ä‘á»™c cho káº» Ä‘á»‹ch gáº§n Ä‘Ã³", -- Contagion
	-- English: "{{Poison}} The first enemy killed in a room explodes and poisons all nearby enemies#Enemies that die while poisoned also explode and poison nearby enemies"

	[C_ID .. 467] = "{{Damage}} LiÃªn tá»¥c gÃ¢y 10% sÃ¡t thÆ°Æ¡ng cá»§a Isaac theo hÆ°á»›ng nÃ³ chá»‰", -- Finger!
	-- English: "{{Damage}} Constantly deals 10% of Isaac's damage in the direction it points"

	[C_ID .. 469] = "Äá»ƒ láº¡i vá»‡t cháº¥t lá»ng#Cháº¥t lá»ng gÃ¢y 6 sÃ¡t thÆ°Æ¡ng má»—i giÃ¢y#Káº» Ä‘á»‹ch cháº¡m vÃ o Ä‘Ã¡m mÃ¢y cÃ³ thá»ƒ bá»‹ trÃºng tia sÃ¡ng thÃ¡nh", -- Depression
	-- English: "Leaves a trail of creep#The creep deals 6 damage per second#Enemies that touch the cloud can be hit by a holy light beam"

	[C_ID .. 470] = "Náº£y quanh phÃ²ng#Dá»«ng di chuyá»ƒn khi Isaac báº¯n#Cháº·n Ä‘áº¡n khi dá»«ng láº¡i", -- Hushy
	-- Full old Desc: "Náº£y quanh phÃ²ng#GÃ¢y 30 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y#Dá»«ng di chuyá»ƒn khi Isaac báº¯n#Cháº·n Ä‘áº¡n khi dá»«ng láº¡i"
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped"

	[C_ID .. 471] = "Má»—i nÆ°á»›c máº¯t gÃ¢y 3.5 sÃ¡t thÆ°Æ¡ng", -- Lil Monstro
	-- Full old Desc: "{{Chargeable}} Sáº¡c má»™t Ä‘Ã²n táº¥n cÃ´ng sÃºng ngáº¯n tÆ°Æ¡ng tá»± {{Collectible229}} Phá»•i cá»§a Monstro#Má»—i nÆ°á»›c máº¯t gÃ¢y 3.5 sÃ¡t thÆ°Æ¡ng"
	-- English: "{{Chargeable}} Charges a shotgun attack similar to {{NameC229}}#Each tear deals 3.5 damage"

	[C_ID .. 472] = "CÃ¡c báº¡n Ä‘á»“ng hÃ nh khÃ¡c Ä‘i theo nÃ³#Dá»«ng di chuyá»ƒn khi Isaac báº¯n#Dá»‹ch chuyá»ƒn vá» Isaac khi Isaac ngá»«ng báº¯n", -- King Baby
	-- English: "Other familiars follow it#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 473] = "Tá»« tá»« lao vá» phÃ­a trÆ°á»›c", -- Big Chubby
	-- Full old Desc: "Tá»« tá»« lao vá» phÃ­a trÆ°á»›c#Cháº·n Ä‘áº¡n#GÃ¢y 40.5 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y"
	-- English: "Very slowly charges forwards"

	[C_ID .. 475] = "{{Warning}} Giáº¿t Isaac 3 giÃ¢y sau Ä‘Ã³", -- Plan C
	-- Full old Desc: "GÃ¢y 9,999,999 sÃ¡t thÆ°Æ¡ng cho táº¥t cáº£ káº» Ä‘á»‹ch#{{Warning}} Giáº¿t Isaac 3 giÃ¢y sau Ä‘Ã³"
	-- English: "{{Warning}} Kills Isaac 3 seconds later"

	[C_ID .. 476] = "NhÃ¢n Ä‘Ã´i má»™t váº­t pháº©m nháº·t ngáº«u nhiÃªn trong phÃ²ng", -- D1
	-- English: "Duplicates a random pickup in the room"

	[C_ID .. 477] = "TiÃªu thá»¥ táº¥t cáº£ váº­t pháº©m trÃªn bá»‡ trong phÃ²ng#Váº­t pháº©m kÃ­ch hoáº¡t: Hiá»‡u á»©ng cá»§a chÃºng kÃ­ch hoáº¡t, vÃ  sáº½ kÃ­ch hoáº¡t vá»›i má»—i láº§n sá»­ dá»¥ng Void sau nÃ y#â†‘ Váº­t pháº©m bá»‹ Ä‘á»™ng cáº¥p hai chá»‰ sá»‘ ngáº«u nhiÃªn tÄƒng", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate, and will activate with every future use of Void#â†‘ Passive items grant two random stat ups"

	[C_ID .. 478] = "Táº¡m dá»«ng táº¥t cáº£ káº» Ä‘á»‹ch trong phÃ²ng cho Ä‘áº¿n khi Isaac báº¯n#Cháº¡m vÃ o káº» Ä‘á»‹ch bá»‹ táº¡m dá»«ng váº«n gÃ¢y sÃ¡t thÆ°Æ¡ng cho Isaac#Káº» Ä‘á»‹ch háº¿t táº¡m dá»«ng sau 30 giÃ¢y", -- Pause
	-- English: "Pauses all enemies in the room until Isaac shoots#Touching a paused enemy still deals damage to Isaac#Enemies unpause after 30 seconds"

	[C_ID .. 479] = "{{Trinket}} TiÃªu thá»¥ mÃ³n trang sá»©c Isaac Ä‘ang giá»¯ vÃ  cáº¥p hiá»‡u á»©ng cá»§a chÃºng vÄ©nh viá»…n#TÄƒng tá»· lá»‡ xuáº¥t hiá»‡n cá»§a mÃ³n trang sá»©c", -- Smelter
	-- English: "{{Trinket}} Consumes Isaac's held trinkets and grants their effects permanently#Increases the spawn rate of trinkets"

	[C_ID .. 480] = "Chuyá»ƒn váº­t pháº©m nháº·t thÃ nh ruá»“i hoáº·c nhá»‡n xanh#NhÃ¢n Ä‘Ã´i táº¥t cáº£ ruá»“i vÃ  nhá»‡n xanh#Táº¡o 1 ruá»“i hoáº·c nhá»‡n xanh náº¿u Isaac khÃ´ng cÃ³", -- Compost
	-- English: "Converts pickups into blue flies or spiders#Doubles all blue flies and spiders#Spawns 1 blue fly or spider if Isaac has none"

	[C_ID .. 481] = "{{Blank}} LÃ m há»ng táº¥t cáº£ hÃ¬nh áº£nh vÃ  Ã¢m nháº¡c trong phÃ²ng", -- Dataminer
	-- Full old Desc: "â†‘ TÄƒng chá»‰ sá»‘ ngáº«u nhiÃªn#â†“ Giáº£m chá»‰ sá»‘ ngáº«u nhiÃªn#{{Timer}} Hiá»‡u á»©ng nÆ°á»›c máº¯t ngáº«u nhiÃªn trong phÃ²ng#{{Blank}} LÃ m há»ng táº¥t cáº£ hÃ¬nh áº£nh vÃ  Ã¢m nháº¡c trong phÃ²ng"
	-- English: "{{Timer}} Random tear effects for the room#{{Blank}} Corrupts all sprites and music in the room"

	[C_ID .. 482] = "Thay Ä‘á»•i nhÃ¢n váº­t cá»§a báº¡n thÃ nh nhÃ¢n váº­t ngáº«u nhiÃªn#Loáº¡i bá» váº­t pháº©m gáº§n Ä‘Ã¢y nháº¥t thu tháº­p Ä‘Æ°á»£c", -- Clicker
	-- English: "Changes your character to a random character#Removes the most recent item collected"

	[C_ID .. 483] = "áº¢nh hÆ°á»Ÿng toÃ n bá»™ táº§ng#LÃ m ná»• táº¥t cáº£ váº­t thá»ƒ#{VAR:EFFECTLIST}#Má»Ÿ phÃ²ng bÃ­ máº­t#Má»Ÿ Boss Rush vÃ  Hush báº¥t ká»ƒ thá»i gian", -- Mama Mega!
	-- Full old Desc: "áº¢nh hÆ°á»Ÿng toÃ n bá»™ táº§ng#LÃ m ná»• táº¥t cáº£ váº­t thá»ƒ#GÃ¢y 200 sÃ¡t thÆ°Æ¡ng cho táº¥t cáº£ káº» Ä‘á»‹ch#Má»Ÿ phÃ²ng bÃ­ máº­t#Má»Ÿ Boss Rush vÃ  Hush báº¥t ká»ƒ thá»i gian"
	-- English: "Affects the whole floor#Explodes all objects#{VAR:EFFECTLIST}#Opens secret rooms#Opens Boss Rush and Hush regardless of time"

	[C_ID .. 484] = "Khi sá»­ dá»¥ng, Ä‘áº©y káº» Ä‘á»‹ch ra xa vÃ  táº¡o sÃ³ng Ä‘Ã¡ quanh Isaac#SÃ³ng Ä‘Ã¡ cÃ³ thá»ƒ má»Ÿ phÃ²ng vÃ  phÃ¡ Ä‘Ã¡", -- Wait What?
	-- English: "Upon use, pushes enemies away and spawns a rock wave around Isaac#The rock wave can open rooms and break rocks"

	[C_ID .. 485] = "50% cÆ¡ há»™i nhÃ¢n Ä‘Ã´i táº¥t cáº£ váº­t pháº©m, váº­t pháº©m nháº·t vÃ  rÆ°Æ¡ng trong phÃ²ng#50% cÆ¡ há»™i loáº¡i bá» váº­t pháº©m/váº­t pháº©m nháº·t trong phÃ²ng vÃ  táº¡o 1 Ä‘á»“ng xu", -- Crooked Penny
	-- English: "50% chance to double all items, pickups and chests in room#50% chance to remove items / pickups in room and spawn 1 coin"

	[C_ID .. 486] = "LÃ m tá»•n thÆ°Æ¡ng Isaac mÃ  khÃ´ng giáº£m mÃ¡u#KÃ­ch hoáº¡t báº¥t ká»³ hiá»‡u á»©ng váº­t pháº©m khi bá»‹ trÃºng", -- Dull Razor
	-- English: "Hurts Isaac without removing health#Triggers any on-hit item effects"

	[C_ID .. 487] = "{{Collectible214}} Äá»ƒ láº¡i vá»‡t cháº¥t lá»ng mÃ¡u", -- Potato Peeler
	-- Full old Desc: "{{EmptyHeart}} Loáº¡i bá» 1 há»™p tim Ä‘á»ƒ:#â†‘ {{Damage}} +0.2 SÃ¡t thÆ°Æ¡ng#{{Collectible73}} Má»™t Khá»‘i Thá»‹t#{{Timer}} Nháº­n trong phÃ²ng:#â†‘ {{Range}} +5 Táº§m báº¯n#{{Collectible214}} Äá»ƒ láº¡i vá»‡t cháº¥t lá»ng mÃ¡u"
	-- English: "{{EmptyHeart}} Removes 1 heart container for:#{VAR:EFFECTLIST}#{{IND}}{{NameC73}}#{VAR:ROOMEFFECT}#{{IND}}{{Collectible214}} Leave a trail of blood creep"

	[C_ID .. 488] = "Cáº¥p hiá»‡u á»©ng váº­t pháº©m ngáº«u nhiÃªn trong phÃ²ng", -- Metronome
	-- English: "Grants a random item effect for the room"

	[C_ID .. 489] = "KÃ­ch hoáº¡t hiá»‡u á»©ng xÃºc xáº¯c ngáº«u nhiÃªn má»—i láº§n sá»­ dá»¥ng", -- D Infinity
	-- English: "Triggers a random dice effect each use"

	[C_ID .. 490] = "Táº¡o 2 váº­t pháº©m ngáº«u nhiÃªn tÃ¹y thuá»™c vÃ o nhÃ³m váº­t pháº©m cá»§a phÃ²ng hiá»‡n táº¡i#Báº¯t Ä‘áº§u khÃ´ng cÃ³ láº§n sáº¡c", -- Eden's Soul
	-- English: "Spawns 2 random items depending on the current room's item pool#Starts with no charges"

	[C_ID .. 491] = "{{Poison}} Sá»­ dá»¥ng viÃªn thuá»‘c gÃ¢y Ä‘á»™c cho táº¥t cáº£ káº» Ä‘á»‹ch trong phÃ²ng", -- Acid Baby
	-- Full old Desc: "{{Pill}} Táº¡o má»™t viÃªn thuá»‘c ngáº«u nhiÃªn má»—i 3 phÃ²ng#{{Poison}} Sá»­ dá»¥ng viÃªn thuá»‘c gÃ¢y Ä‘á»™c cho táº¥t cáº£ káº» Ä‘á»‹ch trong phÃ²ng"
	-- English: "{{Pill}} Spawns a random pill every {VAR:1} rooms#{{Poison}} Using a pill poisons all enemies in the room"

	[C_ID .. 492] = "ÄÃ¡nh dáº¥u vá»‹ trÃ­ cá»§a {{SecretRoom}} phÃ²ng bÃ­ máº­t, Ä‘Ã¡ nhuá»™m vÃ  {{LadderRoom}} khÃ´ng gian bÃ²", -- YO LISTEN!
	-- Full old Desc: "â†‘ {{Luck}} +1 May máº¯n#ÄÃ¡nh dáº¥u vá»‹ trÃ­ cá»§a {{SecretRoom}} phÃ²ng bÃ­ máº­t, Ä‘Ã¡ nhuá»™m vÃ  {{LadderRoom}} khÃ´ng gian bÃ²"
	-- English: "Highlights the location of {{SecretRoom}} secret rooms, tinted rocks and {{LadderRoom}} crawlspaces"

	[C_ID .. 493] = "Má»—i há»™p tim trá»‘ng:#{VAR:EFFECTLIST}", -- Adrenaline
	-- Full old Desc: "Má»—i há»™p tim trá»‘ng:#â†‘ {{Damage}} +0.2 SÃ¡t thÆ°Æ¡ng"
	-- English: "For every empty heart container:#{VAR:EFFECTLIST}"

	[C_ID .. 494] = "NÆ°á»›c máº¯t táº¡o 1-2 tia Ä‘iá»‡n khi va cháº¡m#Tia Ä‘iá»‡n gÃ¢y ná»­a sÃ¡t thÆ°Æ¡ng cá»§a Isaac", -- Jacob's Ladder
	-- English: "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half of Isaac's damage"

	[C_ID .. 495] = "CÆ¡ há»™i báº¯n ngá»n lá»­a Ä‘á» cháº·n Ä‘áº¡n káº» Ä‘á»‹ch vÃ  gÃ¢y sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc#Ngá»n lá»­a biáº¿n máº¥t sau khi gÃ¢y sÃ¡t thÆ°Æ¡ng hoáº·c cháº·n Ä‘áº¡n 5 láº§n", -- Ghost Pepper
	-- English: "Chance to shoot a red flame that blocks enemy shots and deals contact damage#The flame disappears after dealing damage or blocking shots 5 times"

	[C_ID .. 496] = "Kim giáº¿t káº» Ä‘á»‹ch thÆ°á»ng ngay láº­p tá»©c, lÃ m chÃºng vá»¡ thÃ nh 10 nÆ°á»›c máº¯t#{{Damage}} Kim gÃ¢y 3x sÃ¡t thÆ°Æ¡ng cá»§a Isaac vá»›i trÃ¹m", -- Euthanasia
	-- Full old Desc: "3.33% cÆ¡ há»™i báº¯n kim#{{Luck}} 100% cÆ¡ há»™i á»Ÿ 15 may máº¯n#Kim giáº¿t káº» Ä‘á»‹ch thÆ°á»ng ngay láº­p tá»©c, lÃ m chÃºng vá»¡ thÃ nh 10 nÆ°á»›c máº¯t#{{Damage}} Kim gÃ¢y 3x sÃ¡t thÆ°Æ¡ng cá»§a Isaac vá»›i trÃ¹m"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a needle#Needles kill normal enemies instantly, bursting them into 10 tears#{{Damage}} Needles deal 3x Isaac's damage against bosses"

	[C_ID .. 497] = "{{Confusion}} VÃ o phÃ²ng lÃ m táº¥t cáº£ káº» Ä‘á»‹ch bá»‹ choÃ¡ng cho Ä‘áº¿n khi Isaac báº¯t Ä‘áº§u báº¯n", -- Camo Undies
	-- English: "{{Confusion}} Entering a room confuses all enemies until Isaac starts shooting"

	[C_ID .. 498] = "{{AngelDevilChance}} Táº¡o cáº£ PhÃ²ng Quá»· vÃ  PhÃ²ng ThiÃªn tháº§n náº¿u má»™t trong hai sáº½ xuáº¥t hiá»‡n#VÃ o má»™t phÃ²ng sáº½ lÃ m phÃ²ng kia biáº¿n máº¥t", -- Duality
	-- English: "{{AngelDevilChance}} Spawns both a Devil and Angel Room if either would have spawned#Entering one makes the other disappear"

	[C_ID .. 501] = "{{Heart}} +1 Há»™p tim cho má»—i 25 Ä‘á»“ng xu nháº­n Ä‘Æ°á»£c sau khi cÃ³ Greed's Gullet", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins gained after getting Greed's Gullet"

	[C_ID .. 502] = "{{Slow}} Báº¯n thá»‰nh thoáº£ng táº¡o nÆ°á»›c máº¯t cháº¥t lá»ng tráº¯ng gÃ¢y gáº¥p Ä‘Ã´i sÃ¡t thÆ°Æ¡ng vÃ  lÃ m cháº­m káº» Ä‘á»‹ch#Nháº­n sÃ¡t thÆ°Æ¡ng báº¯n má»™t nÆ°á»›c máº¯t cháº¥t lá»ng tráº¯ng", -- Large Zit
	-- English: "{{Slow}} Firing occasionally shoots a white creep tear that deals double damage and slows enemies#Taking damage shoots a white creep tear"

	[C_ID .. 503] = "Isaac gÃ¢y 3.5 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc", -- Little Horn
	-- Full old Desc: "5% cÆ¡ há»™i báº¯n nÆ°á»›c máº¯t giáº¿t káº» Ä‘á»‹ch ngay láº­p tá»©c#{{Luck}} 20% cÆ¡ há»™i á»Ÿ 15 may máº¯n#Isaac gÃ¢y 3.5 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot tears that instantly kill enemies#Isaac deals 3.5 contact damage"

	[C_ID .. 504] = "Táº¡o má»™t thÃ¡p phÃ¡o ruá»“i báº¯n káº» Ä‘á»‹ch#Má»—i phÃ¡t báº¯n gÃ¢y 2 sÃ¡t thÆ°Æ¡ng", -- Brown Nugget
	-- English: "Spawns a fly turret that shoots at enemies#Each shot deals 2 damage"

	[C_ID .. 505] = "VÃ o phÃ²ng cÃ³ káº» Ä‘á»‹ch cÃ³ cÆ¡ há»™i táº¡o má»™t káº» Ä‘á»‹ch bá»‹ mÃª hoáº·c", -- Poke Go
	-- English: "{{Friendly}} Entering a hostile room has a chance to spawn a friendly enemy"

	[C_ID .. 506] = "{{BleedingOut}} TrÃºng káº» Ä‘á»‹ch tá»« phÃ­a sau gÃ¢y gáº¥p Ä‘Ã´i sÃ¡t thÆ°Æ¡ng vÃ  gÃ¢y cháº£y mÃ¡u, gÃ¢y 10% sÃ¡t thÆ°Æ¡ng tá»‘i Ä‘a cá»§a káº» Ä‘á»‹ch má»—i 5 giÃ¢y", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds"

	[C_ID .. 507] = "{{Damage}} GÃ¢y sÃ¡t thÆ°Æ¡ng cá»§a Isaac + 10% mÃ¡u tá»‘i Ä‘a cá»§a káº» Ä‘á»‹ch cho táº¥t cáº£ káº» Ä‘á»‹ch#{{HalfHeart}} GÃ¢y sÃ¡t thÆ°Æ¡ng báº±ng á»ng HÃºt cÃ³ thá»ƒ táº¡o ná»­a trÃ¡i tim#{{HalfSoulHeart}} KhÃ´ng cÃ³ há»™p tim tháº£ TrÃ¡i tim Linh há»“n thay tháº¿", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts#{{HalfSoulHeart}} Having no heart containers drops Soul Hearts instead"

	[C_ID .. 508] = "{{BleedingOut}} Vá»‡ tinh gÃ¢y cháº£y mÃ¡u, gÃ¢y 10% sÃ¡t thÆ°Æ¡ng tá»‘i Ä‘a cá»§a káº» Ä‘á»‹ch má»—i 5 giÃ¢y#{{Damage}} GÃ¢y 3x sÃ¡t thÆ°Æ¡ng cá»§a Isaac má»—i giÃ¢y#KhÃ´ng cháº·n Ä‘áº¡n", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds#{{Damage}} Deals 3x Isaac's damage per second#Does not block shots"

	[C_ID .. 509] = "Vá»‡ tinh báº¯n má»™t nÆ°á»›c máº¯t theo hÆ°á»›ng ngáº«u nhiÃªn má»—i 2 giÃ¢y#KhÃ´ng cháº·n Ä‘áº¡n", -- Bloodshot Eye
	-- Full old Desc: "Vá»‡ tinh báº¯n má»™t nÆ°á»›c máº¯t theo hÆ°á»›ng ngáº«u nhiÃªn má»—i 2 giÃ¢y#GÃ¢y 3.5 sÃ¡t thÆ°Æ¡ng má»—i nÆ°á»›c máº¯t#GÃ¢y 30 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y#KhÃ´ng cháº·n Ä‘áº¡n"
	-- English: "Orbital that shoots a tear in a random direction every 2 seconds#Does not block shots"

	[C_ID .. 510] = "{{Timer}} Táº¡o má»™t phiÃªn báº£n delirium thÃ¢n thiá»‡n cá»§a trÃ¹m trong phÃ²ng", -- Delirious
	-- English: "{{Friendly}} Spawns a friendly delirium version of a boss for the room"

	[C_ID .. 511] = "Xoay quanh má»™t káº» Ä‘á»‹ch ngáº«u nhiÃªn cho Ä‘áº¿n khi káº» Ä‘á»‹ch Ä‘Ã³ cháº¿t", -- Angry Fly
	-- Full old Desc: "Xoay quanh má»™t káº» Ä‘á»‹ch ngáº«u nhiÃªn cho Ä‘áº¿n khi káº» Ä‘á»‹ch Ä‘Ã³ cháº¿t#GÃ¢y 30 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y cho cÃ¡c káº» Ä‘á»‹ch khÃ¡c"
	-- English: "Orbits a random enemy until that enemy dies"

	[C_ID .. 512] = "NÃ©m há»‘ Ä‘en, hÃºt má»i thá»© vÃ o#GÃ¢y 6 sÃ¡t thÆ°Æ¡ng má»—i giÃ¢y#PhÃ¡ há»§y Ä‘Ã¡ gáº§n Ä‘Ã³#KÃ©o dÃ i 6 giÃ¢y", -- Black Hole
	-- English: "Throwable black hole, which sucks in everything#Deals 6 damage per second#Destroys nearby rocks#Lasts 6 seconds"

	[C_ID .. 513] = "{{Charm}} Ngáº«u nhiÃªn mÃª hoáº·c/lÃ m sá»£ káº» Ä‘á»‹ch#Nháº­n sÃ¡t thÆ°Æ¡ng cÃ³ cÆ¡ há»™i ngáº«u nhiÃªn táº¡o PhÃ¢n Cáº§u vá»“ng", -- Bozo
	-- Full old Desc: "â†‘ {{Damage}} +0.1 SÃ¡t thÆ°Æ¡ng#{{SoulHeart}} +1 TrÃ¡i tim Linh há»“n#{{Charm}} Ngáº«u nhiÃªn mÃª hoáº·c/lÃ m sá»£ káº» Ä‘á»‹ch#Nháº­n sÃ¡t thÆ°Æ¡ng cÃ³ cÆ¡ há»™i ngáº«u nhiÃªn táº¡o PhÃ¢n Cáº§u vá»“ng"
	-- English: "{{Charm}} Randomly charms/fears enemies#Taking damage has a random chance to spawn a Rainbow Poop"

	[C_ID .. 514] = "LÃ m má»™t sá»‘ káº» Ä‘á»‹ch vÃ  Ä‘áº¡n táº¡m dá»«ng ngáº«u nhiÃªn#25% cÆ¡ há»™i nhÃ¢n Ä‘Ã´i pháº§n thÆ°á»Ÿng dá»n phÃ²ng", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#25% chance to double room clear drops"

	[C_ID .. 515] = "Táº¡o má»™t váº­t pháº©m ngáº«u nhiÃªn tá»« nhÃ³m váº­t pháº©m cá»§a phÃ²ng hiá»‡n táº¡i#CÆ¡ há»™i táº¡o Lump of Coal hoáº·c The Poop thay tháº¿", -- Mystery Gift
	-- English: "Spawns a random item from the current room's item pool#Chance to spawn Lump of Coal or The Poop instead"

	[C_ID .. 516] = "Táº¡o má»™t VÃ²i Phun báº¯n nÆ°á»›c máº¯t giá»‘ng Isaac theo vÃ²ng trÃ²n quanh nÃ³", -- Sprinkler
	-- English: "Spawns a Sprinkler that shoots the same tears as Isaac in a circle around itself"

	[C_ID .. 517] = "Loáº¡i bá» Ä‘á»™ trá»… giá»¯a cÃ¡c láº§n Ä‘áº·t bom", -- Fast Bombs
	-- Full old Desc: "{{Bomb}} +7 Bom#Loáº¡i bá» Ä‘á»™ trá»… giá»¯a cÃ¡c láº§n Ä‘áº·t bom"
	-- English: "Removes the delay between bomb placements"

	[C_ID .. 518] = "báº¡n Ä‘á»“ng hÃ nh trÃ´ng giá»‘ng má»™t bÃ© Ä‘á»“ng hÃ nh ngáº«u nhiÃªn#CÃ³ hiá»‡u á»©ng nÆ°á»›c máº¯t ngáº«u nhiÃªn#Hiá»‡u á»©ng thay Ä‘á»•i má»—i táº§ng", -- Buddy in a Box
	-- English: "Familiar which looks like a random co-op baby#Has random tear effects#Effects change every floor"

	[C_ID .. 519] = "Biáº¿n thÃ nh má»™t báº¡n Ä‘á»“ng hÃ nh ngáº«u nhiÃªn má»—i 10 giÃ¢y", -- Lil Delirium
	-- English: "Transforms into a random familiar every 10 seconds"

	[C_ID .. 520] = "Giáº¿t 15 káº» Ä‘á»‹ch thÃªm 1 láº§n sáº¡c cho váº­t pháº©m kÃ­ch hoáº¡t", -- Jumper Cables
	-- English: "Killing 15 enemies adds 1 charge to the active item"

	[C_ID .. 521] = "LÃ m má»™t váº­t pháº©m ngáº«u nhiÃªn trong {{Shop}} Cá»­a hÃ ng hoáº·c {{DevilRoom}} PhÃ²ng Quá»· miá»…n phÃ­#Cáº§m váº­t pháº©m Ä‘áº£m báº£o má»™t váº­t pháº©m Cá»­a hÃ ng giáº£m giÃ¡", -- Coupon
	-- English: "Makes one random item in the {{Shop}} Shop or {{DevilRoom}} Devil Room free#Holding the item guarantees one Shop item is on sale"

	[C_ID .. 522] = "Dá»«ng táº¥t cáº£ Ä‘áº¡n káº» Ä‘á»‹ch Ä‘áº¿n gáº§n Isaac trong 3 giÃ¢y vÃ  Ä‘áº©y chÃºng ra xa sau Ä‘Ã³", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards"

	[C_ID .. 523] = "LÆ°u trá»¯ táº¥t cáº£ váº­t pháº©m nháº·t vÃ  váº­t pháº©m trong phÃ²ng hiá»‡n táº¡i#Sá»­ dá»¥ng váº­t pháº©m láº§n ná»¯a tháº£ má»i thá»© trá»Ÿ láº¡i sÃ n#Cho phÃ©p Isaac di chuyá»ƒn Ä‘á»“ giá»¯a cÃ¡c phÃ²ng", -- Moving Box
	-- English: "Stores all pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "NÆ°á»›c máº¯t cá»§a Isaac Ä‘Æ°á»£c ná»‘i vá»›i nhau báº±ng tia Ä‘iá»‡n#Tia gÃ¢y sÃ¡t thÆ°Æ¡ng cá»§a Isaac", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#The beams deal Isaac's damage"

	[C_ID .. 525] = "Nháº­n sÃ¡t thÆ°Æ¡ng táº¡o má»™t vá»‡ tinh cháº·n Ä‘áº¡n#Tá»‘i Ä‘a 3 vá»‡ tinh#ChÃºng gÃ¢y 35 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y#Vá»‡ tinh bá»‹ phÃ¡ há»§y náº¿u nháº­n quÃ¡ nhiá»u sÃ¡t thÆ°Æ¡ng", -- Leprosy
	-- English: "Taking damage spawns a projectile blocking orbital#Caps at 3 orbitals#They deal 35 contact damage per second#Orbitals are destroyed if they take too much damage"

	[C_ID .. 526] = "Táº¡o má»™t báº¡n Ä‘á»“ng hÃ nh ká»µ sÄ© nhá» táº¡o ra chÃ¢u cháº¥u#Ká»µ sÄ© vÃ  chÃ¢u cháº¥u thay Ä‘á»•i má»—i 10 giÃ¢y", -- 7 Seals
	-- English: "Spawns a small horseman familiar that spawns locusts#The horseman and its locust changes every 10 seconds"

	[C_ID .. 527] = "Hiá»ƒn thá»‹ con trá» di Ä‘á»™ng trong vÃ i giÃ¢y, sau Ä‘Ã³ triá»‡u há»“i má»™t con ma sáº½, tÃ¹y vÃ o vá»‹ trÃ­ con trá»:#Má»Ÿ cá»­a hoáº·c rÆ°Æ¡ng#Láº¥y má»™t váº­t pháº©m#50% cÆ¡ há»™i Äƒn cáº¯p tá»« Cá»­a hÃ ng/Quá»·#Táº¥n cÃ´ng káº» Ä‘á»‹ch cho Ä‘áº¿n khi nÃ³ cháº¿t#LÃ m ná»• tÆ°á»ng, Ä‘Ã¡, ngÆ°á»i giá»¯ cá»­a hÃ ng, tÆ°á»£ng thiÃªn tháº§n, mÃ¡y, ngÆ°á»i Äƒn xin", -- Mr. ME!
	-- English: "Displays a movable cursor for a few seconds, then summons a ghost that will, depending on the cursor position:#Open doors or chests#Fetch an item#50% chance to steal from the Shop / Devil#Attack an enemy until it dies#Explode walls, rocks, shopkeepers, angel statues, machines, beggars"

	[C_ID .. 528] = "LÄƒng kÃ­nh vá»‡ tinh#NÆ°á»›c máº¯t thÃ¢n thiá»‡n trÃºng nÃ³ tÃ¡ch thÃ nh 4", -- Angelic Prism
	-- English: "Orbital prism#Friendly tears hitting it split into 4"

	[C_ID .. 529] = "NÆ°á»›c máº¯t cá»§a Isaac náº£y vÃ o nhau vÃ  biáº¿n máº¥t khi ngá»«ng di chuyá»ƒn", -- Pop!
	-- English: "Isaac's tears bounce off each other and disappear when they stop moving"

	[C_ID .. 530] = "Giáº¿t káº» Ä‘á»‹ch theo thá»© tá»± Ä‘Æ°á»£c Ä‘Ã¡nh dáº¥u {{DeathMark}} phÃ­a trÃªn chÃºng cáº¥p má»™t váº­t pháº©m nháº·t hoáº·c tÄƒng chá»‰ sá»‘ ngáº«u nhiÃªn", -- Death's List
	-- English: "Killing enemies in the order dictated by the mark {{DeathMark}} above them grants a random pickup or stat increase"

	[C_ID .. 531] = "NÆ°á»›c máº¯t cá»§a Isaac bay theo hÃ¬nh vÃ²ng cung vÃ  vá»¡ thÃ nh nÆ°á»›c máº¯t nhá» hÆ¡n khi va cháº¡m", -- Haemolacria
	-- Full old Desc: "â†‘ {{Damage}} x1.31 Há»‡ sá»‘ sÃ¡t thÆ°Æ¡ng#â†“ {{Tears}} x0.5 Há»‡ sá»‘ nÆ°á»›c máº¯t#â†“ {{Tears}} +10 Äá»™ trá»… nÆ°á»›c máº¯t#NÆ°á»›c máº¯t cá»§a Isaac bay theo hÃ¬nh vÃ²ng cung vÃ  vá»¡ thÃ nh nÆ°á»›c máº¯t nhá» hÆ¡n khi va cháº¡m"
	-- English: "Isaac's tears fly in an arc and burst into smaller tears on impact"

	[C_ID .. 532] = "NÆ°á»›c máº¯t cá»§a Isaac dáº§n cháº­m láº¡i, dá»«ng, sau Ä‘Ã³ ná»• thÃ nh 8 nÆ°á»›c máº¯t nhá» hÆ¡n#NÆ°á»›c máº¯t cÃ³ thá»ƒ há»£p nháº¥t vÃ  trá»Ÿ nÃªn lá»›n hÆ¡n", -- Lachryphagy
	-- English: "Isaac's tears progressively slow down, stop, then explode into 8 smaller tears#Tears can merge and become bigger"

	[C_ID .. 533] = "Thay nÆ°á»›c máº¯t cá»§a Isaac báº±ng tia sÃ¡ng xuyÃªn tháº¥u#Tia gÃ¢y 33% sÃ¡t thÆ°Æ¡ng nhÆ°ng cÃ³ thá»ƒ trÃºng káº» Ä‘á»‹ch nhiá»u láº§n", -- Trisagion
	-- English: "Replaces Isaac's tears with piercing beams of light#The beams deal 33% damage but can hit enemies multiple times"

	[C_ID .. 534] = "Cho phÃ©p Isaac giá»¯ 2 váº­t pháº©m kÃ­ch hoáº¡t#CÃ¡c váº­t pháº©m cÃ³ thá»ƒ Ä‘Æ°á»£c Ä‘á»•i báº±ng nÃºt Tháº£ ({{ButtonRT}})", -- Schoolbag
	-- English: "Allows Isaac to hold 2 active items#The items can be swapped using the Drop button ({{ButtonRT}})"

	[C_ID .. 535] = "{{HolyMantle}} VÃ o phÃ²ng trÃ¹m cáº¥p má»™t lÃ¡ cháº¯n Holy Mantle (ngÄƒn sÃ¡t thÆ°Æ¡ng má»™t láº§n)", -- Blanket
	-- Full old Desc: "{{HealingRed}} Há»“i 1 trÃ¡i tim#{{SoulHeart}} +1 TrÃ¡i tim Linh há»“n#{{HolyMantle}} VÃ o phÃ²ng trÃ¹m cáº¥p má»™t lÃ¡ cháº¯n Holy Mantle (ngÄƒn sÃ¡t thÆ°Æ¡ng má»™t láº§n)"
	-- English: "{{HolyMantle}} Entering a boss room grants a Holy Mantle shield (prevents damage once)"

	[C_ID .. 536] = "Hy sinh tá»‘i Ä‘a 2 báº¡n Ä‘á»“ng hÃ nh vÃ  táº¡o má»™t váº­t pháº©m quá»· cho má»—i láº§n hy sinh#{{Coin}} Biáº¿n nhá»‡n/ruá»“i xanh thÃ nh Ä‘á»“ng xu", -- Sacrificial Altar
	-- English: "Sacrifices up to 2 familiars and spawns a devil item for each sacrifice#{{Coin}} Turns blue spiders/flies into coins"

	[C_ID .. 537] = "{{Pill}} Táº¡o má»™t viÃªn thuá»‘c ngáº«u nhiÃªn khi nháº·t#Báº¯n má»™t vá»‡t cháº¥t lá»ng#Loáº¡i cháº¥t lá»ng thay Ä‘á»•i vá»›i má»—i láº§n sá»­ dá»¥ng viÃªn thuá»‘c", -- Lil Spewer
	-- English: "{{Pill}} Spawns a random pill on pickup#Fires a line of creep#The type of creep changes with each pill use"

	[C_ID .. 538] = "{{Collectible479}} Nháº­n sÃ¡t thÆ°Æ¡ng cÃ³ 10% cÆ¡ há»™i tiÃªu thá»¥ mÃ³n trang sá»©c Ä‘ang giá»¯ cá»§a Isaac vÃ  cáº¥p hiá»‡u á»©ng cá»§a nÃ³ vÄ©nh viá»…n", -- Marbles
	-- Full old Desc: "{{Trinket}} Táº¡o 3 mÃ³n trang sá»©c ngáº«u nhiÃªn#{{Collectible479}} Nháº­n sÃ¡t thÆ°Æ¡ng cÃ³ 10% cÆ¡ há»™i tiÃªu thá»¥ mÃ³n trang sá»©c Ä‘ang giá»¯ cá»§a Isaac vÃ  cáº¥p hiá»‡u á»©ng cá»§a nÃ³ vÄ©nh viá»…n"
	-- English: "{{Collectible479}} Taking damage has a 10% chance to consume Isaac's held trinket and grant its effects permanently"

	[C_ID .. 539] = "Nháº­n sÃ¡t thÆ°Æ¡ng táº¡o má»™t káº» Ä‘á»‹ch bá»‹ mÃª hoáº·c#Táº¡o báº¡n bÃ¨ máº¡nh hÆ¡n khi dá»n nhiá»u phÃ²ng mÃ  khÃ´ng nháº­n sÃ¡t thÆ°Æ¡ng", -- Mystery Egg
	-- English: "{{Friendly}} Taking damage spawns a friendly enemy#Spawns stronger friends the more rooms are cleared without taking damage"

	[C_ID .. 540] = "NÆ°á»›c máº¯t cá»§a Isaac náº£y trÃªn sÃ n vÃ  gÃ¢y sÃ¡t thÆ°Æ¡ng vÄƒng má»—i láº§n náº£y", -- Flat Stone
	-- English: "Isaac's tears bounce off the floor and cause splash damage on every bounce"

	[C_ID .. 542] = "Pháº£n Ä‘áº¡n káº» Ä‘á»‹ch", -- Slipped Rib
	-- Full old Desc: "Vá»‡ tinh#Pháº£n Ä‘áº¡n káº» Ä‘á»‹ch"
	-- English: "Reflects enemy projectiles"

	[C_ID .. 543] = "Nháº­n sÃ¡t thÆ°Æ¡ng táº¡o má»™t phÃ¢n tráº¯ng#Khi á»Ÿ trong hÃ o quang cá»§a phÃ¢n:#{VAR:EFFECTLIST}#CÆ¡ há»™i cháº·n sÃ¡t thÆ°Æ¡ng", -- Hallowed Ground
	-- Full old Desc: "Nháº­n sÃ¡t thÆ°Æ¡ng táº¡o má»™t phÃ¢n tráº¯ng#Khi á»Ÿ trong hÃ o quang cá»§a phÃ¢n:#â†‘ {{Tears}} x2 Há»‡ sá»‘ nÆ°á»›c máº¯t#CÆ¡ há»™i cháº·n sÃ¡t thÆ°Æ¡ng"
	-- English: "Taking damage spawns a white poop#While inside the poop's aura:#{VAR:EFFECTLIST}#{{IND}}Chance to block damage"

	[C_ID .. 544] = "Bay lÆ¡ lá»­ng phÃ­a trÆ°á»›c Isaac#GÃ¢y 6x sÃ¡t thÆ°Æ¡ng cá»§a Isaac má»—i giÃ¢y", -- Pointy Rib
	-- English: "Levitates in front of Isaac#Deals 6x Isaac's damage per second"

	[C_ID .. 545] = "Táº¡o má»™t vá»‡ tinh xÆ°Æ¡ng hoáº·c xÆ°Æ¡ng bá»‹ mÃª hoáº·c cho má»—i káº» Ä‘á»‹ch giáº¿t trong phÃ²ng (tá»‘i Ä‘a 8)", -- Book of the Dead
	-- English: "{{Friendly}} Spawns a bone orbital or friendly bony per enemy killed in the room (up to 8)"

	[C_ID .. 546] = "Cáº¥p má»™t hÃ o quang hÃ³a Ä‘Ã¡ káº» Ä‘á»‹ch", -- Dad's Ring
	-- English: "{{Petrify}} Grants an aura that petrifies enemies"

	[C_ID .. 547] = "{{Trinket21}} Táº¡o mÃ³n trang sá»©c Mysterious Paper", -- Divorce Papers
	-- Full old Desc: "â†‘ {{Tears}} +0.7 NÆ°á»›c máº¯t#{{EmptyBoneHeart}} +1 TrÃ¡i tim XÆ°Æ¡ng#{{Trinket21}} Táº¡o mÃ³n trang sá»©c Mysterious Paper"
	-- English: "{{Trinket21}} Spawns the Mysterious Paper trinket"

	[C_ID .. 548] = "báº¡n Ä‘á»“ng hÃ nh giá»‘ng boomerang#CÃ³ thá»ƒ nháº·t vÃ  mang váº­t pháº©m nháº·t vá»", -- Jaw Bone
	-- Full old Desc: "báº¡n Ä‘á»“ng hÃ nh giá»‘ng boomerang#GÃ¢y 7 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc#CÃ³ thá»ƒ nháº·t vÃ  mang váº­t pháº©m nháº·t vá»"
	-- English: "Boomerang-like familiar#Can grab and bring back pickups"

	[C_ID .. 549] = "Báº¯n 8 nÆ°á»›c máº¯t xÆ°Æ¡ng theo má»i hÆ°á»›ng", -- Brittle Bones
	-- Full old Desc: "{{EmptyBoneHeart}} Thay táº¥t cáº£ há»™p TrÃ¡i tim Äá» cá»§a Isaac báº±ng 6 TrÃ¡i tim XÆ°Æ¡ng trá»‘ng#Khi máº¥t má»™t TrÃ¡i tim XÆ°Æ¡ng:#â†‘ {{Tears}} +0.5 NÆ°á»›c máº¯t#Báº¯n 8 nÆ°á»›c máº¯t xÆ°Æ¡ng theo má»i hÆ°á»›ng"
	-- English: "{{EmptyBoneHeart}} Replaces all of Isaac's Red Heart containers with 6 empty Bone Hearts#Upon losing a Bone Heart:#{VAR:EFFECTLIST}#{{IND}}Shoots 8 bone tears in all directions"

	[C_ID .. 550] = "ChÃ¢n cá»§a Mom liÃªn tá»¥c cá»‘ gáº¯ng dáº­m Isaac#Sá»­ dá»¥ng váº­t pháº©m dá»«ng viá»‡c dáº­m trong phÃ²ng (hoáº·c má»™t Ä‘á»£t Boss Rush)#{{Warning}} (HÃ£y thá»­ Ä‘Ã¡nh báº¡i Boss Rush vá»›i nÃ³!)", -- Broken Shovel
	-- English: "Mom's Foot constantly tries to stomp Isaac#Using the item stops the stomping for the room (or one Boss Rush wave)#{{Warning}} (Try to beat Boss Rush with it!)"

	[C_ID .. 551] = "HoÃ n thÃ nh Xáº»ng cá»§a Mom#{{Warning}} Sá»­ dá»¥ng xáº»ng trÃªn Ä‘á»‘ng Ä‘áº¥t trong \"Dark Room\"", -- Broken Shovel
	-- English: "Completes Mom's Shovel#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 552] = "Táº¡o má»™t cá»­a sáº­p xuá»‘ng táº§ng tiáº¿p theo#10% cÆ¡ há»™i cho cá»­a sáº­p {{LadderRoom}} khÃ´ng gian bÃ²#{{Warning}} Sá»­ dá»¥ng xáº»ng trÃªn Ä‘á»‘ng Ä‘áº¥t trong \"Dark Room\"", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#10% chance for {{LadderRoom}} crawlspace trapdoor#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 1] = "{{Coin}} Nháº­n sÃ¡t thÆ°Æ¡ng sinh ra 1 Ä‘á»“ng xu", -- Swallowed Penny
	-- English: "{{Coin}} Taking damage spawns 1 coin"

	[T_ID .. 2] = "50% cÆ¡ há»™i nháº­n váº­t pháº©m tá»« phÃ¢n", -- Petrified Poop
	-- English: "50% chance to get drops from poop"

	[T_ID .. 3] = "{{Battery}} -1 nÄƒng lÆ°á»£ng cáº§n cho váº­t pháº©m kÃ­ch hoáº¡t", -- AAA Battery
	-- English: "{{Battery}} -1 Charge needed for active items"

	[T_ID .. 4] = "{{Collectible44}} Sá»­ dá»¥ng váº­t pháº©m kÃ­ch hoáº¡t dá»‹ch chuyá»ƒn Isaac Ä‘áº¿n má»™t phÃ²ng ngáº«u nhiÃªn", -- Broken Remote
	-- English: "{{Collectible44}} Using an active item teleports Isaac to a random room"

	[T_ID .. 5] = "2x cÆ¡ há»™i gáº·p káº» Ä‘á»‹ch dáº¡ng vÃ´ Ä‘á»‹ch", -- Purple Heart
	-- English: "2x chance for champion enemies"

	[T_ID .. 6] = "{{Coin}} Thu hÃºt Ä‘á»“ng xu vá» phÃ­a Isaac", -- Broken Magnet
	-- English: "{{Coin}} Attracts coins to Isaac"

	[T_ID .. 7] = "{{Collectible33}} CÆ¡ há»™i cao hÆ¡n Ä‘á»ƒ tÃ¬m The Bible trong {{Shop}} Cá»­a hÃ ng vÃ  {{Library}} ThÆ° viá»‡n", -- Rosary Bead
	-- Full old Desc: "{{AngelChance}} 50% cÆ¡ há»™i cao hÆ¡n Ä‘á»ƒ vÃ o PhÃ²ng ThiÃªn Tháº§n#{{Collectible33}} CÆ¡ há»™i cao hÆ¡n Ä‘á»ƒ tÃ¬m The Bible trong {{Shop}} Cá»­a hÃ ng vÃ  {{Library}} ThÆ° viá»‡n"
	-- English: "{{Collectible33}} Higher chance to find The Bible in {{Shop}} Shops and {{Library}} Libraries"

	[T_ID .. 8] = "{VAR:ITEMDESCRIPTION}", -- Cartridge
	-- Full old Desc: "{{Timer}} 5% cÆ¡ há»™i khi nháº­n sÃ¡t thÆ°Æ¡ng nháº­n Ä‘Æ°á»£c trong 6,5 giÃ¢y:#Báº¥t tá»­#Isaac khÃ´ng thá»ƒ báº¯n nhÆ°ng gÃ¢y 40 sÃ¡t thÆ°Æ¡ng tiáº¿p xÃºc má»—i giÃ¢y#{{HealingRed}} Giáº¿t 2 káº» Ä‘á»‹ch há»“i ná»­a trÃ¡i tim#{{Fear}} LÃ m táº¥t cáº£ káº» Ä‘á»‹ch trong phÃ²ng sá»£ hÃ£i"
	-- English: "{{Timer}} {VAR:LUCKCHANCE}% chance upon taking damage:#{VAR:ITEMDESCRIPTION}"

	[T_ID .. 9] = "NÆ°á»›c máº¯t cá»§a Isaac dao Ä‘á»™ng#áº¢nh hÆ°á»Ÿng Ä‘áº¿n hitbox cá»§a nÆ°á»›c máº¯t", -- Pulse Worm
	-- English: "Isaac's tears pulsate#Affects tear hitbox"

	[T_ID .. 10] = "NÆ°á»›c máº¯t cá»§a Isaac di chuyá»ƒn theo dáº¡ng sÃ³ng", -- Wiggle Worm
	-- Full old Desc: "â†‘ {{Tears}} +0.3 NÆ°á»›c máº¯t#NÆ°á»›c máº¯t cá»§a Isaac di chuyá»ƒn theo dáº¡ng sÃ³ng"
	-- English: "Isaac's tears move in waves"

	[T_ID .. 11] = "NÆ°á»›c máº¯t cá»§a Isaac di chuyá»ƒn theo hÃ¬nh xoáº¯n á»‘c vá»›i tá»‘c Ä‘á»™ cao", -- Ring Worm
	-- English: "Isaac's tears move in spirals with high speed"

	[T_ID .. 12] = "NÆ°á»›c máº¯t rá»™ng hÆ¡n 50%#TÄƒng Ä‘á»™ Ä‘áº©y lÃ¹i", -- Flat Worm
	-- English: "50% wider tears#Increases knockback"

	[T_ID .. 13] = "{{Shop}} Cho phÃ©p Isaac láº¥y 1 váº­t pháº©m trong cá»­a hÃ ng miá»…n phÃ­", -- Store Credit
	-- English: "{{Shop}} Allows Isaac to take 1 Shop item for free"

	[T_ID .. 14] = "Miá»…n nhiá»…m vá»›i cháº¥t lá»ng trÃªn sÃ n vÃ  gai trÃªn sÃ n", -- Callus
	-- English: "Immune to creep and floor spikes"

	[T_ID .. 15] = "{{Coin}} PhÃ¡ Ä‘Ã¡ sinh ra Ä‘á»“ng xu", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks spawns coins"

	[T_ID .. 17] = "{{BlackHeart}} +5% cÆ¡ há»™i Ä‘á»ƒ TrÃ¡i Tim Linh Há»“n ngáº«u nhiÃªn xuáº¥t hiá»‡n dÆ°á»›i dáº¡ng TrÃ¡i Tim Äen", -- Black Lipstick
	-- English: "{{BlackHeart}} +10% chance for random Soul Hearts to spawn as Black Hearts"

	[T_ID .. 18] = "{{EternalHeart}} +3% cÆ¡ há»™i cho TrÃ¡i Tim VÄ©nh Cá»­u", -- Bible Tract
	-- English: "{{EternalHeart}} +3% chance for Eternal Hearts"

	[T_ID .. 19] = "{{GoldenChest}} RÆ°Æ¡ng vÃ ng cÃ³ thá»ƒ má»Ÿ miá»…n phÃ­", -- Paper Clip
	-- English: "{{GoldenChest}} Gold chests can be opened for free"

	[T_ID .. 20] = "{{BlackHeart}} Sinh ra 1 TrÃ¡i Tim Äen khi mÃ¡u cá»§a Isaac giáº£m xuá»‘ng cÃ²n ná»­a trÃ¡i tim#{{Warning}} Biáº¿n máº¥t sau khi sinh ra 3 TrÃ¡i Tim Äen", -- Monkey Paw
	-- English: "{{BlackHeart}} Spawns 1 Black Heart when Isaac's health is reduced to half a heart#{{Warning}} Disappears after spawning 3 Black Hearts"

	[T_ID .. 21] = "Ngáº«u nhiÃªn nháº­n hiá»‡u á»©ng cá»§a: #{VAR:TEXT}", -- Mysterious Paper
	-- Full old Desc: "Ngáº«u nhiÃªn nháº­n hiá»‡u á»©ng cá»§a: #{{Collectible327}} The Polaroid#{{Collectible328}} The Negative#{{Trinket48}} A Missing Page#{{Trinket23}} Missing Poster"
	-- English: "Randomly grants the effect of:#{VAR:TEXT}"

	[T_ID .. 22] = "{{Heart}} Giáº£m tá»· lá»‡ xuáº¥t hiá»‡n cá»§a trÃ¡i tim xuá»‘ng 20%#{{BlackHeart}} Táº¥t cáº£ váº­t pháº©m trÃ¡i tim biáº¿n thÃ nh TrÃ¡i Tim Äen#{{Key}} TÄƒng cÆ¡ há»™i rÆ¡i chÃ¬a khÃ³a", -- Daemon's Tail
	-- English: "{{Heart}} Decreases spawn rate of hearts to 20%#{{BlackHeart}} All Heart pickups turn into Black Hearts#{{Key}} Increases the drop chance of keys"

	[T_ID .. 23] = "{{Player10}} Há»“i sinh thÃ nh The Lost khi cháº¿t", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death"

	[T_ID .. 24] = "{{Coin}} 20% cÆ¡ há»™i cao hÆ¡n Ä‘á»ƒ Ä‘á»“ng xu xuáº¥t hiá»‡n tá»« phÃ¢n#Nháº·t Ä‘á»“ng xu khiáº¿n Isaac Ä‘Ã¡nh ráº¯m", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#Picking up coins makes Isaac fart"

	[T_ID .. 25] = "Isaac Ä‘Ã¡nh ráº¯m hoáº·c sinh ra phÃ¢n má»—i 30 giÃ¢y", -- Mysterious Candy
	-- English: "Isaac farts or spawns poop every 30 seconds"

	[T_ID .. 26] = "NÆ°á»›c máº¯t cá»§a Isaac di chuyá»ƒn theo hÃ¬nh gÃ³c cáº¡nh", -- Hook Worm
	-- Full old Desc: "â†‘ {{Range}} +10 Táº§m báº¯n#NÆ°á»›c máº¯t cá»§a Isaac di chuyá»ƒn theo hÃ¬nh gÃ³c cáº¡nh"
	-- English: "Isaac's tears move in angular patterns"

	[T_ID .. 28] = "{{Player4}} 22% cÆ¡ há»™i há»“i sinh thÃ nh ??? (Blue Baby) khi cháº¿t", -- Broken Ankh
	-- English: "{{Player4}} 22% chance to respawn as ??? (Blue Baby) on death"

	[T_ID .. 29] = "Nháº­n sÃ¡t thÆ°Æ¡ng sinh ra 1 ruá»“i xanh", -- Fish Head
	-- English: "Taking damage spawns 1 blue fly"

	[T_ID .. 32] = "25% cÆ¡ há»™i nháº­n hiá»‡u á»©ng náº¥m ngáº«u nhiÃªn má»—i phÃ²ng#CÃ³ thá»ƒ hiá»ƒn thá»‹ phÃ²ng Ä‘áº·c biá»‡t trÃªn báº£n Ä‘á»“ nhá»", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room#Can reveal special rooms on the minimap"

	[T_ID .. 34] = "{{UnknownHeart}} 10% cÆ¡ há»™i pháº§n thÆ°á»Ÿng khi dá»n phÃ²ng lÃ  má»™t trÃ¡i tim ngáº«u nhiÃªn#{{Heart}} 33% cÆ¡ há»™i nháº­n thÃªm má»™t trÃ¡i tim tá»« rÆ°Æ¡ng, Ä‘Ã¡ nhuá»™m mÃ u, vÃ  mÃ¡y bá»‹ phÃ¡ há»§y", -- Child's Heart
	-- English: "{{UnknownHeart}} 10% chance for the room clear reward to be a random heart#{{Heart}} 33% chance for a bonus heart from chests, tinted rocks, and destroyed machines"

	[T_ID .. 36] = "{{Key}} 10% cÆ¡ há»™i pháº§n thÆ°á»Ÿng khi dá»n phÃ²ng lÃ  má»™t chÃ¬a khÃ³a#{{Key}} 33% cÆ¡ há»™i nháº­n thÃªm má»™t chÃ¬a khÃ³a tá»« rÆ°Æ¡ng, Ä‘Ã¡ nhuá»™m mÃ u, vÃ  mÃ¡y bá»‹ phÃ¡ há»§y", -- Rusted Key
	-- English: "{{Key}} 10% chance for the room clear reward to be a key#{{Key}} 33% chance for a bonus key from chests, tinted rocks, and destroyed machines"

	[T_ID .. 38] = "+10% cÆ¡ há»™i trÃ¡i tim rÆ¡i ra lÃ  {{SoulHeart}} TrÃ¡i Tim Linh Há»“n, {{BlackHeart}} TrÃ¡i Tim Äen hoáº·c {{EmptyBoneHeart}} TrÃ¡i Tim XÆ°Æ¡ng", -- Mom's Pearl
	-- English: "+10% chance for heart drops to be {{SoulHeart}} Soul Hearts, {{BlackHeart}} Black Hearts or {{EmptyBoneHeart}} Bone Hearts"

	[T_ID .. 40] = "{{Timer}} Nháº­n sÃ¡t thÆ°Æ¡ng cÃ³ 20% cÆ¡ há»™i nháº­n â†‘ {{Damage}} +1.8 sÃ¡t thÆ°Æ¡ng cho phÃ²ng", -- Red Patch
	-- Full old Desc: "{{Timer}} Nháº­n sÃ¡t thÆ°Æ¡ng cÃ³ 20% cÆ¡ há»™i nháº­n â†‘ {{Damage}} +1.8 sÃ¡t thÆ°Æ¡ng cho phÃ²ng#{{Luck}} 100% cÆ¡ há»™i á»Ÿ 8 may máº¯n"
	-- English: "{{Timer}} Taking damage has a {VAR:LUCKCHANCE}% chance to grant â†‘ {{Damage}} +1.8 damage for the room"

	[T_ID .. 41] = "{{Bomb}} 10% cÆ¡ há»™i pháº§n thÆ°á»Ÿng khi dá»n phÃ²ng lÃ  má»™t bom#{{Bomb}} 33% cÆ¡ há»™i nháº­n thÃªm má»™t bom tá»« rÆ°Æ¡ng, Ä‘Ã¡ nhuá»™m mÃ u, vÃ  mÃ¡y bá»‹ phÃ¡ há»§y#{{Warning}} Loáº¡i bá» {{Trinket53}} Tick", -- Match Stick
	-- English: "{{Bomb}} 10% chance for the room clear reward to be a bomb#{{Bomb}} 33% chance for a bonus bomb from chests, tinted rocks, and destroyed machines#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 42] = "+8% cÆ¡ há»™i pháº§n thÆ°á»Ÿng khi dá»n phÃ²ng#33% cÆ¡ há»™i nháº­n thÃªm má»™t váº­t pháº©m tá»« rÆ°Æ¡ng, Ä‘Ã¡ nhuá»™m mÃ u, vÃ  mÃ¡y bá»‹ phÃ¡ há»§y", -- Lucky Toe
	-- Full old Desc: "â†‘ {{Luck}} +1 May máº¯n#+8% cÆ¡ há»™i pháº§n thÆ°á»Ÿng khi dá»n phÃ²ng#33% cÆ¡ há»™i nháº­n thÃªm má»™t váº­t pháº©m tá»« rÆ°Æ¡ng, Ä‘Ã¡ nhuá»™m mÃ u, vÃ  mÃ¡y bá»‹ phÃ¡ há»§y"
	-- English: "+8% room clear reward chance#33% chance for an extra pickup from chests, tinted rocks, and destroyed machines"

	[T_ID .. 43] = "Khi bá»‹ giáº£m xuá»‘ng cÃ²n ná»­a trÃ¡i tim hoáº·c Ã­t hÆ¡n, Isaac Ä‘Æ°á»£c dá»‹ch chuyá»ƒn Ä‘áº¿n má»™t phÃ²ng ngáº«u nhiÃªn", -- Cursed Skull
	-- English: "When damaged down to half a heart or less, Isaac is teleported to a random room"

	[T_ID .. 44] = "{{Pill}} 10% cÆ¡ há»™i pháº§n thÆ°á»Ÿng khi dá»n phÃ²ng lÃ  má»™t viÃªn thuá»‘c#{{Pill}} 33% cÆ¡ há»™i nháº­n thÃªm má»™t viÃªn thuá»‘c tá»« rÆ°Æ¡ng, Ä‘Ã¡ nhuá»™m mÃ u, vÃ  mÃ¡y bá»‹ phÃ¡ há»§y", -- Safety Cap
	-- English: "{{Pill}} 10% chance for the room clear reward to be a pill#{{Pill}} 33% chance for a bonus pill from chests, tinted rocks, and destroyed machines"

	[T_ID .. 45] = "{{Card}} 10% cÆ¡ há»™i pháº§n thÆ°á»Ÿng khi dá»n phÃ²ng lÃ  má»™t lÃ¡ bÃ i#{{Card}} 33% cÆ¡ há»™i nháº­n thÃªm má»™t lÃ¡ bÃ i tá»« rÆ°Æ¡ng, Ä‘Ã¡ nhuá»™m mÃ u, vÃ  mÃ¡y bá»‹ phÃ¡ há»§y", -- Ace of Spades
	-- English: "{{Card}} 10% chance for the room clear reward to be a card#{{Card}} 33% chance for a bonus card from chests, tinted rocks, and destroyed machines"

	[T_ID .. 49] = "{{HalfHeart}} Nháº·t má»™t Ä‘á»“ng xu cÃ³ 50% cÆ¡ há»™i sinh ra ná»­a TrÃ¡i Tim Äá»", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 50% chance to spawn a half Red Heart"

	[T_ID .. 50] = "{{Bomb}} Nháº·t má»™t Ä‘á»“ng xu cÃ³ 50% cÆ¡ há»™i sinh ra má»™t bom", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 50% chance to spawn a bomb"

	[T_ID .. 51] = "{{Key}} Nháº·t má»™t Ä‘á»“ng xu cÃ³ 50% cÆ¡ há»™i sinh ra má»™t chÃ¬a khÃ³a", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 50% chance to spawn a key"

	[T_ID .. 52] = "{{Coin}} Nháº·t má»™t Ä‘á»“ng xu cÃ³ 50% cÆ¡ há»™i thÃªm má»™t Ä‘á»“ng xu vÃ o bá»™ Ä‘áº¿m", -- Counterfeit Penny
	-- English: "{{Coin}} Picking up a coin has a 50% chance to add another coin to the counter"

	[T_ID .. 53] = "{{HealingRed}} Há»“i 1 trÃ¡i tim khi vÃ o {{BossRoom}} PhÃ²ng TrÃ¹m#-15% mÃ¡u trÃ¹m#{{Warning}} Má»™t khi nháº·t lÃªn, khÃ´ng thá»ƒ bá» Ä‘Æ°á»£c#Chá»‰ cÃ³ thá»ƒ bá» báº±ng {{Trinket41}} Match Stick hoáº·c nuá»‘t chá»­ng", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick or gulping"

	[T_ID .. 54] = "báº¡n Ä‘á»“ng hÃ nh cÃ³ nÆ°á»›c máº¯t xuyÃªn tháº¥u", -- Isaac's Head
	-- Full old Desc: "báº¡n Ä‘á»“ng hÃ nh cÃ³ nÆ°á»›c máº¯t xuyÃªn tháº¥u#GÃ¢y 3.5 sÃ¡t thÆ°Æ¡ng má»—i nÆ°á»›c máº¯t"
	-- English: "Familiar with piercing tears"

	[T_ID .. 55] = "{{EternalHeart}} VÃ o táº§ng má»›i nháº­n +1 TrÃ¡i Tim VÄ©nh Cá»­u", -- Maggy's Faith
	-- English: "{{EternalHeart}} Entering a new floor grants +1 Eternal Heart"

	[T_ID .. 56] = "{{DevilRoom}} Giáº£m giÃ¡ táº¥t cáº£ giao dá»‹ch quá»· xuá»‘ng cÃ²n 1 Ã´ tim#KhÃ´ng giáº£m giÃ¡ 3 TrÃ¡i Tim Linh Há»“n", -- Judas' Tongue
	-- English: "{{DevilRoom}} Reduces all devil deal prices to 1 heart container#Doesn't reduce 3 Soul Heart prices"

	[T_ID .. 57] = "báº¡n Ä‘á»“ng hÃ nh náº£y quanh phÃ²ng#Báº¯n cÃ¹ng hÆ°á»›ng vá»›i Isaac", -- ???'s Soul
	-- Full old Desc: "báº¡n Ä‘á»“ng hÃ nh náº£y quanh phÃ²ng#Báº¯n cÃ¹ng hÆ°á»›ng vá»›i Isaac#GÃ¢y 3.5 sÃ¡t thÆ°Æ¡ng má»—i nÆ°á»›c máº¯t"
	-- English: "Familiar that bounces around the room#Shoots in the same direction as Isaac"

	[T_ID .. 58] = "{{Timer}} Giáº¿t má»™t káº» Ä‘á»‹ch cÃ³ 1/15 cÆ¡ há»™i nháº­n â†‘ {{Damage}} +0.5 sÃ¡t thÆ°Æ¡ng cho phÃ²ng", -- Samson's Lock
	-- Full old Desc: "{{Timer}} Giáº¿t má»™t káº» Ä‘á»‹ch cÃ³ 1/15 cÆ¡ há»™i nháº­n â†‘ {{Damage}} +0.5 sÃ¡t thÆ°Æ¡ng cho phÃ²ng#{{Luck}} 100% cÆ¡ há»™i á»Ÿ 10 may máº¯n"
	-- English: "{{Timer}} Killing an enemy has a {VAR:LUCKCHANCE}% chance to grant â†‘ {{Damage}} +0.5 damage for the room"

	[T_ID .. 61] = "{{RedChest}} Biáº¿n táº¥t cáº£ rÆ°Æ¡ng thÃ nh RÆ°Æ¡ng Äá»", -- The Left Hand
	-- English: "{{RedChest}} Turns all chests into Red Chests"

	[T_ID .. 62] = "ÄÃ¡ khÃ´ng gian vÃ  Ä‘Ã¡ nhuá»™m mÃ u nháº¥p nhÃ¡y má»—i 10 giÃ¢y", -- Shiny Rock
	-- English: "Crawlspace rocks and tinted rocks blink every 10 seconds"

	[T_ID .. 63] = "{{Bomb}} Biáº¿n Bom Quá»· thÃ nh váº­t pháº©m bom", -- Safety Scissors
	-- English: "{{Bomb}} Turns Troll Bombs into bomb pickups"

	[T_ID .. 64] = "Cáº¥p hiá»‡u á»©ng sÃ¢u ngáº«u nhiÃªn má»—i 3 giÃ¢y", -- Rainbow Worm
	-- English: "Grants a random worm effect every 3 seconds"

	[T_ID .. 67] = "Nháº­n sÃ¡t thÆ°Æ¡ng cÃ³ 50% cÆ¡ há»™i kÃ­ch hoáº¡t má»™t trong cÃ¡c hiá»‡u á»©ng sau:#{VAR:TEXT}", -- Cracked Dice
	-- Full old Desc: "Nháº­n sÃ¡t thÆ°Æ¡ng cÃ³ 50% cÆ¡ há»™i kÃ­ch hoáº¡t má»™t trong cÃ¡c hiá»‡u á»©ng sau:#{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible386}} D12 #{{Collectible166}} D20"
	-- English: "Taking damage has a 50% chance to trigger one of these effects:#{VAR:TEXT}"

	[T_ID .. 68] = "Isaac thu hÃºt váº­t pháº©m vÃ  káº» Ä‘á»‹ch", -- Super Magnet
	-- English: "Isaac attracts pickups and enemies"

	[T_ID .. 69] = "Ngáº«u nhiÃªn ngá»¥y trang Isaac#{{Confusion}} LÃ m káº» Ä‘á»‹ch hoang mang", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies"

	[T_ID .. 70] = "Thá»‰nh thoáº£ng sinh ra má»™t nhá»‡n xanh trong phÃ²ng thÃ¹ Ä‘á»‹ch", -- Louse
	-- English: "Occasionally spawns a blue spider in hostile rooms"

	[T_ID .. 71] = "Bom cá»§a Isaac Ä‘á»ƒ láº¡i cháº¥t lá»ng gÃ¢y sÃ¡t thÆ°Æ¡ng", -- Bob's Bladder
	-- English: "Isaac's bombs leave damaging creep"

	[T_ID .. 72] = "{{Battery}} 6.66% cÆ¡ há»™i pháº§n thÆ°á»Ÿng khi dá»n phÃ²ng lÃ  má»™t pin#{{Battery}} +10% cÆ¡ há»™i váº­t pháº©m ngáº«u nhiÃªn lÃ  má»™t pin#{{Battery}} 5% cÆ¡ há»™i thÃªm 1 nÄƒng lÆ°á»£ng cho váº­t pháº©m kÃ­ch hoáº¡t Ä‘ang cáº§m khi dá»n phÃ²ng", -- Watch Battery
	-- English: "{{Battery}} 6.66% chance for the room clear reward to be a battery#{{Battery}} +10% chance for random pickups to be a battery#{{Battery}} 5% chance to add 1 charge to held active item when clearing a room"

	[T_ID .. 73] = "{{Bomb}} 10% cÆ¡ há»™i bom ná»• rÆ¡i ra má»™t váº­t pháº©m bom", -- Blasting Cap
	-- English: "{{Bomb}} 10% chance for exploding bombs to drop a bomb pickup"

	[T_ID .. 74] = "{{LadderRoom}} +0.5% cÆ¡ há»™i hiá»ƒn thá»‹ má»™t khÃ´ng gian áº©n khi phÃ¡ Ä‘Ã¡", -- Stud Finder
	-- English: "{{LadderRoom}} +0.5% chance to reveal a crawlspace when breaking a rock"

	[T_ID .. 75] = "Cáº¥p hiá»‡u á»©ng trang sá»©c ngáº«u nhiÃªn má»—i phÃ²ng", -- Error
	-- English: "Grants a random trinket effect every room"

	[T_ID .. 76] = "â†‘ 50% cÆ¡ há»™i rÆ°Æ¡ng sinh thÃªm váº­t pháº©m#â†“ 50% cÆ¡ há»™i rÆ°Æ¡ng chá»‰ chá»©a má»™t con ruá»“i", -- Poker Chip
	-- English: "â†‘ 50% chance for chests to spawn extra pickups#â†“ 50% chance for chests to contain a single fly"

	[T_ID .. 77] = "TÄƒng Ä‘á»™ Ä‘áº©y lÃ¹i", -- Blister
	-- English: "Increases knockback"

	[T_ID .. 78] = "Hiá»‡u á»©ng tráº¡ng thÃ¡i Ã¡p dá»¥ng lÃªn káº» Ä‘á»‹ch kÃ©o dÃ i gáº¥p Ä‘Ã´i", -- Second Hand
	-- English: "Status effects applied to enemies last twice as long"

	[T_ID .. 79] = "Sá»­ dá»¥ng má»™t {{Rune}} rune, {{Card}} lÃ¡ bÃ i hoáº·c {{Pill}} viÃªn thuá»‘c cÃ³ 25% cÆ¡ há»™i sinh ra má»™t báº£n sao cá»§a rune, lÃ¡ bÃ i hoáº·c viÃªn thuá»‘c Ä‘Ã³", -- Endless Nameless
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill has a 25% chance to spawn a copy of that rune, card or pill"

	[T_ID .. 81] = "Khung báº¥t tá»­ sau khi nháº­n sÃ¡t thÆ°Æ¡ng kÃ©o dÃ i gáº¥p Ä‘Ã´i", -- Blind Rage
	-- English: "Invincibility frames after taking damage last twice as long"

	[T_ID .. 82] = "{{TreasureRoom}} CÃ¡c PhÃ²ng Kho BÃ¡u trong tÆ°Æ¡ng lai cÃ³ +15% cÆ¡ há»™i cho Isaac chá»n giá»¯a hai váº­t pháº©m", -- Golden Horse Shoe
	-- English: "{{TreasureRoom}} Future Treasure Rooms have +15% chance to let Isaac choose between two items"

	[T_ID .. 83] = "{{Shop}} Cho phÃ©p Isaac má»Ÿ Cá»­a hÃ ng miá»…n phÃ­", -- Store Key
	-- English: "{{Shop}} Lets Isaac open Shops for free"

	[T_ID .. 84] = "{{Coin}} 5% thÃªm Ä‘á»“ng xu vÃ  Ã­t trÃ¡i tim hÆ¡n tá»« pháº§n thÆ°á»Ÿng dá»n phÃ²ng#Greed vÃ  Super Greed khÃ´ng cÃ²n xuáº¥t hiá»‡n trong {{Shop}} Cá»­a hÃ ng hoáº·c {{SecretRoom}} PhÃ²ng BÃ­ Máº­t", -- Rib of Greed
	-- English: "{{Coin}} 5% more coins and fewer hearts from room clear rewards#Greed and Super Greed no longer appear in {{Shop}} Shops or {{SecretRoom}} Secret Rooms"

	[T_ID .. 85] = "{{DonationMachine}} Sá»­ dá»¥ng MÃ¡y QuyÃªn GÃ³p cÃ³ 33% cÆ¡ há»™i:#{{HealingRed}} Há»“i 1 trÃ¡i tim (40%)#{{Coin}} Cho 1 Ä‘á»“ng xu (40%)#{{Luck}} Cáº¥p +1 may máº¯n (15%)#{{Beggar}} Sinh ra má»™t NgÆ°á»i Ä‚n Xin (5%)", -- Karma
	-- English: "{{DonationMachine}} Using a Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)"

	[T_ID .. 86] = "PhÃ¡ phÃ¢n sinh ra 1 ruá»“i xanh", -- Lil Larva
	-- English: "Destroying poop spawns 1 blue fly"

	[T_ID .. 87] = "{{HealingRed}} Sá»­ dá»¥ng chÃ¬a khÃ³a há»“i ná»­a trÃ¡i tim#{{Heart}} Biáº¿n ná»­a trÃ¡i tim thÃ nh trÃ¡i tim Ä‘áº§y Ä‘á»§", -- Mom's Locket
	-- English: "{{HealingRed}} Using a key heals half a heart#{{Heart}} Turns half hearts into full hearts"

	[T_ID .. 88] = "NgÄƒn váº­t pháº©m kÃ­ch hoáº¡t xuáº¥t hiá»‡n", -- NO!
	-- English: "Prevents active items from spawning"

	[T_ID .. 89] = "báº¡n Ä‘á»“ng hÃ nh á»Ÿ gáº§n Isaac hÆ¡n", -- Child Leash
	-- English: "Familiars stay closer to Isaac"

	[T_ID .. 90] = "PhÃ¢n ná»• gÃ¢y 100 sÃ¡t thÆ°Æ¡ng khi bá»‹ phÃ¡ há»§y", -- Brown Cap
	-- English: "Poop explodes for 100 damage when destroyed"

	[T_ID .. 91] = "33% cÆ¡ há»™i sinh ra PhÃ¢n Äen#{{BlackHeart}} PhÃ¡ PhÃ¢n Äen cÃ³ 5% cÆ¡ há»™i sinh ra má»™t TrÃ¡i Tim Äen", -- Meconium
	-- English: "33% chance for Black Poops to spawn#{{BlackHeart}} Destroying Black Poop has a 5% chance to spawn a Black Heart"

	[T_ID .. 92] = "â†‘ x1.33 Há»‡ sá»‘ chá»‰ sá»‘ cho cÃ¡c chá»‰ sá»‘ trÃªn 1 {{Speed}} tá»‘c Ä‘á»™, 3.5 {{Damage}} sÃ¡t thÆ°Æ¡ng, 23.75 {{Range}} táº§m báº¯n, 1 {{Shotspeed}} Tá»‘c Ä‘á»™ Ä‘áº¡n", -- Cracked Crown
	-- Full old Desc: "â†‘ {{Tears}} x0.8 Äá»™ trá»… nÆ°á»›c máº¯t#â†‘ x1.33 Há»‡ sá»‘ chá»‰ sá»‘ cho cÃ¡c chá»‰ sá»‘ trÃªn 1 {{Speed}} tá»‘c Ä‘á»™, 3.5 {{Damage}} sÃ¡t thÆ°Æ¡ng, 23.75 {{Range}} táº§m báº¯n, 1 {{Shotspeed}} Tá»‘c Ä‘á»™ Ä‘áº¡n"
	-- English: "â†‘ x1.33 Stat multiplier for the stats that are above 1 {{Speed}} speed, 3.5 {{Damage}} damage, 23.75 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 93] = "15% cÆ¡ há»™i má»—i phÃ²ng Ä‘á»ƒ táº¥t cáº£ káº» Ä‘á»‹ch ruá»“i trá»Ÿ nÃªn thÃ¢n thiá»‡n", -- Used Diaper
	-- English: "15% chance per room for all fly enemies to become friendly"

	[T_ID .. 94] = "Gáº¥p Ä‘Ã´i sá»‘ lÆ°á»£ng ruá»“i xanh / nhá»‡n xanh sinh ra", -- Fish Tail
	-- English: "Doubles all blue fly / spider spawns"

	[T_ID .. 95] = "RÄƒng gÃ¢y sÃ¡t thÆ°Æ¡ng gáº¥p 2 láº§n sÃ¡t thÆ°Æ¡ng cá»§a Isaac", -- Black Tooth
	-- Full old Desc: "{{Poison}} 3% cÆ¡ há»™i báº¯n nÆ°á»›c máº¯t rÄƒng Ä‘á»™c#RÄƒng gÃ¢y sÃ¡t thÆ°Æ¡ng gáº¥p 2 láº§n sÃ¡t thÆ°Æ¡ng cá»§a Isaac"
	-- English: "{{Poison}} {VAR:LUCKCHANCE}% chance to shoot poison tooth tears#The tooth deals 2x Isaac's damage"

	[T_ID .. 96] = "NÆ°á»›c máº¯t cá»§a Isaac di chuyá»ƒn nhanh theo hÃ¬nh xoáº¯n á»‘c", -- Ouroboros Worm
	-- Full old Desc: "â†‘ {{Range}} +4 Táº§m báº¯n#â†‘ +2 Tá»‘c Ä‘á»™ rÆ¡i nÆ°á»›c máº¯t#NÆ°á»›c máº¯t xuyÃªn quang phá»•#CÆ¡ há»™i báº¯n nÆ°á»›c máº¯t tá»± dáº«n#{{Luck}} 100% cÆ¡ há»™i á»Ÿ 9 may máº¯n#NÆ°á»›c máº¯t cá»§a Isaac di chuyá»ƒn nhanh theo hÃ¬nh xoáº¯n á»‘c"
	-- English: "{VAR:LUCKCHANCE}% chance for homing tears#Isaac's tears move quickly in a spiral pattern"

	[T_ID .. 97] = "Giá»›i háº¡n á»Ÿ 2 báº¡n Ä‘á»“ng hÃ nh", -- Tonsil
	-- Full old Desc: "Nháº­n sÃ¡t thÆ°Æ¡ng 12-20 láº§n sinh ra má»™t báº¡n Ä‘á»“ng hÃ nh cháº·n Ä‘áº¡n#Giá»›i háº¡n á»Ÿ 2 báº¡n Ä‘á»“ng hÃ nh"
	-- English: "Taking damage {VAR:RANGE} times spawns a projectile blocking familiar#Disappears after spawning 2 familiars"

	[T_ID .. 98] = "10% cÆ¡ há»™i báº¯n nÆ°á»›c máº¯t dÃ­nh tá»± dáº«n#{{Damage}} Má»¥n nhá»t gÃ¢y sÃ¡t thÆ°Æ¡ng báº±ng sÃ¡t thÆ°Æ¡ng cá»§a Isaac má»™t láº§n má»—i giÃ¢y#Má»¥n nhá»t dÃ­nh trong 60 giÃ¢y", -- Nose Goblin
	-- Full old Desc: "10% cÆ¡ há»™i báº¯n nÆ°á»›c máº¯t dÃ­nh tá»± dáº«n#{{Damage}} Má»¥n nhá»t gÃ¢y sÃ¡t thÆ°Æ¡ng báº±ng sÃ¡t thÆ°Æ¡ng cá»§a Isaac má»™t láº§n má»—i giÃ¢y#Má»¥n nhá»t dÃ­nh trong 60 giÃ¢y"
	-- English: "10% chance to shoot a sticky tear#50% chance for it to be homing#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for {VAR:1} seconds"

	[T_ID .. 99] = "10% cÆ¡ há»™i báº¯n nÆ°á»›c máº¯t náº£y", -- Super Ball
	-- English: "10% chance to shoot bouncing tears"

	[T_ID .. 100] = "Giá»¯ má»™t váº­t pháº©m kÃ­ch hoáº¡t Ä‘áº§y nÄƒng lÆ°á»£ng cáº¥p:#{VAR:EFFECTLIST}", -- Vibrant Bulb
	-- Full old Desc: "Giá»¯ má»™t váº­t pháº©m kÃ­ch hoáº¡t Ä‘áº§y nÄƒng lÆ°á»£ng cáº¥p:#â†‘ {{Speed}} +0.25 Tá»‘c Ä‘á»™#â†‘ {{Tears}} +0.2 NÆ°á»›c máº¯t#â†‘ {{Damage}} +0.5 SÃ¡t thÆ°Æ¡ng#â†‘ {{Range}} +0.75 Táº§m báº¯n#â†‘ {{Shotspeed}} +0.1 Tá»‘c Ä‘á»™ Ä‘áº¡n#â†‘ {{Luck}} +1 May máº¯n"
	-- English: "Holding a fully charged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 101] = "Giá»¯ má»™t váº­t pháº©m kÃ­ch hoáº¡t háº¿t nÄƒng lÆ°á»£ng cáº¥p:#{VAR:EFFECTLIST}", -- Dim Bulb
	-- Full old Desc: "Giá»¯ má»™t váº­t pháº©m kÃ­ch hoáº¡t háº¿t nÄƒng lÆ°á»£ng cáº¥p:#â†‘ {{Speed}} +0.5 Tá»‘c Ä‘á»™#â†‘ {{Tears}} +0.4 NÆ°á»›c máº¯t#â†‘ {{Damage}} +1.5 SÃ¡t thÆ°Æ¡ng#â†‘ {{Range}} +1.5 Táº§m báº¯n#â†‘ {{Shotspeed}} +0.3 Tá»‘c Ä‘á»™ Ä‘áº¡n#â†‘ {{Luck}} +2 May máº¯n"
	-- English: "Holding a completely uncharged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 102] = "{{SecretRoom}} +1 PhÃ²ng BÃ­ Máº­t thÃªm má»—i táº§ng khi cáº§m", -- Fragmented Card
	-- English: "{{SecretRoom}} +1 extra Secret Room per floor while held"

	[T_ID .. 103] = "Biáº¿n váº­t pháº©m Ä‘Æ¡n thÃ nh váº­t pháº©m Ä‘Ã´i khi sá»‘ {{Coin}} Ä‘á»“ng xu, {{Bomb}} bom vÃ  {{Key}} chÃ¬a khÃ³a cá»§a Isaac báº±ng nhau", -- Equality!
	-- English: "Turns single pickups into double pickups when Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal"

	[T_ID .. 106] = "TÄƒng bÃ¡n kÃ­nh cá»§a cháº¥t lá»ng thÃ¢n thiá»‡n", -- Lost Cork
	-- English: "Increases the radius of friendly creep"

	[T_ID .. 107] = "Nháº­n sÃ¡t thÆ°Æ¡ng lÃ m cáº¡n TrÃ¡i Tim Äá» trÆ°á»›c TrÃ¡i Tim Linh Há»“n/Äen#SÃ¡t thÆ°Æ¡ng trÃ¡i tim Ä‘á» nÃ y khÃ´ng giáº£m cÆ¡ há»™i vÃ o PhÃ²ng Quá»·/ThiÃªn Tháº§n", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#This red heart damage does not reduce Devil/Angel Room chances"

	[T_ID .. 108] = "Bá»‹ trÃºng 1-9 vá»¥ ná»• phÃ¡ há»§y trang sá»©c vÃ  rÆ¡i ra má»™t {{UnknownHeart}} trÃ¡i tim, {{Coin}} Ä‘á»“ng xu, {{Key}} chÃ¬a khÃ³a vÃ  {{Trinket}} trang sá»©c ngáº«u nhiÃªn#KhÃ´ng cáº§n nháº­n sÃ¡t thÆ°Æ¡ng", -- Walnut
	-- English: "Getting hit by 1-9 explosions destroys the trinket and drops a random {{UnknownHeart}} heart, {{Coin}} coin, {{Key}} key and {{Trinket}} trinket#Taking damage isn't required"

	[T_ID .. 109] = "báº¡n Ä‘á»“ng hÃ nh bá»‹ káº¹t á»Ÿ má»™t chá»— vÃ  khÃ´ng thá»ƒ di chuyá»ƒn", -- Duct Tape
	-- English: "Familiars are stuck in one spot and cannot move"

	[T_ID .. 110] = "{{Shop}} Cá»­a hÃ ng xuáº¥t hiá»‡n trong Tá»­ Cung", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb"

	[T_ID .. 111] = "{{TreasureRoom}} PhÃ²ng Kho BÃ¡u xuáº¥t hiá»‡n trong Tá»­ Cung", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb"

	[T_ID .. 112] = "{{RestockMachine}} Há»™p tÃ¡i cung cáº¥p luÃ´n xuáº¥t hiá»‡n trong {{TreasureRoom}} PhÃ²ng Kho BÃ¡u", -- Pay To Win
	-- English: "{{RestockMachine}} Restock boxes always spawn in {{TreasureRoom}} Treasure Rooms"

	[T_ID .. 113] = "VÃ o phÃ²ng thÃ¹ Ä‘á»‹ch sinh ra má»™t ruá»“i táº¥n cÃ´ng ná»•#Ruá»“i gÃ¢y sÃ¡t thÆ°Æ¡ng gáº¥p 2 láº§n sÃ¡t thÆ°Æ¡ng cá»§a Isaac + sÃ¡t thÆ°Æ¡ng ná»•", -- Locust of War
	-- English: "Entering a hostile room spawns an exploding attack fly #The fly deals 2x Isaac's damage + explosion damage"

	[T_ID .. 114] = "{{Poison}} VÃ o phÃ²ng thÃ¹ Ä‘á»‹ch sinh ra má»™t ruá»“i táº¥n cÃ´ng Ä‘á»™c#Ruá»“i gÃ¢y sÃ¡t thÆ°Æ¡ng gáº¥p 2 láº§n sÃ¡t thÆ°Æ¡ng cá»§a Isaac", -- Locust of Pestilence
	-- English: "{{Poison}} Entering a hostile room spawns a poison attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 115] = "{{Slow}} VÃ o phÃ²ng thÃ¹ Ä‘á»‹ch sinh ra má»™t ruá»“i táº¥n cÃ´ng lÃ m cháº­m#Ruá»“i gÃ¢y sÃ¡t thÆ°Æ¡ng gáº¥p 2 láº§n sÃ¡t thÆ°Æ¡ng cá»§a Isaac", -- Locust of Famine
	-- English: "{{Slow}} Entering a hostile room spawns a slowing attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 116] = "VÃ o phÃ²ng thÃ¹ Ä‘á»‹ch sinh ra má»™t ruá»“i táº¥n cÃ´ng#Ruá»“i gÃ¢y sÃ¡t thÆ°Æ¡ng gáº¥p 4 láº§n sÃ¡t thÆ°Æ¡ng cá»§a Isaac", -- Locust of Death
	-- English: "Entering a hostile room spawns an attack fly#The fly deals 4x Isaac's damage"

	[T_ID .. 117] = "VÃ o phÃ²ng thÃ¹ Ä‘á»‹ch sinh ra 1-4 ruá»“i táº¥n cÃ´ng#Má»—i ruá»“i gÃ¢y sÃ¡t thÆ°Æ¡ng gáº¥p 2 láº§n sÃ¡t thÆ°Æ¡ng cá»§a Isaac", -- Locust of Conquest
	-- English: "Entering a hostile room spawns 1-4 attack flies#Each fly deals 2x Isaac's damage"

	[T_ID .. 118] = "{{Timer}} Giáº¿t má»™t káº» Ä‘á»‹ch cÃ³ 5% cÆ¡ há»™i cáº¥p kháº£ nÄƒng bay cho phÃ²ng", -- Bat Wing
	-- English: "{{Timer}} Killing an enemy has a 5% chance to grant flight for the room"

	[T_ID .. 119] = "{{HealingRed}} VÃ o táº§ng má»›i há»“i ná»­a trÃ¡i tim", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half a heart"

	[T_ID .. 120] = "{{Battery}} VÃ o phÃ²ng trÃ¹m chÆ°a dá»n sáº¡ch náº¡p Ä‘áº§y nÄƒng lÆ°á»£ng cho váº­t pháº©m kÃ­ch hoáº¡t", -- Hairpin
	-- English: "{{Battery}} Entering an uncleared boss room fully recharges active items"

	[T_ID .. 121] = "{{Collectible313}} VÃ´ hiá»‡u hÃ³a sÃ¡t thÆ°Æ¡ng Ä‘áº§u tiÃªn nháº­n Ä‘Æ°á»£c trÃªn táº§ng", -- Wooden Cross
	-- English: "{{Collectible313}} Grants a Holy shield that prevents damage once per floor"

	[T_ID .. 122] = "Sá»­ dá»¥ng váº­t pháº©m kÃ­ch hoáº¡t lÃ m rÆ¡i nÃ³ xuá»‘ng bá»‡ trÃªn sÃ n#Nháº­n sÃ¡t thÆ°Æ¡ng cÃ³ 2% cÆ¡ há»™i lÃ m rÆ¡i má»™t trong cÃ¡c váº­t pháº©m thá»¥ Ä‘á»™ng cá»§a Isaac", -- Butter!
	-- English: "Using an active item drops it on a pedestal on the ground#Taking damage has a 2% chance to drop one of Isaac's passive items"

	[T_ID .. 123] = "TrÃ¹m thiÃªn tháº§n rÆ¡i váº­t pháº©m thiÃªn tháº§n thay vÃ¬ Máº£nh ChÃ¬a KhÃ³a", -- Filigree Feather
	-- English: "Angel bosses drop angel items instead of Key Pieces"

	[T_ID .. 124] = "Cá»­a cuá»‘i cÃ¹ng sá»­ dá»¥ng váº«n má»Ÿ", -- Door Stop
	-- English: "The last door used stays open"

	[T_ID .. 125] = "Káº¿t ná»‘i táº¥t cáº£ báº¡n Ä‘á»“ng hÃ nh báº±ng tia Ä‘iá»‡n#Tia gÃ¢y 6 sÃ¡t thÆ°Æ¡ng", -- Extension Cord
	-- English: "Connects all familiars with beams of electricity#The beams deal 6 damage"

	[T_ID .. 126] = "Nháº·t má»™t Ä‘á»“ng xu sinh ra má»™t ruá»“i xanh", -- Rotten Penny
	-- English: "Picking up a coin spawns a blue fly"

	[T_ID .. 127] = "Cáº¥p cho táº¥t cáº£ báº¡n Ä‘á»“ng hÃ nh kháº£ nÄƒng báº¯n tá»± dáº«n", -- Baby-Bender
	-- English: "Grants all familiars homing shots"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 1] = "Dá»‹ch chuyá»ƒn Isaac Ä‘áº¿n phÃ²ng Ä‘áº§u tiÃªn cá»§a táº§ng", -- 0 - The Fool
	-- English: "Teleports Isaac to the first room of the floor"

	[Card_ID .. 3] = "ChÃ¢n cá»§a Mom giáº«m lÃªn má»™t káº» Ä‘á»‹ch#ChÃ¢n cá»§a Mom giáº«m lÃªn Isaac náº¿u khÃ´ng cÃ³ káº» Ä‘á»‹ch", -- II - The High Priestess
	-- English: "Mom's Foot stomps on an enemy#Mom's Foot stomps Isaac if there are no enemies"

	[Card_ID .. 5] = "{{BossRoom}} Dá»‹ch chuyá»ƒn Isaac Ä‘áº¿n PhÃ²ng TrÃ¹m", -- IV - The Emperor
	-- English: "{{BossRoom}} Teleports Isaac to the Boss Room"

	[Card_ID .. 9] = "Sinh ra má»™t {{UnknownHeart}} trÃ¡i tim, {{Coin}} Ä‘á»“ng xu, {{Bomb}} bom vÃ  {{Key}} chÃ¬a khÃ³a ngáº«u nhiÃªn", -- VIII - Justice
	-- English: "Spawns a random {{UnknownHeart}} heart, {{Coin}} coin, {{Bomb}} bomb and {{Key}} key"

	[Card_ID .. 10] = "{{Shop}} Dá»‹ch chuyá»ƒn Isaac Ä‘áº¿n Cá»­a hÃ ng", -- IX - The Hermit
	-- English: "{{Shop}} Teleports Isaac to the Shop"

	[Card_ID .. 11] = "Sinh ra má»™t {{Slotmachine}} MÃ¡y ÄÃ¡nh Báº¡c hoáº·c {{FortuneTeller}} MÃ¡y BÃ³i ToÃ¡n", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 25% chance for it to be a Fortune Telling Machine"

	[Card_ID .. 15] = "{{DonationMachine}} Sinh ra má»™t MÃ¡y Hiáº¿n MÃ¡u", -- XIV - Temperance
	-- English: "{{DonationMachine}} Spawns a Blood Donation Machine"

	[Card_ID .. 17] = "Sinh ra 6 Bom Quá»·", -- XVI - The Tower
	-- English: "Spawns 6 Troll Bombs"

	[Card_ID .. 18] = "{{TreasureRoom}} Dá»‹ch chuyá»ƒn Isaac Ä‘áº¿n PhÃ²ng Kho BÃ¡u", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room"

	[Card_ID .. 19] = "{{SecretRoom}} Dá»‹ch chuyá»ƒn Isaac Ä‘áº¿n PhÃ²ng BÃ­ Máº­t", -- XVIII - The Moon
	-- English: "{{SecretRoom}} Teleports Isaac to the Secret Room"

	[Card_ID .. 21] = "Sinh ra má»™t NgÆ°á»i Ä‚n Xin hoáº·c NgÆ°á»i Ä‚n Xin Quá»·#2% cÆ¡ há»™i sinh ra má»™t NgÆ°á»i Ä‚n Xin Ä‘áº·c biá»‡t", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#2% chance for it to be a Key Master or Bomb Bum"

	[Card_ID .. 23] = "{{Bomb}} Gáº¥p Ä‘Ã´i sá»‘ bom cá»§a Isaac", -- 2 of Clubs
	-- English: "{{Bomb}} Doubles Isaac's number of bombs"

	[Card_ID .. 24] = "{{Coin}} Gáº¥p Ä‘Ã´i sá»‘ Ä‘á»“ng xu cá»§a Isaac", -- 2 of Diamonds
	-- English: "{{Coin}} Doubles Isaac's number of coins"

	[Card_ID .. 25] = "{{Key}} Gáº¥p Ä‘Ã´i sá»‘ chÃ¬a khÃ³a cá»§a Isaac", -- 2 of Spades
	-- English: "{{Key}} Doubles Isaac's number of keys"

	[Card_ID .. 26] = "{{HealingRed}} Gáº¥p Ä‘Ã´i sá»‘ TrÃ¡i Tim Äá» cá»§a Isaac {{ColorSilver}}(khÃ´ng pháº£i Ã´ tim){{CR}}", -- 2 of Hearts
	-- English: "{{HealingRed}} Doubles Isaac's number of Red Hearts {{ColorSilver}}(not containers){{CR}}"

	[Card_ID .. 27] = "{{Bomb}} Biáº¿n táº¥t cáº£ váº­t pháº©m thÃ nh bom ngáº«u nhiÃªn", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups into random bombs"

	[Card_ID .. 28] = "{{Coin}} Biáº¿n táº¥t cáº£ váº­t pháº©m thÃ nh Ä‘á»“ng xu ngáº«u nhiÃªn", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups into random coins"

	[Card_ID .. 29] = "{{Key}} Biáº¿n táº¥t cáº£ váº­t pháº©m thÃ nh chÃ¬a khÃ³a ngáº«u nhiÃªn", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups into random keys"

	[Card_ID .. 30] = "{{UnknownHeart}} Biáº¿n táº¥t cáº£ váº­t pháº©m thÃ nh trÃ¡i tim ngáº«u nhiÃªn", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups into random hearts"

	[Card_ID .. 31] = "{{AngelDevilChance}} Dá»‹ch chuyá»ƒn Isaac Ä‘áº¿n PhÃ²ng Quá»· hoáº·c PhÃ²ng ThiÃªn Tháº§n", -- Joker
	-- English: "{{AngelDevilChance}} Teleports Isaac to the Devil or Angel Room"

	[Card_ID .. 32] = "PhÃ¡ há»§y táº¥t cáº£ Ä‘Ã¡ trong phÃ²ng", -- Hagalaz
	-- English: "Destroy all rocks in the room"

	[Card_ID .. 33] = "NhÃ¢n Ä‘Ã´i táº¥t cáº£ váº­t pháº©m trong phÃ²ng", -- Jera
	-- English: "Duplicates all pickups in room"

	[Card_ID .. 34] = "Sinh ra má»™t cá»­a sáº­p xuá»‘ng táº§ng tiáº¿p theo#{{LadderRoom}} 8% cÆ¡ há»™i cho cá»­a sáº­p khÃ´ng gian áº©n", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} 8% chance for a crawlspace trapdoor"

	[Card_ID .. 35] = "{{CurseCursed}} XÃ³a táº¥t cáº£ lá»i nguyá»n cho táº§ng", -- Dagaz
	-- Full old Desc: "{{SoulHeart}} +1 TrÃ¡i Tim Linh Há»“n#{{CurseCursed}} XÃ³a táº¥t cáº£ lá»i nguyá»n cho táº§ng"
	-- English: "{{CurseCursed}} Removes all curses for the floor"

	[Card_ID .. 37] = "Äá»•i má»›i táº¥t cáº£ váº­t pháº©m trÃªn bá»‡ trong phÃ²ng", -- Perthro
	-- English: "Rerolls all pedestal items in the room"

	[Card_ID .. 40] = "KÃ­ch hoáº¡t hiá»‡u á»©ng rune ngáº«u nhiÃªn#25% cÆ¡ há»™i nhÃ¢n Ä‘Ã´i chÃ­nh nÃ³ khi sá»­ dá»¥ng", -- Blank Rune
	-- English: "Triggers a random rune effect#25% chance to duplicate itself when used"

	[Card_ID .. 41] = "Biáº¿n táº¥t cáº£ váº­t pháº©m trÃªn bá»‡ trong phÃ²ng thÃ nh tÄƒng chá»‰ sá»‘ ngáº«u nhiÃªn#Biáº¿n táº¥t cáº£ váº­t pháº©m trong phÃ²ng thÃ nh ruá»“i xanh", -- Black Rune
	-- Full old Desc: "GÃ¢y 40 sÃ¡t thÆ°Æ¡ng lÃªn táº¥t cáº£ káº» Ä‘á»‹ch#Biáº¿n táº¥t cáº£ váº­t pháº©m trÃªn bá»‡ trong phÃ²ng thÃ nh tÄƒng chá»‰ sá»‘ ngáº«u nhiÃªn#Biáº¿n táº¥t cáº£ váº­t pháº©m trong phÃ²ng thÃ nh ruá»“i xanh"
	-- English: "Converts all pedestal items in the room into random stat ups#Converts all pickups in the room into blue flies"

	[Card_ID .. 42] = "Sá»­ dá»¥ng lÃ¡ bÃ i nÃ©m nÃ³ theo hÆ°á»›ng Isaac Ä‘ang di chuyá»ƒn#Giáº¿t cháº¿t Báº¤T Ká»² káº» Ä‘á»‹ch nÃ o nÃ³ cháº¡m vÃ o ngay láº­p tá»©c (trá»« Delirium)", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium)"

	[Card_ID .. 43] = "LÃ m táº¥t cáº£ váº­t pháº©m vÃ  váº­t pháº©m nháº·t Ä‘Æ°á»£c trong {{Shop}} Cá»­a hÃ ng hoáº·c {{DevilRoom}} PhÃ²ng Quá»· miá»…n phÃ­", -- Credit Card
	-- English: "Makes all items and pickups in a {{Shop}} Shop or {{DevilRoom}} Devil Room free"

	[Card_ID .. 44] = "Hiá»ƒn thá»‹ cÃ¡c máº¹o \"há»¯u Ã­ch\" khi sá»­ dá»¥ng", -- Rules Card
	-- English: "Displays "helpful" tips on use"

	[Card_ID .. 45] = "Láº¥p Ä‘áº§y toÃ n bá»™ phÃ²ng báº±ng phÃ¢n", -- A Card Against Humanity
	-- English: "Fills the whole room with poop"

	[Card_ID .. 46] = "Giáº¿t cháº¿t Isaac ngay láº­p tá»©c vÃ  sinh ra 10 váº­t pháº©m hoáº·c váº­t pháº©m nháº·t Ä‘Æ°á»£c trÃªn sÃ n#Váº­t pháº©m sinh ra sáº½ sá»­ dá»¥ng kho váº­t pháº©m cá»§a phÃ²ng hiá»‡n táº¡i", -- Suicide King
	-- English: "Instantly kills Isaac and spawns 10 pickups or items on the floor#Spawned items will use the current room's item pool"

	[Card_ID .. 47] = "Má»Ÿ táº¥t cáº£ cá»­a trong phÃ²ng", -- Get Out Of Jail Free Card
	-- English: "Open all doors in the room"

	[Card_ID .. 48] = "Sá»­ dá»¥ng váº­t pháº©m kÃ­ch hoáº¡t cá»§a Isaac miá»…n phÃ­", -- ? Card
	-- English: "Uses Isaac's active item for free"

	[Card_ID .. 49] = "Äá»•i má»›i táº¥t cáº£ bá»‡ váº­t pháº©m vÃ  váº­t pháº©m nháº·t Ä‘Æ°á»£c trong phÃ²ng", -- Dice Shard
	-- English: "Rerolls all item pedestals and pickups in the room"

	[Card_ID .. 50] = "Hai Tay cá»§a Mom háº¡ xuá»‘ng vÃ  báº¯t láº¥y má»—i káº» Ä‘á»‹ch", -- Emergency Contact
	-- English: "Two of Mom's Hands come down and grab an enemy each"

	[Card_ID .. 51] = "{{HolyMantle}} KhiÃªn Holy Mantle cho phÃ²ng (ngÄƒn sÃ¡t thÆ°Æ¡ng má»™t láº§n)#25% cÆ¡ há»™i sinh ra má»™t LÃ¡ BÃ i ThÃ¡nh khÃ¡c", -- Holy Card
	-- English: "{{HolyMantle}} Holy Mantle shield for the room (prevents damage once)#25% chance to spawn another Holy Card"

	[Card_ID .. 52] = "{VAR:ROOMEFFECT}#Cho phÃ©p Isaac phÃ¡ Ä‘Ã¡ báº±ng cÃ¡ch Ä‘i vÃ o chÃºng", -- Huge Growth
	-- Full old Desc: "{{Timer}} Nháº­n cho phÃ²ng:#â†‘ {{Damage}} +7 SÃ¡t thÆ°Æ¡ng#â†‘ {{Range}} +30 Táº§m báº¯n#TÄƒng kÃ­ch thÆ°á»›c#Cho phÃ©p Isaac phÃ¡ Ä‘Ã¡ báº±ng cÃ¡ch Ä‘i vÃ o chÃºng"
	-- English: "{VAR:ROOMEFFECT}#Allows Isaac to destroy rocks by walking into them"

	[Card_ID .. 54] = "{VAR:ROOMEFFECT}#{{Slow}} LÃ m cháº­m káº» Ä‘á»‹ch", -- Era Walk
	-- Full old Desc: "{{Timer}} Nháº­n cho phÃ²ng:#â†‘ {{Speed}} +0.5 Tá»‘c Ä‘á»™#â†“ {{Shotspeed}} -1 Tá»‘c Ä‘á»™ Ä‘áº¡n#{{Slow}} LÃ m cháº­m káº» Ä‘á»‹ch"
	-- English: "{VAR:ROOMEFFECT}#{{Slow}} Slow down enemies"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 1] = "{{Poison}} Isaac Ä‘Ã¡nh ráº¯m vÃ  lÃ m Ä‘á»™c káº» Ä‘á»‹ch gáº§n Ä‘Ã³", -- Bad Gas
	-- English: "{{Poison}} Isaac farts and poisons nearby enemies"

	[Pill_ID .. 2] = "{{Warning}} GÃ¢y 1 Ã´ tim sÃ¡t thÆ°Æ¡ng lÃªn Isaac#Trá»Ÿ thÃ nh viÃªn thuá»‘c Há»“i Äáº§y MÃ¡u khi cÃ²n 1 trÃ¡i tim hoáº·c Ã­t hÆ¡n", -- Bad Trip
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#Becomes a Full Health pill at 1 heart or less"

	[Pill_ID .. 4] = "HoÃ¡n Ä‘á»•i sá»‘ {{Bomb}} bom vÃ  {{Key}} chÃ¬a khÃ³a cá»§a Isaac", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys"

	[Pill_ID .. 5] = "Isaac nhanh chÃ³ng sinh ra 5 quáº£ bom Ä‘Ã£ tháº¯p sÃ¡ng", -- Explosive Diarrhea
	-- English: "Isaac quickly spawns 5 lit bombs"

	[Pill_ID .. 7] = "Trá»Ÿ thÃ nh viÃªn thuá»‘c TÄƒng MÃ¡u khi cÃ²n 0 hoáº·c 1 Ã´ tim", -- Health Down
	-- Full old Desc: "â†“ {{EmptyHeart}} -1 MÃ¡u#Trá»Ÿ thÃ nh viÃªn thuá»‘c TÄƒng MÃ¡u khi cÃ²n 0 hoáº·c 1 Ã´ tim"
	-- English: "Becomes a Health Up pill at 0 or 1 heart containers"

	[Pill_ID .. 10] = "Ä‚n 3 viÃªn cáº¥p biáº¿n hÃ¬nh NgÆ°á»i Lá»›n:#{VAR:EFFECTLIST}", -- Puberty
	-- Full old Desc: "KhÃ´ng cÃ³ hiá»‡u á»©ng#Ä‚n 3 viÃªn cáº¥p biáº¿n hÃ¬nh NgÆ°á»i Lá»›n:#â†‘ {{Heart}} +1 MÃ¡u"
	-- English: "Eating 3 grants the Adult transformation:#{VAR:EFFECTLIST}"

	[Pill_ID .. 20] = "Dá»‹ch chuyá»ƒn Isaac Ä‘áº¿n má»™t phÃ²ng ngáº«u nhiÃªn#{{ErrorRoom}} CÆ¡ há»™i nhá» dá»‹ch chuyá»ƒn Isaac Ä‘áº¿n phÃ²ng I AM ERROR", -- Telepills
	-- English: "Teleports Isaac to a random room#{{ErrorRoom}} Small chance to teleport Isaac to the I AM ERROR room"

	[Pill_ID .. 21] = "{{Battery}} Náº¡p Ä‘áº§y nÄƒng lÆ°á»£ng cho váº­t pháº©m kÃ­ch hoáº¡t", -- 48 Hour Energy!
	-- Full old Desc: "{{Battery}} Náº¡p Ä‘áº§y nÄƒng lÆ°á»£ng cho váº­t pháº©m kÃ­ch hoáº¡t#{{Battery}} Sinh ra 1-2 pin"
	-- English: "{{Battery}} Fully recharges the active item"

	[Pill_ID .. 22] = "{{Warning}} RÃºt háº¿t chá»‰ cÃ²n má»™t Ã´ tim", -- Hematemesis
	-- Full old Desc: "{{Warning}} RÃºt háº¿t chá»‰ cÃ²n má»™t Ã´ tim#{{Heart}} Sinh ra 1-4 TrÃ¡i Tim Äá»"
	-- English: "{{Warning}} Drains all but one heart container"

	[Pill_ID .. 23] = "NgÄƒn Isaac di chuyá»ƒn vÃ  báº¯n trong 2 giÃ¢y", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 2 seconds"

	[Pill_ID .. 24] = "{{SecretRoom}} Má»Ÿ táº¥t cáº£ lá»‘i vÃ o phÃ²ng bÃ­ máº­t trÃªn táº§ng", -- I can see forever!
	-- English: "{{SecretRoom}} Opens all secret room entrances on the floor"

	[Pill_ID .. 25] = "{{Charm}} MÃª hoáº·c táº¥t cáº£ káº» Ä‘á»‹ch trong phÃ²ng", -- Pheromones
	-- English: "{{Charm}} Charms all enemies in the room"

	[Pill_ID .. 26] = "{{CurseLost}} áº¨n báº£n Ä‘á»“ cho táº§ng", -- Amnesia
	-- English: "{{CurseLost}} Hides the map for the floor"

	[Pill_ID .. 27] = "Sinh ra má»™t vÅ©ng nÆ°á»›c lá»›n trÃªn sÃ n gÃ¢y sÃ¡t thÆ°Æ¡ng cho káº» Ä‘á»‹ch", -- Lemon Party
	-- English: "Spawns a large puddle on the ground which damages enemies"

	[Pill_ID .. 28] = "{{Timer}} Isaac báº¯n chÃ©o trong 30 giÃ¢y", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 30 seconds"

	[Pill_ID .. 29] = "{{Timer}} Giáº£m táº¥t cáº£ sÃ¡t thÆ°Æ¡ng nháº­n Ä‘Æ°á»£c xuá»‘ng cÃ²n ná»­a trÃ¡i tim cho phÃ²ng", -- Percs!
	-- English: "{{Timer}} Reduces all damage taken to half a heart for the room"

	[Pill_ID .. 30] = "{{Timer}} TÄƒng táº¥t cáº£ sÃ¡t thÆ°Æ¡ng nháº­n Ä‘Æ°á»£c lÃªn má»™t trÃ¡i tim Ä‘áº§y Ä‘á»§ cho phÃ²ng", -- Addicted!
	-- English: "{{Timer}} Increases all damage taken to a full heart for the room"

	[Pill_ID .. 31] = "Isaac sinh ra phÃ¢n phÃ­a sau trong 2 giÃ¢y", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 2 seconds"

	[Pill_ID .. 32] = "{{CurseMaze}} Hiá»‡u á»©ng Lá»i Nguyá»n MÃª Cung cho táº§ng", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. 33] = "KhÃ´ng áº£nh hÆ°á»Ÿng Ä‘áº¿n hitbox cá»§a anh áº¥y", -- One makes you larger
	-- Full old Desc: "TÄƒng kÃ­ch thÆ°á»›c cá»§a Isaac#KhÃ´ng áº£nh hÆ°á»Ÿng Ä‘áº¿n hitbox cá»§a anh áº¥y"
	-- English: "Doesn't affect his hitbox"

	[Pill_ID .. 34] = "CÅ©ng giáº£m hitbox cá»§a anh áº¥y", -- One makes you small
	-- Full old Desc: "Giáº£m kÃ­ch thÆ°á»›c cá»§a Isaac#CÅ©ng giáº£m hitbox cá»§a anh áº¥y"
	-- English: "Also decreases his hitbox"

	[Pill_ID .. 35] = "Sinh ra 1 nhá»‡n xanh cho má»—i Ä‘á»‘ng phÃ¢n trong phÃ²ng", -- Infested!
	-- English: "Spawns 1 blue spider for each poop in the room"

	[Pill_ID .. 36] = "Sinh ra 1 nhá»‡n xanh cho má»—i káº» Ä‘á»‹ch trong phÃ²ng#Sinh ra 1-3 nhá»‡n xanh náº¿u khÃ´ng cÃ³ káº» Ä‘á»‹ch trong phÃ²ng", -- Infested?
	-- English: "Spawn 1 blue spider for each enemy in the room#Spawns 1-3 blue spiders if there are no enemies in the room"

	[Pill_ID .. 38] = "{{Timer}} LÃ m mÃ n hÃ¬nh nhÃ²e 3 láº§n trong 30 giÃ¢y", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen 3 times over 30 second"

	[Pill_ID .. 40] = "Sinh ra má»™t vÅ©ng cháº¥t lá»ng trÆ¡n trÆ°á»£t", -- X-Lax
	-- English: "Spawns a pool of slippery creep"

	[Pill_ID .. 41] = "{{Slow}} Sinh ra má»™t vÅ©ng cháº¥t lá»ng lÃ m cháº­m", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of slowing creep"

	[Pill_ID .. 42] = "{{Slow}} LÃ m cháº­m táº¥t cáº£ káº» Ä‘á»‹ch trong phÃ²ng", -- I'm Drowsy...
	-- English: "{{Slow}} Slows all enemies in the room"

	[Pill_ID .. 43] = "TÄƒng tá»‘c táº¥t cáº£ káº» Ä‘á»‹ch trong phÃ²ng", -- I'm Excited!!
	-- English: "Speeds up all enemies in the room"

	[Pill_ID .. 44] = "{{Trinket}} TiÃªu thá»¥ trang sá»©c cá»§a Isaac vÃ  cáº¥p hiá»‡u á»©ng cá»§a nÃ³ vÄ©nh viá»…n", -- Gulp!
	-- English: "{{Trinket}} Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. 45] = "{{Collectible149}} Báº¯n má»™t nÆ°á»›c máº¯t Ipecac", -- Horf!
	-- English: "{{Collectible149}} Shoots one Ipecac tear"

	[Pill_ID .. 47] = "Sinh ra viÃªn thuá»‘c cuá»‘i cÃ¹ng sá»­ dá»¥ng trÆ°á»›c Vurp!", -- Vurp!
	-- English: "Spawns the last pill used before Vurp!"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)
