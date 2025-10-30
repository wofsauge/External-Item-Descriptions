---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 13] = "{{Poison}} 接触敌人使其中毒", -- The Virus
	-- Full old Desc: "↑ {{Speed}} 移速+0.2#{{Poison}} 接触敌人使其中毒#角色每秒造成48点接触伤害"
	-- English: "{{Poison}} Touching enemies poisons them"

	[C_ID .. 42] = "向发射方向投掷头#{{Poison}} 头接触到敌人时爆炸并产生毒气#造成1x角色伤害+185的伤害", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes where it lands and creates a poison cloud#Deals Isaac's damage + 185"

	[C_ID .. 46] = "提升房间清理奖励概率#赌博时赢的概率更高#将一些坏胶囊变成好胶囊", -- Lucky Foot
	-- Full old Desc: "↑ {{Luck}} 幸运+1#提升房间清理奖励概率#赌博时赢的概率更高#将一些坏胶囊变成好胶囊"
	-- English: "Better chance to win while gambling#Increases room clearing drop chance#Turns bad pills into good ones"

	[C_ID .. 52] = "{{Damage}} 该炸弹造成10x角色伤害#若结果超过60, 则改为5x+30", -- Dr. Fetus
	-- Full old Desc: "↓ {{Tears}} 射速修正x0.4#{{Bomb}} 角色的泪弹由炸弹取代#{{Damage}} 该炸弹造成10x角色伤害#若结果超过60, 则改为5x+30"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 10x Isaac's tear damage#If that results in over 60 damage, they instead deal 5x damage +30"

	[C_ID .. 53] = "角色吸引掉落物#自动打开2格远的箱子, 忽略刺箱伤害", -- Magneto
	-- English: "Pickups are attracted to Isaac#Opens chests from 2 tiles away, ignoring damage of Spike Chests"

	[C_ID .. 69] = "{{Chargeable}} 可蓄力泪弹#{{Damage}} 伤害随蓄力时间提升, 最高4x", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x"

	[C_ID .. 78] = "使用后, 本层头目由天启骑士取代", -- Book of Revelations
	-- Full old Desc: "{{SoulHeart}} +1魂心#{{AngelDevilChance}} 持有时, 恶魔房/天使房概率+17.5%#使用后, 本层头目由天启骑士取代"
	-- English: "Using the item replaces the floor's boss with a horseman"

	[C_ID .. 84] = "打开1个跳过本层的活板门#{{LadderRoom}} 在有装饰(草/碎石/纸/宝石等)的地板上使用时, 改为生成暗门", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} Opens a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[C_ID .. 91] = "揭示相邻房间的类型#{{SecretRoom}} 可以揭示隐藏房和超级隐藏房#阻挡掉落弹幕的伤害", -- Spelunker Hat
	-- English: "Rooms on the map are revealed from further away#{{SecretRoom}} Can also reveal Secret and Super Secret Rooms#Prevents damage from falling projectiles"

	[C_ID .. 114] = "角色的泪弹由可投掷的菜刀取代#{{Damage}} 持拿时菜刀造成2x角色伤害, 蓄力1/3时为上限6x#继续蓄力只会增加投掷距离#返回角色时, 伤害降至2x", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and caps at 6x damage at 1/3 charge#Charging further only increases throwing range#Damage reduces to 2x when returning to Isaac"

	[C_ID .. 123] = "{{Timer}} 在本层生成1个随机跟班", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the floor"

	[C_ID .. 126] = "↑ {{Damage}} 在当前房间中伤害+1.2#{{Warning}} 对角色造成1心伤害#在房间中首次使用后, 改为造成半心伤害#{{Heart}} 优先消耗红心", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first"

	[C_ID .. 140] = "{{Poison}} 免疫中毒", -- Bob's Curse
	-- Full old Desc: "{{Bomb}} +5炸弹#{{Poison}} 角色的炸弹会产生毒气#{{Poison}} 免疫中毒"
	-- English: "{{Poison}} Isaac's bombs create a cloud of poison#{{Poison}} Poison immunity"

	[C_ID .. 142] = "{{SoulHeart}} 当受伤至半心时, 角色获得1魂心#每房间只会发生一次#离开并重进房间可以再次触发#{{Warning}} 献血不触发", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again#{{Warning}} Doesn't trigger from health donations"

	[C_ID .. 147] = "使用时, 角色持拿铁镐#持拿时, 允许角色打碎当前房间中接触的石头, 隐藏房入口, 并对敌人造成伤害#攻击时, 降低铁镐的充能#进入新层时, 铁镐完全充能", -- Notched Axe
	-- English: "Using the item makes Isaac hold the axe#Holding the axe allows Isaac to break rocks, secret room entrances and damage enemies#Landing a hit with the axe reduces its charge#Entering a new floor fully recharges the axe"

	[C_ID .. 149] = "角色的泪弹呈抛物线射出#{{Poison}} 泪弹会爆炸并使击中的敌人中毒", -- Ipecac
	-- Full old Desc: "↑ {{Damage}} 伤害+40#↓ {{Tears}} 射速修正x0.33#↓ {{Range}} 射程x0.8#↓ {{Shotspeed}} 弹速修正x0.8#角色的泪弹呈抛物线射出#{{Poison}} 泪弹会爆炸并使击中的敌人中毒"
	-- English: "Isaac's tears are fired in an arc#{{Poison}} The tears explode and poison enemies where they land"

	[C_ID .. 152] = "角色右眼泪弹由持续激光取代#{{Damage}} 激光每秒造成2x角色伤害", -- Technology 2
	-- Full old Desc: "↓ {{Tears}} 射速修正x0.67#角色右眼泪弹由持续激光取代#{{Damage}} 激光每秒造成2x角色伤害"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} The laser deals 2x Isaac's damage per second"

	[C_ID .. 171] = "{{Slow}} 使敌人减速4秒#被击杀敌人生成蓝蜘蛛", -- Spider Butt
	-- Full old Desc: "{{Slow}} 使敌人减速4秒#所有敌人受到10点伤害#被击杀敌人生成蓝蜘蛛"
	-- English: "{{Slow}} Slows down enemies for 4 seconds#Enemies killed by the item spawn blue spiders"

	[C_ID .. 178] = "{{Throwable}} 向角色发射方向投掷自身#击中敌人时, 造成7点伤害并破碎#{{Petrify}} 留下的水迹能石化敌人并造成伤害", -- Holy Water
	-- English: "{{Throwable}} Launches itself in the direction Isaac shoots#Breaks and deals 7 damage upon hitting an enemy#{{Petrify}} Leaves a pool of petrifying + damaging creep"

	[C_ID .. 180] = "{{Poison}} 受伤时, 角色放出一连串屁#{{Poison}} 屁会留下毒气并偏转弹幕", -- The Black Bean
	-- English: "Isaac farts multiple times when damaged#{{Poison}} The farts leave poison clouds and deflects projectiles"

	[C_ID .. 186] = "{{Heart}} 优先消耗红心", -- Blood Rights
	-- Full old Desc: "对所有敌人造成40点伤害#{{Warning}} 对角色造成1心伤害#在房间中首次使用后, 改为造成半心伤害#{{Heart}} 优先消耗红心"
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first"

	[C_ID .. 203] = "掉落物有50%概率成对出现", -- Humbleing Bundle
	-- English: "Pickups have a 50% chance to be doubled"

	[C_ID .. 205] = "{{Battery}} 使用未完全充能的主动道具时, 以半心充能1格#{{Heart}} 优先消耗红心", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of half a heart per missing charge#{{Heart}} Removes Red Hearts first"

	[C_ID .. 222] = "按住发射键会使泪弹悬空#松开后, 所有泪弹会向发射方向继续前进", -- Anti-Gravity
	-- Full old Desc: "↑ {{Tears}} 射速+1#按住发射键会使泪弹悬空#松开后, 所有泪弹会向发射方向继续前进"
	-- English: "Holding the fire buttons causes tears to hover in mid-air#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "免疫爆炸和火焰#{{HealingRed}} 受爆炸击中时治疗半红心", -- Pyromaniac
	-- Full old Desc: "{{Bomb}} +5炸弹#免疫爆炸和火焰#{{HealingRed}} 受爆炸击中时治疗半红心"
	-- English: "Immunity to explosions and fire#{{HealingRed}} Getting hit by explosions heals half a heart"

	[C_ID .. 224] = "泪弹击中后会分裂为4颗#分裂的泪弹造成的伤害减半", -- Cricket's Body
	-- Full old Desc: "↑ {{Tears}} 射速+0.5#↓ {{Range}} 射程修正x0.8#泪弹击中后会分裂为4颗#分裂的泪弹造成的伤害减半"
	-- English: "Tears split in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "{{SoulHeart}} 受伤时, 8%概率生成1魂心#{{Luck}} 每级幸运+2%概率#{{HalfHeart}} 敌人死亡时概率掉落1半红心", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a 8% chance to spawn a Soul Heart#{{Luck}} +2% chance per luck#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 230] = "{{Fear}} 15%概率发射恐惧泪弹", -- Abaddon
	-- Full old Desc: "↑ {{Speed}} 移速+0.2#↑ {{Damage}} 伤害+1.5#↓ {{BlackHeart}} 将所有心之容器转换为黑心#{{BlackHeart}} +2黑心#{{Fear}} 15%概率发射恐惧泪弹"
	-- English: "{{BlackHeart}} Converts all heart containers into Black Hearts#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 232] = "{{Slow}} 使房间中的所有敌人的攻击和移速降至80%", -- Stop Watch
	-- Full old Desc: "↑ {{Speed}} 移速+0.3#{{Slow}} 使房间中的所有敌人的攻击和移速降至80%"
	-- English: "{{Slow}} Enemies are permanently slowed down to 80% of their attack and movement speed"

	[C_ID .. 248] = "蓝蜘蛛/蓝苍蝇造成的伤害翻倍#蜘蛛/苍蝇类跟班变得更强", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage#Spider and fly familiars become stronger"

	[C_ID .. 256] = "{{Burning}} 免疫火焰(弹幕除外)", -- Hot Bombs
	-- Full old Desc: "{{Bomb}} +5炸弹#{{Burning}} 角色的炸弹造成接触伤害#{{Burning}} 角色的炸弹爆炸时会留下火焰#{{Burning}} 免疫火焰(弹幕除外)"
	-- English: "{{Burning}} Isaac's bombs deal contact damage#{{Burning}} Isaac's bombs leave a flame where they explode#{{Burning}} Fire immunity (except projectiles)"

	[C_ID .. 261] = "↓ 泪弹前进越远伤害越低#泪弹在最近时近距离造成3x伤害, 0.8秒后无伤害", -- Proptosis
	-- Full old Desc: "↑ {{Damage}} 伤害+0.5#↓ 泪弹前进越远伤害越低#泪弹在最近时近距离造成3x伤害, 0.8秒后无伤害"
	-- English: "↓ Tears deal less damage the longer they are airborne#Tears deal 3x damage at point blank range and no damage after 0.8 seconds"

	[C_ID .. 262] = "受伤至1心时, 对房间中所有敌人造成伤害#{{Collectible35}} 黑心和类似死灵之书的效果造成的伤害翻倍", -- Missing Page 2
	-- Full old Desc: "{{BlackHeart}} +1黑心#受伤至1心时, 对房间中所有敌人造成伤害#{{Collectible35}} 黑心和类似死灵之书的效果造成的伤害翻倍"
	-- English: "Taking damage down to 1 heart damages all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[C_ID .. 263] = "{{Rune}} 触发角色持有的符文/魂石的效果", -- Clear Rune
	-- Full old Desc: "{{Rune}} 拾起时, 生成1符文#{{Rune}} 触发角色持有的符文/魂石的效果"
	-- English: "{{Rune}} Triggers the effect of the rune Isaac holds without using it"

	[C_ID .. 276] = "角色无敌#生成跟随角色的心脏#角色发射时心脏蓄力, 停止发射时释放散射泪弹#{{Warning}} 心脏受伤时, 角色也会受伤", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#The heart charges up when Isaac fires and releases a burst of tears when he stops#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 278] = "{{Heart}} 捡起附近的红心#每捡起1.5红心, 生成1黑心/符文/卡牌/胶囊/蜘蛛", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#Spawns a Black Heart, rune, card, pill, or spider for every 1.5 hearts picked up"

	[C_ID .. 280] = "在有敌人的房间中随机生成蓝蜘蛛, 最多5只#{{Charm}} 魅惑接触的敌人", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms#{{Charm}} Charms enemies it comes in contact with"

	[C_ID .. 283] = "复制房间中的1掉落物#重置角色的移速, 射速, 伤害, 射程和被动道具#重置房间中的所有底座道具, 掉落物和石头#重新开始当前房间, 重生所有敌人并降级", -- D100
	-- English: "Duplicates 1 pickup in the room#Rerolls Isaac's speed, tears, damage, range and passive items#Rerolls all pedestal items, pickups and rocks in the room#Restarts the room, respawns all enemies and devolves them"

	[C_ID .. 285] = "使房间中所有敌人降级#例如, 所有红苍蝇变成黑苍蝇", -- D10
	-- English: "Devolves all enemies in the room#For instance, all Red Flies become Black Flies"

	[C_ID .. 286] = "触发角色持有的卡牌的效果", -- Blank Card
	-- English: "Triggers the effect of the card Isaac holds without using it"

	[C_ID .. 287] = "高亮当前房间中的暗门石头与标记石头#如果三者都已拥有, 获得X光透视效果", -- Book of Secrets
	-- Full old Desc: "高亮当前房间中的暗门石头与标记石头#{{Timer}} 在本层获得以下三种效果之一:#{{Collectible54}} 藏宝图#{{Collectible21}} 指南针 #{{Collectible246}} 蓝地图#只获得尚未激活的效果#如果三者都已拥有, 获得X光透视效果"
	-- English: "Highlights tinted and crawlspace rocks in the room#{{Timer}} Receive one of these effects for the floor:#{{IND}}{{NameC54}}#{{IND}}{{NameC21}}#{{IND}}{{NameC246}}#Only grants effects not already active#{{Collectible76}} If all effects are active, grants X-Ray Vision"

	[C_ID .. 289] = "投掷红火#火焰可造成接触伤害, 阻挡弹幕, 在造成或阻挡4次伤害后或10秒后消失", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 4 times or after 10 seconds"

	[C_ID .. 291] = "使非头目敌人变成大便#立即击杀便便类敌人和头目#熄灭火堆并将房间充满水#将岩浆坑变为可行走的地面", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses#Extinguishes fire places and fills the room with water#Turns lava pits into walkable ground"

	[C_ID .. 292] = "{{DevilRoom}} 在头目战斗前使用, 头目房道具会变成恶魔交易#购买恶魔交易与在恶魔房后果相同#不影响虚空层的底座道具", -- Satanic Bible
	-- Full old Desc: "{{BlackHeart}} +1黑心#{{DevilRoom}} 在头目战斗前使用, 头目房道具会变成恶魔交易#购买恶魔交易与在恶魔房后果相同#不影响虚空层的底座道具"
	-- English: "{{DevilRoom}} Using the item before a boss fight makes the boss reward a devil deal#Purchasing these devil deals has the same consequences as those in Devil Rooms#Does not affect item pedestals in The Void floor"

	[C_ID .. 294] = "击退附近的敌人和弹幕#将敌人击退到障碍物上会造成10点伤害", -- Butter Bean
	-- English: "Knocks back nearby enemies and projectiles#Enemies pushed into obstacles take 10 damage"

	[C_ID .. 295] = "对房间中所有敌人造成2x角色伤害+10的伤害#{{Coin}} 花费1硬币", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage + 10 to all enemies in the room#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "{{Heart}} 将1魂心/黑心转换为1心之容器", -- Converter
	-- English: "{{Heart}} Converts 1 Soul or Black Heart into 1 heart container"

	[C_ID .. 297] = "{{NoLB}}根据所在层生成奖励:#1章1: 2{{SoulHeart}}; 1章2: 2{{Bomb}}+2{{Key}}#{{NoLB}}2章1: 1{{BossRoom}}道具; 2章2: 2章1+2{{SoulHeart}}#3章1: 4{{SoulHeart}}; 3章2: 20{{Coin}}#4章1: 2{{BossRoom}}道具; 4章2: {{Collectible33}}圣经#???/虚空: 无#阴间: 1{{DevilRoom}}道具+1{{BlackHeart}}; 教堂: 1{{AngelRoom}}道具+1{{EternalHeart}}#{{NoLB}}暗室: 解锁{{Collectible523}}搬家盒; 玩具箱: 1{{Coin}}#家: {{Collectible580}}红钥匙", -- Pandora's Box
	-- English: "{{NoLB}}Spawns rewards based on floor:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#{{NoLB}}C1: Boss item; C2: C1 + 2{{SoulHeart}}#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Boss items#W2: {{Collectible33}} The Bible#???/Void: Nothing#Sheol: Devil item + 1{{BlackHeart}}#Cathe: Angel item + 1{{EternalHeart}}#{{NoLB}}Dark Room: Unlocks {{Collectible523}} Moving Box#Chest: 1{{Coin}}#Home: {{Collectible580}} Red Key"

	[C_ID .. 300] = "移速大于0.85时, 角色免疫接触伤害, 并对敌人造成25点接触伤害", -- Aries
	-- Full old Desc: "↑ {{Speed}} 移速+0.25#移速大于0.85时, 角色免疫接触伤害, 并对敌人造成25点接触伤害"
	-- English: "Moving above 0.85 Speed makes Isaac immune to contact damage and deals 25 damage to enemies"

	[C_ID .. 308] = "角色留下水迹#{{Damage}} 水迹每秒造成0.66x角色伤害, 并继承角色的泪弹效果", -- Aquarius
	-- English: "Isaac leaves a trail of creep#{{Damage}} The creep deals 66% of Isaac's damage per second and inherits his tear effects"

	[C_ID .. 315] = "角色的泪弹吸引敌人, 掉落物和饰品#泪弹落地时效果吸引更强", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets#The attraction effect is much stronger at the end of the tears' path"

	[C_ID .. 319] = "随机方向发射与角色相同效果的泪弹#{{Damage}} 造成0.75x角色伤害", -- Cain's Other Eye
	-- English: "Shoots tears in random directions with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 323] = "向8个方向发射泪弹#泪弹复制角色泪弹的效果, 外加5点伤害#发射泪弹时充能", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects, plus 5 damage#Recharges by shooting tears"

	[C_ID .. 325] = "{{Timer}} 当前房间中将角色的头变为不动的跟班#独立控制角色身体, 向发射方向抛射泪弹", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The body is controlled separately and gushes blood tears in the direction Isaac is shooting"

	[C_ID .. 326] = "按住使用键时消耗充能条#充能条为空时角色暂时无敌#无敌时, 角色接触到敌人会召唤光柱#如果阻挡伤害时机完美, 则发射4向圣光并获得短暂护盾#{{Warning}} 按住过久会对角色造成伤害", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#Isaac summons light beams on contact with enemies when invincible#If damage is blocked with perfect timing, shoot a 4-way holy beam and gain a brief shield#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 330] = "大幅降低击退力", -- Soy Milk
	-- Full old Desc: "↑ {{Tears}} 射速修正x5.5#↓ {{Damage}} 伤害修正x0.2#↓ {{Tearsize}} 泪弹尺寸-0.3#大幅降低击退力"
	-- English: "Drastically reduces knockback"

	[C_ID .. 331] = "{{Damage}} 泪弹具有光环, 每秒造成60点伤害", -- Godhead
	-- Full old Desc: "↑ {{Damage}} 伤害+0.5#↓ {{Tears}} 射速-0.3#↓ {{Shotspeed}} 弹速-0.3#追踪泪弹#{{Damage}} 泪弹具有光环, 每秒造成60点伤害"
	-- English: "Tears gain an aura that deals 60 damage per second"

	[C_ID .. 344] = "{{Trinket41}} 生成火柴棍", -- Match Book
	-- Full old Desc: "{{BlackHeart}} +1黑心#{{Bomb}} 生成3炸弹#{{Trinket41}} 生成火柴棍"
	-- English: "{{Trinket41}} Spawns Match Stick"

	[C_ID .. 352] = "{{Damage}} 发射1颗巨大的穿刺灵体泪弹, 造成10x角色伤害#{{Warning}} 持有时受伤:#↓ 额外受到2心伤害#↓ 大炮破碎持续数个房间#↑ {{Range}} 在当前房间中射程+1.5, 并留下血迹#额外伤害不会击杀以撒#自伤不会触发该效果", -- Glass Cannon
	-- English: "{{Damage}} Shoots a large piercing spectral tear that does 10x Isaac's damage#{{Warning}} While held, taking damage:#↓ Removes an extra 2 hearts of health#↓ Breaks the cannon for a few rooms#↑ {{Range}} +1.5 Range and leaves a blood trail for the room#The extra damage can't kill Isaac#Self-damage does not trigger the effect"

	[C_ID .. 360] = "发射泪弹, 效果和属性与角色一致#{{Damage}} 造成0.75x角色伤害", -- Incubus
	-- English: "Shoots tears with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 365] = "沿着房间中的墙/障碍物行进#吸引附近敌人的仇恨", -- Lost Fly
	-- Full old Desc: "沿着房间中的墙/障碍物行进#每秒造成30点接触伤害#吸引附近敌人的仇恨"
	-- English: "Moves along walls/obstacles in the room#Nearby enemies target the fly"

	[C_ID .. 367] = "{{Slow}} 角色的炸弹会粘在敌人身上并留下减速水迹#用炸弹击杀敌人会生成蓝蜘蛛", -- Sticky Bombs
	-- Full old Desc: "{{Bomb}} +5炸弹#{{Slow}} 角色的炸弹会粘在敌人身上并留下减速水迹#用炸弹击杀敌人会生成蓝蜘蛛"
	-- English: "{{Slow}} Isaac's bombs stick to enemies and leave white slowing creep#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "↑ {{Tears}} 持续向单方向发射会逐渐提高射速, 最多为原来的2x", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually increases fire rate up to 200% and decreases accuracy"

	[C_ID .. 374] = "{{Damage}} 光柱造成3x角色伤害", -- Holy Light
	-- Full old Desc: "10%概率发射圣光泪弹, 击中时会产生光柱#{{Luck}} 幸运9: 50%概率#{{Damage}} 光柱造成3x角色伤害"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot holy tears, which spawn a beam of light on hit#{{Damage}} The beams deals 3x Isaac's damage"

	[C_ID .. 375] = "免疫爆炸和掉落弹幕#25%概率反弹敌人弹幕", -- Host Hat
	-- English: "Grants immunity to explosions and falling projectiles#25% chance to reflect enemy shots"

	[C_ID .. 376] = "商店物品购买后会立刻补货#每次补货价格都会提高", -- Restock
	-- English: "Buying an item from a Shop restocks it instantly#Restocked items increase in price each time"

	[C_ID .. 380] = "{{Coin}} 钥匙方块, 门和箱子必须用硬币打开而不是钥匙", -- Pay To Play
	-- Full old Desc: "{{Coin}} +5硬币#{{Coin}} 钥匙方块, 门和箱子必须用硬币打开而不是钥匙"
	-- English: "Locked blocks, doors and chests must be opened with coins instead of keys"

	[C_ID .. 382] = "可以扔向敌人将其捕捉#{{Friendly}} 下一次使用则会生成相同的友好敌人#靠近捕捉后的球会立即将道具充能", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns the capture as a friendly companion#Walking over the ball after a capture instantly recharges the item"

	[C_ID .. 384] = "{{Chargeable}} 弹出并在房间中反弹, 速度基于蓄力时间#根据蓄力时间, 每次击中造成5-20点接触伤害", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-20 contact damage per hit depending on speed"

	[C_ID .. 386] = "将障碍物重置为其他随机类型的障碍物(大便/罐子/TNT/红大便/石头等)#小概率重置为按钮/击杀按钮/暗门/活板门", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)#Small chance to reroll obstacles into buttons, killswitches, crawlspaces or trapdoors"

	[C_ID .. 389] = "{{Rune}} 每7-8个房间生成1随机符文/魂石", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune or Soul Stone every 7-8 rooms"

	[C_ID .. 391] = "敌人弹幕会击中其他敌人, 并引起内讧", -- Betrayal
	-- English: "Enemies can hit each other with their projectiles, and start infighting"

	[C_ID .. 393] = "{{Poison}} 15%概率发射有毒泪弹#{{Poison}} 使接触的敌人中毒#{{BlackHeart}} 因接触而中毒的敌人死亡时, 20%概率掉落黑心", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Enemies killed by contact poison have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "角色自动向地上的可控红色标记发射泪弹#跟班也向标记发射#按掉落键({{ButtonRT}})停止发射并重置标记位置", -- Marked
	-- Full old Desc: "↑ {{Tears}} 射速+0.7#↑ {{Range}} 射程+3#角色自动向地上的可控红色标记发射泪弹#跟班也向标记发射#按掉落键({{ButtonRT}})停止发射并重置标记位置"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground#Familiars shoot towards the target too#You can stop shooting and reset the target's location by pressing the drop button ({{ButtonRT}})"

	[C_ID .. 395] = "{{Chargeable}} 角色的泪弹由可蓄力的激光环取代#激光环尺寸和伤害随蓄力时间增加, 最多增加1x", -- Tech X
	-- English: "Isaac's tears are replaced by a chargeable laser ring#Ring size and damage increases up to 100% with charge time"

	[C_ID .. 399] = "{{Chargeable}} 持续发射泪弹2.35秒后, 松开发射键会产生黑硫磺火圈#黑圈在2秒内造成30x角色伤害", -- Maw of the Void
	-- English: "{{Chargeable}} Firing tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds"

	[C_ID .. 401] = "25%概率发射粘性泪弹#粘住的泪弹在几秒后变大并爆炸, 造成1x角色伤害+60的伤害", -- Explosivo
	-- English: "25% chance to shoot sticky tears#Sticky tears grow and explode after a few seconds, dealing Isaac's damage +60"

	[C_ID .. 404] = "受击时, 10%概率放屁, 效果为{{Charm}}魅惑/{{Poison}}中毒/击退三种其一#屁造成5-6点伤害", -- Farting Baby
	-- Full old Desc: "阻挡弹幕#受击时, 10%概率放屁, 效果为{{Charm}}魅惑/{{Poison}}中毒/击退三种其一#屁造成5-6点伤害"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies#The farts deal 5-6 damage"

	[C_ID .. 405] = "{{Throwable}} 可投掷(双击发射键)#重置其接触到的敌人和掉落物", -- GB Bug
	-- English: "{{Throwable}} Throwable (double-tap shoot)#Rerolls enemies and pickups it comes in contact with"

	[C_ID .. 407] = "↑ 根据光环颜色对角色属性进行增强#受伤时, 移除光环, 在下个房间获得新的光环#{{ColorYellow}}黄色{{CR}} = ↑ {{Speed}} 移速+0.5#{{ColorBlue}}蓝色{{CR}} = ↑ {{Tears}} 射速+2#{{ColorRed}}红色{{CR}} = ↑ {{Damage}} 伤害+4#{{ColorOrange}}橙色{{CR}} = ↑ {{Range}} 射程+3", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and grants a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} +2 Fire rate#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +3 Range"

	[C_ID .. 408] = "25%概率在被击杀敌人周围生成黑色硫磺火圈#黑圈2秒内造成30x角色伤害#{{Luck}} 每级幸运+2.5%概率", -- Athame
	-- English: "25% chance for a black brimstone ring to spawn around killed enemies#It deals 30x Isaac's damage over 2 seconds#{{Luck}} +2.5% chance per luck"

	[C_ID .. 416] = "{{Coin}} 若清理房间没有奖励, 则生成1-3硬币#{{Coin}} 提高硬币上限至999", -- Deep Pockets
	-- English: "{{Coin}} If clearing a room would yield no reward, spawns 1-3 coins#{{Coin}} Increases the coin cap to 999"

	[C_ID .. 417] = "在房间中漂浮的跟班, 产生伤害光环, 每秒造成7.5-10点伤害#↑ {{Damage}} 站在光环中伤害修正x1.5", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 7.5-10 damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 421] = "{{Charm}} 魅惑近距离的所有敌人", -- Kidney Bean
	-- English: "{{Charm}} Charms all enemies in close range"

	[C_ID .. 422] = "将角色带回上个房间, 回退所有使用时房间的行动#每层仅可使用三次#{{Collectible66}} 用尽次数后与沙漏作用一致, 即使敌人减速8秒", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in#The rewind can be used three times per floor#{{Collectible66}} Acts as The Hourglass when out of rewinds, which slows enemies down for 8 seconds"

	[C_ID .. 432] = "角色的炸弹爆炸时, 63%概率生成1随机掉落物, 15%概率魅惑炸到的敌人#每次生成掉落物后, 本层上述生成概率-1%", -- Glitter Bombs
	-- Full old Desc: "{{Bomb}} +5炸弹#角色的炸弹爆炸时, 63%概率生成1随机掉落物, 15%概率魅惑炸到的敌人#每次生成掉落物后, 本层上述生成概率-1%"
	-- English: "{{Charm}} Bombs have a 63% chance to drop a random pickup and a 15% chance to charm enemies when they explode#The pickup spawn chance goes down by 1% for each spawn this floor"

	[C_ID .. 433] = "紧跟着角色的影子#{{Friendly}} 当敌人接触影子时, 在当前房间中生成1个友好的黑蛆", -- My Shadow
	-- Full old Desc: "紧跟着角色的影子#{{Friendly}} 当敌人接触影子时, 在当前房间中生成1个友好的黑蛆# 黑蛆每秒造成8.7点伤害"
	-- English: "A small shadow follows Isaac#{{Friendly}} When an enemy touches the shadow a friendly black charger spawns for the room"

	[C_ID .. 437] = "重新开始房间并重生所有敌人#能够从同一房间获得多次清理房间奖励", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room"

	[C_ID .. 444] = "角色每发射15颗泪弹, 抛射大量泪弹", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears"

	[C_ID .. 448] = "受伤时:#{{Heart}} 25%概率生成1红心#{{BleedingOut}} 角色流血, 向角色发射方向喷泪弹#流血每20秒造成半红心伤害#治疗红心, 红心用尽或下一次受伤致死时, 流血停止", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{BleedingOut}} Isaac bleeds, spewing tears in the direction he is shooting#The bleeding does half a Red Heart of damage every 20 seconds#The bleeding stops if a Red Heart is healed, all Red Hearts are empty, or the next damage would kill Isaac"

	[C_ID .. 450] = "{{Damage}} 每发射20颗泪弹, 发射1颗的硬币泪弹, 造成1.5x角色伤害+10的伤害#{{Petrify}} 被硬币泪弹击中的敌人石化并变为金块#{{Coin}} 击杀金敌人掉落1-4硬币#{{Warning}} 发射硬币泪弹消耗1硬币", -- Eye of Greed
	-- English: "{{Damage}} Every 20 tears, Isaac shoots a coin tear that deals x1.5 +10 damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-3 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "{{Card}} 使用的卡牌效果翻倍或增强", -- Tarot Cloth
	-- Full old Desc: "{{Card}} 生成1卡牌#{{Card}} 使用的卡牌效果翻倍或增强"
	-- English: "{{Card}} Tarot card effects are doubled or enhanced"

	[C_ID .. 453] = "泪弹击中时碎成1-3个小骨片", -- Compound Fracture
	-- Full old Desc: "↑ {{Range}} 射程+1.5#泪弹击中时碎成1-3个小骨片"
	-- English: "Tears shatter into 1-3 bone shards upon hitting anything"

	[C_ID .. 464] = "房间清理奖励和精英怪掉落角色最需要的掉落物", -- Glyph of Balance
	-- Full old Desc: "{{SoulHeart}} +2魂心#房间清理奖励和精英怪掉落角色最需要的掉落物"
	-- English: "Room clear rewards and champion enemy drops become whatever pickup Isaac needs the most"

	[C_ID .. 472] = "其他跟班都会跟着他, 并自动向敌人发射#角色发射时停止移动#停止发射时传送回角色位置", -- King Baby
	-- English: "Other familiars follow it and automatically shoot at enemies#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 474] = "使用时变回玻璃大炮", -- Broken Glass Cannon
	-- English: "Using the item turns it back into Glass Cannon"

	[C_ID .. 476] = "复制房间中1随机掉落物#复制的掉落物可能与原来的不同", -- D1
	-- English: "Duplicates a random pickup in the room#Duplicated pickups may not be identical to the original"

	[C_ID .. 477] = "消耗房间中所有底座道具:#主动道具: 后续每次使用虚空时会激活其效果#↑ 被动道具: 提升2项随机属性", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 489] = "可以通过掉落键({{ButtonRT}})更改为任意骰子道具({{Collectible723}}计数二十面骰除外)", -- D Infinity
	-- Full old Desc: "可以通过掉落键({{ButtonRT}})更改为任意骰子道具({{Collectible723}}计数二十面骰除外)#"
	-- English: "Can be made to act as any die item (except {{Name723}}) with the drop button ({{ButtonRT}})#Charge time varies based on the last die used and updates with every use"

	[C_ID .. 493] = "↑ {{Damage}} 空心之容器能提高伤害#空心之容器越多, 随后的伤害加成越高", -- Adrenaline
	-- English: "↑ {{Damage}} Damage up for every empty heart container#The more empty heart containers, the bigger the bonus for each new one"

	[C_ID .. 494] = "泪弹击中时, 生成1道电弧#电弧造成0.5x角色伤害#电弧可电穿最多4个其他敌人", -- Jacob's Ladder
	-- English: "Tears spawn a spark of electricity on impact#Sparks deal half of Isaac's damage#Sparks can arc to up to 4 other enemies"

	[C_ID .. 495] = "火焰不断缩小, 2秒后消失", -- Ghost Pepper
	-- Full old Desc: "8%概率发射蓝火, 能阻挡弹幕并造成接触伤害#{{Luck}} 幸运10: 50%概率#火焰不断缩小, 2秒后消失"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a blue fire that blocks enemy shots and deals contact damage#Fires shrink and disappear after 2 seconds"

	[C_ID .. 497] = "{{Confusion}} 进入房间时, 使所有敌人混乱并使角色伪装, 直到角色开始发射#↑ {{Speed}} 伪装时移速+0.5#解除伪装时, 对角色周围造成伤害, 并获得非常短暂的射速和伤害提升", -- Camo Undies
	-- English: "{{Confusion}} Entering a room camouflages Isaac and confuses all enemies until a tear is shot#↑ {{Speed}} +0.5 Speed while cloaked#Uncloaking deals damage around Isaac and grants a very brief fire rate and damage up"

	[C_ID .. 501] = "{{Heart}} 角色每持有25硬币+1心之容器", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins Isaac has"

	[C_ID .. 503] = "手会立即杀死敌人或对头目造成36点伤害", -- Little Horn
	-- Full old Desc: "5%概率发射能召唤巨角恶魔的手的泪弹#{{Luck}} 运气15: 20%概率#手会立即杀死敌人或对头目造成36点伤害#角色每秒造成7点接触伤害"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a tear that summons a Big Horn hand#The hand instantly kills enemies and deals 36 damage to bosses"

	[C_ID .. 504] = "生成1只向敌人发射的苍蝇炮塔", -- Brown Nugget
	-- Full old Desc: "生成1只向敌人发射的苍蝇炮塔#泪弹造成3.5点伤害"
	-- English: "Spawns a fly that shoots at enemies"

	[C_ID .. 506] = "{{BleedingOut}} 若泪弹击中敌人后背, 则造成的伤害翻倍并造成流血, 使敌人留下水迹并在移动时受伤", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which makes enemies leave creep and take damage when they move"

	[C_ID .. 507] = "{{Damage}} 对所有敌人造成1x角色伤害+敌人最大血量10%的伤害#{{HalfHeart}} 造成伤害时, 15%概率生成半红心", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts"

	[C_ID .. 508] = "{{BleedingOut}} 能造成流血的环绕物, 使敌人在移动时受伤#{{Damage}} 每秒造成1.5x角色伤害", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which makes enemies take damage when they move#{{Damage}} Deals 1.5x Isaac's damage per second"

	[C_ID .. 509] = "附近有敌人时, 每0.33秒发射一颗泪弹的环绕物", -- Bloodshot Eye
	-- Full old Desc: "附近有敌人时, 每0.33秒发射一颗泪弹的环绕物#泪弹造成3.5点伤害#每秒造成20点接触伤害"
	-- English: "Orbital that shoots a tear every 0.33 seconds to nearby enemies"

	[C_ID .. 514] = "随机间隔使一些敌人和弹幕短暂停滞#暂停的弹幕消失#25%概率使清理房间奖励翻倍", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#Paused projectiles disappear#25% chance to double room clear rewards"

	[C_ID .. 517] = "移除放置炸弹的冷却#炸弹相互之间不会击退", -- Fast Bombs
	-- Full old Desc: "{{Bomb}} +7炸弹#移除放置炸弹的冷却#炸弹相互之间不会击退"
	-- English: "Removes the delay between bomb placements#Bombs don't deal knockback to each other"

	[C_ID .. 522] = "使靠近角色的敌人弹幕停滞3秒, 结束后弹幕会被抛开#效果期间推开靠近的敌人", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards#Pushes close enemies away during the effect"

	[C_ID .. 523] = "使用时, 储存当前房间中最多10掉落物#再次使用将储存物放回地上#允许角色在房间之间搬东西", -- Moving Box
	-- English: "Stores up to 10 pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "泪弹以电弧连接#{{Damage}} 电弧每秒造成4.5x角色伤害", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#Electricity deals 4.5x Isaac's damage per second"

	[C_ID .. 552] = "生成通往下一层的活板门#{{LadderRoom}} 在有装饰(草/碎石/纸/宝石等)的地板上使用时, 改为生成暗门#{{Warning}} 在\"暗室\"的土丘上使用铲子", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 553] = "25%概率发射粘性孢子泪弹#{{Luck}} 不受幸运影响#孢子命中后2.5秒爆炸, 造成伤害, 使附近敌人中毒并释放更多孢子", -- Mucormycosis
	-- English: "25% chance to shoot a sticky spore tear#{{Luck}} Not affected by luck#{{Poison}} Spores blow up after 2.5 seconds, dealing damage, poisoning nearby enemies and releasing more spores"

	[C_ID .. 554] = "{{Fear}} 使近距离的敌人恐惧", -- 2Spooky
	-- English: "{{Fear}} Fears enemies in a small radius around Isaac"

	[C_ID .. 555] = "{{Timer}} 花费5{{Coin}}硬币, 并在当前房间中获得:#{VAR:EFFECTLIST}", -- Golden Razor
	-- Full old Desc: "#{{Coin}} 拾起时+5硬币#{{Timer}} 花费5{{Coin}}硬币, 并在当前房间中获得:#↑ {{Damage}} 伤害+1.2"
	-- English: "{{Timer}} Pay 5 {{Coin}} coins and receive for the room:#{VAR:EFFECTLIST}"

	[C_ID .. 556] = "多次使用使伤害更高, 激光更大", -- Sulfur
	-- Full old Desc: "{{Timer}} 在当前房间中获得{{Collectible118}}硫磺火#多次使用使伤害更高, 激光更大"
	-- English: "{{Timer}} {{NameC118}} for the room#Using it multiple times in one room grants increased damage and a larger beam"

	[C_ID .. 557] = "获得其一:#1条预言#{{SoulHeart}} 1魂心#{{Rune}} 1符文/魂石#{{Card}} 1塔罗牌#{{Trinket}} 1饰品", -- Fortune Cookie
	-- English: "Grants one of the following rewards:#A fortune#{{SoulHeart}} A Soul Heart#{{Rune}} A Rune or Soul Stone#{{Card}} A Tarot card#{{Trinket}} A Trinket"

	[C_ID .. 558] = "概率向随机方向发射1-3颗额外泪弹#{{Luck}} 不受运气影响", -- Eye Sore
	-- English: "Chance to shoot 1-3 extra tears in random directions#{{Luck}} Not affected by luck"

	[C_ID .. 559] = "反复电击附近敌人#{{Damage}} 电击每秒造成3.75x角色伤害#电弧可电穿最多4个其他敌人", -- 120 Volt
	-- English: "Repeatedly zaps nearby enemies#{{Damage}} Electricity deals up to 3.75x Isaac's damage per second#Sparks can arc to up to 4 other enemies"

	[C_ID .. 560] = "{{Timer}} 受伤时, 在当前房间中获得:#↑ {{Tears}} 首次受伤射速+1.2#↑ {{Tears}} 后续受伤射速+0.4#在角色周围释放10颗泪弹", -- It Hurts
	-- English: "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac"

	[C_ID .. 561] = "泪弹随机获得蠕虫饰品和一些道具的效果", -- Almond Milk
	-- Full old Desc: "↑ {{Tears}} 射速修正x4#↓ {{Damage}} 伤害修正x0.3#↓ {{Tearsize}} 泪弹尺寸-0.16#泪弹随机获得蠕虫饰品和一些道具的效果"
	-- English: "Tears gain random worm trinket effects and some item effects"

	[C_ID .. 562] = "↑ 本局游戏中属性不会再降低", -- Rock Bottom
	-- English: "↑ Prevents stats from being lowered for the rest of the run"

	[C_ID .. 563] = "炸弹具有随机爆炸效果", -- Nancy Bombs
	-- Full old Desc: "{{Bomb}} +5炸弹#炸弹具有随机爆炸效果"
	-- English: "Isaac's bombs explode with random effects"

	[C_ID .. 565] = "追击敌人#击杀15个敌人后, 会造成更多伤害, 每击杀10个敌人掉落半红心, 但也会尝试对角色造成伤害#击杀40个敌人后, 会造成更多伤害, 掉落整红心, 可以摧毁石头#对其造成足够多伤害可使其回到第一阶段", -- Blood Puppy
	-- English: "Chases enemies#After killing 15 enemies, it deals more damage, spawns a half Red Heart every 10 kills, but tries to hurt Isaac#After killing 40 enemies, it deals even more damage, spawns full Red Hearts, and can destroy rocks#Dealing enough damage to it returns it to its first phase"

	[C_ID .. 566] = "{{HalfSoulHeart}} 进入新层时+1半魂心#在每层过场噩梦中显示下一层的头目战和宝箱房道具", -- Dream Catcher
	-- English: "{{HalfSoulHeart}} +1 half Soul Heart when entering a new floor#The stage transition nightmare reveals the next floor's boss fight and Treasure Room item"

	[C_ID .. 567] = "↑ {{Tears}} 若清理房间且不受伤害, 则射速+0.4#最多+2{{ColorSilver}}(5个房间){{CR}}", -- Paschal Candle
	-- English: "↑ {{Tears}} Clearing a room without taking damage grants +0.4 Fire rate#Caps at +2 Fire rate {{ColorSilver}}(5 rooms){{CR}}"

	[C_ID .. 568] = "双击发射键产生护盾#护盾持续1秒, 能推开敌人, 反弹敌人弹幕和激光", -- Divine Intervention
	-- English: "Double-tapping a fire key creates a shield#The shield lasts 1 second, pushes enemies away and reflects enemy projectiles and lasers"

	[C_ID .. 569] = "{{Warning}} 进入新层时, 吸走角色的所有红心, 但根据失去的红心获得移速和伤害加成#致死时保留半红心#对于受击效果, 每失去半红心都算作单独一击", -- Blood Oath
	-- English: "{{Warning}} Entering a new floor drains all of Isaac's Red Hearts, but grants speed and damage bonuses for each heart lost#Each half heart lost counts as an individual hit for on-hit effects"

	[C_ID .. 570] = "角色的每颗泪弹都有不同的颜色和效果", -- Playdough Cookie
	-- English: "Each of Isaac's tears have a different color and status effect"

	[C_ID .. 571] = "免疫水迹和尖刺", -- Orphan Socks
	-- Full old Desc: "↑ {{Speed}} 移速+0.3#{{SoulHeart}} +2魂心#免疫水迹和尖刺"
	-- English: "Immune to creep and floor spikes"

	[C_ID .. 572] = "角色的泪弹飞行时可控", -- Eye of the Occult
	-- Full old Desc: "↑ {{Damage}} 伤害+1#↑ {{Range}} 射程+2#↓ {{Shotspeed}} 弹速-0.16#角色的泪弹飞行时可控"
	-- English: "Isaac's tears can be controlled in mid-air"

	[C_ID .. 573] = "20%概率额外发射1颗环绕灵体泪弹", -- Immaculate Heart
	-- Full old Desc: "↑ {{Heart}} +1心之容器#↑ {{Damage}} 伤害修正x1.2#{{HealingRed}} 回满血#20%概率额外发射1颗环绕灵体泪弹"
	-- English: "20% chance to shoot an extra orbiting spectral tear"

	[C_ID .. 574] = "角色获得造成伤害的光环#敌人越靠近角色, 光环造成的伤害越高", -- Monstrance
	-- English: "Isaac is surrounded by a damaging aura#The closer enemies are to Isaac, the more damage the aura deals to them"

	[C_ID .. 575] = "{{Slow}} 蜘蛛埋在角色头里, 额外发射4颗减速泪弹, 造成1.5点伤害#受伤时, 蜘蛛离开头并追击敌人", -- The Intruder
	-- English: "{{Slow}} Buries itself in Isaac's head and shoots 4 extra slowing tears that deal 1.5 damage#Taking damage can make the spider exit the head and chase enemies"

	[C_ID .. 576] = "所有粪滴敌人变得友好#摧毁大便时, 生成1-4个粪滴#粪滴类型取决于大便类型#石头可能会由大便取代", -- Dirty Mind
	-- English: "All Dip (small poop) enemies are friendly#Destroying poop spawns 1-4 Dips#Dip type depends on the poop type#Rocks may be replaced with poop"

	[C_ID .. 577] = "在角色头上悬着剑, 并使底座道具翻倍#有价格或箱子中的道具不翻倍#{{Warning}} 受伤后, 剑每帧有极低概率立即击杀角色#无敌效果可以避免死亡", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 578] = "生成大范围的黄色水迹#水迹每秒造成24点伤害", -- Free Lemonade
	-- English: "Creates a large pool of yellow creep#The creep deals 24 damage per second"

	[C_ID .. 579] = "攻击方式改为挥剑#{{Damage}} 剑造成3x角色伤害+3.5的伤害, 挥剑速度与按发射键速度一样快#{{Chargeable}} 可蓄力发动旋转攻击#满血时发射剑气", -- Spirit Sword
	-- English: "Instead of shooting tears, swing a sword#{{Damage}} The sword deals 3x Isaac's damage +3.5 and swings as fast as the fire button is tapped#{{Chargeable}} Charging does a spin attack + projectile shot#Shoots projectiles with swings at full health"

	[C_ID .. 580] = "在常规房间旁产生门形轮廓指示的红色房间#红色房间可以是特殊房间#{{ErrorRoom}} 进入13x13地图范围外的房间时, 将角色传送至错误房", -- Red Key
	-- English: "Creates a red room adjacent to a regular room, indicated by a door outline#Red Rooms can be special rooms#{{ErrorRoom}} Entering a room outside the 13x13 floor map teleports Isaac to the I AM ERROR room"

	[C_ID .. 581] = "追击并反弹敌人弹幕", -- Psy Fly
	-- Full old Desc: "追击并反弹敌人弹幕#每秒造成15点接触伤害"
	-- English: "Chases and deflects enemy projectiles"

	[C_ID .. 582] = "扭曲画面#每次使用后需要更多充能#离开或清理房间可减弱效果", -- Wavy Cap
	-- Full old Desc: "↑ {{Tears}} 射速+0.75#↓ {{Speed}} 移速-0.03#扭曲画面#每次使用后需要更多充能#离开或清理房间可减弱效果"
	-- English: "Distorts the screen#Takes longer to recharge each use#Leaving or clearing rooms reduces the effects"

	[C_ID .. 583] = "发射时放置炸弹, 炸弹由发射火箭取代", -- Rocket in a Jar
	-- Full old Desc: "{{Bomb}} +5炸弹#发射时放置炸弹, 炸弹由发射火箭取代"
	-- English: "Placing a bomb while shooting fires a rocket in that direction instead"

	[C_ID .. 584] = "生成1魂火环绕跟班, 发射灵体泪弹但可被摧毁#与其它主动道具组合可产生特殊魂火#{{AngelChance}} 恶魔交易后仍会出现天使房", -- Book of Virtues
	-- Full old Desc: "{{AngelChance}} 持有时, 天使房概率+12.5%#生成1魂火环绕跟班, 发射灵体泪弹但可被摧毁#与其它主动道具组合可产生特殊魂火#{{AngelRoom}} 将第一个恶魔房变为天使房#{{AngelChance}} 恶魔交易后仍会出现天使房"
	-- English: "Spawns an orbital wisp familiar that shoots spectral tears but can be destroyed#Can be combined with a second active item to create special wisps#{{AngelRoom}} Turns the first Devil Room into an Angel Room#{{AngelRoom}} Allows Angel Rooms to spawn after taking a Devil deal"

	[C_ID .. 585] = "必须通过拾起魂心充能, 使用时生成:#{{SoulHeart}} 3{{SoulHeart}}魂心#{{AngelRoom}} 2个天使房道具#{{DevilRoom}} 若已进行过恶魔交易, 则改为2魂心和1个天使房道具", -- Alabaster Box
	-- English: "Must be charged by picking up Soul Hearts, then spawns:#{{SoulHeart}} Three Soul Hearts#{{AngelRoom}} Two Angel Room items#{{DevilRoom}} Only spawns 2 Soul Hearts and 1 Angel item if a Devil deal was taken previously"

	[C_ID .. 586] = "{{AngelRoom}} 在每层的初始房间生成梯子, 通向特殊{{AngelRoom}}天使房商店", -- The Stairway
	-- English: "Spawns a ladder in the first room of every floor that leads to a unique {{AngelRoom}} Angel Room shop with items and pickups"

	[C_ID .. 588] = "{{CurseBlind}} 移除诅咒", -- Sol
	-- Full old Desc: "{{BossRoom}} 揭示头目房位置#{{Timer}} 击败头目后, 在本层获得:#↑ {{Damage}} 伤害+3#↑ {{Luck}} 幸运+1#{{Card20}} 太阳的效果#{{Battery}} 将主动道具完全充能#{{CurseBlind}} 移除诅咒"
	-- English: "{{BossRoom}} Reveals the location of the Boss Room#{{Timer}} When the floor boss is defeated, receive for the floor:#{VAR:EFFECTLIST}#{{NameK20}} effect#{{Battery}} Fully recharges the active item#{{CurseBlind}} Removes any curses"

	[C_ID .. 589] = "每层额外增加1个{{SecretRoom}}隐藏房和{{SuperSecretRoom}}超级隐藏房#每层揭示1个隐藏房#{{Timer}} 隐藏房内有光束, 接触时在本层获得:#↑ {{Tears}} 射速+0.5#↑ {{Tears}} 每层首个光柱额外+0.5射速#{{HalfSoulHeart}} 1半魂心", -- Luna
	-- English: "Adds an extra {{SecretRoom}} Secret Room and {{SuperSecretRoom}} Super Secret Room to each floor#Reveals one Secret Room each floor#{{Timer}} Secret Rooms contain a beam of light that grant for the floor:#↑ {{Tears}} +0.5 Fire rate#↑ {{Tears}} Additional +0.5 Fire rate from the first beam per floor#{{HalfSoulHeart}} Half a Soul Heart"

	[C_ID .. 590] = "大多数门会永久保持打开", -- Mercurius
	-- Full old Desc: "↑ {{Speed}} 移速+0.4#大多数门会永久保持打开"
	-- English: "Most doors stay permanently open"

	[C_ID .. 591] = "{{Charm}} 魅惑附近敌人", -- Venus
	-- Full old Desc: "↑ {{Heart}} +1心之容器#{{HealingRed}} 治疗1红心#{{Charm}} 魅惑附近敌人"
	-- English: "{{Charm}} Charms nearby enemies"

	[C_ID .. 592] = "角色的泪弹由石头取代#石头伤害不定, 可摧毁障碍物并有更强的击退力", -- Terra
	-- Full old Desc: "↑ {{Damage}} 伤害+1#角色的泪弹由石头取代#石头伤害不定, 可摧毁障碍物并有更强的击退力"
	-- English: "Replaces Isaac's tears with rocks#Rocks deal variable damage, can destroy obstacles and have increased knockback"

	[C_ID .. 593] = "双击移动键使角色冲锋#{{Damage}} 冲锋时角色无敌, 造成4x角色伤害+8的伤害#{{Timer}} 3秒冷却", -- Mars
	-- English: "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown"

	[C_ID .. 594] = "{{Poison}} 免疫中毒", -- Jupiter
	-- Full old Desc: "↑ {{EmptyHeart}} +2空心之容器#↓ {{Speed}} 移速-0.3#{{HalfHeart}} 治疗半红心#{{Speed}} 不移动时累积最多+0.5移速#{{Poison}} 移动时向后释放毒气#{{Poison}} 免疫中毒"
	-- English: "{{Speed}} Speed builds up to +0.5 while standing still#{{Poison}} Moving releases poison clouds#{{Poison}} Poison immunity"

	[C_ID .. 595] = "进入房间时生成7颗泪弹在角色周围环绕#这些泪弹持续13秒, 造成1.5x角色伤害+5的伤害#敌人弹幕有概率加入环绕", -- Saturnus
	-- English: "Entering a room causes 7 tears to orbit Isaac#Those tears last for 13 seconds and deal 1.5x Isaac's damage +5#Enemy projectiles have a chance to orbit Isaac"

	[C_ID .. 596] = "{{Freezing}} 角色发射冰冻泪弹, 击杀敌人时使其冻结#可以推开冻结的敌人, 撞碎时向四周发射10个冰锥", -- Uranus
	-- English: "{{Freezing}} Isaac shoots petrifying tears that freeze enemies on death#Touching a frozen enemy makes it slide away and explode into 10 ice shards"

	[C_ID .. 597] = "{{Tears}} 不发射时3秒内累积射速加成#角色发射时降低射速加成", -- Neptunus
	-- English: "{{Tears}} Not shooting builds up a tear bonus over 3 seconds#The tear bonus decreases as Isaac shoots"

	[C_ID .. 598] = "角色大幅缩小, 允许挤过物体#弹幕可以越过角色", -- Pluto
	-- Full old Desc: "↑ {{Tears}} 射速+0.7#角色大幅缩小, 允许挤过物体#弹幕可以越过角色"
	-- English: "Significantly shrinks Isaac, allowing him to squeeze between objects#Projectiles can pass over him"

	[C_ID .. 599] = "{{CursedRoom}} 每层额外生成1个诅咒房#升级{{CursedRoom}}诅咒房的布局和奖励#{{Coin}} 每个诅咒房生成1硬币", -- Voodoo Head
	-- English: "{{CursedRoom}} Spawns an additional Curse Room each floor#Improves Curse Room layouts and rewards#{{Coin}} Spawns a coin in every Curse Room"

	[C_ID .. 601] = "{{AngelDevilChance}} 减缓受红心伤害后减少恶魔房/天使房的概率", -- Act of Contrition
	-- Full old Desc: "↑ {{Tears}} 射速+0.7#{{EternalHeart}} +1永恒之心#{{AngelChance}} 进行过恶魔交易后天使房仍然会出现#{{AngelDevilChance}} 减缓受红心伤害后减少恶魔房/天使房的概率"
	-- English: "{{AngelChance}} Allows Angel Rooms to spawn after taking a devil deal#Taking Red Heart damage doesn't reduce Devil/Angel Room chance as much"

	[C_ID .. 602] = "{{Shop}} 在商店内生成1个通往地下商店的暗门, 售卖饰品, 符文, 卡牌, 特殊心和任意道具池的道具", -- Member Card
	-- English: "{{Shop}} Opens a trapdoor in every Shop#The trapdoor leads to an underground shop that sells trinkets, runes, cards, special hearts and items from any pool"

	[C_ID .. 603] = "{{Battery}} 将主动道具完全充能", -- Battery Pack
	-- Full old Desc: "{{Battery}} 生成2-4电池#{{Battery}} 将主动道具完全充能"
	-- English: "{{Battery}} Fully recharges the active item"

	[C_ID .. 604] = "允许角色举起并投掷石头/TNT/大便/友好粪滴/寄居骷髅等障碍物#举起的东西可以带到其他房间", -- Mom's Bracelet
	-- English: "Allows Isaac to pick up and throw rocks, TNT, poops, friendly Dips, Hosts and other obstacles#Allows carrying them between rooms"

	[C_ID .. 606] = "裂隙每秒造成3x角色伤害, 并吸引附近的敌人, 掉落物和弹幕", -- Ocular Rift
	-- Full old Desc: "5%概率发射在落地时生成裂隙的泪弹#{{Luck}} 幸运15: 20%概率#裂隙每秒造成3x角色伤害, 并吸引附近的敌人, 掉落物和弹幕"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot tears that create rifts where they land#Rifts do 3x Isaac's damage per second and pull in nearby enemies, pickups, and projectiles"

	[C_ID .. 607] = "向四周随机喷射泪弹", -- Boiled Baby
	-- Full old Desc: "向四周随机喷射泪弹#泪弹造成3.5或5.25点伤害"
	-- English: "Shoots chaotic bursts of tears in all directions"

	[C_ID .. 608] = "{{Petrify}} 发射石化泪弹, 造成3.5点伤害#{{Freezing}} 击杀时使敌人冻结", -- Freezer Baby
	-- English: "{{Petrify}} Shoots petrifying tears that deal 3.5 damage#{{Freezing}} Freezes enemies upon killing them"

	[C_ID .. 609] = "重置房间中所有道具#25%概率删除道具而不是重置", -- Eternal D6
	-- English: "Rerolls all pedestal items in the room#Has a 25% chance to delete items instead of rerolling them"

	[C_ID .. 610] = "角色在房间中首次受伤时, 跃向敌人#造成45点伤害并释放岩石波#之后追击敌人, 每秒造成6.5点接触伤害", -- Bird Cage
	-- English: "Leaps on the enemy that deals the first damage to Isaac in a room#Deals 45 damage and releases a rock wave#Chases enemies afterwards for 6.5 contact damage per second"

	[C_ID .. 611] = "角色怒吼, 击退周围的敌人并造成伤害#充能越多, 怒吼效果越强", -- Larynx
	-- English: "Isaac screams, damages and knocks back nearby enemies#The scream gets stronger the more charges the item has"

	[C_ID .. 612] = "受伤时时死亡, 会在下一层重生#如果存活时带到下一层, 生成:#{{SoulHeart}} 3魂心#{{EternalHeart}} 2永恒之心#{{TreasureRoom}} 1个宝箱房道具#{{AngelRoom}} 1个天使房道具", -- Lost Soul
	-- English: "Dies in one hit and respawns at the start of the next floor#If it is brought alive to the next floor, it can spawn:#{{SoulHeart}} 3 Soul Hearts#{{EternalHeart}} 2 Eternal Hearts#{{TreasureRoom}} A Treasure Room item#{{AngelRoom}} An Angel Room item"

	[C_ID .. 614] = "{{HalfHeart}} 若角色没有炸弹, 则可以花费半红心放置炸弹#角色的炸弹会留下血迹", -- Blood Bombs
	-- Full old Desc: "↑ {{Heart}} +1心之容器#{{HealingRed}} 治疗5红心#{{HalfHeart}} 若角色没有炸弹, 则可以花费半红心放置炸弹#角色的炸弹会留下血迹"
	-- English: "{{HalfHeart}} If Isaac has no bombs, one can be placed at the cost of half a heart#Isaac's bombs leave red creep"

	[C_ID .. 615] = "角色即将受伤时, 弹开敌人或弹幕#概率反弹其周围的弹幕#弹开后需要触碰才能再次激活", -- Lil Dumpy
	-- English: "Deflects an enemy or projectile right before Isaac would take damage from it#Chance to deflect projectiles near it#Needs to be touched after deflecting to be reactivated"

	[C_ID .. 616] = "火焰造成或阻挡4次伤害后或10秒后消失", -- Bird's Eye
	-- Full old Desc: "8%概率发射红火, 阻挡敌人弹幕并造成接触伤害#{{Luck}} 幸运11: 50%概率#火焰造成或阻挡4次伤害后或10秒后消失"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a red fire that blocks enemy shots and deals contact damage#Fires disappear after blocking 4 shots, dealing damage 4 times or after 10 seconds"

	[C_ID .. 617] = "磁化的敌人吸引掉落物, 弹幕和其它敌人", -- Lodestone
	-- Full old Desc: "{{Magnetize}} 17%概率发射使敌人磁化的泪弹#{{Luck}} 运气5: 100%概率#磁化的敌人吸引掉落物, 弹幕和其它敌人"
	-- English: "{{Magnetize}} {VAR:LUCKCHANCE}% chance to shoot magnetizing tears#Magnetized enemies attract nearby pickups, projectiles and enemies"

	[C_ID .. 618] = "被标记的敌人会被其他敌人攻击", -- Rotten Tomato
	-- Full old Desc: "{{Bait}} 17%概率发射标记敌人的泪弹#{{Luck}} 运气5: 100%概率#被标记的敌人会被其他敌人攻击"
	-- English: "{{Bait}} {VAR:LUCKCHANCE}% chance to shoot tears that mark enemies#Marked enemies are targeted by other enemies"

	[C_ID .. 619] = "不同角色效果不同", -- Birthright
	-- English: "Has a different effect for each character"

	[C_ID .. 621] = "增加的伤害在3分钟内会不断衰减#效果尚存时击杀敌人会延长时间", -- Red Stew
	-- Full old Desc: "↑ {{Damage}} 伤害+21.6#{{HealingRed}} 回满血#增加的伤害在3分钟内会不断衰减#效果尚存时击杀敌人会延长时间"
	-- English: "The damage up wears off over 3 minutes#Killing enemies while the effect is active extends it"

	[C_ID .. 622] = "移除角色的所有道具和掉落物#将角色传送至特殊的卧室, 内有掉落物和箱子#每移除1个道具, 角色就可从来自相同道具池的3个道具选择#离开卧室时, 将角色带到下一层", -- Genesis
	-- English: "Removes all of Isaac's items and pickups#Teleports Isaac to a bedroom with pickups and chests#For every item removed, Isaac can choose between 3 items from the same pool#Leaving the bedroom takes Isaac to the next floor"

	[C_ID .. 623] = "向角色发射方向投掷角色的1钥匙#投掷的钥匙可造成伤害, 摧毁障碍物或开门#被钥匙击杀的敌人有概率掉落箱子里的物品, 包括道具", -- Sharp Key
	-- Full old Desc: "{{Key}} +5钥匙#向角色发射方向投掷角色的1钥匙#投掷的钥匙可造成伤害, 摧毁障碍物或开门#被钥匙击杀的敌人有概率掉落箱子里的物品, 包括道具"
	-- English: "Throws one of Isaac's keys in the direction he shoots#Thrown keys deal damage, destroy obstacles, and open doors#Enemies killed with keys can spawn the contents of a chest, including items"

	[C_ID .. 625] = "{VAR:TIMEDEFFECT}#能踩碎障碍物和敌人", -- Mega Mush
	-- Full old Desc: "{{Timer}} 角色巨化并获得:#↑ {{Damage}} 伤害修正x4#↑ {{Range}} 射程+2#↓ {{Tears}} 射速-1.9#无敌#能踩碎障碍物和敌人#{{Timer}} 持续30秒, 能在房间之间和层之间持续"
	-- English: "{VAR:TIMEDEFFECT}#Gigantifies Isaac#Ability to crush enemies and obstacles#Persists between rooms and floors"

	[C_ID .. 626] = "菜刀能打开红色肉门", -- Knife Piece 1
	-- Full old Desc: "与{{Collectible627}}菜刀碎片2结合变为可投掷的菜刀, 造成25点伤害#菜刀能打开红色肉门"
	-- English: "Turns into a throwable knife that deals 25 damage when combined with {{NameC627}}#The knife can open a door made of flesh"

	[C_ID .. 627] = "菜刀能打开红色肉门", -- Knife Piece 2
	-- Full old Desc: "与{{Collectible626}}菜刀碎片1结合变为可投掷的菜刀, 造成25点伤害#菜刀能打开红色肉门"
	-- English: "Turns into a throwable knife that deals 25 damage when combined with {{NameC626}}#The knife can open a door made of flesh"

	[C_ID .. 628] = "将角色传送至含有所有游戏道具的一层#拾起1个道具后回到之前的房间", -- Death Certificate
	-- English: "Teleports Isaac to a floor that contains every item in the game#Choosing an item from this floor teleports Isaac back to the room he came from"

	[C_ID .. 629] = "发射能摧毁敌人弹幕的护盾泪弹", -- Bot Fly
	-- Full old Desc: "发射能摧毁敌人弹幕的护盾泪弹#每秒造成3点接触伤害"
	-- English: "Shoots shielded tears to destroy enemy projectiles"

	[C_ID .. 631] = "使敌人分裂为2个40%血量的小型版本#本身能分裂的敌人(比如嫉妒)改为造成分裂所需的伤害#对无法分裂的敌人造成25点伤害", -- Meat Cleaver
	-- English: "Splits all enemies in the room into 2 smaller versions with 40% health#Enemies that naturally split (like Envy) take enough damage to split instead#Deals 25 damage to enemies that can't be split"

	[C_ID .. 632] = "免疫{{Burning}}烧伤, {{Confusion}}混乱, {{Fear}}恐惧, {{Poison}}毒气效果", -- Evil Charm
	-- Full old Desc: "↑ {{Luck}} 幸运+2#免疫{{Burning}}烧伤, {{Confusion}}混乱, {{Fear}}恐惧, {{Poison}}毒气效果"
	-- English: "Immune to {{Burning}} burn, {{Confusion}} confusion, {{Fear}} fear, and {{Poison}} poison effects"

	[C_ID .. 634] = "在有敌人的房间中的地面生成红色裂缝#走过裂缝时会召唤追踪爆炸幽灵", -- Purgatory
	-- English: "Red cracks spawn on the ground in hostile rooms#Walking over the cracks summons homing exploding ghosts"

	[C_ID .. 635] = "生成1个跟班, 向角色发射方向移动#使用时, 角色与跟班互换位置, 并短暂无敌#传送到物体上可以造成伤害或将其摧毁", -- Stitches
	-- English: "Spawns a familiar that moves in the direction Isaac shoots#On use, Isaac swaps places with the familiar and becomes briefly invincible#Teleporting onto things can damage or destroy them"

	[C_ID .. 636] = "整局重新开始#已收集的道具, 饰品, 属性和掉落物保留#计时器不重置", -- R Key
	-- English: "Restarts the entire run#All items, trinkets, stats and pickups collected are kept#The timer does not reset"

	[C_ID .. 637] = "撞到墙/障碍物的敌人会受到伤害", -- Knockout Drops
	-- Full old Desc: "{{Confusion}} 10%概率发射拳头, 对敌人造成强力击退和混乱#{{Luck}} 运气9: 100%概率#撞到墙/障碍物的敌人会受到伤害"
	-- English: "{{Confusion}} {VAR:LUCKCHANCE}% chance to shoot a fist that inflicts confusion and extreme knockback#Enemies take damage when they get knocked into a wall/obstacle"

	[C_ID .. 638] = "掷出橡皮, 秒杀击中的敌人#击杀的敌人在本局游戏中不会再出现#对头目造成15点伤害#每层只能使用一次", -- Eraser
	-- English: "Throws an eraser that instantly kills an enemy#Prevents the erased enemy from spawning for the rest of the run#Deals 15 damage to bosses#Can only be used once per floor"

	[C_ID .. 640] = "喷射火焰#击杀1个敌人, 瓮增加1格充能", -- Urn of Souls
	-- English: "Spews a stream of flames#Killing an enemy adds a charge to the urn"

	[C_ID .. 641] = "在有敌人的房间中, 在角色身后产生一串泪弹#泪弹造成3.5点伤害", -- Akeldama
	-- English: "Creates a chain of tears behind Isaac in hostile rooms#The tears deal 3.5 damage"

	[C_ID .. 642] = "生成当前房间道具池的1个道具#将1心之容器/1骨心/2魂心变为1碎心#生成当前房间道具池的1个道具#{{Warning}} 若角色不再持有, 则有概率将后续道具替换{{ColorSilver}}(1次使用后33%, 2次后50%, 3次后100%)#若玄奇驴皮在本层道具底座上, 则降低概率", -- Magic Skin
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Turns 1 heart container or 1 Bone Heart or 2 Soul Hearts into a Broken Heart#{{Warning}} Replaces future items if Isaac isn't holding it {{ColorSilver}}(33% after 1 use, 50% after 2, 100% after 3)#Lower chance if Magic Skin is on a pedestal on the current floor"

	[C_ID .. 643] = "{{Chargeable}} 可蓄力发射高伤害圣光柱#不会取代角色的泪弹", -- Revelation
	-- Full old Desc: "{{SoulHeart}} +2魂心#飞行#{{Chargeable}} 可蓄力发射高伤害圣光柱#不会取代角色的泪弹"
	-- English: "{{Chargeable}} Chargeable high damage holy beam#Does not replace Isaac's tears"

	[C_ID .. 644] = "↑ 提升角色速度/射速/伤害/射程中最低的属性#根据角色持有的最少掉落物, 生成3{{Coin}}硬币/1{{Bomb}}炸弹/1{{Key}}钥匙", -- Consolation Prize
	-- English: "↑ Increases Isaac's lowest stat out of Speed, Fire rate, Damage, and Range#Spawns either 3 {{Coin}} coins, 1 {{Bomb}} bomb, or 1 {{Key}} key depending on what Isaac has the least of"

	[C_ID .. 645] = "阻挡弹幕的大型环绕物#受击3次时, 分裂为更小的畸胎瘤#小畸胎瘤被摧毁时产生蓝蜘蛛#被完全摧毁时, 5秒后重生", -- Tinytoma
	-- Full old Desc: "阻挡弹幕的大型环绕物#每秒造成3.5点接触伤害#受击3次时, 分裂为更小的畸胎瘤#小畸胎瘤被摧毁时产生蓝蜘蛛#被完全摧毁时, 5秒后重生"
	-- English: "Large orbital that blocks shots#Splits into smaller versions of itself upon taking 3 hits#The smaller versions break into blue spiders#Respawns 5 seconds after fully disappearing"

	[C_ID .. 646] = "{{Collectible118}} 角色的炸弹爆炸时, 释放十字血柱#血柱不会伤到角色", -- Brimstone Bombs
	-- Full old Desc: "{{Bomb}} +5炸弹#{{Collectible118}} 角色的炸弹爆炸时, 释放十字血柱#血柱不会伤到角色"
	-- English: "{{Collectible118}} Isaac's bombs release a 4-way blood beam#The beams don't hurt Isaac"

	[C_ID .. 647] = "清理房间不再对主动道具充能#对敌人造成伤害时缓慢充能#充能所需伤害量随层数提升", -- 4.5 Volt
	-- English: "Clearing rooms no longer charges active items#Dealing damage to enemies slowly fills up the charge bar#Damage needed per charge increases each floor"

	[C_ID .. 649] = "在房间中斜角前进, 向路径上发射泪弹, 造成3点伤害", -- Fruity Plum
	-- Full old Desc: "在房间中斜角前进, 向路径上发射泪弹, 造成3点伤害#每秒造成6点接触伤害"
	-- English: "Propels herself diagonally around the room, firing tears in her path that deal 3 damage"

	[C_ID .. 650] = "{{Timer}} 在当前房间中召唤1只友好的糖梅宝宝, 持续10秒", -- Plum Flute
	-- English: "{{Timer}} Summons a friendly Baby Plum in the room for 10 seconds"

	[C_ID .. 651] = "从本层初始房间向{{BossRoom}}头目房缓慢移动#角色领先则移动加快, 角色落后则移动减慢#站在光环中获得:#{VAR:EFFECTLIST}#50%概率忽略伤害", -- Star of Bethlehem
	-- Full old Desc: "从本层初始房间向{{BossRoom}}头目房缓慢移动#角色领先则移动加快, 角色落后则移动减慢#站在光环中获得:#↑ {{Tears}} 射速修正x2.5#↑ {{Damage}} 伤害修正x1.8#追踪泪弹#50%概率忽略伤害"
	-- English: "Slowly travels from the first room of the floor to the {{BossRoom}} Boss Room#Moves faster if you're ahead of it, and slower if you're behind it#Standing in its aura grants:#{VAR:EFFECTLIST}#50% chance to ignore damage"

	[C_ID .. 652] = "经过时可踢开#{{Slow}} 使敌人减速, 根据速度造成最多17.5点接触伤害#{{Freezing}} 击杀时使敌人冻结", -- Cube Baby
	-- English: "Can be kicked around by walking into it#{{Slow}} Slows and deals up to 17.5 contact damage depending on speed#{{Freezing}} Freezes enemies it kills"

	[C_ID .. 653] = "持有时, 非幽灵的敌人在死亡时生成小的红色幽灵#使用时, 引爆所有红色幽灵#使用时, 也会击杀所有血量低于50%的幽灵类敌人(包括头目)", -- Vade Retro
	-- English: "Holding the item causes non-ghost enemies to spawn small red ghosts on death#Using the item causes the ghosts to explode#Using the item also kills any ghost enemies (including bosses) that have less than 50% HP left"

	[C_ID .. 654] = "{{BlackHeart}} 吃其它坏胶囊, 生成1黑心", -- False PHD
	-- Full old Desc: "{{BlackHeart}} +1黑心#{{Pill}} 识别所有胶囊#{{Pill}} 好胶囊变为坏的#↑ {{Damage}} 吃降低属性的胶囊, 伤害+0.6#{{BlackHeart}} 吃其它坏胶囊, 生成1黑心"
	-- English: "{{Pill}} Identifies all pills#Converts all good pills into bad pills#↑ {{Damage}} Eating a stat down pill grants +0.6 damage#{{BlackHeart}} Eating other bad pills spawns a Black Heart"

	[C_ID .. 655] = "获得1个陀螺环绕物, 阻挡敌人弹幕, 每秒造成10.5点接触伤害#{VAR:ONUSEEFFECT}#提升环绕物的速度和伤害", -- Spin to Win
	-- Full old Desc: "获得1个陀螺环绕物, 阻挡敌人弹幕, 每秒造成10.5点接触伤害#↑ 使用时获得:#↑ {{Speed}} 移速+0.5#提升环绕物的速度和伤害"
	-- English: "Passively grants an orbital that blocks enemy shots and deals 10.5 contact damage per second#{VAR:ONUSEEFFECT}#{{IND}}Increases speed and damage of orbitals"

	[C_ID .. 656] = "在角色头上悬着剑, 并使底座道具翻倍#有价格或箱子中的道具不翻倍#{{Warning}} 受伤后, 剑每帧有极低概率立即击杀角色#无敌效果可以避免死亡", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 657] = "敌人死亡时爆出泪弹, 继承角色的泪弹效果", -- Vasculitis
	-- English: "Enemies explode into tears upon death, which inherit the effects of Isaac's tears"

	[C_ID .. 658] = "受伤时生成小以撒#小以撒追击附近敌人并向其发射", -- Giant Cell
	-- English: "Taking damage spawns a Minisaac#Minisaacs chase and shoot at nearby enemies"

	[C_ID .. 660] = "在每层的初始房间中生成2个传送门#离开房间时传送门消失#{{Blank}} {{ColorRed}}红色: {{CR}}头目房#{{Blank}} {{ColorYellow}}黄色: {{CR}}{{TreasureRoom}} 宝箱房#{{Blank}} {{ColorBlue}}蓝色: {{CR}}{{SecretRoom}} 隐藏房", -- Card Reading
	-- English: "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room"

	[C_ID .. 661] = "敌人死亡处生成1个不动跟班#最多5个跟班", -- Quints
	-- English: "Killing an enemy spawns a stationary familiar in its place#Caps at 5 familiars"

	[C_ID .. 663] = "每6秒获得1秒无敌#效果触发前角色会闪光", -- Tooth and Nail
	-- English: "1 second of invincibility every 6 seconds#Isaac flashes right before the effect triggers"

	[C_ID .. 664] = "所有底座道具会周期性地切换为食物道具#拾起食物道具时获得:#↓ {{Speed}} 永久移速-0.03", -- Binge Eater
	-- Full old Desc: "↑ {{Heart}} +1心之容器#{{HealingRed}} 回满血#所有底座道具会周期性地切换为食物道具#拾起食物道具时获得:#{{HealingRed}} 额外治疗1红心#↑ {{Damage}} 暂时伤害+3.6#↑ 永久提升2项属性(取决于食物)#↓ {{Speed}} 永久移速-0.03"
	-- English: "Item pedestals cycle between their item and a food item#Picking up a food item grants:#{{HealingRed}} Heal 2 hearts#↑ {{Damage}} Temporary +3.6 damage#↑ 2 permanent stat ups (depending on the food)#↓ {{Speed}} -0.03 speed"

	[C_ID .. 665] = "在打开或摧毁前, 揭示{{Chest}}箱子, {{GrabBag}}福袋, 店主, 火堆的内容", -- Guppy's Eye
	-- English: "Reveals the contents of {{Chest}} chests, {{GrabBag}} sacks, shopkeepers, and fireplaces before they're opened or destroyed"

	[C_ID .. 667] = "{{Warning}} 店主也能拾起剧情道具", -- Strawman
	-- Full old Desc: "{{Bomb}} +1炸弹#{{Player14}} 生成店主作为第二个角色#店主死亡时生成蓝蜘蛛并永久移除稻草人及其拾起的道具#{{DevilChance}} 店主活着时恶魔交易花费硬币#{{Warning}} 店主也能拾起剧情道具"
	-- English: "{{Player14}} Spawns Keeper as a second character#When he dies, spawns blue spiders and permanently removes Strawman and any item that he has picked up from the inventory#{{DevilRoom}} Devil Room items cost coins while Strawman is alive#{{Warning}} Strawman can pick up story items"

	[C_ID .. 668] = "开始回溯#之前留在{{TreasureRoom}}宝箱房或{{BossRoom}}头目房的饰品会变成{{Card78}}红钥匙碎片", -- Dad's Note
	-- English: "Begins the Ascent#Trinkets left in previous {{TreasureRoom}} Treasure or {{BossRoom}} Boss Rooms turn into {{Card78}} Cracked Keys"

	[C_ID .. 670] = "允许角色从两个不同的房间清理奖励中选择", -- Options?
	-- English: "Allows Isaac to choose from two different room clear rewards"

	[C_ID .. 671] = "↑ 用{{Heart}}红心治疗时, 永久获得随机属性提升#{{Heart}} 生成1红心", -- Candy Heart
	-- English: "↑ Healing with {{Heart}} Red Hearts grants random permanent stat ups#{{Heart}} Spawns a Red Heart"

	[C_ID .. 672] = "{{DevilChance}} 恶魔交易消耗硬币#{{Shop}} 商店道具花费心之容器#{{Shop}} 商店消耗品被尖刺环绕", -- A Pound of Flesh
	-- English: "{{DevilRoom}} Devil Room items cost coins#{{Shop}} Shop items cost hearts#Consumables in Shops are surrounded by spikes"

	[C_ID .. 673] = "{{DevilChance}} 进入恶魔房且不拿任何道具/掉落物后, 进入新层获得:#{VAR:EFFECTLIST}", -- Redemption
	-- Full old Desc: "{{DevilChance}} 进入恶魔房且不拿任何道具/掉落物后, 进入新层获得:#↑ {{Damage}} 伤害+1#{{SoulHeart}} +1魂心"
	-- English: "{{DevilRoom}} Entering a new floor after visiting a Devil Room and not taking any item/pickup grants:#{VAR:EFFECTLIST}"

	[C_ID .. 674] = "承受致命伤害时, 将角色变为幽灵并被锁链束缚在尸体上, 留有半心继续战斗#幽灵存活10秒后, 角色重生#必须通过拾起魂心充能", -- Spirit Shackles
	-- English: "Taking fatal damage transforms Isaac into a ghost chained to his dead body and allows him to continue to fight with half a heart#If the ghost survives, Isaac revives after 10 seconds#Must be recharged by picking up a Soul Heart"

	[C_ID .. 675] = "受伤时:#打开房间中所有上锁的门#揭示地图上1个随机房间#摧毁所有标记石头和暗门石头", -- Cracked Orb
	-- English: "Taking damage:#Unlocks all locked doors in the room#Reveals a random room on the map#Destroys all tinted and crawlspace rocks"

	[C_ID .. 676] = "{{EmptyHeart}} 当不多于1红心开始新层时, +1空心之容器", -- Empty Heart
	-- English: "{{EmptyHeart}} +1 Empty heart container when at 1 Red Heart or less at the start of a new floor"

	[C_ID .. 677] = "{{Timer}} 在有敌人的房间中首次受伤时, 获得:#灵体泪弹#飞行#抵消下次伤害#时间暂停2秒#2秒内逐渐提升移速和射速", -- Astral Projection
	-- English: "{{Timer}} Taking damage in an uncleared room grants for the fight:#Spectral tears#Flight#Negates the next damage taken#Stops time for 2 seconds#Greatly increases speed and fire rate for 2 seconds"

	[C_ID .. 678] = "{{Chargeable}} 角色的泪弹由蓄力攻击取代, 发射追踪灵体胎儿#{{Damage}} 胎儿每秒造成2.8x角色伤害", -- C Section
	-- English: "{{Chargeable}} Replaces Isaac's tears with a charge attack that shoots homing, spectral fetus tears#{{Damage}} Fetus tears deal about 2.8x Isaac's damage per second"

	[C_ID .. 679] = "{{Collectible399}} 蓄力并发射虚空之喉进行攻击的跟班#1秒内造成52.5点伤害", -- Lil Abaddon
	-- English: "{{Collectible399}} Familiar that charges and unleashes a Maw of the Void circle#It deals 52.5 damage over 1 second"

	[C_ID .. 680] = "{{Chargeable}} 蓄力后方发射短程高伤害光柱#不取代角色泪弹", -- Montezuma's Revenge
	-- English: "{{Chargeable}} Firing charges up a short-ranged high damage backwards beam#Does not replace Isaac's tears"

	[C_ID .. 681] = "向前飞行并造成接触伤害#飞行时吸收掉落物#每吸收1个都增加其体积和伤害, 并生成1只蓝苍蝇#每吸收4个, 生成1个通向未探索房间的传送门", -- Lil Portal
	-- English: "Deals contact damage and flies forward#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming four pickups spawns a portal to an unexplored room"

	[C_ID .. 682] = "有时会从地面伸出一条触手束缚敌人#受缚的敌人每秒受到8点伤害, 减速并无法移动", -- Worm Friend
	-- English: "Sometimes bursts out of the ground and grabs an enemy#Grabbed enemies take 8 damage per second, are slowed and cannot move"

	[C_ID .. 683] = "敌人死亡时生成骨片#骨片可阻挡弹幕并造成接触伤害", -- Bone Spurs
	-- English: "Enemies spawn bone shards on death#Bones block projectiles and deal contact damage"

	[C_ID .. 684] = "击杀敌人时, 33%概率生成幽灵#幽灵追击敌人, 造成接触伤害并在5秒后爆炸#角色不受该爆炸伤害", -- Hungry Soul
	-- English: "Killing an enemy has a chance to spawn a ghost#Ghosts chase enemies, deal contact damage and explode after 5 seconds#Isaac doesn't take damage from the explosion"

	[C_ID .. 685] = "生成1随机魂火#每次使用多生成1魂火, 最多12个", -- Jar of Wisps
	-- English: "Spawns a random wisp#Spawns one additional wisp with each use, up to 12"

	[C_ID .. 686] = "↑ 拾起{{SoulHeart}}魂心时, 永久获得随机属性提升", -- Soul Locket
	-- Full old Desc: "↑ 拾起{{SoulHeart}}魂心时, 永久获得随机属性提升#{{SoulHeart}} 生成1魂心"
	-- English: "↑ Picking up {{SoulHeart}} Soul Hearts grants random permanent stat ups"

	[C_ID .. 687] = "{{Friendly}} 生成1个友好的敌人, 并模拟角色移动和攻击", -- Friend Finder
	-- English: "{{Friendly}} Spawns a random friendly monster that mimics Isaac's movements and attacks"

	[C_ID .. 688] = "死亡时:#角色在相同房间以半心重生#↑ {{Speed}} 移速+0.2#↑ 体型大幅变小", -- Inner Child
	-- Full old Desc: "+1生命#死亡时:#角色在相同房间以半心重生#↑ {{Speed}} 移速+0.2#↑ 体型大幅变小"
	-- English: "Upon death:#Respawns Isaac in the same room with half a heart#↑ {{Speed}} +0.2 Speed#↑ Massive size down"

	[C_ID .. 689] = "底座道具在5个随机道具之间快速切换", -- Glitched Crown
	-- English: "Item pedestals quickly cycle between 5 random items"

	[C_ID .. 690] = "敌人能被角色弹开#50%概率抵消接触伤害#50%概率反弹敌人弹幕", -- Belly Jelly
	-- English: "Enemies bounce off of Isaac#50% chance to negate contact damage#50% chance to deflect enemy projectiles"

	[C_ID .. 691] = "阻止品质为{{Quality0}}/{{Quality1}}的道具生成#33%概率重置品质为{{Quality2}}的道具", -- Sacred Orb
	-- English: "Prevents Quality {{Quality0}}/{{Quality1}} items from spawning#Quality {{Quality2}} items have a 33% chance to be rerolled"

	[C_ID .. 692] = "在{{DevilRoom}}恶魔房中生成地刺#在地刺上受伤可获得:#35%: 无#33%: ↑ {{Damage}} 伤害+0.5#15%: 6{{Coin}}硬币#10%: 2{{BlackHeart}}黑心#5%: 随机{{DevilRoom}}恶魔房道具#2%: {{Leviathan}}利维坦套装", -- Sanguine Bond
	-- English: "Spawns a set of spikes in the {{DevilRoom}} Devil Room#Taking damage on the spikes grants:#35%: Nothing#33%: ↑ {{Damage}} +0.5 Damage#15%: 6 {{Coin}} pennies#10%: 2 {{BlackHeart}} Black Hearts#5%: {{DevilRoom}} Random Devil item#2%: Leviathan transformation"

	[C_ID .. 693] = "清理房间后, 生成1只新苍蝇#阻挡弹幕后, 苍蝇变成蓝苍蝇", -- The Swarm
	-- Full old Desc: "获得8只环绕苍蝇#清理房间后, 生成1只新苍蝇#阻挡弹幕后, 苍蝇变成蓝苍蝇"
	-- English: "Clearing a room spawns a new fly#Flies turn into blue flies after blocking a shot"

	[C_ID .. 694] = "{{BrokenHeart}} 致死时, 致死伤害改为+2碎心#{{Warning}} 角色12碎心时死亡", -- Heartbreak
	-- Full old Desc: "↑ {{Damage}} 每个碎心+0.25伤害#{{BrokenHeart}} +3碎心#{{BrokenHeart}} 致死时, 致死伤害改为+2碎心#{{Warning}} 角色12碎心时死亡"
	-- English: "↑ {{Damage}} +0.25 Damage for each Broken Heart#{{BrokenHeart}} Every fatal hit grants +2 Broken Hearts#Isaac dies at 12 Broken Hearts"

	[C_ID .. 695] = "受伤时, 在本层获得:#↑ {{Speed}} 移速提升#↑ {{Tears}} 射速提升#最多移速+1.02, 射速+3", -- Bloody Gust
	-- English: "When taking damage, receive for the floor:#↑ {{Speed}} Speed up#↑ {{Tears}} Fire rate up#Caps at +1.02 speed and +3 fire rate"

	[C_ID .. 696] = "角色周围环绕光环#站在光环中过久的敌人受到十字光柱攻击#受伤时, 在本层中提升光环的大小", -- Salvation
	-- English: "Isaac is surrounded by a halo#Enemies that stand in the halo for too long are hit by a cross-shaped beam of light#Taking damage increases the size of the halo for the floor"

	[C_ID .. 697] = "进入头目房时, 生成头目的复制体#击败复制体可额外生成1个道具#复制体更慢, 血量只有75%", -- Vanishing Twin
	-- English: "Entering a boss room spawns a clone of the boss#Defeating the clone spawns an extra item#The clone is slower and has 75% health"

	[C_ID .. 698] = "发射与角色相同属性和效果泪弹的2个跟班#{{Damage}} 造成0.375x角色伤害", -- Twisted Pair
	-- English: "Two familiars that shoot tears with the same stats and effects as Isaac#{{Damage}} They deal 37.5% of Isaac's damage"

	[C_ID .. 699] = "{{Collectible118}} 清理4个房间后, 进入新房间时, 发射大型硫磺火激光", -- Azazel's Rage
	-- English: "{{Collectible118}} Clearing 4 rooms fires a large Brimstone beam upon entering the next room"

	[C_ID .. 700] = "使用{{Rune}}符文/{{Card}}卡牌/{{Pill}}胶囊时, 也使用在拾起回声室之后使用的最近3个符文/卡牌/胶囊", -- Echo Chamber
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill also uses a copy of the last 3 runes/cards/pills used after picking up Echo Chamber"

	[C_ID .. 701] = "每层开始时生成1{{DirtyChest}}旧箱子#旧箱子需要1钥匙打开, 含有{{SoulHeart}}魂心/{{Trinket}}饰品/{{AngelRoom}}天使房道具/妈妈, 爸爸相关的道具", -- Isaac's Tomb
	-- English: "Spawns an {{DirtyChest}} Old Chest at the start of every floor#Old Chests require a key to unlock and can contain {{SoulHeart}} Soul Hearts, {{Trinket}} trinkets or Mom, Dad and Angel items"

	[C_ID .. 702] = "受伤时, 生成1环绕魂火#魂火发射泪弹, 不阻挡弹幕, 下一层消失#最多6魂火", -- Vengeful Spirit
	-- English: "Taking damage spawns an orbital wisp#Wisps shoot tears, do not block shots and disappear on the next floor#Caps at 6 wisps"

	[C_ID .. 703] = "在当前角色和小以扫之间切换#小以扫拥有3黑心, {{Damage}}伤害+2, 飞行, 首次使用时获得与主角色等量的随机道具#两个角色道具和血量独立#{{Warning}} 任意角色死亡, 游戏结束", -- Esau Jr.
	-- English: "Swaps between the current character and Esau Jr.#Esau Jr. has {{BlackHeart}} 3 Black Hearts, {{Damage}} +2 Damage, flight, and random items equal to the number of items the player has the first time this item is used#Characters have independent items and health#{{Warning}} Dying as either character ends the run"

	[C_ID .. 704] = "{{Timer}} 击杀敌人可延长此状态1秒, 并获得短暂无敌", -- Berserk!
	-- Full old Desc: "{{Battery}} 造成伤害时充能#{{Timer}} 5秒内获得:#↑ {{Speed}} 移速+0.4#↑ {{Tears}} 射速修正x0.5#↑ {{Tears}} 射速+2#↑ {{Damage}} 伤害+3#只能使用特定近战武器, 能反弹弹幕#{{Timer}} 击杀敌人可延长此状态1秒, 并获得短暂无敌"
	-- English: "{{Battery}} Charges with damage dealt#{VAR:TIMEDEFFECT}#Restricts attacks to a melee that reflects shots#{{Timer}} Each kill increases the duration by 1 second and grants brief invincibility"

	[C_ID .. 705] = "{VAR:EFFECTLIST}#↑ 移速+1#角色可穿过敌人/弹幕并使其静止#效果结束时, 伤害静止的敌人, 移除静止的弹幕, 在角色位置产生冲击", -- Dark Arts
	-- Full old Desc: "{{Timer}} 1秒内(发射前)获得:#↑ 移速+1#角色可穿过敌人/弹幕并使其静止#效果结束时, 伤害静止的敌人, 移除静止的弹幕, 在角色位置产生冲击#穿过的敌人/弹幕越多, 伤害和冲击越强"
	-- English: "{{Timer}} Receive for 1 second (or until shooting):#{VAR:EFFECTLIST}#Isaac can pass through enemies/projectiles and paralyzes them#When the effect ends, damages paralyzed enemies, removes paralyzed projectiles and creates a blast at Isaac's location#The attacks and blast are more powerful the more enemies/projectiles have been hit"

	[C_ID .. 706] = "消耗房间中所有底座道具并对应生成蝗虫跟班#蝗虫造成2x-3x角色伤害#一些道具会生成特殊蝗虫", -- Abyss
	-- English: "Consumes all item pedestals in the room and spawns a locust familiar for each one#Locusts deal Isaac's damage 2-3 times an attack#Some items spawn a special locust when consumed"

	[C_ID .. 708] = "角色所有泪弹都从右眼发射", -- Stapler
	-- Full old Desc: "↑ {{Damage}} 伤害+1#角色所有泪弹都从右眼发射"
	-- English: "All of Isaac's tears are shot from the right eye"

	[C_ID .. 709] = "角色向移动方向冲刺#冲到敌人或头目时将其举起并摔在地上#根据角色体型造成摔伤并产生岩石波#冲刺和摔击时角色无敌", -- Suplex!
	-- English: "Isaac dashes in the direction he moves#Dashing into an enemy or boss picks it up and slams it into the ground#Slam deals damage and spawns rock waves based on Isaac's size#You're invincible during the dash and slam"

	[C_ID .. 710] = "收集最多8个掉落物, 不能再拿出#集满时使用可将掉落物合成为道具#道具品质取决于掉落物品质", -- Bag of Crafting
	-- English: "Collects up to 8 pickups which cannot be dropped#Using the item with 8 pickups in the bag crafts an item#Item quality is based on the quality of the pickups"

	[C_ID .. 711] = "进入有底座道具的房间时, 在底座上显示另一个虚道具#使用时, 调换虚实道具位置#在拿走第一个道具后使用生死逆转时, 允许角色拾起另一个#{{Warning}} 单独的虚道具在离开房间后消失", -- Flip
	-- English: "Entering a room with item pedestals displays a ghostly second item on the pedestals#Using the item flips the real and ghostly item#Using Flip after taking the first item allows Isaac to pick up the other item#{{Warning}} Ghostly items alone on pedestals disappear after leaving the room"

	[C_ID .. 712] = "生成1个环绕物, 获得随机道具的效果#该道具由25%概率来自当前房间的道具池, 75%概率来自宝箱房/头目房/商店道具池", -- Lemegeton
	-- English: "Spawns an orbital that grants a random item's effect#The items have a 25% chance to be from the current room's item pool and 75% chance to be from the Treasure, Boss or Shop pools"

	[C_ID .. 713] = "移除半心并创造1个血团#血团复制角色的泪弹#不同类型的心产生不同血量, 伤害和泪弹效果的血团", -- Sumptorium
	-- English: "Removes half a heart and creates a clot#Clots copy Isaac's tears#Each type of heart generates a clot with different HP, damage and tear effect"

	[C_ID .. 714] = "从任意距离召回遗骸的身体#遗骸之魂在遗骸返回时无敌", -- Recall
	-- English: "Retrieves the Forgotten's body from any distance#The Soul is invincible while the Forgotten is returning"

	[C_ID .. 715] = "若未存有大便, 则将下一个大便存入#若存有大便, 则使用该大便", -- Hold
	-- English: "Using the item when empty stores the next poop inside#Using the item with a poop inside uses that poop"

	[C_ID .. 716] = "{{Shop}} 每花费3硬币获得其一:#{VAR:EFFECTLIST}", -- Keeper's Sack
	-- Full old Desc: "拾起时, 生成3{{Coin}}硬币和1{{Key}}钥匙#{{Shop}} 每花费3硬币获得其一:#↑ {{Speed}} +0.03移速#↑ {{Damage}} 伤害+0.5#↑ {{Range}} 射程+0.25"
	-- English: "{{Shop}} Spending 3 coins grants either:#{VAR:EFFECTLIST}"

	[C_ID .. 717] = "石头和障碍物在被摧毁时生成2只蓝蜘蛛#石头在有敌人的房间中时不时会产生蓝蜘蛛", -- Keeper's Kin
	-- English: "Rocks and other obstacles spawn 2 blue spiders when destroyed#Rocks can occasionally spawn blue spiders in hostile rooms"

	[C_ID .. 719] = "{{Shop}} 生成1个可购买的商店道具/掉落物", -- Keeper's Box
	-- English: "{{Shop}} Spawns a random Shop item/pickup to be purchased"

	[C_ID .. 720] = "根据充能量生成掉落物#充能奖励:#{{Blank}} 1:大便 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} 12充能时触发一个随机强力效果", -- Everything Jar
	-- English: "Spawns pickups based on the number of charges#Charge Rewards:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} Triggers a powerful random effect at 12 charges"

	[C_ID .. 721] = "使后续道具都为错误道具#错误道具的效果完全随机", -- TMTRAINER
	-- English: "Causes all future items to be glitched#Glitched items have completely random effects"

	[C_ID .. 722] = "{{Chained}} 禁锢离角色最近的敌人5秒#被禁锢的敌人无法移动或攻击", -- Anima Sola
	-- English: "{{Chained}} Chains down the nearest enemy for 5 seconds#Chained enemies cannot move or attack"

	[C_ID .. 723] = "将房间中所有道具重置为内部ID减1的道具", -- Spindown Dice
	-- English: "Rerolls all items in the room by decreasing their internal ID by one"

	[C_ID .. 724] = "{{Heart}} 受伤时, 根据受伤量掉落半红心或整红心#产生的红心弹出并在1.5秒后消失", -- Hypercoagulation
	-- English: "{{Heart}} Taking damage drops a half or full Red Heart depending on how much Isaac lost#The hearts launch out and despawn after 1.5 seconds"

	[C_ID .. 725] = "造成足够伤害使角色闪红色#闪红时松开发射键, 触发其一:#投掷1个随机大便#产生增益水迹#放毒屁#生成5个激活的炸弹", -- IBS
	-- English: "Dealing enough damage causes Isaac to flash red#Releasing the fire button while Isaac is flashing either:#Throws a random poop#Creates buffing creep#{{Poison}} Farts a poison cloud#Spawns 5 live bombs"

	[C_ID .. 726] = "双击发射键使角色咯血#咯血造成1.5x角色伤害#1秒冷却#{{BrimstoneCurse}} 硫磺火激光对受影响的敌人造成额外伤害", -- Hemoptysis
	-- English: "Double-tapping a fire button makes Isaac sneeze blood#The sneeze deals 1.5x Isaac's damage#1 second cooldown#{{BrimstoneCurse}} Affected enemies take extra damage from Brimstone beams"

	[C_ID .. 727] = "爆炸时生成幽灵追击敌人#幽灵每秒造成2x角色伤害, 并在10秒后爆炸", -- Ghost Bombs
	-- Full old Desc: "{{Bomb}} +5炸弹#爆炸时生成幽灵追击敌人#幽灵每秒造成2x角色伤害, 并在10秒后爆炸"
	-- English: "Isaac's bombs spawn ghosts that chase enemies#Ghosts deal 2x Isaac's damage per second and explode after 10 seconds"

	[C_ID .. 728] = "在当前房间中, 角色会迸出恶魔跟班#恶魔向最近的敌人发射, 模仿角色属性和泪弹效果#{{Damage}} 其泪弹造成0.75x角色伤害", -- Gello
	-- English: "A demon familiar bursts out of Isaac for the room#The demon shoots towards the nearest enemy, mimicing Isaac's tears, stats and effects#{{Damage}} Its tears deal 75% of Isaac's damage"

	[C_ID .. 729] = "向一方向投掷角色的头#头造成接触伤害, 在落点发射泪弹#再次使用或接触时, 将头收回", -- Decap Attack
	-- English: "Throws Isaac's head in a direction#The head deals contact damage and shoots tears from where it lands#Using the item again or stepping on the head reattaches it"

	[C_ID .. 732] = "{{Rune}} 生成1随机符文/魂石", -- Mom's Ring
	-- Full old Desc: "↑ {{Damage}} 伤害+1#{{Rune}} 生成1随机符文/魂石"
	-- English: "{{Rune}} Spawns a random rune or soul stone"

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 15] = "{{Coin}} 摧毁石头有33%概率生成1硬币", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks has a 33% chance to spawn a coin"

	[T_ID .. 24] = "{{Coin}} 大便产生硬币的概率+20%#{{Poison}} 角色拾起硬币时放屁, 使敌人中毒并击退敌人和弹幕", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#{{Poison}} Picking up coins makes Isaac fart, which poisons and knocks back enemies and projectiles"

	[T_ID .. 32] = "每个房间25%概率出现随机蘑菇效果", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room"

	[T_ID .. 33] = "{{Collectible318}} 受伤时高概率在当前房间中生成双子座的跟班", -- Umbilical Cord
	-- Full old Desc: "{{HalfHeart}} 不多于半红心时, 获得{{Collectible100}}小史蒂文#{{Collectible318}} 受伤时高概率在当前房间中生成双子座的跟班"
	-- English: "{{HalfHeart}} Having half a Red Heart or less grants {{NameC100}}#{{Collectible318}} Taking damage has a high chance to spawn a Gemini familiar for the room"

	[T_ID .. 48] = "受伤时有5%概率对房间中所有敌人造成80点伤害#黑心和类似{{Collectible35}}死灵之书的效果造成双倍伤害", -- A Missing Page
	-- English: "Taking damage has a 5% chance to deal 80 damage to all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[T_ID .. 49] = "{{HalfHeart}} 拾起硬币时, 25%概率生成1半红心#镍币和铸币生成红心概率更高", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 25% chance to spawn a half Red Heart#Higher chance from nickels and dimes"

	[T_ID .. 50] = "{{Bomb}} 拾起硬币时, 25%概率生成1炸弹#镍币和铸币生成炸弹概率更高", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 25% chance to spawn a bomb#Higher chance from nickels and dimes"

	[T_ID .. 51] = "{{Key}} 拾起硬币时, 25%概率生成1钥匙#镍币和铸币生成钥匙概率更高", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 25% chance to spawn a key#Higher chance from nickels and dimes"

	[T_ID .. 69] = "随机使角色伪装#{{Confusion}} 使敌人混乱#可以用于打开\"深牢II\"的\"奇怪的门\"", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies#Can be used to open the "Strange Door" in "Depths II""

	[T_ID .. 92] = "↑ 高于{{Speed}}移速1, {{Tears}}射速2.73, {{Damage}}伤害3.5, {{Range}}射程6.5, {{Shotspeed}}弹速1的部分修正x1.2", -- Cracked Crown
	-- English: "↑ x1.33 Stat multiplier (except fire rate) for the stats that are above 1 {{Speed}} speed, 2.73 {{Tears}} tears, 3.5 {{Damage}} damage, 6.5 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 107] = "受伤时, 首先消耗红心, 然后消耗魂心/黑心#{{Warning}} 红心伤害会降低恶魔房/天使房概率", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#{{Warning}} Taking Red Heart damage will reduce Devil/Angel Room chance"

	[T_ID .. 110] = "{{Shop}} 商店会出现在子宫和尸宫中", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb and Corpse"

	[T_ID .. 111] = "{{TreasureRoom}} 宝箱房会出现在子宫和尸宫中", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb and Corpse"

	[T_ID .. 119] = "{{HealingRed}} 进入新层时, 治疗一半空心之容器/空骨心#{{HealingRed}} 至少治疗半红心", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half of Isaac's empty Red/Bone Hearts#{{HealingRed}} Heals half a heart minimum"

	[T_ID .. 131] = "{{HalfSoulHeart}} 拾起硬币时, 17%概率生成半魂心#镍币和铸币生成半魂心概率更高", -- Blessed Penny
	-- English: "{{HalfSoulHeart}} Picking up a coin has a 17% chance to spawn a half Soul Heart#Higher chance from nickels and dimes"

	[T_ID .. 132] = "25%概率在当前房间中获得随机药剂效果", -- Broken Syringe
	-- English: "25% chance to get a random syringe effect each room"

	[T_ID .. 133] = "角色放置的炸弹爆炸更快", -- Short Fuse
	-- English: "Isaac's bombs explode faster"

	[T_ID .. 134] = "增加屁的大小", -- Gigante Bean
	-- English: "Increases fart size"

	[T_ID .. 136] = "门, 钥匙方块和金箱子可以用爆炸打开#爆炸也可打开\"深牢II\"的\"奇怪的门\"", -- Broken Padlock
	-- English: "Doors, key blocks and golden chests can be opened with explosions#Explosions can also open the "Strange Door" in "Depths II""

	[T_ID .. 137] = "进入新层时, 上一层未收集的最多4个掉落物在初始房间生成", -- Myosotis
	-- English: "Entering a new floor spawns up to 4 uncollected pickups from the previous floor in the starting room"

	[T_ID .. 138] = "使用主动道具后, 将该主动道具重置", -- 'M
	-- English: "Using an active item rerolls it"

	[T_ID .. 139] = "{{Luck}} 对基于幸运的泪弹效果, 幸运+4", -- Teardrop Charm
	-- English: "{{Luck}} +4 Luck towards luck-based tear effects"

	[T_ID .. 140] = "拾起红心时, 50%概率将其变成蓝蜘蛛#满血时改为100%", -- Apple of Sodom
	-- English: "Picking up Red Hearts can convert them into blue spiders#Works even while at full health#Effect may consume hearts needed for healing"

	[T_ID .. 141] = "跟班的射速翻倍", -- Forgotten Lullaby
	-- English: "2x Fire rate for familiars"

	[T_ID .. 142] = "{{Collectible584}} 进入新层时, 生成4美德之书魂火", -- Beth's Faith
	-- English: "{{Collectible584}} Entering a new floor spawns 4 Book of Virtues wisps"

	[T_ID .. 144] = "泪弹若会打不中敌人, 则90度转向敌人", -- Brain Worm
	-- English: "Tears turn 90 degrees to target enemies that they may have missed"

	[T_ID .. 145] = "受伤时摧毁此饰品", -- Perfection
	-- Full old Desc: "↑ {{Luck}} 幸运+10#受伤时摧毁此饰品"
	-- English: "Taking damage destroys the trinket"

	[T_ID .. 146] = "{{RedTreasureRoom}} 宝箱房道具由恶魔交易取代", -- Devil's Crown
	-- English: "{{RedTreasureRoom}} Treasure Room items are replaced with devil deals"

	[T_ID .. 147] = "{{Battery}} 拾起硬币时, 17%概率对主动道具充能1格#镍币和铸币的充能概率更高", -- Charged Penny
	-- English: "{{Battery}} Picking up a coin has a 17% chance to add 1 charge to the active item#Higher chance from nickels and dimes"

	[T_ID .. 148] = "使所有跟班环绕角色", -- Friendship Necklace
	-- English: "All familiars orbit around Isaac"

	[T_ID .. 149] = "即将受伤时, 若主动道具已充能, 则使用主动道具", -- Panic Button
	-- English: "Right before taking damage, uses the active item if it is charged"

	[T_ID .. 150] = "锁住的门可以免费打开, 但角色需要在进入房间前清理一个死寂层的房间", -- Blue Key
	-- English: "Locked doors can be opened for free, but Isaac has to clear a room from the Hush floor before accessing the room behind them"

	[T_ID .. 151] = "尖刺全部缩回, 不造成伤害#也影响{{CursedRoom}}诅咒房的门, 刺箱子和任何尖刺障碍物", -- Flat File
	-- English: "Retracts most spikes, rendering them harmless#Also affects {{CursedRoom}} Curse Room doors, mimics and any spike obstacle"

	[T_ID .. 152] = "{{PlanetariumChance}} 第一次进入星象房前, 概率额外+15%#星象房会出现在子宫和尸宫中", -- Telescope Lens
	-- Full old Desc: "{{PlanetariumChance}} 星象房基概率+9%#{{PlanetariumChance}} 第一次进入星象房前, 概率额外+15%#星象房会出现在子宫和尸宫中"
	-- English: "Additional +15% chance if a Planetarium hasn't been entered yet#Planetariums can spawn in the Womb and Corpse"

	[T_ID .. 153] = "每个房间有25%概率获得随机妈妈道具的效果", -- Mom's Lock
	-- English: "25% chance for a random Mom item effect each room"

	[T_ID .. 154] = "每个新房间有50%概率获得1个一次性的随机骰子#骰子在离开房间后消失#骰子不占用胶囊/卡牌位", -- Dice Bag
	-- English: "50% chance per new room to grant a single use die consumable item#The die disappears when leaving#The die does not take up a pill/card slot"

	[T_ID .. 155] = "在教堂中生成{{TreasureRoom}}宝箱房和{{Shop}}商店", -- Holy Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Cathedral"

	[T_ID .. 156] = "持有时+1心之容器", -- Mother's Kiss
	-- English: "{{Heart}} +1 Heart container while held"

	[T_ID .. 158] = "受伤时, 角色掉落持有的2硬币/钥匙/炸弹#该掉落物可能会变为变体, 比如金钥匙, 镍币, 铸币等", -- Torn Pocket
	-- English: "Taking damage makes Isaac drop 2 of his coins, keys or bombs#The pickups can be replaced with other variants, such as golden keys, nickels, dimes, etc."

	[T_ID .. 159] = "{{GoldenChest}} 金箱子可能含有额外的卡牌/胶囊/饰品", -- Gilded Key
	-- Full old Desc: "{{Key}} 首次拾起时+1钥匙#{{GoldenChest}} 所有新生成的箱子(除了旧箱子和巨型箱子)由金箱子取代#{{GoldenChest}} 金箱子可能含有额外的卡牌/胶囊/饰品"
	-- English: "{{GoldenChest}} Replaces all chests (except Old/Mega) with golden chests#{{GoldenChest}} Golden chests can contain extra cards, pills or trinkets"

	[T_ID .. 160] = "{{GrabBag}} 进入新层时生成1福袋", -- Lucky Sack
	-- English: "{{GrabBag}} Entering a new floor spawns a sack"

	[T_ID .. 161] = "在阴间中生成{{TreasureRoom}}宝箱房和{{Shop}}商店", -- Wicked Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Sheol"

	[T_ID .. 162] = "{{Player7}} 清理房间后有50%概率变为阿撒泻勒#{{Timer}} 效果持续到清理或离开另一个房间", -- Azazel's Stump
	-- English: "{{Player7}} Clearing a room has a 33% chance to turn the player into Azazel#{{Timer}} Effect lasts until clearing and leaving another room"

	[T_ID .. 163] = "所有粪滴敌人友好#清理房间后生成1个随机粪滴", -- Dingle Berry
	-- English: "All Dip (small poop) enemies are friendly#Clearing a room spawns 1 random Dip"

	[T_ID .. 164] = "{{Bomb}} 放置炸弹时生成1额外炸弹", -- Ring Cap
	-- English: "{{Bomb}} Spawns 1 extra bomb for each bomb placed"

	[T_ID .. 165] = "在子宫及以后中, 所有硬币和钥匙由炸弹/心/胶囊/卡牌/饰品/电池/红苍蝇取代", -- Nuh Uh!
	-- English: "On Womb and beyond, replaces all coin and key spawns with a bomb, heart, pill, card, trinket, battery, or enemy fly"

	[T_ID .. 166] = "每个房间有50%概率获得随机被动道具的效果", -- Modeling Clay
	-- English: "50% chance to grant the effect of a random passive item each room"

	[T_ID .. 167] = "{{Friendly}} 清理房间后, 25%概率生成友好的骷髅仔", -- Polished Bone
	-- English: "{{Friendly}} Clearing a room has a 25% chance to spawn a friendly Bony"

	[T_ID .. 168] = "{{EmptyBoneHeart}} 进入新层时+1骨心", -- Hollow Heart
	-- English: "{{EmptyBoneHeart}} Entering a new floor grants +1 Bone Heart"

	[T_ID .. 169] = "{{Guppy}} 持有时算作1个嗝屁猫套装道具", -- Kid's Drawing
	-- English: "{{Guppy}} Counts as 1 item towards the Guppy transformation while held"

	[T_ID .. 170] = "{{Collectible580}} 清理房间后, 33%概率产生红钥匙房间#红色房间中触发概率降低", -- Crystal Key
	-- English: "{{Collectible580}} Clearing a room has a 33% chance to create a Red Key room#Lower chance to occur when in a red room"

	[T_ID .. 171] = "{{DevilRoom}} 50%概率使恶魔交易花费硬币而不是心", -- Keeper's Bargain
	-- English: "{{DevilRoom}} 50% chance for devil deals to cost coins instead of hearts"

	[T_ID .. 172] = "{{Coin}} 拾起硬币时, 将角色传送至随机房间#可以传送至隐藏房", -- Cursed Penny
	-- English: "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms"

	[T_ID .. 173] = "{{DevilRoom}} 允许免费进行一次恶魔交易#{{Warning}} 免费交易也会影响天使房概率", -- Your Soul
	-- English: "{{DevilRoom}} Allows Isaac to take 1 Devil Room item for free#{{Warning}} The free Devil deal still affects Angel Room chance"

	[T_ID .. 174] = "防止恶魔房中出现坎卜斯#恶魔房变为特殊房间布局, 有更多的交易, 黑心和敌人", -- Number Magnet
	-- Full old Desc: "{{DevilChance}} 恶魔房概率+10%#防止恶魔房中出现坎卜斯#恶魔房变为特殊房间布局, 有更多的交易, 黑心和敌人"
	-- English: "Prevents Krampus from appearing in Devil Rooms#Devil Rooms are special variants with more deals, Black Hearts and enemies"

	[T_ID .. 175] = "无论时间, 打开死寂的门", -- Strange Key
	-- Full old Desc: "无论时间, 打开死寂的门#使用{{Collectible297}}潘多拉的盒子时, 从随机道具池生成6个道具"
	-- English: "Opens the door to the Hush floor regardless of the timer#Using {{NameC297}} consumes the key and spawns 6 items from random pools"

	[T_ID .. 176] = "生成1个血块跟班, 模仿角色的行动#复制角色的属性和泪弹效果, 造成0.35x角色伤害#每个房间重生", -- Lil Clot
	-- English: "Spawns a blood clot that mimics Isaac's movement#Copies Isaac's stats, tear effects and 35% of his damage#Respawns each room"

	[T_ID .. 177] = "{{Chest}} 清理{{ChallengeRoom}}挑战房后, 生成1箱子#清理{{BossRushRoom}}头目挑战房, 生成1道具", -- Temporary Tattoo
	-- English: "{{Chest}} Clearing a {{ChallengeRoom}} Challenge Room spawns a chest#Clearing a {{BossRushRoom}} Boss Challenge Room spawns an item"

	[T_ID .. 178] = "受伤时角色有50%概率爆炸#不会摧毁交互中的献血机或忏悔室, 但会生成摧毁时的掉落物", -- Swallowed M80
	-- English: "Taking damage has a 50% chance for Isaac to explode#Doesn't destroy Blood Donation Machines or Confessionals, while spawning pickups as if it did"

	[T_ID .. 179] = "跟班模仿角色的移动#按住掉落键({{ButtonRT}})使跟班留在原地", -- RC Remote
	-- English: "Familiars mimic Isaac's movement#Hold the drop button ({{ButtonRT}}) to keep the familiars in place"

	[T_ID .. 180] = "精确跟随角色移动, 发射灵体泪弹#复制角色的属性和泪弹效果, 造成0.5x角色伤害#使用角色使用的大多数主动道具#复得游魂受伤即死#每层重生", -- Found Soul
	-- English: "Follows Isaac's movement and shoots spectral tears#Copies Isaac's stats, tear effects and 50% of his damage#Uses most active items when Isaac does#Dies in one hit#Respawns each floor"

	[T_ID .. 181] = "使用主动道具时, 额外触发随机1-2充能的主动道具", -- Expansion Pack
	-- English: "Using an active item triggers the effect of an additional 1-2 charge active item"

	[T_ID .. 182] = "进入{{AngelRoom}}天使房时, 生成5魂火#向乞丐捐钱时, 25%概率生成1魂火", -- Beth's Essence
	-- English: "Entering an {{AngelRoom}} Angel Room spawns 5 wisps#Donating to Beggars has a 25% chance to spawn a wisp"

	[T_ID .. 183] = "每个房间有50%概率复制1个跟班", -- The Twins
	-- Full old Desc: "每个房间有50%概率复制1个跟班#若角色没有跟班, 则获得{{Collectible8}}波比兄弟或{{Collectible67}}玛姬姐妹"
	-- English: "50% chance to duplicate a familiar each room#Grants {{NameC8}} or {{NameC67}} if Isaac has no familiars"

	[T_ID .. 184] = "{{Shop}} 商店的道具由跟班取代, 10硬币出售", -- Adoption Papers
	-- English: "{{Shop}} Shops sell familiars for 10 coins"

	[T_ID .. 185] = "杀死敌人时, 17%概率生成1只随机蝗虫", -- Cricket Leg
	-- English: "Killing an enemy has a 17% chance to spawn a random locust"

	[T_ID .. 186] = "{{Collectible706}} 生成1只无底坑蝗虫", -- Apollyon's Best Friend
	-- English: "{{Collectible706}} Grants 1 Abyss locust"

	[T_ID .. 187] = "{{TreasureRoom}} 50%概率在宝箱房添加1个额外的问号道具#{{TreasureRoom}} 50%概率揭示替代章节的问号道具", -- Broken Glasses
	-- English: "{{TreasureRoom}} 50% chance of adding an extra blind item in Treasure Rooms#50% chance to reveal the blind item in alt path Treasure Rooms"

	[T_ID .. 188] = "{{Freezing}} 击杀石化的敌人可将其冻结", -- Ice Cube
	-- Full old Desc: "{{Petrify}} 进入房间时, 20%概率石化1个敌人#{{Freezing}} 击杀石化的敌人可将其冻结"
	-- English: "{{Petrify}} Entering a room has a {VAR:LUCKCHANCE}% chance to petrify random enemies#{{Freezing}} Killing a petrified enemy freezes it"

	[T_ID .. 189] = "击杀敌人时, 使角色无敌1秒#期间击杀敌人额外增加1秒无敌", -- Sigil of Baphomet
	-- English: "Killing an enemy makes Isaac invincible for 1 second#Invincibility stacks with successive enemy kills"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 18] = "{{TreasureRoom}} 将角色传送至宝箱房#{{Planetarium}} 若当前层有星象房, 则改为传送至星象房", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room#{{Planetarium}} If there is a Planetarium, it teleports there instead"

	[Card_ID .. 20] = "{{CurseDarkness}} 移除黑暗诅咒", -- XIX - The Sun
	-- Full old Desc: "{{HealingRed}} 回满血#对所有敌人造成100点伤害#{{Timer}} 揭示本层全图并显示房间类型, {{SuperSecretRoom}}超级隐藏房/{{UltraSecretRoom}}究极隐藏房除外#{{CurseDarkness}} 移除黑暗诅咒"
	-- English: "{{CurseDarkness}} Removes Curse of Darkness"

	[Card_ID .. 21] = "{{Beggar}} 生成1个乞丐#{{DemonBeggar}} 33%概率为恶魔乞丐#5%概率为钥匙大师/炸弹乞丐/腐烂乞丐", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#5% chance for it to be a Key Master, Bomb Bum, Battery Bum, or Rotten Beggar"

	[Card_ID .. 27] = "{{Bomb}} 将所有掉落物, 箱子和非头目敌人变成炸弹", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups, chests and non-boss enemies into random bombs"

	[Card_ID .. 28] = "{{Coin}} 将所有掉落物, 箱子和非头目敌人变成硬币", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups, chests and non-boss enemies into random coins"

	[Card_ID .. 29] = "{{Key}} 将所有掉落物, 箱子和非头目敌人变成钥匙", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups, chests and non-boss enemies into random keys"

	[Card_ID .. 30] = "{{Heart}} 将所有掉落物, 箱子和非头目敌人变成随机心", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups, chests and non-boss enemies into random hearts"

	[Card_ID .. 34] = "生成1个前往下一层的活板门#{{LadderRoom}} 在有装饰(草/碎石/纸/宝石等)的地板上使用时, 改为生成暗门", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[Card_ID .. 42] = "使用时, 向角色移动方向投出#立即击杀接触到的任何敌人(精神错乱和祸兽除外)", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium or the Beast)"

	[Card_ID .. 51] = "{{HolyMantle}} 一次性神圣屏障护盾(阻挡1次伤害)", -- Holy Card
	-- English: "{{HolyMantle}} A one-use Holy Mantle shield (prevents damage once)"

	[Card_ID .. 55] = "随机符文效果#触发的符文效果较弱", -- Rune Shard
	-- English: "{{Rune}} Activates a random rune effect#The rune effect is weaker"

	[Card_ID .. 56] = "将角色的所有心(留半心)和掉落物掉在地上#只保留半心#若数量充足, 可作为{{Collectible74}}25美分和{{Collectible19}}轰! 等道具生成", -- 0 - The Fool?
	-- English: "Drops all of Isaac's hearts but one and all of his pickups on the floor#Coins and bombs are dropped as {{Collectible74}} The Quarter or {{Collectible19}} Boom! if possible"

	[Card_ID .. 57] = "{{Timer}} 获得排斥敌人和弹幕的光环, 持续60秒", -- I - The Magician?
	-- English: "{{Timer}} Grants an aura that repels enemies and projectiles for 60 seconds"

	[Card_ID .. 58] = "{{Timer}} 妈腿持续尝试践踏角色, 持续60秒", -- II - The High Priestess?
	-- English: "{{Timer}} Mom's Foot tries to stomp Isaac for 60 seconds"

	[Card_ID .. 60] = "传送至额外头目房, 清理后可获得道具#生成的头目来自下一章节", -- IV - The Emperor?
	-- English: "Teleports Isaac to an extra Boss room that can be defeated for an item#The boss is chosen from two floors deeper than the current one"

	[Card_ID .. 62] = "生成当前房间道具池的1个道具#{{BrokenHeart}} 将1心之容器或2魂心转换为1碎心", -- VI - The Lovers?
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Converts 1 heart container or 2 Soul Hearts into a Broken Heart"

	[Card_ID .. 63] = "{VAR:TIMEDEFFECT}#无敌, 但不能移动", -- VII - The Chariot?
	-- Full old Desc: "{{Timer}} 在10秒内获得:#↑ {{Tears}} 射速修正x4#无敌, 但不能移动"
	-- English: "{VAR:TIMEDEFFECT}#Invincible but can't move"

	[Card_ID .. 64] = "{{GoldenChest}} 生成2-4个金箱子", -- VIII - Justice?
	-- English: "{{GoldenChest}} Spawns 2-4 golden chests"

	[Card_ID .. 65] = "{{Coin}} 将房间中掉落物和道具转换成其商店价值的硬币#若没有东西转换, 则改为生成1硬币", -- IX - The Hermit?
	-- English: "{{Coin}} Turns all pickups and items in the room into a number of coins equal to their Shop value#If there is nothing to turn, spawns a Penny instead"

	[Card_ID .. 66] = "{{DiceRoom}} 触发1次随机骰子房效果", -- X - Wheel of Fortune?
	-- English: "{{DiceRoom}} Triggers a random Dice Room effect"

	[Card_ID .. 67] = "{{Timer}} 房间中的敌人被{{Slow}}减速, 受到的伤害翻倍, 持续30秒", -- XI - Strength?
	-- English: "{{Timer}} Enemies in the room are {{Slow}} slowed and take double damage for 30 seconds"

	[Card_ID .. 68] = "{VAR:TIMEDEFFECT}#三重泪弹#{{Coin}} 击杀的敌人掉落硬币", -- XII - The Hanged Man?
	-- Full old Desc: "{{Timer}} 在30秒内获得:#↓ {{Speed}} 移速-0.1#三重泪弹#{{Coin}} 击杀的敌人掉落硬币"
	-- English: "{VAR:TIMEDEFFECT}#Triple shot#{{Coin}} Killed enemies drop coins"

	[Card_ID .. 69] = "{{Collectible545}} 产生亡者之书的效果#{{Friendly}} 即, 当前房间中每击杀1个敌人, 生成1个骨头实体", -- XIII - Death?
	-- English: "{{Collectible545}} Activates Book of the Dead#{{Friendly}} Spawns friendly Bone entities for each enemy killed in room"

	[Card_ID .. 70] = "{{Pill}} 立即触发5次随机胶囊效果", -- XIV - Temperance?
	-- English: "{{Pill}} Forces Isaac to eat 5 random pills"

	[Card_ID .. 71] = "#{{Timer}} 在30秒内获得:#{{Collectible390}} 撒拉弗跟班#{{Collectible33}} 圣经的效果:#飞行#{{MomsHeart}} 立即击杀妈腿和妈心#{{Warning}} 当对撒但使用时, 角色会死亡", -- XV - The Devil?
	-- English: "{{Timer}} Receive for 60 seconds:#{{Collectible33}} Activates The Bible (flight)#{{Collectible390}} Seraphim familiar#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[Card_ID .. 72] = "生成7堆随机石头和障碍物#其中经常会有标记石头", -- XVI - The Tower?
	-- English: "Spawns 7 clusters of random rocks and obstacles#Clusters often contain Tinted Rocks"

	[Card_ID .. 73] = "移除角色最早收集的1个被动道具(初始道具除外)#生成当前房间道具池的2个道具", -- XVII - The Stars?
	-- English: "Removes Isaac's oldest collected passive item (ignoring starting items)#Spawns 2 random items from the current room's item pool"

	[Card_ID .. 74] = "{{UltraSecretRoom}} 将角色传送至究极隐藏房#返回的路由红色房间构成", -- XVIII - The Moon?
	-- English: "{{UltraSecretRoom}} Teleports Isaac to the Ultra Secret Room#Pathway back will be made of red rooms"

	[Card_ID .. 75] = "{{CurseDarkness}} 黑暗诅咒", -- XIX - The Sun?
	-- Full old Desc: "{{Timer}} 在当前层获得:#↑ {{Damage}} 伤害+1.5#飞行和灵体泪弹#{{BoneHeart}} 心之容器变为骨心(可恢复)#{{CurseDarkness}} 黑暗诅咒"
	-- English: "{{Timer}} Receive for the floor:#{VAR:EFFECTLIST}#{{BoneHeart}} Converts heart containers into Bone Hearts (reverts)#{{CurseDarkness}} Curse of Darkness"

	[Card_ID .. 76] = "{{RestockMachine}} 生成1个补货机", -- XX - Judgement?
	-- English: "{{RestockMachine}} Spawns a Restock Machine"

	[Card_ID .. 77] = "{{LadderRoom}} 生成1个暗门", -- XXI - The World?
	-- English: "{{LadderRoom}} Spawns a trapdoor to a crawlspace"

	[Card_ID .. 78] = "{{Collectible580}} 一次性的红钥匙", -- Cracked Key
	-- English: "{{Collectible580}} Single-use Red Key"

	[Card_ID .. 80] = "复制最近使用过的胶囊/卡牌/符文/魂石/主动道具的效果", -- Wild Card
	-- English: "Copies the effect of your most recently used pill, card, rune, soul stone or activated item"

	[Card_ID .. 81] = "使房间中所有底座道具在2个道具之间切换", -- Soul of Isaac
	-- English: "Makes all item pedestals in the room cycle between two different items"

	[Card_ID .. 82] = "{{Timer}} 在当前房间中:#{{HalfHeart}} 被击杀的敌人掉落2秒后消失的半红心", -- Soul of Magdalene
	-- English: "{{Timer}} Effect lasts for the room:#{{HalfHeart}} Enemies killed drop half Red Hearts that disappear after 2 seconds"

	[Card_ID .. 83] = "打开房间中所有的门#{{Collectible580}} 尽可能在每面墙上创造红色房间", -- Soul of Cain
	-- English: "Opens all doors in the room#{{Collectible580}} Creates red rooms on every wall possible"

	[Card_ID .. 84] = "{{Collectible705}} 激活暗仪刺刀3秒#每击中1个敌人/弹幕, 都有↑ {{Damage}} 暂时伤害提升", -- Soul of Judas
	-- English: "{{Collectible705}} Activates Dark Arts with a 3 second duration#Temporary ↑ {{Damage}} damage up for every enemy/projectile hit"

	[Card_ID .. 85] = "{{Poison}} 产生8团毒气并留下棕色水迹, 然后快速生成7屁股炸弹#站在水迹中获得:#{VAR:EFFECTLIST}", -- Soul of ???
	-- Full old Desc: "{{Poison}} 产生8团毒气并留下棕色水迹, 然后快速生成7屁股炸弹#站在水迹中获得:#↑ {{Tears}} 射速+1.5#↑ {{Damage}} 伤害+1"
	-- English: "{{Poison}} Causes 8 poison farts with brown creep, then quickly spawns 7 Butt Bombs#Standing on the creep grants:#{VAR:EFFECTLIST}"

	[Card_ID .. 86] = "{{Timer}} 在当前房间中生成14只死鸟跟班追击敌人", -- Soul of Eve
	-- English: "{{Timer}} 14 Dead Bird familiars fly in and attack enemies for the room"

	[Card_ID .. 87] = "{{Collectible704}} 激活狂怒! 10秒#{{Timer}} 每次击杀使效果延长1秒", -- Soul of Samson
	-- English: "{{Collectible704}} Activates Berserk! for 10 seconds#{{Timer}} Each kill increases the duration by 1 second"

	[Card_ID .. 88] = "{{Collectible441}} 发射超级喷射7.5秒", -- Soul of Azazel
	-- English: "{{Collectible441}} Fires a Mega Blast beam for 7.5 seconds"

	[Card_ID .. 89] = "角色死亡并立即以半心复活#致死时自动使用此物品(相当于多一条命)", -- Soul of Lazarus
	-- English: "Isaac dies and immediately revives at half a heart#This item is automatically used upon taking fatal damage (acts as an extra life)"

	[Card_ID .. 90] = "重置当前房间中的底座道具和掉落物#重置的道具来自随机道具池", -- Soul of Eden
	-- English: "Rerolls item pedestals and pickups in the room#The rerolled items come from random item pools"

	[Card_ID .. 91] = "{{Player10}} 在当前房间中, 角色变为游魂#允许免费在{{DevilRoom}}恶魔房拿1个道具#可以免费直接进入陵墓或炼狱", -- Soul of the Lost
	-- English: "{{Player10}} Turns the player into The Lost for the room#Allows taking one {{DevilRoom}} Devil Room item for free#Allows entering the Mausoleum or Gehenna door for free"

	[Card_ID .. 92] = "永久获得1个随机跟班", -- Soul of Lilith
	-- English: "Permanently grants a random familiar"

	[Card_ID .. 94] = "生成15只随机蝗虫", -- Soul of Apollyon
	-- English: "Spawns 15 random locusts"

	[Card_ID .. 95] = "{{Player16}} 在当前房间中生成遗骸作为副角色", -- Soul of the Forgotten
	-- English: "{{Player16}} Spawns The Forgotten as a secondary character for the room"

	[Card_ID .. 96] = "生成6个随机的{{Collectible584}}美德之书魂火", -- Soul of Bethany
	-- English: "{{Collectible584}} Spawns 6 random Book of Virtues wisps"

	[Card_ID .. 97] = "{{Player20}} 在当前房间中生成以扫作为副角色#以扫含有与角色等量的被动道具", -- Soul of Jacob and Esau
	-- English: "{{Player20}} Spawns Esau as a secondary character for the room#He spawns with as many passive items as the player"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 4] = "交换角色持有的{{Bomb}}炸弹和{{Key}}钥匙的数量#金炸弹和金钥匙也会交换", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Golden bombs and keys are also swapped"

	[Pill_ID .. 38] = "{{Timer}} 屏幕像素化30秒", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen for 30 seconds"

	[Pill_ID .. 42] = "{{Slow}} 使房间中所有敌人和角色减速", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. 43] = "{{Timer}} 使房间中所有敌人和角色加速#在30秒以及60秒后再触发一次", -- I'm Excited!!
	-- English: "{{Timer}} Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. 9999] = "随机胶囊效果#每次使用后有概率摧毁自身", -- Golden Pill
	-- English: "Random pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Horse Pills ----------

local HorseID = PillColor.PILL_GIANT_FLAG
local additionalHorsePillInformations = {
	[Pill_ID .. (HorseID + 1)] = "{{Poison}} 使房间中所有敌人中毒", -- Bad Gas
	-- English: "{{Poison}} Poisons the entire room"

	[Pill_ID .. (HorseID + 2)] = "{{Warning}} 对角色造成2心伤害#不多于1心时, 变为体力回满大胶囊(+3魂心)", -- Bad Trip
	-- English: "{{Warning}} Deals 2 hearts of damage to Isaac#Becomes a Full Health horse pill (+3 Soul Hearts) at 1 heart or less"

	[Pill_ID .. (HorseID + 4)] = "交换角色持有的{{Bomb}}炸弹和{{Key}}钥匙的数量#炸弹和钥匙各增加50%#金炸弹和金钥匙也会交换", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Increases bomb and key count by 50%#Golden bombs and keys are also swapped"

	[Pill_ID .. (HorseID + 5)] = "生成8个追踪的大炸弹", -- Explosive Diarrhea
	-- English: "Spawns a few homing Mega Troll Bombs"

	[Pill_ID .. (HorseID + 7)] = "不多于1心之容器时, 变为体力上升大胶囊", -- Health Down
	-- Full old Desc: "↓ {{EmptyHeart}} -2心之容器#不多于1心之容器时, 变为体力上升大胶囊"
	-- English: "Becomes a Health Up horse pill at 0 or 1 heart containers"

	[Pill_ID .. (HorseID + 11)] = "{{Collectible279}} 获得大粉丝环绕物#角色能拥有的大粉丝数量无限制", -- Pretty Fly
	-- English: "{{Collectible279}} Grants a Big Fan orbital#There is no limit on the number of Big Fans Isaac can have"

	[Pill_ID .. (HorseID + 21)] = "{{Battery}} 将主动道具完全充能", -- 48 Hour Energy!
	-- Full old Desc: "{{Battery}} 将主动道具完全充能#{{Battery}} 生成3-4电池"
	-- English: "{{Battery}} Fully recharges active items"

	[Pill_ID .. (HorseID + 22)] = "{{EmptyHeart}} 清空红心但保留1红心", -- Hematemesis
	-- Full old Desc: "{{EmptyHeart}} 清空红心但保留1红心#{{Heart}} 生成4-7红心"
	-- English: "{{EmptyHeart}} Drains all but one heart container"

	[Pill_ID .. (HorseID + 23)] = "角色不能移动和发射4秒", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 4 seconds"

	[Pill_ID .. (HorseID + 25)] = "{{Charm}} 将房间中所有敌人永久变成友好的", -- Pheromones
	-- English: "{{Charm}} Turns every enemy in the room permanently friendly"

	[Pill_ID .. (HorseID + 27)] = "生成满房间的水迹, 对敌人造成伤害", -- Lemon Party
	-- English: "Spawns a puddle of creep the size of a room which damages enemies"

	[Pill_ID .. (HorseID + 28)] = "{{Timer}} 角色进行斜角发射60秒", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 60 seconds"

	[Pill_ID .. (HorseID + 31)] = "10秒内, 角色在身后生成大便", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 10 seconds"

	[Pill_ID .. (HorseID + 32)] = "{{CurseMaze}} 本层施加混乱诅咒的效果", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. (HorseID + 33)] = "角色体型变大#不影响命中区域", -- One makes you larger
	-- English: "Greatly increases Isaac's size#Doesn't affect his hitbox"

	[Pill_ID .. (HorseID + 34)] = "角色体型变小#影响命中区域", -- One makes you small
	-- English: "Greatly decreases Isaac's size#Also decreases his hitbox's size"

	[Pill_ID .. (HorseID + 35)] = "房间中每1个大便生成2只蓝蜘蛛", -- Infested!
	-- English: "Spawns 2 blue spiders for each poop in the room"

	[Pill_ID .. (HorseID + 36)] = "房间中每有1个敌人生成2只蓝蜘蛛#若房间中没有敌人则生成2-6只蓝蜘蛛", -- Infested?
	-- English: "Spawn 2 blue spiders for each enemy in the room#Spawns 2-6 blue spiders if there are no enemies in the room"

	[Pill_ID .. (HorseID + 38)] = "{{Timer}} 屏幕像素化90秒", -- Retro Vision
	-- English: "Pixelates the screen for 90 seconds"

	[Pill_ID .. (HorseID + 40)] = "生成一滩长时间保留的打滑水迹", -- X-Lax
	-- English: "Spawns a pool of long lasting slippery creep"

	[Pill_ID .. (HorseID + 41)] = "{{Slow}} 生成一滩长时间保留的减速水迹", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of long lasting slowing creep"

	[Pill_ID .. (HorseID + 42)] = "{{Slow}} 使房间中所有敌人和角色减速", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. (HorseID + 43)] = "使房间中所有敌人和角色加速#在30秒以及60秒后再触发一次", -- I'm Excited!!
	-- English: "Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. (HorseID + 44)] = "{{Trinket}} 消耗角色的饰品并永久获得其效果#{{HealingRed}} 治疗等同于消耗饰品量的红心", -- Gulp!
	-- English: "Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. (HorseID + 45)] = "{{Collectible149}} 发射1串吐根泪弹", -- Horf!
	-- English: "{{Collectible149}} Shoots a cluster of Ipecac tears"

	[Pill_ID .. (HorseID + 47)] = "生成上次使用的胶囊的大号版本", -- Vurp!
	-- English: "Spawns the last pill Isaac used as a horse pill"

	[Pill_ID .. (HorseID + 50)] = "↑ 随机提升1项属性2次#↓ 随机降低1项属性2次", -- Experimental Pill
	-- English: "↑ Increases 1 random stat twice#↓ Decreases 1 random stat twice"

	[Pill_ID .. (HorseID + 9999)] = "随机大胶囊效果#每次使用后有概率摧毁自身", -- Golden Pill
	-- English: "Random horse pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalHorsePillInformations, EID.descriptions[languageCode].AdditionalInformations)
