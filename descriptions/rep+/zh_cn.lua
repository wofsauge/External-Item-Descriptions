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
	-- Change: added "Spawns a random penny trinket"
	[141] = { "141", "盛装男孩", "{{Coin}} 生成7随机硬币#生成1随机硬币饰品" }, -- Pageant Boy
	-- Change: added Fire rate information
	[186] = { "186", "血之权利", "对所有敌人造成40点伤害#{{Tears}} 当前房间中射速+0.48#{{Warning}} 对角色造成1心伤害#在房间中首次使用后, 改为造成半心伤害#{{Heart}} 优先消耗红心" }, -- Blood Rights
	-- Change: added random tear effects information	
	[244] = { "244", "科技0.5", "时不时发射激光#激光小概率带有随机效果"}, -- Tech.5
	-- Change: added "Blocks enemy tears"
	[281] = {"281", "受气包", "诱饵跟班#敌人有时会以他而不是角色作为目标#阻挡敌人弹幕" }, -- Punching Bag
	-- Change: added "+0.2 Shot speed"
	[329] = {"329", "鲁多维科科技", "↑ {{Shotspeed}} 弹速+0.2#角色的泪弹由1颗巨大的可控泪弹取代"}, -- The Ludovico Technique
	-- Change: Complete rewrite
	[351] = {"351", "超级豆子", "{{Petrify}} 使房间中所有敌人石化并造成100点伤害#{{Poison}} 造成5点伤害并使附近敌人中毒#可打开隐藏房并粉碎岩石"}, -- Mega Bean
	-- Change: Added "Grants bigger explosions#Fireplaces explode when extinguished"
	[420] = { "420", "黑色粉末", "在地上走1个圈会产生五角星符号, 4秒内造成130点接触伤害#获得更大范围的爆炸效果#火堆熄灭时会爆炸" }, -- Black Powder
	-- Change: "10%" to "20%"
	[398] = {"398", "神体蘑菇", "20%概率发射使敌人缩小的泪弹#缩小的敌人可以被踩死"}, -- God's Flesh
	-- Change: Complete rewrite
	[436] = {"436", "牛奶！", "阻挡弹幕#{{Tears}} 受击10次后, 破裂并在本层获得射速提升"}, -- Milk!
	-- Change: Complete rewrite
	[447] = {"447", "流连豆", "每连续发射4秒时, 生成一朵便便云#10秒内尺寸不断变大#尺寸越大伤害越低#可通过射击便便云使其移动"}, -- Linger Bean
	-- Change: added " and fires radial bursts of tears"
	[470] = {"470", "死寂宝宝", "在房间中四处漂浮#每秒造成30点接触伤害#角色发射时停止移动#停下来时可阻挡弹幕并散射泪弹"}, -- Hushy
	-- Change: added "10 to 12 seconds for Delirium and Mother"
	[475] = { "475", "计划C", "对所有敌人造成9,999,999点伤害#{{Warning}} 在3秒后击杀角色#精神错乱与母亲为10到12秒" }, -- Plan C
	-- Change: added "Turns item pedestals into glitched items"
	[481] = {"481", "数据破解", "↑ 随机属性提升#↓ 随机属性降低#{{Timer}} 当前房间中随机泪弹效果#将底座道具变为错误道具#{{Blank}} 损坏当前房间中的所有贴图和音乐"}, -- Dataminer
	-- Change: reduced the chance of removing the most recently acquired item to 50%
	[482] = {"482", "遥控器", "将角色换为其他随机角色#50%概率移除最近收集的1个道具"}, -- Clicker
	-- Change: Complete rewrite
	[510] = {"510", "精神错乱", "生成1个友好的精神错乱版的头目#切换房间持续存在#{{Warning}} 一次只能激活1个头目#生成的头目血量会随时间流失"}, -- Delirious
	-- Change: added "{{Tears}} +0.5 Tears#{{Shotspeed}} +0.2 Shot speed"
	[554] = { "554", "恐怖如斯", "↑ {{Tears}} 射速+0.5#↑ {{Shotspeed}} 弹速+0.2#{{Fear}} 使近距离的敌人恐惧"}, -- 2Spooky
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = {"560", "好疼", "{{Timer}} 受伤时, 在当前房间中获得:#↑ {{Tears}} 首次受伤射速+1.2#↑ {{Tears}} 后续受伤射速+0.4#在角色周围释放10颗泪弹#泪弹击中时留下水迹"}, -- It Hurts
	-- Change: Added ring of fire on impact description
	[593] = {"593", "火星", "双击移动键使角色冲锋#{{Damage}} 冲锋时角色无敌, 造成4x角色伤害+8的伤害#{{Timer}} 3秒冷却#{{Burning}} 撞击时在角色周围生成火圈" }, -- Mars
	-- Change: Heals 2 hearts instead of 1/2
	[594] = {"594", "木星", "↑ {{EmptyHeart}} +2空心之容器#↓ {{Speed}} 移速-0.3#{{HealingRed}} 治疗2红心#{{Speed}} 静止不动时, 移速逐渐升高至+0.5#{{Poison}} 移动时释放毒气#{{Poison}} 免疫中毒"}, -- Jupiter
	-- Change: Complete rewrite
	[632] = {"632", "邪眼护符", "↑ {{Luck}} 幸运+2#免疫{{Burning}}火焰伤害, {{Confusion}}混乱, {{Fear}}恐惧, {{Slow}}蜘蛛网, {{Poison}}毒气效果#获得1秒水迹免疫"}, -- Evil Charm
	-- Change: Removed +2 Soul Hearts
	[643] = { "643", "终末天启", "飞行#{{Chargeable}} 可蓄力发射高伤害圣光柱#不会取代角色的泪弹" }, -- Revelation
	-- Change: Adjusted the stat boost to match Hallowed Ground
	[651] = {"651", "伯列恒之星", "从本层初始房间向{{BossRoom}}头目房缓慢移动#角色领先则移动加快, 角色落后则移动减慢#站在光环中获得:#↑ {{Tears}} 射速修正x2.5#↑ {{Damage}} 伤害修正x1.2#追踪泪弹#50%概率忽略伤害" }, -- Star of Bethlehem
	-- Change: Added Shop as a new destination
	[660] = {"660", "牌意解读", "在每层的初始房间中生成2个传送门#离开房间时传送门消失#{{Blank}} {{ColorRed}}红色:{{CR}}{{BossRoom}}头目房#{{Blank}} {{ColorYellow}}黄色:{{CR}}{{TreasureRoom}}宝箱房#{{Blank}} {{ColorBlue}}蓝色:{{CR}}{{SecretRoom}}隐藏房#{{Blank}} {{ColorGreen}}绿色:{{CR}}{{Shop}} 商店"}, -- Card Reading
	-- Change: Complete rewrite
	[681] = {"681", "黑洞宝宝", "双击发射键可发射传送门#发射后造成接触伤害#消耗经过的掉落物#消耗掉落物会提升其尺寸, 伤害并生成1只蓝苍蝇#消耗(当前楼层数+1)个掉落物生成通往特殊房间的传送门, 跟班在本层后续中消失#房间中的内容本局持续存在"}, -- Lil Portal
	-- Change: Added into for first usage
	[685] = {"685", "魂火罐", "生成2随机魂火#每次使用多生成1魂火, 最多12个"}, -- Jar of Wisps
	-- Change: Added info about the damage based on item quality
	[706] = {"706", "无底坑", "消耗房间中所有底座道具并对应生成蝗虫跟班#一些道具会生成特殊蝗虫#{{Damage}} 蝗虫造成1x角色伤害, 并根据道具品质修正:#{{Quality0}} - 0.5x#{{Quality1}} - 0.75x#{{Quality2}} - 1.0x#{{Quality3}} - 1.5x#{{Quality4}} - 2.0x"}, -- Abyss
}
EID:updateDescriptionsViaTable(collectibles, EID.descriptions[languageCode].collectibles)

---------- Trinkets ----------

local trinkets = {
	-- Change: Added champion loot information
	[5] = {"5", "紫心奖章", "出现精英怪的概率变为2倍#精英怪掉落掉落物的概率变为50%#精英怪掉落掉落物翻倍"}, -- Purple Heart
	-- Change: Added info about devil deals
	[7] = { "7", "念珠段", "{{Collectible33}} 在{{Shop}}商店和{{Library}}图书馆出现圣经的概率更高#强制{{DevilChance}}恶魔房变为{{AngelChance}}天使房"}, -- Rosary Bead
	-- Change: added info about dropping the item
	[16] = {"16", "妈妈的脚趾甲", "在战斗中扔下会导致妈腿落在该位置"}, -- Mom's Toenail
	-- Change: added Super Secret Room info
	[23] = { "23", "寻人启事", "{{Player10}} 死亡时, 以游魂重生#{{SuperSecretRoom}} 进入新层时, 33%概率揭示新一层的超级隐藏房"}, -- Missing Poster
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = {"53", "血虱", "{{HealingRed}} 进入{{BossRoom}}头目房时, 治疗1红心#头目血量-15%#{{Warning}} 捡起后, 无法被其他饰品替换#只能被{{Trinket41}}火柴棍, {{Trinket135}}打火机移除或吞下"}, -- Tick
	-- Change: added +0.5 damage
	[66] = {"66", "懒懒虫", "↑ {{Damage}} 伤害+0.5#↓ {{Shotspeed}} 弹速-0.5"}, -- Lazy Worm
	-- Change: Complete rewrite
	[70] = {"70", "虱子", "在有敌人的房间里每30秒生成1只蓝蜘蛛#清理房间后生成1只蓝蜘蛛"}, -- Louse
	-- Change: Added more loot information
	[76] = {"76", "筹码", "↑ 箱子有50%概率生成额外掉落物#↓ 箱子有50%概率只有1只红苍蝇#提升赌博机等机器获胜几率#若箱子含有道具, 强制其品质至少为3#箱子偶尔会含有金箱子道具池之外的道具"}, -- Poker Chip
	-- Change: Added additional effects
	[85] = {"85", "业报", "{{DonationMachine}} 使用捐款机时, 33%概率:#{{HealingRed}} 治疗1红心(40%)#{{Coin}} 给予1硬币(40%)#{{Luck}} 幸运+1(15%)#{{Beggar}} 生成1个乞丐(5%)#{{DonationMachine}} 捐款机卡币概率降低#也会影响乞丐捐款和补货机"}, -- Karma
	-- Change: Added damage up information
	[89] = {"89", "儿童栓绳", "跟班离角色更近#{{Damage}} 跟班获得伤害修正×125%"}, -- Child Leash
	-- Change: 33% chance, Spawns blue fly on new room
	[93] = { "93", "用过的尿布", "每房间33%概率使所有苍蝇敌人变得友好#进入新房间时生成1蓝苍蝇"}, -- Used Diaper
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = {"97", "扁桃体", "受伤6-12次后, 获得阻挡弹幕的跟班#最多2个跟班, 之后该饰品消失"}, -- Tonsil
	-- Change: Added +2 Tears
	[103] = {"103", "等号！", "当角色的{{Coin}}硬币, {{Bomb}}炸弹和{{Key}}钥匙数量相等时:#↑ {{Tears}} 射速+2"}, -- Equality!
	-- Change: "2%" to "5%"
	[104] = {"104", "许愿骨", "受伤时, 5%概率被摧毁并生成1底座道具"}, -- Wish Bone
	-- Change: "2%" to "5%"
	[105] = {"105", "午餐袋", "{{Collectible22}} 受伤时, 5%概率被摧毁并生成午餐"}, -- Bag Lunch
	-- Change: added "Bombs deal 15% more damage"
	[133] = {"133", "短引线", "角色的炸弹爆炸更快#炸弹造成的伤害提高15%"}, -- Short Fuse
	-- Change: added "Removes Tick"
	[135] = {"135", "打火机", "{{Burning}} 进入房间有20%概率点燃随机敌人#{{Warning}} 会移除 {{Trinket53}} 血虱"}, -- A Lighter
	-- Change: Added coin type based information
	[172] = {"172", "诅咒硬币", "{{Coin}} 拾起硬币时, 将角色传送至随机房间#可以传送至隐藏房#硬币类型影响传送的房间类型"}, -- Cursed Penny
}
EID:updateDescriptionsViaTable(trinkets, EID.descriptions[languageCode].trinkets)

------- Golden Trinkets -------

local goldenTrinketEffects = {
	-- Purple Heart (find replace):
	[5] = { 2, 3, 4,  50, 66, 75 },
	-- Callus (append):
	[14] = { "{{SacrificeRoom}}将献祭房的尖刺伤害降至半心", "{{Collectible108}}将大多数伤害降至半心" },
	-- Mom's Toenail (find replace):
	[16] = {"位置", "{{CR}}位置{{ColorGold}}2次", "{{CR}}位置{{ColorGold}}3次"},
	-- Paper Clip (find replace):
	[19] = {"金箱子", "{{CR}}金箱子{{ColorGold}}和钥匙方块", "{{CR}}金箱子, {{ColorGold}}钥匙方块和上锁的门"},
	-- Mysterious Paper (find replace):
	[21] = {"效果", "{{ColorGold}}2个{{CR}}效果", "{{ColorGold}}2个{{CR}}效果"},
	-- Daemon's Tail (append):
	[22] = {"{{BlackHeart}}蓝色与紫色火堆现在会掉落黑心"},
	-- Broken Ankh (find replace):
	[28] = { 22, 33, 50 },
	-- Umbilical Cord (find replace):
	[33] = {"半红心", "一红心", "一个半红心"},
	-- Child's Heart (find replace):
	[34] = { 10, 20, 50,  33, 66, 100 },
	-- Rusted Key (find replace):
	[36] = { 10, 20, 50,  33, 66, 100 },
	-- Match Stick (find replace):
	[41] = { 10, 20, 50,  33, 66, 100 },
	-- Cursed Skull (replace):
	[43] = {
		"当受伤后只剩半颗心及以下时, 将角色传送至一个{{ColorGold}}特殊{{CR}}房间",
		"当受伤后只剩{{ColorGold}}半颗心{{CR}}及以下时, 将角色传送至一个{{ColorGold}}特殊{{CR}} 房间",
	},
	-- Safety Cap (find replace):
	[44] = { 10, 20, 50,  33, 66, 100 },
	-- Ace of Spades (find replace):
	[45] = { 10, 20, 50,  33, 66, 100 },
	-- Counterfeit Penny (find replace):
	[52] = {"1硬币", "{{ColorGold}}2{{CR}}硬币", "{{ColorGold}}3{{CR}}硬币"},
	-- Tick (replace): added ", {{Trinket135}} A Lighter"
	[53] = {
		"{{HealingRed}} 进入{{BossRoom}}头目房时, 治疗{{ColorGold}}2{{CR}}红心#头目血量-{{ColorGold}}30{{CR}}%#{{ColorGold}}可以移除!",
		"{{HealingRed}} 进入{{BossRoom}}头目房时, 治疗{{ColorGold}}3{{CR}}红心#头目血量-{{ColorGold}}30{{CR}}%#{{Warning}} 拾起后, 无法被其他饰品替换#只能被{{Trinket41}}火柴棍移除或吞下",
		"{{HealingRed}} 进入{{BossRoom}}头目房时, 治疗{{ColorGold}}3{{CR}}红心#头目血量-{{ColorGold}}30{{CR}}%#{{ColorGold}}可以移除!",
	},
	-- Isaac's Head (find replace):
	[54] = {"3.5点伤害", "角色伤害", "1.5倍角色伤害"},
	-- Judas' Tongue (replace):
	[56] = {
		"{{DevilRoom}}降低{{ColorGold}}所有{{CR}}恶魔交易至1心",
		"{{DevilRoom}}降低{{ColorGold}}所有{{CR}}恶魔交易至1心#{{ColorGold}}地刺交易只需1次献祭"
	},
	-- ???'s Soul (find replace):
	[57] = {"四处漂浮", "{{CR}}获得{{ColorGold}}2个{{CR}}四处漂浮", "{{CR}}获得{{ColorGold}}3个 {{CR}}四处漂浮"},
	-- Samson's Lock (find replace):
	[58] = { 6.66, 13, 25,  10, 5, 2 },
	-- The Left Hand (append):
	[61] = {
		"{{RedChest}}红箱子包含额外掉落物",
		"{{RedChest}}红箱子包含额外掉落物#{{ColorGold}}红箱子不再生成红蜘蛛",
	},
	-- Shiny Rock (replace):
	[62] = {
		"夹层岩石, 标记岩石{{ColorGold}}与隐藏房/超级隐藏房的门{{CR}}每10秒闪烁一次",
		"夹层岩石, 标记岩石{{ColorGold}}与隐藏房/超级隐藏房的门{{CR}}每{{ColorGold}}5{{CR}}秒闪烁一次",
	},
	-- Safety Scissors (append):
	[63] = {
		"降低敌人的爆炸半径",
		"大幅降低敌人的爆炸半径",
	},
	-- Super Magnet (find replace):
	[68] = {"掉落物和敌人", "{{CR}}掉落物, 敌人, {{ColorGold}}福袋与饰品", "{{CR}}掉落物, 敌人, {{ColorGold}}福袋, 饰品与箱子"},
	-- Louse (find replace):
	[70] = {"1只蓝蜘蛛", "2{{CR}}只蓝蜘蛛", "3{{CR}}只蓝蜘蛛"},
	-- Bob's Bladder (appendix):
	[71] = {"增加水迹范围", "增加水迹范围与持续时间"},
	-- Poker Chip (append):
	[76] = {"{{Slotmachine}}赌博获胜的掉落物变为2倍", "{{Slotmachine}}赌博获胜的掉落物变为3倍"},
	-- Store Key (append):
	[83] = {"{{Shop}}商店不会是等级最低的变体", "{{Shop}}商店的整体质量提升"},
	-- Rib of Greed (append):
	[84] = {"{{Coin}}提高双硬币、镍币、铸币、幸运硬币和金硬币的生成概率"},
	-- Karma (find replace):
	[85] = { 1, 2, 3,  1, 2, 3,  1, 2, 3},
	-- Mom's Locket (find replace):
	[87] = {"半红心", "一红心", "一个半红心"},
	-- Meconium (find replace):
	[91] = { 33, 66, 100,  5, 7, 10 },
	-- Used Diaper (find replace):
	[93] = {"1蓝苍蝇", "2{{CR}}蓝苍蝇", "3{{CR}}蓝苍蝇"},
	-- Fish Tail (append):
	[94] = {"20%概率翻3倍", "20%概率翻4倍"},
	-- Tonsil (find replace):
	[97] = {"2个跟班", "3{{CR}}个跟班", "4{{CR}}个跟班"},
	-- Nose Goblin (replace):
	[98] = {
		"{{ColorGold}}20{{CR}}%概率发射鼻屎泪弹#{{ColorGold}}75{{CR}}%概率使鼻屎泪弹获得追踪效果#{{Damage}}鼻屎每秒造成角色伤害#鼻屎会黏住10秒",
		"{{ColorGold}}30{{CR}}%概率发射{{ColorGold}}追踪{{CR}}鼻屎泪弹#{{Damage}} 鼻屎每秒造成角色伤害#鼻屎会黏住10秒",
	},
	-- Fragmented Card (append):
	[102] = {"{{SecretRoom}}揭示一个隐藏房的位置", "{{SecretRoom}}揭示两个隐藏房的位置"},
	-- Lost Cork (find replace):
	[106] = {"提高", "大幅{{CR}}提高"},
	-- Crow Heart (append):
	[107] = {
		"{{AngelDevilChance}} 25%概率受到红心伤害后不减少恶魔房/天使房概率",
		"{{AngelDevilChance}} 50%概率受到红心伤害后不减少恶魔房/天使房概率",
	},
	-- Walnut (find replace):
	[108] = {
		"1随机{{UnknownHeart}}心, 1{{Coin}}硬币, 1{{Key}}钥匙和1{{Trinket}}随机饰品",
		"2{{CR}}随机{{UnknownHeart}}心, 2{{Coin}}硬币, 2{{Key}}钥匙和3{{Trinket}}随机饰品",
		"3{{CR}}随机{{UnknownHeart}}心, 3{{Coin}}硬币, 3{{Key}}钥匙和3{{Trinket}}随机饰品",
	},
	-- Duct Tape (append):
	[109] = {"按下丢弃键会让跟班在不同的阵型间切换"},
	-- Silver Dollar (find replace):
	[110] = {"商店", "稀有布局的商店"},
	-- Bloody Crown (append):
	[111] = {"其会包含2个道具供玩家选择"},
	-- Pay To Win (append):
	[112] = {"{{RestockMachine}}补货机爆炸概率降低"},
	-- Locust of War (find replace):
	[113] = {"1只爆炸攻击的蝗虫", "2{{CR}}只爆炸攻击的蝗虫", "3{{CR}}只爆炸攻击的蝗虫"},
	-- Locust of Pestilence (find replace):
	[114] = {"1只有毒攻击的蝗虫", "2{{CR}}只有毒攻击的蝗虫", "3{{CR}}只有毒攻击的蝗虫"},
	-- Locust of Famine (find replace):
	[115] = {"1只减速攻击的蝗虫", "2{{CR}}只减速攻击的蝗虫", "3{{CR}}只减速攻击的蝗虫"},
	-- Locust of Death (find replace):
	[116] = {"1只攻击蝗虫", "2{{CR}}只攻击蝗虫", "3{{CR}}只攻击蝗虫"},
	-- Locust of Conquest (full replace):
	[117] = {
		"{{CR}}进入有敌人的房间会生成{{ColorGold}}2-5{{CR}}只攻击蝗虫#每只蝗虫造成2倍角色伤害",
		"{{CR}}进入有敌人的房间会生成{{ColorGold}}3-7{{CR}}只攻击蝗虫#每只蝗虫造成2倍角色伤害",
	},
	-- Stem Cell (find replace):
	[119] = {"一半", "全部"},
	-- Hairpin (find replace):
	[120] = {"充能", "充能2次"},
	-- Wooden Cross (find replace):
	[121] = {"第一次受到的伤害", "前两次{{CR}}受到的伤害"},
	-- Filigree Feather (append):
	[123] = {"天使头目也会掉落半魂心", "天使头目也会掉落1魂心"},
	-- Door Stop (append):
	[124] = {"也可以使离开头目车轮战的门打开", "也可以使离开头目车轮战/挑战房的门打开"},
	-- Rotten Penny (find replace):
	[126] = {"1只蓝苍蝇", "2{{CR}}只蓝苍蝇", "3{{CR}}只蓝苍蝇"},
	-- Baby-Bender (append):
	[127] = {"同时使跟班获得{{Trinket144}} 脑形虫的效果", "同时使跟班获得{{Trinket144}} 脑形虫与 {{Trinket65}} 长条虫的效果"},
	-- Blessed Penny (find replace):
	[131] = { 17, 25, 30 },
	-- Short Fuse (find replace):
	[133] = { 15, 30, 50 },
	-- Gigante Bean (append)
	[134] = {"增强屁的击退", "增强屁的击退#{{ColorGold}}屁会使敌人混乱3秒"},
	-- Broken Padlock (find replace):
	[136] = {"门, 钥匙方块和金箱子", "{{CR}}门, 钥匙方块, 金箱子, {{ColorGold}}赌博房与挑战房", "{{CR}}门, 钥匙方块, 金箱子, {{ColorGold}}赌博房, 挑战房与头目房"},
	-- 'M (append):
	[138] = {"10%概率重置后的主动道具为满充能", "20%概率重置后的主动道具为满充能"},
	-- Apple of Sodom (find replace):
	[140] = {"拾起红心", "任意{{CR}}的心被拾取"},
	-- Brain Worm (append):
	[144] = {"25%概率发射穿刺泪弹", "50%概率发射穿刺泪弹"},
	-- Devil’s Crown (append):
	[146] = {"{{Trinket174}}25%概率为数字冰箱贴的特殊布局", "{{Trinket174}}33%概率为数字冰箱贴的特殊布局"},
	-- Charged Penny (find replace):
	[147] = {"1格", "2{{CR}}格", "3{{CR}}格"},
	-- Friendship Necklace (append):
	[148] = {"增加跟班的环绕速度", "大幅增加跟班的环绕速度"},
	-- Panic Button (append):
	[149] = {"10%概率不消耗充能", "20%概率不消耗充能"},
	-- Blue Key (append):
	[150] = {"蓝色房间的清理房间奖励变为2倍", "蓝色房间的清理房间奖励变为3倍"},
	-- Flat File (append):
	[151] = {"也对头目, 窥眼刺块与链球生效"},
	-- Telescope Lens (full replace):
	[152] = {
		"{{PlanetariumChance}} +18{{CR}}%星象房概率#如果未进入过星象房额外+15%概率#星象房可以生成在子宫和尸宫",
		"{{PlanetariumChance}} +33{{CR}}%星象房概率#如果未进入过星象房额外+15%概率#星象房可以生成在子宫, 尸宫, {{ColorGold}}阴间和教堂",
	},
	-- Holy Crown (full replace):
	[155] = {
		"{{CR}}在教堂生成{{TreasureRoom}}宝箱房与{{ColorGold}}稀有布局的{{CR}} {{Shop}}商店#{{ColorGold}}教堂的宝箱房会包含2个道具供玩家选择",
		"{{CR}}在教堂生成{{TreasureRoom}}宝箱房与{{ColorGold}}稀有布局的{{CR}} {{Shop}}商店#{{ColorGold}}教堂的宝箱房会包含2个道具供玩家选择#{{ColorGold}}揭示教堂的宝箱房与商店的位置",
	},
	-- Torn Card (find replace):
	[157] = { 15, 10, 5 },
	-- Gilded Key (full replace copying the entire original description, because the Golden version doesn't give a key on pickup):
	[159] = {
		"{{GoldenChest}}将所有箱子(旧箱子/大箱子除外)替换为金箱子#{{GoldenChest}}金箱子可能包含额外的卡牌, 胶囊或饰品#{{GoldenChest}} {{ColorGold}}清理房间后掉落箱子的概率+10%",
		"{{Key}}拾取时获得1个钥匙#{{GoldenChest}}将所有箱子(旧箱子/大箱子除外)替换为金箱子#{{GoldenChest}}金箱子可能包含额外的卡牌, 胶囊或饰品#{{GoldenChest}} {{ColorGold}}清理房间后掉落箱子的概率+10%",
		"{{GoldenChest}}将所有箱子(旧箱子/大箱子除外)替换为金箱子#{{GoldenChest}}金箱子可能包含额外的卡牌, 胶囊或饰品#{{GoldenChest}} {{ColorGold}}清理房间后掉落箱子的概率+20%"
	},
	-- Wicked Crown (full replace):
	[161] = {
		"{{CR}}在阴间生成{{TreasureRoom}}宝箱房与{{ColorGold}}稀有布局的{{CR}} {{Shop}}商店#{{ColorGold}}阴间的宝箱房会包含2个道具供玩家选择",
		"{{CR}}在阴间生成{{TreasureRoom}}宝箱房与{{ColorGold}}稀有布局的{{CR}} {{Shop}}商店#{{ColorGold}}阴间的宝箱房会包含2个道具供玩家选择#{{ColorGold}}揭示阴间的宝箱房与商店的位置",
	},
	-- Nuh Uh! (append):
	[165] = {"生成双倍版本掉落物的概率+10%", "生成双倍版本掉落物的概率+20%"},
	-- Keeper’s Bargain (full replace):
	[171] = {
		"{{DevilRoom}} 100{{CR}}%概率使恶魔交易消耗硬币而不是心",
		"{{DevilRoom}} 100{{CR}}%概率使恶魔交易消耗硬币而不是心#{{ColorGold}}增加恶魔交易打折的概率",
	},
	-- Cursed Penny (append):
	[172] = {"增加传送至特殊房间的概率"},
	-- Your Soul (append):
	[173] = {"10%概率不消耗该饰品", "20%概率不消耗该饰品"},
	-- Strange Key (full replace):
	[175] = {
		"无视计时器打开通往死寂层的门#使用{{Collectible297}}潘多拉魔盒会消耗钥匙并生成{{ColorGold}}8{{CR}}个随机道具池的道具#{{ColorGold}}允许直接打开死寂层的宝箱房和商店",
		"无视计时器打开通往死寂层的门#使用{{Collectible297}}潘多拉魔盒会消耗钥匙并生成{{ColorGold}}10{{CR}}个随机道具池的道具#{{ColorGold}}允许直接打开死寂层的宝箱房和商店",
	},
	-- Temporary Tattoo (append):
	[177] = {"清理挑战房后获得1项随机属性上升", "清理挑战房后获得2项随机属性上升"},
	-- RC Remote (append):
	[179] = {"跟班每14帧造成2点接触伤害", "跟班每14帧造成5点接触伤害"},
	-- Expansion Pack (full replace):
	[181] = {
		"使用主动道具会触发{{ColorGold}}2{{CR}}个额外的1-2充能主动道具的使用效果",
		"使用主动道具会触发{{ColorGold}}2{{CR}}个额外的1-2充能主动道具的使用效果#{{ColorGold}}同时触发一个3充能主动道具的使用效果",
	},
	-- Beth’s Essence (append):
	[182] = {"50%概率进入天使房获得的魂火变为特殊魂火#{{ColorGold}}乞丐会生成特殊魂火", "100%概率进入天使房获得的魂火变为特殊魂火#{{ColorGold}}乞丐会生成特殊魂火"},
	-- Adoption Papers (append):
	[184] = {"跟班永远打折", "跟班永远打折#{{Card92}} {{ColorGold}}商店会出售\"莉莉丝魂石\""},
	-- Sigil of Baphomet (find replace):
	[189] = {"1秒", "1.5{{CR}}秒", "2{{CR}}秒",  "5秒", "7.5{{CR}}秒", "10{{CR}}秒"},
}
EID:updateDescriptionsViaTable(goldenTrinketEffects, EID.descriptions[languageCode].goldenTrinketEffects)

----- Golden Trinkets Data -----

local goldenTrinketData = {
	[5] = {findReplace = true}, -- Purple Heart
	[14] = {append = true}, -- Callus
	[16] = {findReplace = true}, -- Mom's Toenail
	[19] = {findReplace = true}, -- Paper Clip
	[21] = {findReplace = true}, -- Mysterious Paper
	[22] = {append = true}, -- Daemon's Tail
	[28] = {findReplace = true}, -- Broken Ankh
	[33] = {findReplace = true}, -- Umbilical Cord
	[34] = {findReplace = true}, -- Child's Heart
	[36] = {findReplace = true}, -- Rusted Key
	[41] = {findReplace = true}, -- Match Stick
	[43] = {fullReplace = true}, -- Cursed Skull
	[44] = {findReplace = true}, -- Safety Cap
	[45] = {findReplace = true}, -- Ace of Spades
	[52] = {findReplace = true}, -- Counterfeit Penny
	[54] = {findReplace = true}, -- Isaac's Head
	[56] = {fullReplace = true}, -- Judas' Tongue
	[57] = {findReplace = true}, -- ???'s Soul
	[58] = {findReplace = true}, -- Samson's Lock
	[61] = {append = true}, -- The Left Hand
	[62] = {fullReplace = true}, -- Shiny Rock
	[63] = {append = true}, -- Safety Scissors
	[68] = {findReplace = true}, -- Super Magnet
	[70] = {findReplace = true}, -- Louse
	[71] = {append = true}, -- Bob's Bladder
	[76] = {append = true}, -- Poker Chip
	[83] = {append = true}, -- Store Key
	[84] = {append = true}, -- Rib of Greed
	[85] = {findReplace = true}, -- Karma
	[87] = {findReplace = true}, -- Mom's Locket
	[91] = {findReplace = true}, -- Meconium
	[93] = {findReplace = true}, -- Used Diaper
	[94] = {append = true}, -- Fish Tail
	[97] = {findReplace = true}, -- Tonsil
	[98] = {fullReplace = true}, -- Nose Goblin
	[102] = {append = true}, -- Fragmented Card
	[106] = {findReplace = true}, -- Lost Cork
	[107] = {append = true}, -- Crow Heart
	[108] = {findReplace = true}, -- Wallnut
	[109] = {append = true}, -- Duct Tape
	[110] = {findReplace = true}, -- Silver Dollar
	[111] = {append = true}, -- Bloody Crown
	[112] = {append = true}, -- Pay To Win
	[113] = {findReplace = true}, -- Locust of War
	[114] = {findReplace = true}, -- Locust of Pestilence
	[115] = {findReplace = true}, -- Locust of Famine
	[116] = {findReplace = true}, -- Locust of Death
	[117] = {fullReplace = true}, -- Locust of Conquest
	[119] = {findReplace = true}, -- Stem Cell
	[120] = {findReplace = true}, -- Hairpin
	[121] = {findReplace = true}, -- Wooden Cross
	[123] = {append = true}, -- Filigree Feather
	[124] = {append = true}, -- Door Stop
	[126] = {findReplace = true}, -- Rotten Penny
	[127] = {append = true}, -- Baby-Bender
	[131] = {findReplace = true}, -- Blessed Penny
	[133] = {findReplace = true}, -- Short Fuse
	[134] = {append = true}, -- Gigante Bean
	[136] = {findReplace = true}, -- Broken Padlock
	[138] = {append = true}, -- 'M
	[140] = {findReplace = true}, -- Apple of Sodom
	[144] = {append = true}, -- Brain Worm
	[146] = {append = true}, -- Devil’s Crown
	[147] = {findReplace = true}, -- Charged Penny
	[148] = {append = true}, -- Friendship Necklace
	[149] = {append = true}, -- Panic Button
	[150] = {append = true}, -- Blue Key
	[151] = {append = true}, -- Flat File
	[152] = {fullReplace = true}, -- Telescope Lens
	[155] = {fullReplace = true}, -- Holy Crown
	[157] = {findReplace = true}, -- Torn Card
	[159] = {fullReplace = true}, -- Gilded Key
	[161] = {fullReplace = true}, -- Wicked Crown
	[165] = {append = true}, -- Nuh Uh!
	[171] = {fullReplace = true}, -- Keeper’s Bargain
	[172] = {append = true}, -- Cursed Penny
	[173] = {append = true}, -- Your Soul
	[175] = {fullReplace = true}, -- Strange Key
	[177] = {append = true}, -- Temporary Tattoo
	[179] = {append = true}, -- RC Remote
	[181] = {fullReplace = true}, -- Expansion Pack
	[182] = {append = true}, -- Beth’s Essence
	[184] = {append = true}, -- Adoption Papers
	[189] = {findReplace = true}, -- Sigil of Baphomet
}
EID:updateDescriptionsViaTable(goldenTrinketData, EID.descriptions[languageCode].goldenTrinketData)

---------- Cards ----------

local cards = {
	-- Change: Added stone enemies and shields
	[32] = {"32", "冰雹符文", "摧毁房间中所有石头与石头类敌人"}, -- Hagalaz
	-- Change: Added "1% chance for it to be a Crane Game"
	[11] = {"11", "X-命运之轮", "{{Slotmachine}} 生成1台赌博机#{{FortuneTeller}} 24%概率为预言机#{{CraneGame}} 1%概率为夹娃娃机"}, -- X - Wheel of Fortune
	-- Change: Complete rewrite
	[38] = {"38", "桦木符文", "{{Collectible706}} 当前房间中召唤3个无底坑蝗虫"}, -- Berkano
}
EID:updateDescriptionsViaTable(cards, EID.descriptions[languageCode].cards)

---------- Pills ----------

local horsepills = {
	-- Change: Teleports to a special room instead of a random room
	[20] = {"19", "传送胶囊", "将角色传送至特殊房间"}, -- Telepills
	-- Change: Forgets all previously identified pills
	[26] = {"25", "失忆症", "{{CurseLost}} 隐藏本层地图#{{Pill}} 遗忘所有已识别效果的胶囊"}, -- Amnesia
	-- Change: Added full heal information
	[29] = {"28", "止痛药！", "{{HealingRed}} 回满血#{{Timer}} 当前房间中受到的伤害均为半心"}, -- Percs!
	-- Change: Added broken heart
	[30] = {"29", "上瘾！", "{{BrokenHeart}} +1碎心#{{Timer}} 当前房间中受到的伤害均为整心"}, -- Addicted!
	-- Change: Added additional curses information
	[32] = {"31", "？？？", "{{CurseMaze}} 本层施加混乱诅咒的效果#多次使用后添加额外诅咒"}, -- ???
	-- Change: affects whole floor
	[42] = {"41", "好困…", "{{Slow}} 使当前层所有敌人和角色减速"}, -- I'm Drowsy...
	-- Change: affects whole floor
	[43] = {"42", "好兴奋！！！", "使当前层所有敌人和角色加速"}, --I'm Excited!!
	-- Change: Forces the effect to be a golden trinket
	[44] = {"43", "咕噜！", "{{Trinket}} 消耗角色的饰品并永久获得其{{ColorGold}}金饰品{{CR}}效果#{{HealingRed}} 治疗等同于消耗饰品量的红心"}, -- Gulp!
}
EID:updateDescriptionsViaTable(horsepills, EID.descriptions[languageCode].horsepills)

---------- Car Battery ----------

local carBattery = {
	-- Now grants +4 damage instead of +3
	[34] = {2, 4}, -- The Book of Belial
	-- Added info regarding doubled attack
	[47] = "生成2次空袭", -- Doctor's Remote
	-- Added info regarding doubled attack
	[164] = "生成2团火焰", -- The Candle
	-- Added info regarding doubled attack
	[289] = "生成2团火焰", -- Red Candle
	-- Now 23 seconds, if you have car battery
	[441] = {15, 23}, -- Mega Blast
	-- Added info regarding doubled familiar
	[728] = "生成2个恶魔跟班", -- Gello
}
EID:updateDescriptionsViaTable(carBattery, EID.descriptions[languageCode].carBattery)

---------- Conditions ----------
EID.descriptions[languageCode].ConditionalDescs["5.100.566"] = nil -- Dream Catcher (Greed) - In Rep+, the dream preview works in greed mode as well, so no changes needed

local conditions = {
	-- Change: Removed info about Infinte usage of Yum Heart, because its fixed. Now, bleeding hearts provide only half the charge of a regilar heart container
	["5.100.205 (Tainted Magdalene)"] = "会流失的心仅提供一半的充能", -- Sharp Plug + Tainted Magdalene
	-- Added ball of bandages synergy
	["Potato Peeler + Ball of Bandages"] = {"{{Collectible73}} 肉块","{{Collectible207}} 绷带球"}, -- Potato Peeler with Ball of Bandages
}
EID:updateDescriptionsViaTable(conditions, EID.descriptions[languageCode].ConditionalDescs)

---------- Synergies ----------

-- Special Locust effects when Item was eaten by Abyss. Entries here will override the auto-generated descriptions
local abyssSynergies = {
	[706] = "16只不同颜色和效果的蝗虫", -- Abyss
}
EID.descriptions[languageCode].abyssSynergies = {}
EID:updateDescriptionsViaTable(abyssSynergies, EID.descriptions[languageCode].abyssSynergies)

---------- Transformations ----------
EID.descriptions[languageCode].transformations[17] = "死灵法师" -- Add Necromancer transformation

-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
