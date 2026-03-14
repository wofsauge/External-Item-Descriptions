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
	-- Change: added "Blocks enemy tears"
	[281] = {"281", "受气包", "诱饵跟班#敌人有时会以他而不是角色作为目标#可以抵挡敌方泪弹" }, -- Punching Bag
	-- Change: added "+0.2 Shot speed"
	[329] = {"329", "鲁多维科科技", "↑ {{Shotspeed}} 弹速+0.2#角色的泪弹由1颗巨大的可控泪弹取代"}, -- The Ludovico Technique
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
	-- Change: reduced the chance of removing the most recently acquired item to 50%
	[482] = {"482", "遥控器", "将角色换为其他随机角色#50%概率移除最近收集到的1个道具"}, -- Clicker
	-- Change: Complete rewrite
	[510] = {"510", "精神错乱", "生成1个友好的精神错乱版的头目#切换房间持续存在#{{Warning}} 一次只能激活1个头目#生成的头目的血量会随时间流失"}, -- Delirious
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = {"560", "好疼", "{{Timer}} 受伤时, 在当前房间中获得:#↑ {{Tears}} 首次受伤射速+1.2#↑ {{Tears}} 后续受伤射速+0.4#在角色周围释放10颗泪弹#泪弹击中时留下水迹"}, -- It Hurts
	-- Change: Added ring of fire on impact description
	[593] = {"593", "火星", "双击移动键使角色冲锋#{{Damage}} 冲锋时角色无敌, 造成4x角色伤害+8的伤害#{{Timer}} 3秒冷却#{{Burning}} 撞击时在角色周围生成火圈" }, -- Mars
	-- Change: Heals 2 hearts instead of 1/2
	[594] = {"594", "木星", "↑ {{EmptyHeart}} +2空心之容器#↓ {{Speed}} 移速-0.3#{{HealingRed}} 治疗2红心#{{Speed}} 静止不动时, 移速逐渐升高至+0.5#{{Poison}} 移动时释放毒气#{{Poison}} 免疫中毒"}, -- Jupiter
	-- Change: Complete rewrite
	[632] = {"632", "邪眼护符", "↑ {{Luck}} 幸运+2#免疫{{Burning}}火焰伤害, {{Confusion}}混乱, {{Fear}}恐惧, {{Slow}}蜘蛛网, {{Poison}}毒气效果#获得1秒水迹免疫"}, -- Evil Charm
	-- Change: Adjusted the stat boost to match Hallowed Ground
	[651] = {"651", "伯列恒之星", "从本层初始房间向{{BossRoom}}头目房缓慢移动#角色领先则移动加快, 角色落后则移动减慢#站在光环中获得:#↑ {{Damage}} 伤害修正x1.2#↑ {{Tears}} 射速修正x2.5#追踪泪弹#50%几率阻挡伤害" }, -- Star of Bethlehem
	-- Change: Added Shop as a new destination
	[660] = {"660", "牌意解读", "在每层的初始房间中生成2个传送门#离开房间时传送门消失#{{Blank}} {{ColorRed}}红色:{{CR}}{{BossRoom}}头目房#{{Blank}} {{ColorYellow}}黄色:{{CR}}{{TreasureRoom}}宝箱房#{{Blank}} {{ColorBlue}}蓝色:{{CR}}{{SecretRoom}}隐藏房#{{Blank}} {{ColorGreen}}绿色:{{CR}}{{Shop}}商店"}, -- Card Reading
	-- Change: Complete rewrite
	[681] = {"681", "黑洞宝宝", "双击发射键可发射传送门#发射后造成接触伤害#消耗经过的掉落物#消耗掉落物会提升其尺寸, 伤害并生成1只蓝苍蝇#消耗2-3掉落物生成至特殊房间的传送门, 跟班在本层后续中消失#房间中的内容本局持续存在"}, -- Lil Portal
	-- Change: Added into for first usage
	[685] = {"685", "魂火罐", "生成2随机魂火#每次使用多生成1魂火, 最多12个"}, -- Jar of Wisps
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

---------- Cards ----------

local cards = {
	-- Change: Added "1% chance for it to be a Crane Game"
	[11] = {"11", "X-命运之轮", "生成1台{{Slotmachine}}赌博机/{{FortuneTeller}}预言机#{{CraneGame}} 1%概率生成1个夹娃娃机"}, -- X - Wheel of Fortune
	-- Change: Complete rewrite
	[38] = {"38", "桦木符文", "{{Collectible706}} 在当前房间中，生成3个无底坑蝗虫"}, -- Berkano
}
EID:updateDescriptionsViaTable(cards, EID.descriptions[languageCode].cards)

---------- Pills ----------

local horsepills = {
	-- Change: Forgets all previously identified pills
	[26] = {"25", "失忆症", "{{CurseLost}} 隐藏本层地图#{{Pill}} 清除所有已记录的胶囊效果"}, -- Amnesia
}
EID:updateDescriptionsViaTable(horsepills, EID.descriptions[languageCode].horsepills)

---------- Conditions ----------
EID.descriptions[languageCode].ConditionalDescs["5.100.566"] = nil -- Dream Catcher (Greed) - In Rep+, the dream preview works in greed mode as well, so no changes needed

local conditions = {
	-- Change: Removed info about Infinte usage of Yum Heart, because its fixed. Now, bleeding hearts provide only half the charge of a regilar heart container
	["5.100.205 (Tainted Magdalene)"] = "会流失的心仅提供一半的充能", -- Sharp Plug + Tainted Magdalene
}
EID:updateDescriptionsViaTable(conditions, EID.descriptions[languageCode].ConditionalDescs)

---------- Synergies ----------

-- Special Locust effects when Item was eaten by Abyss. Entries here will override the auto-generated descriptions
local abyssSynergies = {
	[706] = "16只不同效果的蝗虫", -- Abyss
}
EID.descriptions[languageCode].abyssSynergies = {}
EID:updateDescriptionsViaTable(abyssSynergies, EID.descriptions[languageCode].abyssSynergies)

-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
