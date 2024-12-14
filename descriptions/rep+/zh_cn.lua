---------------------------------------
-----  Basic Chinese descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "zh_cn"

---------- Collectibles ----------

local collectibles = {
	-- Change: added "Creep persists until you exit the room"
	[56] = {"56", "烦事柠檬", "留下一摊水迹#水迹每秒造成24点伤害#水迹在离开房间前持续存在"}, -- Lemon Mishap
	-- Change: added "Persists between rooms if player is at 1/2 hearts"
	[117] = {"117", "死鸟", "受伤时, 生成1只攻击敌人的鸟#鸟每秒造成4.3点接触伤害#角色只有半心时, 切换房间也持续存在"}, -- Dead Bird
	-- Change: Complete rewrite
	[351] = {"351", "超级豆子", "使房间中所有敌人石化并造成100点伤害#{{Poison}} 造成5点伤害并使附近敌人中毒#向角色移动方向发出岩石波#岩石波可打开隐藏房和粉碎岩石"}, -- Mega Bean
	-- Change: "10%" to "20%"
	[398] = {"398", "神体蘑菇", "20%几率发射使敌人缩小的泪弹#缩小的敌人可以被踩死"}, -- God's Flesh
	-- Change: Complete rewrite
	[436] = {"436", "牛奶！", "阻挡弹幕#{{Tears}} 受击10次后, 破裂并在本层获得射速提升"}, -- Milk!
	-- Change: Complete rewrite
	[447] = {"447", "流连豆", "每连续发射4秒时, 生成一朵便便云#10秒内尺寸不断变大#尺寸越大伤害越低#可通过射击便便云使其移动"}, -- Linger Bean
	-- Change: added " and fires radial bursts of tears"
	[470] = {"470", "死寂宝宝", "在房间中四处漂浮#每秒造成30点接触伤害#角色发射时停止移动#停下来时可阻挡弹幕并散射泪弹"}, -- Hushy
	-- Change: added "Turns item pedestals into glitched items"
	[481] = {"481", "数据破解", "↑ 随机属性提升#↓ 随机属性降低#{{Timer}} 当前房间中随机泪弹效果#将底座道具变为错误道具#{{Blank}} 损坏当前房间中的所有贴图和音乐"}, -- Dataminer
	-- Change: Complete rewrite
	[510] = {"510", "精神错乱", "生成1个友好的精神错乱版的头目#切换房间持续存在#{{Warning}} 一次只能激活1个头目#道具充能取决于上次生成的头目品质"}, -- Delirious
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = {"560", "好疼", "{{Timer}} 受伤时, 在当前房间中获得:#↑ {{Tears}} 首次受伤射速+1.2#↑ {{Tears}} 后续受伤射速+0.4#在角色周围释放10颗泪弹#泪弹击中时留下水迹"}, -- It Hurts
	-- Change: Heals 2 hearts instead of 1/2
	[594] = {"594", "木星", "↑ {{EmptyHeart}} +2空心之容器#↓ {{Speed}} 移速-0.3#{{HealingRed}} 治疗2红心#{{Speed}} 静止不动时, 移速逐渐升高至+0.5#{{Poison}} 移动时释放毒气#{{Poison}} 免疫中毒"}, -- Jupiter
	-- Change: Complete rewrite
	[632] = {"632", "邪眼护符", "↑ {{Luck}} 幸运+2#免疫{{Burning}}火焰伤害, {{Confusion}}混乱, {{Fear}}恐惧, {{Slow}}蜘蛛网, {{Poison}}毒气效果#获得1秒水迹免疫"}, -- Evil Charm
	-- Change: Complete rewrite
	[681] = {"681", "黑洞宝宝", "双击发射键可发射传送门#发射后造成接触伤害#消耗经过的掉落物#消耗掉落物会提升其尺寸, 伤害并生成1只蓝苍蝇#消耗2-3掉落物生成至特殊房间的传送门, 跟班在本层后续中消失#房间中的内容本局持续存在"}, -- Lil Portal
	-- Change: Added info about the damage based on item quality
	[706] = {"706", "无底坑", "消耗房间中所有底座道具并对应生成蝗虫跟班#一些道具会生成特殊蝗虫#{{Damage}} 蝗虫造成1x角色伤害, 并根据道具品质修正:#{{Quality0}} - 0.5x#{{Quality1}} - 0.75x#{{Quality2}} - 1.0x#{{Quality3}} - 1.5x#{{Quality4}} - 2.0x"}, -- Abyss
}
EID:updateDescriptionsViaTable(collectibles, EID.descriptions[languageCode].collectibles)

---------- Trinkets ----------

local trinkets = {
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = {"53", "血虱", "{{HealingRed}} 进入{{BossRoom}}头目房时, 治疗1红心#头目血量-15%#{{Warning}} 捡起后, 无法被其他饰品替换#只能被{{Trinket41}}火柴棍, {{Trinket135}}打火机移除或吞下"}, -- Tick
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = {"97", "扁桃体", "受伤6-12次后, 获得阻挡弹幕的跟班#最多+2个跟班"}, -- Tonsil
	-- Change: added "Bombs deal 15% more damage"
	[133] = {"133", "短引线", "角色的炸弹爆炸更快#炸弹造成的伤害提高15%"}, -- Short Fuse
	-- Change: "2%" to "5%"
	[104] = {"104", "许愿骨", "受伤时, 5%几率被摧毁并生成1底座道具"}, -- Wish Bone
	-- Change: "2%" to "5%"
	[105] = {"105", "午餐袋", "{{Collectible22}} 受伤时, 5%几率被摧毁并生成午餐"}, -- Bag Lunch
}
EID:updateDescriptionsViaTable(trinkets, EID.descriptions[languageCode].trinkets)

-- Table that contains commonly used descriptions for abyss synergies
local abyssPresets = {
	noEffect = "无特殊效果",
	normalTwo = "2只普通蝗虫",
	smallFour = "4只小型蝗虫",
	blackFear = "黑色蝗虫, 使敌人恐惧",
	blueConfuse = "蓝色蝗虫, 击退敌人并使其混乱",
	blueFreeze = "蓝色蝗虫, 冻结敌人",
	cyanDestroyProjectiles = "青色蝗虫, 阻挡敌人弹幕",
	cyanElectricity = "淡蓝色蝗虫, 带有电弧, 每个电弧造成0.1点伤害",
	grayConfuse = "灰色蝗虫, 使敌人混乱",
	grayPetrify = "灰色蝗虫, 使敌人石化",
	grayMagnetize = "灰色蝗虫, 使敌人磁化",
	graySlow = "淡灰色蝗虫, 使敌人减速",
	grayBones = "淡灰色蝗虫, 击中敌人时产生1-3个骨片",
	greenPoison = "绿色蝗虫, 使敌人中毒",
	pinkMimic = "粉色蝗虫, 触发随机特效",
	pinkCharm = "粉色蝗虫, 魅惑敌人",
	purpleHoming = "紫色跟踪蝗虫",
	orangeBurn = "橙色蝗虫, 使敌人燃烧",
	redBleed = "暗红色蝗虫, 使敌人流血",
	redLarge = "较大的红色蝗虫",
	whiteBeam = "白色蝗虫, 生成光束造成3x角色伤害",
	whiteGodhead = "白色蝗虫, 带有伤害光环, 造成每秒60点伤害",
	yellowExplode = "黄色蝗虫, 接触敌人时有几率爆炸",
	yellowPoisonExplode = "黄色蝗虫, 使敌人中毒, 接触敌人时有几率爆炸",
	yellowMimicExplode = "黄色蝗虫, 触发随机特效, 接触敌人时有几率爆炸",
}

local abyssSynergies = {
	[4] = abyssPresets.noEffect, -- Cricket's Head
	[6] = "较快的红色蝗虫, 造成伤害更快", -- Number One
	[7] = abyssPresets.noEffect, -- Blood of the Martyr
	[10] = "2只青色蝗虫, 阻挡敌人弹幕", -- Halo of Flies
	[12] = abyssPresets.redLarge, -- Magic Mushroom
	[19] = abyssPresets.yellowExplode, -- Boom!
	[37] = abyssPresets.yellowExplode, -- Mr. Boom
	[39] = abyssPresets.grayPetrify, -- Mom's Bra
	[40] = abyssPresets.yellowExplode, -- Kamikaze!
	[47] = abyssPresets.yellowExplode, -- Doctor's Remote
	[52] = abyssPresets.yellowExplode, -- Dr. Fetus
	[41] = abyssPresets.blackFear, -- Mom's Pad
	[53] = abyssPresets.grayMagnetize, -- Magneto
	[58] = abyssPresets.cyanDestroyProjectiles, -- Book of Shadows
	[62] = abyssPresets.redBleed, -- Charm of the Vampire
	[63] = abyssPresets.cyanElectricity, -- The Battery
	[65] = abyssPresets.yellowExplode, -- Anarchist Cookbook
	[66] = abyssPresets.graySlow, -- The Hourglass
	[68] = abyssPresets.cyanElectricity, -- Technology
	[69] = abyssPresets.redLarge, -- Chocolate Milk
	[71] = "较小的红色蝗虫", -- Mini Mush
	[73] = abyssPresets.cyanDestroyProjectiles, -- Cube of Meat
	[77] = abyssPresets.cyanDestroyProjectiles, -- My Little Unicorn
	[89] = abyssPresets.graySlow, -- Spider Bite
	[95] = abyssPresets.cyanElectricity, -- Robo Baby
	[99] = abyssPresets.graySlow, -- Little Gish
	[100] = abyssPresets.purpleHoming, -- Little Steven
	[104] = "1只正常红色蝗虫和2只较小的红色蝗虫", -- The Parasite
	[106] = abyssPresets.yellowExplode, -- Mr. Mega
	[108] = abyssPresets.cyanDestroyProjectiles, -- The Wafer
	[110] = abyssPresets.grayPetrify, -- Mom's Contacts
	[111] = abyssPresets.greenPoison, -- The Bean
	[112] = abyssPresets.cyanDestroyProjectiles, -- Guardian Angel
	[114] = "较大的红色蝗虫, 攻击更快", -- Mom's Knife
	[116] = abyssPresets.cyanElectricity, -- 9 Volt
	[118] = "较大的黑色蝗虫", -- Brimstone
	[124] = abyssPresets.pinkMimic, -- Dead Sea Scrolls
	[125] = abyssPresets.yellowExplode, -- Bobby-Bomb
	[136] = abyssPresets.yellowExplode, -- Best Friend
	[137] = abyssPresets.yellowExplode, -- Remote Detonator
	[140] = abyssPresets.yellowExplode, -- Bob's Curse
	[149] = abyssPresets.greenPoison, -- Ipecac
	[153] = abyssPresets.smallFour, -- Mutant Spider
	[160] = abyssPresets.whiteBeam, -- Crack the Sky
	[162] = abyssPresets.cyanDestroyProjectiles, -- Celtic Cross
	[164] = abyssPresets.orangeBurn, -- The Candle
	[168] = abyssPresets.yellowExplode, -- Epic Fetus
	[169] = abyssPresets.redLarge, -- Polyphemus
	[171] = abyssPresets.graySlow, -- Spider Butt
	[172] = abyssPresets.cyanDestroyProjectiles, -- Sacrificial Dagger
	[178] = "白色蝗虫, 使敌人石化, 生成光束造成3x角色伤害", -- Holy Water
	[180] = abyssPresets.greenPoison, -- The Black Bean
	[181] = abyssPresets.whiteBeam, -- White Pony
	[182] = "较慢的白色追踪蝗虫, 生成光束造成3x角色伤害", -- Sacred Heart
	[187] = abyssPresets.cyanDestroyProjectiles, -- Guppy's Hairball
	[190] = abyssPresets.yellowExplode, -- Pyro
	[191] = abyssPresets.pinkMimic, -- 3 Dollar Bill
	[192] = abyssPresets.purpleHoming, -- Telepathy for Dummies
	[200] = abyssPresets.pinkCharm, -- Mom's Eyeshadow
	[201] = abyssPresets.grayConfuse, -- Iron Bar
	[202] = abyssPresets.grayPetrify, -- Midas' Touch
	[207] = abyssPresets.cyanDestroyProjectiles, -- Ball of Bandages
	[209] = abyssPresets.yellowPoisonExplode, -- Butt Bombs
	[210] = abyssPresets.cyanDestroyProjectiles, -- Gnawed Leaf
	[213] = abyssPresets.cyanDestroyProjectiles, -- Lost Contact
	[220] = abyssPresets.yellowExplode, -- Sad Bombs
	[224] = abyssPresets.smallFour, -- Cricket's Body
	[228] = abyssPresets.blackFear, -- Mom's Perfume
	[230] = abyssPresets.blackFear, -- Abaddon
	[231] = "黑色蝗虫, 使敌人减速", -- Ball of Tar
	[232] = abyssPresets.graySlow, -- Stop Watch
	[242] = abyssPresets.cyanDestroyProjectiles, -- Infamy
	[243] = abyssPresets.cyanDestroyProjectiles, -- Trinity Shield
	[244] = abyssPresets.cyanDestroyProjectiles, -- Tech.5
	[245] = abyssPresets.normalTwo, -- 20/20
	[248] = abyssPresets.redLarge, -- Hive Mind
	[250] = abyssPresets.yellowExplode, -- BOGO Bombs
	[256] = "黄色蝗虫, 使敌人燃烧, 接触敌人时有几率爆炸", -- Hot Bombs
	[258] = abyssPresets.pinkMimic, -- Missing No.
	[259] = abyssPresets.blackFear, -- Dark Matter
	[264] = abyssPresets.purpleHoming, -- Smart Fly
	[265] = abyssPresets.cyanDestroyProjectiles, -- Dry Baby
	[266] = abyssPresets.graySlow, -- Juicy Sack
	[267] = abyssPresets.cyanElectricity, -- Robo-Baby 2.0
	[272] = abyssPresets.yellowExplode, -- BBF
	[273] = abyssPresets.yellowPoisonExplode, -- Bob's Brain
	[276] = abyssPresets.blueConfuse, -- Isaac's Heart
	[277] = abyssPresets.blackFear, -- Lil Haunt
	[279] = "大型青色缓慢蝗虫, 阻挡敌人弹幕", -- Big Fan
	[281] = abyssPresets.cyanDestroyProjectiles, -- Punching Bag
	[289] = abyssPresets.orangeBurn, -- Red Candle
	[294] = abyssPresets.blueConfuse, -- Butter Bean
	[298] = abyssPresets.cyanDestroyProjectiles, -- Unicorn Stump
	[300] = abyssPresets.blueConfuse, -- Aries
	[303] = abyssPresets.cyanDestroyProjectiles, -- Virgo
	[309] = abyssPresets.blueConfuse, -- Pisces
	[310] = "较慢的大型黑色蝗虫", -- Eve's Mascara
	[313] = abyssPresets.cyanDestroyProjectiles, -- Holy Mantle
	[315] = abyssPresets.grayMagnetize, -- Strange Attractor
	[317] = abyssPresets.greenPoison, -- Mysterious Liquid
	[326] = abyssPresets.cyanDestroyProjectiles, -- Breath of Life
	[330] = "小型红色快速蝗虫, 造成伤害更快", -- Soy Milk
	[331] = abyssPresets.whiteGodhead, -- Godhead
	[336] = "红色缓慢蝗虫", -- Dead Onion
	[337] = abyssPresets.graySlow, -- Broken Watch
	[338] = abyssPresets.grayPetrify, -- Boomerang
	[347] = abyssPresets.normalTwo, -- Diplopia
	[350] = abyssPresets.greenPoison, -- Toxic Shock
	[351] = "绿色蝗虫, 击退敌人并使其中毒和混乱", -- Mega Bean
	[353] = abyssPresets.yellowExplode, -- Bomber Boy
	[356] = abyssPresets.cyanElectricity, -- Car Battery
	[360] = abyssPresets.normalTwo, -- Incubus
	[363] = abyssPresets.cyanDestroyProjectiles, -- Sworn Protector
	[366] = "2只黄色蝗虫, 接触敌人时有几率爆炸", -- Scatter Bombs
	[367] = "黄色蝗虫, 使敌人减速, 接触敌人时有几率爆炸", -- Sticky Bombs
	[371] = abyssPresets.yellowExplode, -- Curse of the Tower
	[372] = abyssPresets.cyanElectricity, -- Charged Baby
	[374] = abyssPresets.whiteBeam, -- Holy Light
	[375] = abyssPresets.cyanDestroyProjectiles, -- Host Hat
	[378] = abyssPresets.yellowExplode, -- Number Two
	[379] = abyssPresets.redLarge, -- Pupula Duplex
	[387] = abyssPresets.graySlow, -- Censer
	[391] = abyssPresets.pinkCharm, -- Betrayal
	[393] = abyssPresets.greenPoison, -- Serpent's Kiss
	[395] = abyssPresets.cyanElectricity, -- Tech X
	[398] = "蓝色蝗虫, 缩小敌人", -- God's Flesh
	[401] = abyssPresets.yellowExplode, -- Explosivo
	[402] = abyssPresets.pinkMimic, -- Chaos
	[403] = abyssPresets.pinkMimic, -- Spider Mod
	[404] = "青色蝗虫, 使敌人中毒, 阻挡敌人弹幕", -- Farting Baby
	[405] = abyssPresets.pinkMimic, -- GB Bug
	[415] = abyssPresets.whiteBeam, -- Crown of Light
	[417] = abyssPresets.whiteGodhead, -- Succubus
	[418] = abyssPresets.pinkMimic, -- Fruit Cake
	[421] = abyssPresets.pinkCharm, -- Kidney Bean
	[423] = abyssPresets.cyanDestroyProjectiles, -- Circle of Protection
	[425] = abyssPresets.graySlow, -- Night Light
	[427] = abyssPresets.yellowExplode, -- Mine Crafter
	[432] = abyssPresets.yellowMimicExplode, -- Glitter Bombs
	[441] = "较大的黑色蝗虫", -- Mega Blast
	[446] = abyssPresets.greenPoison, -- Dead Tooth
	[448] = abyssPresets.redBleed, -- Shard of Glass
	[449] = abyssPresets.cyanDestroyProjectiles, -- Metal Plate
	[453] = abyssPresets.grayBones, -- Compound Fracture
	[457] = abyssPresets.cyanDestroyProjectiles, -- Cone Head
	[459] = abyssPresets.greenPoison, -- Sinus Infection
	[460] = abyssPresets.grayConfuse, -- Glaucoma
	[466] = abyssPresets.greenPoison, -- Contagion
	[473] = "较大较慢的红色蝗虫", -- Big Chubby
	[478] = abyssPresets.grayPetrify, -- Pause
	[483] = "较大的黄色蝗虫, 接触敌人时有几率爆炸", -- Mama Mega
	[488] = abyssPresets.pinkMimic, -- Metronome
	[495] = abyssPresets.orangeBurn, -- Ghost Pepper
	[497] = abyssPresets.grayConfuse, -- Camo Undies
	[502] = abyssPresets.graySlow, -- Large Zit
	[506] = abyssPresets.redBleed, -- Backstabber
	[508] = abyssPresets.redBleed, -- Mom's Razor
	[510] = abyssPresets.pinkMimic, -- Delirious
	[512] = abyssPresets.grayMagnetize, -- Black Hole
	[514] = "灰色蝗虫, 使敌人石化和混乱", -- Broken Modem
	[517] = abyssPresets.yellowExplode, -- Fast Bombs
	[519] = abyssPresets.pinkMimic, -- Lil Delirium
	[520] = abyssPresets.cyanElectricity, -- Jumper Cables
	[524] = abyssPresets.cyanElectricity, -- Technology Zero
	[525] = abyssPresets.cyanDestroyProjectiles, -- Leprosy
	[533] = abyssPresets.whiteBeam, -- Trisagion
	[541] = abyssPresets.grayBones, -- Marrow
	[542] = abyssPresets.grayBones, -- Slipped Rib
	[544] = abyssPresets.grayBones, -- Pointy Rib
	[545] = abyssPresets.grayBones, -- Book of the Dead
	[546] = abyssPresets.grayPetrify, -- Dad's Ring
	[548] = abyssPresets.grayBones, -- Jawbone
	[549] = abyssPresets.grayBones, -- Brittle Bones
	[553] = abyssPresets.greenPoison, -- Mucomycosis
	[554] = abyssPresets.blackFear, -- 2Spooky
	[561] = "小型红色快速蝗虫, 造成伤害更快", -- Almond Milk
	[563] = abyssPresets.yellowMimicExplode, -- Nancy Bombs
	[568] = abyssPresets.cyanDestroyProjectiles, -- Divine Intervention
	[570] = abyssPresets.pinkMimic, -- Playdough Cookie
	[574] = abyssPresets.whiteGodhead, -- Monstrance
	[575] = abyssPresets.graySlow, -- The Intruder
	[577] = "2只青色蝗虫, 阻挡敌人弹幕", -- Damocles
	[581] = abyssPresets.cyanDestroyProjectiles, -- Psy Fly
	[583] = abyssPresets.yellowExplode, -- Rocket in a Jar
	[591] = abyssPresets.pinkCharm, -- Venus
	[594] = abyssPresets.greenPoison, -- Jupiter
	[596] = abyssPresets.blueFreeze, -- Uranus
	[603] = abyssPresets.cyanElectricity, -- Battery Pack
	[606] = abyssPresets.grayMagnetize, -- Ocular Rift
	[608] = abyssPresets.blueFreeze, -- Freezer Baby
	[615] = abyssPresets.cyanDestroyProjectiles, -- Lil Dumpy
	[616] = abyssPresets.orangeBurn, -- Bird's Eye
	[617] = abyssPresets.grayMagnetize, -- Lodestone
	[618] = abyssPresets.pinkCharm, -- Rotten Tomato
	[622] = abyssPresets.pinkMimic, -- Genesis
	[625] = "大型红色蝗虫, 攻击更快", -- Mega Mush
	[629] = abyssPresets.cyanDestroyProjectiles, -- Bot Fly
	[631] = "2只小型红色蝗虫", -- Meat Cleaver
	[637] = abyssPresets.blueConfuse, -- Knockout Drops
	[640] = abyssPresets.orangeBurn, -- Urn of Souls
	[645] = abyssPresets.cyanDestroyProjectiles, -- Tinytoma
	[646] = abyssPresets.yellowExplode, -- Brimstone Bombs
	[647] = abyssPresets.cyanElectricity, -- 4.5 Volt
	[652] = abyssPresets.blueFreeze, -- Cube Baby
	[663] = abyssPresets.cyanDestroyProjectiles, -- Tooth and Nail
	[683] = abyssPresets.grayBones, -- Bone Spurs
	[689] = abyssPresets.pinkMimic, -- Glitched Crown
	[690] = abyssPresets.blueConfuse, -- Belly Jelly
	[693] = "3只青色蝗虫, 阻挡敌人弹幕", -- The Swarm
	[698] = abyssPresets.normalTwo, -- Twisted Pair
	[721] = abyssPresets.pinkMimic, -- TMTRAINER
	[727] = abyssPresets.yellowExplode, -- Ghost Bombs
	[706] = "16只不同效果的蝗虫", -- Abyss
}
EID:updateDescriptionsViaTable(abyssSynergies, EID.descriptions[languageCode].abyssSynergies)


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
