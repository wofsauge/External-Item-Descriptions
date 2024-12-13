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

-- Special Locust effects when Item was eaten by Abyss
local abyssSynergies = {
	[4] = "无特殊效果", -- Cricket's Head
	[6] = "红色短距离快速蝗虫，能快速造成伤害", -- Number One
	[7] = "无特殊效果", -- Blood of the Martyr
	[10] = "2只青色蝗虫，能抵挡敌方泪弹", -- Halo of Flies
	[12] = "较大的红色蝗虫", -- Magic Mushroom
	[19] = "黄色蝗虫，接触敌人时有概率爆炸", -- Boom!
	[37] = "黄色蝗虫，接触敌人时有概率爆炸", -- Mr. Boom
	[39] = "灰色蝗虫，能使敌人石化", -- Mom's Bra
	[40] = "黄色蝗虫，接触敌人时有概率爆炸", -- Kamikaze!
	[47] = "黄色蝗虫，接触敌人时有概率爆炸", -- Doctor's Remote
	[52] = "黄色蝗虫，接触敌人时有概率爆炸", -- Dr. Fetus
	[41] = "黑色蝗虫，能使敌人恐惧", -- Mom's Pad
	[53] = "灰色蝗虫，能使敌人磁化", -- Magneto
	[58] = "青色蝗虫，能抵挡敌方泪弹", -- Book of Shadows
	[62] = "暗红色蝗虫，能使敌人流血", -- Charm of the Vampire
	[63] = "淡蓝色蝗虫, 带有电弧, 每个电弧造成0.1点伤害", -- The Battery
	[65] = "黄色蝗虫，接触敌人时有概率爆炸", -- Anarchist Cookbook
	[66] = "淡灰色蝗虫，能使敌人减速", -- The Hourglass
	[68] = "淡蓝色蝗虫, 带有电弧, 每个电弧造成0.1点伤害", -- Technology
	[69] = "较大的红色蝗虫", -- Chocolate Milk
	[71] = "较小的红色蝗虫", -- Mini Mush
	[73] = "青色蝗虫，能抵挡敌方泪弹", -- Cube of Meat
	[77] = "青色蝗虫，能抵挡敌方泪弹", -- My Little Unicorn
	[89] = "淡灰色蝗虫，能使敌人减速", -- Spider Bite
	[95] = "淡蓝色蝗虫, 带有电弧, 每个电弧造成0.1点伤害", -- Robo Baby
	[99] = "淡灰色蝗虫，能使敌人减速", -- Little Gish
	[100] = "紫色跟踪蝗虫", -- Little Steven
	[104] = "1个正常红色蝗虫和2个较小的红色蝗虫", -- The Parasite
	[106] = "黄色蝗虫，接触敌人时有概率爆炸", -- Mr. Mega
	[108] = "青色蝗虫，能抵挡敌方泪弹", -- The Wafer
	[110] = "灰色蝗虫，能使敌人石化", -- Mom's Contacts
	[111] = "绿色蝗虫，能使敌人中毒", -- The Bean
	[112] = "青色蝗虫，能抵挡敌方泪弹", -- Guardian Angel
	[114] = "较大的红色蝗虫，造成伤害更快", -- Mom's Knife
	[116] = "淡蓝色蝗虫, 带有电弧, 每个电弧造成0.1点伤害", -- 9 Volt
	[118] = "较大的黑色蝗虫，其他性质正常", -- Brimstone
	[124] = "粉色蝗虫，能触发随机特效", -- Dead Sea Scrolls
	[125] = "黄色蝗虫，接触敌人时有概率爆炸", -- Bobby-Bomb
	[136] = "黄色蝗虫，接触敌人时有概率爆炸", -- Best Friend
	[137] = "黄色蝗虫，接触敌人时有概率爆炸", -- Remote Detonator
	[140] = "黄色蝗虫，接触敌人时有概率爆炸", -- Bob's Curse
	[149] = "绿色缓慢大蝗虫，能使敌人中毒", -- Ipecac
	[153] = "4只较小蝗虫", -- Mutant Spider
	[160] = "白色蝗虫，能生成光束造成3x角色伤害", -- Crack the Sky
	[162] = "青色蝗虫，能抵挡敌方泪弹", -- Celtic Cross
	[164] = "橙色燃烧的蝗虫，能使敌人着火", -- The Candle
	[168] = "黄色蝗虫，接触敌人时有概率爆炸", -- Epic Fetus
	[169] = "大型红色蝗虫", -- Polyphemus
	[171] = "淡灰色蝗虫，能使敌人减速", -- Spider Butt
	[172] = "青色蝗虫，能抵挡敌方泪弹", -- Sacrificial Dagger
	[178] = "白色蝗虫，能使敌人石化，能生成光束造成3x角色伤害", -- Holy Water
	[180] = "绿色蝗虫，能使敌人中毒", -- The Black Bean
	[181] = "白色蝗虫，能生成光束造成3x角色伤害", -- White Pony
	[182] = "白色快速追踪蝗虫，能生成光束造成3x角色伤害", -- Sacred Heart
	[187] = "青色蝗虫，能抵挡敌方泪弹", -- Guppy's Hairball
	[190] = "黄色蝗虫，接触敌人时有概率爆炸", -- Pyro
	[191] = "粉色蝗虫，能触发随机特效", -- 3 Dollar Bill
	[192] = "紫色跟踪蝗虫", -- Telepathy for Dummies
	[200] = "粉红色蝗虫，能魅惑敌人", -- Mom's Eyeshadow
	[201] = "灰色蝗虫，能使敌人眩晕", -- Iron Bar
	[202] = "灰色蝗虫，能使敌人石化", -- Midas' Touch
	[207] = "青色蝗虫，能抵挡敌方泪弹", -- Ball of Bandages
	[209] = "黄色蝗虫，能使敌人中毒，接触敌人时有概率爆炸", -- Butt Bombs
	[210] = "青色蝗虫，能抵挡敌方泪弹", -- Gnawed Leaf
	[213] = "青色蝗虫，能抵挡敌方泪弹", -- Lost Contact
	[220] = "黄色蝗虫，接触敌人时有概率爆炸", -- Sad Bombs
	[224] = "四只小型红色蝗虫", -- Cricket's Body
	[228] = "黑色蝗虫，能使敌人恐惧", -- Mom's Perfume
	[230] = "黑色蝗虫，能使敌人恐惧", -- Abaddon
	[231] = "黑色蝗虫，能使敌人减速", -- Ball of Tar
	[232] = "淡灰色蝗虫，能使敌人减速", -- Stop Watch
	[242] = "青色蝗虫，能抵挡敌方泪弹", -- Infamy
	[243] = "青色蝗虫，能抵挡敌方泪弹", -- Trinity Shield
	[244] = "青色蝗虫，能抵挡敌方泪弹", -- Tech.5
	[245] = "2只普通蝗虫", -- 20/20
	[248] = "大型红色蝗虫", -- Hive Mind
	[250] = "黄色蝗虫，接触敌人时有概率爆炸", -- BOGO Bombs
	[256] = "黄色燃烧蝗虫，能使敌人着火，接触敌人时有概率爆炸", -- Hot Bombs
	[258] = "粉色蝗虫，能触发随机特效", -- Missing No.
	[259] = "黑色蝗虫，能使敌人恐惧", -- Dark Matter
	[264] = "紫色跟踪蝗虫", -- Smart Fly
	[265] = "青色蝗虫，能抵挡敌方泪弹", -- Dry Baby
	[266] = "淡灰色蝗虫，能使敌人减速", -- Juicy Sack
	[267] = "淡蓝色蝗虫, 带有电弧, 每个电弧造成0.1点伤害", -- Robo-Baby 2.0
	[272] = "黄色蝗虫，接触敌人时有概率爆炸", -- BBF
	[273] = "黄色蝗虫，能使敌人中毒，接触敌人时有概率爆炸", -- Bob's Brain
	[276] = "蓝色蝗虫，能击退并击晕敌人", -- Isaac's Heart
	[277] = "黑色蝗虫，能使敌人恐惧", -- Lil Haunt
	[279] = "缓慢的较大青色蝗虫，能抵挡敌方泪弹", -- Big Fan
	[281] = "青色蝗虫，能抵挡敌方泪弹", -- Punching Bag
	[289] = "橙色燃烧的蝗虫，能使敌人着火", -- Red Candle
	[294] = "蓝色蝗虫，能击退并击晕敌人", -- Butter Bean
	[298] = "青色蝗虫，能抵挡敌方泪弹", -- Unicorn Stump
	[300] = "蓝色蝗虫，能击退并击晕敌人", -- Aries
	[303] = "青色蝗虫，能抵挡敌方泪弹", -- Virgo
	[309] = "蓝色蝗虫，能击退并击晕敌人", -- Pisces
	[310] = "较大较慢的黑色蝗虫", -- Eve's Mascara
	[313] = "青色蝗虫，能抵挡敌方泪弹", -- Holy Mantle
	[315] = "灰色蝗虫，能使敌人磁化", -- Strange Attractor
	[317] = "绿色蝗虫，能使敌人中毒", -- Mysterious Liquid
	[326] = "青色蝗虫，能抵挡敌方泪弹", -- Breath of Life
	[330] = "小型快速红色蝗虫", -- Soy Milk
	[331] = "白色蝗虫，带有伤害光环，造成每秒30次2.0点伤害", -- Godhead
	[336] = "缓慢的红色蝗虫", -- Dead Onion
	[337] = "淡灰色蝗虫，能使敌人减速", -- Broken Watch
	[338] = "灰色蝗虫，能使敌人石化", -- Boomerang
	[347] = "2个普通蝗虫", -- Diplopia
	[350] = "绿色蝗虫，能使敌人中毒", -- Toxic Shock
	[351] = "绿色蝗虫，能使敌人中毒，能击退并击晕敌人", -- Mega Bean
	[353] = "黄色蝗虫，接触敌人时有概率爆炸", -- Bomber Boy
	[356] = "淡蓝色蝗虫, 带有电弧, 每个电弧造成0.1点伤害", -- Car Battery
	[360] = "2个普通蝗虫", -- Incubus
	[363] = "青色蝗虫，能抵挡敌方泪弹", -- Sworn Protector
	[366] = "2个黄色蝗虫，接触敌人时有概率爆炸", -- Scatter Bombs
	[367] = "黄色蝗虫，能使敌人减速，接触敌人时有概率爆炸", -- Sticky Bombs
	[371] = "黄色蝗虫，接触敌人时有概率爆炸", -- Curse of the Tower
	[372] = "淡蓝色蝗虫, 带有电弧, 每个电弧造成0.1点伤害", -- Charged Baby
	[374] = "白色蝗虫，能生成光束造成3x角色伤害", -- Holy Light
	[375] = "青色蝗虫，能抵挡敌方泪弹", -- Host Hat
	[378] = "黄色蝗虫，接触敌人时有概率爆炸", -- Number Two
	[379] = "较大的红色蝗虫", -- Pupula Duplex
	[387] = "淡灰色蝗虫，能使敌人减速", -- Censer
	[391] = "粉红色蝗虫，能魅惑敌人", -- Betrayal
	[393] = "绿色蝗虫，能使敌人中毒", -- Serpent's Kiss
	[395] = "淡蓝色蝗虫, 带有电弧, 每个电弧造成0.1点伤害", -- Tech X
	[398] = "蓝色蝗虫，能缩小敌人", -- God's Flesh
	[401] = "黄色蝗虫，接触敌人时有概率爆炸", -- Explosivo
	[402] = "粉色蝗虫，能触发随机特效", -- Chaos
	[403] = "粉色蝗虫，能触发随机特效", -- Spider Mod
	[404] = "青色蝗虫，能使敌人中毒，能抵挡敌方泪弹", -- Farting Baby
	[405] = "粉色蝗虫，能触发随机特效", -- GB Bug
	[415] = "白色蝗虫，能生成光束造成3x角色伤害", -- Crown of Light
	[417] = "白色蝗虫，带有伤害光环，造成每秒30次2.0点伤害", -- Succubus
	[418] = "粉色蝗虫，能触发随机特效", -- Fruit Cake
	[421] = "粉红色蝗虫，能魅惑敌人", -- Kidney Bean
	[423] = "青色蝗虫，能抵挡敌方泪弹", -- Circle of Protection
	[425] = "淡灰色蝗虫，能使敌人减速", -- Night Light
	[427] = "黄色蝗虫，接触敌人时有概率爆炸", -- Mine Crafter
	[432] = "黄色蝗虫，接触敌人时有概率爆炸，能触发随机特效", -- Glitter Bombs
	[441] = "黑色大型蝗虫", -- Mega Blast
	[446] = "绿色蝗虫，能使敌人中毒", -- Dead Tooth
	[448] = "暗红色蝗虫，能使敌人流血", -- Shard of Glass
	[449] = "青色蝗虫，能抵挡敌方泪弹", -- Metal Plate
	[453] = "淡灰色蝗虫，能分裂出1-3个小骨头碎片", -- Compound Fracture
	[457] = "青色蝗虫，能抵挡敌方泪弹", -- Cone Head
	[459] = "绿色蝗虫，能使敌人中毒", -- Sinus Infection
	[460] = "灰色蝗虫，能使敌人眩晕", -- Glaucoma
	[466] = "绿色蝗虫，能使敌人中毒", -- Contagion
	[473] = "较大较慢的红色蝗虫", -- Big Chubby
	[478] = "灰色蝗虫，能使敌人石化", -- Pause
	[483] = "较大黄色蝗虫，接触敌人时有概率爆炸", -- Mama Mega
	[488] = "粉色蝗虫，能触发随机特效", -- Metronome
	[495] = "橙色燃烧的蝗虫，能使敌人着火", -- Ghost Pepper
	[497] = "灰色蝗虫，能使敌人眩晕", -- Camo Undies
	[502] = "淡灰色蝗虫，能使敌人减速", -- Large Zit
	[506] = "暗红色蝗虫，能使敌人流血", -- Backstabber
	[508] = "暗红色蝗虫，能使敌人流血", -- Mom's Razor
	[510] = "粉色蝗虫，能触发随机特效", -- Delirious
	[512] = "灰色蝗虫，能使敌人磁化", -- Black Hole
	[514] = "灰色蝗虫，能使敌人石化和眩晕", -- Broken Modem
	[517] = "黄色蝗虫，接触敌人时有概率爆炸", -- Fast Bombs
	[519] = "粉色蝗虫，能触发随机特效", -- Lil Delirium
	[520] = "淡蓝色蝗虫, 带有电弧, 每个电弧造成0.1点伤害", -- Jumper Cables
	[524] = "淡蓝色蝗虫, 带有电弧, 每个电弧造成0.1点伤害", -- Technology Zero
	[525] = "青色蝗虫，能抵挡敌方泪弹", -- Leprosy
	[533] = "白色蝗虫，能生成光束造成3x角色伤害", -- Trisagion
	[541] = "淡灰色蝗虫，能分裂出1-3个小骨头碎片", -- Marrow
	[542] = "淡灰色蝗虫，能分裂出1-3个小骨头碎片", -- Slipped Rib
	[544] = "淡灰色蝗虫，能分裂出1-3个小骨头碎片", -- Pointy Rib
	[545] = "淡灰色蝗虫，能分裂出1-3个小骨头碎片", -- Book of the Dead
	[546] = "灰色蝗虫，能使敌人石化", -- Dad's Ring
	[548] = "淡灰色蝗虫，能分裂出1-3个小骨头碎片", -- Jawbone
	[549] = "淡灰色蝗虫，能分裂出1-3个小骨头碎片", -- Brittle Bones
	[553] = "绿色蝗虫，能使敌人中毒", -- Mucomycosis
	[554] = "黑色蝗虫，能使敌人恐惧", -- 2Spooky
	[561] = "小型快速红色蝗虫", -- Almond Milk
	[563] = "黄色蝗虫，接触敌人时有概率爆炸，能触发随机特效", -- Nancy Bombs
	[568] = "青色蝗虫，能抵挡敌方泪弹", -- Divine Intervention
	[570] = "粉色蝗虫，能触发随机特效", -- Playdough Cookie
	[574] = "白色蝗虫，带有伤害光环，造成每秒30次2.0点伤害", -- Monstrance
	[575] = "淡灰色蝗虫，能使敌人减速", -- The Intruder
	[577] = "2个青色蝗虫，能抵挡敌方泪弹", -- Damocles
	[581] = "青色蝗虫，能抵挡敌方泪弹", -- Psy Fly
	[583] = "黄色蝗虫，接触敌人时有概率爆炸", -- Rocket in a Jar
	[591] = "粉红色蝗虫，能魅惑敌人", -- Venus
	[594] = "绿色蝗虫，能使敌人中毒", -- Jupiter
	[596] = "蓝色蝗虫，能冻结敌人", -- Uranus
	[603] = "淡蓝色蝗虫, 带有电弧, 每个电弧造成0.1点伤害", -- Battery Pack
	[606] = "灰色蝗虫，能使敌人磁化", -- Ocular Rift
	[608] = "蓝色蝗虫，能冻结敌人", -- Freezer Baby
	[615] = "青色蝗虫，能抵挡敌方泪弹", -- Lil Dumpy
	[616] = "橙色燃烧的蝗虫，能使敌人着火", -- Bird's Eye
	[617] = "灰色蝗虫，能使敌人磁化", -- Lodestone
	[618] = "粉红色蝗虫，能魅惑敌人", -- Rotten Tomato
	[622] = "粉色蝗虫，能触发随机特效", -- Genesis
	[625] = "大型红色蝗虫，造成伤害更快", -- Mega Mush
	[629] = "青色蝗虫，能抵挡敌方泪弹", -- Bot Fly
	[631] = "2个小型红色蝗虫", -- Meat Cleaver
	[637] = "蓝色蝗虫，能击退并击晕敌人", -- Knockout Drops
	[640] = "橙色燃烧的蝗虫，能使敌人着火", -- Urn of Souls
	[645] = "青色蝗虫，能抵挡敌方泪弹", -- Tinytoma
	[646] = "黄色蝗虫，接触敌人时有概率爆炸", -- Brimstone Bombs
	[647] = "淡蓝色蝗虫, 带有电弧, 每个电弧造成0.1点伤害", -- 4.5 Volt
	[652] = "蓝色蝗虫，能冻结敌人", -- Cube Baby
	[663] = "青色蝗虫，能抵挡敌方泪弹", -- Tooth and Nail
	[683] = "淡灰色蝗虫，能分裂出1-3个小骨头碎片", -- Bone Spurs
	[689] = "粉色蝗虫，能触发随机特效", -- Glitched Crown
	[690] = "蓝色蝗虫，能击退并击晕敌人", -- Belly Jelly
	[693] = "3个青色蝗虫，能抵挡敌方泪弹", -- The Swarm
	[698] = "2个普通蝗虫", -- Twisted Pair
	[721] = "粉色蝗虫，能触发随机特效", -- TMTRAINER
	[727] = "黄色蝗虫，接触敌人时有概率爆炸", -- Ghost Bombs
	[706] = "16个分别造成不同效果的蝗虫", -- Abyss
}


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
