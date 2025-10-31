-- This file contains text elements that are used for the modular description system.
local languageCode = "vi"


-- Flag to disable modular description behavior for the whole language
-- Added to not mess to much with preexisting translations, before a translator looked
-- over the modular description strings. Remove variable to enable it again.
EID.descriptions[languageCode].DisableModularDescriptions = true

---------- Modular Descriptions ----------
-- Table containing basic sentences and templates used to generate basic descriptions

-----------------------------------------------------------------
--- Translator TODO: Please verify correctness of translations and add potential pluralizations
-----------------------------------------------------------------
EID.descriptions[languageCode].ModularDescriptions = {
    -- Player Stats
    TearsMultiplier = "{value} Hệ số nước mắt",
    Tears = "{value} Nước mắt",
    TearHeight = "{value} Tốc độ rơi nước mắt",
    TearSizeMultiplier = "{value} Kích thước nước mắt",
    TearSize = "{value} Kích thước nước mắt",
    TearDelayMultiplier = "{value} Hệ số độ trễ nước mắt",
    TearDelay = "{value} Độ trễ nước mắt",
    FireRateMultiplier = "{value} Hệ số tốc độ bắn",
    FireRate = "{value} Tốc độ bắn",
    DamageMultiplier = "{value} Hệ số sát thương",
    Damage = "{value} Sát thương",
	DamageTemp = "{value} Sát thương (tạm thời)", -- For Temp Binge Eater buffs
    BombDamage = "{value} Sát thương bom",
    Speed = "{value} Tốc độ",
    RangeMultiplier = "{value} Hệ số tầm bắn",
    Range = "{value} Tầm bắn",
    Luck = "{value} May mắn",
    ShotSpeedMultiplier = "{value} Hệ số tốc độ đạn",
    ShotSpeed = "{value} Tốc độ đạn",
    Life = "{value} Mạng",
    SizeUp = "Tăng kích thước",
    SizeDown = "Giảm kích thước",
    Flight = "Bay được",
    Invincibility = "Bất tử",
    RandomStatUp = "↑ Tăng {value} chỉ số ngẫu nhiên",
    RandomStatDown = "↓ Giảm {value} chỉ số ngẫu nhiên",

    -- Health related
    RedHeart = "{value} Máu",
    SoulHeart = "{value} Trái Tim Linh Hồn",
    BlackHeart = "{value} Trái Tim Đen",
    BoneHeart = "{value} Trái Tim Xương",
    EternalHeart = "{value} Trái Tim Vĩnh cửu",
    GoldenHeart = "{value} Trái Tim Vàng",
    RottenHeart = "{value} Trái Tim Thối",
    BrokenHeart = "{value} Trái Tim Vỡ",
    EmptyHeart = "{value} Ô trái tim trống",
    FullHealth = "Đầy máu",
    HealingRed = "Hồi {value} trái tim",
    CoinHeart = "{value} Trái Tim Đồng Xu",
    EmptyCoinHeart = "{value} Ô Trái Tim Đồng Xu trống",
    HealingCoin = "Hồi {value} đồng xu",

    -- Room chances
    AngelDevilChance = "{value}% Cơ hội Phòng Quỷ/Thiên thần",
    DevilChance = "{value}% Cơ hội Phòng Quỷ",
    AngelChance = "{value}% Cơ hội Phòng Thiên thần",
    PlanetariumChance = "{value}% Cơ hội Phòng Thiên Văn",

    -- Pickups / Spawns
    Coin = "{value} Đồng xu",
    Bomb = "{value} Bom",
    Key = "{value} Chìa khóa",
    CoinBombKey = "{value} {{Coin}} đồng xu, {{Bomb}} bom và {{Key}} chìa khóa",
    -- Dynamic Spawns
    Spawns = {
        RandomPickup = "Tạo {value} vật phẩm nhặt ngẫu nhiên",
        RandomTrinket = "Tạo {value} món trang sức ngẫu nhiên",
        RandomHeart = "Tạo {value} trái tim ngẫu nhiên",
        RedHeart = "Tạo {value} Trái Tim Đỏ",
        SoulHeart = "Tạo {value} Trái Tim Linh Hồn",
        BlackHeart = "Tạo {value} Trái Tim Đen",
        BoneHeart = "Tạo {value} Trái Tim Xương",
        Bomb = "Tạo {value} bom",
        Key = "Tạo {value} chìa khóa",
        Coin = "Tạo {value} đồng xu",
        RandomCoin = "Tạo {value} đồng xu ngẫu nhiên",
        Card = "Tạo {value} lá bài",
        Pill = "Tạo {value} viên thuốc",
        Rune = "Tạo {value} rune",
        Battery = "Tạo {value} Pin",
        BlueFly = "Tạo {value} ruồi xanh",
        BlueSpider = "Tạo {value} nhện xanh",
    },
    -- Permanent Tear Effects
    TearEffect = {
        Homing = "Nước mắt tự dẫn đường",
        Spectral = "Nước mắt xuyên tường",
        Piercing = "Nước mắt xuyên thấu",
        Poison = "{{Poison}} Nước mắt độc",
    },
    -- Familiars
    FlyOrbital = "{value} Vệ tinh ruồi",
    Orbital = "Vệ tinh",
    BlockProjectiles = "Chặn đạn của kẻ địch",
    DamagePerTear = "Gây {value} sát thương mỗi nước mắt",
    DamagePerShot = "Gây {value} sát thương mỗi phát",
    DamagePerSecond = "Gây {value} sát thương mỗi giây",
    ContactDamagePerSecond = "Gây {value} sát thương tiếp xúc mỗi giây",
    MimicMovement = "Bắt chước chuyển động của Isaac sau {value} giây",
    -- Player
    CantShoot = "Isaac không thể bắn",
    PlayerContactDamage = "Isaac gây {value} sát thương tiếp xúc mỗi giây",
    DamageToAllEnemies = "Gây {value} sát thương cho tất cả kẻ địch",
    -- Misc
    LeftEye = "Nhận cho mắt trái:",
    RightEye = "Nhận cho mắt phải:",
    RoomEffect = "{{Timer}} Nhận trong phòng:",
    TimedEffect = "{{Timer}} Nhận trong {value} giây:",
    OnUseEffect = "Khi sử dụng:",
    HeldEffect = "Khi cầm:",
    MaxLuck = "{{Luck}} Tối đa ({max}%) ở {value} may mắn",
    SingleUseInfo = "{{Warning}} CHỈ DÙNG MỘT LẦN {{Warning}}",
    NoEffect = "Không có hiệu ứng",
    FullMapping = {
        BaseDesc = "{{Timer}} Hiệu ứng bản đồ đầy đủ cho tầng {exception}",
        Exception = "(trừ {{SuperSecretRoom}} Phòng Bí mật Siêu cấp)"
    }
}

-- Each entry corresponds to a specific item and will be appended to the modular item's description in combination 
-- with the generated description parts based on the item stats and effects defined in the "item_data.lua" file.

-- The following entries are automatically extracted from the original description files.
-- As a referenence, you can find comments with the expected english text below them.
-- The automatic fill is done by taking the "old" translated text from your translation file, and trying to match it to the
-- english text and its structure. If the match was not successful, it will also adds the full original translated description ("Full old Desc: ...")
-- To check for any mistakes, you can compare the english expected text and the original translation with the text inside the entry and adjust it if nessesary.

EID.descriptions[languageCode].AdditionalInformations = {}

---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 2] = "Isaac bắn 3 nước mắt cùng lúc", -- The Inner Eye
	-- Full old Desc: "↓ {{Tears}} x0.48 Hệ số nước mắt#↓ {{Tears}} +3 Độ trễ nước mắt#Isaac bắn 3 nước mắt cùng lúc"
	-- English: "Isaac shoots 3 tears at once"

	[C_ID .. 5] = "Nước mắt có hiệu ứng boomerang", -- My Reflection
	-- Full old Desc: "↑ {{Range}} +1.5 Range#↑ +1 Tốc độ rơi nước mắt#↑ {{Shotspeed}} +0.6 Tốc độ đạn#Nước mắt có hiệu ứng boomerang"
	-- English: "Tears get a boomerang effect"

	[C_ID .. 8] = "Bắn nước mắt thường", -- Brother Bobby
	-- Full old Desc: "Bắn nước mắt thường#Gây 3.5 sát thương mỗi nước mắt"
	-- English: "Shoots normal tears"

	[C_ID .. 9] = "Tất cả kẻ địch là ruồi đều thân thiện", -- Skatole
	-- English: "All fly enemies are friendly"

	[C_ID .. 11] = "Isaac hồi sinh với đầy máu khi chết", -- 1up!
	-- Full old Desc: "↑ +1 Mạng#Isaac hồi sinh với đầy máu khi chết"
	-- English: "Isaac respawns with full health on death"

	[C_ID .. 13] = "{{BlackHeart}} Kẻ địch bị trúng độc có thể thả Trái tim đen", -- The Virus
	-- Full old Desc: "↓ {{Speed}} -0.1 Tốc độ#{{Poison}} Chạm vào kẻ địch sẽ gây độc cho chúng#{{BlackHeart}} Kẻ địch bị trúng độc có thể thả Trái tim đen"
	-- English: "{{Poison}} Touching enemies poisons them#{{BlackHeart}} Poisoned enemies can drop Black Hearts"

	[C_ID .. 21] = "Hiển thị các biểu tượng trên bản đồ#Không hiển thị bố cục của bản đồ", -- The Compass
	-- English: "Reveals icons on the map#Does not reveal the layout of the map"

	[C_ID .. 33] = "{{Timer}} Bay được trong phòng#{{MomsHeart}} Tiêu diệt ngay lập tức Chân của Mom và Trái tim của Mom#{{Warning}} Giết Isaac khi sử dụng với Satan", -- The Bible
	-- English: "{{Timer}} Flight for the room#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[C_ID .. 36] = "Tạo ra một phân và đẩy lùi kẻ địch#Có thể đặt cạnh hố và phá hủy bằng bom để tạo cầu", -- The Poop
	-- English: "Spawns one poop and knocks back enemies#Can be placed next to a pit and destroyed with a bomb to make a bridge"

	[C_ID .. 38] = "Bắn 10 nước mắt theo vòng tròn quanh Isaac#Nước mắt sao chép hiệu ứng nước mắt của Isaac, cộng thêm 25 sát thương", -- Tammy's Head
	-- English: "Shoots 10 tears in a circle around Isaac#The tears copy Isaac's tear effects, plus 25 damage"

	[C_ID .. 39] = "Làm hóa đá tất cả kẻ địch trong phòng trong 4 giây", -- Mom's Bra
	-- English: "{{Petrify}} Petrifies all enemies in the room for 4 seconds"

	[C_ID .. 40] = "Gây một vụ nổ tại vị trí của Isaac", -- Kamikaze!
	-- Full old Desc: "Gây một vụ nổ tại vị trí của Isaac#Nó gây 40 sát thương"
	-- English: "Causes an explosion at Isaac's location#Deals {VAR:1} damage"

	[C_ID .. 41] = "{{Fear}} Làm tất cả kẻ địch trong phòng sợ hãi trong 5 giây", -- Mom's Pad
	-- English: "{{Fear}} Fears all enemies in the room for 5 seconds"

	[C_ID .. 42] = "Sử dụng vật phẩm và bắn theo một hướng sẽ ném đầu#{{Poison}} Đầu nổ khi va chạm và gây độc cho kẻ địch", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes on impact and poisons enemies"

	[C_ID .. 44] = "Dịch chuyển Isaac vào một phòng ngẫu nhiên, trừ phòng I AM ERROR", -- Teleport!
	-- English: "Teleports Isaac into a random room, except I AM ERROR rooms"

	[C_ID .. 46] = "+8% Cơ hội nhận thưởng khi dọn phòng#Cơ hội thắng cao hơn khi đánh bạc", -- Lucky Foot
	-- Full old Desc: "↑ {{Luck}} +1 May mắn#+8% Cơ hội nhận thưởng khi dọn phòng#Cơ hội thắng cao hơn khi đánh bạc"
	-- English: "+8% room clear reward chance#Better chance to win while gambling"

	[C_ID .. 47] = "{{Collectible168}} Khi sử dụng, bắt đầu ngắm với tâm ngắm#Một tên lửa hạ cánh xuống tâm ngắm sau 1.5 giây#Nó gây 20x sát thương của Isaac", -- Doctor's Remote
	-- English: "{{Collectible168}} On use, start aiming a crosshair#A missile lands on the crosshair after 1.5 seconds#It deals 20x Isaac's damage"

	[C_ID .. 49] = "Lần bắn tiếp theo được thay bằng một tia", -- Shoop da Whoop!
	-- Full old Desc: "Lần bắn tiếp theo được thay bằng một tia#Nó gây 26x sát thương của Isaac trong 0.9 giây"
	-- English: "The next shot is replaced with a beam#It deals {VAR:1}x Isaac's damage over {VAR:2} seconds"

	[C_ID .. 52] = "{{Damage}} Những quả bom đó gây 5x sát thương của Isaac + 30", -- Dr. Fetus
	-- Full old Desc: "↓ {{Tears}} x0.4 Hệ số nước mắt#{{Bomb}} Isaac bắn bom thay vì nước mắt#{{Damage}} Những quả bom đó gây 5x sát thương của Isaac + 30"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 5x Isaac's damage + 30"

	[C_ID .. 53] = "Các vật phẩm nhặt được bị hút về phía Isaac", -- Magneto
	-- English: "Pickups are attracted to Isaac"

	[C_ID .. 54] = "Hiển thị bố cục tầng#Không hiển thị biểu tượng phòng", -- Treasure Map
	-- English: "Reveals the floor layout#Does not reveal room icons"

	[C_ID .. 56] = "Tạo một vũng chất lỏng#Chất lỏng gây 24 sát thương mỗi giây", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 57] = "Vệ tinh ruồi tầm trung", -- Distant Admiration
	-- Full old Desc: "Vệ tinh ruồi tầm trung#Gây 75 sát thương tiếp xúc mỗi giây"
	-- English: "Mid-range fly orbital"

	[C_ID .. 60] = "Cho phép Isaac vượt qua các khoảng trống 1 ô", -- The Ladder
	-- English: "Allows Isaac to cross 1-tile gaps"

	[C_ID .. 62] = "{{HealingRed}} Giết 13 kẻ địch hồi nửa trái tim", -- Charm of the Vampire
	-- English: "{{HealingRed}} Killing 13 enemies heals half a heart"

	[C_ID .. 63] = "{{Battery}} Vật phẩm kích hoạt có thể được sạc quá mức đến hai lần sạc đầy", -- The Battery
	-- English: "{{Battery}} Active items can be overcharged to two full charges"

	[C_ID .. 64] = "{{Shop}} Vật phẩm trong Cửa hàng giảm giá 50%", -- Steam Sale
	-- English: "{{Shop}} Shop items cost 50% less"

	[C_ID .. 65] = "Tạo 6 Bom Quỷ gần trung tâm phòng", -- Anarchist Cookbook
	-- English: "Spawns 6 Troll Bombs near the center of the room"

	[C_ID .. 66] = "{{Slow}} Làm chậm kẻ địch trong 8 giây", -- The Hourglass
	-- English: "{{Slow}} Slows enemies down for 8 seconds"

	[C_ID .. 67] = "Bắn nước mắt thường", -- Sister Maggy
	-- Full old Desc: "Bắn nước mắt thường#Gây 3.5 sát thương mỗi nước mắt"
	-- English: "Shoots normal tears"

	[C_ID .. 68] = "Isaac bắn tia laze thay vì nước mắt", -- Technology
	-- English: "Isaac shoots lasers instead of tears"

	[C_ID .. 69] = "{{Chargeable}} Nước mắt có thể sạc#{{Damage}} Sát thương tăng theo thời gian sạc, tối đa 4x#{{Tears}} Thời gian sạc tối đa là 2.5x độ trễ nước mắt", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x#{{Tears}} Max charge time is 2.5x tear delay"

	[C_ID .. 71] = "Tốc độ rơi nước mắt tăng và tầm bắn giảm = tăng nhẹ tầm bắn", -- Mini Mush
	-- Full old Desc: "↑ {{Speed}} +0.3 Tốc độ#↑ +1.5 Tốc độ rơi nước mắt#↑ Giảm kích thước#↓ {{Range}} -4.25 Tầm bắn#Tốc độ rơi nước mắt tăng và tầm bắn giảm = tăng nhẹ tầm bắn"
	-- English: "The tear height up and range down = slight range up"

	[C_ID .. 73] = "Cấp 1: Vệ tinh#Cấp 2: Vệ tinh bắn#Cấp 3: Meat Boy#Cấp 4: Super Meat Boy", -- Cube of Meat
	-- English: "Lv1: Orbital#Lv2: Shooting orbital#Lv3: Meat Boy#Lv4: Super Meat Boy"

	[C_ID .. 75] = "{{BloodDonationMachine}} Máy Hiến Máu cho nhiều {{Coin}} đồng xu hơn", -- PHD
	-- Full old Desc: "{{HealingRed}} Hồi 2 trái tim#{{Pill}} Tạo 1 viên thuốc#{{Pill}} Biến thuốc xấu thành thuốc tốt#{{BloodDonationMachine}} Máy Hiến Máu cho nhiều {{Coin}} đồng xu hơn"
	-- English: "{{Pill}} Changes bad pills into good pills#{{BloodDonationMachine}} Blood Donation Machines give more {{Coin}} coins"

	[C_ID .. 76] = "{{SecretRoom}} Mở tất cả lối vào phòng bí mật", -- X-Ray Vision
	-- English: "{{SecretRoom}} Opens all secret room entrances"

	[C_ID .. 78] = "Sử dụng vật phẩm có cơ hội cao thay thế trùm tầng bằng một kỵ sĩ", -- Book of Revelations
	-- Full old Desc: "{{SoulHeart}} +1 Trái tim Linh hồn#{{AngelDevilChance}} +17.5% Cơ hội Phòng Quỷ/Thiên thần khi cầm#Sử dụng vật phẩm có cơ hội cao thay thế trùm tầng bằng một kỵ sĩ"
	-- English: "Using the item has a high chance to replace the floor's boss with a horseman"

	[C_ID .. 81] = "Isaac hồi sinh với 1 hộp tim khi chết#{{Warning}} Đặt hộp tim của Isaac thành 1 khi nhặt lên", -- Dead Cat
	-- Full old Desc: "↑ +9 Mạng#Isaac hồi sinh với 1 hộp tim khi chết#{{Warning}} Đặt hộp tim của Isaac thành 1 khi nhặt lên"
	-- English: "Isaac respawns with 1 heart container on death#{{Warning}} Sets Isaac's heart containers to 1 when picked up"

	[C_ID .. 83] = "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#Cho phép Isaac phá đá bằng cách đi vào chúng", -- The Nail
	-- Full old Desc: "Khi sử dụng:#{{SoulHeart}} +1 Trái tim Linh hồn#{{Timer}} Nhận trong phòng:#↑ {{Damage}} +0.7 Sát thương#↓ {{Speed}} -0.18 Tốc độ#Isaac gây 40 sát thương tiếp xúc mỗi giây#Cho phép Isaac phá đá bằng cách đi vào chúng"
	-- English: "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#{{IND}}Allows Isaac to destroy rocks by walking into them"

	[C_ID .. 84] = "Mở cửa sập xuống tầng tiếp theo#{{LadderRoom}} 10% cơ hội mở cửa sập không gian bò", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} 10% chance to open a crawlspace trapdoor"

	[C_ID .. 86] = "Monstro rơi xuống một kẻ địch và gây 120 sát thương#{{Warning}} Monstro rơi xuống Isaac nếu phòng không có kẻ địch", -- Monstro's Tooth
	-- English: "Monstro falls on an enemy and deals 120 damage#{{Warning}} Monstro falls on Isaac if the room has no enemies"

	[C_ID .. 88] = "Lao về phía trước theo hướng Isaac đang bắn", -- Little Chubby
	-- Full old Desc: "Lao về phía trước theo hướng Isaac đang bắn#Gây 52.5 sát thương tiếp xúc mỗi giây"
	-- English: "Charges forward in the direction Isaac is shooting"

	[C_ID .. 91] = "Hiển thị loại phòng của các phòng liền kề#{{SecretRoom}} Có thể hiển thị Phòng Bí mật và Phòng Bí mật Siêu cấp", -- Spelunker Hat
	-- English: "Reveals the room type of adjacent rooms#{{SecretRoom}} Can reveal Secret and Super Secret Rooms"

	[C_ID .. 93] = "{VAR:TIMEDEFFECT}#{{Fear}} Làm tất cả kẻ địch trong phòng sợ hãi", -- The Gamekid
	-- Full old Desc: "{{Timer}} Nhận trong 6.5 giây:#Bất tử#Isaac không thể bắn nhưng gây 40 sát thương tiếp xúc mỗi giây#{{HealingRed}} Giết 2 kẻ địch hồi nửa trái tim#{{Fear}} Làm tất cả kẻ địch trong phòng sợ hãi"
	-- English: "{VAR:TIMEDEFFECT}#{{IND}}{{HealingRed}} Killing 2 enemies heals half a heart#{{IND}}{{Fear}} Fears all enemies in the room"

	[C_ID .. 94] = "{{Coin}} Tạo một đồng xu ngẫu nhiên mỗi 2 phòng", -- Sack of Pennies
	-- English: "{{Coin}} Spawns a random coin every 2 rooms"

	[C_ID .. 95] = "Bắn tia laze", -- Robo-Baby
	-- Full old Desc: "Bắn tia laze#Gây 3.5 sát thương mỗi phát"
	-- English: "Shoots lasers"

	[C_ID .. 96] = "{{HalfHeart}} Tạo một nửa Trái tim Đỏ mỗi 3 phòng", -- Little C.H.A.D.
	-- English: "{{HalfHeart}} Spawns a half Red Heart every 3 rooms"

	[C_ID .. 99] = "{{Slow}} Bắn nước mắt làm chậm", -- Little Gish
	-- Full old Desc: "{{Slow}} Bắn nước mắt làm chậm#Gây 3.5 sát thương mỗi nước mắt"
	-- English: "{{Slow}} Shoots slowing tears"

	[C_ID .. 100] = "Bắn nước mắt tự dẫn đường", -- Little Steven
	-- Full old Desc: "Bắn nước mắt tự dẫn đường#Gây 3.5 sát thương mỗi nước mắt"
	-- English: "Shoots homing tears"

	[C_ID .. 104] = "Nước mắt tách đôi khi va chạm#Nước mắt tách ra gây nửa sát thương", -- The Parasite
	-- English: "Tears split in two on contact#Split tears deal half damage"

	[C_ID .. 105] = "Đổi lại các vật phẩm trên bệ trong phòng", -- The D6
	-- English: "Rerolls pedestal items in the room"

	[C_ID .. 107] = "{VAR:ROOMEFFECT}", -- The Pinking Shears
	-- Full old Desc: "{{Timer}} Nhận trong phòng:#Bay được#Cơ thể Isaac tách khỏi đầu và tấn công kẻ địch với 82.5 sát thương tiếp xúc mỗi giây"
	-- English: "{VAR:ROOMEFFECT}#{{IND}}Isaac's body separates from his head and attacks enemies with {VAR:1} contact damage per second"

	[C_ID .. 108] = "Giảm hầu hết sát thương nhận được xuống nửa trái tim", -- The Wafer
	-- English: "Reduces most damage taken to half a heart"

	[C_ID .. 109] = "↑ {{Damage}} +0.04 Sát thương cho mỗi {{Coin}} đồng xu Isaac có", -- Money = Power
	-- English: "↑ {{Damage}} +0.04 Damage for every {{Coin}} coin Isaac has"

	[C_ID .. 111] = "{{Poison}} Gây 5 sát thương cho kẻ địch gần đó và gây độc cho chúng#Độc gây sát thương của Isaac 6 lần", -- The Bean
	-- English: "{{Poison}} Deals 5 damage to enemies nearby and poisons them#The poison deals Isaac's damage 6 times"

	[C_ID .. 112] = "Tăng tốc tất cả các vệ tinh khác", -- Guardian Angel
	-- Full old Desc: "Vệ tinh#Tăng tốc tất cả các vệ tinh khác#Chặn đạn#Gây 105 sát thương tiếp xúc mỗi giây"
	-- English: "Speeds up all other orbitals"

	[C_ID .. 113] = "Bắn kẻ địch đến gần Isaac", -- Demon Baby
	-- Full old Desc: "Bắn kẻ địch đến gần Isaac#Gây 3 sát thương mỗi nước mắt"
	-- English: "Shoots enemies that get close to him"

	[C_ID .. 114] = "Nước mắt của Isaac được thay bằng một con dao ném được#{{Damage}} Con dao gây 2x sát thương của Isaac khi cầm và 6x ở khoảng cách xa nhất", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and 6x at the furthest possible distance"

	[C_ID .. 116] = "{{Battery}} Tự động sạc thanh đầu tiên của vật phẩm kích hoạt#{{Battery}} Sạc đầy vật phẩm kích hoạt khi nhặt lên", -- 9 Volt
	-- English: "{{Battery}} Automatically charges the first bar of active items#{{Battery}} Fully recharges the active item on pickup"

	[C_ID .. 117] = "Nhận sát thương tạo ra một con chim tấn công kẻ địch", -- Dead Bird
	-- Full old Desc: "Nhận sát thương tạo ra một con chim tấn công kẻ địch#Con chim gây 4.3 sát thương tiếp xúc mỗi giây"
	-- English: "Taking damage spawns a bird that attacks enemies"

	[C_ID .. 122] = "Khi còn nửa Trái tim Đỏ hoặc ít hơn:#{VAR:EFFECTLIST}", -- Whore of Babylon
	-- Full old Desc: "Khi còn nửa Trái tim Đỏ hoặc ít hơn:#↑ {{Speed}} +0.3 Tốc độ#↑ {{Damage}} +1.5 Sát thương"
	-- English: "When on half a Red Heart or less:#{VAR:EFFECTLIST}"

	[C_ID .. 123] = "{{Timer}} Tạo một bạn đồng hành ngẫu nhiên trong phòng", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the room"

	[C_ID .. 124] = "Kích hoạt hiệu ứng vật phẩm kích hoạt ngẫu nhiên#Chọn hiệu ứng từ danh sách vật phẩm cố định", -- Dead Sea Scrolls
	-- English: "Triggers a random active item effect#Chooses the effect from a fixed list of items"

	[C_ID .. 125] = "Bom tự dẫn đường", -- Bobby-Bomb
	-- Full old Desc: "{{Bomb}} +5 Bom#Bom tự dẫn đường"
	-- English: "Homing bombs"

	[C_ID .. 126] = "↑ {{Damage}} +1.2 Sát thương trong phòng#{{Warning}} Gây 1 trái tim sát thương cho Isaac#{{Heart}} Ưu tiên loại bỏ Trái tim Đỏ trước", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 127] = "Đổi lại và khởi động lại toàn bộ tầng", -- Forget Me Now
	-- English: "Rerolls and restarts the entire floor"

	[C_ID .. 128] = "Vệ tinh ruồi tầm xa", -- Forever Alone
	-- Full old Desc: "Vệ tinh ruồi tầm xa#Gây 30 sát thương tiếp xúc mỗi giây"
	-- English: "Long range fly orbital"

	[C_ID .. 130] = "Khi cầm:#{{Speed}} Đặt Tốc độ của bạn ít nhất là 1.5#Bay được#Khi sử dụng, lao theo hướng di chuyển của Isaac", -- A Pony
	-- English: "While held:#{{Speed}} Sets your Speed to at least 1.5#Flight#Upon use, dashes in the direction of Isaac's movement"

	[C_ID .. 131] = "{{Bomb}} Tạo 1 vật phẩm bom mỗi 3 phòng", -- Bomb Bag
	-- English: "{{Bomb}} Spawns 1 bomb pickup every 3 rooms"

	[C_ID .. 132] = "{{Damage}} Nước mắt gây sát thương nhiều hơn khi đi xa hơn", -- A Lump of Coal
	-- English: "{{Damage}} Tears deal more damage the further they travel"

	[C_ID .. 133] = "{{SoulHeart}} Chuyển 1 hộp tim thành 3 Trái tim Linh hồn", -- Guppy's Paw
	-- English: "{{SoulHeart}} Converts 1 heart container into 3 Soul Hearts"

	[C_ID .. 134] = "{{Chest}} 33% cơ hội thay phần thưởng dọn phòng bằng rương#33% cơ hội không tạo phần thưởng dọn phòng", -- Guppy's Tail
	-- English: "{{Chest}} 33% chance to replace the room clear reward with a chest#33% chance to spawn no room clear reward"

	[C_ID .. 135] = "{{Coin}} Làm tổn thương Isaac nửa trái tim và tạo 1-2 đồng xu#{{Heart}} Ưu tiên loại bỏ Trái tim Đỏ trước", -- IV Bag
	-- English: "{{Coin}} Hurts Isaac for half a heart and spawns 1-2 coins#{{Heart}} Removes Red Hearts first"

	[C_ID .. 136] = "Tạo một Isaac giả làm mồi nhử kẻ địch và nổ sau 5 giây", -- Best Friend
	-- English: "Spawns a decoy Isaac that attracts enemies and explodes after 5 seconds"

	[C_ID .. 137] = "Bom của Isaac không tự động nổ nữa#Khi sử dụng, kích nổ tất cả bom của Isaac cùng lúc", -- Remote Detonator
	-- Full old Desc: "{{Bomb}} +5 Bom#Bom của Isaac không tự động nổ nữa#Khi sử dụng, kích nổ tất cả bom của Isaac cùng lúc"
	-- English: "Isaac's bombs no longer explode automatically#Upon use, detonates all of Isaac's bombs at once"

	[C_ID .. 139] = "{{Trinket}} Isaac có thể giữ 2 món trang sức", -- Mom's Purse
	-- English: "{{Trinket}} Isaac can hold 2 trinkets"

	[C_ID .. 140] = "{{Poison}} Bom của Isaac gây độc cho kẻ địch bị dính vụ nổ", -- Bob's Curse
	-- Full old Desc: "{{Bomb}} +5 Bom#{{Poison}} Bom của Isaac gây độc cho kẻ địch bị dính vụ nổ"
	-- English: "{{Poison}} Isaac's bombs poison enemies caught in the blast"

	[C_ID .. 142] = "{{SoulHeart}} Isaac nhận 1 Trái tim Linh hồn khi bị tổn thương xuống còn nửa trái tim#Chỉ xảy ra một lần mỗi phòng#Rời đi và vào lại phòng cho phép hiệu ứng kích hoạt lại", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again"

	[C_ID .. 144] = "{{Coin}} Nhặt đồng xu gần đó#Tạo vật phẩm nhặt ngẫu nhiên mỗi 3-4 đồng xu", -- Bum Friend
	-- English: "{{Coin}} Picks up nearby coins#Spawns random pickups every 3-4 coins"

	[C_ID .. 147] = "{{Timer}} Trong phòng, Isaac có thể phá đá và tường Phòng Bí mật bằng cách đi vào chúng", -- Notched Axe
	-- English: "{{Timer}} For the room, Isaac can break rocks and Secret Room walls by walking into them"

	[C_ID .. 149] = "Nước mắt của Isaac được bắn theo hình vòng cung#{{Poison}} Nước mắt nổ và gây độc cho kẻ địch nơi chúng đáp xuống", -- Ipecac
	-- Full old Desc: "↑ {{Damage}} +40 Sát thương#↓ {{Tears}} x0.5 Hệ số nước mắt#↓ {{Tears}} +10 Độ trễ nước mắt#Nước mắt của Isaac được bắn theo hình vòng cung#{{Poison}} Nước mắt nổ và gây độc cho kẻ địch nơi chúng đáp xuống"
	-- English: "Isaac's tears are shot in an arc#{{Poison}} The tears explode and poison enemies where they land"

	[C_ID .. 151] = "Nước mắt có 1/6 cơ hội tạo một con ruồi xanh khi trúng kẻ địch", -- The Mulligan
	-- English: "Tears have a 1/6 chance to spawn a blue fly when hitting an enemy"

	[C_ID .. 152] = "Thay nước mắt mắt phải của Isaac bằng một tia laze liên tục#{{Damage}} Nó gây 3x sát thương của Isaac mỗi giây", -- Technology 2
	-- Full old Desc: "↓ {{Tears}} x0.5 Hệ số nước mắt#↓ {{Damage}} x0.65 Hệ số sát thương#Thay nước mắt mắt phải của Isaac bằng một tia laze liên tục#{{Damage}} Nó gây 3x sát thương của Isaac mỗi giây"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} It deals 3x Isaac's damage per second"

	[C_ID .. 153] = "Isaac bắn 4 nước mắt cùng lúc", -- Mutant Spider
	-- Full old Desc: "↓ {{Tears}} x0.48 Hệ số nước mắt#↓ {{Tears}} +3 Độ trễ nước mắt#Isaac bắn 4 nước mắt cùng lúc"
	-- English: "Isaac shoots 4 tears at once"

	[C_ID .. 155] = "Bay lơ lửng trong phòng", -- The Peeper
	-- Full old Desc: "Bay lơ lửng trong phòng#Gây 17 sát thương tiếp xúc mỗi giây"
	-- English: "Floats around the room"

	[C_ID .. 156] = "{{Battery}} Nhận sát thương thêm 1 lần sạc cho vật phẩm kích hoạt", -- Habit
	-- English: "{{Battery}} Taking damage adds 1 charge to the active item"

	[C_ID .. 157] = "↑ {{Damage}} Nhận sát thương tăng sát thương#Áp dụng tối đa 6 lần mỗi tầng#Kéo dài cả tầng", -- Bloody Lust
	-- English: "↑ {{Damage}} Taking damage grants a damage up#Applies up to 6 times per floor#Lasts for the whole floor"

	[C_ID .. 158] = "Tạo một {{SoulHeart}} Trái tim Linh hồn, {{Rune}} rune hoặc {{Card}} lá bài#{VAR:EFFECTLIST}", -- Crystal Ball
	-- Full old Desc: "Tạo một {{SoulHeart}} Trái tim Linh hồn, {{Rune}} rune hoặc {{Card}} lá bài#{{Timer}} Hiệu ứng bản đồ đầy đủ cho tầng (trừ {{SuperSecretRoom}} Phòng Bí mật Siêu cấp)"
	-- English: "Spawns a {{SoulHeart}} Soul Heart, {{Rune}} rune or {{Card}} card#{VAR:EFFECTLIST}"

	[C_ID .. 160] = "Tạo 5 tia sáng gần kẻ địch#Mỗi tia gây 8x sát thương của Isaac + 160 trong 0.8 giây", -- Crack the Sky
	-- English: "Spawns 5 beams of light near enemies#Each beam deals 8x Isaac's damage + 160 over 0.8 seconds"

	[C_ID .. 161] = "{{Player4}} Hồi sinh thành ??? (Blue Baby) khi chết", -- Ankh
	-- English: "{{Player4}} Respawn as ??? (Blue Baby) on death"

	[C_ID .. 163] = "Bắn nước mắt xuyên tường", -- Ghost Baby
	-- Full old Desc: "Bắn nước mắt xuyên tường#Gây 3.5 sát thương mỗi nước mắt"
	-- English: "Shoots spectral tears"

	[C_ID .. 164] = "Ném một ngọn lửa xanh#Nó gây sát thương tiếp xúc, chặn nước mắt kẻ địch, và biến mất sau 2 giây", -- The Candle
	-- English: "Throws a blue flame#It deals contact damage, blocks enemy tears, and despawns after 2 seconds"

	[C_ID .. 166] = "Đổi lại tất cả vật phẩm nhặt trong phòng", -- D20
	-- English: "Rerolls all pickups in the room"

	[C_ID .. 167] = "Bắn hai nước mắt theo hình chữ V", -- Harlequin Baby
	-- Full old Desc: "Bắn hai nước mắt theo hình chữ V#Gây 4 sát thương mỗi nước mắt"
	-- English: "Shoots two tears in a V-shaped pattern"

	[C_ID .. 168] = "Thay vì bắn nước mắt, ngắm với tâm ngắm#Một tên lửa hạ cánh xuống tâm ngắm sau 1.5 giây#{{Damage}} Tên lửa gây 20x sát thương của Isaac", -- Epic Fetus
	-- English: "Instead of shooting tears, aim a crosshair#A rocket lands on the crosshair after 1.5 seconds#{{Damage}} Rockets deal 20x Isaac's damage"

	[C_ID .. 169] = "Nước mắt xuyên qua kẻ địch bị giết nếu còn dư sát thương", -- Polyphemus
	-- Full old Desc: "↑ {{Damage}} +4 Sát thương#↑ {{Damage}} x2 Hệ số sát thương#↓ {{Tears}} x0.48 Hệ số nước mắt#↓ {{Tears}} +3 Độ trễ nước mắt#Nước mắt xuyên qua kẻ địch bị giết nếu còn dư sát thương"
	-- English: "Tears pierce killed enemies if there is leftover damage"

	[C_ID .. 170] = "Dậm chân lên một kẻ địch gần đó mỗi 4 giây", -- Daddy Longlegs
	-- Full old Desc: "Dậm chân lên một kẻ địch gần đó mỗi 4 giây#Gây 40 sát thương mỗi giây"
	-- English: "Stomps on a nearby enemy every 4 seconds"

	[C_ID .. 171] = "{{Slow}} Làm chậm kẻ địch trong 4 giây", -- Spider Butt
	-- Full old Desc: "{{Slow}} Làm chậm kẻ địch trong 4 giây#Gây 10 sát thương cho tất cả kẻ địch"
	-- English: "{{Slow}} Slows down enemies for 4 seconds"

	[C_ID .. 174] = "Bắn nước mắt ngẫu nhiên", -- Rainbow Baby
	-- Full old Desc: "Bắn nước mắt ngẫu nhiên#Gây 3-5 sát thương mỗi nước mắt"
	-- English: "Shoots random tears"

	[C_ID .. 175] = "Mở tất cả cửa trong phòng, bao gồm {{SecretRoom}}{{SuperSecretRoom}}Phòng Bí mật, {{ChallengeRoom}}{{BossRushRoom}}Phòng Thử thách, và cửa Mega Satan", -- Dad's Key
	-- English: "Opens all doors in the room, including {{SecretRoom}}{{SuperSecretRoom}}Secret Rooms, {{ChallengeRoom}}{{BossRushRoom}}Challenge Rooms, and the Mega Satan door"

	[C_ID .. 177] = "{{Coin}} Dùng 1 đồng xu để có cơ hội tạo vật phẩm nhặt", -- Portable Slot
	-- English: "{{Coin}} Spend 1 coin for a chance to spawn a pickup"

	[C_ID .. 178] = "Nhận sát thương tạo một vũng chất lỏng#Chất lỏng gây 24 sát thương mỗi giây", -- Holy Water
	-- English: "Taking damage spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 180] = "Isaac đánh rắm khi nhận sát thương#{{Poison}} Cái rắm gây độc cho kẻ địch", -- The Black Bean
	-- English: "Isaac farts when damaged#{{Poison}} The fart poisons enemies"

	[C_ID .. 181] = "{{Speed}} Đặt Tốc độ của bạn ít nhất là 1.5#Bay được khi cầm#Sử dụng vật phẩm lao theo hướng di chuyển của Isaac, để lại các tia sáng", -- White Pony
	-- English: "{{Speed}} Sets your Speed to at least 1.5#Flight while held#Using the item dashes in the direction of Isaac's movement, leaving behind beams of light"

	[C_ID .. 186] = "{{Heart}} Ưu tiên loại bỏ Trái tim Đỏ trước", -- Blood Rights
	-- Full old Desc: "Gây 40 sát thương cho mọi kẻ địch#{{Warning}} Gây 1 trái tim sát thương cho Isaac#{{Heart}} Ưu tiên loại bỏ Trái tim Đỏ trước"
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 187] = "Di chuyển làm quả bóng tóc xoay quanh#Quả bóng lớn lên khi giết kẻ địch#Nó gây sát thương nhiều hơn khi lớn hơn", -- Guppy's Hairball
	-- English: "Moving swings the hairball around#The ball grows when it kills an enemy#It deals more damage the bigger it is"

	[C_ID .. 188] = "Bắt chước chuyển động của Isaac#Bắn về phía Isaac", -- Abel
	-- Full old Desc: "Bắt chước chuyển động của Isaac#Bắn về phía Isaac#Gây 3.5 sát thương mỗi nước mắt"
	-- English: "Mirrors Isaac's movement#Shoots towards Isaac"

	[C_ID .. 191] = "Nước mắt của Isaac nhận hiệu ứng ngẫu nhiên mỗi 2-3 giây", -- 3 Dollar Bill
	-- English: "Isaac's tears get random effects every 2-3 seconds"

	[C_ID .. 198] = "Tạo 1 vật phẩm nhặt của mỗi loại", -- Box
	-- English: "Spawns 1 pickup of each type"

	[C_ID .. 199] = "Rương chứa nhiều vật phẩm nhặt hơn", -- Mom's Key
	-- Full old Desc: "{{Key}} +2 Chìa khóa#Rương chứa nhiều vật phẩm nhặt hơn"
	-- English: "Chests contain more pickups"

	[C_ID .. 202] = "Chạm vào kẻ địch làm chúng hóa đá và biến thành vàng#Isaac gây sát thương tiếp xúc dựa trên số đồng xu#{{Coin}} Giết kẻ địch vàng tạo đồng xu#Phân do Isaac tạo có cơ hội cao là phân vàng", -- Midas' Touch
	-- English: "{{Petrify}} Touching enemies petrifies them and turns them gold#Isaac deals contact damage based on his coin count#{{Coin}} Killing a golden enemy spawns coins#Poop spawned by Isaac has a high chance to be golden poop"

	[C_ID .. 203] = "Vật phẩm nhặt được sinh ra được nhân đôi nếu có thể", -- Humbleing Bundle
	-- English: "Pickups spawned are doubled if possible"

	[C_ID .. 204] = "Nhận sát thương có 50% cơ hội tạo vật phẩm nhặt ngẫu nhiên", -- Fanny Pack
	-- English: "Taking damage has a 50% chance to spawn a random pickup"

	[C_ID .. 205] = "{{Battery}} Sử dụng vật phẩm kích hoạt chưa sạc sẽ sạc đầy nó với giá 2 trái tim#Chỉ hoạt động khi vật phẩm không có lần sạc nào", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of 2 hearts#Only works when the item has no charges"

	[C_ID .. 207] = "Cấp 1: Vệ tinh#{{Charm}} Cấp 2: Vệ tinh bắn nước mắt mê hoặc#{{Charm}} Cấp 3: Bandage Girl#{{Charm}} Cấp 4: Super Bandage Girl", -- Ball of Bandages
	-- English: "Lv1: Orbital#{{Charm}} Lv2: Orbital that shoots charmed tears#{{Charm}} Lv3: Bandage Girl#{{Charm}} Lv4: Super Bandage Girl"

	[C_ID .. 208] = "Tỷ lệ kẻ địch dạng Quán quân tăng từ 5% lên 20%#Không tăng cơ hội trùm Quán quân", -- Champion Belt
	-- Full old Desc: "↑ {{Damage}} +1 Sát thương#Tỷ lệ kẻ địch dạng Quán quân tăng từ 5% lên 20%#Không tăng cơ hội trùm Quán quân"
	-- English: "Champion enemy chance goes from 5% to 20%#Doesn't increase chance of champion bosses"

	[C_ID .. 209] = "{{Confusion}} Vụ nổ gây choáng và sát thương cho mọi kẻ địch trong phòng", -- Butt Bombs
	-- Full old Desc: "{{Bomb}} +5 Bom#{{Confusion}} Vụ nổ gây choáng và sát thương cho mọi kẻ địch trong phòng"
	-- English: "{{Confusion}} Explosions concuss and damage every enemy in the room"

	[C_ID .. 210] = "Sau 1 giây không hoạt động, Isaac trở nên bất tử", -- Gnawed Leaf
	-- English: "After 1 second of inactivity, Isaac becomes invincible"

	[C_ID .. 212] = "50% cơ hội hồi sinh với nửa trái tim khi chết", -- Guppy's Collar
	-- English: "50% chance to revive with half a heart on death"

	[C_ID .. 213] = "Nước mắt của Isaac phá hủy đạn kẻ địch", -- Lost Contact
	-- Full old Desc: "↓ {{Shotspeed}} -0.15 Tốc độ đạn#Nước mắt của Isaac phá hủy đạn kẻ địch"
	-- English: "Isaac's tears destroy enemy shots"

	[C_ID .. 214] = "{{Timer}} Khi nhận sát thương, Isaac để lại vệt chất lỏng máu trong phòng#Chất lỏng gây 6 sát thương mỗi giây", -- Anemic
	-- Full old Desc: "↑ {{Range}} +5 Tầm bắn#{{Timer}} Khi nhận sát thương, Isaac để lại vệt chất lỏng máu trong phòng#Chất lỏng gây 6 sát thương mỗi giây"
	-- English: "{{Timer}} When taking damage Isaac leaves a trail of blood creep for the room#The creep deals 6 damage per second"

	[C_ID .. 218] = "{{HealingRed}} 50% cơ hội hồi nửa trái tim mỗi phút", -- Placenta
	-- Full old Desc: "↑ {{Heart}} +1 Máu#{{HealingRed}} 50% cơ hội hồi nửa trái tim mỗi phút"
	-- English: "{{HealingRed}} 50% chance to heal half a heart every minute"

	[C_ID .. 220] = "Bom của Isaac bắn 10 nước mắt theo vòng tròn khi nổ", -- Sad Bombs
	-- Full old Desc: "{{Bomb}} +5 Bom#Bom của Isaac bắn 10 nước mắt theo vòng tròn khi nổ"
	-- English: "Isaac's bombs shoot 10 tears in a circle when they explode"

	[C_ID .. 221] = "Nước mắt của Isaac nảy khỏi kẻ địch và chướng ngại vật", -- Rubber Cement
	-- English: "Isaac's tears bounce off enemies and obstacles"

	[C_ID .. 222] = "Giữ nút bắn làm nước mắt lơ lửng giữa không trung#Thả nút bắn sẽ bắn chúng theo hướng đã bắn", -- Anti-Gravity
	-- Full old Desc: "↑ {{Tears}} -2 Độ trễ nước mắt#Giữ nút bắn làm nước mắt lơ lửng giữa không trung#Thả nút bắn sẽ bắn chúng theo hướng đã bắn"
	-- English: "Holding the fire buttons causes tears to hover in midair#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "Miễn nhiễm với vụ nổ, sóng đá, và đòn dậm#{{HealingRed}} Bị trúng vụ nổ hồi 1 trái tim", -- Pyromaniac
	-- Full old Desc: "{{Bomb}} +5 Bom#Miễn nhiễm với vụ nổ, sóng đá, và đòn dậm#{{HealingRed}} Bị trúng vụ nổ hồi 1 trái tim"
	-- English: "Immunity to explosions, rock waves, and stomp attacks#{{HealingRed}} Getting hit by explosions heals 1 heart"

	[C_ID .. 224] = "Nước mắt tách thành 4 khi trúng#Nước mắt tách ra gây nửa sát thương", -- Cricket's Body
	-- Full old Desc: "↑ {{Tears}} -1 Độ trễ nước mắt#↑ {{Tearsize}} x1.2 Kích thước nước mắt#↓ {{Range}} -10 Tầm bắn#Nước mắt tách thành 4 khi trúng#Nước mắt tách ra gây nửa sát thương"
	-- English: "Tears split up in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "{{SoulHeart}} Nhận sát thương có cơ hội tạo Trái tim Linh hồn#{{HalfHeart}} Kẻ địch có cơ hội thả nửa Trái tim Đỏ khi chết", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a chance to spawn a Soul Heart#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 227] = "{{Coin}} Nhận sát thương tạo 1-2 đồng xu", -- Piggy Bank
	-- Full old Desc: "{{Coin}} +3 Đồng xu#{{Coin}} Nhận sát thương tạo 1-2 đồng xu"
	-- English: "{{Coin}} Taking damage spawns 1-2 coins"

	[C_ID .. 228] = "{{Fear}} 15% cơ hội bắn nước mắt gây sợ", -- Mom's Perfume
	-- Full old Desc: "↑ {{Tears}} -1 Độ trễ nước mắt#{{Fear}} 15% cơ hội bắn nước mắt gây sợ"
	-- English: "{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 229] = "{{Chargeable}} Nước mắt được sạc và thả ra theo kiểu tấn công súng ngắn", -- Monstro's Lung
	-- Full old Desc: "↓ {{Tears}} x0.23 Hệ số nước mắt#{{Chargeable}} Nước mắt được sạc và thả ra theo kiểu tấn công súng ngắn"
	-- English: "{{Chargeable}} Tears are charged and released in a shotgun style attack"

	[C_ID .. 230] = "{{Fear}} 15% cơ hội bắn nước mắt gây sợ", -- Abaddon
	-- Full old Desc: "↑ {{Speed}} +0.2 Tốc độ#↑ {{Damage}} +1.5 Sát thương#↓ {{EmptyHeart}} Loại bỏ tất cả hộp tim#{{BlackHeart}} +6 Trái tim Đen#{{Fear}} 15% cơ hội bắn nước mắt gây sợ"
	-- English: "↓ {{EmptyHeart}} Removes all heart containers#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 231] = "{{Slow}} Isaac để lại vệt chất lỏng làm chậm", -- Ball of Tar
	-- Full old Desc: "{{Slow}} 10% cơ hội bắn nước mắt làm chậm#{{Luck}} 100% cơ hội ở 18 may mắn#{{Slow}} Isaac để lại vệt chất lỏng làm chậm"
	-- English: "{{Slow}} {VAR:LUCKCHANCE}% chance to shoot slowing tears#{{Slow}} Isaac leaves a trail of slowing creep"

	[C_ID .. 232] = "{{Slow}} Nhận sát thương làm chậm tất cả kẻ địch trong phòng vĩnh viễn", -- Stop Watch
	-- Full old Desc: "↑ {{Speed}} +0.3 Tốc độ#{{Slow}} Nhận sát thương làm chậm tất cả kẻ địch trong phòng vĩnh viễn"
	-- English: "{{Slow}} Taking damage slows all enemies in the room permanently"

	[C_ID .. 233] = "Nước mắt của Isaac xoay quanh Isaac", -- Tiny Planet
	-- Full old Desc: "↑ +7 Tốc độ rơi nước mắt#Nước mắt xuyên tường#Nước mắt của Isaac xoay quanh Isaac"
	-- English: "Isaac's tears orbit around him"

	[C_ID .. 234] = "Giết kẻ địch tạo một con nhện xanh", -- Infestation 2
	-- English: "Killing an enemy spawns a blue spider"

	[C_ID .. 236] = "Chạm vào kẻ địch biến nó thành phân", -- E. Coli
	-- English: "Touching an enemy turns it into poop"

	[C_ID .. 238] = "{{EternalHeart}} +2% cơ hội cho Trái tim Vĩnh cửu", -- Key Piece 1
	-- Full old Desc: "{{Warning}} Nhận cả hai phần chìa khóa mở một cánh cửa vàng lớn#{{AngelChance}} +25% Cơ hội Phòng Thiên thần#{{EternalHeart}} +2% cơ hội cho Trái tim Vĩnh cửu"
	-- English: "{{Warning}} Getting both parts of the key opens a big golden door#{{EternalHeart}} +2% chance for Eternal Hearts"

	[C_ID .. 239] = "{{EternalHeart}} +2% cơ hội cho Trái tim Vĩnh cửu", -- Key Piece 2
	-- Full old Desc: "{{Warning}} Nhận cả hai phần chìa khóa mở một cánh cửa vàng lớn#{{AngelChance}} +25% Cơ hội Phòng Thiên thần#{{EternalHeart}} +2% cơ hội cho Trái tim Vĩnh cửu"
	-- English: "{{Warning}} Getting both parts of the key opens a big golden door#{{EternalHeart}} +2% chance for Eternal Hearts"

	[C_ID .. 241] = "Nhân đôi tất cả phần thưởng dọn phòng#33% cơ hội không có phần thưởng dọn phòng", -- Contract from Below
	-- English: "Doubles all room clear rewards#33% chance for no room clear reward"

	[C_ID .. 242] = "50% cơ hội chặn đạn kẻ địch", -- Infamy
	-- English: "50% chance to block enemy shots"

	[C_ID .. 243] = "Chặn đạn kẻ địch từ hướng Isaac đang bắn", -- Trinity Shield
	-- English: "Blocks enemy shots coming from the direction Isaac is shooting"

	[C_ID .. 244] = "Thỉnh thoảng bắn tia laze cùng với nước mắt của Isaac", -- Tech.5
	-- English: "Occasionally shoot lasers in addition to Isaac's tears"

	[C_ID .. 245] = "Isaac bắn 2 nước mắt cùng lúc", -- 20/20
	-- English: "Isaac shoots 2 tears at once"

	[C_ID .. 246] = "{{SecretRoom}} Hiển thị vị trí phòng bí mật trên bản đồ", -- Blue Map
	-- English: "{{SecretRoom}} Reveals secret room locations on the map"

	[C_ID .. 247] = "bạn đồng hành gây sát thương gấp đôi", -- BFFS!
	-- English: "Familiars deal double damage"

	[C_ID .. 248] = "Nhện xanh và ruồi xanh gây sát thương gấp đôi", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage"

	[C_ID .. 249] = "Cho phép Isaac chọn giữa 2 vật phẩm sau khi đánh bại trùm", -- There's Options
	-- English: "Allows Isaac to choose between 2 items after beating a boss"

	[C_ID .. 250] = "{{Bomb}} Tất cả bom rơi ra trở thành bom đôi", -- Bogo Bombs
	-- English: "{{Bomb}} All bomb drops become double bombs"

	[C_ID .. 251] = "Isaac có thể mang 2 lá bài#Biến tất cả viên thuốc thành lá bài", -- Starter Deck
	-- Full old Desc: "{{Card}} Tạo 1 lá bài khi nhặt#Isaac có thể mang 2 lá bài#Biến tất cả viên thuốc thành lá bài"
	-- English: "Isaac can carry 2 cards#Turns all pills into cards"

	[C_ID .. 252] = "Isaac có thể mang 2 viên thuốc#Biến tất cả lá bài thành viên thuốc", -- Little Baggy
	-- Full old Desc: "{{Pill}} Tạo 1 viên thuốc khi nhặt#Isaac có thể mang 2 viên thuốc#Biến tất cả lá bài thành viên thuốc"
	-- English: "Isaac can carry 2 pills#Turns all cards into pills"

	[C_ID .. 256] = "{{Burning}} Bom của Isaac để lại ngọn lửa nơi chúng nổ", -- Hot Bombs
	-- Full old Desc: "{{Bomb}} +5 Bom#{{Burning}} Bom của Isaac để lại ngọn lửa nơi chúng nổ"
	-- English: "{{Burning}} Isaac's bombs leave a flame where they explode"

	[C_ID .. 257] = "{{Warning}} Vụ nổ có thể làm tổn thương Isaac", -- Fire Mind
	-- Full old Desc: "{{Burning}} Nước mắt của Isaac đốt cháy kẻ địch#10% cơ hội nước mắt nổ khi trúng kẻ địch#{{Luck}} 100% cơ hội ở 13 may mắn#{{Warning}} Vụ nổ có thể làm tổn thương Isaac"
	-- English: "{{Burning}} Isaac's tears light enemies on fire#{VAR:LUCKCHANCE}% chance for tears to explode on enemy impact#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 258] = "Đổi lại tất cả vật phẩm và chỉ số của Isaac khi nhặt và ở mỗi tầng mới", -- Missing No.
	-- English: "Rerolls all of Isaac's items and stats on pickup and at every new floor"

	[C_ID .. 260] = "{{CurseBlind}} Miễn nhiễm với lời nguyền", -- Black Candle
	-- Full old Desc: "{{CurseBlind}} Miễn nhiễm với lời nguyền#{{BlackHeart}} +1 Trái tim Đen#{{AngelDevilChance}} +15% Cơ hội Phòng Quỷ/Thiên thần"
	-- English: "{{CurseBlind}} Immune to curses"

	[C_ID .. 261] = "↓ Nước mắt gây ít sát thương hơn khi đi xa hơn", -- Proptosis
	-- Full old Desc: "↑ {{Damage}} x2 Hệ số sát thương#↓ Nước mắt gây ít sát thương hơn khi đi xa hơn"
	-- English: "↓ Tears deal less damage the further they travel"

	[C_ID .. 262] = "Nhận sát thương xuống còn 1 trái tim gây sát thương cho tất cả kẻ địch trong phòng", -- Missing Page 2
	-- Full old Desc: "{{BlackHeart}} +1 Trái tim Đen#Nhận sát thương xuống còn 1 trái tim gây sát thương cho tất cả kẻ địch trong phòng"
	-- English: "Taking damage down to 1 heart damages all enemies in the room"

	[C_ID .. 264] = "Tấn công kẻ địch khi Isaac nhận sát thương", -- Smart Fly
	-- Full old Desc: "Vệ tinh#Tấn công kẻ địch khi Isaac nhận sát thương#Gây 22.5 sát thương tiếp xúc mỗi giây"
	-- English: "Attacks enemies when Isaac takes damage"

	[C_ID .. 265] = "10% cơ hội gây sát thương cho tất cả kẻ địch trong phòng khi bị trúng nước mắt kẻ địch", -- Dry Baby
	-- English: "10% chance to damage all enemies in the room when it is hit by an enemy tear"

	[C_ID .. 266] = "{{Slow}} Để lại chất lỏng làm chậm#Tạo 1-2 con nhện thân thiện sau khi dọn phòng", -- Juicy Sack
	-- English: "{{Slow}} Leaves slowing creep#Spawns 1-2 friendly spiders after clearing a room"

	[C_ID .. 267] = "Bắn tia laze#Di chuyển theo hướng Isaac đang bắn", -- Robo-Baby 2.0
	-- Full old Desc: "Bắn tia laze#Gây 3.5 sát thương mỗi phát#Di chuyển theo hướng Isaac đang bắn"
	-- English: "Shoots lasers#Moves in the direction Isaac is shooting"

	[C_ID .. 268] = "Tạo ruồi xanh khi Isaac bắn", -- Rotten Baby
	-- English: "Spawns blue flies when Isaac shoots"

	[C_ID .. 269] = "Để lại chất lỏng gây 6 sát thương mỗi giây", -- Headless Baby
	-- English: "Leaves creep which deals 6 damage per second"

	[C_ID .. 270] = "Đuổi theo kẻ địch#{{HealingRed}} Hồi Isaac nửa trái tim khi giết kẻ địch", -- Leech
	-- Full old Desc: "Đuổi theo kẻ địch#{{HealingRed}} Hồi Isaac nửa trái tim khi giết kẻ địch#Gây 3.2 sát thương mỗi giây"
	-- English: "Chases enemies#{{HealingRed}} Heals Isaac for half a heart when it kills an enemy"

	[C_ID .. 271] = "Tạo một vật phẩm nhặt ngẫu nhiên mỗi 5-6 phòng", -- Mystery Sack
	-- English: "Spawns a random pickup every 5-6 rooms"

	[C_ID .. 272] = "Ruồi nổ thân thiện#{{Warning}} Vụ nổ có thể làm tổn thương Isaac", -- BBF
	-- Full old Desc: "Ruồi nổ thân thiện#Vụ nổ gây 60 sát thương#{{Warning}} Vụ nổ có thể làm tổn thương Isaac"
	-- English: "Friendly exploding fly#The explosion deals {VAR:1} damage#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 273] = "Lao theo hướng Isaac đang bắn#Nổ khi trúng kẻ địch#{{Warning}} Vụ nổ có thể làm tổn thương Isaac", -- Bob's Brain
	-- Full old Desc: "Lao theo hướng Isaac đang bắn#Nổ khi trúng kẻ địch#{{Poison}} Vụ nổ gây 60 sát thương và gây độc cho kẻ địch#{{Warning}} Vụ nổ có thể làm tổn thương Isaac"
	-- English: "Dashes in the direction Isaac is shooting#Explodes when it hits an enemy#{{Poison}} The explosion deals {VAR:1} damage and poisons enemies#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 274] = "Nhận sát thương tạo một vệ tinh tầm trung trong phòng", -- Best Bud
	-- Full old Desc: "Nhận sát thương tạo một vệ tinh tầm trung trong phòng#Nó gây 75 sát thương tiếp xúc mỗi giây"
	-- English: "Taking damage spawns one midrange orbital for the room"

	[C_ID .. 275] = "{{Chargeable}} bạn đồng hành sạc và bắn tia máu {{Collectible118}}", -- Lil Brimstone
	-- Full old Desc: "{{Chargeable}} bạn đồng hành sạc và bắn tia máu {{Collectible118}}#Nó gây 31.5 sát thương trong 0.63 giây"
	-- English: "{{Chargeable}} Familiar that charges and shoots a {{Collectible118}} blood beam#It deals {VAR:1} damage over 0.63 seconds"

	[C_ID .. 276] = "Isaac trở nên bất tử#Tạo một bạn đồng hành trái tim đi theo Isaac#{{Warning}} Nếu bạn đồng hành trái tim bị trúng, Isaac nhận sát thương", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 277] = "{{Fear}} Đuổi theo và làm kẻ địch sợ hãi", -- Lil Haunt
	-- Full old Desc: "{{Fear}} Đuổi theo và làm kẻ địch sợ hãi#Gây 4 sát thương tiếp xúc mỗi giây"
	-- English: "{{Fear}} Chases and fears enemies"

	[C_ID .. 278] = "{{Heart}} Nhặt Trái tim Đỏ gần đó#{{SoulHeart}} Tạo một Trái tim Linh hồn hoặc nhện cho mỗi 1.5 Trái tim Đỏ nhặt được", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#{{SoulHeart}} Spawns a Soul Heart or spider for every 1.5 Red Hearts picked up"

	[C_ID .. 279] = "Vệ tinh lớn", -- Big Fan
	-- Full old Desc: "Vệ tinh lớn#Gây 30 sát thương tiếp xúc mỗi giây"
	-- English: "Large orbital"

	[C_ID .. 280] = "Ngẫu nhiên tạo nhện xanh trong phòng có kẻ địch", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms"

	[C_ID .. 281] = "bạn đồng hành giả#Kẻ địch nhắm vào nó thay vì Isaac", -- Punching Bag
	-- English: "Decoy familiar#Enemies target him instead of Isaac"

	[C_ID .. 282] = "Cho phép Isaac nhảy qua khoảng trống và chướng ngại vật", -- How to Jump
	-- English: "Allows Isaac to jump over gaps and obstacles"

	[C_ID .. 283] = "Đổi lại tất cả vật phẩm nhặt và vật phẩm trên bệ trong phòng, và tất cả vật phẩm bị động của Isaac", -- D100
	-- English: "Reroll all pickups and pedestal items in the room, and all of Isaac's passive items"

	[C_ID .. 284] = "Đổi lại tất cả vật phẩm bị động của Isaac", -- D4
	-- English: "Reroll all of Isaac's passive items"

	[C_ID .. 285] = "Đổi lại tất cả kẻ địch trong phòng", -- D10
	-- English: "Reroll all enemies in the room"

	[C_ID .. 286] = "Kích hoạt hiệu ứng của rune hoặc lá bài Isaac đang giữ mà không sử dụng nó", -- Blank Card
	-- English: "Triggers the effect of the rune or card Isaac holds without using it"

	[C_ID .. 289] = "Ném một ngọn lửa đỏ#Nó gây sát thương tiếp xúc, chặn nước mắt kẻ địch, và biến mất khi đã gây sát thương hoặc chặn đạn 5 lần", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 5 times"

	[C_ID .. 290] = "{{Heart}} Nhặt Trái tim Đỏ khi đầy máu lưu trữ tối đa 4 trái tim trong Lọ#Sử dụng vật phẩm thả tất cả trái tim đã lưu trữ xuống sàn", -- The Jar
	-- English: "{{Heart}} Picking up Red Hearts while at full health stores up to 4 of them in the Jar#Using the item drops all stored hearts on the floor"

	[C_ID .. 291] = "Biến tất cả kẻ địch không phải trùm thành phân#Tiêu diệt ngay lập tức kẻ địch phân và trùm phân", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses"

	[C_ID .. 293] = "{{Collectible118}} Bắn tia máu 4 hướng", -- Head of Krampus
	-- Full old Desc: "{{Collectible118}} Bắn tia máu 4 hướng#Mỗi tia gây 440 sát thương trong 1.33 giây"
	-- English: "{{Collectible118}} Shoot a 4-way blood beam#They each deal {VAR:1} damage over 1.33 seconds"

	[C_ID .. 294] = "Đẩy lùi kẻ địch và đạn gần đó", -- Butter Bean
	-- Full old Desc: "Đẩy lùi kẻ địch và đạn gần đó#10% cơ hội biến thành {{Collectible484}} Wait What? mạnh hơn khi đổi với vật phẩm kích hoạt khác và nhặt lại"
	-- English: "Knocks back nearby enemies and projectiles#10% chance to turn into the stronger {{NameC484}} when swapping it with a different active item and picking it up again"

	[C_ID .. 295] = "Gây 2x sát thương của Isaac cho tất cả kẻ địch#{{Coin}} Tốn 1 đồng xu", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage to all enemies#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "{{Heart}} Chuyển 2 Trái tim Linh hồn/Đen thành 1 hộp tim", -- Converter
	-- English: "{{Heart}} Converts 2 Soul/Black Hearts into 1 heart container"

	[C_ID .. 299] = "↑ {{Speed}} Từ từ tăng tốc độ trong phòng có kẻ địch#Ở tốc độ 2, Isaac trở nên bất tử và gây sát thương tiếp xúc#Sau đó, mất tăng tốc của Taurus trong phòng", -- Taurus
	-- Full old Desc: "↓ {{Speed}} -0.3 Tốc độ#↑ {{Speed}} Từ từ tăng tốc độ trong phòng có kẻ địch#Ở tốc độ 2, Isaac trở nên bất tử và gây sát thương tiếp xúc#Sau đó, mất tăng tốc của Taurus trong phòng"
	-- English: "↑ {{Speed}} Slowly gain speed while in hostile rooms#At 2 speed, Isaac becomes invincible and deals contact damage#Afterwards, lose the Taurus speed boost for the room"

	[C_ID .. 300] = "Chạm vào kẻ địch gây sát thương tiếp xúc", -- Aries
	-- Full old Desc: "↑ {{Speed}} +0.25 Tốc độ#Chạm vào kẻ địch gây sát thương tiếp xúc"
	-- English: "Touching enemies deals contact damage"

	[C_ID .. 301] = "Nhận sát thương giảm tất cả sát thương tiếp theo trong phòng xuống nửa trái tim", -- Cancer
	-- Full old Desc: "{{SoulHeart}} +3 Trái tim Linh hồn#Nhận sát thương giảm tất cả sát thương tiếp theo trong phòng xuống nửa trái tim"
	-- English: "Taking damage reduces all future damage in the room to half a heart"

	[C_ID .. 302] = "Isaac có thể phá đá bằng cách đi vào chúng", -- Leo
	-- Full old Desc: "Tăng kích thước#Isaac có thể phá đá bằng cách đi vào chúng"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 303] = "Nhận sát thương có thể khiến Isaac tạm thời bất tử#{{Luck}} 100% cơ hội ở 10 may mắn#{{Pill}} Biến thuốc tiêu cực thành thuốc tích cực", -- Virgo
	-- English: "Taking damage can make Isaac temporarily invincible#{{Luck}} 100% chance at 10 luck#{{Pill}} Converts negative pills into positive ones"

	[C_ID .. 304] = "Cân bằng chỉ số của Isaac#Các thay đổi chỉ số sau này sẽ được phân bổ đều cho tất cả chỉ số", -- Libra
	-- Full old Desc: "+6 {{Coin}} đồng xu, {{Bomb}} bom và {{Key}} chìa khóa#Cân bằng chỉ số của Isaac#Các thay đổi chỉ số sau này sẽ được phân bổ đều cho tất cả chỉ số"
	-- English: "Balances Isaac's stats#Future stat changes will be spread across all stats"

	[C_ID .. 308] = "Isaac để lại vệt chất lỏng#Chất lỏng gây 6 sát thương mỗi giây", -- Aquarius
	-- English: "Isaac leaves a trail of creep#The creep deals 6 damage per second"

	[C_ID .. 309] = "Tăng độ đẩy lùi của nước mắt", -- Pisces
	-- Full old Desc: "↑ {{Tears}} -1 Độ trễ nước mắt#↑ {{Tearsize}} x1.25 Kích thước nước mắt#Tăng độ đẩy lùi của nước mắt"
	-- English: "Increases tear knockback"

	[C_ID .. 311] = "{{Player12}} Khi chết, hồi sinh thành Dark Judas với hệ số sát thương x2", -- Judas' Shadow
	-- English: "{{Player12}} When dead, respawn as Dark Judas with a x2 damage multiplier"

	[C_ID .. 312] = "Tất cả Trái tim Đỏ hồi gấp đôi giá trị của chúng", -- Maggy's Bow
	-- Full old Desc: "↑ {{Heart}} +1 Máu#{{HealingRed}} Hồi 1 trái tim#Tất cả Trái tim Đỏ hồi gấp đôi giá trị của chúng"
	-- English: "All Red Hearts heal double their value"

	[C_ID .. 313] = "Vô hiệu hóa đòn đánh đầu tiên nhận được mỗi phòng", -- Holy Mantle
	-- English: "Negates the first hit taken once per room"

	[C_ID .. 314] = "Isaac có thể phá đá bằng cách đi vào chúng", -- Thunder Thighs
	-- Full old Desc: "↑ {{Heart}} +1 Máu#↓ {{Speed}} -0.4 Tốc độ#Isaac có thể phá đá bằng cách đi vào chúng"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 315] = "Nước mắt của Isaac thu hút kẻ địch, vật phẩm nhặt và trang sức", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets"

	[C_ID .. 316] = "{{Warning}} Nhận sát thương khi đang sạc một phần sẽ dịch chuyển Isaac đến phòng ngẫu nhiên", -- Cursed Eye
	-- Full old Desc: "Sóng nước mắt sạc#{{Warning}} Nhận sát thương khi đang sạc một phần sẽ dịch chuyển Isaac đến phòng ngẫu nhiên"
	-- English: "Charged wave of {VAR:1} tears#{{Warning}} Taking damage while partially charged teleports Isaac to a random room"

	[C_ID .. 317] = "Nước mắt của Isaac để lại chất lỏng#Chất lỏng gây 30 sát thương mỗi giây", -- Mysterious Liquid
	-- English: "Isaac's tears leave creep#The creep deals 30 damage per second"

	[C_ID .. 318] = "bạn đồng hành cận chiến", -- Gemini
	-- Full old Desc: "bạn đồng hành cận chiến#Gây 6 sát thương tiếp xúc mỗi giây"
	-- English: "Close combat familiar"

	[C_ID .. 319] = "Nảy quanh phòng#Nước mắt chính xác thấp gây sát thương của Isaac", -- Cain's Other Eye
	-- English: "Bounces around the room#Low accuracy tears that deal Isaac's damage"

	[C_ID .. 320] = "Ruồi điều khiển được", -- ???'s Only Friend
	-- Full old Desc: "Ruồi điều khiển được#Gây 37.5 sát thương tiếp xúc mỗi giây"
	-- English: "Controllable fly"

	[C_ID .. 321] = "Quả bóng có thể kéo phá đá", -- Samson's Chains
	-- Full old Desc: "Quả bóng có thể kéo phá đá#Gây 10.7 sát thương tiếp xúc mỗi giây"
	-- English: "Draggable ball that can destroy rocks"

	[C_ID .. 322] = "Bắt chước nước mắt của các bé đồng hành của bạn#Nếu không có, bắn nước mắt thường gây 3.5 sát thương", -- Mongo Baby
	-- English: "Mimics your baby familiars' tears#If you have none, shoots normal 3.5 damage tears"

	[C_ID .. 323] = "Bắn 8 nước mắt theo mọi hướng#Nước mắt sao chép hiệu ứng nước mắt của Isaac#Sạc lại bằng cách bắn nước mắt", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects#Recharges by shooting tears"

	[C_ID .. 324] = "Dịch chuyển Isaac đến {{TreasureRoom}} Phòng Kho báu, {{SecretRoom}} Phòng Bí mật, {{SuperSecretRoom}} Phòng Bí mật Siêu cấp hoặc {{ErrorRoom}} Phòng I AM ERROR", -- Undefined
	-- English: "Teleports Isaac to the {{TreasureRoom}} Treasure, {{SecretRoom}} Secret, {{SuperSecretRoom}} Super Secret or {{ErrorRoom}} I AM ERROR Room"

	[C_ID .. 325] = "{{Timer}} Đầu của Isaac biến thành bạn đồng hành cố định trong phòng#Đầu bắn nước mắt gây 3.5 sát thương#Cơ thể được điều khiển riêng và vẫn bắn nước mắt của Isaac", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The head shoots 3.5 damage tears#The body is controlled separately and still shoots Isaac's tears"

	[C_ID .. 326] = "Giữ nút SỬ DỤNG làm trống thanh sạc#Isaac tạm thời bất tử khi thanh sạc trống#{{Warning}} Giữ quá lâu gây sát thương cho Isaac", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 327] = "Nhận sát thương ở nửa Trái tim Đỏ hoặc không có khiến Isaac tạm thời bất tử", -- The Polaroid
	-- English: "Taking damage at half a Red Heart or none makes Isaac temporarily invincible"

	[C_ID .. 328] = "Nhận sát thương ở nửa Trái tim Đỏ hoặc không có gây sát thương cho tất cả kẻ địch trong phòng", -- The Negative
	-- English: "Taking damage at half a Red Heart or none damages all enemies in the room"

	[C_ID .. 329] = "Thay nước mắt của Isaac bằng một nước mắt lớn điều khiển được", -- The Ludovico Technique
	-- English: "Replaces Isaac's tears with one giant controllable tear"

	[C_ID .. 331] = "{{Damage}} Nước mắt có hào quang gây 4.5x sát thương của Isaac mỗi giây", -- Godhead
	-- Full old Desc: "↑ {{Damage}} +0.5 Sát thương#↑ {{Range}} +1.2 Tầm bắn#↑ +0.8 Tốc độ rơi nước mắt#↓ {{Tears}} -0.3 Nước mắt#↓ {{Shotspeed}} -0.3 Tốc độ đạn#Nước mắt tự dẫn đường#{{Damage}} Nước mắt có hào quang gây 4.5x sát thương của Isaac mỗi giây"
	-- English: "{{Damage}} Tears gain an aura that deals 4.5x Isaac's damage per second"

	[C_ID .. 332] = "{{Player11}} Khi chết, hồi sinh thành Lazarus (Risen)", -- Lazarus' Rags
	-- English: "{{Player11}} When dead, revive as Lazarus (Risen)"

	[C_ID .. 333] = "Hiệu ứng bản đồ đầy đủ", -- The Mind
	-- English: "Full mapping effect"

	[C_ID .. 335] = "Tạo hào quang đẩy lùi kẻ địch và đạn", -- The Soul
	-- Full old Desc: "{{SoulHeart}} +2 Trái tim Linh hồn#Tạo hào quang đẩy lùi kẻ địch và đạn"
	-- English: "Grants an aura that repels enemies and projectiles"

	[C_ID .. 337] = "{{Slow}} Làm chậm mỗi phòng thứ 4#13% cơ hội tăng tốc phòng thay vì làm chậm", -- Broken Watch
	-- English: "{{Slow}} Slows down every 4th room#13% chance to speed up the room instead"

	[C_ID .. 338] = "Boomerang ném được#Hóa đá kẻ địch và gây 2x sát thương của Isaac#Có thể nhặt và mang vật phẩm về", -- The Boomerang
	-- English: "Throwable boomerang#{{Petrify}} Petrifies enemies and deals 2x Isaac's damage#Can grab and bring back items"

	[C_ID .. 347] = "Nhân đôi tất cả bệ vật phẩm và vật phẩm nhặt trong phòng", -- Diplopia
	-- English: "Duplicates all item pedestals and pickups in the room"

	[C_ID .. 348] = "{{Pill}} Kích hoạt hiệu ứng của viên thuốc Isaac đang giữ mà không sử dụng nó", -- Placebo
	-- English: "{{Pill}} Triggers the effect of the pill Isaac holds without using it"

	[C_ID .. 350] = "{{Poison}} Vào phòng gây độc cho tất cả kẻ địch#Kẻ địch bị giết để lại vũng chất lỏng#Chất lỏng gây 30 sát thương mỗi giây", -- Toxic Shock
	-- English: "{{Poison}} Entering a room poisons all enemies#Enemies killed leave a puddle of creep#The creep deals 30 damage per second"

	[C_ID .. 351] = "Hóa đá tất cả kẻ địch trong phòng#{{Poison}} Gây 5 sát thương và gây độc cho kẻ địch gần đó#Tạo sóng đá theo hướng Isaac di chuyển#Sóng đá có thể mở phòng bí mật và phá đá", -- Mega Bean
	-- English: "{{Petrify}} Petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Sends a rock wave in the direction Isaac is moving#The rock wave can open secret rooms and break rocks"

	[C_ID .. 352] = "{{Warning}} Bắn pháo giảm máu của Isaac xuống còn nửa trái tim#Bắn một nước mắt xuyên thấu + xuyên tường lớn gây 10x sát thương của Isaac", -- Glass Cannon
	-- English: "{{Warning}} Firing the cannon reduces Isaac's health down to half a heart#Shoots a large piercing + spectral tear that does 10x Isaac's damage"

	[C_ID .. 353] = "Bom nổ theo hình chữ thập", -- Bomber Boy
	-- Full old Desc: "{{Bomb}} +5 Bom#Bom nổ theo hình chữ thập"
	-- English: "Bombs explode in a cross-shaped pattern"

	[C_ID .. 356] = "{{Battery}} Sử dụng vật phẩm kích hoạt kích hoạt hiệu ứng của nó hai lần", -- Car Battery
	-- English: "{{Battery}} Using an active item triggers its effect twice"

	[C_ID .. 357] = "{{Timer}} Nhân đôi tất cả bạn đồng hành của bạn trong phòng#{{Collectible113}} Cấp một Demon Baby trong phòng nếu Isaac không có bạn đồng hành", -- Box of Friends
	-- English: "{{Timer}} Duplicates all your familiars for the room#{{Collectible113}} Grants a Demon Baby for the room if Isaac has no familiars"

	[C_ID .. 358] = "Isaac bắn 2 nước mắt cùng lúc theo đường chéo", -- The Wiz
	-- Full old Desc: "Nước mắt xuyên tường#Isaac bắn 2 nước mắt cùng lúc theo đường chéo"
	-- English: "Isaac shoots 2 tears at once diagonally"

	[C_ID .. 359] = "Tăng độ đẩy lùi", -- 8 Inch Nails
	-- Full old Desc: "↑ {{Damage}} +1.5 Sát thương#Tăng độ đẩy lùi"
	-- English: "Increases knockback"

	[C_ID .. 360] = "Bắn nước mắt với cùng Tốc độ đạn, sát thương và hiệu ứng như Isaac", -- Incubus
	-- English: "Shoots tears with the same tear rate, damage and effects as Isaac"

	[C_ID .. 361] = "Bắn nước mắt với cùng sát thương và hiệu ứng như Isaac#Bắn với tốc độ bằng nửa so với các bạn đồng hành khác", -- Fate's Reward
	-- English: "Shoots tears with the same damage and effects as Isaac#Shoots at half the rate of other familiars"

	[C_ID .. 362] = "35% cơ hội tạo vật phẩm nhặt mỗi phòng", -- Lil Chest
	-- English: "35% chance to spawn a pickup every room"

	[C_ID .. 363] = "Chặn và thu hút đạn kẻ địch#{{EternalHeart}} Chặn 10 phát bắn trong một phòng tạo một Trái tim Vĩnh cửu", -- Sworn Protector
	-- Full old Desc: "Vệ tinh#Gây 105 sát thương tiếp xúc mỗi giây#Chặn và thu hút đạn kẻ địch#{{EternalHeart}} Chặn 10 phát bắn trong một phòng tạo một Trái tim Vĩnh cửu"
	-- English: "Blocks and attracts enemy shots#{{EternalHeart}} Blocking 10 shots in one room spawns an Eternal Heart"

	[C_ID .. 364] = "Vệ tinh ruồi tầm trung", -- Friend Zone
	-- Full old Desc: "Vệ tinh ruồi tầm trung#Gây 45 sát thương tiếp xúc mỗi giây"
	-- English: "Midrange fly orbital"

	[C_ID .. 365] = "Di chuyển dọc theo tường/chướng ngại vật", -- Lost Fly
	-- Full old Desc: "Di chuyển dọc theo tường/chướng ngại vật#Gây 105 sát thương tiếp xúc mỗi giây"
	-- English: "Moves along walls/obstacles"

	[C_ID .. 367] = "Bom của Isaac dính vào kẻ địch#Giết kẻ địch bằng bom tạo nhện xanh", -- Sticky Bombs
	-- Full old Desc: "{{Bomb}} +5 Bom#Bom của Isaac dính vào kẻ địch#Giết kẻ địch bằng bom tạo nhện xanh"
	-- English: "Isaac's bombs stick to enemies#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "↑ {{Tears}} Bắn liên tục theo một hướng dần giảm độ trễ nước mắt tối đa 200% và giảm độ chính xác", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually decreases tear delay up to 200% and decreases accuracy"

	[C_ID .. 369] = "Nước mắt có thể đi qua một bên màn hình và xuất hiện ở bên kia", -- Continuum
	-- Full old Desc: "↑ {{Range}} +2.25 Tầm bắn#↑ +1.5 Tốc độ rơi nước mắt#Nước mắt xuyên tường#Nước mắt có thể đi qua một bên màn hình và xuất hiện ở bên kia"
	-- English: "Tears can travel through one side of the screen and come out the other side"

	[C_ID .. 371] = "{{Warning}} Nhận sát thương tạo 6 Bom Quỷ#Bom Quỷ thừa hưởng hiệu ứng bom của Isaac", -- Curse of the Tower
	-- English: "{{Warning}} Taking damage spawns 6 Troll Bombs#The Troll Bombs inherit Isaac's bomb effects"

	[C_ID .. 372] = "Mỗi 30 giây trong phòng chưa dọn, bạn đồng hành có thể:#{{Battery}} Tạo một Pin (tối đa 2 mỗi phòng)#{{Battery}} Thêm một lần sạc cho vật phẩm kích hoạt (tối đa 2 mỗi phòng)#Hóa đá tất cả kẻ địch trong phòng", -- Charged Baby
	-- English: "Every 30 seconds while in an uncleared room, the familiar can:#{{Battery}} Spawn a Battery (max 2 per room)#{{Battery}} Add one charge to the active item (max 2 per room)#{{Petrify}} Petrify all enemies in the room"

	[C_ID .. 373] = "↑ {{Damage}} Liên tiếp trúng nước mắt vào kẻ địch tăng +25% sát thương (tối đa +100%)#Trượt có cơ hội đặt lại hệ số", -- Dead Eye
	-- English: "↑ {{Damage}} Consecutive tear hits on enemies grant +25% damage (max +100%)#Missing has a chance to reset the multiplier"

	[C_ID .. 374] = "{{Damage}} Tia sáng gây 4x sát thương của Isaac", -- Holy Light
	-- Full old Desc: "10% cơ hội bắn nước mắt thánh, tạo tia sáng khi trúng#{{Luck}} 50% cơ hội ở 9 may mắn#{{Damage}} Tia sáng gây 4x sát thương của Isaac"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot holy tears, which spawn a beam of light on hit#{{Damage}} The beam deals 4x Isaac's damage"

	[C_ID .. 375] = "Miễn nhiễm với vụ nổ, tấn công sóng đá và đòn dậm của Mom và Satan#25% cơ hội phản đạn kẻ địch", -- Host Hat
	-- English: "Grants immunity to explosions, rock wave attacks and Mom and Satan's stomp attacks#25% chance to reflect enemy shots"

	[C_ID .. 376] = "Mua vật phẩm từ Cửa hàng sẽ làm cửa hàng tái nhập hàng ngay lập tức", -- Restock
	-- Full old Desc: "Tạo 3 vật phẩm nhặt ngẫu nhiên#Mua vật phẩm từ Cửa hàng sẽ làm cửa hàng tái nhập hàng ngay lập tức"
	-- English: "Buying an item from a Shop restocks it instantly"

	[C_ID .. 377] = "Kẻ địch nhện không còn nhắm mục tiêu hoặc gây sát thương tiếp xúc cho Isaac", -- Bursting Sack
	-- English: "Spider enemies no longer target or deal contact damage to Isaac"

	[C_ID .. 378] = "Giữ nút bắn trong 2.35 giây tạo một Bom Mông đã thắp sáng", -- No. 2
	-- English: "Holding a fire button for 2.35 seconds spawns a lit Butt Bomb"

	[C_ID .. 380] = "{{Coin}} Cửa chỉ cần một chìa phải mở bằng đồng xu thay vì chìa khóa", -- Pay To Play
	-- Full old Desc: "{{Coin}} +5 Đồng xu#{{Coin}} Cửa chỉ cần một chìa phải mở bằng đồng xu thay vì chìa khóa"
	-- English: "{{Coin}} Single-key doors must be opened with coins instead of keys"

	[C_ID .. 381] = "Cấp một vật phẩm ngẫu nhiên ở đầu lần chạy tiếp theo", -- Eden's Blessing
	-- Full old Desc: "↑ {{Tears}} +0.7 Nước mắt#Cấp một vật phẩm ngẫu nhiên ở đầu lần chạy tiếp theo"
	-- English: "Grants a random item at the start of the next run"

	[C_ID .. 382] = "Có thể ném vào kẻ địch để bắt chúng#Sử dụng vật phẩm sau khi bắt kẻ địch tạo ra chúng như một bạn đồng hành thân thiện", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns it as a friendly companion"

	[C_ID .. 383] = "Tách tất cả nước mắt hiện tại của Isaac trên màn hình thành vòng tròn 6 nước mắt", -- Tear Detonator
	-- English: "Splits all of Isaac's tears currently on screen in a circle of 6 tears"

	[C_ID .. 384] = "{{Chargeable}} Lao và nảy quanh phòng với tốc độ dựa trên mức sạc#Gây 5-90 sát thương tiếp xúc mỗi giây tùy vào tốc độ", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-90 contact damage per second depending on speed"

	[C_ID .. 385] = "{{Coin}} Nhặt đồng xu gần đó#Tăng cấp sau khi nhận 6, 12, và 24 đồng xu#Cấp 2: Cơ hội tạo vật phẩm sau khi dọn phòng#Cấp 3: Bắn nước mắt có thể tạo đồng xu khi trúng#Cấp 4: Đuổi theo kẻ địch, thỉnh thoảng thả bom, có thể tạo vật phẩm khi nhặt đồng xu", -- Bumbo
	-- English: "{{Coin}} Picks up nearby coins#Levels up after getting 6, 12, and 24 coins#Lv2: Chance to spawn item after room clears#Lv3: Shoots tears that can spawn coins on hit#Lv4: Chases enemies, occasionally dropping bombs, can spawn item on coin pickup"

	[C_ID .. 386] = "Đổi lại bất kỳ chướng ngại vật nào thành chướng ngại vật ngẫu nhiên khác (ví dụ: phân, chậu, TNT, phân đỏ, khối đá, v.v.)", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)"

	[C_ID .. 387] = "{{Slow}} bạn đồng hành được bao quanh bởi hào quang lớn làm chậm kẻ địch và đạn trong đó", -- Censer
	-- English: "{{Slow}} Familiar surrounded by a huge aura of light that slows down enemies and projectiles in it"

	[C_ID .. 388] = "{{Key}} Nhặt chìa khóa gần đó#{{Chest}} Tạo rương ngẫu nhiên để đổi lại", -- Key Bum
	-- English: "{{Key}} Picks up nearby keys#{{Chest}} Spawns random chests in return"

	[C_ID .. 389] = "{{Rune}} Tạo một rune ngẫu nhiên mỗi 5-6 phòng", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune every 5-6 rooms"

	[C_ID .. 390] = "Bắn nước mắt Sacred Heart", -- Seraphim
	-- Full old Desc: "Bắn nước mắt Sacred Heart#Gây 10 sát thương mỗi nước mắt"
	-- English: "Shoots Sacred Heart tears"

	[C_ID .. 391] = "{{Charm}} Nhận sát thương mê hoặc tất cả kẻ địch trong phòng", -- Betrayal
	-- English: "{{Charm}} Taking damage charms all enemies in the room"

	[C_ID .. 392] = "Cấp hiệu ứng vật phẩm hoàng đạo ngẫu nhiên mỗi tầng", -- Zodiac
	-- English: "Grants a random zodiac item effect every floor"

	[C_ID .. 393] = "{{Poison}} 15% cơ hội bắn nước mắt độc#{{Poison}} Gây độc cho kẻ địch khi tiếp xúc#{{BlackHeart}} Kẻ địch bị trúng độc có cơ hội thả Trái tim Đen khi chết", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Poisoned enemies have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "Isaac tự động bắn nước mắt vào một mục tiêu đỏ di động trên mặt đất", -- Marked
	-- Full old Desc: "↑ {{Tears}} +0.7 Nước mắt#↑ {{Range}} +3.15 Tầm bắn#↑ +0.3 Tốc độ rơi nước mắt#Isaac tự động bắn nước mắt vào một mục tiêu đỏ di động trên mặt đất"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground"

	[C_ID .. 395] = "{{Chargeable}} Nước mắt của Isaac được thay bằng một vòng laze có thể sạc#Kích thước vòng tăng theo mức sạc", -- Tech X
	-- English: "{{Chargeable}} Isaac's tears are replaced by a chargeable laser ring#Ring size increases with charge amount"

	[C_ID .. 396] = "Tạo tối đa hai cổng để di chuyển giữa chúng#Có thể đặt ở các phòng khác nhau", -- Ventricle Razor
	-- English: "Creates up to two portals to travel between#Can be placed in different rooms"

	[C_ID .. 397] = "Nước mắt của Isaac luôn di chuyển dọc theo một tia sáng phía trước Isaac", -- Tractor Beam
	-- Full old Desc: "↑ {{Tears}} +0.5 Nước mắt#↑ {{Range}} +5.25 Tầm bắn#↑ +0.5 Tốc độ rơi nước mắt#↑ {{Shotspeed}} +0.16 Tốc độ đạn#Nước mắt của Isaac luôn di chuyển dọc theo một tia sáng phía trước Isaac"
	-- English: "Isaac's tears always travel along a beam of light in front of him"

	[C_ID .. 398] = "Nước mắt có thể thu nhỏ kẻ địch#Kẻ địch bị thu nhỏ có thể bị nghiền nát và giết bằng cách đi qua chúng", -- God's Flesh
	-- English: "{{Shrink}} Tears can shrink enemies#Shrunken enemies can be crushed and killed by walking over them"

	[C_ID .. 399] = "{{BlackHeart}} Kẻ địch bị giết bởi vòng đen có 5% cơ hội thả Trái tim Đen", -- Maw of the Void
	-- Full old Desc: "↑ {{Damage}} +1 Sát thương#{{Chargeable}} Bắn nước mắt trong 2.35 giây và thả nút bắn tạo một vòng brimstone đen quanh Isaac#Nó gây 30x sát thương của Isaac trong 2 giây#{{BlackHeart}} Kẻ địch bị giết bởi vòng đen có 5% cơ hội thả Trái tim Đen"
	-- English: "{{Chargeable}} Shooting tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the black ring have a 5% chance to drop a Black Heart"

	[C_ID .. 400] = "Isaac cầm một ngọn giáo phía trước#{{Fear}} Ngọn giáo gây gấp đôi sát thương của Isaac và có thể làm kẻ địch sợ hãi khi tiếp xúc", -- Spear of Destiny
	-- English: "Isaac holds a spear in front of him#{{Fear}} The spear deals twice his damage and can fear enemies on contact"

	[C_ID .. 401] = "25% cơ hội bắn nước mắt bom dính#Nước mắt bom dính không gây sát thương khi trúng và nổ sau vài giây", -- Explosivo
	-- English: "25% chance to shoot sticky bomb tears#Sticky bomb tears do not deal damage on hit and explode after a few seconds"

	[C_ID .. 402] = "Tất cả vật phẩm được chọn từ nhóm vật phẩm ngẫu nhiên", -- Chaos
	-- Full old Desc: "Tất cả vật phẩm được chọn từ nhóm vật phẩm ngẫu nhiên#Tạo 1-6 vật phẩm nhặt ngẫu nhiên"
	-- English: "All items are chosen from random item pools"

	[C_ID .. 403] = "Hiển thị sát thương nước mắt và thanh máu của tất cả kẻ địch#Gây hiệu ứng trạng thái ngẫu nhiên cho kẻ địch khi tiếp xúc#Ngẫu nhiên tạo pin", -- Spider Mod
	-- English: "Displays tear damage and health bars of all enemies#Inflicts random status effects to enemies on contact#Randomly spawns batteries"

	[C_ID .. 404] = "Khi bị trúng, 10% cơ hội đánh rắm và {{Charm}} mê hoặc, {{Poison}} gây độc hoặc đẩy lùi kẻ địch", -- Farting Baby
	-- Full old Desc: "Chặn đạn#Khi bị trúng, 10% cơ hội đánh rắm và {{Charm}} mê hoặc, {{Poison}} gây độc hoặc đẩy lùi kẻ địch"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies"

	[C_ID .. 405] = "Nảy quanh phòng", -- GB Bug
	-- Full old Desc: "Nảy quanh phòng#Gây 120 sát thương mỗi giây và áp dụng hiệu ứng trạng thái ngẫu nhiên cho kẻ địch khi tiếp xúc"
	-- English: "Bounces around the room#Applies random status effects to enemies on contact"

	[C_ID .. 406] = "Nhân các chỉ số sát thương, nước mắt, tầm bắn và tốc độ của Isaac từ x0.5 đến x2#Hệ số được đổi lại mỗi lần sử dụng", -- D8
	-- English: "Multiplies Isaac's damage, tears, range and speed stats by between x0.5 and x2#The multipliers are rerolled each use"

	[C_ID .. 407] = "↑ Tăng một chỉ số của Isaac tùy thuộc vào màu sắc của hào quang#Nhận sát thương loại bỏ hiệu ứng, và cho Isaac hiệu ứng mới ở phòng tiếp theo#{{ColorYellow}}Vàng{{CR}} = ↑ {{Speed}} +0.5 Tốc độ#{{ColorBlue}}Xanh dương{{CR}} = ↑ {{Tears}} -4 Độ trễ nước mắt#{{ColorRed}}Đỏ{{CR}} = ↑ {{Damage}} +4 Sát thương#{{ColorOrange}}Cam{{CR}} = ↑ {{Range}} +7.5 Tầm bắn, ↑ +1 Tốc độ rơi nước mắt", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and gives Isaac a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} -4 Tear delay#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +7.5 Range, ↑ +1 Tear height"

	[C_ID .. 408] = "Nhận sát thương tạo một vòng brimstone đen quanh Isaac#Nó gây 30x sát thương của Isaac trong 2 giây#{{BlackHeart}} Kẻ địch bị giết bởi vòng có 15% cơ hội thả Trái tim Đen", -- Athame
	-- English: "Taking damage creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the ring have a 15% chance to drop a Black Heart"

	[C_ID .. 409] = "{{EmptyHeart}} Khi Isaac không có Trái tim Đỏ:#Bay được#Cứ 40 giây trong phòng có kẻ địch, nhận lá chắn trong 10 giây", -- Empty Vessel
	-- Full old Desc: "{{BlackHeart}} +2 Trái tim Đen#{{EmptyHeart}} Khi Isaac không có Trái tim Đỏ:#Bay được#Cứ 40 giây trong phòng có kẻ địch, nhận lá chắn trong 10 giây"
	-- English: "{{EmptyHeart}} When Isaac has no Red Hearts:#Flight#Every 40 seconds while in a hostile room, gain a shield for 10 seconds"

	[C_ID .. 410] = "Con mắt di chuyển thẳng và bắn nước mắt cùng hướng với Isaac", -- Evil Eye
	-- Full old Desc: "3.33% cơ hội bắn một con mắt#{{Luck}} 10% cơ hội ở 20 may mắn#Con mắt di chuyển thẳng và bắn nước mắt cùng hướng với Isaac"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot an eye#The eye moves in a straight line and shoots tears in the same direction as Isaac"

	[C_ID .. 411] = "↑ {{Damage}} +0.5 Sát thương cho mỗi kẻ địch giết trong phòng#Tối đa +5 Sát thương sau 10 lần giết", -- Lusty Blood
	-- English: "↑ {{Damage}} +0.5 Damage for each enemy killed in the room#Caps at +5 Damage after 10 kills"

	[C_ID .. 412] = "Nhận sát thương 15 lần tạo một bạn đồng hành quỷ vĩnh viễn#Sau hai bạn đồng hành, cần 30 lần thay vì 15#Tối đa 4 bạn đồng hành", -- Cambion Conception
	-- English: "Taking damage 15 times spawns a permanent demon familiar#After two familiars, it takes 30 instead of 15#Caps at 4 familiars"

	[C_ID .. 413] = "Nhặt 15 trái tim tạo một bạn đồng hành thiên thần vĩnh viễn#Tối đa 5 bạn đồng hành#{{SoulHeart}} Nếu đã có tất cả bạn đồng hành, tạo một Trái tim Linh hồn thay thế", -- Immaculate Conception
	-- English: "Picking up 15 hearts spawns a permanent angelic familiar#Caps at 5 familiars#{{SoulHeart}} If all familiars have been granted, spawns a Soul Heart instead"

	[C_ID .. 414] = "{{TreasureRoom}} Cho phép Isaac chọn giữa 2 vật phẩm trong phòng kho báu", -- More Options
	-- English: "{{TreasureRoom}} Allows Isaac to choose between 2 items in treasure rooms"

	[C_ID .. 415] = "Nếu Isaac không có hộp tim bị tổn thương:#{VAR:EFFECTLIST}#Nhận bất kỳ sát thương nào loại bỏ hiệu ứng trong phòng", -- Crown Of Light
	-- Full old Desc: "{{SoulHeart}} +2 Trái tim Linh hồn#Nếu Isaac không có hộp tim bị tổn thương:#↑ {{Damage}} x2 Hệ số sát thương#↑ {{Range}} +5.25 Tầm bắn#↑ +0.5 Tốc độ rơi nước mắt#↓ {{Shotspeed}} -0.3 Tốc độ đạn#Nhận bất kỳ sát thương nào loại bỏ hiệu ứng trong phòng"
	-- English: "If Isaac has no damaged heart containers:#{VAR:EFFECTLIST}#Taking any damage removes the effect for the room"

	[C_ID .. 416] = "Cho phép Isaac mang hai rune/lá bài/viên thuốc", -- Deep Pockets
	-- English: "Allows Isaac to carry two runes/cards/pills"

	[C_ID .. 417] = "Nảy quanh phòng bao quanh bởi hào quang gây sát thương gây 1.29x sát thương của Isaac mỗi giây#↑ {{Damage}} x1.5 Hệ số sát thương khi đứng trong hào quang", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 1.29x Isaac's damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 418] = "Mỗi nước mắt của Isaac nhận một hiệu ứng khác nhau", -- Fruit Cake
	-- English: "Each one of Isaac's tears gets a different effect"

	[C_ID .. 419] = "Dịch chuyển Isaac đến một phòng chưa được dọn", -- Teleport 2.0
	-- Full old Desc: "Dịch chuyển Isaac đến một phòng chưa được dọn#Thứ tự ưu tiên: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"
	-- English: "Teleports Isaac to a room that has not been cleared yet#Hierarchy: {VAR:TEXT}"

	[C_ID .. 420] = "Đi theo vòng tròn vẽ một ngôi sao năm cánh trên sàn, gây 130 sát thương trong 4 giây", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds"

	[C_ID .. 421] = "{{Charm}} Mê hoặc và gây 5 sát thương cho tất cả kẻ địch ở gần", -- Kidney Bean
	-- English: "{{Charm}} Charms and deals 5 damage to all enemies in close range"

	[C_ID .. 422] = "Đưa Isaac trở lại phòng trước đó và đảo ngược tất cả hành động đã thực hiện trong phòng sử dụng vật phẩm", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in"

	[C_ID .. 423] = "Bao quanh Isaac bằng một vầng hào quang lớn gây sát thương của Isaac khi tiếp xúc mỗi giây#Cơ hội phản đạn kẻ địch", -- Circle of Protection
	-- English: "Surrounds Isaac with a large halo that deals his damage on contact per second#Chance to reflect enemy projectiles"

	[C_ID .. 424] = "Vật phẩm nhặt có cơ hội bị thay bằng {{GrabBag}}túi:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Tạo một túi", -- Sack Head
	-- English: "Pickups have a chance to be replaced with a {{GrabBag}}sack:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Spawns a sack"

	[C_ID .. 425] = "{{Slow}} Tạo một hình nón ánh sáng làm chậm phía trước Isaac", -- Night Light
	-- English: "{{Slow}} Spawns a slowing cone of light in front of Isaac"

	[C_ID .. 427] = "Tạo một thùng TNT có thể đẩy#Sử dụng vật phẩm lần thứ hai trong cùng phòng kích nổ thùng từ xa", -- Mine Crafter
	-- English: "Spawns a pushable TNT barrel#Using the item a second time in the same room remotely detonates the barrel"

	[C_ID .. 429] = "{{Coin}} Trúng kẻ địch bằng nước mắt có 5% cơ hội tạo một Penny", -- Head of the Keeper
	-- English: "{{Coin}} Hitting an enemy with a tear has a 5% chance to spawn a Penny"

	[C_ID .. 430] = "Bắn nước mắt vào kẻ địch gần đó gây sát thương của Isaac", -- Papa Fly
	-- Full old Desc: "Bắt chước chuyển động của Isaac sau 1 giây#Bắn nước mắt vào kẻ địch gần đó gây sát thương của Isaac"
	-- English: "{{Damage}} Shoots tears at nearby enemies that deal Isaac's damage"

	[C_ID .. 431] = "Nước mắt đi qua nó được nhân đôi và tăng tầm bắn + Tốc độ đạn", -- Multidimensional Baby
	-- Full old Desc: "Bắt chước chuyển động của Isaac sau 2 giây#Nước mắt đi qua nó được nhân đôi và tăng tầm bắn + Tốc độ đạn"
	-- English: "Tears that pass through it are doubled and gain a range + shot speed boost"

	[C_ID .. 432] = "{{Charm}} Bom của Isaac có 25% cơ hội thả vật phẩm nhặt ngẫu nhiên và 15% cơ hội mê hoặc kẻ địch khi nổ", -- Glitter Bombs
	-- Full old Desc: "{{Bomb}} +5 Bom#{{Charm}} Bom của Isaac có 25% cơ hội thả vật phẩm nhặt ngẫu nhiên và 15% cơ hội mê hoặc kẻ địch khi nổ"
	-- English: "{{Charm}} Isaac's bombs have a 25% chance to drop a random pickup and a 15% chance to charm enemies when they explode"

	[C_ID .. 433] = "{{Fear}} Nhận sát thương làm tất cả kẻ địch trong phòng sợ hãi và tạo một con sạc đen thân thiện", -- My Shadow
	-- Full old Desc: "{{Fear}} Nhận sát thương làm tất cả kẻ địch trong phòng sợ hãi và tạo một con sạc đen thân thiện#Con sạc gây 5 sát thương mỗi giây"
	-- English: "{{Fear}} Taking damage fears all enemies in the room and spawns a friendly black charger"

	[C_ID .. 434] = "Giết kẻ địch thêm một con ruồi xanh vào lọ, tối đa 20 con ruồi#Sử dụng vật phẩm thả tất cả con ruồi", -- Jar of Flies
	-- English: "Killing an enemy adds a blue fly to the jar, up to 20 flies#Using the item releases all the flies"

	[C_ID .. 435] = "Bắn 4 nước mắt theo hình chữ thập", -- Lil Loki
	-- Full old Desc: "Bắn 4 nước mắt theo hình chữ thập#Gây 3.5 sát thương mỗi nước mắt"
	-- English: "Shoots 4 tears in a cross pattern"

	[C_ID .. 436] = "{{Tears}} Nhận sát thương tăng Nước mắt trong suốt thời gian trong phòng", -- Milk!
	-- English: "{{Tears}} Taking damage grants a Tears up for the duration of the room"

	[C_ID .. 437] = "Khởi động lại phòng và làm kẻ địch hồi sinh#Có thể dùng để nhận nhiều phần thưởng dọn phòng từ một phòng#Nếu dùng sau trận đấu với Greed, đổi phòng thành Cửa hàng/Phòng Bí mật thông thường", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room#If used after a Greed fight, rerolls the room into a normal Shop/Secret Room"

	[C_ID .. 439] = "{{Trinket}} Nhân đôi hiệu ứng trang sức", -- Mom's Box
	-- Full old Desc: "{{Trinket}} Tạo một món trang sức ngẫu nhiên#Khi cầm:#↑ {{Luck}} +1 May mắn#{{Trinket}} Nhân đôi hiệu ứng trang sức"
	-- English: "{{Trinket}} Doubles trinket effects"

	[C_ID .. 440] = "Isaac thỉnh thoảng ngừng bắn và sạc một đòn tấn công thả ra một loạt nước mắt và một viên sỏi thận", -- Kidney Stone
	-- Full old Desc: "↑ +2 Tốc độ rơi nước mắt#↓ {{Speed}} -0.2 Tốc độ#↓ {{Range}} -17 Tầm bắn#Isaac thỉnh thoảng ngừng bắn và sạc một đòn tấn công thả ra một loạt nước mắt và một viên sỏi thận"
	-- English: "Isaac occasionally stops firing and charges an attack that releases a burst of tears and a kidney stone"

	[C_ID .. 441] = "{{Timer}} Bắn một tia máu Mega Satan khổng lồ trong 15 giây#Tia kéo dài giữa các phòng và tầng", -- Mega Blast
	-- English: "{{Timer}} Fires a huge Mega Satan blood beam for 15 seconds#The beam persists between rooms and floors"

	[C_ID .. 442] = "Khi ở 1 Trái tim Đỏ đầy:#{VAR:EFFECTLIST}", -- Dark Prince's Crown
	-- Full old Desc: "Khi ở 1 Trái tim Đỏ đầy:#↑ {{Tears}} +0.75 Nước mắt#↑ {{Range}} +1.5 Tầm bắn#↑ +1 Tốc độ rơi nước mắt#↑ {{Shotspeed}} +0.2 Tốc độ đạn"
	-- English: "While at 1 full Red Heart:#{VAR:EFFECTLIST}"

	[C_ID .. 444] = "Isaac bắn một loạt nước mắt mỗi 15 nước mắt#Nước mắt trong loạt gây gấp đôi sát thương", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears#Tears in the cluster deal double damage"

	[C_ID .. 445] = "{{LadderRoom}} Một con chó sủa trong phòng có không gian bò dưới đá", -- Dog Tooth
	-- Full old Desc: "↑ {{Speed}} +0.1 Tốc độ#↑ {{Damage}} +0.3 Sát thương#{{SecretRoom}}{{SuperSecretRoom}} Một con sói tru trong phòng liền kề với Phòng Bí mật/Phòng Bí mật Siêu cấp#{{LadderRoom}} Một con chó sủa trong phòng có không gian bò dưới đá"
	-- English: "{{SecretRoom}}{{SuperSecretRoom}} A wolf howls in rooms adjacent to a Secret/Super Secret Room#{{LadderRoom}} A dog barks in rooms with a crawlspace under a rock"

	[C_ID .. 446] = "{{Poison}} Khi bắn, Isaac được bao quanh bởi hào quang xanh gây độc cho kẻ địch", -- Dead Tooth
	-- English: "{{Poison}} While firing, Isaac is surrounded by a green aura that poisons enemies"

	[C_ID .. 447] = "Bắn không ngừng trong 7.5 giây tạo một đám mây phân#Đám mây gây sát thương của Isaac 5 lần mỗi giây#Đám mây kéo dài 15 giây và có thể di chuyển bằng cách bắn vào nó", -- Linger Bean
	-- English: "Firing without pause for 7.5 seconds spawns a poop cloud#The cloud deals Isaac's damage 5 times a second#The cloud lasts 15 seconds and can be moved by shooting it"

	[C_ID .. 448] = "Khi nhận sát thương:#{{Heart}} 25% cơ hội tạo Trái tim Đỏ#{{Collectible214}} 10% cơ hội nhận ↑ {{Range}} +5 Tầm bắn và để lại vệt chất lỏng máu trong phòng", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{Collectible214}} 10% chance to get ↑ {{Range}} +5 Range and leave a trail of blood creep for the room"

	[C_ID .. 449] = "{{Confusion}} Đạn kẻ địch có 25% cơ hội bị phản lại thành nước mắt gây choáng", -- Metal Plate
	-- Full old Desc: "{{SoulHeart}} +1 Trái tim Linh hồn#{{Confusion}} Đạn kẻ địch có 25% cơ hội bị phản lại thành nước mắt gây choáng"
	-- English: "{{Confusion}} Enemy bullets have a 25% chance to be reflected as concussive tears"

	[C_ID .. 450] = "Mỗi 20 nước mắt, Isaac bắn một nước mắt đồng xu gây gấp đôi sát thương#Kẻ địch trúng đồng xu bị hóa đá và biến thành vàng#{{Coin}} Giết kẻ địch vàng thả 1-4 đồng xu#{{Warning}} Bắn nước mắt đồng xu tốn 1 đồng xu", -- Eye of Greed
	-- English: "Every 20 tears, Isaac shoots a coin tear that deals double damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-4 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "{{Card}} Hiệu ứng lá bài được nhân đôi hoặc tăng cường", -- Tarot Cloth
	-- Full old Desc: "{{Card}} Tạo một lá bài#{{Card}} Hiệu ứng lá bài được nhân đôi hoặc tăng cường"
	-- English: "{{Card}} Card effects are doubled or enhanced"

	[C_ID .. 452] = "Nhận sát thương bắn 10 nước mắt theo vòng tròn quanh Isaac#Nước mắt gây sát thương của Isaac + 25", -- Varicose Veins
	-- English: "Taking damage shoots 10 tears in a circle around Isaac#The tears deal Isaac's damage + 25"

	[C_ID .. 453] = "Nước mắt vỡ thành 1-3 mảnh xương nhỏ khi va chạm bất cứ thứ gì", -- Compound Fracture
	-- Full old Desc: "↑ {{Range}} +1.5 Tầm bắn#↑ +1 Tốc độ rơi nước mắt#Nước mắt vỡ thành 1-3 mảnh xương nhỏ khi va chạm bất cứ thứ gì"
	-- English: "Tears shatter into 1-3 small bone shards upon hitting anything"

	[C_ID .. 454] = "Tạo một {{Rune}} rune, {{Card}} lá bài hoặc {{Pill}} viên thuốc khi nhặt#Cho phép Isaac mang 2 rune/lá bài/viên thuốc", -- Polydactyly
	-- English: "Spawns a {{Rune}} rune, {{Card}} card or {{Pill}} pill on pickup#Allows Isaac to carry 2 runes/cards/pills"

	[C_ID .. 455] = "{{Luck}} Tạo một Đồng xu May mắn", -- Dad's Lost Coin
	-- Full old Desc: "↑ {{Range}} +1.5 Tầm bắn#↑ +1 Tốc độ rơi nước mắt#{{Luck}} Tạo một Đồng xu May mắn"
	-- English: "{{Luck}} Spawns a Lucky Penny"

	[C_ID .. 457] = "20% cơ hội vô hiệu hóa sát thương nhận được", -- Cone Head
	-- Full old Desc: "{{SoulHeart}} +1 Trái tim Linh hồn#20% cơ hội vô hiệu hóa sát thương nhận được"
	-- English: "20% chance to negate damage taken"

	[C_ID .. 458] = "{{Trinket}} Cho phép Isaac mang 2 món trang sức", -- Belly Button
	-- Full old Desc: "{{Trinket}} Cho phép Isaac mang 2 món trang sức#{{Trinket}} Tạo một món trang sức ngẫu nhiên"
	-- English: "{{Trinket}} Allows Isaac to carry 2 trinkets"

	[C_ID .. 459] = "20% cơ hội bắn một cục nước mũi dính#{{Luck}} Không bị ảnh hưởng bởi may mắn", -- Sinus Infection
	-- Full old Desc: "20% cơ hội bắn một cục nước mũi dính#{{Damage}} Nước mũi gây sát thương của Isaac mỗi giây và dính trong 60 giây#{{Luck}} Không bị ảnh hưởng bởi may mắn"
	-- English: "20% chance to shoot a sticky booger#{{Damage}} Boogers deal Isaac's damage once a second and stick for {VAR:1} seconds#{{Luck}} Not affected by luck"

	[C_ID .. 460] = "{{Confusion}} 5% cơ hội bắn nước mắt gây choáng#Làm màn hình tối hơn một chút", -- Glaucoma
	-- English: "{{Confusion}} 5% chance to shoot concussive tears#Makes the screen slightly darker"

	[C_ID .. 461] = "{{Slow}} Túi trứng tạo chất lỏng làm chậm và một con nhện hoặc ruồi xanh khi trúng", -- Parasitoid
	-- Full old Desc: "15% cơ hội bắn túi trứng#{{Luck}} 50% cơ hội ở 5 may mắn#{{Slow}} Túi trứng tạo chất lỏng làm chậm và một con nhện hoặc ruồi xanh khi trúng"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot egg sacks#{{Slow}} Egg sacks spawn slowing creep and a blue spider or fly on hit"

	[C_ID .. 462] = "Trúng kẻ địch làm nước mắt tự dẫn đường và tăng gấp đôi sát thương", -- Eye of Belial
	-- Full old Desc: "↑ {{Range}} +1.5 Tầm bắn#↑ +1 Tốc độ rơi nước mắt#Nước mắt xuyên thấu#Trúng kẻ địch làm nước mắt tự dẫn đường và tăng gấp đôi sát thương"
	-- English: "Hitting an enemy makes the tear homing and doubles its damage"

	[C_ID .. 463] = "Nước mắt của Isaac có thể phá đá và mở cửa", -- Sulfuric Acid
	-- Full old Desc: "↑ {{Damage}} +0.3 Sát thương#Nước mắt của Isaac có thể phá đá và mở cửa"
	-- English: "Isaac's tears can destroy rocks and open doors"

	[C_ID .. 464] = "Kẻ địch Quán quân thả vật phẩm nhặt mà Isaac cần nhất", -- Glyph of Balance
	-- Full old Desc: "{{SoulHeart}} +2 Trái tim Linh hồn#Kẻ địch Quán quân thả vật phẩm nhặt mà Isaac cần nhất"
	-- English: "Champion enemies drop whatever pickup Isaac needs the most"

	[C_ID .. 465] = "Cho phép Isaac bắn nước mắt theo bất kỳ hướng nào", -- Analog Stick
	-- Full old Desc: "↑ {{Tears}} +0.3 Nước mắt#Cho phép Isaac bắn nước mắt theo bất kỳ hướng nào"
	-- English: "Allows Isaac to shoot tears in any direction"

	[C_ID .. 466] = "{{Poison}} Kẻ địch đầu tiên bị giết trong phòng nổ và gây độc cho kẻ địch gần đó#Kẻ địch chết khi bị trúng độc cũng nổ và gây độc cho kẻ địch gần đó", -- Contagion
	-- English: "{{Poison}} The first enemy killed in a room explodes and poisons all nearby enemies#Enemies that die while poisoned also explode and poison nearby enemies"

	[C_ID .. 467] = "{{Damage}} Liên tục gây 10% sát thương của Isaac theo hướng nó chỉ", -- Finger!
	-- English: "{{Damage}} Constantly deals 10% of Isaac's damage in the direction it points"

	[C_ID .. 469] = "Để lại vệt chất lỏng#Chất lỏng gây 6 sát thương mỗi giây#Kẻ địch chạm vào đám mây có thể bị trúng tia sáng thánh", -- Depression
	-- English: "Leaves a trail of creep#The creep deals 6 damage per second#Enemies that touch the cloud can be hit by a holy light beam"

	[C_ID .. 470] = "Nảy quanh phòng#Dừng di chuyển khi Isaac bắn#Chặn đạn khi dừng lại", -- Hushy
	-- Full old Desc: "Nảy quanh phòng#Gây 30 sát thương tiếp xúc mỗi giây#Dừng di chuyển khi Isaac bắn#Chặn đạn khi dừng lại"
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped"

	[C_ID .. 471] = "Mỗi nước mắt gây 3.5 sát thương", -- Lil Monstro
	-- Full old Desc: "{{Chargeable}} Sạc một đòn tấn công súng ngắn tương tự {{Collectible229}} Phổi của Monstro#Mỗi nước mắt gây 3.5 sát thương"
	-- English: "{{Chargeable}} Charges a shotgun attack similar to {{NameC229}}#Each tear deals 3.5 damage"

	[C_ID .. 472] = "Các bạn đồng hành khác đi theo nó#Dừng di chuyển khi Isaac bắn#Dịch chuyển về Isaac khi Isaac ngừng bắn", -- King Baby
	-- English: "Other familiars follow it#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 473] = "Từ từ lao về phía trước", -- Big Chubby
	-- Full old Desc: "Từ từ lao về phía trước#Chặn đạn#Gây 40.5 sát thương tiếp xúc mỗi giây"
	-- English: "Very slowly charges forwards"

	[C_ID .. 475] = "{{Warning}} Giết Isaac 3 giây sau đó", -- Plan C
	-- Full old Desc: "Gây 9,999,999 sát thương cho tất cả kẻ địch#{{Warning}} Giết Isaac 3 giây sau đó"
	-- English: "{{Warning}} Kills Isaac 3 seconds later"

	[C_ID .. 476] = "Nhân đôi một vật phẩm nhặt ngẫu nhiên trong phòng", -- D1
	-- English: "Duplicates a random pickup in the room"

	[C_ID .. 477] = "Tiêu thụ tất cả vật phẩm trên bệ trong phòng#Vật phẩm kích hoạt: Hiệu ứng của chúng kích hoạt, và sẽ kích hoạt với mỗi lần sử dụng Void sau này#↑ Vật phẩm bị động cấp hai chỉ số ngẫu nhiên tăng", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate, and will activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 478] = "Tạm dừng tất cả kẻ địch trong phòng cho đến khi Isaac bắn#Chạm vào kẻ địch bị tạm dừng vẫn gây sát thương cho Isaac#Kẻ địch hết tạm dừng sau 30 giây", -- Pause
	-- English: "Pauses all enemies in the room until Isaac shoots#Touching a paused enemy still deals damage to Isaac#Enemies unpause after 30 seconds"

	[C_ID .. 479] = "{{Trinket}} Tiêu thụ món trang sức Isaac đang giữ và cấp hiệu ứng của chúng vĩnh viễn#Tăng tỷ lệ xuất hiện của món trang sức", -- Smelter
	-- English: "{{Trinket}} Consumes Isaac's held trinkets and grants their effects permanently#Increases the spawn rate of trinkets"

	[C_ID .. 480] = "Chuyển vật phẩm nhặt thành ruồi hoặc nhện xanh#Nhân đôi tất cả ruồi và nhện xanh#Tạo 1 ruồi hoặc nhện xanh nếu Isaac không có", -- Compost
	-- English: "Converts pickups into blue flies or spiders#Doubles all blue flies and spiders#Spawns 1 blue fly or spider if Isaac has none"

	[C_ID .. 481] = "{{Blank}} Làm hỏng tất cả hình ảnh và âm nhạc trong phòng", -- Dataminer
	-- Full old Desc: "↑ Tăng chỉ số ngẫu nhiên#↓ Giảm chỉ số ngẫu nhiên#{{Timer}} Hiệu ứng nước mắt ngẫu nhiên trong phòng#{{Blank}} Làm hỏng tất cả hình ảnh và âm nhạc trong phòng"
	-- English: "{{Timer}} Random tear effects for the room#{{Blank}} Corrupts all sprites and music in the room"

	[C_ID .. 482] = "Thay đổi nhân vật của bạn thành nhân vật ngẫu nhiên#Loại bỏ vật phẩm gần đây nhất thu thập được", -- Clicker
	-- English: "Changes your character to a random character#Removes the most recent item collected"

	[C_ID .. 483] = "Ảnh hưởng toàn bộ tầng#Làm nổ tất cả vật thể#{VAR:EFFECTLIST}#Mở phòng bí mật#Mở Boss Rush và Hush bất kể thời gian", -- Mama Mega!
	-- Full old Desc: "Ảnh hưởng toàn bộ tầng#Làm nổ tất cả vật thể#Gây 200 sát thương cho tất cả kẻ địch#Mở phòng bí mật#Mở Boss Rush và Hush bất kể thời gian"
	-- English: "Affects the whole floor#Explodes all objects#{VAR:EFFECTLIST}#Opens secret rooms#Opens Boss Rush and Hush regardless of time"

	[C_ID .. 484] = "Khi sử dụng, đẩy kẻ địch ra xa và tạo sóng đá quanh Isaac#Sóng đá có thể mở phòng và phá đá", -- Wait What?
	-- English: "Upon use, pushes enemies away and spawns a rock wave around Isaac#The rock wave can open rooms and break rocks"

	[C_ID .. 485] = "50% cơ hội nhân đôi tất cả vật phẩm, vật phẩm nhặt và rương trong phòng#50% cơ hội loại bỏ vật phẩm/vật phẩm nhặt trong phòng và tạo 1 đồng xu", -- Crooked Penny
	-- English: "50% chance to double all items, pickups and chests in room#50% chance to remove items / pickups in room and spawn 1 coin"

	[C_ID .. 486] = "Làm tổn thương Isaac mà không giảm máu#Kích hoạt bất kỳ hiệu ứng vật phẩm khi bị trúng", -- Dull Razor
	-- English: "Hurts Isaac without removing health#Triggers any on-hit item effects"

	[C_ID .. 487] = "{{Collectible214}} Để lại vệt chất lỏng máu", -- Potato Peeler
	-- Full old Desc: "{{EmptyHeart}} Loại bỏ 1 hộp tim để:#↑ {{Damage}} +0.2 Sát thương#{{Collectible73}} Một Khối Thịt#{{Timer}} Nhận trong phòng:#↑ {{Range}} +5 Tầm bắn#{{Collectible214}} Để lại vệt chất lỏng máu"
	-- English: "{{EmptyHeart}} Removes 1 heart container for:#{VAR:EFFECTLIST}#{{IND}}{{NameC73}}#{VAR:ROOMEFFECT}#{{IND}}{{Collectible214}} Leave a trail of blood creep"

	[C_ID .. 488] = "Cấp hiệu ứng vật phẩm ngẫu nhiên trong phòng", -- Metronome
	-- English: "Grants a random item effect for the room"

	[C_ID .. 489] = "Kích hoạt hiệu ứng xúc xắc ngẫu nhiên mỗi lần sử dụng", -- D Infinity
	-- English: "Triggers a random dice effect each use"

	[C_ID .. 490] = "Tạo 2 vật phẩm ngẫu nhiên tùy thuộc vào nhóm vật phẩm của phòng hiện tại#Bắt đầu không có lần sạc", -- Eden's Soul
	-- English: "Spawns 2 random items depending on the current room's item pool#Starts with no charges"

	[C_ID .. 491] = "{{Poison}} Sử dụng viên thuốc gây độc cho tất cả kẻ địch trong phòng", -- Acid Baby
	-- Full old Desc: "{{Pill}} Tạo một viên thuốc ngẫu nhiên mỗi 3 phòng#{{Poison}} Sử dụng viên thuốc gây độc cho tất cả kẻ địch trong phòng"
	-- English: "{{Pill}} Spawns a random pill every {VAR:1} rooms#{{Poison}} Using a pill poisons all enemies in the room"

	[C_ID .. 492] = "Đánh dấu vị trí của {{SecretRoom}} phòng bí mật, đá nhuộm và {{LadderRoom}} không gian bò", -- YO LISTEN!
	-- Full old Desc: "↑ {{Luck}} +1 May mắn#Đánh dấu vị trí của {{SecretRoom}} phòng bí mật, đá nhuộm và {{LadderRoom}} không gian bò"
	-- English: "Highlights the location of {{SecretRoom}} secret rooms, tinted rocks and {{LadderRoom}} crawlspaces"

	[C_ID .. 493] = "Mỗi hộp tim trống:#{VAR:EFFECTLIST}", -- Adrenaline
	-- Full old Desc: "Mỗi hộp tim trống:#↑ {{Damage}} +0.2 Sát thương"
	-- English: "For every empty heart container:#{VAR:EFFECTLIST}"

	[C_ID .. 494] = "Nước mắt tạo 1-2 tia điện khi va chạm#Tia điện gây nửa sát thương của Isaac", -- Jacob's Ladder
	-- English: "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half of Isaac's damage"

	[C_ID .. 495] = "Cơ hội bắn ngọn lửa đỏ chặn đạn kẻ địch và gây sát thương tiếp xúc#Ngọn lửa biến mất sau khi gây sát thương hoặc chặn đạn 5 lần", -- Ghost Pepper
	-- English: "Chance to shoot a red flame that blocks enemy shots and deals contact damage#The flame disappears after dealing damage or blocking shots 5 times"

	[C_ID .. 496] = "Kim giết kẻ địch thường ngay lập tức, làm chúng vỡ thành 10 nước mắt#{{Damage}} Kim gây 3x sát thương của Isaac với trùm", -- Euthanasia
	-- Full old Desc: "3.33% cơ hội bắn kim#{{Luck}} 100% cơ hội ở 15 may mắn#Kim giết kẻ địch thường ngay lập tức, làm chúng vỡ thành 10 nước mắt#{{Damage}} Kim gây 3x sát thương của Isaac với trùm"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a needle#Needles kill normal enemies instantly, bursting them into 10 tears#{{Damage}} Needles deal 3x Isaac's damage against bosses"

	[C_ID .. 497] = "{{Confusion}} Vào phòng làm tất cả kẻ địch bị choáng cho đến khi Isaac bắt đầu bắn", -- Camo Undies
	-- English: "{{Confusion}} Entering a room confuses all enemies until Isaac starts shooting"

	[C_ID .. 498] = "{{AngelDevilChance}} Tạo cả Phòng Quỷ và Phòng Thiên thần nếu một trong hai sẽ xuất hiện#Vào một phòng sẽ làm phòng kia biến mất", -- Duality
	-- English: "{{AngelDevilChance}} Spawns both a Devil and Angel Room if either would have spawned#Entering one makes the other disappear"

	[C_ID .. 501] = "{{Heart}} +1 Hộp tim cho mỗi 25 đồng xu nhận được sau khi có Greed's Gullet", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins gained after getting Greed's Gullet"

	[C_ID .. 502] = "{{Slow}} Bắn thỉnh thoảng tạo nước mắt chất lỏng trắng gây gấp đôi sát thương và làm chậm kẻ địch#Nhận sát thương bắn một nước mắt chất lỏng trắng", -- Large Zit
	-- English: "{{Slow}} Firing occasionally shoots a white creep tear that deals double damage and slows enemies#Taking damage shoots a white creep tear"

	[C_ID .. 503] = "Isaac gây 3.5 sát thương tiếp xúc", -- Little Horn
	-- Full old Desc: "5% cơ hội bắn nước mắt giết kẻ địch ngay lập tức#{{Luck}} 20% cơ hội ở 15 may mắn#Isaac gây 3.5 sát thương tiếp xúc"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot tears that instantly kill enemies#Isaac deals 3.5 contact damage"

	[C_ID .. 504] = "Tạo một tháp pháo ruồi bắn kẻ địch#Mỗi phát bắn gây 2 sát thương", -- Brown Nugget
	-- English: "Spawns a fly turret that shoots at enemies#Each shot deals 2 damage"

	[C_ID .. 505] = "Vào phòng có kẻ địch có cơ hội tạo một kẻ địch bị mê hoặc", -- Poke Go
	-- English: "{{Friendly}} Entering a hostile room has a chance to spawn a friendly enemy"

	[C_ID .. 506] = "{{BleedingOut}} Trúng kẻ địch từ phía sau gây gấp đôi sát thương và gây chảy máu, gây 10% sát thương tối đa của kẻ địch mỗi 5 giây", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds"

	[C_ID .. 507] = "{{Damage}} Gây sát thương của Isaac + 10% máu tối đa của kẻ địch cho tất cả kẻ địch#{{HalfHeart}} Gây sát thương bằng Ống Hút có thể tạo nửa trái tim#{{HalfSoulHeart}} Không có hộp tim thả Trái tim Linh hồn thay thế", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts#{{HalfSoulHeart}} Having no heart containers drops Soul Hearts instead"

	[C_ID .. 508] = "{{BleedingOut}} Vệ tinh gây chảy máu, gây 10% sát thương tối đa của kẻ địch mỗi 5 giây#{{Damage}} Gây 3x sát thương của Isaac mỗi giây#Không chặn đạn", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds#{{Damage}} Deals 3x Isaac's damage per second#Does not block shots"

	[C_ID .. 509] = "Vệ tinh bắn một nước mắt theo hướng ngẫu nhiên mỗi 2 giây#Không chặn đạn", -- Bloodshot Eye
	-- Full old Desc: "Vệ tinh bắn một nước mắt theo hướng ngẫu nhiên mỗi 2 giây#Gây 3.5 sát thương mỗi nước mắt#Gây 30 sát thương tiếp xúc mỗi giây#Không chặn đạn"
	-- English: "Orbital that shoots a tear in a random direction every 2 seconds#Does not block shots"

	[C_ID .. 510] = "{{Timer}} Tạo một phiên bản delirium thân thiện của trùm trong phòng", -- Delirious
	-- English: "{{Friendly}} Spawns a friendly delirium version of a boss for the room"

	[C_ID .. 511] = "Xoay quanh một kẻ địch ngẫu nhiên cho đến khi kẻ địch đó chết", -- Angry Fly
	-- Full old Desc: "Xoay quanh một kẻ địch ngẫu nhiên cho đến khi kẻ địch đó chết#Gây 30 sát thương tiếp xúc mỗi giây cho các kẻ địch khác"
	-- English: "Orbits a random enemy until that enemy dies"

	[C_ID .. 512] = "Ném hố đen, hút mọi thứ vào#Gây 6 sát thương mỗi giây#Phá hủy đá gần đó#Kéo dài 6 giây", -- Black Hole
	-- English: "Throwable black hole, which sucks in everything#Deals 6 damage per second#Destroys nearby rocks#Lasts 6 seconds"

	[C_ID .. 513] = "{{Charm}} Ngẫu nhiên mê hoặc/làm sợ kẻ địch#Nhận sát thương có cơ hội ngẫu nhiên tạo Phân Cầu vồng", -- Bozo
	-- Full old Desc: "↑ {{Damage}} +0.1 Sát thương#{{SoulHeart}} +1 Trái tim Linh hồn#{{Charm}} Ngẫu nhiên mê hoặc/làm sợ kẻ địch#Nhận sát thương có cơ hội ngẫu nhiên tạo Phân Cầu vồng"
	-- English: "{{Charm}} Randomly charms/fears enemies#Taking damage has a random chance to spawn a Rainbow Poop"

	[C_ID .. 514] = "Làm một số kẻ địch và đạn tạm dừng ngẫu nhiên#25% cơ hội nhân đôi phần thưởng dọn phòng", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#25% chance to double room clear drops"

	[C_ID .. 515] = "Tạo một vật phẩm ngẫu nhiên từ nhóm vật phẩm của phòng hiện tại#Cơ hội tạo Lump of Coal hoặc The Poop thay thế", -- Mystery Gift
	-- English: "Spawns a random item from the current room's item pool#Chance to spawn Lump of Coal or The Poop instead"

	[C_ID .. 516] = "Tạo một Vòi Phun bắn nước mắt giống Isaac theo vòng tròn quanh nó", -- Sprinkler
	-- English: "Spawns a Sprinkler that shoots the same tears as Isaac in a circle around itself"

	[C_ID .. 517] = "Loại bỏ độ trễ giữa các lần đặt bom", -- Fast Bombs
	-- Full old Desc: "{{Bomb}} +7 Bom#Loại bỏ độ trễ giữa các lần đặt bom"
	-- English: "Removes the delay between bomb placements"

	[C_ID .. 518] = "bạn đồng hành trông giống một bé đồng hành ngẫu nhiên#Có hiệu ứng nước mắt ngẫu nhiên#Hiệu ứng thay đổi mỗi tầng", -- Buddy in a Box
	-- English: "Familiar which looks like a random co-op baby#Has random tear effects#Effects change every floor"

	[C_ID .. 519] = "Biến thành một bạn đồng hành ngẫu nhiên mỗi 10 giây", -- Lil Delirium
	-- English: "Transforms into a random familiar every 10 seconds"

	[C_ID .. 520] = "Giết 15 kẻ địch thêm 1 lần sạc cho vật phẩm kích hoạt", -- Jumper Cables
	-- English: "Killing 15 enemies adds 1 charge to the active item"

	[C_ID .. 521] = "Làm một vật phẩm ngẫu nhiên trong {{Shop}} Cửa hàng hoặc {{DevilRoom}} Phòng Quỷ miễn phí#Cầm vật phẩm đảm bảo một vật phẩm Cửa hàng giảm giá", -- Coupon
	-- English: "Makes one random item in the {{Shop}} Shop or {{DevilRoom}} Devil Room free#Holding the item guarantees one Shop item is on sale"

	[C_ID .. 522] = "Dừng tất cả đạn kẻ địch đến gần Isaac trong 3 giây và đẩy chúng ra xa sau đó", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards"

	[C_ID .. 523] = "Lưu trữ tất cả vật phẩm nhặt và vật phẩm trong phòng hiện tại#Sử dụng vật phẩm lần nữa thả mọi thứ trở lại sàn#Cho phép Isaac di chuyển đồ giữa các phòng", -- Moving Box
	-- English: "Stores all pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "Nước mắt của Isaac được nối với nhau bằng tia điện#Tia gây sát thương của Isaac", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#The beams deal Isaac's damage"

	[C_ID .. 525] = "Nhận sát thương tạo một vệ tinh chặn đạn#Tối đa 3 vệ tinh#Chúng gây 35 sát thương tiếp xúc mỗi giây#Vệ tinh bị phá hủy nếu nhận quá nhiều sát thương", -- Leprosy
	-- English: "Taking damage spawns a projectile blocking orbital#Caps at 3 orbitals#They deal 35 contact damage per second#Orbitals are destroyed if they take too much damage"

	[C_ID .. 526] = "Tạo một bạn đồng hành kỵ sĩ nhỏ tạo ra châu chấu#Kỵ sĩ và châu chấu thay đổi mỗi 10 giây", -- 7 Seals
	-- English: "Spawns a small horseman familiar that spawns locusts#The horseman and its locust changes every 10 seconds"

	[C_ID .. 527] = "Hiển thị con trỏ di động trong vài giây, sau đó triệu hồi một con ma sẽ, tùy vào vị trí con trỏ:#Mở cửa hoặc rương#Lấy một vật phẩm#50% cơ hội ăn cắp từ Cửa hàng/Quỷ#Tấn công kẻ địch cho đến khi nó chết#Làm nổ tường, đá, người giữ cửa hàng, tượng thiên thần, máy, người ăn xin", -- Mr. ME!
	-- English: "Displays a movable cursor for a few seconds, then summons a ghost that will, depending on the cursor position:#Open doors or chests#Fetch an item#50% chance to steal from the Shop / Devil#Attack an enemy until it dies#Explode walls, rocks, shopkeepers, angel statues, machines, beggars"

	[C_ID .. 528] = "Lăng kính vệ tinh#Nước mắt thân thiện trúng nó tách thành 4", -- Angelic Prism
	-- English: "Orbital prism#Friendly tears hitting it split into 4"

	[C_ID .. 529] = "Nước mắt của Isaac nảy vào nhau và biến mất khi ngừng di chuyển", -- Pop!
	-- English: "Isaac's tears bounce off each other and disappear when they stop moving"

	[C_ID .. 530] = "Giết kẻ địch theo thứ tự được đánh dấu {{DeathMark}} phía trên chúng cấp một vật phẩm nhặt hoặc tăng chỉ số ngẫu nhiên", -- Death's List
	-- English: "Killing enemies in the order dictated by the mark {{DeathMark}} above them grants a random pickup or stat increase"

	[C_ID .. 531] = "Nước mắt của Isaac bay theo hình vòng cung và vỡ thành nước mắt nhỏ hơn khi va chạm", -- Haemolacria
	-- Full old Desc: "↑ {{Damage}} x1.31 Hệ số sát thương#↓ {{Tears}} x0.5 Hệ số nước mắt#↓ {{Tears}} +10 Độ trễ nước mắt#Nước mắt của Isaac bay theo hình vòng cung và vỡ thành nước mắt nhỏ hơn khi va chạm"
	-- English: "Isaac's tears fly in an arc and burst into smaller tears on impact"

	[C_ID .. 532] = "Nước mắt của Isaac dần chậm lại, dừng, sau đó nổ thành 8 nước mắt nhỏ hơn#Nước mắt có thể hợp nhất và trở nên lớn hơn", -- Lachryphagy
	-- English: "Isaac's tears progressively slow down, stop, then explode into 8 smaller tears#Tears can merge and become bigger"

	[C_ID .. 533] = "Thay nước mắt của Isaac bằng tia sáng xuyên thấu#Tia gây 33% sát thương nhưng có thể trúng kẻ địch nhiều lần", -- Trisagion
	-- English: "Replaces Isaac's tears with piercing beams of light#The beams deal 33% damage but can hit enemies multiple times"

	[C_ID .. 534] = "Cho phép Isaac giữ 2 vật phẩm kích hoạt#Các vật phẩm có thể được đổi bằng nút Thả ({{ButtonRT}})", -- Schoolbag
	-- English: "Allows Isaac to hold 2 active items#The items can be swapped using the Drop button ({{ButtonRT}})"

	[C_ID .. 535] = "{{HolyMantle}} Vào phòng trùm cấp một lá chắn Holy Mantle (ngăn sát thương một lần)", -- Blanket
	-- Full old Desc: "{{HealingRed}} Hồi 1 trái tim#{{SoulHeart}} +1 Trái tim Linh hồn#{{HolyMantle}} Vào phòng trùm cấp một lá chắn Holy Mantle (ngăn sát thương một lần)"
	-- English: "{{HolyMantle}} Entering a boss room grants a Holy Mantle shield (prevents damage once)"

	[C_ID .. 536] = "Hy sinh tối đa 2 bạn đồng hành và tạo một vật phẩm quỷ cho mỗi lần hy sinh#{{Coin}} Biến nhện/ruồi xanh thành đồng xu", -- Sacrificial Altar
	-- English: "Sacrifices up to 2 familiars and spawns a devil item for each sacrifice#{{Coin}} Turns blue spiders/flies into coins"

	[C_ID .. 537] = "{{Pill}} Tạo một viên thuốc ngẫu nhiên khi nhặt#Bắn một vệt chất lỏng#Loại chất lỏng thay đổi với mỗi lần sử dụng viên thuốc", -- Lil Spewer
	-- English: "{{Pill}} Spawns a random pill on pickup#Fires a line of creep#The type of creep changes with each pill use"

	[C_ID .. 538] = "{{Collectible479}} Nhận sát thương có 10% cơ hội tiêu thụ món trang sức đang giữ của Isaac và cấp hiệu ứng của nó vĩnh viễn", -- Marbles
	-- Full old Desc: "{{Trinket}} Tạo 3 món trang sức ngẫu nhiên#{{Collectible479}} Nhận sát thương có 10% cơ hội tiêu thụ món trang sức đang giữ của Isaac và cấp hiệu ứng của nó vĩnh viễn"
	-- English: "{{Collectible479}} Taking damage has a 10% chance to consume Isaac's held trinket and grant its effects permanently"

	[C_ID .. 539] = "Nhận sát thương tạo một kẻ địch bị mê hoặc#Tạo bạn bè mạnh hơn khi dọn nhiều phòng mà không nhận sát thương", -- Mystery Egg
	-- English: "{{Friendly}} Taking damage spawns a friendly enemy#Spawns stronger friends the more rooms are cleared without taking damage"

	[C_ID .. 540] = "Nước mắt của Isaac nảy trên sàn và gây sát thương văng mỗi lần nảy", -- Flat Stone
	-- English: "Isaac's tears bounce off the floor and cause splash damage on every bounce"

	[C_ID .. 542] = "Phản đạn kẻ địch", -- Slipped Rib
	-- Full old Desc: "Vệ tinh#Phản đạn kẻ địch"
	-- English: "Reflects enemy projectiles"

	[C_ID .. 543] = "Nhận sát thương tạo một phân trắng#Khi ở trong hào quang của phân:#{VAR:EFFECTLIST}#Cơ hội chặn sát thương", -- Hallowed Ground
	-- Full old Desc: "Nhận sát thương tạo một phân trắng#Khi ở trong hào quang của phân:#↑ {{Tears}} x2 Hệ số nước mắt#Cơ hội chặn sát thương"
	-- English: "Taking damage spawns a white poop#While inside the poop's aura:#{VAR:EFFECTLIST}#{{IND}}Chance to block damage"

	[C_ID .. 544] = "Bay lơ lửng phía trước Isaac#Gây 6x sát thương của Isaac mỗi giây", -- Pointy Rib
	-- English: "Levitates in front of Isaac#Deals 6x Isaac's damage per second"

	[C_ID .. 545] = "Tạo một vệ tinh xương hoặc xương bị mê hoặc cho mỗi kẻ địch giết trong phòng (tối đa 8)", -- Book of the Dead
	-- English: "{{Friendly}} Spawns a bone orbital or friendly bony per enemy killed in the room (up to 8)"

	[C_ID .. 546] = "Cấp một hào quang hóa đá kẻ địch", -- Dad's Ring
	-- English: "{{Petrify}} Grants an aura that petrifies enemies"

	[C_ID .. 547] = "{{Trinket21}} Tạo món trang sức Mysterious Paper", -- Divorce Papers
	-- Full old Desc: "↑ {{Tears}} +0.7 Nước mắt#{{EmptyBoneHeart}} +1 Trái tim Xương#{{Trinket21}} Tạo món trang sức Mysterious Paper"
	-- English: "{{Trinket21}} Spawns the Mysterious Paper trinket"

	[C_ID .. 548] = "bạn đồng hành giống boomerang#Có thể nhặt và mang vật phẩm nhặt về", -- Jaw Bone
	-- Full old Desc: "bạn đồng hành giống boomerang#Gây 7 sát thương tiếp xúc#Có thể nhặt và mang vật phẩm nhặt về"
	-- English: "Boomerang-like familiar#Can grab and bring back pickups"

	[C_ID .. 549] = "Bắn 8 nước mắt xương theo mọi hướng", -- Brittle Bones
	-- Full old Desc: "{{EmptyBoneHeart}} Thay tất cả hộp Trái tim Đỏ của Isaac bằng 6 Trái tim Xương trống#Khi mất một Trái tim Xương:#↑ {{Tears}} +0.5 Nước mắt#Bắn 8 nước mắt xương theo mọi hướng"
	-- English: "{{EmptyBoneHeart}} Replaces all of Isaac's Red Heart containers with 6 empty Bone Hearts#Upon losing a Bone Heart:#{VAR:EFFECTLIST}#{{IND}}Shoots 8 bone tears in all directions"

	[C_ID .. 550] = "Chân của Mom liên tục cố gắng dậm Isaac#Sử dụng vật phẩm dừng việc dậm trong phòng (hoặc một đợt Boss Rush)#{{Warning}} (Hãy thử đánh bại Boss Rush với nó!)", -- Broken Shovel
	-- English: "Mom's Foot constantly tries to stomp Isaac#Using the item stops the stomping for the room (or one Boss Rush wave)#{{Warning}} (Try to beat Boss Rush with it!)"

	[C_ID .. 551] = "Hoàn thành Xẻng của Mom#{{Warning}} Sử dụng xẻng trên đống đất trong \"Dark Room\"", -- Broken Shovel
	-- English: "Completes Mom's Shovel#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 552] = "Tạo một cửa sập xuống tầng tiếp theo#10% cơ hội cho cửa sập {{LadderRoom}} không gian bò#{{Warning}} Sử dụng xẻng trên đống đất trong \"Dark Room\"", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#10% chance for {{LadderRoom}} crawlspace trapdoor#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 1] = "{{Coin}} Nhận sát thương sinh ra 1 đồng xu", -- Swallowed Penny
	-- English: "{{Coin}} Taking damage spawns 1 coin"

	[T_ID .. 2] = "50% cơ hội nhận vật phẩm từ phân", -- Petrified Poop
	-- English: "50% chance to get drops from poop"

	[T_ID .. 3] = "{{Battery}} -1 năng lượng cần cho vật phẩm kích hoạt", -- AAA Battery
	-- English: "{{Battery}} -1 Charge needed for active items"

	[T_ID .. 4] = "{{Collectible44}} Sử dụng vật phẩm kích hoạt dịch chuyển Isaac đến một phòng ngẫu nhiên", -- Broken Remote
	-- English: "{{Collectible44}} Using an active item teleports Isaac to a random room"

	[T_ID .. 5] = "2x cơ hội gặp kẻ địch dạng vô địch", -- Purple Heart
	-- English: "2x chance for champion enemies"

	[T_ID .. 6] = "{{Coin}} Thu hút đồng xu về phía Isaac", -- Broken Magnet
	-- English: "{{Coin}} Attracts coins to Isaac"

	[T_ID .. 7] = "{{Collectible33}} Cơ hội cao hơn để tìm The Bible trong {{Shop}} Cửa hàng và {{Library}} Thư viện", -- Rosary Bead
	-- Full old Desc: "{{AngelChance}} 50% cơ hội cao hơn để vào Phòng Thiên Thần#{{Collectible33}} Cơ hội cao hơn để tìm The Bible trong {{Shop}} Cửa hàng và {{Library}} Thư viện"
	-- English: "{{Collectible33}} Higher chance to find The Bible in {{Shop}} Shops and {{Library}} Libraries"

	[T_ID .. 8] = "{VAR:ITEMDESCRIPTION}", -- Cartridge
	-- Full old Desc: "{{Timer}} 5% cơ hội khi nhận sát thương nhận được trong 6,5 giây:#Bất tử#Isaac không thể bắn nhưng gây 40 sát thương tiếp xúc mỗi giây#{{HealingRed}} Giết 2 kẻ địch hồi nửa trái tim#{{Fear}} Làm tất cả kẻ địch trong phòng sợ hãi"
	-- English: "{{Timer}} {VAR:LUCKCHANCE}% chance upon taking damage:#{VAR:ITEMDESCRIPTION}"

	[T_ID .. 9] = "Nước mắt của Isaac dao động#Ảnh hưởng đến hitbox của nước mắt", -- Pulse Worm
	-- English: "Isaac's tears pulsate#Affects tear hitbox"

	[T_ID .. 10] = "Nước mắt của Isaac di chuyển theo dạng sóng", -- Wiggle Worm
	-- Full old Desc: "↑ {{Tears}} +0.3 Nước mắt#Nước mắt của Isaac di chuyển theo dạng sóng"
	-- English: "Isaac's tears move in waves"

	[T_ID .. 11] = "Nước mắt của Isaac di chuyển theo hình xoắn ốc với tốc độ cao", -- Ring Worm
	-- English: "Isaac's tears move in spirals with high speed"

	[T_ID .. 12] = "Nước mắt rộng hơn 50%#Tăng độ đẩy lùi", -- Flat Worm
	-- English: "50% wider tears#Increases knockback"

	[T_ID .. 13] = "{{Shop}} Cho phép Isaac lấy 1 vật phẩm trong cửa hàng miễn phí", -- Store Credit
	-- English: "{{Shop}} Allows Isaac to take 1 Shop item for free"

	[T_ID .. 14] = "Miễn nhiễm với chất lỏng trên sàn và gai trên sàn", -- Callus
	-- English: "Immune to creep and floor spikes"

	[T_ID .. 15] = "{{Coin}} Phá đá sinh ra đồng xu", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks spawns coins"

	[T_ID .. 17] = "{{BlackHeart}} +5% cơ hội để Trái Tim Linh Hồn ngẫu nhiên xuất hiện dưới dạng Trái Tim Đen", -- Black Lipstick
	-- English: "{{BlackHeart}} +10% chance for random Soul Hearts to spawn as Black Hearts"

	[T_ID .. 18] = "{{EternalHeart}} +3% cơ hội cho Trái Tim Vĩnh Cửu", -- Bible Tract
	-- English: "{{EternalHeart}} +3% chance for Eternal Hearts"

	[T_ID .. 19] = "{{GoldenChest}} Rương vàng có thể mở miễn phí", -- Paper Clip
	-- English: "{{GoldenChest}} Gold chests can be opened for free"

	[T_ID .. 20] = "{{BlackHeart}} Sinh ra 1 Trái Tim Đen khi máu của Isaac giảm xuống còn nửa trái tim#{{Warning}} Biến mất sau khi sinh ra 3 Trái Tim Đen", -- Monkey Paw
	-- English: "{{BlackHeart}} Spawns 1 Black Heart when Isaac's health is reduced to half a heart#{{Warning}} Disappears after spawning 3 Black Hearts"

	[T_ID .. 21] = "Ngẫu nhiên nhận hiệu ứng của: #{VAR:TEXT}", -- Mysterious Paper
	-- Full old Desc: "Ngẫu nhiên nhận hiệu ứng của: #{{Collectible327}} The Polaroid#{{Collectible328}} The Negative#{{Trinket48}} A Missing Page#{{Trinket23}} Missing Poster"
	-- English: "Randomly grants the effect of:#{VAR:TEXT}"

	[T_ID .. 22] = "{{Heart}} Giảm tỷ lệ xuất hiện của trái tim xuống 20%#{{BlackHeart}} Tất cả vật phẩm trái tim biến thành Trái Tim Đen#{{Key}} Tăng cơ hội rơi chìa khóa", -- Daemon's Tail
	-- English: "{{Heart}} Decreases spawn rate of hearts to 20%#{{BlackHeart}} All Heart pickups turn into Black Hearts#{{Key}} Increases the drop chance of keys"

	[T_ID .. 23] = "{{Player10}} Hồi sinh thành The Lost khi chết", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death"

	[T_ID .. 24] = "{{Coin}} 20% cơ hội cao hơn để đồng xu xuất hiện từ phân#Nhặt đồng xu khiến Isaac đánh rắm", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#Picking up coins makes Isaac fart"

	[T_ID .. 25] = "Isaac đánh rắm hoặc sinh ra phân mỗi 30 giây", -- Mysterious Candy
	-- English: "Isaac farts or spawns poop every 30 seconds"

	[T_ID .. 26] = "Nước mắt của Isaac di chuyển theo hình góc cạnh", -- Hook Worm
	-- Full old Desc: "↑ {{Range}} +10 Tầm bắn#Nước mắt của Isaac di chuyển theo hình góc cạnh"
	-- English: "Isaac's tears move in angular patterns"

	[T_ID .. 28] = "{{Player4}} 22% cơ hội hồi sinh thành ??? (Blue Baby) khi chết", -- Broken Ankh
	-- English: "{{Player4}} 22% chance to respawn as ??? (Blue Baby) on death"

	[T_ID .. 29] = "Nhận sát thương sinh ra 1 ruồi xanh", -- Fish Head
	-- English: "Taking damage spawns 1 blue fly"

	[T_ID .. 32] = "25% cơ hội nhận hiệu ứng nấm ngẫu nhiên mỗi phòng#Có thể hiển thị phòng đặc biệt trên bản đồ nhỏ", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room#Can reveal special rooms on the minimap"

	[T_ID .. 34] = "{{UnknownHeart}} 10% cơ hội phần thưởng khi dọn phòng là một trái tim ngẫu nhiên#{{Heart}} 33% cơ hội nhận thêm một trái tim từ rương, đá nhuộm màu, và máy bị phá hủy", -- Child's Heart
	-- English: "{{UnknownHeart}} 10% chance for the room clear reward to be a random heart#{{Heart}} 33% chance for a bonus heart from chests, tinted rocks, and destroyed machines"

	[T_ID .. 36] = "{{Key}} 10% cơ hội phần thưởng khi dọn phòng là một chìa khóa#{{Key}} 33% cơ hội nhận thêm một chìa khóa từ rương, đá nhuộm màu, và máy bị phá hủy", -- Rusted Key
	-- English: "{{Key}} 10% chance for the room clear reward to be a key#{{Key}} 33% chance for a bonus key from chests, tinted rocks, and destroyed machines"

	[T_ID .. 38] = "+10% cơ hội trái tim rơi ra là {{SoulHeart}} Trái Tim Linh Hồn, {{BlackHeart}} Trái Tim Đen hoặc {{EmptyBoneHeart}} Trái Tim Xương", -- Mom's Pearl
	-- English: "+10% chance for heart drops to be {{SoulHeart}} Soul Hearts, {{BlackHeart}} Black Hearts or {{EmptyBoneHeart}} Bone Hearts"

	[T_ID .. 40] = "{{Timer}} Nhận sát thương có 20% cơ hội nhận ↑ {{Damage}} +1.8 sát thương cho phòng", -- Red Patch
	-- Full old Desc: "{{Timer}} Nhận sát thương có 20% cơ hội nhận ↑ {{Damage}} +1.8 sát thương cho phòng#{{Luck}} 100% cơ hội ở 8 may mắn"
	-- English: "{{Timer}} Taking damage has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +1.8 damage for the room"

	[T_ID .. 41] = "{{Bomb}} 10% cơ hội phần thưởng khi dọn phòng là một bom#{{Bomb}} 33% cơ hội nhận thêm một bom từ rương, đá nhuộm màu, và máy bị phá hủy#{{Warning}} Loại bỏ {{Trinket53}} Tick", -- Match Stick
	-- English: "{{Bomb}} 10% chance for the room clear reward to be a bomb#{{Bomb}} 33% chance for a bonus bomb from chests, tinted rocks, and destroyed machines#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 42] = "+8% cơ hội phần thưởng khi dọn phòng#33% cơ hội nhận thêm một vật phẩm từ rương, đá nhuộm màu, và máy bị phá hủy", -- Lucky Toe
	-- Full old Desc: "↑ {{Luck}} +1 May mắn#+8% cơ hội phần thưởng khi dọn phòng#33% cơ hội nhận thêm một vật phẩm từ rương, đá nhuộm màu, và máy bị phá hủy"
	-- English: "+8% room clear reward chance#33% chance for an extra pickup from chests, tinted rocks, and destroyed machines"

	[T_ID .. 43] = "Khi bị giảm xuống còn nửa trái tim hoặc ít hơn, Isaac được dịch chuyển đến một phòng ngẫu nhiên", -- Cursed Skull
	-- English: "When damaged down to half a heart or less, Isaac is teleported to a random room"

	[T_ID .. 44] = "{{Pill}} 10% cơ hội phần thưởng khi dọn phòng là một viên thuốc#{{Pill}} 33% cơ hội nhận thêm một viên thuốc từ rương, đá nhuộm màu, và máy bị phá hủy", -- Safety Cap
	-- English: "{{Pill}} 10% chance for the room clear reward to be a pill#{{Pill}} 33% chance for a bonus pill from chests, tinted rocks, and destroyed machines"

	[T_ID .. 45] = "{{Card}} 10% cơ hội phần thưởng khi dọn phòng là một lá bài#{{Card}} 33% cơ hội nhận thêm một lá bài từ rương, đá nhuộm màu, và máy bị phá hủy", -- Ace of Spades
	-- English: "{{Card}} 10% chance for the room clear reward to be a card#{{Card}} 33% chance for a bonus card from chests, tinted rocks, and destroyed machines"

	[T_ID .. 49] = "{{HalfHeart}} Nhặt một đồng xu có 50% cơ hội sinh ra nửa Trái Tim Đỏ", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 50% chance to spawn a half Red Heart"

	[T_ID .. 50] = "{{Bomb}} Nhặt một đồng xu có 50% cơ hội sinh ra một bom", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 50% chance to spawn a bomb"

	[T_ID .. 51] = "{{Key}} Nhặt một đồng xu có 50% cơ hội sinh ra một chìa khóa", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 50% chance to spawn a key"

	[T_ID .. 52] = "{{Coin}} Nhặt một đồng xu có 50% cơ hội thêm một đồng xu vào bộ đếm", -- Counterfeit Penny
	-- English: "{{Coin}} Picking up a coin has a 50% chance to add another coin to the counter"

	[T_ID .. 53] = "{{HealingRed}} Hồi 1 trái tim khi vào {{BossRoom}} Phòng Trùm#-15% máu trùm#{{Warning}} Một khi nhặt lên, không thể bỏ được#Chỉ có thể bỏ bằng {{Trinket41}} Match Stick hoặc nuốt chửng", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick or gulping"

	[T_ID .. 54] = "bạn đồng hành có nước mắt xuyên thấu", -- Isaac's Head
	-- Full old Desc: "bạn đồng hành có nước mắt xuyên thấu#Gây 3.5 sát thương mỗi nước mắt"
	-- English: "Familiar with piercing tears"

	[T_ID .. 55] = "{{EternalHeart}} Vào tầng mới nhận +1 Trái Tim Vĩnh Cửu", -- Maggy's Faith
	-- English: "{{EternalHeart}} Entering a new floor grants +1 Eternal Heart"

	[T_ID .. 56] = "{{DevilRoom}} Giảm giá tất cả giao dịch quỷ xuống còn 1 ô tim#Không giảm giá 3 Trái Tim Linh Hồn", -- Judas' Tongue
	-- English: "{{DevilRoom}} Reduces all devil deal prices to 1 heart container#Doesn't reduce 3 Soul Heart prices"

	[T_ID .. 57] = "bạn đồng hành nảy quanh phòng#Bắn cùng hướng với Isaac", -- ???'s Soul
	-- Full old Desc: "bạn đồng hành nảy quanh phòng#Bắn cùng hướng với Isaac#Gây 3.5 sát thương mỗi nước mắt"
	-- English: "Familiar that bounces around the room#Shoots in the same direction as Isaac"

	[T_ID .. 58] = "{{Timer}} Giết một kẻ địch có 1/15 cơ hội nhận ↑ {{Damage}} +0.5 sát thương cho phòng", -- Samson's Lock
	-- Full old Desc: "{{Timer}} Giết một kẻ địch có 1/15 cơ hội nhận ↑ {{Damage}} +0.5 sát thương cho phòng#{{Luck}} 100% cơ hội ở 10 may mắn"
	-- English: "{{Timer}} Killing an enemy has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +0.5 damage for the room"

	[T_ID .. 61] = "{{RedChest}} Biến tất cả rương thành Rương Đỏ", -- The Left Hand
	-- English: "{{RedChest}} Turns all chests into Red Chests"

	[T_ID .. 62] = "Đá không gian và đá nhuộm màu nhấp nháy mỗi 10 giây", -- Shiny Rock
	-- English: "Crawlspace rocks and tinted rocks blink every 10 seconds"

	[T_ID .. 63] = "{{Bomb}} Biến Bom Quỷ thành vật phẩm bom", -- Safety Scissors
	-- English: "{{Bomb}} Turns Troll Bombs into bomb pickups"

	[T_ID .. 64] = "Cấp hiệu ứng sâu ngẫu nhiên mỗi 3 giây", -- Rainbow Worm
	-- English: "Grants a random worm effect every 3 seconds"

	[T_ID .. 67] = "Nhận sát thương có 50% cơ hội kích hoạt một trong các hiệu ứng sau:#{VAR:TEXT}", -- Cracked Dice
	-- Full old Desc: "Nhận sát thương có 50% cơ hội kích hoạt một trong các hiệu ứng sau:#{{Collectible105}} D6#{{Collectible406}} D8#{{Collectible386}} D12 #{{Collectible166}} D20"
	-- English: "Taking damage has a 50% chance to trigger one of these effects:#{VAR:TEXT}"

	[T_ID .. 68] = "Isaac thu hút vật phẩm và kẻ địch", -- Super Magnet
	-- English: "Isaac attracts pickups and enemies"

	[T_ID .. 69] = "Ngẫu nhiên ngụy trang Isaac#{{Confusion}} Làm kẻ địch hoang mang", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies"

	[T_ID .. 70] = "Thỉnh thoảng sinh ra một nhện xanh trong phòng thù địch", -- Louse
	-- English: "Occasionally spawns a blue spider in hostile rooms"

	[T_ID .. 71] = "Bom của Isaac để lại chất lỏng gây sát thương", -- Bob's Bladder
	-- English: "Isaac's bombs leave damaging creep"

	[T_ID .. 72] = "{{Battery}} 6.66% cơ hội phần thưởng khi dọn phòng là một pin#{{Battery}} +10% cơ hội vật phẩm ngẫu nhiên là một pin#{{Battery}} 5% cơ hội thêm 1 năng lượng cho vật phẩm kích hoạt đang cầm khi dọn phòng", -- Watch Battery
	-- English: "{{Battery}} 6.66% chance for the room clear reward to be a battery#{{Battery}} +10% chance for random pickups to be a battery#{{Battery}} 5% chance to add 1 charge to held active item when clearing a room"

	[T_ID .. 73] = "{{Bomb}} 10% cơ hội bom nổ rơi ra một vật phẩm bom", -- Blasting Cap
	-- English: "{{Bomb}} 10% chance for exploding bombs to drop a bomb pickup"

	[T_ID .. 74] = "{{LadderRoom}} +0.5% cơ hội hiển thị một không gian ẩn khi phá đá", -- Stud Finder
	-- English: "{{LadderRoom}} +0.5% chance to reveal a crawlspace when breaking a rock"

	[T_ID .. 75] = "Cấp hiệu ứng trang sức ngẫu nhiên mỗi phòng", -- Error
	-- English: "Grants a random trinket effect every room"

	[T_ID .. 76] = "↑ 50% cơ hội rương sinh thêm vật phẩm#↓ 50% cơ hội rương chỉ chứa một con ruồi", -- Poker Chip
	-- English: "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly"

	[T_ID .. 77] = "Tăng độ đẩy lùi", -- Blister
	-- English: "Increases knockback"

	[T_ID .. 78] = "Hiệu ứng trạng thái áp dụng lên kẻ địch kéo dài gấp đôi", -- Second Hand
	-- English: "Status effects applied to enemies last twice as long"

	[T_ID .. 79] = "Sử dụng một {{Rune}} rune, {{Card}} lá bài hoặc {{Pill}} viên thuốc có 25% cơ hội sinh ra một bản sao của rune, lá bài hoặc viên thuốc đó", -- Endless Nameless
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill has a 25% chance to spawn a copy of that rune, card or pill"

	[T_ID .. 81] = "Khung bất tử sau khi nhận sát thương kéo dài gấp đôi", -- Blind Rage
	-- English: "Invincibility frames after taking damage last twice as long"

	[T_ID .. 82] = "{{TreasureRoom}} Các Phòng Kho Báu trong tương lai có +15% cơ hội cho Isaac chọn giữa hai vật phẩm", -- Golden Horse Shoe
	-- English: "{{TreasureRoom}} Future Treasure Rooms have +15% chance to let Isaac choose between two items"

	[T_ID .. 83] = "{{Shop}} Cho phép Isaac mở Cửa hàng miễn phí", -- Store Key
	-- English: "{{Shop}} Lets Isaac open Shops for free"

	[T_ID .. 84] = "{{Coin}} 5% thêm đồng xu và ít trái tim hơn từ phần thưởng dọn phòng#Greed và Super Greed không còn xuất hiện trong {{Shop}} Cửa hàng hoặc {{SecretRoom}} Phòng Bí Mật", -- Rib of Greed
	-- English: "{{Coin}} 5% more coins and fewer hearts from room clear rewards#Greed and Super Greed no longer appear in {{Shop}} Shops or {{SecretRoom}} Secret Rooms"

	[T_ID .. 85] = "{{DonationMachine}} Sử dụng Máy Quyên Góp có 33% cơ hội:#{{HealingRed}} Hồi 1 trái tim (40%)#{{Coin}} Cho 1 đồng xu (40%)#{{Luck}} Cấp +1 may mắn (15%)#{{Beggar}} Sinh ra một Người Ăn Xin (5%)", -- Karma
	-- English: "{{DonationMachine}} Using a Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)"

	[T_ID .. 86] = "Phá phân sinh ra 1 ruồi xanh", -- Lil Larva
	-- English: "Destroying poop spawns 1 blue fly"

	[T_ID .. 87] = "{{HealingRed}} Sử dụng chìa khóa hồi nửa trái tim#{{Heart}} Biến nửa trái tim thành trái tim đầy đủ", -- Mom's Locket
	-- English: "{{HealingRed}} Using a key heals half a heart#{{Heart}} Turns half hearts into full hearts"

	[T_ID .. 88] = "Ngăn vật phẩm kích hoạt xuất hiện", -- NO!
	-- English: "Prevents active items from spawning"

	[T_ID .. 89] = "bạn đồng hành ở gần Isaac hơn", -- Child Leash
	-- English: "Familiars stay closer to Isaac"

	[T_ID .. 90] = "Phân nổ gây 100 sát thương khi bị phá hủy", -- Brown Cap
	-- English: "Poop explodes for 100 damage when destroyed"

	[T_ID .. 91] = "33% cơ hội sinh ra Phân Đen#{{BlackHeart}} Phá Phân Đen có 5% cơ hội sinh ra một Trái Tim Đen", -- Meconium
	-- English: "33% chance for Black Poops to spawn#{{BlackHeart}} Destroying Black Poop has a 5% chance to spawn a Black Heart"

	[T_ID .. 92] = "↑ x1.33 Hệ số chỉ số cho các chỉ số trên 1 {{Speed}} tốc độ, 3.5 {{Damage}} sát thương, 23.75 {{Range}} tầm bắn, 1 {{Shotspeed}} Tốc độ đạn", -- Cracked Crown
	-- Full old Desc: "↑ {{Tears}} x0.8 Độ trễ nước mắt#↑ x1.33 Hệ số chỉ số cho các chỉ số trên 1 {{Speed}} tốc độ, 3.5 {{Damage}} sát thương, 23.75 {{Range}} tầm bắn, 1 {{Shotspeed}} Tốc độ đạn"
	-- English: "↑ x1.33 Stat multiplier for the stats that are above 1 {{Speed}} speed, 3.5 {{Damage}} damage, 23.75 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 93] = "15% cơ hội mỗi phòng để tất cả kẻ địch ruồi trở nên thân thiện", -- Used Diaper
	-- English: "15% chance per room for all fly enemies to become friendly"

	[T_ID .. 94] = "Gấp đôi số lượng ruồi xanh / nhện xanh sinh ra", -- Fish Tail
	-- English: "Doubles all blue fly / spider spawns"

	[T_ID .. 95] = "Răng gây sát thương gấp 2 lần sát thương của Isaac", -- Black Tooth
	-- Full old Desc: "{{Poison}} 3% cơ hội bắn nước mắt răng độc#Răng gây sát thương gấp 2 lần sát thương của Isaac"
	-- English: "{{Poison}} {VAR:LUCKCHANCE}% chance to shoot poison tooth tears#The tooth deals 2x Isaac's damage"

	[T_ID .. 96] = "Nước mắt của Isaac di chuyển nhanh theo hình xoắn ốc", -- Ouroboros Worm
	-- Full old Desc: "↑ {{Range}} +4 Tầm bắn#↑ +2 Tốc độ rơi nước mắt#Nước mắt xuyên quang phổ#Cơ hội bắn nước mắt tự dẫn#{{Luck}} 100% cơ hội ở 9 may mắn#Nước mắt của Isaac di chuyển nhanh theo hình xoắn ốc"
	-- English: "{VAR:LUCKCHANCE}% chance for homing tears#Isaac's tears move quickly in a spiral pattern"

	[T_ID .. 97] = "Giới hạn ở 2 bạn đồng hành", -- Tonsil
	-- Full old Desc: "Nhận sát thương 12-20 lần sinh ra một bạn đồng hành chặn đạn#Giới hạn ở 2 bạn đồng hành"
	-- English: "Taking damage {VAR:RANGE} times spawns a projectile blocking familiar#Disappears after spawning 2 familiars"

	[T_ID .. 98] = "10% cơ hội bắn nước mắt dính tự dẫn#{{Damage}} Mụn nhọt gây sát thương bằng sát thương của Isaac một lần mỗi giây#Mụn nhọt dính trong 60 giây", -- Nose Goblin
	-- Full old Desc: "10% cơ hội bắn nước mắt dính tự dẫn#{{Damage}} Mụn nhọt gây sát thương bằng sát thương của Isaac một lần mỗi giây#Mụn nhọt dính trong 60 giây"
	-- English: "10% chance to shoot a sticky tear#50% chance for it to be homing#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for {VAR:1} seconds"

	[T_ID .. 99] = "10% cơ hội bắn nước mắt nảy", -- Super Ball
	-- English: "10% chance to shoot bouncing tears"

	[T_ID .. 100] = "Giữ một vật phẩm kích hoạt đầy năng lượng cấp:#{VAR:EFFECTLIST}", -- Vibrant Bulb
	-- Full old Desc: "Giữ một vật phẩm kích hoạt đầy năng lượng cấp:#↑ {{Speed}} +0.25 Tốc độ#↑ {{Tears}} +0.2 Nước mắt#↑ {{Damage}} +0.5 Sát thương#↑ {{Range}} +0.75 Tầm bắn#↑ {{Shotspeed}} +0.1 Tốc độ đạn#↑ {{Luck}} +1 May mắn"
	-- English: "Holding a fully charged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 101] = "Giữ một vật phẩm kích hoạt hết năng lượng cấp:#{VAR:EFFECTLIST}", -- Dim Bulb
	-- Full old Desc: "Giữ một vật phẩm kích hoạt hết năng lượng cấp:#↑ {{Speed}} +0.5 Tốc độ#↑ {{Tears}} +0.4 Nước mắt#↑ {{Damage}} +1.5 Sát thương#↑ {{Range}} +1.5 Tầm bắn#↑ {{Shotspeed}} +0.3 Tốc độ đạn#↑ {{Luck}} +2 May mắn"
	-- English: "Holding a completely uncharged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 102] = "{{SecretRoom}} +1 Phòng Bí Mật thêm mỗi tầng khi cầm", -- Fragmented Card
	-- English: "{{SecretRoom}} +1 extra Secret Room per floor while held"

	[T_ID .. 103] = "Biến vật phẩm đơn thành vật phẩm đôi khi số {{Coin}} đồng xu, {{Bomb}} bom và {{Key}} chìa khóa của Isaac bằng nhau", -- Equality!
	-- English: "Turns single pickups into double pickups when Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal"

	[T_ID .. 106] = "Tăng bán kính của chất lỏng thân thiện", -- Lost Cork
	-- English: "Increases the radius of friendly creep"

	[T_ID .. 107] = "Nhận sát thương làm cạn Trái Tim Đỏ trước Trái Tim Linh Hồn/Đen#Sát thương trái tim đỏ này không giảm cơ hội vào Phòng Quỷ/Thiên Thần", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#This red heart damage does not reduce Devil/Angel Room chances"

	[T_ID .. 108] = "Bị trúng 1-9 vụ nổ phá hủy trang sức và rơi ra một {{UnknownHeart}} trái tim, {{Coin}} đồng xu, {{Key}} chìa khóa và {{Trinket}} trang sức ngẫu nhiên#Không cần nhận sát thương", -- Walnut
	-- English: "Getting hit by 1-9 explosions destroys the trinket and drops a random {{UnknownHeart}} heart, {{Coin}} coin, {{Key}} key and {{Trinket}} trinket#Taking damage isn't required"

	[T_ID .. 109] = "bạn đồng hành bị kẹt ở một chỗ và không thể di chuyển", -- Duct Tape
	-- English: "Familiars are stuck in one spot and cannot move"

	[T_ID .. 110] = "{{Shop}} Cửa hàng xuất hiện trong Tử Cung", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb"

	[T_ID .. 111] = "{{TreasureRoom}} Phòng Kho Báu xuất hiện trong Tử Cung", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb"

	[T_ID .. 112] = "{{RestockMachine}} Hộp tái cung cấp luôn xuất hiện trong {{TreasureRoom}} Phòng Kho Báu", -- Pay To Win
	-- English: "{{RestockMachine}} Restock boxes always spawn in {{TreasureRoom}} Treasure Rooms"

	[T_ID .. 113] = "Vào phòng thù địch sinh ra một ruồi tấn công nổ#Ruồi gây sát thương gấp 2 lần sát thương của Isaac + sát thương nổ", -- Locust of War
	-- English: "Entering a hostile room spawns an exploding attack fly #The fly deals 2x Isaac's damage + explosion damage"

	[T_ID .. 114] = "{{Poison}} Vào phòng thù địch sinh ra một ruồi tấn công độc#Ruồi gây sát thương gấp 2 lần sát thương của Isaac", -- Locust of Pestilence
	-- English: "{{Poison}} Entering a hostile room spawns a poison attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 115] = "{{Slow}} Vào phòng thù địch sinh ra một ruồi tấn công làm chậm#Ruồi gây sát thương gấp 2 lần sát thương của Isaac", -- Locust of Famine
	-- English: "{{Slow}} Entering a hostile room spawns a slowing attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 116] = "Vào phòng thù địch sinh ra một ruồi tấn công#Ruồi gây sát thương gấp 4 lần sát thương của Isaac", -- Locust of Death
	-- English: "Entering a hostile room spawns an attack fly#The fly deals 4x Isaac's damage"

	[T_ID .. 117] = "Vào phòng thù địch sinh ra 1-4 ruồi tấn công#Mỗi ruồi gây sát thương gấp 2 lần sát thương của Isaac", -- Locust of Conquest
	-- English: "Entering a hostile room spawns 1-4 attack flies#Each fly deals 2x Isaac's damage"

	[T_ID .. 118] = "{{Timer}} Giết một kẻ địch có 5% cơ hội cấp khả năng bay cho phòng", -- Bat Wing
	-- English: "{{Timer}} Killing an enemy has a 5% chance to grant flight for the room"

	[T_ID .. 119] = "{{HealingRed}} Vào tầng mới hồi nửa trái tim", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half a heart"

	[T_ID .. 120] = "{{Battery}} Vào phòng trùm chưa dọn sạch nạp đầy năng lượng cho vật phẩm kích hoạt", -- Hairpin
	-- English: "{{Battery}} Entering an uncleared boss room fully recharges active items"

	[T_ID .. 121] = "{{Collectible313}} Vô hiệu hóa sát thương đầu tiên nhận được trên tầng", -- Wooden Cross
	-- English: "{{Collectible313}} Grants a Holy shield that prevents damage once per floor"

	[T_ID .. 122] = "Sử dụng vật phẩm kích hoạt làm rơi nó xuống bệ trên sàn#Nhận sát thương có 2% cơ hội làm rơi một trong các vật phẩm thụ động của Isaac", -- Butter!
	-- English: "Using an active item drops it on a pedestal on the ground#Taking damage has a 2% chance to drop one of Isaac's passive items"

	[T_ID .. 123] = "Trùm thiên thần rơi vật phẩm thiên thần thay vì Mảnh Chìa Khóa", -- Filigree Feather
	-- English: "Angel bosses drop angel items instead of Key Pieces"

	[T_ID .. 124] = "Cửa cuối cùng sử dụng vẫn mở", -- Door Stop
	-- English: "The last door used stays open"

	[T_ID .. 125] = "Kết nối tất cả bạn đồng hành bằng tia điện#Tia gây 6 sát thương", -- Extension Cord
	-- English: "Connects all familiars with beams of electricity#The beams deal 6 damage"

	[T_ID .. 126] = "Nhặt một đồng xu sinh ra một ruồi xanh", -- Rotten Penny
	-- English: "Picking up a coin spawns a blue fly"

	[T_ID .. 127] = "Cấp cho tất cả bạn đồng hành khả năng bắn tự dẫn", -- Baby-Bender
	-- English: "Grants all familiars homing shots"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 1] = "Dịch chuyển Isaac đến phòng đầu tiên của tầng", -- 0 - The Fool
	-- English: "Teleports Isaac to the first room of the floor"

	[Card_ID .. 3] = "Chân của Mom giẫm lên một kẻ địch#Chân của Mom giẫm lên Isaac nếu không có kẻ địch", -- II - The High Priestess
	-- English: "Mom's Foot stomps on an enemy#Mom's Foot stomps Isaac if there are no enemies"

	[Card_ID .. 5] = "{{BossRoom}} Dịch chuyển Isaac đến Phòng Trùm", -- IV - The Emperor
	-- English: "{{BossRoom}} Teleports Isaac to the Boss Room"

	[Card_ID .. 9] = "Sinh ra một {{UnknownHeart}} trái tim, {{Coin}} đồng xu, {{Bomb}} bom và {{Key}} chìa khóa ngẫu nhiên", -- VIII - Justice
	-- English: "Spawns a random {{UnknownHeart}} heart, {{Coin}} coin, {{Bomb}} bomb and {{Key}} key"

	[Card_ID .. 10] = "{{Shop}} Dịch chuyển Isaac đến Cửa hàng", -- IX - The Hermit
	-- English: "{{Shop}} Teleports Isaac to the Shop"

	[Card_ID .. 11] = "Sinh ra một {{Slotmachine}} Máy Đánh Bạc hoặc {{FortuneTeller}} Máy Bói Toán", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 25% chance for it to be a Fortune Telling Machine"

	[Card_ID .. 15] = "{{DonationMachine}} Sinh ra một Máy Hiến Máu", -- XIV - Temperance
	-- English: "{{DonationMachine}} Spawns a Blood Donation Machine"

	[Card_ID .. 17] = "Sinh ra 6 Bom Quỷ", -- XVI - The Tower
	-- English: "Spawns 6 Troll Bombs"

	[Card_ID .. 18] = "{{TreasureRoom}} Dịch chuyển Isaac đến Phòng Kho Báu", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room"

	[Card_ID .. 19] = "{{SecretRoom}} Dịch chuyển Isaac đến Phòng Bí Mật", -- XVIII - The Moon
	-- English: "{{SecretRoom}} Teleports Isaac to the Secret Room"

	[Card_ID .. 21] = "Sinh ra một Người Ăn Xin hoặc Người Ăn Xin Quỷ#2% cơ hội sinh ra một Người Ăn Xin đặc biệt", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#2% chance for it to be a Key Master or Bomb Bum"

	[Card_ID .. 23] = "{{Bomb}} Gấp đôi số bom của Isaac", -- 2 of Clubs
	-- English: "{{Bomb}} Doubles Isaac's number of bombs"

	[Card_ID .. 24] = "{{Coin}} Gấp đôi số đồng xu của Isaac", -- 2 of Diamonds
	-- English: "{{Coin}} Doubles Isaac's number of coins"

	[Card_ID .. 25] = "{{Key}} Gấp đôi số chìa khóa của Isaac", -- 2 of Spades
	-- English: "{{Key}} Doubles Isaac's number of keys"

	[Card_ID .. 26] = "{{HealingRed}} Gấp đôi số Trái Tim Đỏ của Isaac {{ColorSilver}}(không phải ô tim){{CR}}", -- 2 of Hearts
	-- English: "{{HealingRed}} Doubles Isaac's number of Red Hearts {{ColorSilver}}(not containers){{CR}}"

	[Card_ID .. 27] = "{{Bomb}} Biến tất cả vật phẩm thành bom ngẫu nhiên", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups into random bombs"

	[Card_ID .. 28] = "{{Coin}} Biến tất cả vật phẩm thành đồng xu ngẫu nhiên", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups into random coins"

	[Card_ID .. 29] = "{{Key}} Biến tất cả vật phẩm thành chìa khóa ngẫu nhiên", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups into random keys"

	[Card_ID .. 30] = "{{UnknownHeart}} Biến tất cả vật phẩm thành trái tim ngẫu nhiên", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups into random hearts"

	[Card_ID .. 31] = "{{AngelDevilChance}} Dịch chuyển Isaac đến Phòng Quỷ hoặc Phòng Thiên Thần", -- Joker
	-- English: "{{AngelDevilChance}} Teleports Isaac to the Devil or Angel Room"

	[Card_ID .. 32] = "Phá hủy tất cả đá trong phòng", -- Hagalaz
	-- English: "Destroy all rocks in the room"

	[Card_ID .. 33] = "Nhân đôi tất cả vật phẩm trong phòng", -- Jera
	-- English: "Duplicates all pickups in room"

	[Card_ID .. 34] = "Sinh ra một cửa sập xuống tầng tiếp theo#{{LadderRoom}} 8% cơ hội cho cửa sập không gian ẩn", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} 8% chance for a crawlspace trapdoor"

	[Card_ID .. 35] = "{{CurseCursed}} Xóa tất cả lời nguyền cho tầng", -- Dagaz
	-- Full old Desc: "{{SoulHeart}} +1 Trái Tim Linh Hồn#{{CurseCursed}} Xóa tất cả lời nguyền cho tầng"
	-- English: "{{CurseCursed}} Removes all curses for the floor"

	[Card_ID .. 37] = "Đổi mới tất cả vật phẩm trên bệ trong phòng", -- Perthro
	-- English: "Rerolls all pedestal items in the room"

	[Card_ID .. 40] = "Kích hoạt hiệu ứng rune ngẫu nhiên#25% cơ hội nhân đôi chính nó khi sử dụng", -- Blank Rune
	-- English: "Triggers a random rune effect#25% chance to duplicate itself when used"

	[Card_ID .. 41] = "Biến tất cả vật phẩm trên bệ trong phòng thành tăng chỉ số ngẫu nhiên#Biến tất cả vật phẩm trong phòng thành ruồi xanh", -- Black Rune
	-- Full old Desc: "Gây 40 sát thương lên tất cả kẻ địch#Biến tất cả vật phẩm trên bệ trong phòng thành tăng chỉ số ngẫu nhiên#Biến tất cả vật phẩm trong phòng thành ruồi xanh"
	-- English: "Converts all pedestal items in the room into random stat ups#Converts all pickups in the room into blue flies"

	[Card_ID .. 42] = "Sử dụng lá bài ném nó theo hướng Isaac đang di chuyển#Giết chết BẤT KỲ kẻ địch nào nó chạm vào ngay lập tức (trừ Delirium)", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium)"

	[Card_ID .. 43] = "Làm tất cả vật phẩm và vật phẩm nhặt được trong {{Shop}} Cửa hàng hoặc {{DevilRoom}} Phòng Quỷ miễn phí", -- Credit Card
	-- English: "Makes all items and pickups in a {{Shop}} Shop or {{DevilRoom}} Devil Room free"

	[Card_ID .. 44] = "Hiển thị các mẹo \"hữu ích\" khi sử dụng", -- Rules Card
	-- English: "Displays "helpful" tips on use"

	[Card_ID .. 45] = "Lấp đầy toàn bộ phòng bằng phân", -- A Card Against Humanity
	-- English: "Fills the whole room with poop"

	[Card_ID .. 46] = "Giết chết Isaac ngay lập tức và sinh ra 10 vật phẩm hoặc vật phẩm nhặt được trên sàn#Vật phẩm sinh ra sẽ sử dụng kho vật phẩm của phòng hiện tại", -- Suicide King
	-- English: "Instantly kills Isaac and spawns 10 pickups or items on the floor#Spawned items will use the current room's item pool"

	[Card_ID .. 47] = "Mở tất cả cửa trong phòng", -- Get Out Of Jail Free Card
	-- English: "Open all doors in the room"

	[Card_ID .. 48] = "Sử dụng vật phẩm kích hoạt của Isaac miễn phí", -- ? Card
	-- English: "Uses Isaac's active item for free"

	[Card_ID .. 49] = "Đổi mới tất cả bệ vật phẩm và vật phẩm nhặt được trong phòng", -- Dice Shard
	-- English: "Rerolls all item pedestals and pickups in the room"

	[Card_ID .. 50] = "Hai Tay của Mom hạ xuống và bắt lấy mỗi kẻ địch", -- Emergency Contact
	-- English: "Two of Mom's Hands come down and grab an enemy each"

	[Card_ID .. 51] = "{{HolyMantle}} Khiên Holy Mantle cho phòng (ngăn sát thương một lần)#25% cơ hội sinh ra một Lá Bài Thánh khác", -- Holy Card
	-- English: "{{HolyMantle}} Holy Mantle shield for the room (prevents damage once)#25% chance to spawn another Holy Card"

	[Card_ID .. 52] = "{VAR:ROOMEFFECT}#Cho phép Isaac phá đá bằng cách đi vào chúng", -- Huge Growth
	-- Full old Desc: "{{Timer}} Nhận cho phòng:#↑ {{Damage}} +7 Sát thương#↑ {{Range}} +30 Tầm bắn#Tăng kích thước#Cho phép Isaac phá đá bằng cách đi vào chúng"
	-- English: "{VAR:ROOMEFFECT}#Allows Isaac to destroy rocks by walking into them"

	[Card_ID .. 54] = "{VAR:ROOMEFFECT}#{{Slow}} Làm chậm kẻ địch", -- Era Walk
	-- Full old Desc: "{{Timer}} Nhận cho phòng:#↑ {{Speed}} +0.5 Tốc độ#↓ {{Shotspeed}} -1 Tốc độ đạn#{{Slow}} Làm chậm kẻ địch"
	-- English: "{VAR:ROOMEFFECT}#{{Slow}} Slow down enemies"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 1] = "{{Poison}} Isaac đánh rắm và làm độc kẻ địch gần đó", -- Bad Gas
	-- English: "{{Poison}} Isaac farts and poisons nearby enemies"

	[Pill_ID .. 2] = "{{Warning}} Gây 1 ô tim sát thương lên Isaac#Trở thành viên thuốc Hồi Đầy Máu khi còn 1 trái tim hoặc ít hơn", -- Bad Trip
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#Becomes a Full Health pill at 1 heart or less"

	[Pill_ID .. 4] = "Hoán đổi số {{Bomb}} bom và {{Key}} chìa khóa của Isaac", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys"

	[Pill_ID .. 5] = "Isaac nhanh chóng sinh ra 5 quả bom đã thắp sáng", -- Explosive Diarrhea
	-- English: "Isaac quickly spawns 5 lit bombs"

	[Pill_ID .. 7] = "Trở thành viên thuốc Tăng Máu khi còn 0 hoặc 1 ô tim", -- Health Down
	-- Full old Desc: "↓ {{EmptyHeart}} -1 Máu#Trở thành viên thuốc Tăng Máu khi còn 0 hoặc 1 ô tim"
	-- English: "Becomes a Health Up pill at 0 or 1 heart containers"

	[Pill_ID .. 10] = "Ăn 3 viên cấp biến hình Người Lớn:#{VAR:EFFECTLIST}", -- Puberty
	-- Full old Desc: "Không có hiệu ứng#Ăn 3 viên cấp biến hình Người Lớn:#↑ {{Heart}} +1 Máu"
	-- English: "Eating 3 grants the Adult transformation:#{VAR:EFFECTLIST}"

	[Pill_ID .. 20] = "Dịch chuyển Isaac đến một phòng ngẫu nhiên#{{ErrorRoom}} Cơ hội nhỏ dịch chuyển Isaac đến phòng I AM ERROR", -- Telepills
	-- English: "Teleports Isaac to a random room#{{ErrorRoom}} Small chance to teleport Isaac to the I AM ERROR room"

	[Pill_ID .. 21] = "{{Battery}} Nạp đầy năng lượng cho vật phẩm kích hoạt", -- 48 Hour Energy!
	-- Full old Desc: "{{Battery}} Nạp đầy năng lượng cho vật phẩm kích hoạt#{{Battery}} Sinh ra 1-2 pin"
	-- English: "{{Battery}} Fully recharges the active item"

	[Pill_ID .. 22] = "{{Warning}} Rút hết chỉ còn một ô tim", -- Hematemesis
	-- Full old Desc: "{{Warning}} Rút hết chỉ còn một ô tim#{{Heart}} Sinh ra 1-4 Trái Tim Đỏ"
	-- English: "{{Warning}} Drains all but one heart container"

	[Pill_ID .. 23] = "Ngăn Isaac di chuyển và bắn trong 2 giây", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 2 seconds"

	[Pill_ID .. 24] = "{{SecretRoom}} Mở tất cả lối vào phòng bí mật trên tầng", -- I can see forever!
	-- English: "{{SecretRoom}} Opens all secret room entrances on the floor"

	[Pill_ID .. 25] = "{{Charm}} Mê hoặc tất cả kẻ địch trong phòng", -- Pheromones
	-- English: "{{Charm}} Charms all enemies in the room"

	[Pill_ID .. 26] = "{{CurseLost}} Ẩn bản đồ cho tầng", -- Amnesia
	-- English: "{{CurseLost}} Hides the map for the floor"

	[Pill_ID .. 27] = "Sinh ra một vũng nước lớn trên sàn gây sát thương cho kẻ địch", -- Lemon Party
	-- English: "Spawns a large puddle on the ground which damages enemies"

	[Pill_ID .. 28] = "{{Timer}} Isaac bắn chéo trong 30 giây", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 30 seconds"

	[Pill_ID .. 29] = "{{Timer}} Giảm tất cả sát thương nhận được xuống còn nửa trái tim cho phòng", -- Percs!
	-- English: "{{Timer}} Reduces all damage taken to half a heart for the room"

	[Pill_ID .. 30] = "{{Timer}} Tăng tất cả sát thương nhận được lên một trái tim đầy đủ cho phòng", -- Addicted!
	-- English: "{{Timer}} Increases all damage taken to a full heart for the room"

	[Pill_ID .. 31] = "Isaac sinh ra phân phía sau trong 2 giây", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 2 seconds"

	[Pill_ID .. 32] = "{{CurseMaze}} Hiệu ứng Lời Nguyền Mê Cung cho tầng", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. 33] = "Không ảnh hưởng đến hitbox của anh ấy", -- One makes you larger
	-- Full old Desc: "Tăng kích thước của Isaac#Không ảnh hưởng đến hitbox của anh ấy"
	-- English: "Doesn't affect his hitbox"

	[Pill_ID .. 34] = "Cũng giảm hitbox của anh ấy", -- One makes you small
	-- Full old Desc: "Giảm kích thước của Isaac#Cũng giảm hitbox của anh ấy"
	-- English: "Also decreases his hitbox"

	[Pill_ID .. 35] = "Sinh ra 1 nhện xanh cho mỗi đống phân trong phòng", -- Infested!
	-- English: "Spawns 1 blue spider for each poop in the room"

	[Pill_ID .. 36] = "Sinh ra 1 nhện xanh cho mỗi kẻ địch trong phòng#Sinh ra 1-3 nhện xanh nếu không có kẻ địch trong phòng", -- Infested?
	-- English: "Spawn 1 blue spider for each enemy in the room#Spawns 1-3 blue spiders if there are no enemies in the room"

	[Pill_ID .. 38] = "{{Timer}} Làm màn hình nhòe 3 lần trong 30 giây", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen 3 times over 30 second"

	[Pill_ID .. 40] = "Sinh ra một vũng chất lỏng trơn trượt", -- X-Lax
	-- English: "Spawns a pool of slippery creep"

	[Pill_ID .. 41] = "{{Slow}} Sinh ra một vũng chất lỏng làm chậm", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of slowing creep"

	[Pill_ID .. 42] = "{{Slow}} Làm chậm tất cả kẻ địch trong phòng", -- I'm Drowsy...
	-- English: "{{Slow}} Slows all enemies in the room"

	[Pill_ID .. 43] = "Tăng tốc tất cả kẻ địch trong phòng", -- I'm Excited!!
	-- English: "Speeds up all enemies in the room"

	[Pill_ID .. 44] = "{{Trinket}} Tiêu thụ trang sức của Isaac và cấp hiệu ứng của nó vĩnh viễn", -- Gulp!
	-- English: "{{Trinket}} Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. 45] = "{{Collectible149}} Bắn một nước mắt Ipecac", -- Horf!
	-- English: "{{Collectible149}} Shoots one Ipecac tear"

	[Pill_ID .. 47] = "Sinh ra viên thuốc cuối cùng sử dụng trước Vurp!", -- Vurp!
	-- English: "Spawns the last pill used before Vurp!"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)
