---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 2] = "角色一次发射3颗泪弹", -- The Inner Eye
	-- Full old Desc: "↓ {{Tears}} 射速修正x0.48#↓ {{Tears}} 射击延迟+3#角色一次发射3颗泪弹"
	-- English: "Isaac shoots 3 tears at once"

	[C_ID .. 5] = "↑ 泪弹高度+1", -- My Reflection
	-- Full old Desc: "↑ {{Range}} 射程+1.5#↑ 泪弹高度+1#↑ {{Shotspeed}} 弹速+0.6#↑ 泪弹高度+1#泪弹具有回旋效果"
	-- English: "Tears get a boomerang effect"

	[C_ID .. 8] = "发射普通泪弹", -- Brother Bobby
	-- Full old Desc: "发射普通泪弹#泪弹造成3.5点伤害"
	-- English: "Shoots normal tears"

	[C_ID .. 9] = "所有敌对苍蝇变得友好", -- Skatole
	-- English: "All fly enemies are friendly"

	[C_ID .. 11] = "角色重生后回满血", -- 1up!
	-- Full old Desc: "↑ 生命+1#角色重生后回满血"
	-- English: "Isaac respawns with full health on death"

	[C_ID .. 13] = "{{BlackHeart}} 中毒的敌人死亡时20%概率掉1黑心", -- The Virus
	-- Full old Desc: "↓ {{Speed}} 移速-0.1#{{Poison}} 接触敌人使其中毒#{{BlackHeart}} 中毒的敌人死亡时20%概率掉1黑心"
	-- English: "{{Poison}} Touching enemies poisons them#{{BlackHeart}} Poisoned enemies can drop Black Hearts"

	[C_ID .. 21] = "在地图上显示图标#不会显示地图轮廓", -- The Compass
	-- English: "Reveals icons on the map#Does not reveal the layout of the map"

	[C_ID .. 33] = "{{Timer}} 在当前房间飞行#{{MomsHeart}} 立即击杀妈腿和妈心#{{Warning}} 当对撒但使用时, 角色会死亡", -- The Bible
	-- English: "{{Timer}} Flight for the room#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[C_ID .. 36] = "生成1个大便并击退敌人#可以放在靠近坑的位置然后炸掉作为桥", -- The Poop
	-- English: "Spawns one poop and knocks back enemies#Can be placed next to a pit and destroyed with a bomb to make a bridge"

	[C_ID .. 38] = "在角色周围发射10颗泪弹#泪弹与角色的效果一致, 额外+25点伤害", -- Tammy's Head
	-- English: "Shoots 10 tears in a circle around Isaac#The tears copy Isaac's tear effects, plus 25 damage"

	[C_ID .. 39] = "{{Petrify}} 使房间中所有敌人石化4秒", -- Mom's Bra
	-- English: "{{Petrify}} Petrifies all enemies in the room for 4 seconds"

	[C_ID .. 40] = "在角色位置造成一次爆炸", -- Kamikaze!
	-- Full old Desc: "在角色位置造成一次爆炸#造成40点伤害"
	-- English: "Causes an explosion at Isaac's location#Deals {VAR:1} damage"

	[C_ID .. 41] = "{{Fear}} 使房间中所有敌人恐惧5秒", -- Mom's Pad
	-- English: "{{Fear}} Fears all enemies in the room for 5 seconds"

	[C_ID .. 42] = "向发射方向投掷头#{{Poison}} 头接触到敌人时爆炸并使其中毒", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes on impact and poisons enemies"

	[C_ID .. 44] = "将角色传送至除错误房外的房间", -- Teleport!
	-- English: "Teleports Isaac into a random room, except I AM ERROR rooms"

	[C_ID .. 46] = "提升房间清理奖励概率#赌博时赢的概率更高", -- Lucky Foot
	-- Full old Desc: "↑ {{Luck}} 幸运+1#提升房间清理奖励概率#赌博时赢的概率更高"
	-- English: "+8% room clear reward chance#Better chance to win while gambling"

	[C_ID .. 47] = "{{Collectible168}} 使用时, 瞄准十字准星#1.5秒后导弹降落在准星处#造成20x角色伤害", -- Doctor's Remote
	-- English: "{{Collectible168}} On use, start aiming a crosshair#A missile lands on the crosshair after 1.5 seconds#It deals 20x Isaac's damage"

	[C_ID .. 49] = "下一次发射由激光取代", -- Shoop da Whoop!
	-- Full old Desc: "下一次发射由激光取代#在0.9秒内造成26x角色伤害"
	-- English: "The next shot is replaced with a beam#It deals {VAR:1}x Isaac's damage over {VAR:2} seconds"

	[C_ID .. 52] = "{{Damage}} 该炸弹造成5x角色伤害+30的伤害", -- Dr. Fetus
	-- Full old Desc: "↓ {{Tears}} 射速修正x0.4#{{Bomb}} 角色的泪弹由炸弹取代#{{Damage}} 该炸弹造成5x角色伤害+30的伤害"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 5x Isaac's damage + 30"

	[C_ID .. 53] = "角色吸引掉落物", -- Magneto
	-- English: "Pickups are attracted to Isaac"

	[C_ID .. 54] = "揭示地图轮廓#不显示房间图标", -- Treasure Map
	-- English: "Reveals the floor layout#Does not reveal room icons"

	[C_ID .. 56] = "留下一摊水迹#水迹每秒造成24点伤害", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 57] = "中范围环绕苍蝇", -- Distant Admiration
	-- Full old Desc: "中范围环绕苍蝇#每秒造成75点接触伤害"
	-- English: "Mid-range fly orbital"

	[C_ID .. 60] = "角色能走过1格间隙", -- The Ladder
	-- English: "Allows Isaac to cross 1-tile gaps"

	[C_ID .. 62] = "{{HealingRed}} 每击杀13个敌人治疗半红心", -- Charm of the Vampire
	-- English: "{{HealingRed}} Killing 13 enemies heals half a heart"

	[C_ID .. 63] = "{{Battery}} 主动道具可以过载充能至使用2次", -- The Battery
	-- English: "{{Battery}} Active items can be overcharged to two full charges"

	[C_ID .. 64] = "{{Shop}} 商店物品价格-50%", -- Steam Sale
	-- English: "{{Shop}} Shop items cost 50% less"

	[C_ID .. 65] = "在房间中央附近生成6个即爆炸弹", -- Anarchist Cookbook
	-- English: "Spawns 6 Troll Bombs near the center of the room"

	[C_ID .. 66] = "{{Slow}} 使敌人减速8秒", -- The Hourglass
	-- English: "{{Slow}} Slows enemies down for 8 seconds"

	[C_ID .. 67] = "发射普通泪弹", -- Sister Maggy
	-- Full old Desc: "发射普通泪弹#泪弹造成3.5点伤害"
	-- English: "Shoots normal tears"

	[C_ID .. 68] = "角色会发射激光而不是泪弹", -- Technology
	-- English: "Isaac shoots lasers instead of tears"

	[C_ID .. 69] = "{{Chargeable}} 可蓄力泪弹#{{Damage}} 伤害随蓄力时间提升, 最高4x#{{Tears}} 最大充能时间为2.5x射击延迟", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x#{{Tears}} Max charge time is 2.5x tear delay"

	[C_ID .. 71] = "泪弹高度和射程的总体影响为射程稍微提升", -- Mini Mush
	-- Full old Desc: "↑ {{Speed}} 移速+0.3#↑ 泪弹高度+1.5#↑ 体型变小#↓ {{Range}} 射程-4.25#泪弹高度和射程的总体影响为射程稍微提升"
	-- English: "The tear height up and range down = slight range up"

	[C_ID .. 73] = "1级: 环绕物#2级: 可发射泪弹的环绕物#3级: 食肉男孩#4级: 超级食肉男孩", -- Cube of Meat
	-- English: "Lv1: Orbital#Lv2: Shooting orbital#Lv3: Meat Boy#Lv4: Super Meat Boy"

	[C_ID .. 75] = "{{BloodDonationMachine}} 献血机得到的{{Coin}}硬币更多", -- PHD
	-- Full old Desc: "{{HealingRed}} 治疗2红心#{{Pill}} 生成1胶囊#{{Pill}} 将负面胶囊变为正面的#{{BloodDonationMachine}} 献血机得到的{{Coin}}硬币更多"
	-- English: "{{Pill}} Changes bad pills into good pills#{{BloodDonationMachine}} Blood Donation Machines give more {{Coin}} coins"

	[C_ID .. 76] = "{{SecretRoom}} 打开所有隐藏房入口", -- X-Ray Vision
	-- English: "{{SecretRoom}} Opens all secret room entrances"

	[C_ID .. 78] = "使用后, 本层头目由天启骑士取代的概率更高", -- Book of Revelations
	-- Full old Desc: "{{SoulHeart}} +1魂心#{{AngelDevilChance}} 持有时, 恶魔房/天使房概率+17.5%#使用后, 本层头目由天启骑士取代的概率更高"
	-- English: "Using the item has a high chance to replace the floor's boss with a horseman"

	[C_ID .. 81] = "死亡时, 角色以1心之容器重生#{{Warning}} 拾起时, 将角色的心之容器设置为1个", -- Dead Cat
	-- Full old Desc: "↑ 生命+9#死亡时, 角色以1心之容器重生#{{Warning}} 拾起时, 将角色的心之容器设置为1个"
	-- English: "Isaac respawns with 1 heart container on death#{{Warning}} Sets Isaac's heart containers to 1 when picked up"

	[C_ID .. 83] = "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#角色可粉碎接触的石头", -- The Nail
	-- Full old Desc: "使用后:#{{SoulHeart}} +1魂心#{{Timer}} 在当前房间中获得:#↑ {{Damage}} 伤害+0.7#↓ {{Speed}} 移速-0.18#角色每秒造成40点接触伤害#角色可粉碎接触的石头"
	-- English: "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#{{IND}}Allows Isaac to destroy rocks by walking into them"

	[C_ID .. 84] = "打开1个跳过本层的活板门#{{LadderRoom}} 10%概率是暗门", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} 10% chance to open a crawlspace trapdoor"

	[C_ID .. 86] = "召唤萌死戳进行一次践踏, 造成120点伤害#{{Warning}} 若房间没有敌人, 则萌死戳会落在角色上", -- Monstro's Tooth
	-- English: "Monstro falls on an enemy and deals 120 damage#{{Warning}} Monstro falls on Isaac if the room has no enemies"

	[C_ID .. 88] = "向角色发射方向冲刺", -- Little Chubby
	-- Full old Desc: "向角色发射方向冲刺#每秒造成52.5点接触伤害"
	-- English: "Charges forward in the direction Isaac is shooting"

	[C_ID .. 91] = "揭示相邻房间的类型#{{SecretRoom}} 可以揭示隐藏房和超级隐藏房", -- Spelunker Hat
	-- English: "Reveals the room type of adjacent rooms#{{SecretRoom}} Can reveal Secret and Super Secret Rooms"

	[C_ID .. 93] = "{VAR:TIMEDEFFECT}#{{Fear}} 使房间中的所有敌人恐惧", -- The Gamekid
	-- Full old Desc: "{{Timer}} 在6.5秒内获得:#无敌#角色无法发射, 但每秒造成40点接触伤害#{{HalfHeart}} 每击杀2个敌人治疗半红心#{{Fear}} 使房间中的所有敌人恐惧"
	-- English: "{VAR:TIMEDEFFECT}#{{IND}}{{HealingRed}} Killing 2 enemies heals half a heart#{{IND}}{{Fear}} Fears all enemies in the room"

	[C_ID .. 94] = "{{Coin}} 每2个房间随机生成1硬币", -- Sack of Pennies
	-- English: "{{Coin}} Spawns a random coin every 2 rooms"

	[C_ID .. 95] = "发射激光", -- Robo-Baby
	-- Full old Desc: "发射激光#激光造成3.5点伤害"
	-- English: "Shoots lasers"

	[C_ID .. 96] = "{{HalfHeart}} 每3个房间生成1半红心", -- Little C.H.A.D.
	-- English: "{{HalfHeart}} Spawns a half Red Heart every 3 rooms"

	[C_ID .. 99] = "{{Slow}} 发射减速泪弹", -- Little Gish
	-- Full old Desc: "{{Slow}} 发射减速泪弹#泪弹造成3.5点伤害"
	-- English: "{{Slow}} Shoots slowing tears"

	[C_ID .. 100] = "发射追踪泪弹", -- Little Steven
	-- Full old Desc: "发射追踪泪弹#泪弹造成3.5点伤害"
	-- English: "Shoots homing tears"

	[C_ID .. 104] = "泪弹击中后会分裂为2颗#分裂的泪弹造成的伤害减半", -- The Parasite
	-- English: "Tears split in two on contact#Split tears deal half damage"

	[C_ID .. 105] = "重置房间中的底座道具", -- The D6
	-- English: "Rerolls pedestal items in the room"

	[C_ID .. 107] = "{VAR:ROOMEFFECT}", -- The Pinking Shears
	-- Full old Desc: "{{Timer}} 在当前房间中获得:#飞行#角色的身体与头分离, 每秒造成82.5点接触伤害"
	-- English: "{VAR:ROOMEFFECT}#{{IND}}Isaac's body separates from his head and attacks enemies with {VAR:1} contact damage per second"

	[C_ID .. 108] = "大多数伤害降低为半心", -- The Wafer
	-- English: "Reduces most damage taken to half a heart"

	[C_ID .. 109] = "↑ {{Damage}} 角色每持有{{Coin}}1硬币, 伤害+0.04", -- Money = Power
	-- English: "↑ {{Damage}} +0.04 Damage for every {{Coin}} coin Isaac has"

	[C_ID .. 111] = "{{Poison}} 对附近敌人造成5点伤害并使其中毒#中毒的敌人受到6次角色伤害", -- The Bean
	-- English: "{{Poison}} Deals 5 damage to enemies nearby and poisons them#The poison deals Isaac's damage 6 times"

	[C_ID .. 112] = "提高所有其他环绕物的速度", -- Guardian Angel
	-- Full old Desc: "环绕物#提高所有其他环绕物的速度#阻挡弹幕#每秒造成105点接触伤害"
	-- English: "Speeds up all other orbitals"

	[C_ID .. 113] = "自动向靠近的敌人发射", -- Demon Baby
	-- Full old Desc: "自动向靠近的敌人发射#泪弹造成3点伤害"
	-- English: "Shoots enemies that get close to him"

	[C_ID .. 114] = "角色的泪弹由可投掷的菜刀取代#{{Damage}} 持拿时菜刀造成2x角色伤害, 最远位置时造成6x", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and 6x at the furthest possible distance"

	[C_ID .. 116] = "{{Battery}} 自动对主动道具的第1格充能#{{Battery}} 拾起时, 将主动道具完全充能", -- 9 Volt
	-- English: "{{Battery}} Automatically charges the first bar of active items#{{Battery}} Fully recharges the active item on pickup"

	[C_ID .. 117] = "受伤时, 生成1只攻击敌人的鸟", -- Dead Bird
	-- Full old Desc: "受伤时, 生成1只攻击敌人的鸟#鸟每秒造成4.3点接触伤害"
	-- English: "Taking damage spawns a bird that attacks enemies"

	[C_ID .. 122] = "当不多于半红心时:#{VAR:EFFECTLIST}", -- Whore of Babylon
	-- Full old Desc: "当不多于半红心时:#↑ {{Speed}} 移速+0.3#↑ {{Damage}} 伤害+1.5"
	-- English: "When on half a Red Heart or less:#{VAR:EFFECTLIST}"

	[C_ID .. 123] = "{{Timer}} 在当前房间中生成1个随机跟班", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the room"

	[C_ID .. 124] = "触发1次随机主动道具的效果", -- Dead Sea Scrolls
	-- English: "Triggers a random active item effect#Chooses the effect from a fixed list of items"

	[C_ID .. 125] = "追踪炸弹", -- Bobby-Bomb
	-- Full old Desc: "{{Bomb}} +5炸弹#追踪炸弹"
	-- English: "Homing bombs"

	[C_ID .. 126] = "↑ {{Damage}} 在当前房间中伤害+1.2#{{Warning}} 对角色造成1心伤害#{{Heart}} 优先消耗红心", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 127] = "重置整层", -- Forget Me Now
	-- English: "Rerolls and restarts the entire floor"

	[C_ID .. 128] = "远范围苍蝇环绕物", -- Forever Alone
	-- Full old Desc: "远范围苍蝇环绕物#每秒造成30点接触伤害"
	-- English: "Long range fly orbital"

	[C_ID .. 130] = "持有时:#{{Speed}} 设置移速至少为1.5#飞行#使用后, 向角色移动方向冲刺", -- A Pony
	-- English: "While held:#{{Speed}} Sets your Speed to at least 1.5#Flight#Upon use, dashes in the direction of Isaac's movement"

	[C_ID .. 131] = "{{Bomb}} 每3个房间生成1炸弹", -- Bomb Bag
	-- English: "{{Bomb}} Spawns 1 bomb pickup every 3 rooms"

	[C_ID .. 132] = "{{Damage}} 泪弹前进越远伤害越高", -- A Lump of Coal
	-- English: "{{Damage}} Tears deal more damage the further they travel"

	[C_ID .. 133] = "{{SoulHeart}} 将1心之容器转换为3魂心", -- Guppy's Paw
	-- English: "{{SoulHeart}} Converts 1 heart container into 3 Soul Hearts"

	[C_ID .. 134] = "{{Chest}} 33%概率将房间清理奖励变成箱子#33%概率使奖励消失", -- Guppy's Tail
	-- English: "{{Chest}} 33% chance to replace the room clear reward with a chest#33% chance to spawn no room clear reward"

	[C_ID .. 135] = "{{Coin}} 对角色造成半红心伤害并生成1-2硬币#{{Heart}} 优先消耗红心", -- IV Bag
	-- English: "{{Coin}} Hurts Isaac for half a heart and spawns 1-2 coins#{{Heart}} Removes Red Hearts first"

	[C_ID .. 136] = "生成1个诱饵, 吸引敌人并在5秒后爆炸", -- Best Friend
	-- English: "Spawns a decoy Isaac that attracts enemies and explodes after 5 seconds"

	[C_ID .. 137] = "角色的炸弹不再自动爆炸#使用时, 使角色的炸弹同时引爆", -- Remote Detonator
	-- Full old Desc: "{{Bomb}} +5炸弹#角色的炸弹不再自动爆炸#使用时, 使角色的炸弹同时引爆"
	-- English: "Isaac's bombs no longer explode automatically#Upon use, detonates all of Isaac's bombs at once"

	[C_ID .. 139] = "{{Trinket}} 角色可以持有2个饰品", -- Mom's Purse
	-- English: "{{Trinket}} Isaac can hold 2 trinkets"

	[C_ID .. 140] = "{{Poison}} 角色的炸弹会使炸到的敌人中毒", -- Bob's Curse
	-- Full old Desc: "{{Bomb}} +5炸弹#{{Poison}} 角色的炸弹会使炸到的敌人中毒"
	-- English: "{{Poison}} Isaac's bombs poison enemies caught in the blast"

	[C_ID .. 142] = "{{SoulHeart}} 当受伤至半心时, 角色获得1魂心#每房间只会发生一次#离开并重进房间可以再次触发", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again"

	[C_ID .. 144] = "{{Coin}} 捡起附近的硬币#每3-4硬币生成1随机掉落物", -- Bum Friend
	-- English: "{{Coin}} Picks up nearby coins#Spawns random pickups every 3-4 coins"

	[C_ID .. 147] = "{{Timer}} 在当前房间中角色可粉碎接触的石头和隐藏房的墙", -- Notched Axe
	-- English: "{{Timer}} For the room, Isaac can break rocks and Secret Room walls by walking into them"

	[C_ID .. 149] = "角色的泪弹呈抛物线射出#{{Poison}} 泪弹会爆炸并使击中的敌人中毒", -- Ipecac
	-- Full old Desc: "↑ {{Damage}} 伤害+40#↓ {{Tears}} 射速修正x0.5#↓ {{Tears}} 射击延迟+10#角色的泪弹呈抛物线射出#{{Poison}} 泪弹会爆炸并使击中的敌人中毒"
	-- English: "Isaac's tears are shot in an arc#{{Poison}} The tears explode and poison enemies where they land"

	[C_ID .. 151] = "泪弹击中敌人时有1/6概率生成1只蓝苍蝇", -- The Mulligan
	-- English: "Tears have a 1/6 chance to spawn a blue fly when hitting an enemy"

	[C_ID .. 152] = "角色右眼泪弹由持续激光取代#{{Damage}} 激光每秒造成3x角色伤害", -- Technology 2
	-- Full old Desc: "↓ {{Tears}} 射速修正x0.5#↓ {{Damage}} 伤害修正x0.65#角色右眼泪弹由持续激光取代#{{Damage}} 激光每秒造成3x角色伤害"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} It deals 3x Isaac's damage per second"

	[C_ID .. 153] = "角色同时发射4颗泪弹", -- Mutant Spider
	-- Full old Desc: "↓ {{Tears}} 射速修正x0.48#↓ {{Tears}} 射击延迟+3#角色同时发射4颗泪弹"
	-- English: "Isaac shoots 4 tears at once"

	[C_ID .. 155] = "在房间中四处漂浮", -- The Peeper
	-- Full old Desc: "在房间中四处漂浮#每秒造成17.1点接触伤害"
	-- English: "Floats around the room"

	[C_ID .. 156] = "{{Battery}} 受伤时, 为主动道具回复1格充能", -- Habit
	-- English: "{{Battery}} Taking damage adds 1 charge to the active item"

	[C_ID .. 157] = "↑ {{Damage}} 受伤时, 伤害增加#每层能叠加6次#效果在当前层持续", -- Bloody Lust
	-- English: "↑ {{Damage}} Taking damage grants a damage up#Applies up to 6 times per floor#Lasts for the whole floor"

	[C_ID .. 158] = "生成1{{SoulHeart}}魂心/{{Rune}}符文/{{Card}}卡牌#{VAR:EFFECTLIST}", -- Crystal Ball
	-- Full old Desc: "生成1{{SoulHeart}}魂心/{{Rune}}符文/{{Card}}卡牌#{{Timer}} 揭示全图({{SuperSecretRoom}}超级隐藏房除外)"
	-- English: "Spawns a {{SoulHeart}} Soul Heart, {{Rune}} rune or {{Card}} card#{VAR:EFFECTLIST}"

	[C_ID .. 160] = "在敌人附近生成5道光柱#在0.8秒内每道光柱造成8x角色伤害+160的伤害", -- Crack the Sky
	-- English: "Spawns 5 beams of light near enemies#Each beam deals 8x Isaac's damage + 160 over 0.8 seconds"

	[C_ID .. 161] = "{{Player4}} 死亡时, 以???(小蓝人)重生", -- Ankh
	-- English: "{{Player4}} Respawn as ??? (Blue Baby) on death"

	[C_ID .. 163] = "发射灵体泪弹", -- Ghost Baby
	-- Full old Desc: "发射灵体泪弹#泪弹造成3.5点伤害"
	-- English: "Shoots spectral tears"

	[C_ID .. 164] = "投掷蓝火#造成接触伤害, 阻挡弹幕, 2秒后消失", -- The Candle
	-- English: "Throws a blue flame#It deals contact damage, blocks enemy tears, and despawns after 2 seconds"

	[C_ID .. 166] = "重置房间中的所有掉落物", -- D20
	-- English: "Rerolls all pickups in the room"

	[C_ID .. 167] = "以V字形发射2颗泪弹", -- Harlequin Baby
	-- Full old Desc: "以V字形发射2颗泪弹#泪弹造成4点伤害"
	-- English: "Shoots two tears in a V-shaped pattern"

	[C_ID .. 168] = "发射泪弹改为瞄准十字准星#1.5秒后火箭降落在准星处#{{Damage}} 火箭造成20x角色伤害", -- Epic Fetus
	-- English: "Instead of shooting tears, aim a crosshair#A rocket lands on the crosshair after 1.5 seconds#{{Damage}} Rockets deal 20x Isaac's damage"

	[C_ID .. 169] = "泪弹击杀敌人伤害溢出时会穿透敌人前进", -- Polyphemus
	-- Full old Desc: "↑ {{Damage}} 伤害+4#↑ {{Damage}} 伤害修正x2#↓ {{Tears}} 射速修正x0.48#↓ {{Tears}} 射击延迟+3#泪弹击杀敌人伤害溢出时会穿透敌人前进"
	-- English: "Tears pierce killed enemies if there is leftover damage"

	[C_ID .. 170] = "每4秒践踏附近敌人", -- Daddy Longlegs
	-- Full old Desc: "每4秒践踏附近敌人#每秒造成40点伤害"
	-- English: "Stomps on a nearby enemy every 4 seconds"

	[C_ID .. 171] = "{{Slow}} 使敌人减速4秒", -- Spider Butt
	-- Full old Desc: "{{Slow}} 使敌人减速4秒#所有敌人受到10点伤害"
	-- English: "{{Slow}} Slows down enemies for 4 seconds"

	[C_ID .. 174] = "发射随机泪弹", -- Rainbow Baby
	-- Full old Desc: "发射随机泪弹#泪弹造成3-5点伤害"
	-- English: "Shoots random tears"

	[C_ID .. 175] = "打开房间中所有的门, 包括{{SecretRoom}}{{SuperSecretRoom}}隐藏房, {{ChallengeRoom}}{{BossRushRoom}}挑战房和超级撒旦的门", -- Dad's Key
	-- English: "Opens all doors in the room, including {{SecretRoom}}{{SuperSecretRoom}}Secret Rooms, {{ChallengeRoom}}{{BossRushRoom}}Challenge Rooms, and the Mega Satan door"

	[C_ID .. 177] = "{{Coin}} 花费1硬币, 概率生成1掉落物", -- Portable Slot
	-- English: "{{Coin}} Spend 1 coin for a chance to spawn a pickup"

	[C_ID .. 178] = "受伤时, 留下一摊水迹#水迹每秒造成24点伤害", -- Holy Water
	-- English: "Taking damage spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 180] = "受伤时, 角色放屁#{{Poison}} 屁会使敌人中毒", -- The Black Bean
	-- English: "Isaac farts when damaged#{{Poison}} The fart poisons enemies"

	[C_ID .. 181] = "持有时:#{{Speed}} 设置移速至少为1.5#飞行#使用后, 向角色移动方向冲刺, 留下光柱", -- White Pony
	-- English: "{{Speed}} Sets your Speed to at least 1.5#Flight while held#Using the item dashes in the direction of Isaac's movement, leaving behind beams of light"

	[C_ID .. 186] = "{{Heart}} 优先消耗红心", -- Blood Rights
	-- Full old Desc: "对所有敌人造成40点伤害#{{Warning}} 对角色造成1心伤害#{{Heart}} 优先消耗红心"
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 187] = "移动时会使毛球摇动#毛球击杀敌人时变大#球越大, 造成的伤害越高", -- Guppy's Hairball
	-- English: "Moving swings the hairball around#The ball grows when it kills an enemy#It deals more damage the bigger it is"

	[C_ID .. 188] = "与角色移动互为镜像#向角色发射泪弹", -- Abel
	-- Full old Desc: "与角色移动互为镜像#向角色发射泪弹#泪弹造成3.5点伤害"
	-- English: "Mirrors Isaac's movement#Shoots towards Isaac"

	[C_ID .. 191] = "角色的泪弹每2-3秒获得随机效果", -- 3 Dollar Bill
	-- English: "Isaac's tears get random effects every 2-3 seconds"

	[C_ID .. 198] = "每种掉落物生成1个", -- Box
	-- English: "Spawns 1 pickup of each type"

	[C_ID .. 199] = "箱子中的掉落物更多", -- Mom's Key
	-- Full old Desc: "{{Key}} +2钥匙#箱子中的掉落物更多"
	-- English: "Chests contain more pickups"

	[C_ID .. 202] = "{{Petrify}} 接触敌人时使其石化并变成金块#角色根据持有硬币量造成接触伤害#{{Coin}} 击杀金敌人会生成硬币#角色生成的大便为金大便的概率更高", -- Midas' Touch
	-- English: "{{Petrify}} Touching enemies petrifies them and turns them gold#Isaac deals contact damage based on his coin count#{{Coin}} Killing a golden enemy spawns coins#Poop spawned by Isaac has a high chance to be golden poop"

	[C_ID .. 203] = "所有可能的掉落物成对出现", -- Humbleing Bundle
	-- English: "Pickups spawned are doubled if possible"

	[C_ID .. 204] = "受伤时, 50%概率生成1随机掉落物", -- Fanny Pack
	-- English: "Taking damage has a 50% chance to spawn a random pickup"

	[C_ID .. 205] = "{{Battery}} 使用未充能的主动道具时, 花费2心使其完全充能#只有道具完全没有充能时有效", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of 2 hearts#Only works when the item has no charges"

	[C_ID .. 207] = "1级: 环绕物#{{Charm}} 2级: 发射魅惑泪弹的环绕物#{{Charm}} 3级: 绷带女孩#{{Charm}} 4级: 超级绷带女孩", -- Ball of Bandages
	-- English: "Lv1: Orbital#{{Charm}} Lv2: Orbital that shoots charmed tears#{{Charm}} Lv3: Bandage Girl#{{Charm}} Lv4: Super Bandage Girl"

	[C_ID .. 208] = "精英敌人概率从5%增至20%#不增加精英头目的概率", -- Champion Belt
	-- Full old Desc: "↑ {{Damage}} 伤害+1#精英敌人概率从5%增至20%#不增加精英头目的概率"
	-- English: "Champion enemy chance goes from 5% to 20%#Doesn't increase chance of champion bosses"

	[C_ID .. 209] = "{{Confusion}} 爆炸会使房间中所有敌人混乱并造成10点伤害", -- Butt Bombs
	-- Full old Desc: "{{Bomb}} +5炸弹#{{Confusion}} 爆炸会使房间中所有敌人混乱并造成10点伤害"
	-- English: "{{Confusion}} Explosions concuss and damage every enemy in the room"

	[C_ID .. 210] = "完全不行动1秒后, 角色无敌", -- Gnawed Leaf
	-- English: "After 1 second of inactivity, Isaac becomes invincible"

	[C_ID .. 212] = "死亡时, 50%概率以半心重生", -- Guppy's Collar
	-- English: "50% chance to revive with half a heart on death"

	[C_ID .. 213] = "角色的泪弹能摧毁敌人的弹幕", -- Lost Contact
	-- Full old Desc: "↓ {{Shotspeed}} 弹速-0.15#角色的泪弹能摧毁敌人的弹幕"
	-- English: "Isaac's tears destroy enemy shots"

	[C_ID .. 214] = "{{Timer}} 受伤时, 在房间中留下血迹#血迹每秒造成6点伤害", -- Anemic
	-- Full old Desc: "↑ {{Range}} 射程+5#{{Timer}} 受伤时, 在房间中留下血迹#血迹每秒造成6点伤害"
	-- English: "{{Timer}} When taking damage Isaac leaves a trail of blood creep for the room#The creep deals 6 damage per second"

	[C_ID .. 218] = "{{HealingRed}} 每分钟50%概率治疗半红心", -- Placenta
	-- Full old Desc: "↑ {{Heart}} +1心之容器#{{HealingRed}} 每分钟50%概率治疗半红心"
	-- English: "{{HealingRed}} 50% chance to heal half a heart every minute"

	[C_ID .. 220] = "角色的炸弹爆炸时环形发射10颗泪弹", -- Sad Bombs
	-- Full old Desc: "{{Bomb}} +5炸弹#角色的炸弹爆炸时环形发射10颗泪弹"
	-- English: "Isaac's bombs shoot 10 tears in a circle when they explode"

	[C_ID .. 221] = "角色的泪弹会在敌人和障碍物上反弹", -- Rubber Cement
	-- English: "Isaac's tears bounce off enemies and obstacles"

	[C_ID .. 222] = "按住发射键会使泪弹悬空#松开后, 所有泪弹会向发射方向继续前进", -- Anti-Gravity
	-- Full old Desc: "↑ {{Tears}} 射击延迟-2#按住发射键会使泪弹悬空#松开后, 所有泪弹会向发射方向继续前进"
	-- English: "Holding the fire buttons causes tears to hover in midair#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "免疫爆炸, 岩石波, 践踏的伤害#{{HealingRed}} 受爆炸击中时治疗1红心", -- Pyromaniac
	-- Full old Desc: "{{Bomb}} +5炸弹#免疫爆炸, 岩石波, 践踏的伤害#{{HealingRed}} 受爆炸击中时治疗1红心"
	-- English: "Immunity to explosions, rock waves, and stomp attacks#{{HealingRed}} Getting hit by explosions heals 1 heart"

	[C_ID .. 224] = "泪弹击中后会分裂为4颗#分裂的泪弹造成的伤害减半", -- Cricket's Body
	-- Full old Desc: "↑ {{Tears}} 射击延迟-1#↑ {{Tearsize}} 泪弹尺寸x1.2#↓ {{Range}} 射程-10#泪弹击中后会分裂为4颗#分裂的泪弹造成的伤害减半"
	-- English: "Tears split up in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "{{SoulHeart}} 受伤时, 概率生成1魂心#{{HalfHeart}} 敌人死亡时概率掉落1半红心", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a chance to spawn a Soul Heart#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 227] = "受伤时, 生成1-2硬币", -- Piggy Bank
	-- Full old Desc: "{{Coin}} +3硬币#受伤时, 生成1-2硬币"
	-- English: "{{Coin}} Taking damage spawns 1-2 coins"

	[C_ID .. 228] = "{{Fear}} 15%概率发射恐惧泪弹", -- Mom's Perfume
	-- Full old Desc: "↑ {{Tears}} 射击延迟-1#{{Fear}} 15%概率发射恐惧泪弹"
	-- English: "{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 229] = "{{Chargeable}} 泪弹可蓄力并在松开时散射", -- Monstro's Lung
	-- Full old Desc: "↓ {{Tears}} 射击延迟x4.3#{{Chargeable}} 泪弹可蓄力并在松开时散射"
	-- English: "{{Chargeable}} Tears are charged and released in a shotgun style attack"

	[C_ID .. 230] = "{{Fear}} 15%概率发射恐惧泪弹", -- Abaddon
	-- Full old Desc: "↑ {{Speed}} 移速+0.2#↑ {{Damage}} 伤害+1.5#↓ {{EmptyHeart}} 移除所有心之容器#{{BlackHeart}} +6黑心#{{Fear}} 15%概率发射恐惧泪弹"
	-- English: "↓ {{EmptyHeart}} Removes all heart containers#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 231] = "{{Slow}} 角色会留下减速水迹", -- Ball of Tar
	-- Full old Desc: "{{Slow}} 10%概率发射减速泪弹#{{Luck}} 幸运18: 100%概率#{{Slow}} 角色会留下减速水迹"
	-- English: "{{Slow}} {VAR:LUCKCHANCE}% chance to shoot slowing tears#{{Slow}} Isaac leaves a trail of slowing creep"

	[C_ID .. 232] = "{{Slow}} 受伤时, 使房间中的所有敌人永久减速", -- Stop Watch
	-- Full old Desc: "↑ {{Speed}} 移速+0.3#{{Slow}} 受伤时, 使房间中的所有敌人永久减速"
	-- English: "{{Slow}} Taking damage slows all enemies in the room permanently"

	[C_ID .. 233] = "角色的泪弹环绕在角色周围", -- Tiny Planet
	-- Full old Desc: "↑ 泪弹高度+7#灵体泪弹#角色的泪弹环绕在角色周围"
	-- English: "Isaac's tears orbit around him"

	[C_ID .. 234] = "击杀敌人时, 生成1只蓝蜘蛛", -- Infestation 2
	-- English: "Killing an enemy spawns a blue spider"

	[C_ID .. 236] = "接触敌人时, 使其变成大便", -- E. Coli
	-- English: "Touching an enemy turns it into poop"

	[C_ID .. 238] = "{{EternalHeart}} 永恒之心概率+2%", -- Key Piece 1
	-- Full old Desc: "{{Warning}} 集齐两个钥匙碎片可开启金色大门#{{AngelChance}} 天使房概率+25%#{{EternalHeart}} 永恒之心概率+2%"
	-- English: "{{Warning}} Getting both parts of the key opens a big golden door#{{EternalHeart}} +2% chance for Eternal Hearts"

	[C_ID .. 239] = "{{EternalHeart}} 永恒之心概率+2%", -- Key Piece 2
	-- Full old Desc: "{{Warning}} 集齐两个钥匙碎片可开启金色大门#{{AngelChance}} 天使房概率+25%#{{EternalHeart}} 永恒之心概率+2%"
	-- English: "{{Warning}} Getting both parts of the key opens a big golden door#{{EternalHeart}} +2% chance for Eternal Hearts"

	[C_ID .. 241] = "所有房间清理奖励翻倍#33%概率房间清理奖励消失", -- Contract from Below
	-- English: "Doubles all room clear rewards#33% chance for no room clear reward"

	[C_ID .. 242] = "50%概率阻挡弹幕", -- Infamy
	-- English: "50% chance to block enemy shots"

	[C_ID .. 243] = "阻挡角色发射方向的敌人弹幕", -- Trinity Shield
	-- English: "Blocks enemy shots coming from the direction Isaac is shooting"

	[C_ID .. 244] = "时不时发射激光", -- Tech.5
	-- English: "Occasionally shoot lasers in addition to Isaac's tears"

	[C_ID .. 245] = "角色同时发射2颗泪弹", -- 20/20
	-- English: "Isaac shoots 2 tears at once"

	[C_ID .. 246] = "{{SecretRoom}} 在地图上揭示隐藏房", -- Blue Map
	-- English: "{{SecretRoom}} Reveals secret room locations on the map"

	[C_ID .. 247] = "跟班造成的伤害翻倍", -- BFFS!
	-- English: "Familiars deal double damage"

	[C_ID .. 248] = "蓝蜘蛛/蓝苍蝇造成的伤害翻倍", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage"

	[C_ID .. 249] = "允许角色击败头目后从2个道具中选择", -- There's Options
	-- English: "Allows Isaac to choose between 2 items after beating a boss"

	[C_ID .. 250] = "{{Bomb}} 所有炸弹掉落物变成一对炸弹", -- Bogo Bombs
	-- English: "{{Bomb}} All bomb drops become double bombs"

	[C_ID .. 251] = "角色能携带2卡牌#将所有胶囊变成卡牌", -- Starter Deck
	-- Full old Desc: "{{Card}} 拾起时, 生成1卡牌#角色能携带2卡牌#将所有胶囊变成卡牌"
	-- English: "Isaac can carry 2 cards#Turns all pills into cards"

	[C_ID .. 252] = "角色能携带2胶囊#将所有卡牌变成胶囊", -- Little Baggy
	-- Full old Desc: "{{Pill}} 拾起时, 生成1胶囊#角色能携带2胶囊#将所有卡牌变成胶囊"
	-- English: "Isaac can carry 2 pills#Turns all cards into pills"

	[C_ID .. 256] = "{{Burning}} 角色的炸弹爆炸时会留下火焰", -- Hot Bombs
	-- Full old Desc: "{{Bomb}} +5炸弹#{{Burning}} 角色的炸弹爆炸时会留下火焰"
	-- English: "{{Burning}} Isaac's bombs leave a flame where they explode"

	[C_ID .. 257] = "{{Warning}} 爆炸也会伤到角色", -- Fire Mind
	-- Full old Desc: "{{Burning}} 角色的泪弹可点燃敌人#击中敌人时, 泪弹有10%概率爆炸#{{Luck}} 幸运13: 100%概率#{{Warning}} 爆炸也会伤到角色"
	-- English: "{{Burning}} Isaac's tears light enemies on fire#{VAR:LUCKCHANCE}% chance for tears to explode on enemy impact#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 258] = "拾起时和每次进入新层时, 重置角色属性和持有道具", -- Missing No.
	-- English: "Rerolls all of Isaac's items and stats on pickup and at every new floor"

	[C_ID .. 260] = "{{CurseBlind}} 免疫诅咒", -- Black Candle
	-- Full old Desc: "{{CurseBlind}} 免疫诅咒#{{BlackHeart}} +1黑心#{{AngelDevilChance}} 恶魔房/天使房概率+15%"
	-- English: "{{CurseBlind}} Immune to curses"

	[C_ID .. 261] = "↓ 泪弹前进越远伤害越低", -- Proptosis
	-- Full old Desc: "↑ {{Damage}} 伤害修正x2#↓ 泪弹前进越远伤害越低"
	-- English: "↓ Tears deal less damage the further they travel"

	[C_ID .. 262] = "受伤至1心时, 对房间中所有敌人造成伤害", -- Missing Page 2
	-- Full old Desc: "{{BlackHeart}} +1黑心#受伤至1心时, 对房间中所有敌人造成伤害"
	-- English: "Taking damage down to 1 heart damages all enemies in the room"

	[C_ID .. 264] = "每秒造成22.5点接触伤害", -- Smart Fly
	-- Full old Desc: "环绕物#每秒造成22.5点接触伤害#角色受伤前, 阻挡弹幕#角色受伤后, 追击附近敌人"
	-- English: "Attacks enemies when Isaac takes damage"

	[C_ID .. 265] = "当被敌人弹幕击中时, 10%概率对房间中所有敌人造成40点伤害", -- Dry Baby
	-- English: "10% chance to damage all enemies in the room when it is hit by an enemy tear"

	[C_ID .. 266] = "{{Slow}} 留下减速水迹#清理房间后, 生成1-2只蓝蜘蛛", -- Juicy Sack
	-- English: "{{Slow}} Leaves slowing creep#Spawns 1-2 friendly spiders after clearing a room"

	[C_ID .. 267] = "发射激光#向角色发射方向移动", -- Robo-Baby 2.0
	-- Full old Desc: "发射激光#激光造成3.5点伤害#向角色发射方向移动"
	-- English: "Shoots lasers#Moves in the direction Isaac is shooting"

	[C_ID .. 268] = "角色发射时, 生成蓝苍蝇", -- Rotten Baby
	-- English: "Spawns blue flies when Isaac shoots"

	[C_ID .. 269] = "留下每秒造成6点伤害的水迹", -- Headless Baby
	-- English: "Leaves creep which deals 6 damage per second"

	[C_ID .. 270] = "追击敌人#{{HealingRed}} 击杀敌人时为角色治疗半红心", -- Leech
	-- Full old Desc: "追击敌人#{{HealingRed}} 击杀敌人时为角色治疗半红心#每秒造成3.2点接触伤害"
	-- English: "Chases enemies#{{HealingRed}} Heals Isaac for half a heart when it kills an enemy"

	[C_ID .. 271] = "每5-6个房间生成1随机掉落物", -- Mystery Sack
	-- English: "Spawns a random pickup every 5-6 rooms"

	[C_ID .. 272] = "友好的爆炸苍蝇#{{Warning}} 爆炸也会伤到角色", -- BBF
	-- Full old Desc: "友好的爆炸苍蝇#爆炸造成60点伤害#{{Warning}} 爆炸也会伤到角色"
	-- English: "Friendly exploding fly#The explosion deals {VAR:1} damage#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 273] = "向角色发射方向冲刺#接触到敌人时爆炸#{{Warning}} 爆炸也会伤到角色", -- Bob's Brain
	-- Full old Desc: "向角色发射方向冲刺#接触到敌人时爆炸#{{Poison}} 爆炸造成60点伤害并使敌人中毒#{{Warning}} 爆炸也会伤到角色"
	-- English: "Dashes in the direction Isaac is shooting#Explodes when it hits an enemy#{{Poison}} The explosion deals {VAR:1} damage and poisons enemies#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 274] = "受伤时, 在房间中生成1个中范围环绕物", -- Best Bud
	-- Full old Desc: "受伤时, 在房间中生成1个中范围环绕物#环绕物每秒造成75点接触伤害"
	-- English: "Taking damage spawns one midrange orbital for the room"

	[C_ID .. 275] = "{{Chargeable}} 蓄力并发射{{Collectible118}}硫磺火激光", -- Lil Brimstone
	-- Full old Desc: "{{Chargeable}} 蓄力并发射{{Collectible118}}硫磺火激光#激光在0.63秒内造成31.5点伤害"
	-- English: "{{Chargeable}} Familiar that charges and shoots a {{Collectible118}} blood beam#It deals {VAR:1} damage over 0.63 seconds"

	[C_ID .. 276] = "角色无敌#生成跟随角色的心脏#{{Warning}} 心脏受伤时, 角色也会受伤", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 277] = "{{Fear}} 追击并使敌人恐惧", -- Lil Haunt
	-- Full old Desc: "{{Fear}} 追击并使敌人恐惧#每秒造成4点接触伤害"
	-- English: "{{Fear}} Chases and fears enemies"

	[C_ID .. 278] = "{{Heart}} 捡起附近的红心#{{SoulHeart}} 每捡起1.5红心, 生成1魂心/黑心/蜘蛛", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#{{SoulHeart}} Spawns a Soul Heart or spider for every 1.5 Red Hearts picked up"

	[C_ID .. 279] = "较大的环绕物", -- Big Fan
	-- Full old Desc: "较大的环绕物#每秒造成30点接触伤害"
	-- English: "Large orbital"

	[C_ID .. 280] = "在有敌人的房间里随机生成蓝蜘蛛, 最多5只", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms"

	[C_ID .. 281] = "诱饵跟班#敌人有时会以他而不是角色作为目标", -- Punching Bag
	-- English: "Decoy familiar#Enemies target him instead of Isaac"

	[C_ID .. 282] = "允许角色跳过间隙和障碍物", -- How to Jump
	-- English: "Allows Isaac to jump over gaps and obstacles"

	[C_ID .. 283] = "重置房间中所有掉落物, 底座道具和角色持有的被动道具", -- D100
	-- English: "Reroll all pickups and pedestal items in the room, and all of Isaac's passive items"

	[C_ID .. 284] = "重置所有角色持有的被动道具", -- D4
	-- English: "Reroll all of Isaac's passive items"

	[C_ID .. 285] = "重置房间中所有敌人", -- D10
	-- English: "Reroll all enemies in the room"

	[C_ID .. 286] = "触发角色持有的符文/卡牌的效果", -- Blank Card
	-- English: "Triggers the effect of the rune or card Isaac holds without using it"

	[C_ID .. 289] = "投掷红火#火焰可造成接触伤害, 阻挡弹幕, 在造成或阻挡5次伤害后消失", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 5 times"

	[C_ID .. 290] = "{{Heart}} 满血时, 最多将4红心存入罐中#使用时, 所存红心全部掉在地上", -- The Jar
	-- English: "{{Heart}} Picking up Red Hearts while at full health stores up to 4 of them in the Jar#Using the item drops all stored hearts on the floor"

	[C_ID .. 291] = "使非头目敌人变成大便#立即击杀便便类敌人和头目", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses"

	[C_ID .. 293] = "{{Collectible118}} 在四个方向上发射硫磺火激光", -- Head of Krampus
	-- Full old Desc: "{{Collectible118}} 在四个方向上发射硫磺火激光#每道激光在1.33秒内造成440点伤害"
	-- English: "{{Collectible118}} Shoot a 4-way blood beam#They each deal {VAR:1} damage over 1.33 seconds"

	[C_ID .. 294] = "击退附近的敌人和弹幕", -- Butter Bean
	-- Full old Desc: "击退附近的敌人和弹幕#10%概率在换成其他主动道具再将其换回来后, 变成更强的{{Collectible484}}等等, 啥?"
	-- English: "Knocks back nearby enemies and projectiles#10% chance to turn into the stronger {{NameC484}} when swapping it with a different active item and picking it up again"

	[C_ID .. 295] = "对房间中所有敌人造成2x角色伤害#{{Coin}} 花费1硬币", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage to all enemies#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "{{Heart}} 将2魂心/黑心转换为1心之容器", -- Converter
	-- English: "{{Heart}} Converts 2 Soul/Black Hearts into 1 heart container"

	[C_ID .. 299] = "↑ {{Speed}} 在有敌人的房间中, 移速缓慢增加#移速达到2时, 角色无敌并造成接触伤害, 持续5秒#随后, 在当前房间中失去金牛座移速加成", -- Taurus
	-- Full old Desc: "↓ {{Speed}} 移速-0.3#↑ {{Speed}} 在有敌人的房间中, 移速缓慢增加#移速达到2时, 角色无敌并造成接触伤害, 持续5秒#随后, 在当前房间中失去金牛座移速加成"
	-- English: "↑ {{Speed}} Slowly gain speed while in hostile rooms#At 2 speed, Isaac becomes invincible and deals contact damage#Afterwards, lose the Taurus speed boost for the room"

	[C_ID .. 300] = "移速大于0.85时, 对敌人造成18点接触伤害", -- Aries
	-- Full old Desc: "↑ {{Speed}} 移速+0.25#移速大于0.85时, 对敌人造成18点接触伤害"
	-- English: "Touching enemies deals contact damage"

	[C_ID .. 301] = "受伤后, 在当前房间中后续所受伤害降低为半心", -- Cancer
	-- Full old Desc: "{{SoulHeart}} +3魂心#受伤后, 在当前房间中后续所受伤害降低为半心"
	-- English: "Taking damage reduces all future damage in the room to half a heart"

	[C_ID .. 302] = "粉碎接触的石头", -- Leo
	-- Full old Desc: "体型变大#粉碎接触的石头"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 303] = "受伤时, 概率获得10秒无敌#{{Luck}} 幸运10: 100%概率#将负面胶囊变成正面的", -- Virgo
	-- English: "Taking damage can make Isaac temporarily invincible#{{Luck}} 100% chance at 10 luck#{{Pill}} Converts negative pills into positive ones"

	[C_ID .. 304] = "平衡角色属性#后续的属性变化会分散到各个属性", -- Libra
	-- Full old Desc: "+6{{Coin}}硬币, {{Bomb}}炸弹, {{Key}}钥匙#平衡角色属性#后续的属性变化会分散到各个属性"
	-- English: "Balances Isaac's stats#Future stat changes will be spread across all stats"

	[C_ID .. 308] = "角色留下水迹#水迹每秒造成6点伤害", -- Aquarius
	-- English: "Isaac leaves a trail of creep#The creep deals 6 damage per second"

	[C_ID .. 309] = "提高泪弹击退力", -- Pisces
	-- Full old Desc: "↑ {{Tears}} 射击延迟-1#↑ {{Tearsize}} 泪弹尺寸x1.25#提高泪弹击退力"
	-- English: "Increases tear knockback"

	[C_ID .. 311] = "{{Player12}} 死亡时, 以伤害修正x2的犹大之影重生", -- Judas' Shadow
	-- English: "{{Player12}} When dead, respawn as Dark Judas with a x2 damage multiplier"

	[C_ID .. 313] = "阻挡每个房间第一次受到的伤害", -- Holy Mantle
	-- English: "Negates the first hit taken once per room"

	[C_ID .. 314] = "角色摧毁接触的石头", -- Thunder Thighs
	-- Full old Desc: "↑ {{Heart}} +1心之容器#↓ {{Speed}} 移速-0.4#角色摧毁接触的石头"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 315] = "角色的泪弹吸引敌人, 掉落物和饰品", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets"

	[C_ID .. 316] = "{{Warning}} 蓄力未满时受伤会将角色传送至随机房间", -- Cursed Eye
	-- Full old Desc: "蓄力发射4颗泪弹#{{Warning}} 蓄力未满时受伤会将角色传送至随机房间"
	-- English: "Charged wave of {VAR:1} tears#{{Warning}} Taking damage while partially charged teleports Isaac to a random room"

	[C_ID .. 317] = "角色的泪弹会留下水迹#水迹每秒造成30点伤害", -- Mysterious Liquid
	-- English: "Isaac's tears leave creep#The creep deals 30 damage per second"

	[C_ID .. 318] = "近战跟班", -- Gemini
	-- Full old Desc: "近战跟班#每秒造成6点接触伤害"
	-- English: "Close combat familiar"

	[C_ID .. 319] = "在房间中四处漂浮#与角色同方向发射, 造成1x角色伤害", -- Cain's Other Eye
	-- English: "Bounces around the room#Low accuracy tears that deal Isaac's damage"

	[C_ID .. 320] = "可控制的苍蝇", -- ???'s Only Friend
	-- Full old Desc: "可控制的苍蝇#每秒造成37.5点接触伤害"
	-- English: "Controllable fly"

	[C_ID .. 321] = "可拖动的球, 能够摧毁石头", -- Samson's Chains
	-- Full old Desc: "可拖动的球, 能够摧毁石头#每秒造成10.7点接触伤害"
	-- English: "Draggable ball that can destroy rocks"

	[C_ID .. 322] = "复制其他跟班的泪弹效果#造成2x所复制跟班的伤害#若没有跟班, 则发射普通的3.5伤害泪弹", -- Mongo Baby
	-- English: "Mimics your baby familiars' tears#If you have none, shoots normal 3.5 damage tears"

	[C_ID .. 323] = "向8个方向发射泪弹#泪弹复制角色泪弹的效果#发射泪弹时充能", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects#Recharges by shooting tears"

	[C_ID .. 324] = "传送至{{TreasureRoom}}宝箱房/{{SecretRoom}}隐藏房/{{SuperSecretRoom}}超级隐藏房/{{ErrorRoom}}错误房", -- Undefined
	-- English: "Teleports Isaac to the {{TreasureRoom}} Treasure, {{SecretRoom}} Secret, {{SuperSecretRoom}} Super Secret or {{ErrorRoom}} I AM ERROR Room"

	[C_ID .. 325] = "{{Timer}} 当前房间中将角色的头变为不动的跟班#头发射泪弹造成3.5点伤害#独立控制角色身体, 仍发射角色的泪弹", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The head shoots 3.5 damage tears#The body is controlled separately and still shoots Isaac's tears"

	[C_ID .. 326] = "按住使用键时消耗充能条#充能条为空时角色暂时无敌#{{Warning}} 按住过久会对角色造成伤害", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 327] = "若不多于半红心时受伤, 则获得5秒无敌", -- The Polaroid
	-- English: "Taking damage at half a Red Heart or none makes Isaac temporarily invincible"

	[C_ID .. 328] = "若不多于半红心时受伤, 则对房间中所有敌人造成伤害", -- The Negative
	-- English: "Taking damage at half a Red Heart or none damages all enemies in the room"

	[C_ID .. 329] = "角色的泪弹由1颗巨大的可控泪弹取代", -- The Ludovico Technique
	-- English: "Replaces Isaac's tears with one giant controllable tear"

	[C_ID .. 332] = "{{Player11}} 死亡时, 以'复活的拉撒路'重生", -- Lazarus' Rags
	-- English: "{{Player11}} When dead, revive as Lazarus (Risen)"

	[C_ID .. 333] = "获得完整的地图效果", -- The Mind
	-- English: "Full mapping effect"

	[C_ID .. 335] = "获得排斥敌人和弹幕的光环", -- The Soul
	-- Full old Desc: "{{SoulHeart}} +2魂心#获得排斥敌人和弹幕的光环"
	-- English: "Grants an aura that repels enemies and projectiles"

	[C_ID .. 337] = "{{Slow}} 每4个房间减速一次#13%概率由加速取代", -- Broken Watch
	-- English: "{{Slow}} Slows down every 4th room#13% chance to speed up the room instead"

	[C_ID .. 338] = "可投掷的回旋镖#{{Petrify}} 使敌人石化并造成2x角色伤害#可带回物品", -- The Boomerang
	-- English: "Throwable boomerang#{{Petrify}} Petrifies enemies and deals 2x Isaac's damage#Can grab and bring back items"

	[C_ID .. 347] = "复制房间中所有底座道具和掉落物", -- Diplopia
	-- English: "Duplicates all item pedestals and pickups in the room"

	[C_ID .. 348] = "{{Pill}} 触发角色持有胶囊的效果", -- Placebo
	-- English: "{{Pill}} Triggers the effect of the pill Isaac holds without using it"

	[C_ID .. 350] = "{{Poison}} 进入房间时, 使所有敌人中毒#被毒死的敌人留下水迹#水迹每秒造成30点伤害", -- Toxic Shock
	-- English: "{{Poison}} Entering a room poisons all enemies#Enemies killed leave a puddle of creep#The creep deals 30 damage per second"

	[C_ID .. 351] = "{{Petrify}} 使房间中所有敌人石化#{{Poison}} 造成5点伤害并使附近敌人中毒#向角色移动方向发出岩石波#岩石波可打开隐藏房和粉碎石头", -- Mega Bean
	-- English: "{{Petrify}} Petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Sends a rock wave in the direction Isaac is moving#The rock wave can open secret rooms and break rocks"

	[C_ID .. 352] = "{{Warning}} 发射炮弹会将角色血量降至半心#发射一颗巨大的穿刺灵体泪弹, 造成10x角色伤害+10的伤害", -- Glass Cannon
	-- English: "{{Warning}} Firing the cannon reduces Isaac's health down to half a heart#Shoots a large piercing + spectral tear that does 10x Isaac's damage"

	[C_ID .. 353] = "炸弹十字爆炸", -- Bomber Boy
	-- Full old Desc: "{{Bomb}} +5炸弹#炸弹十字爆炸"
	-- English: "Bombs explode in a cross-shaped pattern"

	[C_ID .. 356] = "{{Battery}} 使用主动道具时触发效果两次", -- Car Battery
	-- English: "{{Battery}} Using an active item triggers its effect twice"

	[C_ID .. 357] = "{{Timer}} 在当前房间复制所有跟班#{{Collectible113}} 若没有跟班, 则在当前房间获得1个恶魔宝宝", -- Box of Friends
	-- English: "{{Timer}} Duplicates all your familiars for the room#{{Collectible113}} Grants a Demon Baby for the room if Isaac has no familiars"

	[C_ID .. 359] = "提高击退力", -- 8 Inch Nails
	-- Full old Desc: "↑ {{Damage}} 伤害+1.5#提高击退力"
	-- English: "Increases knockback"

	[C_ID .. 360] = "发射泪弹, 效果和属性与角色一致", -- Incubus
	-- English: "Shoots tears with the same tear rate, damage and effects as Isaac"

	[C_ID .. 361] = "发射泪弹, 效果和属性与角色一致#射速是其他跟班的一半", -- Fate's Reward
	-- English: "Shoots tears with the same damage and effects as Isaac#Shoots at half the rate of other familiars"

	[C_ID .. 362] = "清理房间后, 33%概率生成1随机掉落物", -- Lil Chest
	-- English: "35% chance to spawn a pickup every room"

	[C_ID .. 363] = "吸引并阻挡弹幕#在1个房间中阻挡10颗弹幕时, 生成1{{EternalHeart}}永恒之心", -- Sworn Protector
	-- Full old Desc: "环绕物#每秒造成105点接触伤害#吸引并阻挡弹幕#在1个房间中阻挡10颗弹幕时, 生成1{{EternalHeart}}永恒之心"
	-- English: "Blocks and attracts enemy shots#{{EternalHeart}} Blocking 10 shots in one room spawns an Eternal Heart"

	[C_ID .. 364] = "中范围苍蝇环绕物", -- Friend Zone
	-- Full old Desc: "中范围苍蝇环绕物#每秒造成45点接触伤害"
	-- English: "Midrange fly orbital"

	[C_ID .. 365] = "沿着房间中的墙/障碍物行进", -- Lost Fly
	-- Full old Desc: "沿着房间中的墙/障碍物行进#每秒造成105点接触伤害"
	-- English: "Moves along walls/obstacles"

	[C_ID .. 367] = "角色的炸弹会粘在敌人身上#用炸弹击杀敌人会生成蓝蜘蛛", -- Sticky Bombs
	-- Full old Desc: "{{Bomb}} +5炸弹#角色的炸弹会粘在敌人身上#用炸弹击杀敌人会生成蓝蜘蛛"
	-- English: "Isaac's bombs stick to enemies#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "↑ {{Tears}} 持续向单方向发射会逐渐降低射击延迟, 最多降至50%", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually decreases tear delay up to 200% and decreases accuracy"

	[C_ID .. 369] = "泪弹会过屏幕, 从另一边回来", -- Continuum
	-- Full old Desc: "↑ {{Range}} 射程+2.25#↑ 泪弹高度+1.5#灵体泪弹#泪弹会过屏幕, 从另一边回来"
	-- English: "Tears can travel through one side of the screen and come out the other side"

	[C_ID .. 371] = "{{Warning}} 受伤时, 生成6个即爆炸弹#该炸弹继承角色的炸弹效果", -- Curse of the Tower
	-- English: "{{Warning}} Taking damage spawns 6 Troll Bombs#The Troll Bombs inherit Isaac's bomb effects"

	[C_ID .. 372] = "在未清理的房间中, 每30秒产生以下效果之一:#{{Battery}} 生成1电池(每房间最多2次)#{{Battery}} 为主动道具充能1格(每房间最多2次)#{{Petrify}} 将房间中所有敌人石化", -- Charged Baby
	-- English: "Every 30 seconds while in an uncleared room, the familiar can:#{{Battery}} Spawn a Battery (max 2 per room)#{{Battery}} Add one charge to the active item (max 2 per room)#{{Petrify}} Petrify all enemies in the room"

	[C_ID .. 373] = "↑ {{Damage}} 每次成功击中敌人伤害+25%(最高+100%)#未击中时, 概率重置修正", -- Dead Eye
	-- English: "↑ {{Damage}} Consecutive tear hits on enemies grant +25% damage (max +100%)#Missing has a chance to reset the multiplier"

	[C_ID .. 374] = "{{Damage}} 光柱造成4x角色伤害", -- Holy Light
	-- Full old Desc: "10%概率发射圣光泪弹, 击中时会产生光柱#{{Luck}} 幸运9: 50%概率#{{Damage}} 光柱造成4x角色伤害"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot holy tears, which spawn a beam of light on hit#{{Damage}} The beam deals 4x Isaac's damage"

	[C_ID .. 375] = "免疫爆炸, 岩石波, 践踏的伤害#20%概率阻挡弹幕", -- Host Hat
	-- English: "Grants immunity to explosions, rock wave attacks and Mom and Satan's stomp attacks#25% chance to reflect enemy shots"

	[C_ID .. 376] = "商店物品购买后会立刻补货", -- Restock
	-- Full old Desc: "生成3随机掉落物#商店物品购买后会立刻补货"
	-- English: "Buying an item from a Shop restocks it instantly"

	[C_ID .. 377] = "蜘蛛类敌人不再以角色为目标, 也不对角色造成接触伤害", -- Bursting Sack
	-- English: "Spider enemies no longer target or deal contact damage to Isaac"

	[C_ID .. 378] = "持续发射3秒后, 生成1大便炸弹", -- No. 2
	-- English: "Holding a fire button for 2.35 seconds spawns a lit Butt Bomb"

	[C_ID .. 380] = "{{Coin}} 单钥匙门必须用硬币打开而不是钥匙", -- Pay To Play
	-- Full old Desc: "{{Coin}} +5硬币#{{Coin}} 单钥匙门必须用硬币打开而不是钥匙"
	-- English: "{{Coin}} Single-key doors must be opened with coins instead of keys"

	[C_ID .. 381] = "下一局开始时, 获得1随机道具", -- Eden's Blessing
	-- Full old Desc: "↑ {{Tears}} 射速+0.7#下一局开始时, 获得1随机道具"
	-- English: "Grants a random item at the start of the next run"

	[C_ID .. 382] = "可以扔向敌人将其捕捉#{{Friendly}} 下一次使用则会生成相同的友好敌人", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns it as a friendly companion"

	[C_ID .. 383] = "引爆屏幕中的泪弹, 每颗泪弹分裂为6颗并以环状散开", -- Tear Detonator
	-- English: "Splits all of Isaac's tears currently on screen in a circle of 6 tears"

	[C_ID .. 384] = "{{Chargeable}} 弹出并在房间中反弹, 速度基于蓄力时间#根据蓄力时间, 每秒造成5-90点接触伤害", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-90 contact damage per second depending on speed"

	[C_ID .. 385] = "{{Coin}} 捡起附近的硬币#捡起7, 13, 25硬币时升级#2级: 清理房间后, 概率生成掉落物或道具#3级: 发射泪弹, 击中时概率生成硬币#4级: 追击敌人, 每秒造成37.5点接触伤害#4级: 继续捡硬币, 能生成掉落物或道具", -- Bumbo
	-- English: "{{Coin}} Picks up nearby coins#Levels up after getting 6, 12, and 24 coins#Lv2: Chance to spawn item after room clears#Lv3: Shoots tears that can spawn coins on hit#Lv4: Chases enemies, occasionally dropping bombs, can spawn item on coin pickup"

	[C_ID .. 386] = "将障碍物重置为其他随机类型的障碍物(大便/罐子/TNT/红大便/石头等)", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)"

	[C_ID .. 387] = "{{Slow}} 产生大片光环, 能够使其中的敌人和弹幕减速", -- Censer
	-- English: "{{Slow}} Familiar surrounded by a huge aura of light that slows down enemies and projectiles in it"

	[C_ID .. 388] = "{{Key}} 捡起附近的钥匙#{{Chest}} 生成随机宝箱作为回报", -- Key Bum
	-- English: "{{Key}} Picks up nearby keys#{{Chest}} Spawns random chests in return"

	[C_ID .. 389] = "{{Rune}} 每5-6个房间生成1随机符文", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune every 5-6 rooms"

	[C_ID .. 390] = "发射圣心泪弹", -- Seraphim
	-- Full old Desc: "发射圣心泪弹#泪弹造成10点伤害"
	-- English: "Shoots Sacred Heart tears"

	[C_ID .. 391] = "{{Charm}} 受伤时, 魅惑房间中所有敌人", -- Betrayal
	-- English: "{{Charm}} Taking damage charms all enemies in the room"

	[C_ID .. 392] = "每层获得1个随机星座道具效果", -- Zodiac
	-- English: "Grants a random zodiac item effect every floor"

	[C_ID .. 393] = "{{Poison}} 15%概率发射有毒泪弹#{{Poison}} 使接触的敌人中毒#{{BlackHeart}} 中毒敌人死亡时, 20%概率掉落1黑心", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Poisoned enemies have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "角色自动向地上的可控红色标记发射泪弹", -- Marked
	-- Full old Desc: "↑ {{Tears}} 射速+0.7#↑ {{Range}} 射程+3.15#↑ 泪弹高度+0.3#角色自动向地上的可控红色标记发射泪弹"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground"

	[C_ID .. 395] = "{{Chargeable}} 角色的泪弹由可蓄力的激光环取代#激光环尺寸随蓄力时间增加", -- Tech X
	-- English: "{{Chargeable}} Isaac's tears are replaced by a chargeable laser ring#Ring size increases with charge amount"

	[C_ID .. 396] = "创造最多2个传送门#可以在不同房间放置", -- Ventricle Razor
	-- English: "Creates up to two portals to travel between#Can be placed in different rooms"

	[C_ID .. 397] = "角色的泪弹受角色面前的光束指引", -- Tractor Beam
	-- Full old Desc: "↑ {{Tears}} 射速+0.5#↑ {{Range}} 射程+5.25#↑ 泪弹高度+0.5#↑ {{Shotspeed}} 弹速+0.16#角色的泪弹受角色面前的光束指引"
	-- English: "Isaac's tears always travel along a beam of light in front of him"

	[C_ID .. 398] = "{{Shrink}} 10%概率发射使敌人缩小的泪弹#缩小的敌人可以被踩死", -- God's Flesh
	-- English: "{{Shrink}} Tears can shrink enemies#Shrunken enemies can be crushed and killed by walking over them"

	[C_ID .. 399] = "{{BlackHeart}} 被黑圈击杀的敌人有5%概率掉落1黑心", -- Maw of the Void
	-- Full old Desc: "↑ {{Damage}} 伤害+1#{{Chargeable}} 持续发射泪弹2.35秒后, 松开发射键会产生黑硫磺火圈#黑圈在2秒内造成30x角色伤害#{{BlackHeart}} 被黑圈击杀的敌人有5%概率掉落1黑心"
	-- English: "{{Chargeable}} Shooting tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the black ring have a 5% chance to drop a Black Heart"

	[C_ID .. 400] = "在角色面前生成一根矛#{{Fear}} 每秒造成约8.57x角色伤害, 概率使接触到的敌人恐惧", -- Spear of Destiny
	-- English: "Isaac holds a spear in front of him#{{Fear}} The spear deals twice his damage and can fear enemies on contact"

	[C_ID .. 401] = "25%概率发射粘性炸弹泪弹#泪弹击中时不造成伤害, 几秒后爆炸", -- Explosivo
	-- English: "25% chance to shoot sticky bomb tears#Sticky bomb tears do not deal damage on hit and explode after a few seconds"

	[C_ID .. 402] = "底座道具会从随机道具池产生", -- Chaos
	-- Full old Desc: "底座道具会从随机道具池产生#生成1-6随机掉落物"
	-- English: "All items are chosen from random item pools"

	[C_ID .. 403] = "显示泪弹伤害和所有敌人的血条#接触敌人时, 施加随机状态效果#清理房间后, 概率生成蓝蜘蛛/小电池", -- Spider Mod
	-- English: "Displays tear damage and health bars of all enemies#Inflicts random status effects to enemies on contact#Randomly spawns batteries"

	[C_ID .. 404] = "受击时, 10%概率放屁, 效果为{{Charm}}魅惑/{{Poison}}中毒/击退三种其一", -- Farting Baby
	-- Full old Desc: "阻挡弹幕#受击时, 10%概率放屁, 效果为{{Charm}}魅惑/{{Poison}}中毒/击退三种其一"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies"

	[C_ID .. 405] = "在房间中漂浮", -- GB Bug
	-- Full old Desc: "在房间中漂浮#每秒造成120点接触伤害, 并施加随机状态效果#在有敌人的房间中, 接触掉落物时, 概率将其变成其他物品"
	-- English: "Bounces around the room#Applies random status effects to enemies on contact"

	[C_ID .. 406] = "角色的伤害, 射速, 射程, 移速属性的修正x0.5-x2#修正在每次使用后重置", -- D8
	-- English: "Multiplies Isaac's damage, tears, range and speed stats by between x0.5 and x2#The multipliers are rerolled each use"

	[C_ID .. 407] = "↑ 根据光环颜色对角色属性进行增强#受伤时, 移除光环, 在下个房间获得新的光环#{{ColorYellow}}黄色{{CR}} = ↑ {{Speed}} 移速+0.5#{{ColorBlue}}蓝色{{CR}} = ↑ {{Tears}} 射击延迟-4#{{ColorRed}}红色{{CR}} = ↑ {{Damage}} 伤害+4#{{ColorOrange}}橙色{{CR}} = ↑ {{Range}} 射程+7.5, ↑ 泪弹高度+1", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and gives Isaac a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} -4 Tear delay#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +7.5 Range, ↑ +1 Tear height"

	[C_ID .. 408] = "受伤时, 在角色周围产生黑色硫磺火圈#{{BlackHeart}} 敌人被黑圈击杀时, 15%概率掉落1黑心", -- Athame
	-- English: "Taking damage creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the ring have a 15% chance to drop a Black Heart"

	[C_ID .. 409] = "{{EmptyHeart}} 角色没有红心时:#获得飞行#在有敌人的房间中, 每40秒产生1个持续10秒的护盾", -- Empty Vessel
	-- Full old Desc: "{{BlackHeart}} +2黑心#{{EmptyHeart}} 角色没有红心时:#获得飞行#在有敌人的房间中, 每40秒产生1个持续10秒的护盾"
	-- English: "{{EmptyHeart}} When Isaac has no Red Hearts:#Flight#Every 40 seconds while in a hostile room, gain a shield for 10 seconds"

	[C_ID .. 410] = "眼睛缓慢移动并发射与角色方向一致的泪弹", -- Evil Eye
	-- Full old Desc: "3.33%概率发射眼睛#{{Luck}} 幸运20: 10%概率#眼睛缓慢移动并发射与角色方向一致的泪弹"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot an eye#The eye moves in a straight line and shoots tears in the same direction as Isaac"

	[C_ID .. 411] = "↑ {{Damage}} 击杀敌人时, 在当前房间中伤害+0.5#最多击杀10个敌人伤害+5", -- Lusty Blood
	-- English: "↑ {{Damage}} +0.5 Damage for each enemy killed in the room#Caps at +5 Damage after 10 kills"

	[C_ID .. 412] = "受伤15次, 30次, 60次, 90次时, 永久获得1个恶魔跟班#最多产生4个跟班", -- Cambion Conception
	-- English: "Taking damage 15 times spawns a permanent demon familiar#After two familiars, it takes 30 instead of 15#Caps at 4 familiars"

	[C_ID .. 413] = "每拾起15次心, 永久获得1个天使跟班并生成1魂心#最多产生5个跟班", -- Immaculate Conception
	-- English: "Picking up 15 hearts spawns a permanent angelic familiar#Caps at 5 familiars#{{SoulHeart}} If all familiars have been granted, spawns a Soul Heart instead"

	[C_ID .. 414] = "{{TreasureRoom}} 允许宝箱房道具二选一", -- More Options
	-- English: "{{TreasureRoom}} Allows Isaac to choose between 2 items in treasure rooms"

	[C_ID .. 415] = "若角色无不满的心之容器:#{VAR:EFFECTLIST}#受伤后, 在当前房间中效果消失", -- Crown Of Light
	-- Full old Desc: "{{SoulHeart}} +2魂心#若角色无不满的心之容器:#↑ {{Damage}} 伤害修正x2#↑ {{Range}} 射程+5.25#↑ 泪弹高度+0.5#↓ {{Shotspeed}} 弹速-0.3#受伤后, 在当前房间中效果消失"
	-- English: "If Isaac has no damaged heart containers:#{VAR:EFFECTLIST}#Taking any damage removes the effect for the room"

	[C_ID .. 416] = "允许角色携带2卡牌/胶囊/符文", -- Deep Pockets
	-- English: "Allows Isaac to carry two runes/cards/pills"

	[C_ID .. 417] = "在房间中漂浮的跟班, 产生伤害光环, 每秒造成1.29x角色伤害#↑ {{Damage}} 站在光环中伤害修正x1.5", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 1.29x Isaac's damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 418] = "每颗泪弹都有不同效果", -- Fruit Cake
	-- English: "Each one of Isaac's tears gets a different effect"

	[C_ID .. 419] = "传送至未探索的随机房间", -- Teleport 2.0
	-- Full old Desc: "传送至未探索的随机房间#顺序: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"
	-- English: "Teleports Isaac to a room that has not been cleared yet#Hierarchy: {VAR:TEXT}"

	[C_ID .. 420] = "在地上走1个圈会产生五角星符号, 4秒内造成130点接触伤害", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds"

	[C_ID .. 421] = "{{Charm}} 对近距离的所有敌人造成5点伤害并魅惑", -- Kidney Bean
	-- English: "{{Charm}} Charms and deals 5 damage to all enemies in close range"

	[C_ID .. 422] = "将角色带回上个房间, 回退所有使用时房间的行动", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in"

	[C_ID .. 423] = "角色周围产生1个大光环, 每秒造成1x角色伤害#概率反弹敌人弹幕", -- Circle of Protection
	-- English: "Surrounds Isaac with a large halo that deals his damage on contact per second#Chance to reflect enemy projectiles"

	[C_ID .. 424] = "掉落物有概率由{{GrabBag}}福袋取代:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} 生成1福袋", -- Sack Head
	-- English: "Pickups have a chance to be replaced with a {{GrabBag}}sack:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Spawns a sack"

	[C_ID .. 425] = "{{Slow}} 在角色面前生成锥形光, 使其中的敌人和弹幕减速#移除当前层黑暗诅咒", -- Night Light
	-- English: "{{Slow}} Spawns a slowing cone of light in front of Isaac"

	[C_ID .. 427] = "生成1个可推的TNT桶#在相同房间中第二次使用时, 远程引爆之前生成的桶", -- Mine Crafter
	-- English: "Spawns a pushable TNT barrel#Using the item a second time in the same room remotely detonates the barrel"

	[C_ID .. 429] = "{{Coin}} 敌人被泪弹中时, 5%概率掉落1硬币", -- Head of the Keeper
	-- English: "{{Coin}} Hitting an enemy with a tear has a 5% chance to spawn a Penny"

	[C_ID .. 430] = "向附近敌人发射泪弹, 造成1x角色伤害", -- Papa Fly
	-- Full old Desc: "模仿角色移动, 有1秒延迟#向附近敌人发射泪弹, 造成1x角色伤害"
	-- English: "{{Damage}} Shoots tears at nearby enemies that deal Isaac's damage"

	[C_ID .. 431] = "经过它的泪弹会分成2个并有射程+弹速加成", -- Multidimensional Baby
	-- Full old Desc: "模仿角色移动, 有2秒延迟#经过它的泪弹会分成2个并有射程+弹速加成"
	-- English: "Tears that pass through it are doubled and gain a range + shot speed boost"

	[C_ID .. 432] = "角色的炸弹爆炸时, 25%概率生成1随机掉落物, 15%概率魅惑炸到的敌人", -- Glitter Bombs
	-- Full old Desc: "{{Bomb}} +5炸弹#角色的炸弹爆炸时, 25%概率生成1随机掉落物, 15%概率魅惑炸到的敌人"
	-- English: "{{Charm}} Isaac's bombs have a 25% chance to drop a random pickup and a 15% chance to charm enemies when they explode"

	[C_ID .. 433] = "{{Fear}} 受伤时, 使所有敌人恐惧, 并生成1个友好的黑蛆", -- My Shadow
	-- Full old Desc: "{{Fear}} 受伤时, 使所有敌人恐惧, 并生成1个友好的黑蛆#黑蛆每秒造成5点接触伤害"
	-- English: "{{Fear}} Taking damage fears all enemies in the room and spawns a friendly black charger"

	[C_ID .. 434] = "击杀敌人时, 在罐子里加入1只蓝苍蝇, 最多20只#使用时, 释放所有苍蝇", -- Jar of Flies
	-- English: "Killing an enemy adds a blue fly to the jar, up to 20 flies#Using the item releases all the flies"

	[C_ID .. 435] = "十字发射泪弹", -- Lil Loki
	-- Full old Desc: "十字发射泪弹#泪弹造成3.5点伤害"
	-- English: "Shoots 4 tears in a cross pattern"

	[C_ID .. 436] = "{{Tears}} 受伤后, 在当前房间中获得射速提升", -- Milk!
	-- English: "{{Tears}} Taking damage grants a Tears up for the duration of the room"

	[C_ID .. 437] = "重新开始房间并重生所有敌人#能够从同一房间获得多次清理房间奖励#若在与贪婪战斗中使用, 则将房间重置为普通商店/隐藏房", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room#If used after a Greed fight, rerolls the room into a normal Shop/Secret Room"

	[C_ID .. 439] = "{{Trinket}} 饰品效果翻倍", -- Mom's Box
	-- Full old Desc: "{{Trinket}} 生成1随机饰品#持有时:#↑ {{Luck}} 幸运+1#{{Trinket}} 饰品效果翻倍"
	-- English: "{{Trinket}} Doubles trinket effects"

	[C_ID .. 440] = "角色约每25秒停止发射并蓄力, 释放散射泪弹和1颗肾结石", -- Kidney Stone
	-- Full old Desc: "↑ 泪弹高度+2#↓ {{Speed}} 移速-0.2#↓ {{Range}} 射程-17#角色约每25秒停止发射并蓄力, 释放散射泪弹和1颗肾结石"
	-- English: "Isaac occasionally stops firing and charges an attack that releases a burst of tears and a kidney stone"

	[C_ID .. 441] = "{{Timer}} 发射超级撒但激光15秒#激光在房间和层之间持续存在", -- Mega Blast
	-- English: "{{Timer}} Fires a huge Mega Satan blood beam for 15 seconds#The beam persists between rooms and floors"

	[C_ID .. 442] = "红心为1时:#{VAR:EFFECTLIST}", -- Dark Prince's Crown
	-- Full old Desc: "红心为1时:#↑ {{Tears}} 射速+0.75#↑ {{Range}} 射程+1.5#↑ 泪弹高度+1#↑ {{Shotspeed}} 弹速+0.2"
	-- English: "While at 1 full Red Heart:#{VAR:EFFECTLIST}"

	[C_ID .. 444] = "角色每发射15颗泪弹, 抛射大量泪弹#抛射的泪弹造成2x角色伤害", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears#Tears in the cluster deal double damage"

	[C_ID .. 445] = "{{LadderRoom}} 进入石头下有暗门的房间时会有一声吠叫", -- Dog Tooth
	-- Full old Desc: "↑ {{Speed}} 移速+0.1#↑ {{Damage}} 伤害+0.3#{{SecretRoom}} 在隐藏房/超级隐藏房相邻房间时会有一声狼嚎#{{LadderRoom}} 进入石头下有暗门的房间时会有一声吠叫"
	-- English: "{{SecretRoom}}{{SuperSecretRoom}} A wolf howls in rooms adjacent to a Secret/Super Secret Room#{{LadderRoom}} A dog barks in rooms with a crawlspace under a rock"

	[C_ID .. 446] = "{{Poison}} 发射泪弹时, 角色周围会有使敌人中毒的绿环", -- Dead Tooth
	-- English: "{{Poison}} While firing, Isaac is surrounded by a green aura that poisons enemies"

	[C_ID .. 447] = "每连续发射7.5秒时, 生成一朵便便云#便便云每秒造成5次1x角色伤害#便便云持续15秒, 可通过射击便便云使其移动", -- Linger Bean
	-- English: "Firing without pause for 7.5 seconds spawns a poop cloud#The cloud deals Isaac's damage 5 times a second#The cloud lasts 15 seconds and can be moved by shooting it"

	[C_ID .. 448] = "受伤时:#{{Heart}} 25%概率生成1红心#{{Collectible214}} 10%概率获得↑ {{Range}} 射程+5, 并在当前房间中留下血迹", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{Collectible214}} 10% chance to get ↑ {{Range}} +5 Range and leave a trail of blood creep for the room"

	[C_ID .. 449] = "{{Confusion}} 使敌人的弹幕有25%概率反弹为混乱泪弹", -- Metal Plate
	-- Full old Desc: "{{SoulHeart}} +1魂心#{{Confusion}} 使敌人的弹幕有25%概率反弹为混乱泪弹"
	-- English: "{{Confusion}} Enemy bullets have a 25% chance to be reflected as concussive tears"

	[C_ID .. 450] = "每发射20颗泪弹, 发射1颗造成2x角色伤害的硬币泪弹#{{Petrify}} 被硬币泪弹击中的敌人石化并变为金块#{{Coin}} 击杀金敌人掉落1-4硬币#{{Warning}} 发射硬币泪弹消耗1硬币", -- Eye of Greed
	-- English: "Every 20 tears, Isaac shoots a coin tear that deals double damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-4 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "{{Card}} 使用的卡牌效果翻倍或增强", -- Tarot Cloth
	-- Full old Desc: "{{Card}} 生成1卡牌#{{Card}} 使用的卡牌效果翻倍或增强"
	-- English: "{{Card}} Card effects are doubled or enhanced"

	[C_ID .. 452] = "受伤时:#围着角色发射10颗高伤害泪弹#{{Damage}} 泪弹造成1x角色伤害+25的伤害#{{Collectible214}} 20%概率获得贫血效果", -- Varicose Veins
	-- English: "Taking damage shoots 10 tears in a circle around Isaac#The tears deal Isaac's damage + 25"

	[C_ID .. 453] = "泪弹击中时碎成1-3个小骨片", -- Compound Fracture
	-- Full old Desc: "↑ {{Range}} 射程+1.5#↑ 泪弹高度+1#泪弹击中时碎成1-3个小骨片"
	-- English: "Tears shatter into 1-3 small bone shards upon hitting anything"

	[C_ID .. 454] = "生成1{{Rune}}符文/{{Card}}卡牌/{{Pill}}胶囊#允许角色携带2卡牌/符文/胶囊", -- Polydactyly
	-- English: "Spawns a {{Rune}} rune, {{Card}} card or {{Pill}} pill on pickup#Allows Isaac to carry 2 runes/cards/pills"

	[C_ID .. 455] = "{{Luck}} 生成1幸运硬币", -- Dad's Lost Coin
	-- Full old Desc: "↑ {{Range}} 射程+1.5#↑ 泪弹高度+1#{{Luck}} 生成1幸运硬币"
	-- English: "{{Luck}} Spawns a Lucky Penny"

	[C_ID .. 457] = "20%概率阻挡伤害", -- Cone Head
	-- Full old Desc: "{{SoulHeart}} +1魂心#20%概率阻挡伤害"
	-- English: "20% chance to negate damage taken"

	[C_ID .. 458] = "{{Trinket}} 生成1随机饰品", -- Belly Button
	-- Full old Desc: "{{Trinket}} 生成1随机饰品#{{Trinket}} 允许角色携带2饰品"
	-- English: "{{Trinket}} Allows Isaac to carry 2 trinkets"

	[C_ID .. 459] = "20%概率发射粘性鼻屎", -- Sinus Infection
	-- Full old Desc: "20%概率发射粘性鼻屎#{{Damage}} 鼻屎每秒造成1x角色伤害, 能粘住60秒"
	-- English: "20% chance to shoot a sticky booger#{{Damage}} Boogers deal Isaac's damage once a second and stick for {VAR:1} seconds#{{Luck}} Not affected by luck"

	[C_ID .. 460] = "{{Confusion}} 5%概率发射混乱泪弹#屏幕会稍暗一些", -- Glaucoma
	-- English: "{{Confusion}} 5% chance to shoot concussive tears#Makes the screen slightly darker"

	[C_ID .. 461] = "{{Slow}} 虫卵击中时, 生成减速水迹和1只蓝蜘蛛/蓝苍蝇", -- Parasitoid
	-- Full old Desc: "15%概率发射虫卵#{{Luck}} 幸运5: 50%概率#{{Slow}} 虫卵击中时, 生成减速水迹和1只蓝蜘蛛/蓝苍蝇"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot egg sacks#{{Slow}} Egg sacks spawn slowing creep and a blue spider or fly on hit"

	[C_ID .. 462] = "泪弹击中敌人后, 获得追踪效果并伤害翻倍", -- Eye of Belial
	-- Full old Desc: "↑ {{Range}} 射程+1.5#↑ 泪弹高度+1#穿刺泪弹#泪弹击中敌人后, 获得追踪效果并伤害翻倍"
	-- English: "Hitting an enemy makes the tear homing and doubles its damage"

	[C_ID .. 463] = "25%概率发射能摧毁石头和打开门的泪弹", -- Sulfuric Acid
	-- Full old Desc: "↑ {{Damage}} 伤害+0.3#25%概率发射能摧毁石头和打开门的泪弹"
	-- English: "Isaac's tears can destroy rocks and open doors"

	[C_ID .. 464] = "精英怪掉落角色最需要的掉落物", -- Glyph of Balance
	-- Full old Desc: "{{SoulHeart}} +2魂心#精英怪掉落角色最需要的掉落物"
	-- English: "Champion enemies drop whatever pickup Isaac needs the most"

	[C_ID .. 465] = "向任意方向发射泪弹", -- Analog Stick
	-- Full old Desc: "↑ {{Tears}} 射速+0.35#向任意方向发射泪弹"
	-- English: "Allows Isaac to shoot tears in any direction"

	[C_ID .. 466] = "{{Poison}} 房间中首个击杀的敌人会产生毒气并使周围敌人中毒#中毒的敌人死亡仍会产生毒气", -- Contagion
	-- English: "{{Poison}} The first enemy killed in a room explodes and poisons all nearby enemies#Enemies that die while poisoned also explode and poison nearby enemies"

	[C_ID .. 467] = "{{Damage}} 对手指指向的敌人持续造成0.1x角色伤害", -- Finger!
	-- English: "{{Damage}} Constantly deals 10% of Isaac's damage in the direction it points"

	[C_ID .. 469] = "留下水迹#水迹每秒造成6点伤害#接触到云的敌人会被圣光击中", -- Depression
	-- English: "Leaves a trail of creep#The creep deals 6 damage per second#Enemies that touch the cloud can be hit by a holy light beam"

	[C_ID .. 470] = "在房间中四处漂浮#角色发射时停止移动#停下来时可阻挡弹幕", -- Hushy
	-- Full old Desc: "在房间中四处漂浮#每秒造成30点接触伤害#角色发射时停止移动#停下来时可阻挡弹幕"
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped"

	[C_ID .. 471] = "每颗泪弹造成3.5点伤害", -- Lil Monstro
	-- Full old Desc: "{{Chargeable}} 蓄力, 散射泪弹#每颗泪弹造成3.5点伤害"
	-- English: "{{Chargeable}} Charges a shotgun attack similar to {{NameC229}}#Each tear deals 3.5 damage"

	[C_ID .. 472] = "其他跟班都会跟着他#角色发射时停止移动#停止发射时传送回角色位置", -- King Baby
	-- English: "Other familiars follow it#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 473] = "非常慢地向前冲刺", -- Big Chubby
	-- Full old Desc: "非常慢地向前冲刺#阻挡弹幕#每秒造成40.5点接触伤害"
	-- English: "Very slowly charges forwards"

	[C_ID .. 475] = "{{Warning}} 在3秒后击杀角色", -- Plan C
	-- Full old Desc: "对所有敌人造成9,999,999点伤害#{{Warning}} 在3秒后击杀角色"
	-- English: "{{Warning}} Kills Isaac 3 seconds later"

	[C_ID .. 476] = "复制房间中1随机掉落物", -- D1
	-- English: "Duplicates a random pickup in the room"

	[C_ID .. 477] = "消耗房间中所有底座道具:#主动道具: 激活其效果, 后续每次使用虚空时也会激活#↑ 被动道具: 提升2项随机属性", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate, and will activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 478] = "暂停房间中所有敌人, 直到角色发射#角色接触暂停的敌人仍会受伤#30秒后解除暂停", -- Pause
	-- English: "Pauses all enemies in the room until Isaac shoots#Touching a paused enemy still deals damage to Isaac#Enemies unpause after 30 seconds"

	[C_ID .. 479] = "{{Trinket}} 消耗角色持有的饰品并永久获得饰品效果#提升饰品的生成率", -- Smelter
	-- English: "{{Trinket}} Consumes Isaac's held trinkets and grants their effects permanently#Increases the spawn rate of trinkets"

	[C_ID .. 480] = "将掉落物变成蓝苍蝇/蓝蜘蛛#使现有的蓝苍蝇/蓝蜘蛛翻倍#若没有则生成1只蓝苍蝇/蓝蜘蛛", -- Compost
	-- English: "Converts pickups into blue flies or spiders#Doubles all blue flies and spiders#Spawns 1 blue fly or spider if Isaac has none"

	[C_ID .. 481] = "{{Blank}} 损坏当前房间中的所有贴图和音乐", -- Dataminer
	-- Full old Desc: "↑ 随机属性提升#↓ 随机属性降低#{{Timer}} 当前房间中随机泪弹效果#{{Blank}} 损坏当前房间中的所有贴图和音乐"
	-- English: "{{Timer}} Random tear effects for the room#{{Blank}} Corrupts all sprites and music in the room"

	[C_ID .. 482] = "将角色换为其他随机角色#移除最近收集到的1个道具", -- Clicker
	-- English: "Changes your character to a random character#Removes the most recent item collected"

	[C_ID .. 483] = "影响整层#炸碎所有障碍物#{VAR:EFFECTLIST}#打开隐藏房的门#无论时间, 打开头目车轮战和死寂的门", -- Mama Mega!
	-- Full old Desc: "影响整层#炸碎所有障碍物#对所有敌人造成200点伤害#打开隐藏房的门#无论时间, 打开头目车轮战和死寂的门"
	-- English: "Affects the whole floor#Explodes all objects#{VAR:EFFECTLIST}#Opens secret rooms#Opens Boss Rush and Hush regardless of time"

	[C_ID .. 484] = "使用时, 推走敌人并生成岩石波#岩石波可以开门或摧毁石头", -- Wait What?
	-- English: "Upon use, pushes enemies away and spawns a rock wave around Isaac#The rock wave can open rooms and break rocks"

	[C_ID .. 485] = "50%概率使房间中所有道具, 掉落物和箱子翻倍#50%概率将上述内容移除并生成1硬币", -- Crooked Penny
	-- English: "50% chance to double all items, pickups and chests in room#50% chance to remove items / pickups in room and spawn 1 coin"

	[C_ID .. 486] = "使角色受伤但不掉血#触发'受伤时触发'道具的效果", -- Dull Razor
	-- English: "Hurts Isaac without removing health#Triggers any on-hit item effects"

	[C_ID .. 487] = "{{Collectible214}} 留下血迹", -- Potato Peeler
	-- Full old Desc: "{{EmptyHeart}} 移除1心之容器, 获得:#↑ {{Damage}} 伤害+0.2#{{Collectible73}} 肉块#{{Timer}} 当前房间中获得:#↑ {{Range}} 射程+5#{{Collectible214}} 留下血迹"
	-- English: "{{EmptyHeart}} Removes 1 heart container for:#{VAR:EFFECTLIST}#{{IND}}{{NameC73}}#{VAR:ROOMEFFECT}#{{IND}}{{Collectible214}} Leave a trail of blood creep"

	[C_ID .. 488] = "在当前房间中获得1个随机道具的效果", -- Metronome
	-- English: "Grants a random item effect for the room"

	[C_ID .. 489] = "每次使用时触发1次随机骰子的效果", -- D Infinity
	-- English: "Triggers a random dice effect each use"

	[C_ID .. 490] = "根据当前房间的道具池生成2个随机道具#起始无充能", -- Eden's Soul
	-- English: "Spawns 2 random items depending on the current room's item pool#Starts with no charges"

	[C_ID .. 491] = "{{Poison}} 使用胶囊会使房间中所有敌人中毒", -- Acid Baby
	-- Full old Desc: "{{Pill}} 每3个房间生成1随机胶囊#{{Poison}} 使用胶囊会使房间中所有敌人中毒"
	-- English: "{{Pill}} Spawns a random pill every {VAR:1} rooms#{{Poison}} Using a pill poisons all enemies in the room"

	[C_ID .. 492] = "使{{SecretRoom}}隐藏房, 标记石头和{{LadderRoom}}暗门的地点高亮", -- YO LISTEN!
	-- Full old Desc: "↑ {{Luck}} 幸运+1#使{{SecretRoom}}隐藏房, 标记石头和{{LadderRoom}}暗门的地点高亮"
	-- English: "Highlights the location of {{SecretRoom}} secret rooms, tinted rocks and {{LadderRoom}} crawlspaces"

	[C_ID .. 493] = "每有1空心之容器:#{VAR:EFFECTLIST}", -- Adrenaline
	-- Full old Desc: "每有1空心之容器:#↑ {{Damage}} 伤害+0.2"
	-- English: "For every empty heart container:#{VAR:EFFECTLIST}"

	[C_ID .. 494] = "泪弹击中时会生成1-2个随机方向的电弧#{{Damage}} 电弧造成0.5x角色伤害", -- Jacob's Ladder
	-- English: "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half of Isaac's damage"

	[C_ID .. 495] = "概率发射红火, 能阻挡弹幕并造成接触伤害#火焰造成或阻挡5次伤害后消失", -- Ghost Pepper
	-- English: "Chance to shoot a red flame that blocks enemy shots and deals contact damage#The flame disappears after dealing damage or blocking shots 5 times"

	[C_ID .. 496] = "针会立即击杀通常敌人, 并爆出10颗泪弹#{{Damage}} 针击中头目造成3x角色伤害", -- Euthanasia
	-- Full old Desc: "3.33%概率发射针#{{Luck}} 幸运15: 100%概率#针会立即击杀通常敌人, 并爆出10颗泪弹#{{Damage}} 针击中头目造成3x角色伤害"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a needle#Needles kill normal enemies instantly, bursting them into 10 tears#{{Damage}} Needles deal 3x Isaac's damage against bosses"

	[C_ID .. 497] = "{{Confusion}} 进入房间时, 迷惑所有敌人并使角色伪装, 直到角色开始发射", -- Camo Undies
	-- English: "{{Confusion}} Entering a room confuses all enemies until Isaac starts shooting"

	[C_ID .. 498] = "{{AngelDevilChance}} {{DevilRoom}}恶魔房和{{AngelRoom}}天使房生成时会同时生成#进入其一, 另一个就会消失", -- Duality
	-- English: "{{AngelDevilChance}} Spawns both a Devil and Angel Room if either would have spawned#Entering one makes the other disappear"

	[C_ID .. 501] = "{{Heart}} 拾起后, 每获得25硬币增加1心之容器", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins gained after getting Greed's Gullet"

	[C_ID .. 502] = "{{Slow}} 发射时, 时不时额外发射一颗白色青春痘, 造成2x角色伤害并使敌人减速#受伤时, 向随机方向发射一颗青春痘", -- Large Zit
	-- English: "{{Slow}} Firing occasionally shoots a white creep tear that deals double damage and slows enemies#Taking damage shoots a white creep tear"

	[C_ID .. 503] = "角色造成3.5点接触伤害", -- Little Horn
	-- Full old Desc: "5%概率发射能立即击杀非头目敌人的泪弹#{{Luck}} 幸运15: 20%概率#角色造成3.5点接触伤害"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot tears that instantly kill enemies#Isaac deals 3.5 contact damage"

	[C_ID .. 504] = "生成1只向敌人发射的苍蝇炮塔#泪弹造成2点伤害", -- Brown Nugget
	-- English: "Spawns a fly turret that shoots at enemies#Each shot deals 2 damage"

	[C_ID .. 505] = "{{Friendly}} 进入有敌人的房间时, 20%概率生成友好的敌人", -- Poke Go
	-- English: "{{Friendly}} Entering a hostile room has a chance to spawn a friendly enemy"

	[C_ID .. 506] = "{{BleedingOut}} 若泪弹击中敌人后背, 则造成的伤害翻倍并造成流血, 每5秒造成最大血量10%的伤害", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds"

	[C_ID .. 507] = "{{Damage}} 对所有敌人造成1x角色伤害+敌人最大血量10%的伤害#{{HalfHeart}} 造成伤害时, 15%概率生成半红心 #{{HalfSoulHeart}} 若角色没有心之容器则改为生成半魂心", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts#{{HalfSoulHeart}} Having no heart containers drops Soul Hearts instead"

	[C_ID .. 508] = "{{BleedingOut}} 能造成流血的环绕物, 流血每5秒造成最大血量10%的伤害#{{Damage}} 每秒造成3x角色伤害#无法阻挡弹幕", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds#{{Damage}} Deals 3x Isaac's damage per second#Does not block shots"

	[C_ID .. 509] = "每2秒在随机方向上发射泪弹的环绕物#不阻挡弹幕", -- Bloodshot Eye
	-- Full old Desc: "每2秒在随机方向上发射泪弹的环绕物#泪弹造成3.5伤害#每秒造成30点接触伤害#不阻挡弹幕"
	-- English: "Orbital that shoots a tear in a random direction every 2 seconds#Does not block shots"

	[C_ID .. 510] = "{{Friendly}} 当前房间中生成1个友好的精神错乱版的头目", -- Delirious
	-- English: "{{Friendly}} Spawns a friendly delirium version of a boss for the room"

	[C_ID .. 511] = "在随机敌人周围环绕直到该敌人死亡", -- Angry Fly
	-- Full old Desc: "在随机敌人周围环绕直到该敌人死亡#每秒对其他敌人造成30点接触伤害"
	-- English: "Orbits a random enemy until that enemy dies"

	[C_ID .. 512] = "可投掷的黑洞, 会吸入所有东西#每秒造成6点接触伤害#摧毁附近的石头#持续6秒", -- Black Hole
	-- English: "Throwable black hole, which sucks in everything#Deals 6 damage per second#Destroys nearby rocks#Lasts 6 seconds"

	[C_ID .. 513] = "{{Charm}} 概率魅惑/恐惧敌人#受伤时, 5%概率生成1个彩虹大便", -- Bozo
	-- Full old Desc: "↑ {{Damage}} 伤害+0.1#{{SoulHeart}} +1魂心#{{Charm}} 概率魅惑/恐惧敌人#受伤时, 5%概率生成1个彩虹大便"
	-- English: "{{Charm}} Randomly charms/fears enemies#Taking damage has a random chance to spawn a Rainbow Poop"

	[C_ID .. 514] = "随机间隔使一些敌人和弹幕短暂停滞#25%概率使清理房间奖励翻倍", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#25% chance to double room clear drops"

	[C_ID .. 515] = "根据当前房间的道具池生成1个随机道具#概率生成{{Collectible132}}煤块/{{Collectible36}}便便", -- Mystery Gift
	-- English: "Spawns a random item from the current room's item pool#Chance to spawn Lump of Coal or The Poop instead"

	[C_ID .. 516] = "生成1个洒水器, 转圈发射泪弹", -- Sprinkler
	-- English: "Spawns a Sprinkler that shoots the same tears as Isaac in a circle around itself"

	[C_ID .. 517] = "移除放置炸弹的冷却", -- Fast Bombs
	-- Full old Desc: "{{Bomb}} +7炸弹#移除放置炸弹的冷却"
	-- English: "Removes the delay between bomb placements"

	[C_ID .. 518] = "与合作宝宝外观一样的跟班#随机泪弹效果#效果每层都会变化", -- Buddy in a Box
	-- English: "Familiar which looks like a random co-op baby#Has random tear effects#Effects change every floor"

	[C_ID .. 519] = "每10秒变成随机跟班", -- Lil Delirium
	-- English: "Transforms into a random familiar every 10 seconds"

	[C_ID .. 520] = "每击杀15个敌人主动道具充能1格", -- Jumper Cables
	-- English: "Killing 15 enemies adds 1 charge to the active item"

	[C_ID .. 521] = "使{{Shop}}商店/{{DevilRoom}}恶魔房的随机1个物品免费#{{Shop}} 持有时, 进入商店必有1个商店物品打折", -- Coupon
	-- English: "Makes one random item in the {{Shop}} Shop or {{DevilRoom}} Devil Room free#Holding the item guarantees one Shop item is on sale"

	[C_ID .. 522] = "使靠近角色的敌人弹幕停滞3秒, 结束后弹幕会被抛开", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards"

	[C_ID .. 523] = "使用时, 储存当前房间中所有掉落物#再次使用将储存物放回地上#允许角色在房间之间搬东西", -- Moving Box
	-- English: "Stores all pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "泪弹以电弧连接#{{Damage}} 电弧每秒造成1x角色伤害", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#The beams deal Isaac's damage"

	[C_ID .. 525] = "受伤时, 生成1个阻挡弹幕的环绕物#同时最多有3个环绕物#环绕物受伤过多后被摧毁", -- Leprosy
	-- English: "Taking damage spawns a projectile blocking orbital#Caps at 3 orbitals#They deal 35 contact damage per second#Orbitals are destroyed if they take too much damage"

	[C_ID .. 526] = "生成小天启骑士跟班, 能生成对应的蝗虫#骑士及其蝗虫每10秒更换一次", -- 7 Seals
	-- English: "Spawns a small horseman familiar that spawns locusts#The horseman and its locust changes every 10 seconds"

	[C_ID .. 527] = "几秒内显示可移动光标, 随后生成幽灵, 根据光标位置:#打开门或箱子#带回物品# 50%概率在{{Shop}}商店/{{DevilRoom}}恶魔房偷东西#攻击敌人直到目标死亡#炸开墙/石头/天使雕像/店主/机器/乞丐#按下压力板", -- Mr. ME!
	-- English: "Displays a movable cursor for a few seconds, then summons a ghost that will, depending on the cursor position:#Open doors or chests#Fetch an item#50% chance to steal from the Shop / Devil#Attack an enemy until it dies#Explode walls, rocks, shopkeepers, angel statues, machines, beggars"

	[C_ID .. 528] = "棱镜环绕物#友方泪弹击中它会分裂成4个", -- Angelic Prism
	-- English: "Orbital prism#Friendly tears hitting it split into 4"

	[C_ID .. 529] = "角色的泪弹会彼此弹开, 停止移动时消失", -- Pop!
	-- English: "Isaac's tears bounce off each other and disappear when they stop moving"

	[C_ID .. 530] = "按顺序击杀标记的敌人可获得奖励", -- Death's List
	-- English: "Killing enemies in the order dictated by the mark {{DeathMark}} above them grants a random pickup or stat increase"

	[C_ID .. 531] = "角色的泪弹呈抛物线前进, 击中时分裂成更小的泪弹", -- Haemolacria
	-- Full old Desc: "↑ {{Damage}} 伤害修正x1.31#↓ {{Tears}} 射速修正x0.5#↓ {{Tears}} 射击延迟+10#角色的泪弹呈抛物线前进, 击中时分裂成更小的泪弹"
	-- English: "Isaac's tears fly in an arc and burst into smaller tears on impact"

	[C_ID .. 532] = "角色的泪弹前进时减速, 停止后会爆裂成8颗小泪弹#泪弹可以合并变大", -- Lachryphagy
	-- English: "Isaac's tears progressively slow down, stop, then explode into 8 smaller tears#Tears can merge and become bigger"

	[C_ID .. 533] = "角色的泪弹由光束弹取代#每秒造成15次0.33x角色伤害", -- Trisagion
	-- English: "Replaces Isaac's tears with piercing beams of light#The beams deal 33% damage but can hit enemies multiple times"

	[C_ID .. 534] = "允许角色持有2个主动道具#按掉落键({{ButtonRT}})切换", -- Schoolbag
	-- English: "Allows Isaac to hold 2 active items#The items can be swapped using the Drop button ({{ButtonRT}})"

	[C_ID .. 535] = "{{HolyMantle}} 进入头目房时产生神圣屏障护盾, 阻挡1次伤害", -- Blanket
	-- Full old Desc: "{{HealingRed}} 治疗1红心#{{SoulHeart}} +1魂心#{{HolyMantle}} 进入头目房时产生神圣屏障护盾, 阻挡1次伤害"
	-- English: "{{HolyMantle}} Entering a boss room grants a Holy Mantle shield (prevents damage once)"

	[C_ID .. 536] = "献祭最多2个跟班并生成同样数量的{{DevilRoom}}恶魔房道具#{{Coin}} 将蓝蜘蛛/蓝苍蝇变成硬币", -- Sacrificial Altar
	-- English: "Sacrifices up to 2 familiars and spawns a devil item for each sacrifice#{{Coin}} Turns blue spiders/flies into coins"

	[C_ID .. 537] = "{{Pill}} 生成1随机胶囊#发射一条水迹#每次使用胶囊后, 水迹类型改变", -- Lil Spewer
	-- English: "{{Pill}} Spawns a random pill on pickup#Fires a line of creep#The type of creep changes with each pill use"

	[C_ID .. 538] = "{{Collectible479}} 受伤时, 10%概率消耗角色持有的饰品并永久获得其效果", -- Marbles
	-- Full old Desc: "{{Trinket}} 生成3随机饰品#{{Collectible479}} 受伤时, 10%概率消耗角色持有的饰品并永久获得其效果"
	-- English: "{{Collectible479}} Taking damage has a 10% chance to consume Isaac's held trinket and grant its effects permanently"

	[C_ID .. 539] = "{{Friendly}} 受伤时, 生成1个友好的敌人#未受伤清理的房间越多, 生成的帮手更强", -- Mystery Egg
	-- English: "{{Friendly}} Taking damage spawns a friendly enemy#Spawns stronger friends the more rooms are cleared without taking damage"

	[C_ID .. 540] = "角色的泪弹会在地面弹起#{{Damage}} 每次弹起对附近敌人造成0.25x角色伤害", -- Flat Stone
	-- English: "Isaac's tears bounce off the floor and cause splash damage on every bounce"

	[C_ID .. 542] = "反弹敌人弹幕", -- Slipped Rib
	-- Full old Desc: "环绕物#反弹敌人弹幕"
	-- English: "Reflects enemy projectiles"

	[C_ID .. 543] = "受伤时, 生成白大便#在大便光环中时:#{VAR:EFFECTLIST}#50%概率阻挡伤害", -- Hallowed Ground
	-- Full old Desc: "受伤时, 生成白大便#在大便光环中时:#↑ {{Tears}} 射速修正x2#50%概率阻挡伤害"
	-- English: "Taking damage spawns a white poop#While inside the poop's aura:#{VAR:EFFECTLIST}#{{IND}}Chance to block damage"

	[C_ID .. 544] = "漂浮在角色前方的骨刺#每秒造成6x角色伤害", -- Pointy Rib
	-- English: "Levitates in front of Isaac#Deals 6x Isaac's damage per second"

	[C_ID .. 545] = "{{Friendly}} 当前房间中每击杀1个敌人, 生成1个骨头环绕物/友好的骷髅仔#最多生成8个", -- Book of the Dead
	-- English: "{{Friendly}} Spawns a bone orbital or friendly bony per enemy killed in the room (up to 8)"

	[C_ID .. 546] = "{{Petrify}} 获得能使敌人石化的光环", -- Dad's Ring
	-- English: "{{Petrify}} Grants an aura that petrifies enemies"

	[C_ID .. 547] = "{{Trinket21}} 生成神秘纸片饰品", -- Divorce Papers
	-- Full old Desc: "↑ {{Tears}} 射速+0.7#{{EmptyBoneHeart}} +1骨心#{{Trinket21}} 生成神秘纸片饰品"
	-- English: "{{Trinket21}} Spawns the Mysterious Paper trinket"

	[C_ID .. 548] = "回旋镖状的跟班#能捡起并带回掉落物", -- Jaw Bone
	-- Full old Desc: "回旋镖状的跟班#造成7点接触伤害#能捡起并带回掉落物"
	-- English: "Boomerang-like familiar#Can grab and bring back pickups"

	[C_ID .. 549] = "向四周方向发射8颗骨头泪弹", -- Brittle Bones
	-- Full old Desc: "{{EmptyBoneHeart}} 角色所有的心之容器由6空骨心取代#失去骨心时:#↑ {{Tears}} 射速+0.5#向四周方向发射8颗骨头泪弹"
	-- English: "{{EmptyBoneHeart}} Replaces all of Isaac's Red Heart containers with 6 empty Bone Hearts#Upon losing a Bone Heart:#{VAR:EFFECTLIST}#{{IND}}Shoots 8 bone tears in all directions"

	[C_ID .. 550] = "妈腿会持续攻击角色#使用后, 在当前房间中(或头目车轮战1波次)妈腿攻击停止#{{Warning}} (试着带着它通过头目车轮战!)", -- Broken Shovel
	-- English: "Mom's Foot constantly tries to stomp Isaac#Using the item stops the stomping for the room (or one Boss Rush wave)#{{Warning}} (Try to beat Boss Rush with it!)"

	[C_ID .. 551] = "破铲子的第二部分#{{Warning}} 在\"暗室\"的土丘上使用铲子", -- Broken Shovel
	-- English: "Completes Mom's Shovel#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 552] = "生成通往下一层的活板门#10%概率生成{{LadderRoom}}暗门#{{Warning}} 在\"暗室\"的土丘上使用铲子", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#10% chance for {{LadderRoom}} crawlspace trapdoor#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 1] = "{{Coin}} 受伤时, 生成1硬币", -- Swallowed Penny
	-- English: "{{Coin}} Taking damage spawns 1 coin"

	[T_ID .. 2] = "大便50%概率掉落东西", -- Petrified Poop
	-- English: "50% chance to get drops from poop"

	[T_ID .. 3] = "{{Battery}} 主动道具充能条-1", -- AAA Battery
	-- English: "{{Battery}} -1 Charge needed for active items"

	[T_ID .. 4] = "{{Collectible44}} 使用主动道具时, 将角色传送至随机房间", -- Broken Remote
	-- English: "{{Collectible44}} Using an active item teleports Isaac to a random room"

	[T_ID .. 5] = "出现精英怪的概率翻倍", -- Purple Heart
	-- English: "2x chance for champion enemies"

	[T_ID .. 6] = "{{Coin}} 角色吸引硬币", -- Broken Magnet
	-- English: "{{Coin}} Attracts coins to Isaac"

	[T_ID .. 7] = "{{Collectible33}} 在{{Shop}}商店和{{Library}}图书馆出现圣经的概率更高", -- Rosary Bead
	-- Full old Desc: "{{AngelChance}} 天使房转换概率+50%#{{Collectible33}} 在{{Shop}}商店和{{Library}}图书馆出现圣经的概率更高"
	-- English: "{{Collectible33}} Higher chance to find The Bible in {{Shop}} Shops and {{Library}} Libraries"

	[T_ID .. 8] = "{VAR:ITEMDESCRIPTION}", -- Cartridge
	-- Full old Desc: "{{Timer}} 受伤时, 5%概率在6.5秒内获得:#无敌#角色无法发射, 但每秒造成40点接触伤害#{{HalfHeart}} 每击杀2个敌人治疗半红心#{{Fear}} 使房间中的所有敌人恐惧"
	-- English: "{{Timer}} {VAR:LUCKCHANCE}% chance upon taking damage:#{VAR:ITEMDESCRIPTION}"

	[T_ID .. 9] = "角色的泪弹搏动#影响泪弹命中区域", -- Pulse Worm
	-- English: "Isaac's tears pulsate#Affects tear hitbox"

	[T_ID .. 10] = "角色的泪弹波形前进", -- Wiggle Worm
	-- Full old Desc: "↑ {{Tears}} 射速+0.3#角色的泪弹波形前进"
	-- English: "Isaac's tears move in waves"

	[T_ID .. 11] = "角色的泪弹高速螺旋前进", -- Ring Worm
	-- English: "Isaac's tears move in spirals with high speed"

	[T_ID .. 12] = "泪弹宽50%#提高击退力", -- Flat Worm
	-- English: "50% wider tears#Increases knockback"

	[T_ID .. 13] = "{{Shop}} 允许角色免费拿1个商店道具", -- Store Credit
	-- English: "{{Shop}} Allows Isaac to take 1 Shop item for free"

	[T_ID .. 14] = "不再受到水迹和地刺的伤害", -- Callus
	-- English: "Immune to creep and floor spikes"

	[T_ID .. 15] = "{{Coin}} 摧毁石头会生成硬币", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks spawns coins"

	[T_ID .. 17] = "{{BlackHeart}} 魂心生成为黑心的概率翻倍, 由5%提升至10%", -- Black Lipstick
	-- English: "{{BlackHeart}} +10% chance for random Soul Hearts to spawn as Black Hearts"

	[T_ID .. 18] = "{{EternalHeart}} 永恒之心概率+3%", -- Bible Tract
	-- English: "{{EternalHeart}} +3% chance for Eternal Hearts"

	[T_ID .. 19] = "{{GoldenChest}} 金箱子可不消耗钥匙打开", -- Paper Clip
	-- English: "{{GoldenChest}} Gold chests can be opened for free"

	[T_ID .. 20] = "{{BlackHeart}} 受伤至不多于半心时, 生成1黑心#{{Warning}} 生成3次后消失", -- Monkey Paw
	-- English: "{{BlackHeart}} Spawns 1 Black Heart when Isaac's health is reduced to half a heart#{{Warning}} Disappears after spawning 3 Black Hearts"

	[T_ID .. 21] = "随机获得效果:#{VAR:TEXT}", -- Mysterious Paper
	-- Full old Desc: "随机获得效果:#{{Collectible327}} 全家福#{{Collectible328}} 底片#{{Trinket48}} 遗失的书页#{{Trinket23}} 寻人启事"
	-- English: "Randomly grants the effect of:#{VAR:TEXT}"

	[T_ID .. 22] = "{{Heart}} 心掉落物生成率降至20%#{{BlackHeart}} 所有心掉落物变为黑心#{{Key}} 提升钥匙掉落概率", -- Daemon's Tail
	-- English: "{{Heart}} Decreases spawn rate of hearts to 20%#{{BlackHeart}} All Heart pickups turn into Black Hearts#{{Key}} Increases the drop chance of keys"

	[T_ID .. 23] = "{{Player10}} 死亡时, 以游魂重生", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death"

	[T_ID .. 24] = "{{Coin}} 大便产生硬币的概率+20%#角色拾起硬币时放屁", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#Picking up coins makes Isaac fart"

	[T_ID .. 25] = "角色每30秒放屁或生成大便", -- Mysterious Candy
	-- English: "Isaac farts or spawns poop every 30 seconds"

	[T_ID .. 26] = "泪弹直角前进", -- Hook Worm
	-- Full old Desc: "↑ {{Range}} 射程+10#泪弹直角前进"
	-- English: "Isaac's tears move in angular patterns"

	[T_ID .. 28] = "{{Player4}} 死亡时, 22%概率以???(小蓝人)重生", -- Broken Ankh
	-- English: "{{Player4}} 22% chance to respawn as ??? (Blue Baby) on death"

	[T_ID .. 29] = "受伤时, 生成1只蓝苍蝇", -- Fish Head
	-- English: "Taking damage spawns 1 blue fly"

	[T_ID .. 32] = "每个房间25%概率出现随机蘑菇效果#可能在地图上显示特殊房间", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room#Can reveal special rooms on the minimap"

	[T_ID .. 34] = "{{UnknownHeart}} 10%概率房间清理奖励为1随机心#{{Heart}} 33%概率在箱子, 标记石头, 炸毁的机器中额外出现心", -- Child's Heart
	-- English: "{{UnknownHeart}} 10% chance for the room clear reward to be a random heart#{{Heart}} 33% chance for a bonus heart from chests, tinted rocks, and destroyed machines"

	[T_ID .. 36] = "{{Key}} 10%概率房间清理奖励为1钥匙#{{Key}} 33%概率在箱子, 标记石头, 炸毁的机器中额外出现钥匙", -- Rusted Key
	-- English: "{{Key}} 10% chance for the room clear reward to be a key#{{Key}} 33% chance for a bonus key from chests, tinted rocks, and destroyed machines"

	[T_ID .. 38] = "随机心掉落为{{SoulHeart}}魂心, {{BlackHeart}}黑心, {{EmptyBoneHeart}}骨心的概率+10%", -- Mom's Pearl
	-- English: "+10% chance for heart drops to be {{SoulHeart}} Soul Hearts, {{BlackHeart}} Black Hearts or {{EmptyBoneHeart}} Bone Hearts"

	[T_ID .. 40] = "{{Timer}} 受伤时, 20%概率在当前房间中获得:", -- Red Patch
	-- Full old Desc: "{{Timer}} 受伤时, 20%概率在当前房间中获得:#↑ {{Damage}} 伤害+1.8#{{Luck}} 幸运8: 100%概率"
	-- English: "{{Timer}} Taking damage has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +1.8 damage for the room"

	[T_ID .. 41] = "{{Bomb}} 10%概率房间清理奖励为1炸弹#{{Bomb}} 33%概率在箱子, 标记石头, 炸毁的机器中额外出现炸弹#{{Warning}} 能够移除{{Trinket53}}血虱", -- Match Stick
	-- English: "{{Bomb}} 10% chance for the room clear reward to be a bomb#{{Bomb}} 33% chance for a bonus bomb from chests, tinted rocks, and destroyed machines#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 42] = "房间清理奖励概率+8%#33%概率在箱子, 标记石头, 炸毁的机器中有额外掉落物", -- Lucky Toe
	-- Full old Desc: "↑ {{Luck}} 幸运+1#房间清理奖励概率+8%#33%概率在箱子, 标记石头, 炸毁的机器中有额外掉落物"
	-- English: "+8% room clear reward chance#33% chance for an extra pickup from chests, tinted rocks, and destroyed machines"

	[T_ID .. 43] = "受伤至不多于半心时, 将角色传送至随机房间", -- Cursed Skull
	-- English: "When damaged down to half a heart or less, Isaac is teleported to a random room"

	[T_ID .. 44] = "{{Pill}} 10%概率房间清理奖励为1胶囊#{{Pill}} 33%概率在箱子, 标记石头, 炸毁的机器中额外出现胶囊", -- Safety Cap
	-- English: "{{Pill}} 10% chance for the room clear reward to be a pill#{{Pill}} 33% chance for a bonus pill from chests, tinted rocks, and destroyed machines"

	[T_ID .. 45] = "{{Card}} 10%概率房间清理奖励为1卡牌#{{Card}} 33%概率在箱子, 标记石头, 炸毁的机器中额外出现卡牌", -- Ace of Spades
	-- English: "{{Card}} 10% chance for the room clear reward to be a card#{{Card}} 33% chance for a bonus card from chests, tinted rocks, and destroyed machines"

	[T_ID .. 49] = "{{HalfHeart}} 拾起硬币时, 50%概率生成1半红心", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 50% chance to spawn a half Red Heart"

	[T_ID .. 50] = "{{Bomb}} 拾起硬币时, 50%概率生成1炸弹", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 50% chance to spawn a bomb"

	[T_ID .. 51] = "{{Key}} 拾起硬币时, 50%概率生成1钥匙", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 50% chance to spawn a key"

	[T_ID .. 52] = "{{Coin}} 拾起硬币时, 有50%概率再获得1硬币", -- Counterfeit Penny
	-- English: "{{Coin}} Picking up a coin has a 50% chance to add another coin to the counter"

	[T_ID .. 53] = "{{HealingRed}} 进入{{BossRoom}}头目房时, 治疗1红心#头目血量-15%#{{Warning}} 拾起后, 无法被其他饰品替换#只能被{{Trinket41}}火柴棍移除或吞下", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick or gulping"

	[T_ID .. 54] = "发射穿刺泪弹的跟班", -- Isaac's Head
	-- Full old Desc: "发射穿刺泪弹的跟班#泪弹造成3.5点伤害"
	-- English: "Familiar with piercing tears"

	[T_ID .. 55] = "{{EternalHeart}} 每层一开始获得1永恒之心", -- Maggy's Faith
	-- English: "{{EternalHeart}} Entering a new floor grants +1 Eternal Heart"

	[T_ID .. 56] = "{{DevilRoom}} 降低恶魔房交易价格为1心之容器#不降低3魂心的价格", -- Judas' Tongue
	-- English: "{{DevilRoom}} Reduces all devil deal prices to 1 heart container#Doesn't reduce 3 Soul Heart prices"

	[T_ID .. 57] = "在房间中四处漂浮的跟班#发射方向与角色相同", -- ???'s Soul
	-- Full old Desc: "在房间中四处漂浮的跟班#发射方向与角色相同#泪弹造成3.5点伤害"
	-- English: "Familiar that bounces around the room#Shoots in the same direction as Isaac"

	[T_ID .. 58] = "{{Timer}} 击杀敌人时, 1/15概率在当前房间中获得:", -- Samson's Lock
	-- Full old Desc: "{{Timer}} 击杀敌人时, 1/15概率在当前房间中获得:#↑ {{Damage}} 伤害+0.5#{{Luck}} 幸运10: 100%概率"
	-- English: "{{Timer}} Killing an enemy has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +0.5 damage for the room"

	[T_ID .. 61] = "{{RedChest}} 将所有箱子变成红箱子", -- The Left Hand
	-- English: "{{RedChest}} Turns all chests into Red Chests"

	[T_ID .. 62] = "暗门石头和标记石头每10秒闪烁一次", -- Shiny Rock
	-- English: "Crawlspace rocks and tinted rocks blink every 10 seconds"

	[T_ID .. 63] = "{{Bomb}} 将即爆炸弹变成炸弹掉落物", -- Safety Scissors
	-- English: "{{Bomb}} Turns Troll Bombs into bomb pickups"

	[T_ID .. 64] = "每3秒获得随机蠕虫效果", -- Rainbow Worm
	-- English: "Grants a random worm effect every 3 seconds"

	[T_ID .. 67] = "受伤时, 50%概率触发以下骰子效果之一:#{VAR:TEXT}", -- Cracked Dice
	-- Full old Desc: "受伤时, 50%概率触发以下骰子效果之一:#{{Collectible105}} 六面骰#{{Collectible406}} 八面骰#{{Collectible386}} 十二面骰#{{Collectible166}} 二十面骰"
	-- English: "Taking damage has a 50% chance to trigger one of these effects:#{VAR:TEXT}"

	[T_ID .. 68] = "角色吸引掉落物和敌人", -- Super Magnet
	-- English: "Isaac attracts pickups and enemies"

	[T_ID .. 69] = "随机使角色伪装#{{Confusion}} 使敌人迷惑", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies"

	[T_ID .. 70] = "在有敌人的房间中, 时不时生成1只蓝蜘蛛", -- Louse
	-- English: "Occasionally spawns a blue spider in hostile rooms"

	[T_ID .. 71] = "角色的炸弹会留下水迹", -- Bob's Bladder
	-- English: "Isaac's bombs leave damaging creep"

	[T_ID .. 72] = "{{Battery}} 6.66%概率房间清理奖励为1电池#{{Battery}} 随机掉落物为电池的概率+10%#{{Battery}} 清理房间后, 5%概率为持有的主动道具充能1格", -- Watch Battery
	-- English: "{{Battery}} 6.66% chance for the room clear reward to be a battery#{{Battery}} +10% chance for random pickups to be a battery#{{Battery}} 5% chance to add 1 charge to held active item when clearing a room"

	[T_ID .. 73] = "{{Bomb}} 爆炸的炸弹有10%概率产生炸弹掉落物", -- Blasting Cap
	-- English: "{{Bomb}} 10% chance for exploding bombs to drop a bomb pickup"

	[T_ID .. 74] = "摧毁石头时, 出现{{LadderRoom}}暗门的概率+0.5%", -- Stud Finder
	-- English: "{{LadderRoom}} +0.5% chance to reveal a crawlspace when breaking a rock"

	[T_ID .. 75] = "每个房间获得随机饰品效果", -- Error
	-- English: "Grants a random trinket effect every room"

	[T_ID .. 76] = "↑ 箱子有50%概率生成额外掉落物#↓ 箱子有50%概率只有1只红苍蝇", -- Poker Chip
	-- English: "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly"

	[T_ID .. 77] = "提高击退力", -- Blister
	-- English: "Increases knockback"

	[T_ID .. 78] = "状态效果影响敌人两倍久", -- Second Hand
	-- English: "Status effects applied to enemies last twice as long"

	[T_ID .. 79] = "使用{{Rune}}符文, {{Card}}卡牌, {{Pill}}胶囊时, 25%概率生成其复制", -- Endless Nameless
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill has a 25% chance to spawn a copy of that rune, card or pill"

	[T_ID .. 81] = "受伤后的无敌变为两倍久", -- Blind Rage
	-- English: "Invincibility frames after taking damage last twice as long"

	[T_ID .. 82] = "{{TreasureRoom}} 后续层宝箱房能道具二选一的概率+15%", -- Golden Horse Shoe
	-- English: "{{TreasureRoom}} Future Treasure Rooms have +15% chance to let Isaac choose between two items"

	[T_ID .. 83] = "{{Shop}} 免费开启商店", -- Store Key
	-- English: "{{Shop}} Lets Isaac open Shops for free"

	[T_ID .. 84] = "{{Coin}} 房间清理奖励中硬币概率+5%, 心概率-5%#{{Shop}}商店和{{SecretRoom}}隐藏房不再出现贪婪和超级贪婪", -- Rib of Greed
	-- English: "{{Coin}} 5% more coins and fewer hearts from room clear rewards#Greed and Super Greed no longer appear in {{Shop}} Shops or {{SecretRoom}} Secret Rooms"

	[T_ID .. 85] = "{{DonationMachine}} 使用捐款机时, 33%概率:#{{HealingRed}} 治疗1红心(40%)#{{Luck}} 幸运+1(15%)#{{Beggar}} 生成1个乞丐(5%)", -- Karma
	-- English: "{{DonationMachine}} Using a Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)"

	[T_ID .. 86] = "摧毁大便时, 生成1只蓝苍蝇", -- Lil Larva
	-- English: "Destroying poop spawns 1 blue fly"

	[T_ID .. 87] = "{{HealingRed}} 使用钥匙时, 治疗半红心#{{Heart}} 将半红心变成整心", -- Mom's Locket
	-- English: "{{HealingRed}} Using a key heals half a heart#{{Heart}} Turns half hearts into full hearts"

	[T_ID .. 88] = "阻止主动道具生成", -- NO!
	-- English: "Prevents active items from spawning"

	[T_ID .. 89] = "跟班离角色更近", -- Child Leash
	-- English: "Familiars stay closer to Isaac"

	[T_ID .. 90] = "大便摧毁时爆炸, 造成100点伤害", -- Brown Cap
	-- English: "Poop explodes for 100 damage when destroyed"

	[T_ID .. 91] = "33%生成黑大便#{{BlackHeart}} 摧毁黑大便时, 5%概率生成1黑心", -- Meconium
	-- English: "33% chance for Black Poops to spawn#{{BlackHeart}} Destroying Black Poop has a 5% chance to spawn a Black Heart"

	[T_ID .. 92] = "↑ 高于{{Speed}}移速1, {{Damage}}伤害3.5, {{Range}}射程23.75, {{Shotspeed}}弹速1的部分修正x1.33", -- Cracked Crown
	-- Full old Desc: "↑ {{Tears}} 射击延迟x0.8#↑ 高于{{Speed}}移速1, {{Damage}}伤害3.5, {{Range}}射程23.75, {{Shotspeed}}弹速1的部分修正x1.33"
	-- English: "↑ x1.33 Stat multiplier for the stats that are above 1 {{Speed}} speed, 3.5 {{Damage}} damage, 23.75 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 93] = "每房间15%概率使所有苍蝇敌人变得友好", -- Used Diaper
	-- English: "15% chance per room for all fly enemies to become friendly"

	[T_ID .. 94] = "使蓝苍蝇/蓝蜘蛛生成翻倍", -- Fish Tail
	-- English: "Doubles all blue fly / spider spawns"

	[T_ID .. 95] = "牙齿造成2x角色伤害", -- Black Tooth
	-- Full old Desc: "{{Poison}} 3%概率发射有毒牙齿#牙齿造成2x角色伤害"
	-- English: "{{Poison}} {VAR:LUCKCHANCE}% chance to shoot poison tooth tears#The tooth deals 2x Isaac's damage"

	[T_ID .. 96] = "角色的泪弹螺旋快速前进", -- Ouroboros Worm
	-- Full old Desc: "↑ {{Range}} 射程+4#↑ 泪弹高度+2#灵体泪弹#概率为追踪泪弹#{{Luck}} 幸运9: 100%概率#角色的泪弹螺旋快速前进"
	-- English: "{VAR:LUCKCHANCE}% chance for homing tears#Isaac's tears move quickly in a spiral pattern"

	[T_ID .. 97] = "最多+2个跟班", -- Tonsil
	-- Full old Desc: "受伤12-20次后, 获得阻挡弹幕的跟班#最多+2个跟班"
	-- English: "Taking damage {VAR:RANGE} times spawns a projectile blocking familiar#Disappears after spawning 2 familiars"

	[T_ID .. 98] = "10%概率发射追踪粘性泪弹#{{Damage}} 每秒造成1x角色伤害#能粘住60秒", -- Nose Goblin
	-- Full old Desc: "10%概率发射追踪粘性泪弹#{{Damage}} 每秒造成1x角色伤害#能粘住60秒"
	-- English: "10% chance to shoot a sticky tear#50% chance for it to be homing#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for {VAR:1} seconds"

	[T_ID .. 99] = "10%概率发射弹性泪弹", -- Super Ball
	-- English: "10% chance to shoot bouncing tears"

	[T_ID .. 100] = "持有完全充能的主动道具时:#{VAR:EFFECTLIST}", -- Vibrant Bulb
	-- Full old Desc: "持有完全充能的主动道具时:#↑ {{Speed}} 移速+0.25#↑ {{Tears}} 射速+0.2#↑ {{Damage}} 伤害+0.5#↑ {{Range}} 射程+0.75#↑ {{Shotspeed}} 弹速+0.1#↑ {{Luck}} 幸运+1"
	-- English: "Holding a fully charged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 101] = "持有完全未充能的主动道具时:#{VAR:EFFECTLIST}", -- Dim Bulb
	-- Full old Desc: "持有完全未充能的主动道具时:#↑ {{Speed}} 移速+0.5#↑ {{Tears}} 射速+0.4#↑ {{Damage}} 伤害+1.5#↑ {{Range}} 射程+1.5#↑ {{Shotspeed}} 弹速+0.3#↑ {{Luck}} 幸运+2"
	-- English: "Holding a completely uncharged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 102] = "{{SecretRoom}} 持有时, 每层+1个额外隐藏房", -- Fragmented Card
	-- English: "{{SecretRoom}} +1 extra Secret Room per floor while held"

	[T_ID .. 103] = "当角色的{{Coin}}硬币, {{Bomb}}炸弹和{{Key}}钥匙数量相等时:#将掉落物变成成对掉落物", -- Equality!
	-- English: "Turns single pickups into double pickups when Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal"

	[T_ID .. 106] = "提高角色和跟班产生的水迹范围", -- Lost Cork
	-- English: "Increases the radius of friendly creep"

	[T_ID .. 107] = "受伤时, 首先消耗红心, 然后消耗魂心/黑心", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#This red heart damage does not reduce Devil/Angel Room chances"

	[T_ID .. 108] = "受到1-9次爆炸后, 摧毁饰品并生成1{{UnknownHeart}}随机心, 1{{Coin}}硬币, 1{{Key}}钥匙和1{{Trinket}}随机饰品#不必要受伤", -- Walnut
	-- English: "Getting hit by 1-9 explosions destroys the trinket and drops a random {{UnknownHeart}} heart, {{Coin}} coin, {{Key}} key and {{Trinket}} trinket#Taking damage isn't required"

	[T_ID .. 109] = "跟班被粘住, 随角色同步移动", -- Duct Tape
	-- English: "Familiars are stuck in one spot and cannot move"

	[T_ID .. 110] = "{{Shop}} 商店会出现在子宫层", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb"

	[T_ID .. 111] = "{{TreasureRoom}} 宝箱房会出现在子宫层", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb"

	[T_ID .. 112] = "{{RestockMachine}} {{TreasureRoom}}宝箱房永远生成补货机", -- Pay To Win
	-- English: "{{RestockMachine}} Restock boxes always spawn in {{TreasureRoom}} Treasure Rooms"

	[T_ID .. 113] = "进入有敌人的房间时, 生成1只爆炸攻击的蝗虫#蝗虫造成2x角色伤害+60点爆炸伤害", -- Locust of War
	-- English: "Entering a hostile room spawns an exploding attack fly #The fly deals 2x Isaac's damage + explosion damage"

	[T_ID .. 114] = "{{Poison}} 进入有敌人的房间时, 生成1只有毒攻击的蝗虫#蝗虫造成2x角色伤害", -- Locust of Pestilence
	-- English: "{{Poison}} Entering a hostile room spawns a poison attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 115] = "{{Slow}} 进入有敌人的房间时, 生成1只减速攻击的蝗虫#蝗虫造成2x角色伤害", -- Locust of Famine
	-- English: "{{Slow}} Entering a hostile room spawns a slowing attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 116] = "进入有敌人的房间时, 生成1只攻击蝗虫#蝗虫造成4x角色伤害", -- Locust of Death
	-- English: "Entering a hostile room spawns an attack fly#The fly deals 4x Isaac's damage"

	[T_ID .. 117] = "进入有敌人的房间时, 生成1-4只攻击蝗虫#每只蝗虫造成2x角色伤害", -- Locust of Conquest
	-- English: "Entering a hostile room spawns 1-4 attack flies#Each fly deals 2x Isaac's damage"

	[T_ID .. 118] = "{{Timer}} 击杀敌人后, 5%概率在当前房间中获得飞行", -- Bat Wing
	-- English: "{{Timer}} Killing an enemy has a 5% chance to grant flight for the room"

	[T_ID .. 119] = "{{HealingRed}} 进入新一层时, 治疗半红心", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half a heart"

	[T_ID .. 120] = "头目战开始时将主动道具充能", -- Hairpin
	-- English: "{{Battery}} Entering an uncleared boss room fully recharges active items"

	[T_ID .. 121] = "{{Collectible313}} 阻挡每层第一次受到的伤害", -- Wooden Cross
	-- English: "{{Collectible313}} Grants a Holy shield that prevents damage once per floor"

	[T_ID .. 122] = "使用主动道具会使其以底座道具的形式掉在地上#受伤时, 2%概率掉落角色持有的被动道具", -- Butter!
	-- English: "Using an active item drops it on a pedestal on the ground#Taking damage has a 2% chance to drop one of Isaac's passive items"

	[T_ID .. 123] = "天使头目掉落正常道具而不是钥匙部件", -- Filigree Feather
	-- English: "Angel bosses drop angel items instead of Key Pieces"

	[T_ID .. 124] = "最后经过的门保持打开", -- Door Stop
	-- English: "The last door used stays open"

	[T_ID .. 125] = "使跟班以电束相连#电束造成6点伤害", -- Extension Cord
	-- English: "Connects all familiars with beams of electricity#The beams deal 6 damage"

	[T_ID .. 126] = "拾起硬币时, 生成1只蓝苍蝇", -- Rotten Penny
	-- English: "Picking up a coin spawns a blue fly"

	[T_ID .. 127] = "跟班的泪弹有追踪效果", -- Baby-Bender
	-- English: "Grants all familiars homing shots"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 1] = "将角色传送至本层初始房间", -- 0 - The Fool
	-- English: "Teleports Isaac to the first room of the floor"

	[Card_ID .. 3] = "妈腿会践踏1个敌人#对敌人造成300点接触伤害#若没有敌人则会践踏角色", -- II - The High Priestess
	-- English: "Mom's Foot stomps on an enemy#Mom's Foot stomps Isaac if there are no enemies"

	[Card_ID .. 5] = "{{BossRoom}} 将角色传送至头目房", -- IV - The Emperor
	-- English: "{{BossRoom}} Teleports Isaac to the Boss Room"

	[Card_ID .. 9] = "生成1{{UnknownHeart}}随机心, 1{{Coin}}硬币, 1{{Bomb}}炸弹, 1{{Key}}钥匙", -- VIII - Justice
	-- English: "Spawns a random {{UnknownHeart}} heart, {{Coin}} coin, {{Bomb}} bomb and {{Key}} key"

	[Card_ID .. 10] = "{{Shop}} 将角色传送至商店", -- IX - The Hermit
	-- English: "{{Shop}} Teleports Isaac to the Shop"

	[Card_ID .. 11] = "{{Slotmachine}} 生成1台赌博机#{{FortuneTeller}} 25%概率为预言机", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 25% chance for it to be a Fortune Telling Machine"

	[Card_ID .. 15] = "{{DonationMachine}} 生成1台献血机", -- XIV - Temperance
	-- English: "{{DonationMachine}} Spawns a Blood Donation Machine"

	[Card_ID .. 17] = "生成6个即爆炸弹", -- XVI - The Tower
	-- English: "Spawns 6 Troll Bombs"

	[Card_ID .. 18] = "{{TreasureRoom}} 将角色传送至宝箱房", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room"

	[Card_ID .. 19] = "{{SecretRoom}} 将角色传送至隐藏房", -- XVIII - The Moon
	-- English: "{{SecretRoom}} Teleports Isaac to the Secret Room"

	[Card_ID .. 21] = "{{Beggar}} 生成1个乞丐#{{DemonBeggar}} 33%概率为恶魔乞丐#2%概率为钥匙大师或炸弹乞丐", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#2% chance for it to be a Key Master or Bomb Bum"

	[Card_ID .. 23] = "{{Bomb}} 使角色持有的炸弹翻倍", -- 2 of Clubs
	-- English: "{{Bomb}} Doubles Isaac's number of bombs"

	[Card_ID .. 24] = "{{Coin}} 使角色持有的硬币翻倍", -- 2 of Diamonds
	-- English: "{{Coin}} Doubles Isaac's number of coins"

	[Card_ID .. 25] = "{{Key}} 使角色持有的钥匙翻倍", -- 2 of Spades
	-- English: "{{Key}} Doubles Isaac's number of keys"

	[Card_ID .. 26] = "{{HealingRed}} 使角色的红心翻倍{{ColorSilver}}(并非心之容器){{CR}}", -- 2 of Hearts
	-- English: "{{HealingRed}} Doubles Isaac's number of Red Hearts {{ColorSilver}}(not containers){{CR}}"

	[Card_ID .. 27] = "{{Bomb}} 将所有掉落物变成炸弹", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups into random bombs"

	[Card_ID .. 28] = "{{Coin}} 将所有掉落物变成硬币", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups into random coins"

	[Card_ID .. 29] = "{{Key}} 将所有掉落物变成钥匙", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups into random keys"

	[Card_ID .. 30] = "{{Heart}} 将所有掉落物变成随机心", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups into random hearts"

	[Card_ID .. 31] = "{{AngelDevilChance}} 将角色传送至恶魔房/天使房", -- Joker
	-- English: "{{AngelDevilChance}} Teleports Isaac to the Devil or Angel Room"

	[Card_ID .. 32] = "摧毁房间中所有石头", -- Hagalaz
	-- English: "Destroy all rocks in the room"

	[Card_ID .. 33] = "复制房间中所有掉落物", -- Jera
	-- English: "Duplicates all pickups in room"

	[Card_ID .. 34] = "生成1个前往下一层的活板门#{{LadderRoom}} 8%概率为暗门", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} 8% chance for a crawlspace trapdoor"

	[Card_ID .. 35] = "{{CurseCursed}} 移除本层的所有诅咒", -- Dagaz
	-- Full old Desc: "{{SoulHeart}} +1魂心#{{CurseCursed}} 移除本层的所有诅咒"
	-- English: "{{CurseCursed}} Removes all curses for the floor"

	[Card_ID .. 37] = "重置房间中所有底座道具", -- Perthro
	-- English: "Rerolls all pedestal items in the room"

	[Card_ID .. 40] = "随机符文效果#使用后, 25%概率再掉落本身", -- Blank Rune
	-- English: "Triggers a random rune effect#25% chance to duplicate itself when used"

	[Card_ID .. 41] = "将房间中所有底座道具变为随机属性提升#将所有掉落物变成蓝苍蝇", -- Black Rune
	-- Full old Desc: "对所有敌人造成40点伤害#将房间中所有底座道具变为随机属性提升#将所有掉落物变成蓝苍蝇"
	-- English: "Converts all pedestal items in the room into random stat ups#Converts all pickups in the room into blue flies"

	[Card_ID .. 42] = "使用时, 向角色移动方向投出#立即击杀接触到的任何敌人(精神错乱除外)", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium)"

	[Card_ID .. 43] = "使{{Shop}}商店/{{DevilRoom}}恶魔房的所有道具和掉落物免费", -- Credit Card
	-- English: "Makes all items and pickups in a {{Shop}} Shop or {{DevilRoom}} Devil Room free"

	[Card_ID .. 44] = "使用时, 显示\"有帮助的\"提示", -- Rules Card
	-- English: "Displays "helpful" tips on use"

	[Card_ID .. 45] = "整个房间中填满大便", -- A Card Against Humanity
	-- English: "Fills the whole room with poop"

	[Card_ID .. 46] = "立即击杀角色并在地上生成10个掉落物或道具#生成的道具使用当前房间的道具池", -- Suicide King
	-- English: "Instantly kills Isaac and spawns 10 pickups or items on the floor#Spawned items will use the current room's item pool"

	[Card_ID .. 47] = "打开当前房间中所有的门", -- Get Out Of Jail Free Card
	-- English: "Open all doors in the room"

	[Card_ID .. 48] = "免费激活1次角色的主动道具", -- ? Card
	-- English: "Uses Isaac's active item for free"

	[Card_ID .. 49] = "重置房间中所有底座道具和掉落物", -- Dice Shard
	-- English: "Rerolls all item pedestals and pickups in the room"

	[Card_ID .. 50] = "2个妈妈的手落下并抓住2个敌人", -- Emergency Contact
	-- English: "Two of Mom's Hands come down and grab an enemy each"

	[Card_ID .. 51] = "{{HolyMantle}} 当前房间中获得神圣屏障护盾(阻挡1次伤害)#25%概率生成另1张神圣卡", -- Holy Card
	-- English: "{{HolyMantle}} Holy Mantle shield for the room (prevents damage once)#25% chance to spawn another Holy Card"

	[Card_ID .. 52] = "{VAR:ROOMEFFECT}#角色可粉碎接触的石头", -- Huge Growth
	-- Full old Desc: "{{Timer}} 当前房间中获得:#↑ {{Damage}} 伤害+7#↑ {{Range}} 射程+30#体型变大#角色可粉碎接触的石头"
	-- English: "{VAR:ROOMEFFECT}#Allows Isaac to destroy rocks by walking into them"

	[Card_ID .. 54] = "{VAR:ROOMEFFECT}#{{Slow}} 使敌人减速", -- Era Walk
	-- Full old Desc: "{{Timer}} 当前房间中获得:#↑ {{Speed}} 移速+0.5#↓ {{Shotspeed}} 弹速-1#{{Slow}} 使敌人减速"
	-- English: "{VAR:ROOMEFFECT}#{{Slow}} Slow down enemies"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 1] = "{{Poison}} 角色放屁并使附近敌人中毒", -- Bad Gas
	-- English: "{{Poison}} Isaac farts and poisons nearby enemies"

	[Pill_ID .. 2] = "{{Warning}} 对角色造成1心伤害#不多于1心时, 变为体力回满胶囊", -- Bad Trip
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#Becomes a Full Health pill at 1 heart or less"

	[Pill_ID .. 4] = "交换角色持有的{{Bomb}}炸弹和{{Key}}钥匙的数量", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys"

	[Pill_ID .. 5] = "在角色位置快速生成5个激活的炸弹", -- Explosive Diarrhea
	-- English: "Isaac quickly spawns 5 lit bombs"

	[Pill_ID .. 7] = "不多于1心之容器时, 变为体力上升胶囊", -- Health Down
	-- Full old Desc: "↓ {{EmptyHeart}} -1心之容器#不多于1心之容器时, 变为体力上升胶囊"
	-- English: "Becomes a Health Up pill at 0 or 1 heart containers"

	[Pill_ID .. 10] = "吃3个会获得成人套装:#{VAR:EFFECTLIST}", -- Puberty
	-- Full old Desc: "无效果#吃3个会获得成人套装:#↑ {{Heart}} +1心之容器"
	-- English: "Eating 3 grants the Adult transformation:#{VAR:EFFECTLIST}"

	[Pill_ID .. 20] = "将角色传送至随机房间#{{ErrorRoom}} 小概率传送至{{ErrorRoom}}错误房", -- Telepills
	-- English: "Teleports Isaac to a random room#{{ErrorRoom}} Small chance to teleport Isaac to the I AM ERROR room"

	[Pill_ID .. 21] = "{{Battery}} 将主动道具完全充能", -- 48 Hour Energy!
	-- Full old Desc: "{{Battery}} 将主动道具完全充能#{{Battery}} 生成1-2电池"
	-- English: "{{Battery}} Fully recharges the active item"

	[Pill_ID .. 22] = "{{Warning}} 清空红心但保留1红心", -- Hematemesis
	-- Full old Desc: "{{Warning}} 清空红心但保留1红心#{{Heart}} 生成1-4红心"
	-- English: "{{Warning}} Drains all but one heart container"

	[Pill_ID .. 23] = "角色不能移动和发射2秒", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 2 seconds"

	[Pill_ID .. 24] = "{{SecretRoom}} 打开本层所有隐藏房的入口", -- I can see forever!
	-- English: "{{SecretRoom}} Opens all secret room entrances on the floor"

	[Pill_ID .. 25] = "{{Charm}} 魅惑房间中所有敌人", -- Pheromones
	-- English: "{{Charm}} Charms all enemies in the room"

	[Pill_ID .. 26] = "{{CurseLost}} 隐藏本层地图", -- Amnesia
	-- English: "{{CurseLost}} Hides the map for the floor"

	[Pill_ID .. 27] = "生成一大滩水迹, 对敌人造成伤害", -- Lemon Party
	-- English: "Spawns a large puddle on the ground which damages enemies"

	[Pill_ID .. 28] = "{{Timer}} 角色进行斜角发射30秒", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 30 seconds"

	[Pill_ID .. 29] = "{{Timer}} 当前房间中受到的伤害均为半心", -- Percs!
	-- English: "{{Timer}} Reduces all damage taken to half a heart for the room"

	[Pill_ID .. 30] = "{{Timer}} 当前房间中受到的伤害均为整心", -- Addicted!
	-- English: "{{Timer}} Increases all damage taken to a full heart for the room"

	[Pill_ID .. 31] = "2秒内, 角色在身后生成大便", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 2 seconds"

	[Pill_ID .. 32] = "{{CurseMaze}} 本层施加混乱诅咒的效果", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. 33] = "不影响命中区域", -- One makes you larger
	-- Full old Desc: "角色体型变大#不影响命中区域"
	-- English: "Doesn't affect his hitbox"

	[Pill_ID .. 34] = "影响命中区域", -- One makes you small
	-- Full old Desc: "角色体型变小#影响命中区域"
	-- English: "Also decreases his hitbox"

	[Pill_ID .. 35] = "房间中每1个大便生成1只蓝蜘蛛", -- Infested!
	-- English: "Spawns 1 blue spider for each poop in the room"

	[Pill_ID .. 36] = "房间中每有1个敌人生成1只蓝蜘蛛#若房间中没有敌人则生成1-3只蓝蜘蛛", -- Infested?
	-- English: "Spawn 1 blue spider for each enemy in the room#Spawns 1-3 blue spiders if there are no enemies in the room"

	[Pill_ID .. 38] = "{{Timer}} 30秒内, 屏幕像素化3次", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen 3 times over 30 second"

	[Pill_ID .. 40] = "生成一摊打滑水迹", -- X-Lax
	-- English: "Spawns a pool of slippery creep"

	[Pill_ID .. 41] = "{{Slow}} 生成一摊减速水迹", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of slowing creep"

	[Pill_ID .. 42] = "{{Slow}} 使房间中所有敌人减速", -- I'm Drowsy...
	-- English: "{{Slow}} Slows all enemies in the room"

	[Pill_ID .. 43] = "使房间中所有敌人加速", -- I'm Excited!!
	-- English: "Speeds up all enemies in the room"

	[Pill_ID .. 44] = "{{Trinket}} 消耗角色的饰品并永久获得其效果", -- Gulp!
	-- English: "{{Trinket}} Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. 45] = "{{Collectible149}} 发射1颗吐根泪弹", -- Horf!
	-- English: "{{Collectible149}} Shoots one Ipecac tear"

	[Pill_ID .. 47] = "生成上次使用的胶囊", -- Vurp!
	-- English: "Spawns the last pill used before Vurp!"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)
