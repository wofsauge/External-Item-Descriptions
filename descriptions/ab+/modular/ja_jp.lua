---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 5] = "↑ 涙の高さ +1", -- My Reflection
	-- Full old Desc: "涙にブーメラン軌道を付与#↑ 射程　　 +1.5#↑ 弾速　　 +0.6#↑ 涙の高さ +1"
	-- English: "Tears get a boomerang effect"

	[C_ID .. 8] = "3.5 ダメージのノーマルな 涙で攻撃する使い魔", -- Brother Bobby
	-- Full old Desc: "3.5 ダメージのノーマルな 涙で攻撃する使い魔"
	-- English: "Shoots normal tears"

	[C_ID .. 9] = "ハエタイプの敵が中立化し、 無害になる", -- Skatole
	-- English: "All fly enemies are friendly"

	[C_ID .. 11] = "死ぬと、一つ前の部屋に 体力全回復の状態で復活", -- 1up!
	-- Full old Desc: "↑ 追加ライフ +1#死ぬと、一つ前の部屋に 体力全回復の状態で復活"
	-- English: "Isaac respawns with full health on death"

	[C_ID .. 13] = "↓ 移動速度 -0.1", -- The Virus
	-- Full old Desc: "接触した敵に毒を与える#毒を受けた敵が死んだ時、 20%の確率で黒ハートを 落とす#↓ 移動速度 -0.1"
	-- English: "{{Poison}} Touching enemies poisons them#{{BlackHeart}} Poisoned enemies can drop Black Hearts"

	[C_ID .. 21] = "部屋のアイコンが マッピングされる", -- The Compass
	-- English: "Reveals icons on the map#Does not reveal the layout of the map"

	[C_ID .. 33] = "その部屋に居る間、 飛行能力を付与#ママを即死させる#!!! サタン戦で使用すると アイザックが即死する", -- The Bible
	-- English: "{{Timer}} Flight for the room#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[C_ID .. 36] = "うんちを出し、敵を ノックバックさせる#一マスの穴の手前に 出して爆破すると、 橋の代わりになる", -- The Poop
	-- English: "Spawns one poop and knocks back enemies#Can be placed next to a pit and destroyed with a bomb to make a bridge"

	[C_ID .. 38] = "円形に10発の涙を同時発射", -- Tammy's Head
	-- English: "Shoots 10 tears in a circle around Isaac#The tears copy Isaac's tear effects, plus 25 damage"

	[C_ID .. 39] = "部屋の全ての敵を4秒間 石化させる", -- Mom's Bra
	-- English: "{{Petrify}} Petrifies all enemies in the room for 4 seconds"

	[C_ID .. 40] = "自爆攻撃", -- Kamikaze!
	-- Full old Desc: "自爆攻撃#爆発は40ダメージを与える"
	-- English: "Causes an explosion at Isaac's location#Deals {VAR:1} damage"

	[C_ID .. 41] = "部屋の全ての敵を5秒間 恐怖状態にする", -- Mom's Pad
	-- English: "{{Fear}} Fears all enemies in the room for 5 seconds"

	[C_ID .. 42] = "手投げ式の毒爆弾", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes on impact and poisons enemies"

	[C_ID .. 44] = "ランダムな部屋に テレポートする#{{Blank}} (I AM ERRORを除く)", -- Teleport!
	-- English: "Teleports Isaac into a random room, except I AM ERROR rooms"

	[C_ID .. 46] = "ギャンブルの勝率アップ#部屋クリア時の報酬 スポーン確率アップ", -- Lucky Foot
	-- Full old Desc: "↑ 運 +1#ギャンブルの勝率アップ#部屋クリア時の報酬 スポーン確率アップ"
	-- English: "+8% room clear reward chance#Better chance to win while gambling"

	[C_ID .. 47] = "指定地点にミサイルを 落とす#ミサイルは攻撃力ｘ20の ダメージを与える", -- Doctor's Remote
	-- English: "{{Collectible168}} On use, start aiming a crosshair#A missile lands on the crosshair after 1.5 seconds#It deals 20x Isaac's damage"

	[C_ID .. 49] = "ブリムストーンの レーザービームを発射", -- Shoop da Whoop!
	-- Full old Desc: "ブリムストーンの レーザービームを発射"
	-- English: "The next shot is replaced with a beam#It deals {VAR:1}x Isaac's damage over {VAR:2} seconds"

	[C_ID .. 52] = "↓ 連射間隔 ｘ2.5", -- Dr. Fetus
	-- Full old Desc: "涙が爆弾に置き換わる#爆弾は攻撃力ｘ5+30の ダメージを与える#↓ 連射間隔 ｘ2.5"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 5x Isaac's damage + 30"

	[C_ID .. 53] = "ピックアップが障害物を 飛び越えてアイザックに 引き寄せられるようになる", -- Magneto
	-- English: "Pickups are attracted to Isaac"

	[C_ID .. 54] = "フロアの構造が マッピングされる", -- Treasure Map
	-- English: "Reveals the floor layout#Does not reveal room icons"

	[C_ID .. 56] = "レモン汁が床に広がり、 触れた敵に毎秒24の ダメージを与える", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 57] = "赤いハエがアイザックを 周回し、接触した敵に 毎秒75ダメージを与える", -- Distant Admiration
	-- Full old Desc: "赤いハエがアイザックを 周回し、接触した敵に 毎秒75ダメージを与える"
	-- English: "Mid-range fly orbital"

	[C_ID .. 60] = "一マス分の穴にハシゴが かかり、横断可能になる", -- The Ladder
	-- English: "Allows Isaac to cross 1-tile gaps"

	[C_ID .. 62] = "敵を13体倒すたび、 半赤ハート回復する", -- Charm of the Vampire
	-- English: "{{HealingRed}} Killing 13 enemies heals half a heart"

	[C_ID .. 63] = "アクティブアイテムの チャージの最大容量が 2回分になる", -- The Battery
	-- English: "{{Battery}} Active items can be overcharged to two full charges"

	[C_ID .. 64] = "お店の商品が半額になる#このアイテムを2個取得 すると商品が無料になる", -- Steam Sale
	-- English: "{{Shop}} Shop items cost 50% less"

	[C_ID .. 65] = "トロル爆弾を6個スポーン", -- Anarchist Cookbook
	-- English: "Spawns 6 Troll Bombs near the center of the room"

	[C_ID .. 66] = "部屋の全ての敵を8秒間 スロー状態にする", -- The Hourglass
	-- English: "{{Slow}} Slows enemies down for 8 seconds"

	[C_ID .. 67] = "3.5 ダメージのノーマルな 涙で攻撃する使い魔", -- Sister Maggy
	-- Full old Desc: "3.5 ダメージのノーマルな 涙で攻撃する使い魔"
	-- English: "Shoots normal tears"

	[C_ID .. 68] = "涙が貫通・無限射程の レーザーに置き換わる", -- Technology
	-- English: "Isaac shoots lasers instead of tears"

	[C_ID .. 69] = "涙がチャージ式になり、 チャージ量に応じて 10～400%のダメージを 与える#↓ 連射速度", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x#{{Tears}} Max charge time is 2.5x tear delay"

	[C_ID .. 73] = "肉塊がアイザックを周回し、 敵に接触ダメージを与え、 弾をブロックする#複数個取得で進化：#{{Blank}} 2：涙で攻撃#{{Blank}} 3：ミートボーイになり、 　 敵を追いかけ攻撃#{{Blank}} 4：ミートボーイ LV2#5個目からはループ", -- Cube of Meat
	-- English: "Lv1: Orbital#Lv2: Shooting orbital#Lv3: Meat Boy#Lv4: Super Meat Boy"

	[C_ID .. 75] = "赤ハートを2個回復", -- PHD
	-- Full old Desc: "全てのピルが識別される#悪性のピルを良性に変換#取得時、ランダムなピルを 1個スポーンする#赤ハートを2個回復#売血時のコイン +0～2"
	-- English: "{{Pill}} Changes bad pills into good pills#{{BloodDonationMachine}} Blood Donation Machines give more {{Coin}} coins"

	[C_ID .. 76] = "隠し部屋が自動的に開く", -- X-Ray Vision
	-- English: "{{SecretRoom}} Opens all secret room entrances"

	[C_ID .. 78] = "↑ 保持中、悪魔部屋／天使 部屋の出現率 +17.5%", -- Book of Revelations
	-- Full old Desc: "青ハートを1個付与する#使用すると、現フロアの ボスがハービンガーに 時々置き換えられる#↑ 保持中、悪魔部屋／天使 部屋の出現率 +17.5%"
	-- English: "Using the item has a high chance to replace the floor's boss with a horseman"

	[C_ID .. 81] = "↓ 最大体力を1に設定する#死ぬと、最大体力が1の 状態で、一つ前の部屋に 復活する", -- Dead Cat
	-- Full old Desc: "↑ 追加ライフ +9#↓ 最大体力を1に設定する#死ぬと、最大体力が1の 状態で、一つ前の部屋に 復活する"
	-- English: "Isaac respawns with 1 heart container on death#{{Warning}} Sets Isaac's heart containers to 1 when picked up"

	[C_ID .. 83] = "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}", -- The Nail
	-- Full old Desc: "青ハートを1個付与する#↑ 攻撃力　 +0.7#↓ 移動速度 -0.18#毎秒40の接触ダメージ 効果を得る#障害物を破壊できる"
	-- English: "{VAR:ONUSEEFFECT}#{VAR:ROOMEFFECT}#{{IND}}Allows Isaac to destroy rocks by walking into them"

	[C_ID .. 84] = "次のフロアにつながる トラップドアを生成#10%の確率でクロール スペースにつながる", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} 10% chance to open a crawlspace trapdoor"

	[C_ID .. 86] = "モンストロを召喚し、 踏み潰し攻撃で敵に 120ダメージを与える", -- Monstro's Tooth
	-- English: "Monstro falls on an enemy and deals 120 damage#{{Warning}} Monstro falls on Isaac if the room has no enemies"

	[C_ID .. 88] = "涙の発射方向に連動して 突進する使い魔", -- Little Chubby
	-- Full old Desc: "涙の発射方向に連動して 突進する使い魔#毎秒52.5の接触ダメージ"
	-- English: "Charges forward in the direction Isaac is shooting"

	[C_ID .. 91] = "隣接する部屋の種類が マップに表示される#隠し部屋の位置も表示", -- Spelunker Hat
	-- English: "Reveals the room type of adjacent rooms#{{SecretRoom}} Can reveal Secret and Super Secret Rooms"

	[C_ID .. 93] = "{VAR:TIMEDEFFECT}#敵を倒すと確率で 半赤ハート回復", -- The Gamekid
	-- Full old Desc: "6秒間パックマン化し、 以下の効果を得る：#無敵状態#全ての敵に恐怖を与える#40の接触ダメージ#敵を倒すと確率で 半赤ハート回復#涙攻撃不可"
	-- English: "{VAR:TIMEDEFFECT}#{{IND}}{{HealingRed}} Killing 2 enemies heals half a heart#{{IND}}{{Fear}} Fears all enemies in the room"

	[C_ID .. 94] = "2部屋クリアするたび コインを1枚スポーン する使い魔", -- Sack of Pennies
	-- English: "{{Coin}} Spawns a random coin every 2 rooms"

	[C_ID .. 95] = "3.5 ダメージのレーザーで 攻撃する使い魔", -- Robo-Baby
	-- Full old Desc: "3.5 ダメージのレーザーで 攻撃する使い魔"
	-- English: "Shoots lasers"

	[C_ID .. 96] = "3部屋クリアするたび 半赤ハートをスポーン する使い魔", -- Little C.H.A.D.
	-- English: "{{HalfHeart}} Spawns a half Red Heart every 3 rooms"

	[C_ID .. 99] = "3.5 ダメージのスロー効果 付き涙で攻撃する使い魔", -- Little Gish
	-- Full old Desc: "3.5 ダメージのスロー効果 付き涙で攻撃する使い魔"
	-- English: "{{Slow}} Shoots slowing tears"

	[C_ID .. 100] = "3.5 ダメージのホーミング 効果付き涙で攻撃する 使い魔", -- Little Steven
	-- Full old Desc: "3.5 ダメージのホーミング 効果付き涙で攻撃する 使い魔"
	-- English: "Shoots homing tears"

	[C_ID .. 104] = "衝突した涙が二つに分裂する#分裂した涙はダメージ量が 半減する", -- The Parasite
	-- English: "Tears split in two on contact#Split tears deal half damage"

	[C_ID .. 105] = "部屋の全てのアイテムを リロールする", -- The D6
	-- English: "Rerolls pedestal items in the room"

	[C_ID .. 107] = "{VAR:ROOMEFFECT}", -- The Pinking Shears
	-- Full old Desc: "頭と体を分離し、浮遊状態 になった頭部を操作する#体が敵を自動的に追いかけ、 毎秒82.5の接触ダメージを 与える"
	-- English: "{VAR:ROOMEFFECT}#{{IND}}Isaac's body separates from his head and attacks enemies with {VAR:1} contact damage per second"

	[C_ID .. 108] = "受けるダメージを 半ハートに軽減する", -- The Wafer
	-- English: "Reduces most damage taken to half a heart"

	[C_ID .. 109] = "↑ 攻撃力 +0.04ｘ所持金", -- Money = Power
	-- English: "↑ {{Damage}} +0.04 Damage for every {{Coin}} coin Isaac has"

	[C_ID .. 111] = "おならをし、近くの敵に 5ダメージと毒を与える", -- The Bean
	-- English: "{{Poison}} Deals 5 damage to enemies nearby and poisons them#The poison deals Isaac's damage 6 times"

	[C_ID .. 112] = "毎秒105の接触ダメージ", -- Guardian Angel
	-- Full old Desc: "天使がアイザックを周回し、 敵に接触ダメージを与え、 弾をブロックする#毎秒105の接触ダメージ#周回タイプの使い魔の 回転速度が上がる"
	-- English: "Speeds up all other orbitals"

	[C_ID .. 113] = "3 ダメージの涙で近くの 敵を自動攻撃する使い魔", -- Demon Baby
	-- Full old Desc: "3 ダメージの涙で近くの 敵を自動攻撃する使い魔"
	-- English: "Shoots enemies that get close to him"

	[C_ID .. 114] = "涙がナイフに置き換わる#保持中のナイフは2倍の ダメージを与える#チャージ攻撃でナイフを 発射でき、折り返し地点 では6倍のダメージを与える", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and 6x at the furthest possible distance"

	[C_ID .. 116] = "アクティブアイテムを フルチャージ#アクティブアイテムの 必要チャージ量が1減る#必要チャージ量が1の アイテムは、15秒の 時間式になる#時間式のアイテムは、 その時間が半減する", -- 9 Volt
	-- English: "{{Battery}} Automatically charges the first bar of active items#{{Battery}} Fully recharges the active item on pickup"

	[C_ID .. 117] = "ダメージを受けると鳥が 現れ、その部屋に居る間、 敵を追いかけて攻撃する", -- Dead Bird
	-- Full old Desc: "ダメージを受けると鳥が 現れ、その部屋に居る間、 敵を追いかけて攻撃する#毎秒4.3の接触ダメージ"
	-- English: "Taking damage spawns a bird that attacks enemies"

	[C_ID .. 122] = "残り体力が半赤ハート 以下の時：#{VAR:EFFECTLIST}", -- Whore of Babylon
	-- Full old Desc: "残り体力が半赤ハート 以下の時：#↑ 攻撃力　 +1.5#↑ 移動速度 +0.3"
	-- English: "When on half a Red Heart or less:#{VAR:EFFECTLIST}"

	[C_ID .. 123] = "ランダムな使い魔を 1体付与する#その部屋でのみ有効", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the room"

	[C_ID .. 124] = "ランダムなアクティブ アイテムの効果を発動", -- Dead Sea Scrolls
	-- English: "Triggers a random active item effect#Chooses the effect from a fixed list of items"

	[C_ID .. 125] = "爆弾 +5", -- Bobby-Bomb
	-- Full old Desc: "爆弾がホーミング化#爆弾 +5"
	-- English: "Homing bombs"

	[C_ID .. 126] = "ハート1個のダメージを 受け、その部屋に居る間、 攻撃力を1.2増やす#赤ハートを優先して消費", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#{{Heart}} Removes Red Hearts first"

	[C_ID .. 127] = "現在のフロアを再生成する", -- Forget Me Now
	-- English: "Rerolls and restarts the entire floor"

	[C_ID .. 128] = "青いハエがアイザックを 周回し、接触した敵に 毎秒30ダメージを与える", -- Forever Alone
	-- Full old Desc: "青いハエがアイザックを 周回し、接触した敵に 毎秒30ダメージを与える"
	-- English: "Long range fly orbital"

	[C_ID .. 130] = "保持中、飛行能力を付与し、 1.5以下の移動速度を 1.5に修正する#使用すると進行方向に 無敵状態で突進し、 敵に40ダメージを与える", -- A Pony
	-- English: "While held:#{{Speed}} Sets your Speed to at least 1.5#Flight#Upon use, dashes in the direction of Isaac's movement"

	[C_ID .. 131] = "3部屋クリアするたび 爆弾を1個スポーンする 使い魔", -- Bomb Bag
	-- English: "{{Bomb}} Spawns 1 bomb pickup every 3 rooms"

	[C_ID .. 132] = "飛距離に応じて涙の ダメージが増加する", -- A Lump of Coal
	-- English: "{{Damage}} Tears deal more damage the further they travel"

	[C_ID .. 133] = "最大体力1個を 青ハート3個に変換", -- Guppy's Paw
	-- English: "{{SoulHeart}} Converts 1 heart container into 3 Soul Hearts"

	[C_ID .. 134] = "部屋のクリア報酬が 33%の確率で宝箱に、 22%の確率で無報酬に、 それぞれ置き換わる", -- Guppy's Tail
	-- English: "{{Chest}} 33% chance to replace the room clear reward with a chest#33% chance to spawn no room clear reward"

	[C_ID .. 135] = "いつでも売血#1ダメージ = 1～2コイン", -- IV Bag
	-- English: "{{Coin}} Hurts Isaac for half a heart and spawns 1-2 coins#{{Heart}} Removes Red Hearts first"

	[C_ID .. 136] = "敵を引きつけるデコイの 爆弾を設置する", -- Best Friend
	-- English: "Spawns a decoy Isaac that attracts enemies and explodes after 5 seconds"

	[C_ID .. 137] = "初回取得時、爆弾 +5", -- Remote Detonator
	-- Full old Desc: "設置した爆弾を任意の タイミングで爆破する#初回取得時、爆弾 +5"
	-- English: "Isaac's bombs no longer explode automatically#Upon use, detonates all of Isaac's bombs at once"

	[C_ID .. 139] = "トリンケットを2個まで 保持可能になる", -- Mom's Purse
	-- English: "{{Trinket}} Isaac can hold 2 trinkets"

	[C_ID .. 140] = "爆弾 +5", -- Bob's Curse
	-- Full old Desc: "爆弾に毒効果を付与する#爆弾 +5"
	-- English: "{{Poison}} Isaac's bombs poison enemies caught in the blast"

	[C_ID .. 142] = "残り体力が半ハートに なった時、青ハートを 1個付与する#効果は1部屋で1回のみ 有効だが、部屋に入り 直すと再度有効化する", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again"

	[C_ID .. 144] = "コインを拾いランダムな ピックアップに変換する 乞食が現れる#3～4枚で1ピックアップ", -- Bum Friend
	-- English: "{{Coin}} Picks up nearby coins#Spawns random pickups every 3-4 coins"

	[C_ID .. 147] = "その部屋に居る間、斧で 障害物や壁を破壊できる", -- Notched Axe
	-- English: "{{Timer}} For the room, Isaac can break rocks and Secret Room walls by walking into them"

	[C_ID .. 151] = "涙が敵に当たった時、 1/6の確率で青ハエが スポーンする", -- The Mulligan
	-- English: "Tears have a 1/6 chance to spawn a blue fly when hitting an enemy"

	[C_ID .. 152] = "レーザーは攻撃力ｘ0.2の ダメージを与える", -- Technology 2
	-- Full old Desc: "右目の涙が連続照射の 貫通レーザーに置き換わる#↓ 攻撃力 -35%#レーザーは攻撃力ｘ0.2の ダメージを与える"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} It deals 3x Isaac's damage per second"

	[C_ID .. 155] = "目玉が部屋を飛び回り、 接触した敵に毎秒17の ダメージを与え、弾を ブロックする", -- The Peeper
	-- Full old Desc: "目玉が部屋を飛び回り、 接触した敵に毎秒17の ダメージを与え、弾を ブロックする"
	-- English: "Floats around the room"

	[C_ID .. 156] = "ダメージを受けるたび アクティブアイテムが 1チャージされる", -- Habit
	-- English: "{{Battery}} Taking damage adds 1 charge to the active item"

	[C_ID .. 157] = "↑ ダメージを受けるたび 攻撃力がアップ (最大6回、+6)#効果は次のフロアまで有効", -- Bloody Lust
	-- English: "↑ {{Damage}} Taking damage grants a damage up#Applies up to 6 times per floor#Lasts for the whole floor"

	[C_ID .. 158] = "フルマッピング効果#{VAR:EFFECTLIST}", -- Crystal Ball
	-- Full old Desc: "フルマッピング効果#青ハートまたはカード・ ルーンのいずれか1個を スポーンする"
	-- English: "Spawns a {{SoulHeart}} Soul Heart, {{Rune}} rune or {{Card}} card#{VAR:EFFECTLIST}"

	[C_ID .. 160] = "5本の光線が降り注ぎ、 触れた敵に攻撃力+20の ダメージを与える", -- Crack the Sky
	-- English: "Spawns 5 beams of light near enemies#Each beam deals 8x Isaac's damage + 160 over 0.8 seconds"

	[C_ID .. 161] = "{{Player4}} 死ぬと、一つ前の部屋に ？？？として復活する", -- Ankh
	-- English: "{{Player4}} Respawn as ??? (Blue Baby) on death"

	[C_ID .. 163] = "3.5 ダメージの透過効果 付き涙で攻撃する使い魔", -- Ghost Baby
	-- Full old Desc: "3.5 ダメージの透過効果 付き涙で攻撃する使い魔"
	-- English: "Shoots spectral tears"

	[C_ID .. 164] = "ロウソクから青い炎を放つ#炎が敵にダメージを与え、 弾をブロックする#炎は2秒で燃え尽きる", -- The Candle
	-- English: "Throws a blue flame#It deals contact damage, blocks enemy tears, and despawns after 2 seconds"

	[C_ID .. 166] = "部屋の全ての宝箱と ピックアップをリロール", -- D20
	-- English: "Rerolls all pickups in the room"

	[C_ID .. 167] = "4 ダメージの涙をＶ字形に 発射して攻撃する使い魔", -- Harlequin Baby
	-- Full old Desc: "4 ダメージの涙をＶ字形に 発射して攻撃する使い魔"
	-- English: "Shoots two tears in a V-shaped pattern"

	[C_ID .. 168] = "涙が誘導ミサイルに置き 換わり、攻撃力ｘ20の ダメージを与える", -- Epic Fetus
	-- English: "Instead of shooting tears, aim a crosshair#A rocket lands on the crosshair after 1.5 seconds#{{Damage}} Rockets deal 20x Isaac's damage"

	[C_ID .. 170] = "5秒に1回、巨大な足が敵を 踏み潰し、40のダメージを 与える", -- Daddy Longlegs
	-- Full old Desc: "5秒に1回、巨大な足が敵を 踏み潰し、40のダメージを 与える"
	-- English: "Stomps on a nearby enemy every 4 seconds"

	[C_ID .. 171] = "部屋の全ての敵に 10ダメージを与え、  4秒間スロー状態にする", -- Spider Butt
	-- Full old Desc: "部屋の全ての敵に 10ダメージを与え、  4秒間スロー状態にする"
	-- English: "{{Slow}} Slows down enemies for 4 seconds"

	[C_ID .. 174] = "3～5ダメージのランダムな 特殊効果付き涙で攻撃する 使い魔", -- Rainbow Baby
	-- Full old Desc: "3～5ダメージのランダムな 特殊効果付き涙で攻撃する 使い魔"
	-- English: "Shoots random tears"

	[C_ID .. 175] = "現在の部屋の全ドアと 隠し部屋の入り口を開く#条件を満たしていない {{ChallengeRoom}}{{BossRushRoom}}チャレンジルーム・ メガサタンのドアも開く", -- Dad's Key
	-- English: "Opens all doors in the room, including {{SecretRoom}}{{SuperSecretRoom}}Secret Rooms, {{ChallengeRoom}}{{BossRushRoom}}Challenge Rooms, and the Mega Satan door"

	[C_ID .. 177] = "コインを1枚消費して スロットを回す", -- Portable Slot
	-- English: "{{Coin}} Spend 1 coin for a chance to spawn a pickup"

	[C_ID .. 178] = "アイザックに追従し、 ダメージを受けると 砕け、床に聖水をまく#聖水は9秒間持続し、 触れた敵に毎秒24の ダメージを与える", -- Holy Water
	-- English: "Taking damage spills a pool of creep#The creep deals 24 damage per second"

	[C_ID .. 180] = "ダメージを受けると おならをし、近くの敵に 5ダメージと毒を与える", -- The Black Bean
	-- English: "Isaac farts when damaged#{{Poison}} The fart poisons enemies"

	[C_ID .. 181] = "保持中、飛行能力を付与し、 1.5以下の移動速度を 1.5に修正する#使用すると進行方向に 無敵状態で突進し、 接触した敵に40ダメージ#突進時に光線が降り注ぎ、 触れた敵に攻撃力+20の ダメージを与える", -- White Pony
	-- English: "{{Speed}} Sets your Speed to at least 1.5#Flight while held#Using the item dashes in the direction of Isaac's movement, leaving behind beams of light"

	[C_ID .. 187] = "毛玉がアイザックを追従し、 敵に接触ダメージを与え、 弾をブロックする#毛玉で敵を倒すたび毛玉の サイズとダメージがアップ （5段階、5→13ダメージ）", -- Guppy's Hairball
	-- English: "Moving swings the hairball around#The ball grows when it kills an enemy#It deals more damage the bigger it is"

	[C_ID .. 188] = "アイザックと鏡映しに 移動・攻撃する使い魔#3.5 ダメージのノーマルな 涙で攻撃する", -- Abel
	-- Full old Desc: "アイザックと鏡映しに 移動・攻撃する使い魔#3.5 ダメージのノーマルな 涙で攻撃する"
	-- English: "Mirrors Isaac's movement#Shoots towards Isaac"

	[C_ID .. 191] = "2～3秒ごとにランダムな 特殊効果を涙に付与", -- 3 Dollar Bill
	-- English: "Isaac's tears get random effects every 2-3 seconds"

	[C_ID .. 198] = "取得時、ピックアップを 各種1個ずつスポーン", -- Box
	-- English: "Spawns 1 pickup of each type"

	[C_ID .. 199] = "宝箱から得られる ピックアップ量2倍", -- Mom's Key
	-- Full old Desc: "鍵 +2#宝箱から得られる ピックアップ量2倍"
	-- English: "Chests contain more pickups"

	[C_ID .. 202] = "接触した敵へ所持金に 応じたダメージを与え、 黄金化し、動きを止める#黄金化状態の敵を倒すと 1～4枚のコインを落とす#うんちをスポーンする時、 黄金うんちになる可能性が アップする", -- Midas' Touch
	-- English: "{{Petrify}} Touching enemies petrifies them and turns them gold#Isaac deals contact damage based on his coin count#{{Coin}} Killing a golden enemy spawns coins#Poop spawned by Isaac has a high chance to be golden poop"

	[C_ID .. 203] = "コイン・鍵・爆弾・ハートを ダブルバージョンに変換する", -- Humbleing Bundle
	-- English: "Pickups spawned are doubled if possible"

	[C_ID .. 204] = "ダメージを受けた時、 50%の確率でコイン・ 鍵・爆弾・ハートの いずれかをスポーン", -- Fanny Pack
	-- English: "Taking damage has a 50% chance to spawn a random pickup"

	[C_ID .. 205] = "アクティブアイテムの チャージ量が空の時に 使用ボタンを押すと、 ハート2個のダメージが 発生し、アイテムが フルチャージされる", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of 2 hearts#Only works when the item has no charges"

	[C_ID .. 207] = "包帯玉がアイザックを 周回し、接触した敵に ダメージを与え、弾を ブロックする#複数個取得で進化#2：チャーム効果付き涙で 　 攻撃する#3：バンデージガールに　　 　 なり、敵を追いかけ　　 　 攻撃する#4：バンデージガール LV2#5個目からはループ", -- Ball of Bandages
	-- English: "Lv1: Orbital#{{Charm}} Lv2: Orbital that shoots charmed tears#{{Charm}} Lv3: Bandage Girl#{{Charm}} Lv4: Super Bandage Girl"

	[C_ID .. 208] = "!!! チャンピオンタイプの 敵の出現率が15%増加", -- Champion Belt
	-- Full old Desc: "↑ 攻撃力 +1#!!! チャンピオンタイプの 敵の出現率が15%増加"
	-- English: "Champion enemy chance goes from 5% to 20%#Doesn't increase chance of champion bosses"

	[C_ID .. 209] = "爆弾がうんち爆弾に置き 換わり、爆発時、全ての 敵に混乱と10ダメージを 与える", -- Butt Bombs
	-- Full old Desc: "↑ 爆弾 +5#爆弾がうんち爆弾に置き 換わり、爆発時、全ての 敵に混乱と10ダメージを 与える"
	-- English: "{{Confusion}} Explosions concuss and damage every enemy in the room"

	[C_ID .. 210] = "1秒間静止すると無敵の 石像に変化できる", -- Gnawed Leaf
	-- English: "After 1 second of inactivity, Isaac becomes invincible"

	[C_ID .. 212] = "死ぬと、50%の確率で、 半ハートの状態で1つ 前の部屋に復活する", -- Guppy's Collar
	-- English: "50% chance to revive with half a heart on death"

	[C_ID .. 213] = "↓ 弾速 -0.15", -- Lost Contact
	-- Full old Desc: "涙がシールドに包まれ、 敵の弾をブロックする#↓ 弾速 -0.15"
	-- English: "Isaac's tears destroy enemy shots"

	[C_ID .. 214] = "ダメージを受けると、 その部屋に居る間、 敵にダメージを与える 血液が床に流れ続ける", -- Anemic
	-- Full old Desc: "↑ 射程 +5#ダメージを受けると、 その部屋に居る間、 敵にダメージを与える 血液が床に流れ続ける"
	-- English: "{{Timer}} When taking damage Isaac leaves a trail of blood creep for the room#The creep deals 6 damage per second"

	[C_ID .. 218] = "1分間に1回、50%の確率で 半赤ハート回復する", -- Placenta
	-- Full old Desc: "↑ 最大体力 +1#1分間に1回、50%の確率で 半赤ハート回復する"
	-- English: "{{HealingRed}} 50% chance to heal half a heart every minute"

	[C_ID .. 220] = "爆弾 +5", -- Sad Bombs
	-- Full old Desc: "爆発した爆弾が、円形に 10発の涙を拡散する#爆弾 +5"
	-- English: "Isaac's bombs shoot 10 tears in a circle when they explode"

	[C_ID .. 221] = "涙が衝突時に跳ね返る ようになる", -- Rubber Cement
	-- English: "Isaac's tears bounce off enemies and obstacles"

	[C_ID .. 222] = "時間の経過または攻撃の 停止で、元の方向に涙が 発射される#↑ 連射間隔 -2", -- Anti-Gravity
	-- Full old Desc: "攻撃ボタンが押されて いる間、発射した涙が その場で静止を続ける#時間の経過または攻撃の 停止で、元の方向に涙が 発射される#↑ 連射間隔 -2"
	-- English: "Holding the fire buttons causes tears to hover in midair#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "爆風で赤ハートが1個回復#爆弾 +5", -- Pyromaniac
	-- Full old Desc: "爆発耐性を付与#爆風で赤ハートが1個回復#爆弾 +5"
	-- English: "Immunity to explosions, rock waves, and stomp attacks#{{HealingRed}} Getting hit by explosions heals 1 heart"

	[C_ID .. 224] = "衝突した涙が四つに分裂する#分裂した涙はダメージ量が 半減する", -- Cricket's Body
	-- Full old Desc: "↑ 連射間隔 -1#↓ 射程　　 -10#↓ 涙サイズ +20%#衝突した涙が四つに分裂する#分裂した涙はダメージ量が 半減する"
	-- English: "Tears split up in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "ダメージを受けた時、 一定確率で青ハートが スポーンする#確率：運0=10%、20=50%#死んだ敵が1～10%の確率で 半赤ハートを落とす （HPが高い敵ほど高確率）", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a chance to spawn a Soul Heart#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 227] = "ダメージを受けるたび コインを1～2枚スポーン", -- Piggy Bank
	-- Full old Desc: "コイン +3#ダメージを受けるたび コインを1～2枚スポーン"
	-- English: "{{Coin}} Taking damage spawns 1-2 coins"

	[C_ID .. 228] = "確率：運0=15%、85=100%", -- Mom's Perfume
	-- Full old Desc: "一定確率で涙に 恐怖効果を付与#確率：運0=15%、85=100%#↑ 連射間隔 -1"
	-- English: "{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 229] = "↓ 連射間隔 ｘ4.3", -- Monstro's Lung
	-- Full old Desc: "涙をチャージ式に置き換え、 一度に14発の涙を同時発射 できるようになる#↓ 連射間隔 ｘ4.3"
	-- English: "{{Chargeable}} Tears are charged and released in a shotgun style attack"

	[C_ID .. 230] = "確率：運0=15%、85=100%", -- Abaddon
	-- Full old Desc: "↑ 攻撃力　 +1.5#↑ 移動速度 +0.2#最大体力を0にし、6個の 黒ハートを付与する#一定確率で涙に 恐怖効果を付与#確率：運0=15%、85=100%"
	-- English: "↓ {{EmptyHeart}} Removes all heart containers#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 231] = "歩いた床にタールの跡が 残り、触れた敵をスロー 状態にする", -- Ball of Tar
	-- Full old Desc: "一定確率で涙に スロー効果を付与#確率：運0=10%、18=100%#歩いた床にタールの跡が 残り、触れた敵をスロー 状態にする"
	-- English: "{{Slow}} {VAR:LUCKCHANCE}% chance to shoot slowing tears#{{Slow}} Isaac leaves a trail of slowing creep"

	[C_ID .. 232] = "↑ 移動速度 +0.3", -- Stop Watch
	-- Full old Desc: "ダメージを受けた時、 部屋の全ての敵を スロー状態にする#↑ 移動速度 +0.3"
	-- English: "{{Slow}} Taking damage slows all enemies in the room permanently"

	[C_ID .. 233] = "↑ 涙の高さ +7", -- Tiny Planet
	-- Full old Desc: "涙がアイザックを周回して 飛ぶようになる#↑ 射程#↑ 涙の高さ +7#涙に透過効果を付与"
	-- English: "Isaac's tears orbit around him"

	[C_ID .. 234] = "倒された敵が青クモを スポーンする", -- Infestation 2
	-- English: "Killing an enemy spawns a blue spider"

	[C_ID .. 236] = "アイザックと接触した 敵がうんちに変わる", -- E. Coli
	-- English: "Touching an enemy turns it into poop"

	[C_ID .. 238] = "{{EternalHeart}} 白ハートの出現率 +2%", -- Key Piece 1
	-- Full old Desc: "!!! メガサタンのドアを開く 鍵のかけら#↑ 天使部屋の出現率 +25%#{{EternalHeart}} 白ハートの出現率 +2%"
	-- English: "{{Warning}} Getting both parts of the key opens a big golden door#{{EternalHeart}} +2% chance for Eternal Hearts"

	[C_ID .. 239] = "{{EternalHeart}} 白ハートの出現率 +2%", -- Key Piece 2
	-- Full old Desc: "!!! メガサタンのドアを開く 鍵のかけら#↑ 天使部屋の出現率 +25%#{{EternalHeart}} 白ハートの出現率 +2%"
	-- English: "{{Warning}} Getting both parts of the key opens a big golden door#{{EternalHeart}} +2% chance for Eternal Hearts"

	[C_ID .. 241] = "部屋のクリア報酬が2倍に なるが、1/3の確率でゼロ 報酬になる", -- Contract from Below
	-- English: "Doubles all room clear rewards#33% chance for no room clear reward"

	[C_ID .. 242] = "50%の確率で敵の弾を ブロックする", -- Infamy
	-- English: "50% chance to block enemy shots"

	[C_ID .. 243] = "アイザックの正面に 敵の弾をブロックする 盾が現れる", -- Trinity Shield
	-- English: "Blocks enemy shots coming from the direction Isaac is shooting"

	[C_ID .. 244] = "涙攻撃中、ランダムな 確率で追加のレーザー 攻撃が発生する", -- Tech.5
	-- English: "Occasionally shoot lasers in addition to Isaac's tears"

	[C_ID .. 245] = "ダブルショットの涙", -- 20/20
	-- English: "Isaac shoots 2 tears at once"

	[C_ID .. 246] = "隠し部屋の位置が マッピングされる", -- Blue Map
	-- English: "{{SecretRoom}} Reveals secret room locations on the map"

	[C_ID .. 247] = "使い魔の与えるダメージが 2倍になり、サイズも拡大#ピックアップを生成する タイプの使い魔は、その 頻度が増加する", -- BFFS!
	-- English: "Familiars deal double damage"

	[C_ID .. 248] = "青ハエ／クモの与える ダメージが2倍になる", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage"

	[C_ID .. 249] = "ボスアイテムを2つの 候補から選択できる", -- There's Options
	-- English: "Allows Isaac to choose between 2 items after beating a boss"

	[C_ID .. 250] = "全ての爆弾がダブル バージョンに置き換わる", -- Bogo Bombs
	-- English: "{{Bomb}} All bomb drops become double bombs"

	[C_ID .. 251] = "全てのピルをカードに 置き変える#取得時、ランダムな カードを1枚スポーン", -- Starter Deck
	-- Full old Desc: "カードを2枚まで 保持可能になる#全てのピルをカードに 置き変える#取得時、ランダムな カードを1枚スポーン"
	-- English: "Isaac can carry 2 cards#Turns all pills into cards"

	[C_ID .. 252] = "全てのカードをピルに 置き変える#取得時、ランダムな ピルを1個スポーン", -- Little Baggy
	-- Full old Desc: "ピルを2個まで 保持可能になる#全てのカードをピルに 置き変える#取得時、ランダムな ピルを1個スポーン"
	-- English: "Isaac can carry 2 pills#Turns all cards into pills"

	[C_ID .. 256] = "爆発地点に炎が残り、 敵にダメージを与える", -- Hot Bombs
	-- Full old Desc: "爆弾が炎をまとい、敵に 接触ダメージを与える#爆発地点に炎が残り、 敵にダメージを与える#爆弾 +5"
	-- English: "{{Burning}} Isaac's bombs leave a flame where they explode"

	[C_ID .. 257] = "!!! 自爆の危険あり", -- Fire Mind
	-- Full old Desc: "涙に火傷効果を付与する#一定確率で敵と衝突した 涙が爆発し、炎を残す#確率：運0=10%、13=100%#!!! 自爆の危険あり"
	-- English: "{{Burning}} Isaac's tears light enemies on fire#{VAR:LUCKCHANCE}% chance for tears to explode on enemy impact#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 258] = "取得時と毎フロア開始時、 全てのパッシブアイテムと ステータスをリロールする", -- Missing No.
	-- English: "Rerolls all of Isaac's items and stats on pickup and at every new floor"

	[C_ID .. 260] = "フロアの呪いを無効化", -- Black Candle
	-- Full old Desc: "フロアの呪いを無効化#黒ハート +1#悪魔部屋／天使部屋の 出現率 +15%"
	-- English: "{{CurseBlind}} Immune to curses"

	[C_ID .. 261] = "↓ 涙のサイズとダメージが 飛距離と共に減少する", -- Proptosis
	-- Full old Desc: "↑ 攻撃力 +100%#↓ 涙のサイズとダメージが 飛距離と共に減少する"
	-- English: "↓ Tears deal less damage the further they travel"

	[C_ID .. 262] = "ダメージを受け、残りの 体力がハート1個以下に なった時、ネクロノミコン 効果が発動する (全ての敵に40ダメージ)", -- Missing Page 2
	-- Full old Desc: "黒ハート +1#ダメージを受け、残りの 体力がハート1個以下に なった時、ネクロノミコン 効果が発動する (全ての敵に40ダメージ)"
	-- English: "Taking damage down to 1 heart damages all enemies in the room"

	[C_ID .. 264] = "ダメージを受けると アイザックから離れ、 敵を追いかけ攻撃する", -- Smart Fly
	-- Full old Desc: "黄色いハエがアイザックを 周回し、敵に接触ダメージ を与え、弾をブロックする#ダメージを受けると アイザックから離れ、 敵を追いかけ攻撃する#毎秒22.5の接触ダメージ"
	-- English: "Attacks enemies when Isaac takes damage"

	[C_ID .. 265] = "アイザックを追従し、 敵の弾をブロックする 使い魔#弾ブロック時、10%の 確率でネクロノミコン 効果を発動する", -- Dry Baby
	-- English: "10% chance to damage all enemies in the room when it is hit by an enemy tear"

	[C_ID .. 266] = "触れた敵をスロー状態に する液体を流しながら アイザックを追従する 使い魔#部屋をクリアするたび 1～2匹の青クモをスポーン", -- Juicy Sack
	-- English: "{{Slow}} Leaves slowing creep#Spawns 1-2 friendly spiders after clearing a room"

	[C_ID .. 267] = "攻撃方向に連動して移動し、 正面の敵を自動でレーザー 攻撃する使い魔", -- Robo-Baby 2.0
	-- Full old Desc: "攻撃方向に連動して移動し、 正面の敵を自動でレーザー 攻撃する使い魔#レーザーは3.5ダメージを 与える"
	-- English: "Shoots lasers#Moves in the direction Isaac is shooting"

	[C_ID .. 268] = "青ハエをスポーンして 攻撃する使い魔", -- Rotten Baby
	-- English: "Spawns blue flies when Isaac shoots"

	[C_ID .. 269] = "床に血を流しながら アイザックを追従する 使い魔#血は触れた敵に毎秒 6ダメージを与える", -- Headless Baby
	-- English: "Leaves creep which deals 6 damage per second"

	[C_ID .. 270] = "敵を追いかけ攻撃し、 毎秒3.2ダメージを 与える使い魔#この使い魔が敵を倒した時、 半赤ハート回復する", -- Leech
	-- Full old Desc: "敵を追いかけ攻撃し、 毎秒3.2ダメージを 与える使い魔#この使い魔が敵を倒した時、 半赤ハート回復する"
	-- English: "Chases enemies#{{HealingRed}} Heals Isaac for half a heart when it kills an enemy"

	[C_ID .. 271] = "5～6部屋クリアするたび ランダムなピックアップを 1個スポーンする使い魔", -- Mystery Sack
	-- English: "Spawns a random pickup every 5-6 rooms"

	[C_ID .. 272] = "部屋を飛び回り、敵との 接触時に爆発する使い魔", -- BBF
	-- Full old Desc: "部屋を飛び回り、敵との 接触時に爆発する使い魔#接触で10、爆発で60の ダメージを与える"
	-- English: "Friendly exploding fly#The explosion deals {VAR:1} damage#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 273] = "涙の発射方向に連動して 飛び出し、敵との衝突で 爆発する使い魔#爆発は60のダメージと 毒を与える", -- Bob's Brain
	-- Full old Desc: "涙の発射方向に連動して 飛び出し、敵との衝突で 爆発する使い魔#爆発は60のダメージと 毒を与える"
	-- English: "Dashes in the direction Isaac is shooting#Explodes when it hits an enemy#{{Poison}} The explosion deals {VAR:1} damage and poisons enemies#{{Warning}} The explosion can hurt Isaac"

	[C_ID .. 274] = "ダメージを受けると白い ハエが現れ、その部屋に 居る間、アイザックを 周回する", -- Best Bud
	-- Full old Desc: "ダメージを受けると白い ハエが現れ、その部屋に 居る間、アイザックを 周回する#毎秒75の接触ダメージ"
	-- English: "Taking damage spawns one midrange orbital for the room"

	[C_ID .. 275] = "ブリムストーンで攻撃する 使い魔　　", -- Lil Brimstone
	-- Full old Desc: "ブリムストーンで攻撃する 使い魔　　#ビームは完全ヒット時、 31.5のダメージを与える"
	-- English: "{{Chargeable}} Familiar that charges and shoots a {{Collectible118}} blood beam#It deals {VAR:1} damage over 0.63 seconds"

	[C_ID .. 276] = "アイザックに追従する 心臓が現れ、ダメージ 判定が心臓側に移行する", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 277] = "敵を追いかけて攻撃し、 毎秒4ダメージを与え、 恐怖状態にする使い魔", -- Lil Haunt
	-- Full old Desc: "敵を追いかけて攻撃し、 毎秒4ダメージを与え、 恐怖状態にする使い魔"
	-- English: "{{Fear}} Chases and fears enemies"

	[C_ID .. 278] = "赤ハートを拾い集める 乞食の使い魔#1.5個拾うたび、青ハート・ 青クモ・敵クモのいずれかを スポーンする", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#{{SoulHeart}} Spawns a Soul Heart or spider for every 1.5 Red Hearts picked up"

	[C_ID .. 279] = "巨大なハエがアイザックを 周回し、敵に接触ダメージ を与え、弾をブロックする", -- Big Fan
	-- Full old Desc: "巨大なハエがアイザックを 周回し、敵に接触ダメージ を与え、弾をブロックする#毎秒8.57の接触ダメージ"
	-- English: "Large orbital"

	[C_ID .. 280] = "バトル中、最大5匹まで 青クモをスポーンする 使い魔", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms"

	[C_ID .. 281] = "アイザックの代わりに 敵の標的になる使い魔", -- Punching Bag
	-- English: "Decoy familiar#Enemies target him instead of Isaac"

	[C_ID .. 282] = "移動しながら使用すると その方向にジャンプする", -- How to Jump
	-- English: "Allows Isaac to jump over gaps and obstacles"

	[C_ID .. 283] = "部屋の全てのアイテム、 ピックアップ、宝箱、 取得済みのパッシブ アイテムをリロールする", -- D100
	-- English: "Reroll all pickups and pedestal items in the room, and all of Isaac's passive items"

	[C_ID .. 284] = "全ての取得済みパッシブ アイテムをリロールする", -- D4
	-- English: "Reroll all of Isaac's passive items"

	[C_ID .. 285] = "部屋の全ての敵をリロール", -- D10
	-- English: "Reroll all enemies in the room"

	[C_ID .. 286] = "保持中のカード・ルーンの 効果をコピーして発動する", -- Blank Card
	-- English: "Triggers the effect of the rune or card Isaac holds without using it"

	[C_ID .. 289] = "ロウソクから赤い炎を放つ#炎が敵にダメージを与え、 弾をブロックする#接触とブロックで炎は 縮み、4回ヒットで消滅", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 5 times"

	[C_ID .. 290] = "体力が満タンの状態で 赤ハートを拾うと、最大 4個までストックできる#使用すると、中身を全て その場に落とす", -- The Jar
	-- English: "{{Heart}} Picking up Red Hearts while at full health stores up to 4 of them in the Jar#Using the item drops all stored hearts on the floor"

	[C_ID .. 291] = "全ての雑魚敵がうんちに変化#うんちタイプのボスが即死", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses"

	[C_ID .. 293] = "ブリムストーンビームを 十字方向に放つ", -- Head of Krampus
	-- Full old Desc: "ブリムストーンビームを 十字方向に放つ#各ビームは最大440の ダメージを与える"
	-- English: "{{Collectible118}} Shoot a 4-way blood beam#They each deal {VAR:1} damage over 1.33 seconds"

	[C_ID .. 294] = "おならで近くの敵と弾を ノックバックさせる", -- Butter Bean
	-- Full old Desc: "おならで近くの敵と弾を ノックバックさせる#他のアクティブアイテム との交換・再取得を繰り 返した時、10%の確率で {{Collectible484}}WaitWhat?に変化する"
	-- English: "Knocks back nearby enemies and projectiles#10% chance to turn into the stronger {{NameC484}} when swapping it with a different active item and picking it up again"

	[C_ID .. 295] = "1コイン消費し、部屋の 全ての敵に攻撃力ｘ2の ダメージを与える", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage to all enemies#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "青／黒ハートを2個消費し、 最大体力を1個増やす", -- Converter
	-- English: "{{Heart}} Converts 2 Soul/Black Hearts into 1 heart container"

	[C_ID .. 299] = "速度が上限に達した時、 5秒間の無敵状態と 接触ダメージ効果を得る#↓ 移動速度 -0.3", -- Taurus
	-- Full old Desc: "バトル中、移動速度が 徐々に増加する#速度が上限に達した時、 5秒間の無敵状態と 接触ダメージ効果を得る#↓ 移動速度 -0.3"
	-- English: "↑ {{Speed}} Slowly gain speed while in hostile rooms#At 2 speed, Isaac becomes invincible and deals contact damage#Afterwards, lose the Taurus speed boost for the room"

	[C_ID .. 300] = "素早く敵に衝突すると 18のダメージを与える", -- Aries
	-- Full old Desc: "↑ 移動速度 +0.25#素早く敵に衝突すると 18のダメージを与える"
	-- English: "Touching enemies deals contact damage"

	[C_ID .. 301] = "同じ部屋で受ける2回目 以降のダメージが、 半ハートに軽減される", -- Cancer
	-- Full old Desc: "青ハート +3#同じ部屋で受ける2回目 以降のダメージが、 半ハートに軽減される"
	-- English: "Taking damage reduces all future damage in the room to half a heart"

	[C_ID .. 302] = "アイザックのサイズ拡大", -- Leo
	-- Full old Desc: "障害物破壊能力を付与#アイザックのサイズ拡大"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 303] = "ダメージを受けた時、一定 確率でシールドを展開する#シールドは10秒間持続し、 全てのダメージを無効化#悪性のピルを良性に変換", -- Virgo
	-- English: "Taking damage can make Isaac temporarily invincible#{{Luck}} 100% chance at 10 luck#{{Pill}} Converts negative pills into positive ones"

	[C_ID .. 304] = "取得時およびステータス 変動時に、各ステータス が平均化される", -- Libra
	-- Full old Desc: "コイン・鍵・爆弾 +6#取得時およびステータス 変動時に、各ステータス が平均化される"
	-- English: "Balances Isaac's stats#Future stat changes will be spread across all stats"

	[C_ID .. 308] = "アイザックの体から青い 液体が流れ続け、触れた 敵に毎秒6のダメージを 与える", -- Aquarius
	-- English: "Isaac leaves a trail of creep#The creep deals 6 damage per second"

	[C_ID .. 309] = "ノックバック強化", -- Pisces
	-- Full old Desc: "↑ 連射間隔 -1#↑ 涙サイズ +25%#ノックバック強化"
	-- English: "Increases tear knockback"

	[C_ID .. 311] = "{{Player12}} 死ぬと、一つ前の部屋に ダークユダとして復活#復活後、実績上はユダ として扱われる", -- Judas' Shadow
	-- English: "{{Player12}} When dead, respawn as Dark Judas with a x2 damage multiplier"

	[C_ID .. 312] = "赤ハート取得時の回復量が 2倍になる", -- Maggy's Bow
	-- Full old Desc: "↑ 最大体力 +1#体力を1回復#赤ハート取得時の回復量が 2倍になる"
	-- English: "All Red Hearts heal double their value"

	[C_ID .. 313] = "部屋ごとに1回、最初に 受けたダメージを無効化 するシールドを付与する", -- Holy Mantle
	-- English: "Negates the first hit taken once per room"

	[C_ID .. 314] = "障害物破壊能力を付与", -- Thunder Thighs
	-- Full old Desc: "↑ 最大体力 +1#↓ 移動速度 -0.4#障害物破壊能力を付与"
	-- English: "Isaac can destroy rocks by walking into them"

	[C_ID .. 315] = "涙が磁気を帯び、敵や ピックアップを引き寄せる", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets"

	[C_ID .. 316] = "!!! チャージ中にダメージを 受けると、ランダムな 部屋にテレポートする", -- Cursed Eye
	-- Full old Desc: "涙がチャージ式になり、  チャージ量に応じた数の 涙が連続発射される#!!! チャージ中にダメージを 受けると、ランダムな 部屋にテレポートする#{{Collectible260}} ブラックキャンドルを 所持している場合、 テレポートしない"
	-- English: "Charged wave of {VAR:1} tears#{{Warning}} Taking damage while partially charged teleports Isaac to a random room"

	[C_ID .. 317] = "涙の衝突地点に緑色の 液体が残り、触れた敵に 毎秒30ダメージを与える", -- Mysterious Liquid
	-- English: "Isaac's tears leave creep#The creep deals 30 damage per second"

	[C_ID .. 318] = "アイザックと肉の鎖で つながれた使い魔が 敵を追いかけ攻撃し、 毎秒6ダメージを与える", -- Gemini
	-- Full old Desc: "アイザックと肉の鎖で つながれた使い魔が 敵を追いかけ攻撃し、 毎秒6ダメージを与える"
	-- English: "Close combat familiar"

	[C_ID .. 319] = "目玉が部屋を飛び回り、 アイザックと同じ涙を 発射する", -- Cain's Other Eye
	-- English: "Bounces around the room#Low accuracy tears that deal Isaac's damage"

	[C_ID .. 320] = "攻撃方向に連動して移動し、 毎秒37.5の接触ダメージを 与える使い魔", -- ???'s Only Friend
	-- Full old Desc: "攻撃方向に連動して移動し、 毎秒37.5の接触ダメージを 与える使い魔"
	-- English: "Controllable fly"

	[C_ID .. 321] = "アイザックに鉄球付きの 鎖がつながり、鉄球が 敵に接触ダメージを与え、 弾をブロックする", -- Samson's Chains
	-- Full old Desc: "アイザックに鉄球付きの 鎖がつながり、鉄球が 敵に接触ダメージを与え、 弾をブロックする#毎秒10.7の接触ダメージ#鉄球は障害物を破壊する"
	-- English: "Draggable ball that can destroy rocks"

	[C_ID .. 322] = "他の使い魔の涙をコピー して攻撃する使い魔#コピー対象が居ない場合、 3.5 ダメージのノーマルな 涙で攻撃する", -- Mongo Baby
	-- English: "Mimics your baby familiars' tears#If you have none, shoots normal 3.5 damage tears"

	[C_ID .. 323] = "8方向に涙を同時発射する#涙を発射するとチャージが 回復する", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects#Recharges by shooting tears"

	[C_ID .. 324] = "トレジャールーム・隠し 部屋・I AM ERROR部屋の いずれかにテレポート", -- Undefined
	-- English: "Teleports Isaac to the {{TreasureRoom}} Treasure, {{SecretRoom}} Secret, {{SuperSecretRoom}} Super Secret or {{ErrorRoom}} I AM ERROR Room"

	[C_ID .. 325] = "分離した頭がその場に固定 され、3.5ダメージの涙を放つ#操作する体側からも 涙を発射できる", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The head shoots 3.5 damage tears#The body is controlled separately and still shoots Isaac's tears"

	[C_ID .. 326] = "使用ボタンを押し続けると チャージ量が徐々に減り、 空になった瞬間無敵状態に なる#チャージ量が空になった後 更にボタンを1秒以上押し 続けるとダメージを受ける", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 327] = "ダメージを受け、残りの 体力が半赤ハート以下に なった時、シールドを展開#シールドは5秒間持続し、 全てのダメージを無効化", -- The Polaroid
	-- English: "Taking damage at half a Red Heart or none makes Isaac temporarily invincible"

	[C_ID .. 328] = "ダメージを受け、残りの 体力が半赤ハート以下に なった時、ネクロノミコン 効果を発動する （全ての敵に40ダメージ）", -- The Negative
	-- English: "Taking damage at half a Red Heart or none damages all enemies in the room"

	[C_ID .. 329] = "涙を発射する代わりに 浮遊する一つの涙を操作する", -- The Ludovico Technique
	-- English: "Replaces Isaac's tears with one giant controllable tear"

	[C_ID .. 331] = "涙にホーミング効果を付与", -- Godhead
	-- Full old Desc: "↑ 攻撃力　 +0.5#↑ 射程　　 +1.2#↓ 連射速度 -0.3#↓ 弾速　　 -0.3#↑ 涙の高さ +0.8#涙がオーラを放ち、触れた 敵にダメージを与える#涙にホーミング効果を付与"
	-- English: "{{Damage}} Tears gain an aura that deals 4.5x Isaac's damage per second"

	[C_ID .. 332] = "死ぬと、その部屋で ラザラスとして復活する", -- Lazarus' Rags
	-- English: "{{Player11}} When dead, revive as Lazarus (Risen)"

	[C_ID .. 333] = "フルマッピング効果", -- The Mind
	-- English: "Full mapping effect"

	[C_ID .. 335] = "敵や弾を跳ね返す オーラが付与される", -- The Soul
	-- Full old Desc: "青ハート +2#敵や弾を跳ね返す オーラが付与される"
	-- English: "Grants an aura that repels enemies and projectiles"

	[C_ID .. 337] = "4部屋ごとに全ての敵を スロー状態にするが、 まれにスピードアップ 効果が発生する", -- Broken Watch
	-- English: "{{Slow}} Slows down every 4th room#13% chance to speed up the room instead"

	[C_ID .. 338] = "ブーメランを投げる#攻撃力ｘ2のダメージを 与え、2秒間石化させる#ピックアップを回収可能", -- The Boomerang
	-- English: "Throwable boomerang#{{Petrify}} Petrifies enemies and deals 2x Isaac's damage#Can grab and bring back items"

	[C_ID .. 347] = "部屋の全てのアイテムと ピックアップを複製する", -- Diplopia
	-- English: "Duplicates all item pedestals and pickups in the room"

	[C_ID .. 348] = "保持中のピルの効果を コピーして発動する", -- Placebo
	-- English: "{{Pill}} Triggers the effect of the pill Isaac holds without using it"

	[C_ID .. 350] = "バトル開始時、部屋の 全ての敵を毒状態にする#死んだ敵が緑色の液体を 残し、触れた敵に毎秒30 ダメージを与える", -- Toxic Shock
	-- English: "{{Poison}} Entering a room poisons all enemies#Enemies killed leave a puddle of creep#The creep deals 30 damage per second"

	[C_ID .. 351] = "部屋の全ての敵を数秒間 石化させる#近くの敵に5ダメージと 毒を与える#地割れを起こし、触れた 敵に10ダメージを与え、 障害物を破壊する", -- Mega Bean
	-- English: "{{Petrify}} Petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Sends a rock wave in the direction Isaac is moving#The rock wave can open secret rooms and break rocks"

	[C_ID .. 352] = "残り体力を半ハートまで 減らし、敵と障害物を 貫通する大粒の涙を放つ#攻撃力ｘ10+10のダメージ", -- Glass Cannon
	-- English: "{{Warning}} Firing the cannon reduces Isaac's health down to half a heart#Shoots a large piercing + spectral tear that does 10x Isaac's damage"

	[C_ID .. 353] = "爆弾の爆発範囲が 十字型に広がる", -- Bomber Boy
	-- Full old Desc: "爆弾 +5#爆弾の爆発範囲が 十字型に広がる"
	-- English: "Bombs explode in a cross-shaped pattern"

	[C_ID .. 356] = "アクティブアイテムの 効果が2倍になる", -- Car Battery
	-- English: "{{Battery}} Using an active item triggers its effect twice"

	[C_ID .. 357] = "使い魔のコピーを追加#使い魔が居ない場合、 {{Collectible113}}デーモンベイビーが 追加される#使用した部屋でのみ有効", -- Box of Friends
	-- English: "{{Timer}} Duplicates all your familiars for the room#{{Collectible113}} Grants a Demon Baby for the room if Isaac has no familiars"

	[C_ID .. 358] = "涙に透過効果を付与", -- The Wiz
	-- Full old Desc: "両目から同時に、斜め 外側に向かって涙が 発射されるようになる#涙に透過効果を付与"
	-- English: "Isaac shoots 2 tears at once diagonally"

	[C_ID .. 359] = "ノックバック強化", -- 8 Inch Nails
	-- Full old Desc: "↑ 攻撃力 +1.5#ノックバック強化"
	-- English: "Increases knockback"

	[C_ID .. 360] = "アイザックの涙をコピー して攻撃する使い魔", -- Incubus
	-- English: "Shoots tears with the same tear rate, damage and effects as Isaac"

	[C_ID .. 361] = "アイザックの涙をコピー して攻撃する使い魔#連射速度は通常の 使い魔の半分", -- Fate's Reward
	-- English: "Shoots tears with the same damage and effects as Isaac#Shoots at half the rate of other familiars"

	[C_ID .. 362] = "部屋をクリアした時、 25%の確率でピックアップ、 10%の確率でトリンケットを スポーンする使い魔", -- Lil Chest
	-- English: "35% chance to spawn a pickup every room"

	[C_ID .. 363] = "一部屋で弾を10発ブロック すると、白ハートを落とす", -- Sworn Protector
	-- Full old Desc: "天使がアイザックを周回し、 敵に接触ダメージを与え、 弾をブロックする#毎秒105の接触ダメージ#一部屋で弾を10発ブロック すると、白ハートを落とす"
	-- English: "Blocks and attracts enemy shots#{{EternalHeart}} Blocking 10 shots in one room spawns an Eternal Heart"

	[C_ID .. 364] = "白いハエがアイザックを 周回し、接触した敵に 毎秒45ダメージを与える", -- Friend Zone
	-- Full old Desc: "白いハエがアイザックを 周回し、接触した敵に 毎秒45ダメージを与える"
	-- English: "Midrange fly orbital"

	[C_ID .. 365] = "壁や障害物に沿って 移動する使い魔", -- Lost Fly
	-- Full old Desc: "壁や障害物に沿って 移動する使い魔#毎秒105の接触ダメージ"
	-- English: "Moves along walls/obstacles"

	[C_ID .. 367] = "爆弾で敵を倒すと 青クモがスポーン#爆弾が敵にくっ付く", -- Sticky Bombs
	-- Full old Desc: "爆弾 +5#爆弾で敵を倒すと 青クモがスポーン#爆弾が敵にくっ付く"
	-- English: "Isaac's bombs stick to enemies#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "同一方向に攻撃し続けると 連射速度が上昇していき、 最大200%アップする#攻撃の停止・方向変更で 連射速度がリセットされる", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually decreases tear delay up to 200% and decreases accuracy"

	[C_ID .. 369] = "涙が画面の端と端で ループするようになる", -- Continuum
	-- Full old Desc: "↑ 射程　　 +2.25#↑ 涙の高さ +1.5#涙に透過効果を付与#涙が画面の端と端で ループするようになる"
	-- English: "Tears can travel through one side of the screen and come out the other side"

	[C_ID .. 371] = "ダメージを受けるたび 6個のトロル爆弾がスポーン#この効果で生成された トロル爆弾は爆弾強化 アイテムの特殊効果を 引き継ぐ", -- Curse of the Tower
	-- English: "{{Warning}} Taking damage spawns 6 Troll Bombs#The Troll Bombs inherit Isaac's bomb effects"

	[C_ID .. 372] = "バトル中、30秒おきに、#{{Blank}}  電池のスポーン#{{Blank}}  チャージの追加#{{Blank}}  敵を1.5秒間石化#{{Blank}} のいずれかを行う使い魔#電池とチャージ効果は 一部屋2回まで有効", -- Charged Baby
	-- English: "Every 30 seconds while in an uncleared room, the familiar can:#{{Battery}} Spawn a Battery (max 2 per room)#{{Battery}} Add one charge to the active item (max 2 per room)#{{Petrify}} Petrify all enemies in the room"

	[C_ID .. 373] = "↑ 涙が敵に当たるたび 攻撃力 +25%（最大100%）#涙が外れると一定確率で 攻撃力がリセットされる", -- Dead Eye
	-- English: "↑ {{Damage}} Consecutive tear hits on enemies grant +25% damage (max +100%)#Missing has a chance to reset the multiplier"

	[C_ID .. 374] = "確率：運0=10%、9=50%", -- Holy Light
	-- Full old Desc: "一定確率で聖なる涙が 発射され、衝突すると 近くの敵に光線が降り注ぐ#光線は攻撃力ｘ4の ダメージを与える#確率：運0=10%、9=50%"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot holy tears, which spawn a beam of light on hit#{{Damage}} The beam deals 4x Isaac's damage"

	[C_ID .. 375] = "爆発耐性を付与#踏み潰し・地割れ 攻撃を無効化#敵の弾を25%の確率で ブロックし、跳ね返す", -- Host Hat
	-- English: "Grants immunity to explosions, rock wave attacks and Mom and Satan's stomp attacks#25% chance to reflect enemy shots"

	[C_ID .. 376] = "取得時、ランダムな ピックアップを3個 スポーンする", -- Restock
	-- Full old Desc: "お店で商品を購入すると 新しい商品が補充される#取得時、ランダムな ピックアップを3個 スポーンする"
	-- English: "Buying an item from a Shop restocks it instantly"

	[C_ID .. 377] = "クモタイプの敵が中立に なり、接触でダメージを 受けなくなる", -- Bursting Sack
	-- English: "Spider enemies no longer target or deal contact damage to Isaac"

	[C_ID .. 378] = "攻撃ボタンを3秒間押し 続けると、うんち爆弾が スポーンする", -- No. 2
	-- English: "Holding a fire button for 2.35 seconds spawns a lit Butt Bomb"

	[C_ID .. 380] = "鍵で開くタイプのドアが コインで開くドアに置き 換わる", -- Pay To Play
	-- Full old Desc: "コイン +5#鍵で開くタイプのドアが コインで開くドアに置き 換わる"
	-- English: "{{Coin}} Single-key doors must be opened with coins instead of keys"

	[C_ID .. 381] = "次のゲームの開始時に ランダムなアイテムが 付与される", -- Eden's Blessing
	-- Full old Desc: "↑ 連射速度 +0.7#次のゲームの開始時に ランダムなアイテムが 付与される"
	-- English: "Grants a random item at the start of the next run"

	[C_ID .. 382] = "モンスターを捕獲できる ボール#再使用すると捕獲された 敵がチャーム状態で現れる", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns it as a friendly companion"

	[C_ID .. 383] = "使用すると、発射済みの 全ての涙が6つに分裂する", -- Tear Detonator
	-- English: "Splits all of Isaac's tears currently on screen in a circle of 6 tears"

	[C_ID .. 384] = "攻撃に連動してチャージを 溜め、解放されると高速で 体当たりを始める使い魔#スピードに応じて、毎秒 5～90の接触ダメージを与える", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-90 contact damage per second depending on speed"

	[C_ID .. 385] = "コインを拾い集める使い魔#6枚／12枚／24枚以上 集めるたびに進化する：#{{Blank}} LV2：部屋クリア時、時々 　　 アイテムを落とす LV3：コインを落とす涙で 　　 攻撃する LV4：敵を追いかけて攻撃 　　 時々爆弾を投げる 　　 コインをランダムな 　　 アイテムに変換する", -- Bumbo
	-- English: "{{Coin}} Picks up nearby coins#Levels up after getting 6, 12, and 24 coins#Lv2: Chance to spawn item after room clears#Lv3: Shoots tears that can spawn coins on hit#Lv4: Chases enemies, occasionally dropping bombs, can spawn item on coin pickup"

	[C_ID .. 386] = "障害物をリロールする", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)"

	[C_ID .. 387] = "敵と弾をスロー状態にする オーラを放つ使い魔", -- Censer
	-- English: "{{Slow}} Familiar surrounded by a huge aura of light that slows down enemies and projectiles in it"

	[C_ID .. 388] = "鍵を拾ってランダムな 宝箱に変換する使い魔", -- Key Bum
	-- English: "{{Key}} Picks up nearby keys#{{Chest}} Spawns random chests in return"

	[C_ID .. 389] = "5～6部屋クリアするたび ランダムなルーンを1個 スポーンする使い魔", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune every 5-6 rooms"

	[C_ID .. 390] = "10ダメージのホーミング効果 付き涙で攻撃する使い魔", -- Seraphim
	-- Full old Desc: "10ダメージのホーミング効果 付き涙で攻撃する使い魔"
	-- English: "Shoots Sacred Heart tears"

	[C_ID .. 391] = "ダメージを受けるたび 部屋の全ての敵を チャーム状態にする", -- Betrayal
	-- English: "{{Charm}} Taking damage charms all enemies in the room"

	[C_ID .. 392] = "毎フロア、ランダムな 星座アイテムの効果を 一つ付与する", -- Zodiac
	-- English: "Grants a random zodiac item effect every floor"

	[C_ID .. 393] = "15%の確率で涙に毒効果が 付与される#接触した敵に毒を与える#毒を受けた敵が死んだ時、 20%の確率で黒ハートを 落とす", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Poisoned enemies have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "↑ 射程　　 +3.15", -- Marked
	-- Full old Desc: "照準方向へ涙が自動で 流れ続けるようになる#照準は攻撃ボタンで操作#↑ 連射速度 +0.7#↑ 射程　　 +3.15#↑ 涙の高さ +0.3"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground"

	[C_ID .. 395] = "涙がチャージ式のレーザー リングに置き換わる#チャージ量に応じて リングのサイズが拡大", -- Tech X
	-- English: "{{Chargeable}} Isaac's tears are replaced by a chargeable laser ring#Ring size increases with charge amount"

	[C_ID .. 396] = "青色／オレンジ色の ポータルを足元に生成し、 双方をテレポートできる", -- Ventricle Razor
	-- English: "Creates up to two portals to travel between#Can be placed in different rooms"

	[C_ID .. 397] = "↑ 涙の高さ +0.5", -- Tractor Beam
	-- Full old Desc: "アイザックの頭から放射 されるビームに沿って 涙が直進するようになる#↑ 連射速度 +0.5#↑ 射程　　 +5.25#↑ 弾速　　 +0.16#↑ 涙の高さ +0.5"
	-- English: "Isaac's tears always travel along a beam of light in front of him"

	[C_ID .. 398] = "10%の確率で涙に収縮化 効果が付与される#収縮した敵は踏み潰して 倒せる", -- God's Flesh
	-- English: "{{Shrink}} Tears can shrink enemies#Shrunken enemies can be crushed and killed by walking over them"

	[C_ID .. 400] = "アイザックの正面に 槍が現れる#槍は敵に攻撃力ｘ2の ダメージを与え、時々 恐怖状態にする", -- Spear of Destiny
	-- English: "Isaac holds a spear in front of him#{{Fear}} The spear deals twice his damage and can fear enemies on contact"

	[C_ID .. 401] = "25%の確率で涙が敵に くっ付き、数秒後に爆発#爆発は攻撃力+60の ダメージを与える#くっ付いた涙は敵に ダメージを与えない", -- Explosivo
	-- English: "25% chance to shoot sticky bomb tears#Sticky bomb tears do not deal damage on hit and explode after a few seconds"

	[C_ID .. 402] = "アイテムがランダムな アイテムプールから スポーンするようになる", -- Chaos
	-- Full old Desc: "アイテムがランダムな アイテムプールから スポーンするようになる#取得時、ランダムな ピックアップを1～6個 スポーンする"
	-- English: "All items are chosen from random item pools"

	[C_ID .. 403] = "ダメージ量の数値と敵の 体力バーを表示する#機械のクモが部屋を歩き 回り、接触した敵に状態 異常を与える#部屋クリア時、青クモや 電池を時々スポーンする", -- Spider Mod
	-- English: "Displays tear damage and health bars of all enemies#Inflicts random status effects to enemies on contact#Randomly spawns batteries"

	[C_ID .. 404] = "ブロックすると10%の 確率でおならを出し、 毒・ノックバック・ チャームのいずれかの 効果を敵に与える", -- Farting Baby
	-- Full old Desc: "敵の弾をブロックする 使い魔　　#ブロックすると10%の 確率でおならを出し、 毒・ノックバック・ チャームのいずれかの 効果を敵に与える"
	-- English: "When hit, 10% chance to fart and {{Charm}} charm, {{Poison}} poison or knockback enemies"

	[C_ID .. 405] = "部屋を飛び回る使い魔", -- GB Bug
	-- Full old Desc: "部屋を飛び回る使い魔#接触した敵に毎秒120の ダメージとランダムな 状態異常を与える#バトル中、ルート上の ピックアップ等を稀に リロールする"
	-- English: "Bounces around the room#Applies random status effects to enemies on contact"

	[C_ID .. 406] = "攻撃力・連射速度・射程・ 移動速度のステータスを リロールする", -- D8
	-- English: "Multiplies Isaac's damage, tears, range and speed stats by between x0.5 and x2#The multipliers are rerolled each use"

	[C_ID .. 407] = "ステータスを強化する オーラを付与#オーラの色と強化対象： {{ColorRed}}赤{{CR}}：攻撃力　 +4 {{ColorBlue}}青{{CR}}：連射速度 +2 {{ColorYellow}}黄{{CR}}：移動速度 +0.5 {{ColorOrange}}橙{{CR}}：射程　　 +7.5#ダメージを受けると オーラは消えるが、 部屋を移動すると ランダムな色で復活する", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and gives Isaac a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} -4 Tear delay#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +7.5 Range, ↑ +1 Tear height"

	[C_ID .. 408] = "ダメージを受けると ブリムストーンリングを 放出し、敵にダメージを 与える#この効果で敵を倒すと、 15%の確率で黒ハートを スポーンする", -- Athame
	-- English: "Taking damage creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds#{{BlackHeart}} Enemies killed by the ring have a 15% chance to drop a Black Heart"

	[C_ID .. 409] = "赤ハートが無い時：#飛行能力を付与#バトル中、40秒おきに シールドを展開し、 ダメージを無効化する", -- Empty Vessel
	-- Full old Desc: "黒ハート +2#赤ハートが無い時：#飛行能力を付与#バトル中、40秒おきに シールドを展開し、 ダメージを無効化する"
	-- English: "{{EmptyHeart}} When Isaac has no Red Hearts:#Flight#Every 40 seconds while in a hostile room, gain a shield for 10 seconds"

	[C_ID .. 411] = "↑ 敵を倒すたび　　　　　　 攻撃力 +0.5（最大 +5）#その部屋でのみ有効", -- Lusty Blood
	-- English: "↑ {{Damage}} +0.5 Damage for each enemy killed in the room#Caps at +5 Damage after 10 kills"

	[C_ID .. 412] = "一定回数のダメージを 受けると、悪魔タイプの 使い魔が永続付与される#最大4体まで付与され、 1／2体目は15回、 3／4体目は30回の ダメージを要する", -- Cambion Conception
	-- English: "Taking damage 15 times spawns a permanent demon familiar#After two familiars, it takes 30 instead of 15#Caps at 4 familiars"

	[C_ID .. 413] = "ハートを15個拾うと、天使 タイプの使い魔が永続付与 され、同時に、青ハートが 1個スポーンする#使い魔は最大5体まで付与#使い魔が上限に達しても、 青ハートはスポーンする", -- Immaculate Conception
	-- English: "Picking up 15 hearts spawns a permanent angelic familiar#Caps at 5 familiars#{{SoulHeart}} If all familiars have been granted, spawns a Soul Heart instead"

	[C_ID .. 414] = "トレジャールームの アイテムを2つの候補 から選択できる", -- More Options
	-- English: "{{TreasureRoom}} Allows Isaac to choose between 2 items in treasure rooms"

	[C_ID .. 415] = "空の赤ハートが無い時：#{VAR:EFFECTLIST}", -- Crown Of Light
	-- Full old Desc: "青ハート +2#空の赤ハートが無い時：#↑ 攻撃力 +100%#↑ 射程　 +5.25#↓ 弾速　 -0.3 王冠が青く輝き、涙が ダイヤに置き換わる#ダメージを受けると、 その部屋では効果が 無効になる"
	-- English: "If Isaac has no damaged heart containers:#{VAR:EFFECTLIST}#Taking any damage removes the effect for the room"

	[C_ID .. 416] = "カード・ルーン・ピルを 2つまで保持可能になる", -- Deep Pockets
	-- English: "Allows Isaac to carry two runes/cards/pills"

	[C_ID .. 417] = "オーラを放ちながら 部屋を飛び回る使い魔#オーラ内では攻撃力が 50%アップする#オーラは範囲内の敵に 攻撃力ｘ1.29ダメージ を毎秒与える", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 1.29x Isaac's damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 418] = "涙にランダムな 特殊効果を付与", -- Fruit Cake
	-- English: "Each one of Isaac's tears gets a different effect"

	[C_ID .. 419] = "未探索のランダムな 部屋にテレポートする", -- Teleport 2.0
	-- Full old Desc: "未探索のランダムな 部屋にテレポートする#優先順位: {{Room}}>{{BossRoom}}>{{SuperSecretRoom}}>{{Shop}}>{{TreasureRoom}}>{{SacrificeRoom}}> {{DiceRoom}}>{{Library}}>{{CursedRoom}}>{{MiniBoss}}>{{ChallengeRoom}}{{BossRushRoom}}>{{IsaacsRoom}}{{BarrenRoom}}> {{ArcadeRoom}}>{{ChestRoom}}>{{SecretRoom}}>{{DevilRoom}}{{AngelRoom}}>{{ErrorRoom}}"
	-- English: "Teleports Isaac to a room that has not been cleared yet#Hierarchy: {VAR:TEXT}"

	[C_ID .. 420] = "円を描くように歩くと 床に五芒星のシンボルが 浮かび上がり、範囲内の 敵に毎秒25のダメージを 与える", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds"

	[C_ID .. 421] = "おならで近くの敵に 5ダメージを与え、 チャーム状態にする", -- Kidney Bean
	-- English: "{{Charm}} Charms and deals 5 damage to all enemies in close range"

	[C_ID .. 422] = "時間を巻き戻し、一つ 前の部屋に、一つ前の 部屋の状態で戻る", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in"

	[C_ID .. 423] = "光輪がアイザックを囲み、 範囲内の敵に攻撃力と 等しいダメージを毎秒 与える#光輪は敵の弾を30%の 確率で跳ね返す#跳ね返された涙は アイザックの攻撃力と ホーミング効果を持つ", -- Circle of Protection
	-- English: "Surrounds Isaac with a large halo that deals his damage on contact per second#Chance to reflect enemy projectiles"

	[C_ID .. 424] = "ピックアップが一定確率で サックに置き換わる#コイン：10%#その他：20%#取得時にサックを1袋 スポーンする", -- Sack Head
	-- English: "Pickups have a chance to be replaced with a {{GrabBag}}sack:#{{Coin}}: 10%, {{Bomb}}{{Key}}{{Pill}}{{Rune}}{{Battery}}: 20%#{{GrabBag}} Spawns a sack"

	[C_ID .. 425] = "アイザックの正面が ライトで照らされ、 範囲内の敵と弾を スロー状態にする#フロアに闇の呪いが かかっている場合、 それを取り除く", -- Night Light
	-- English: "{{Slow}} Spawns a slowing cone of light in front of Isaac"

	[C_ID .. 427] = "移動可能なTNTを設置する", -- Mine Crafter
	-- English: "Spawns a pushable TNT barrel#Using the item a second time in the same room remotely detonates the barrel"

	[C_ID .. 429] = "涙が敵に当たると、5%の 確率でコインがスポーン", -- Head of the Keeper
	-- English: "{{Coin}} Hitting an enemy with a tear has a 5% chance to spawn a Penny"

	[C_ID .. 430] = "アイザックと同じ攻撃力の 涙を発射する", -- Papa Fly
	-- Full old Desc: "1秒遅れでアイザックを 追従する使い魔#アイザックと同じ攻撃力の 涙を発射する"
	-- English: "{{Damage}} Shoots tears at nearby enemies that deal Isaac's damage"

	[C_ID .. 431] = "アイザックと使い魔の 涙がこれを通過すると、 弾速・高さがアップし、 ダブルショット化する", -- Multidimensional Baby
	-- Full old Desc: "2秒遅れでアイザックを 追従する使い魔#アイザックと使い魔の 涙がこれを通過すると、 弾速・高さがアップし、 ダブルショット化する"
	-- English: "Tears that pass through it are doubled and gain a range + shot speed boost"

	[C_ID .. 432] = "爆発した爆弾が、25%の 確率でピックアップや トリンケットをスポーン", -- Glitter Bombs
	-- Full old Desc: "爆弾 +5#爆発した爆弾が、25%の 確率でピックアップや トリンケットをスポーン#爆発した爆弾が、15%の 確率で敵にチャームを 付与する"
	-- English: "{{Charm}} Isaac's bombs have a 25% chance to drop a random pickup and a 15% chance to charm enemies when they explode"

	[C_ID .. 433] = "ダメージを受けるたび 全ての敵を恐怖状態にし、 友好的なチャージャーを スポーンする", -- My Shadow
	-- Full old Desc: "ダメージを受けるたび 全ての敵を恐怖状態にし、 友好的なチャージャーを スポーンする#チャージャーは毎秒10の 接触ダメージを与える"
	-- English: "{{Fear}} Taking damage fears all enemies in the room and spawns a friendly black charger"

	[C_ID .. 434] = "敵を倒すと、青ハエが ビンに追加される#最大20匹まで追加できる#アイテムを使用すると 青ハエを放出する", -- Jar of Flies
	-- English: "Killing an enemy adds a blue fly to the jar, up to 20 flies#Using the item releases all the flies"

	[C_ID .. 435] = "3.5 ダメージの涙を十字 方向に発射する使い魔", -- Lil Loki
	-- Full old Desc: "3.5 ダメージの涙を十字 方向に発射する使い魔"
	-- English: "Shoots 4 tears in a cross pattern"

	[C_ID .. 436] = "ダメージを受けると 連射速度がアップする#その部屋でのみ有効", -- Milk!
	-- English: "{{Tears}} Taking damage grants a Tears up for the duration of the room"

	[C_ID .. 437] = "その部屋で倒した敵を リスポーンする#クリア報酬のスポーン、 アクティブアイテムの チャージも再度有効化#!!! グリードが現れたお店・ 隠し部屋で使用すると、 通常のお店・隠し部屋 として復活する", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room#If used after a Greed fight, rerolls the room into a normal Shop/Secret Room"

	[C_ID .. 440] = "↓ 射程　　 -17", -- Kidney Stone
	-- Full old Desc: "涙が時々詰まり、その 状態でチャージすると 顔がうっ血していく#フルチャージ状態で解放 すると結石が射出され、 連射速度が一時的に大幅 アップする#↓ 移動速度 -0.2#↓ 射程　　 -17#↑ 涙の高さ +2"
	-- English: "Isaac occasionally stops firing and charges an attack that releases a burst of tears and a kidney stone"

	[C_ID .. 441] = "メガサタンビームを 15秒間発射する#ビームは部屋やフロアを またいで持続する", -- Mega Blast
	-- English: "{{Timer}} Fires a huge Mega Satan blood beam for 15 seconds#The beam persists between rooms and floors"

	[C_ID .. 442] = "残りの赤ハートが ちょうど1個の時：#{VAR:EFFECTLIST}", -- Dark Prince's Crown
	-- Full old Desc: "残りの赤ハートが ちょうど1個の時：#↑ 連射速度 +0.75#↑ 射程　　 +1.5#↑ 弾速　　 +0.2#有効時、王冠が赤く輝く"
	-- English: "While at 1 full Red Heart:#{VAR:EFFECTLIST}"

	[C_ID .. 444] = "15回に1回、涙の弾幕が 発射されるようになる#弾幕の涙は2倍の ダメージを与える", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears#Tears in the cluster deal double damage"

	[C_ID .. 445] = "クロールスペースを 含む部屋に入ると、 犬の鳴き声が聞こえる", -- Dog Tooth
	-- Full old Desc: "↑ 攻撃力　 +0.3#↑ 移動速度 +0.1#隠し部屋に隣接した 部屋に入ると、犬の 遠吠えが聞こえる#クロールスペースを 含む部屋に入ると、 犬の鳴き声が聞こえる"
	-- English: "{{SecretRoom}}{{SuperSecretRoom}} A wolf howls in rooms adjacent to a Secret/Super Secret Room#{{LadderRoom}} A dog barks in rooms with a crawlspace under a rock"

	[C_ID .. 446] = "攻撃中、アイザックが 毒のオーラを放ち、 触れた敵に毒を与える", -- Dead Tooth
	-- English: "{{Poison}} While firing, Isaac is surrounded by a green aura that poisons enemies"

	[C_ID .. 447] = "7.5秒間攻撃を続けると、 おならの雲が発生し、 触れた敵に攻撃力ｘ5の ダメージを毎秒与える#雲は15秒間持続する#雲を涙で撃つと動かせる", -- Linger Bean
	-- English: "Firing without pause for 7.5 seconds spawns a poop cloud#The cloud deals Isaac's damage 5 times a second#The cloud lasts 15 seconds and can be moved by shooting it"

	[C_ID .. 448] = "ダメージを受けた時、 25%の確率で赤ハートを 1個スポーンし、 10%の確率で{{Collectible214}}貧血を 一時付与する", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{Collectible214}} 10% chance to get ↑ {{Range}} +5 Range and leave a trail of blood creep for the room"

	[C_ID .. 449] = "敵の弾を25%の確率で 跳ね返す", -- Metal Plate
	-- Full old Desc: "青ハート +1#敵の弾を25%の確率で 跳ね返す#跳ね返された涙は アイザックの涙を コピーし、混乱と ホーミング効果を持つ"
	-- English: "{{Confusion}} Enemy bullets have a 25% chance to be reflected as concussive tears"

	[C_ID .. 450] = "20回に1回、涙と一緒に 金の涙が発射され、 コインを1枚消費する#金の涙は敵を黄金化し、 追加のダメージを与える#黄金化状態の敵を倒すと 1～4枚のコインが落ちる#コイン未所持の状態でも 金の涙は発射される", -- Eye of Greed
	-- English: "Every 20 tears, Isaac shoots a coin tear that deals double damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-4 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "取得時、ランダムな カード・ルーンを1個 スポーンする", -- Tarot Cloth
	-- Full old Desc: "カード・ルーンに 追加の効果を付与する#取得時、ランダムな カード・ルーンを1個 スポーンする"
	-- English: "{{Card}} Card effects are doubled or enhanced"

	[C_ID .. 452] = "ダメージを受けると、 円形に10発の涙が発射 され、{{Collectible214}}貧血の効果が 一時的に付与される#10発の涙は25の追加 ダメージを持つ", -- Varicose Veins
	-- English: "Taking damage shoots 10 tears in a circle around Isaac#The tears deal Isaac's damage + 25"

	[C_ID .. 453] = "涙が骨に置き換わり、 衝突すると破片が散る", -- Compound Fracture
	-- Full old Desc: "↑ 射程　　 +1.5#↑ 涙の高さ +1#涙が骨に置き換わり、 衝突すると破片が散る#破片はダメージが半減する"
	-- English: "Tears shatter into 1-3 small bone shards upon hitting anything"

	[C_ID .. 454] = "カード・ルーン・ピルを 2つまで保持可能になる#取得時、ランダムな カード・ルーン・ピルを 1つスポーンする", -- Polydactyly
	-- English: "Spawns a {{Rune}} rune, {{Card}} card or {{Pill}} pill on pickup#Allows Isaac to carry 2 runes/cards/pills"

	[C_ID .. 455] = "取得時、ラッキーペニーを 1枚スポーン", -- Dad's Lost Coin
	-- Full old Desc: "↑ 射程　　 +1.5#↑ 涙の高さ +1#取得時、ラッキーペニーを 1枚スポーン"
	-- English: "{{Luck}} Spawns a Lucky Penny"

	[C_ID .. 457] = "20%の確率でダメージを 無効化する", -- Cone Head
	-- Full old Desc: "青ハート +1#20%の確率でダメージを 無効化する"
	-- English: "20% chance to negate damage taken"

	[C_ID .. 458] = "トリンケットを2個まで 保持可能になる", -- Belly Button
	-- Full old Desc: "トリンケットを2個まで 保持可能になる#取得時、ランダムな トリンケットを1個 スポーンする"
	-- English: "{{Trinket}} Allows Isaac to carry 2 trinkets"

	[C_ID .. 459] = "攻撃中、20%の確率で 鼻くそが発射され、 敵に60秒間くっ付く", -- Sinus Infection
	-- Full old Desc: "攻撃中、20%の確率で 鼻くそが発射され、 敵に60秒間くっ付く#鼻くそは攻撃力と等しい ダメージを毎秒与える"
	-- English: "20% chance to shoot a sticky booger#{{Damage}} Boogers deal Isaac's damage once a second and stick for {VAR:1} seconds#{{Luck}} Not affected by luck"

	[C_ID .. 460] = "5%の確率で涙に 混乱効果を付与#ゲーム画面が暗くなる", -- Glaucoma
	-- English: "{{Confusion}} 5% chance to shoot concussive tears#Makes the screen slightly darker"

	[C_ID .. 461] = "確率：運0=15%、5=50%", -- Parasitoid
	-- Full old Desc: "一定確率で涙が卵に置き  換わり、敵に当たると、  1～2匹の青クモ／ハエが  スポーンする#卵の衝突地点に白い液体が 広がり、触れた敵をスロー 状態にする#確率：運0=15%、5=50%"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot egg sacks#{{Slow}} Egg sacks spawn slowing creep and a blue spider or fly on hit"

	[C_ID .. 462] = "敵を貫通した後の涙は ダメージが2倍になり、 サイズが1.3倍広がり、 ホーミング効果が付与 される", -- Eye of Belial
	-- Full old Desc: "↑ 射程　　 +1.5#↑ 涙の高さ +1#涙に貫通効果を付与#敵を貫通した後の涙は ダメージが2倍になり、 サイズが1.3倍広がり、 ホーミング効果が付与 される"
	-- English: "Hitting an enemy makes the tear homing and doubles its damage"

	[C_ID .. 463] = "25%の確率で酸の涙を 発射し、障害物や壁、 ドアを破壊する", -- Sulfuric Acid
	-- Full old Desc: "↑ 攻撃力 +0.3#25%の確率で酸の涙を 発射し、障害物や壁、 ドアを破壊する"
	-- English: "Isaac's tears can destroy rocks and open doors"

	[C_ID .. 464] = "チャンピオンタイプの 敵を倒した時の報酬が、 現在不足している物を 優先してスポーンする ように変更される", -- Glyph of Balance
	-- Full old Desc: "青ハート +2#チャンピオンタイプの 敵を倒した時の報酬が、 現在不足している物を 優先してスポーンする ように変更される"
	-- English: "Champion enemies drop whatever pickup Isaac needs the most"

	[C_ID .. 465] = "涙を斜めに発射できる", -- Analog Stick
	-- Full old Desc: "↑ 連射速度 +0.3#涙を斜めに発射できる"
	-- English: "Allows Isaac to shoot tears in any direction"

	[C_ID .. 466] = "部屋で最初に倒された 敵が毒ガスを放出し、 近くの敵に毒を与える#この毒効果で倒された 敵も毒ガスを放出し、 効果が連鎖する", -- Contagion
	-- English: "{{Poison}} The first enemy killed in a room explodes and poisons all nearby enemies#Enemies that die while poisoned also explode and poison nearby enemies"

	[C_ID .. 467] = "アイザックの攻撃方向に 指が現れ、直線上の敵に 攻撃力x0.1のダメージを 毎秒10回与える", -- Finger!
	-- English: "{{Damage}} Constantly deals 10% of Isaac's damage in the direction it points"

	[C_ID .. 469] = "敵にダメージを与える 液体を床に流しながら アイザックを追従する 使い魔#液体は毎秒6ダメージを 与える　#雲に敵が触れた時、低い 確率で{{Collectible374}}聖なる光による 光線攻撃が発生する", -- Depression
	-- English: "Leaves a trail of creep#The creep deals 6 damage per second#Enemies that touch the cloud can be hit by a holy light beam"

	[C_ID .. 470] = "部屋を飛び回る使い魔#攻撃ボタン押下中は 移動を停止する", -- Hushy
	-- Full old Desc: "部屋を飛び回る使い魔#接触した敵に毎秒30の ダメージを与える#攻撃ボタン押下中は 移動を停止する"
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped"

	[C_ID .. 471] = "涙は一発3.5ダメージ", -- Lil Monstro
	-- Full old Desc: "チャージ式の弾幕涙で 攻撃する使い魔#涙は一発3.5ダメージ"
	-- English: "{{Chargeable}} Charges a shotgun attack similar to {{NameC229}}#Each tear deals 3.5 damage"

	[C_ID .. 472] = "使い魔の先頭に固定 され、他の使い魔を 従える使い魔#攻撃ボタン押下中、 他の使い魔と共に その場で停止し、 離すと戻ってくる", -- King Baby
	-- English: "Other familiars follow it#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 473] = "涙の発射方向に連動して ゆっくり突進する使い魔", -- Big Chubby
	-- Full old Desc: "涙の発射方向に連動して ゆっくり突進する使い魔#毎秒40.5の接触ダメージ#突進中、敵の弾をブロック"
	-- English: "Very slowly charges forwards"

	[C_ID .. 476] = "ピックアップをランダムに 1個複製する", -- D1
	-- English: "Duplicates a random pickup in the room"

	[C_ID .. 477] = "!!! 部屋の全てのアイテムを 破壊して吸収する#アクティブアイテムを 吸収すると、ボイド 使用時にその効果を 同時発動する#パッシブアイテムを吸収 すると、ステータスが ランダムに2つアップ", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate, and will activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 478] = "攻撃ボタンが押される まで、全ての敵を停止する#ボスは30秒経過すると 行動を再開する", -- Pause
	-- English: "Pauses all enemies in the room until Isaac shoots#Touching a paused enemy still deals damage to Isaac#Enemies unpause after 30 seconds"

	[C_ID .. 479] = "保持中のトリンケットを 吸収し、効果を永続化する#保持中、トリンケットの 出現率がアップ", -- Smelter
	-- English: "{{Trinket}} Consumes Isaac's held trinkets and grants their effects permanently#Increases the spawn rate of trinkets"

	[C_ID .. 480] = "部屋内のピックアップを 青ハエ／クモに変換する#保有する青ハエ／クモの 量を倍にする#保有する青ハエ／クモが 無い場合、どちらかを 1匹スポーン", -- Compost
	-- English: "Converts pickups into blue flies or spiders#Doubles all blue flies and spiders#Spawns 1 blue fly or spider if Isaac has none"

	[C_ID .. 482] = "ランダムなプレイヤー キャラクターに変化し、 最後に取得した アイテムを削除する", -- Clicker
	-- English: "Changes your character to a random character#Removes the most recent item collected"

	[C_ID .. 483] = "部屋の全ての障害物を 破壊し、全ての敵に 200ダメージを与える#効果はフロア全体で発動#{VAR:EFFECTLIST}#!!! 金爆弾を所持している時、 ママメガ！の代わりに それを消費して効果を 発動できる", -- Mama Mega!
	-- Full old Desc: "部屋の全ての障害物を 破壊し、全ての敵に 200ダメージを与える#効果はフロア全体で発動#ボスラッシュ・ハッシュ・ 隠し部屋の入り口も破壊#!!! 金爆弾を所持している時、 ママメガ！の代わりに それを消費して効果を 発動できる"
	-- English: "Affects the whole floor#Explodes all objects#{VAR:EFFECTLIST}#Opens secret rooms#Opens Boss Rush and Hush regardless of time"

	[C_ID .. 484] = "敵と弾をノックバックし、 周囲に地割れを起こす#地割れは障害物やドア、 隠し部屋の壁を破壊する", -- Wait What?
	-- English: "Upon use, pushes enemies away and spawns a rock wave around Isaac#The rock wave can open rooms and break rocks"

	[C_ID .. 485] = "部屋の全てのアイテム・ ピックアップ・宝箱を、 50/50の確率で2倍か、 消滅かさせる#消滅した場合コインを 1枚スポーンする", -- Crooked Penny
	-- English: "50% chance to double all items, pickups and chests in room#50% chance to remove items / pickups in room and spawn 1 coin"

	[C_ID .. 486] = "体力を奪うことなく アイザックを傷つけ、 ダメージをトリガーに するアイテムの効果を 有効化する", -- Dull Razor
	-- English: "Hurts Isaac without removing health#Triggers any on-hit item effects"

	[C_ID .. 488] = "ランダムなアイテム効果を その部屋に居る間付与", -- Metronome
	-- English: "Grants a random item effect for the room"

	[C_ID .. 489] = "使用するたびランダムな ダイス系アイテムに変化 する　　", -- D Infinity
	-- English: "Triggers a random dice effect each use"

	[C_ID .. 490] = "現在の部屋のアイテム プールから、2つの ランダムなアイテムを スポーンする#初期チャージ量が空の ため、要チャージ", -- Eden's Soul
	-- English: "Spawns 2 random items depending on the current room's item pool#Starts with no charges"

	[C_ID .. 491] = "ピル使用時、部屋の 全ての敵に毒を与える", -- Acid Baby
	-- Full old Desc: "3部屋クリアごとに ランダムなピルを1個 スポーンする使い魔#ピル使用時、部屋の 全ての敵に毒を与える"
	-- English: "{{Pill}} Spawns a random pill every {VAR:1} rooms#{{Poison}} Using a pill poisons all enemies in the room"

	[C_ID .. 492] = "隠し部屋の入り口、ｘ岩、 クロールスペースの位置 を教えてくれる使い魔", -- YO LISTEN!
	-- Full old Desc: "↑ 運 +1#隠し部屋の入り口、ｘ岩、 クロールスペースの位置 を教えてくれる使い魔"
	-- English: "Highlights the location of {{SecretRoom}} secret rooms, tinted rocks and {{LadderRoom}} crawlspaces"

	[C_ID .. 493] = "↑ 空の赤ハート1個につき 攻撃力 +0.2#{VAR:EFFECTLIST}", -- Adrenaline
	-- Full old Desc: "↑ 空の赤ハート1個につき 攻撃力 +0.2"
	-- English: "For every empty heart container:#{VAR:EFFECTLIST}"

	[C_ID .. 494] = "涙が衝突した時、火花 放電が1～2回発生する#火花は攻撃力ｘ0.5の ダメージを与える", -- Jacob's Ladder
	-- English: "Tears spawn 1-2 sparks of electricity on impact#Sparks deal half of Isaac's damage"

	[C_ID .. 495] = "攻撃中、一定確率で 赤い炎を放つ#炎は接触した敵に ダメージを与え、 弾をブロックする#接触／ブロックを 4回行うと消滅する", -- Ghost Pepper
	-- English: "Chance to shoot a red flame that blocks enemy shots and deals contact damage#The flame disappears after dealing damage or blocking shots 5 times"

	[C_ID .. 496] = "ボスには攻撃力ｘ3の ダメージを与える#確率：運0=3%、15=100%", -- Euthanasia
	-- Full old Desc: "一定確率で涙が注射針に 置き換わる#注射針は敵を即死させ、 円形に10発の涙を拡散する#ボスには攻撃力ｘ3の ダメージを与える#確率：運0=3%、15=100%"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a needle#Needles kill normal enemies instantly, bursting them into 10 tears#{{Damage}} Needles deal 3x Isaac's damage against bosses"

	[C_ID .. 497] = "部屋に入った時、攻撃 ボタンを押すまでの間 アイザックを透明化し、 全ての敵を混乱させる", -- Camo Undies
	-- English: "{{Confusion}} Entering a room confuses all enemies until Isaac starts shooting"

	[C_ID .. 498] = "悪魔部屋か天使部屋が 出現する時、もう一方の 部屋も同時に出現する#一方の部屋に入ると、もう 一方の部屋は消滅する", -- Duality
	-- English: "{{AngelDevilChance}} Spawns both a Devil and Angel Room if either would have spawned#Entering one makes the other disappear"

	[C_ID .. 501] = "所持コイン25枚ごとに 最大体力を1増やす#99枚で最大+4#キーパーにも適用可能", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins gained after getting Greed's Gullet"

	[C_ID .. 502] = "攻撃中、低確率で 皮脂の弾が発射される#ダメージを受けた時、 ランダムな方向に 皮脂の弾を発射する#皮脂は倍のダメージを与え、 敵をスロー状態にし、床に スロー効果の粘液を残す", -- Large Zit
	-- English: "{{Slow}} Firing occasionally shoots a white creep tear that deals double damage and slows enemies#Taking damage shoots a white creep tear"

	[C_ID .. 503] = "アイザックに、毎秒7の 接触ダメージ効果を付与", -- Little Horn
	-- Full old Desc: "一定確率で涙に貫通効果が 付与され、触れた敵を即死 させる#確率：運0=5%、15=20%#アイザックに、毎秒7の 接触ダメージ効果を付与"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot tears that instantly kill enemies#Isaac deals 3.5 contact damage"

	[C_ID .. 504] = "2ダメージの涙で近くの 敵を自動攻撃するハエを スポーンする", -- Brown Nugget
	-- English: "Spawns a fly turret that shoots at enemies#Each shot deals 2 damage"

	[C_ID .. 505] = "敵が居る部屋に入ると、 20%の確率でチャーム 状態の敵がスポーンする", -- Poke Go
	-- English: "{{Friendly}} Entering a hostile room has a chance to spawn a friendly enemy"

	[C_ID .. 506] = "涙が敵の背面に当たると ダメージが2倍になり、 出血状態が付与される#出血中の敵は5秒ごとに 最大体力の10%に相当 するダメージを受ける", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds"

	[C_ID .. 507] = "部屋の全ての敵に ダメージを与える#ダメージ量は攻撃力+ 敵の最大体力の10%分#この効果でダメージを 与えた時、15%の確率で 半赤ハートをスポーン#赤ハートの体力が無い 場合、半青ハートを スポーンする", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts#{{HalfSoulHeart}} Having no heart containers drops Soul Hearts instead"

	[C_ID .. 508] = "アイザックを周回する カミソリの使い魔#カミソリは接触した敵に 攻撃力ｘ3のダメージを 毎秒与え、出血状態にする#出血中の敵は5秒ごとに 最大体力の10%に相当 するダメージを受ける#ボスには無効#弾のブロックはしない", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which deals 10% damage of the enemy's max health every 5 seconds#{{Damage}} Deals 3x Isaac's damage per second#Does not block shots"

	[C_ID .. 509] = "アイザックを周回する 目玉の使い魔", -- Bloodshot Eye
	-- Full old Desc: "アイザックを周回する 目玉の使い魔#接触した敵に毎秒30の ダメージを与える#2秒に1回、3.5ダメージの 涙を発射する"
	-- English: "Orbital that shoots a tear in a random direction every 2 seconds#Does not block shots"

	[C_ID .. 510] = "友好的なデリリアムを 召喚する#その部屋でのみ有効", -- Delirious
	-- English: "{{Friendly}} Spawns a friendly delirium version of a boss for the room"

	[C_ID .. 511] = "ランダムな敵の周囲を 飛び回る使い魔", -- Angry Fly
	-- Full old Desc: "ランダムな敵の周囲を 飛び回る使い魔#接触した敵に毎秒30の ダメージを与える#周回対象の敵が死ぬと、 別の敵を周回し始める#対象の敵が居ない時、 アイザックを周回する"
	-- English: "Orbits a random enemy until that enemy dies"

	[C_ID .. 512] = "ブラックホールを生成し、 敵と弾、ピックアップを 6秒間吸引する#吸い込まれた敵に 毎秒6ダメージを与える#近くの障害物を破壊する", -- Black Hole
	-- English: "Throwable black hole, which sucks in everything#Deals 6 damage per second#Destroys nearby rocks#Lasts 6 seconds"

	[C_ID .. 513] = "敵をランダムに恐怖か チャーム状態にする#ダメージを受けた時、 5%の確率で虹色うんちを スポーンする", -- Bozo
	-- Full old Desc: "↑ 攻撃力 +0.1#青ハート +1#敵をランダムに恐怖か チャーム状態にする#ダメージを受けた時、 5%の確率で虹色うんちを スポーンする"
	-- English: "{{Charm}} Randomly charms/fears enemies#Taking damage has a random chance to spawn a Rainbow Poop"

	[C_ID .. 514] = "敵と弾がランダムな 間隔で遅延を起こす#25%の確率で部屋の クリア報酬が2倍になる", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#25% chance to double room clear drops"

	[C_ID .. 515] = "現在の部屋のアイテム プールから、ランダムな アイテムを1つスポーン#低確率で{{Collectible132}}炭の塊か {{Collectible36}}うんちがスポーンする", -- Mystery Gift
	-- English: "Spawns a random item from the current room's item pool#Chance to spawn Lump of Coal or The Poop instead"

	[C_ID .. 516] = "八方向に涙を発射する 回転式スプリンクラー#スプリンクラーは アイザックの涙を コピーして発射する", -- Sprinkler
	-- English: "Spawns a Sprinkler that shoots the same tears as Isaac in a circle around itself"

	[C_ID .. 517] = "爆弾を高速で連続設置 可能になる", -- Fast Bombs
	-- Full old Desc: "爆弾 +7#爆弾を高速で連続設置 可能になる"
	-- English: "Removes the delay between bomb placements"

	[C_ID .. 518] = "ランダムな特殊効果・ 攻撃力・連射速度の 涙で攻撃する使い魔#毎フロア、ランダムな 形態へ変化する", -- Buddy in a Box
	-- English: "Familiar which looks like a random co-op baby#Has random tear effects#Effects change every floor"

	[C_ID .. 519] = "10秒ごとにランダムな 使い魔に変身する使い魔", -- Lil Delirium
	-- English: "Transforms into a random familiar every 10 seconds"

	[C_ID .. 520] = "敵を15体倒すたびに アクティブアイテムを 1チャージする", -- Jumper Cables
	-- English: "Killing 15 enemies adds 1 charge to the active item"

	[C_ID .. 521] = "お店の商品・悪魔部屋の アイテムをランダムに 一つ無料にする#保持中、お店の商品が ランダムに一つ半額化", -- Coupon
	-- English: "Makes one random item in the {{Shop}} Shop or {{DevilRoom}} Devil Room free#Holding the item guarantees one Shop item is on sale"

	[C_ID .. 522] = "使用後3秒間、敵の弾が アイザックの周囲で一時 停止し、固定される#3秒経過すると弾が跳ね 返され、3.5ダメージを 与える", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards"

	[C_ID .. 523] = "部屋の全てのアイテムと ピックアップを保存して 運べる#保存した状態で再使用 すると、中身をその場で 展開する", -- Moving Box
	-- English: "Stores all pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "涙同士が電気ビームで つながり、触れた敵に ダメージを与える#電気ビームは攻撃力と 等しいダメージを与える", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#The beams deal Isaac's damage"

	[C_ID .. 525] = "ダメージを受けると 肉片がスポーンし、 アイザックを周回する#肉片は接触した敵に 毎秒35のダメージを与え、 弾をブロックする#肉片は一定量の接触・ ブロックで破壊される#最大3つまでスポーン", -- Leprosy
	-- English: "Taking damage spawns a projectile blocking orbital#Caps at 3 orbitals#They deal 35 contact damage per second#Orbitals are destroyed if they take too much damage"

	[C_ID .. 526] = "10秒ごとにランダムな ハービンガーに変化する 使い魔#敵に接触ダメージを与え、 イナゴをスポーンする", -- 7 Seals
	-- English: "Spawns a small horseman familiar that spawns locusts#The horseman and its locust changes every 10 seconds"

	[C_ID .. 527] = "!!! 照準を合わせた対象に 応じて効果が変化する#アイテムなど：拾って アイザックの元へ運ぶ#お店・悪魔部屋：50%の 確率でアイテムを盗む#宝箱・ドア：鍵や爆弾を 消費せずに開く#敵：追いかけ攻撃する#破壊可能なもの：爆破", -- Mr. ME!
	-- English: "Displays a movable cursor for a few seconds, then summons a ghost that will, depending on the cursor position:#Open doors or chests#Fetch an item#50% chance to steal from the Shop / Devil#Attack an enemy until it dies#Explode walls, rocks, shopkeepers, angel statues, machines, beggars"

	[C_ID .. 528] = "プリズムがアイザックを 周回し、涙がそれを通過 すると、四色の涙に分裂 して発射される#使い魔の涙にも有効", -- Angelic Prism
	-- English: "Orbital prism#Friendly tears hitting it split into 4"

	[C_ID .. 529] = "涙を目玉に置き変える#目玉はビリヤード玉の ように互いを弾き合う", -- Pop!
	-- English: "Isaac's tears bounce off each other and disappear when they stop moving"

	[C_ID .. 530] = "敵を指定の順番で倒すと、 ランダムな報酬を得る#順番は{{BossRoom}}で示される#報酬のリスト：#青ハート・ピル・ 鍵・爆弾・ニッケル いずれかをスポーン#移動速度・連射速度・ 攻撃力・射程・弾速・ 運いずれかがアップ", -- Death's List
	-- English: "Killing enemies in the order dictated by the mark {{DeathMark}} above them grants a random pickup or stat increase"

	[C_ID .. 532] = "涙が徐々に減速しながら 飛ぶようになり、停止か 衝突すると破裂して涙を 拡散する#涙が他の涙を吸収し、 サイズとダメージを 増加させるようになる#涙が5つ吸収されると、 即座に破裂する", -- Lachryphagy
	-- English: "Isaac's tears progressively slow down, stop, then explode into 8 smaller tears#Tears can merge and become bigger"

	[C_ID .. 533] = "涙が貫通効果を持つ 短い光線に置き換わる#光線は攻撃力ｘ0.33の ダメージを複数回与える", -- Trisagion
	-- English: "Replaces Isaac's tears with piercing beams of light#The beams deal 33% damage but can hit enemies multiple times"

	[C_ID .. 534] = "アクティブアイテムを 2つ保持可能になる#ドロップボタンで切替え", -- Schoolbag
	-- English: "Allows Isaac to hold 2 active items#The items can be swapped using the Drop button ({{ButtonRT}})"

	[C_ID .. 535] = "ボス部屋に入った時、 一度だけダメージを 無効化するシールドを付与", -- Blanket
	-- Full old Desc: "青ハート +1#体力を1回復#ボス部屋に入った時、 一度だけダメージを 無効化するシールドを付与"
	-- English: "{{HolyMantle}} Entering a boss room grants a Holy Mantle shield (prevents damage once)"

	[C_ID .. 536] = "使い魔をランダムに最大 2体生贄に捧げ、等しい 数の悪魔部屋アイテムを スポーンする#所有する青ハエ／クモが コインに変換される", -- Sacrificial Altar
	-- English: "Sacrifices up to 2 familiars and spawns a devil item for each sacrifice#{{Coin}} Turns blue spiders/flies into coins"

	[C_ID .. 537] = "アイザックの攻撃に連動 してチャージを溜め、 解放時に有害な液体を 床に吐き出す使い魔#ピルを使用するたびに 液体の効果がランダムに 変化する#取得時、ランダムな ピルを1個スポーン", -- Lil Spewer
	-- English: "{{Pill}} Spawns a random pill on pickup#Fires a line of creep#The type of creep changes with each pill use"

	[C_ID .. 538] = "ダメージを受けた時、 10%の確率で保持中の トリンケットが吸収 され、効果が永続化する", -- Marbles
	-- Full old Desc: "取得時、ランダムな トリンケットを3つ スポーンする#ダメージを受けた時、 10%の確率で保持中の トリンケットが吸収 され、効果が永続化する"
	-- English: "{{Collectible479}} Taking damage has a 10% chance to consume Isaac's held trinket and grant its effects permanently"

	[C_ID .. 539] = "ダメージを受けると チャーム状態の敵が スポーンする#ノーダメージクリアした 部屋の数が多いほど、 強い敵がスポーンする", -- Mystery Egg
	-- English: "{{Friendly}} Taking damage spawns a friendly enemy#Spawns stronger friends the more rooms are cleared without taking damage"

	[C_ID .. 540] = "涙が床を跳ねながら 飛ぶようになる#涙が跳ねると飛沫が飛び、 攻撃力ｘ0.25のダメージを 与える", -- Flat Stone
	-- English: "Isaac's tears bounce off the floor and cause splash damage on every bounce"

	[C_ID .. 543] = "ダメージを受けると 白いうんちがスポーン#うんちオーラの範囲内 では連射速度が増加し、 50%の確率でダメージが 無効化される#{VAR:EFFECTLIST}", -- Hallowed Ground
	-- Full old Desc: "ダメージを受けると 白いうんちがスポーン#うんちオーラの範囲内 では連射速度が増加し、 50%の確率でダメージが 無効化される"
	-- English: "Taking damage spawns a white poop#While inside the poop's aura:#{VAR:EFFECTLIST}#{{IND}}Chance to block damage"

	[C_ID .. 544] = "アイザックの正面に 骨が現れ、接触した 敵にダメージを与える#骨は攻撃力と等しい ダメージを毎秒6回 与える　　　", -- Pointy Rib
	-- English: "Levitates in front of Isaac#Deals 6x Isaac's damage per second"

	[C_ID .. 545] = "その部屋で倒された敵 1体につき、友好的な 骨タイプの敵、または アイザックを周回する 骨を1つスポーンする", -- Book of the Dead
	-- English: "{{Friendly}} Spawns a bone orbital or friendly bony per enemy killed in the room (up to 8)"

	[C_ID .. 546] = "アイザックを小さな 光輪が囲み、触れた 敵を石化させる", -- Dad's Ring
	-- English: "{{Petrify}} Grants an aura that petrifies enemies"

	[C_ID .. 547] = "取得時、{{Trinket21}} 謎の紙を スポーンする", -- Divorce Papers
	-- Full old Desc: "↑ 連射速度 +0.7#骨ハート +1#取得時、{{Trinket21}} 謎の紙を スポーンする"
	-- English: "{{Trinket21}} Spawns the Mysterious Paper trinket"

	[C_ID .. 548] = "涙の発射方向に連動して 飛んでいく骨の使い魔#ピックアップを回収可能", -- Jaw Bone
	-- Full old Desc: "涙の発射方向に連動して 飛んでいく骨の使い魔#接触した敵に7ダメージを 与え、弾をブロックする#ピックアップを回収可能"
	-- English: "Boomerang-like familiar#Can grab and bring back pickups"

	[C_ID .. 549] = "↑ 連射速度 +0.5（永続）", -- Brittle Bones
	-- Full old Desc: "最大体力を0にし、6個の 骨ハートに置き換える#骨ハートを失うと：#8方向に骨が飛び散る#↑ 連射速度 +0.5（永続）"
	-- English: "{{EmptyBoneHeart}} Replaces all of Isaac's Red Heart containers with 6 empty Bone Hearts#Upon losing a Bone Heart:#{VAR:EFFECTLIST}#{{IND}}Shoots 8 bone tears in all directions"

	[C_ID .. 550] = "保持中、数秒おきに アイザックを狙った 踏み潰し攻撃が発生する#使用すると、その部屋に 居る間、踏み潰し攻撃が 停止する#!!! 取得後、これを手放した 状態で部屋を離れると、 これは消滅する#!!! (ボスラッシュに挑戦！)", -- Broken Shovel
	-- English: "Mom's Foot constantly tries to stomp Isaac#Using the item stops the stomping for the room (or one Boss Rush wave)#{{Warning}} (Try to beat Boss Rush with it!)"

	[C_ID .. 551] = "壊れたシャベルの先端部#組み合わせると ママのシャベルに", -- Broken Shovel
	-- English: "Completes Mom's Shovel#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 552] = "次のフロアにつながる トラップドアを生成#10%の確率でクロール スペースにつながる#!!! ある場所で使うと…？", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#10% chance for {{LadderRoom}} crawlspace trapdoor#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 1] = "ダメージを受けた時 コインを1枚スポーン", -- Swallowed Penny
	-- English: "{{Coin}} Taking damage spawns 1 coin"

	[T_ID .. 2] = "うんち破壊時、50%の 確率でピックアップが スポーン", -- Petrified Poop
	-- English: "50% chance to get drops from poop"

	[T_ID .. 3] = "アクティブアイテムの 必要チャージ量が1減る", -- AAA Battery
	-- English: "{{Battery}} -1 Charge needed for active items"

	[T_ID .. 4] = "アクティブアイテムを 使用した時、ランダム な部屋にテレポート", -- Broken Remote
	-- English: "{{Collectible44}} Using an active item teleports Isaac to a random room"

	[T_ID .. 5] = "チャンピオンタイプの敵・ ボスの出現率2倍", -- Purple Heart
	-- English: "2x chance for champion enemies"

	[T_ID .. 6] = "コインがアイザックに 引き寄せられる", -- Broken Magnet
	-- English: "{{Coin}} Attracts coins to Isaac"

	[T_ID .. 7] = "図書館とお店で{{Collectible33}}聖書の 出現率アップ", -- Rosary Bead
	-- Full old Desc: "↑ 天使部屋の出現率 +25%#図書館とお店で{{Collectible33}}聖書の 出現率アップ"
	-- English: "{{Collectible33}} Higher chance to find The Bible in {{Shop}} Shops and {{Library}} Libraries"

	[T_ID .. 8] = "{VAR:ITEMDESCRIPTION}", -- Cartridge
	-- Full old Desc: "ダメージを受けた時、一定 確率でゲームキッド効果が 発動（無敵・接触ダメージ）#確率：運0=5%、38=100%"
	-- English: "{{Timer}} {VAR:LUCKCHANCE}% chance upon taking damage:#{VAR:ITEMDESCRIPTION}"

	[T_ID .. 9] = "涙が拡縮しながら飛ぶ", -- Pulse Worm
	-- English: "Isaac's tears pulsate#Affects tear hitbox"

	[T_ID .. 10] = "↑ 連射速度 +0.4", -- Wiggle Worm
	-- Full old Desc: "涙が波打つように飛ぶ#↑ 連射速度 +0.4"
	-- English: "Isaac's tears move in waves"

	[T_ID .. 11] = "涙が渦巻き状に飛ぶ", -- Ring Worm
	-- English: "Isaac's tears move in spirals with high speed"

	[T_ID .. 12] = "涙の横幅が50%広がる#ノックバック強化", -- Flat Worm
	-- English: "50% wider tears#Increases knockback"

	[T_ID .. 13] = "お店のアイテムが一つ無料 になり、取得すると消滅", -- Store Credit
	-- English: "{{Shop}} Allows Isaac to take 1 Shop item for free"

	[T_ID .. 14] = "トゲや液体などの、足元 からのダメージを無効化", -- Callus
	-- English: "Immune to creep and floor spikes"

	[T_ID .. 15] = "岩や障害物を壊すと コインが1枚スポーン", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks spawns coins"

	[T_ID .. 17] = "青ハートが黒ハートとして スポーンする確率 +10%", -- Black Lipstick
	-- English: "{{BlackHeart}} +10% chance for random Soul Hearts to spawn as Black Hearts"

	[T_ID .. 18] = "白ハートの出現率 +3%", -- Bible Tract
	-- English: "{{EternalHeart}} +3% chance for Eternal Hearts"

	[T_ID .. 19] = "鍵を消費せずに鍵付きの 宝箱を解錠できる", -- Paper Clip
	-- English: "{{GoldenChest}} Gold chests can be opened for free"

	[T_ID .. 20] = "ダメージを受け、残りの 体力が半ハートになった 時、黒ハートを1個落とす#3回落とすと消滅", -- Monkey Paw
	-- English: "{{BlackHeart}} Spawns 1 Black Heart when Isaac's health is reduced to half a heart#{{Warning}} Disappears after spawning 3 Black Hearts"

	[T_ID .. 21] = "{{Collectible327}} ポラロイド#{VAR:TEXT}", -- Mysterious Paper
	-- Full old Desc: "{{Collectible327}} ポラロイド#{{Collectible328}} ネガティブ#{{Trinket23}} 尋ね人ポスター#{{Trinket48}} 失くしたページ いずれかの効果が ランダムに発動する"
	-- English: "Randomly grants the effect of:#{VAR:TEXT}"

	[T_ID .. 22] = "スポーンするハートの 80%が鍵に置き換わる#ハートは、可能な限り 黒ハートに置き換わる", -- Daemon's Tail
	-- English: "{{Heart}} Decreases spawn rate of hearts to 20%#{{BlackHeart}} All Heart pickups turn into Black Hearts#{{Key}} Increases the drop chance of keys"

	[T_ID .. 23] = "{{Player10}} 死亡時、その部屋で ザ・ロストとして復活", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death"

	[T_ID .. 24] = "コインを拾うとおならが 出て、敵をノックバック させる　　　#うんちからコインが スポーンする確率 +20%", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#Picking up coins makes Isaac fart"

	[T_ID .. 25] = "30秒おきにうんちか おならを出す", -- Mysterious Candy
	-- English: "Isaac farts or spawns poop every 30 seconds"

	[T_ID .. 26] = "↑ 射程 +10", -- Hook Worm
	-- Full old Desc: "涙が矩形波のように飛ぶ#↑ 射程 +10"
	-- English: "Isaac's tears move in angular patterns"

	[T_ID .. 28] = "死ぬと、22.22%の確率で 一つ前の部屋に？？？と して復活する", -- Broken Ankh
	-- English: "{{Player4}} 22% chance to respawn as ??? (Blue Baby) on death"

	[T_ID .. 29] = "ダメージを受けるたび 青ハエがスポーンする", -- Fish Head
	-- English: "Taking damage spawns 1 blue fly"

	[T_ID .. 32] = "部屋に入るたび、25%の 確率でいずれかの効果を 付与する：#{{Collectible71}} ミニ マッシュ#{{Collectible120}} 変なキノコ#{{Collectible121}} 変なキノコ#{{Collectible21}} コンパス", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room#Can reveal special rooms on the minimap"

	[T_ID .. 34] = "部屋クリア時の報酬が 10%の確率でハートに 置き換わる#宝箱・ｘ岩・破壊した 機械・殺した乞食から、 33%の確率でハートが 追加でスポーンする", -- Child's Heart
	-- English: "{{UnknownHeart}} 10% chance for the room clear reward to be a random heart#{{Heart}} 33% chance for a bonus heart from chests, tinted rocks, and destroyed machines"

	[T_ID .. 36] = "部屋クリア時の報酬が 10%の確率で鍵に置き換わる#宝箱・ｘ岩・破壊した 機械・殺した乞食から、 33%の確率で鍵が追加で スポーンする", -- Rusted Key
	-- English: "{{Key}} 10% chance for the room clear reward to be a key#{{Key}} 33% chance for a bonus key from chests, tinted rocks, and destroyed machines"

	[T_ID .. 38] = "青／黒／骨ハートの 出現率 +10%", -- Mom's Pearl
	-- English: "+10% chance for heart drops to be {{SoulHeart}} Soul Hearts, {{BlackHeart}} Black Hearts or {{EmptyBoneHeart}} Bone Hearts"

	[T_ID .. 40] = "ダメージを受けた時、 一定確率で攻撃力 +1.8", -- Red Patch
	-- Full old Desc: "ダメージを受けた時、 一定確率で攻撃力 +1.8#確率：運0=20%、8=100%#効果はスタック可能で、 その部屋でのみ有効"
	-- English: "{{Timer}} Taking damage has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +1.8 damage for the room"

	[T_ID .. 41] = "部屋クリア時の報酬が 10%の確率で爆弾に 置き換わる#宝箱・ｘ岩・破壊した 機械・殺した乞食から、 33%の確率で爆弾が 追加でスポーンする#!!! {{Trinket53}}ダニを除去できる", -- Match Stick
	-- English: "{{Bomb}} 10% chance for the room clear reward to be a bomb#{{Bomb}} 33% chance for a bonus bomb from chests, tinted rocks, and destroyed machines#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 42] = "部屋クリア時の報酬 出現率が8%アップ#宝箱・ｘ岩・破壊した 機械・殺した乞食から、 33%の確率で追加の ピックアップがスポーン", -- Lucky Toe
	-- Full old Desc: "↑ 運 +1#部屋クリア時の報酬 出現率が8%アップ#宝箱・ｘ岩・破壊した 機械・殺した乞食から、 33%の確率で追加の ピックアップがスポーン"
	-- English: "+8% room clear reward chance#33% chance for an extra pickup from chests, tinted rocks, and destroyed machines"

	[T_ID .. 43] = "ダメージを受け、残りの 体力が半ハートになると ランダムな部屋にテレポート", -- Cursed Skull
	-- English: "When damaged down to half a heart or less, Isaac is teleported to a random room"

	[T_ID .. 44] = "部屋クリア時の報酬が 10%の確率でピルに 置き換わる#宝箱・ｘ岩・破壊した 機械・殺した乞食から、 33%の確率でピルが 追加でスポーンする", -- Safety Cap
	-- English: "{{Pill}} 10% chance for the room clear reward to be a pill#{{Pill}} 33% chance for a bonus pill from chests, tinted rocks, and destroyed machines"

	[T_ID .. 45] = "部屋クリア時の報酬が 10%の確率でカードに 置き換わる#宝箱・ｘ岩・破壊した 機械・殺した乞食から、 33%の確率でカードが 追加でスポーンする", -- Ace of Spades
	-- English: "{{Card}} 10% chance for the room clear reward to be a card#{{Card}} 33% chance for a bonus card from chests, tinted rocks, and destroyed machines"

	[T_ID .. 49] = "コイン取得時、50%の確率で 半赤ハートをスポーン", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 50% chance to spawn a half Red Heart"

	[T_ID .. 50] = "コイン取得時、50%の 確率で爆弾をスポーン", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 50% chance to spawn a bomb"

	[T_ID .. 51] = "コイン取得時、50%の 確率で鍵をスポーン", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 50% chance to spawn a key"

	[T_ID .. 52] = "コイン取得時、50%の 確率で所持金が1増える", -- Counterfeit Penny
	-- English: "{{Coin}} Picking up a coin has a 50% chance to add another coin to the counter"

	[T_ID .. 53] = "ボスを含む、HP60以上の 敵のHPを15%減少させる#ボス部屋に入った時、 赤ハート1個回復#!!! 取得すると取り外せない#{{Trinket41}} マッチ棒で除去可能", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick or gulping"

	[T_ID .. 54] = "3.5ダメージの貫通効果 付き涙で攻撃する、 追従型の使い魔を付与", -- Isaac's Head
	-- Full old Desc: "3.5ダメージの貫通効果 付き涙で攻撃する、 追従型の使い魔を付与"
	-- English: "Familiar with piercing tears"

	[T_ID .. 55] = "フロア開始時、白ハートを 1個付与する", -- Maggy's Faith
	-- English: "{{EternalHeart}} Entering a new floor grants +1 Eternal Heart"

	[T_ID .. 56] = "悪魔取引のコストを 赤ハート1個に割り引く#{{Player4}} 青ハート3個の取引は、 ？？？使用時のみ 青ハート1個に割り引く", -- Judas' Tongue
	-- English: "{{DevilRoom}} Reduces all devil deal prices to 1 heart container#Doesn't reduce 3 Soul Heart prices"

	[T_ID .. 57] = "部屋を飛び回り、透過と ホーミング効果を持つ 3.5ダメージの涙で攻撃 する使い魔を付与", -- ???'s Soul
	-- Full old Desc: "部屋を飛び回り、透過と ホーミング効果を持つ 3.5ダメージの涙で攻撃 する使い魔を付与"
	-- English: "Familiar that bounces around the room#Shoots in the same direction as Isaac"

	[T_ID .. 58] = "敵を倒した時、一定確率で 攻撃力 +0.5（最大 +5）", -- Samson's Lock
	-- Full old Desc: "敵を倒した時、一定確率で 攻撃力 +0.5（最大 +5）#確率：運0=6.66%、10=100%#その部屋でのみ有効"
	-- English: "{{Timer}} Killing an enemy has a {VAR:LUCKCHANCE}% chance to grant ↑ {{Damage}} +0.5 damage for the room"

	[T_ID .. 61] = "全ての宝箱を赤宝箱に変換", -- The Left Hand
	-- English: "{{RedChest}} Turns all chests into Red Chests"

	[T_ID .. 62] = "ｘ岩とクロールスペース 付きの岩が10秒おきに点滅", -- Shiny Rock
	-- English: "Crawlspace rocks and tinted rocks blink every 10 seconds"

	[T_ID .. 63] = "トロル爆弾が通常の爆弾 ピックアップに変化する", -- Safety Scissors
	-- English: "{{Bomb}} Turns Troll Bombs into bomb pickups"

	[T_ID .. 64] = "ランダムなワーム系の トリンケットの効果が 3秒おきに付与される", -- Rainbow Worm
	-- English: "Grants a random worm effect every 3 seconds"

	[T_ID .. 67] = "ダメージを受けた時、 D6／D8／D12／D20 いずれかの効果が 50%の確率で発動#{VAR:TEXT}", -- Cracked Dice
	-- Full old Desc: "ダメージを受けた時、 D6／D8／D12／D20 いずれかの効果が 50%の確率で発動"
	-- English: "Taking damage has a 50% chance to trigger one of these effects:#{VAR:TEXT}"

	[T_ID .. 68] = "ピックアップと敵が アイザックに引き寄せ られるようになる", -- Super Magnet
	-- English: "Isaac attracts pickups and enemies"

	[T_ID .. 69] = "アイザックが時々透明に なり、敵を混乱させる", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies"

	[T_ID .. 70] = "バトル中、ランダムに 青クモがスポーンする", -- Louse
	-- English: "Occasionally spawns a blue spider in hostile rooms"

	[T_ID .. 71] = "爆弾が置かれた場所に 緑色の液体が残り、 触れた敵にダメージを 与える", -- Bob's Bladder
	-- English: "Isaac's bombs leave damaging creep"

	[T_ID .. 72] = "部屋クリア時の報酬に 電池が出現する確率 +6.66%#ランダムピックアップが 電池になる確率 +2%#部屋をクリアした時、 5%の確率でアクティブ アイテムが1チャージ", -- Watch Battery
	-- English: "{{Battery}} 6.66% chance for the room clear reward to be a battery#{{Battery}} +10% chance for random pickups to be a battery#{{Battery}} 5% chance to add 1 charge to held active item when clearing a room"

	[T_ID .. 73] = "爆発した爆弾が10%の 確率で爆弾をスポーン", -- Blasting Cap
	-- English: "{{Bomb}} 10% chance for exploding bombs to drop a bomb pickup"

	[T_ID .. 74] = "クロールスペースの 出現率が0.5%アップ", -- Stud Finder
	-- English: "{{LadderRoom}} +0.5% chance to reveal a crawlspace when breaking a rock"

	[T_ID .. 75] = "部屋ごとにランダムな トリンケットの効果を 付与する", -- Error
	-- English: "Grants a random trinket effect every room"

	[T_ID .. 76] = "宝箱を開くと50%の確率で 追加の報酬がスポーンし、 50%の確率で中身がハエに 置き換わる", -- Poker Chip
	-- English: "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly"

	[T_ID .. 77] = "ノックバック強化", -- Blister
	-- English: "Increases knockback"

	[T_ID .. 78] = "敵に与える状態異常の 有効時間が2倍になる", -- Second Hand
	-- English: "Status effects applied to enemies last twice as long"

	[T_ID .. 79] = "カード・ルーン・ピル 使用時、25%の確率で コピーをスポーンする", -- Endless Nameless
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill has a 25% chance to spawn a copy of that rune, card or pill"

	[T_ID .. 81] = "ダメージを受けた瞬間の 無敵時間を2倍にする", -- Blind Rage
	-- English: "Invincibility frames after taking damage last twice as long"

	[T_ID .. 82] = "保持して次のフロアに 移動した時、15%の確率で トレジャールームの アイテムが二択になる", -- Golden Horse Shoe
	-- English: "{{TreasureRoom}} Future Treasure Rooms have +15% chance to let Isaac choose between two items"

	[T_ID .. 83] = "鍵を使わずにお店へ 入ることができる", -- Store Key
	-- English: "{{Shop}} Lets Isaac open Shops for free"

	[T_ID .. 84] = "お店・隠し部屋で グリードが現れなくなる#部屋のクリア報酬に コインの出現率が増え、 ハートの出現率が減る", -- Rib of Greed
	-- English: "{{Coin}} 5% more coins and fewer hearts from room clear rewards#Greed and Super Greed no longer appear in {{Shop}} Shops or {{SecretRoom}} Secret Rooms"

	[T_ID .. 85] = "寄付マシーンへの寄付時、 33%の確率で以下の効果：#40%：赤ハートを1回復#40%：キャッシュバック#15%：運 +1#5%：乞食がスポーン", -- Karma
	-- English: "{{DonationMachine}} Using a Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)"

	[T_ID .. 86] = "うんちを壊すと青ハエが スポーンする", -- Lil Larva
	-- English: "Destroying poop spawns 1 blue fly"

	[T_ID .. 87] = "鍵を使った時、半赤ハート 回復する#半赤ハートを赤ハートに 変換する", -- Mom's Locket
	-- English: "{{HealingRed}} Using a key heals half a heart#{{Heart}} Turns half hearts into full hearts"

	[T_ID .. 88] = "保持中、アクティブ アイテムがスポーン しなくなる", -- NO!
	-- English: "Prevents active items from spawning"

	[T_ID .. 89] = "使い魔がアイザックに近付く", -- Child Leash
	-- English: "Familiars stay closer to Isaac"

	[T_ID .. 90] = "うんちを壊すと爆発する", -- Brown Cap
	-- English: "Poop explodes for 100 damage when destroyed"

	[T_ID .. 91] = "33%の確率で、うんちが 黒うんちに置き換わる#黒うんちから5%の確率で 黒ハートがスポーンする", -- Meconium
	-- English: "33% chance for Black Poops to spawn#{{BlackHeart}} Destroying Black Poop has a 5% chance to spawn a Black Heart"

	[T_ID .. 92] = "↑ 連射間隔 -20%", -- Cracked Crown
	-- Full old Desc: "↑ アイテムやトリンケット からのステータス上昇値を 33%アップさせる#↑ 連射間隔 -20%"
	-- English: "↑ x1.33 Stat multiplier for the stats that are above 1 {{Speed}} speed, 3.5 {{Damage}} damage, 23.75 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 93] = "{{Collectible9}} 各部屋に15%の確率で スカトール効果を付与し、 ハエ系の敵を中立化する", -- Used Diaper
	-- English: "15% chance per room for all fly enemies to become friendly"

	[T_ID .. 94] = "青ハエ／イナゴをスポーン するタイプのトリンケット・ アイテムの効果を2倍にする", -- Fish Tail
	-- English: "Doubles all blue fly / spider spawns"

	[T_ID .. 95] = "確率は運32で最大100%に", -- Black Tooth
	-- Full old Desc: "3%の確率で黒い歯が発射 され、2倍のダメージと 毒を与える#確率は運32で最大100%に"
	-- English: "{{Poison}} {VAR:LUCKCHANCE}% chance to shoot poison tooth tears#The tooth deals 2x Isaac's damage"

	[T_ID .. 97] = "最大2体までスポーン", -- Tonsil
	-- Full old Desc: "12～20回ダメージを 受けると、敵の弾を ブロックする使い魔が スポーンする#最大2体までスポーン"
	-- English: "Taking damage {VAR:RANGE} times spawns a projectile blocking familiar#Disappears after spawning 2 familiars"

	[T_ID .. 98] = "10%の確率でホーミング 効果付きの鼻くそが飛び、 敵に 60秒間くっ付く#鼻くそは攻撃力と 等しいダメージを 毎秒与える", -- Nose Goblin
	-- Full old Desc: "10%の確率でホーミング 効果付きの鼻くそが飛び、 敵に 60秒間くっ付く#鼻くそは攻撃力と 等しいダメージを 毎秒与える"
	-- English: "10% chance to shoot a sticky tear#50% chance for it to be homing#{{Damage}} Boogers deal Isaac's damage once per second#Boogers stick for {VAR:1} seconds"

	[T_ID .. 99] = "10%の確率で衝突した 涙が跳ね返る", -- Super Ball
	-- English: "10% chance to shoot bouncing tears"

	[T_ID .. 100] = "!!! アクティブアイテムが フルチャージの時：#{VAR:EFFECTLIST}", -- Vibrant Bulb
	-- Full old Desc: "!!! アクティブアイテムが フルチャージの時：#↑ 攻撃力　 +0.5#↑ 移動速度 +0.25#↑ 射程　　 +0.75#↑ 連射速度 +0.2#↑ 弾速　　 +0.1#↑ 運　　　 +1"
	-- English: "Holding a fully charged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 101] = "!!! アクティブアイテムの チャージが空の時：#{VAR:EFFECTLIST}", -- Dim Bulb
	-- Full old Desc: "!!! アクティブアイテムの チャージが空の時：#↑ 攻撃力　 +1.5#↑ 移動速度 +0.5#↑ 射程　　 +1.5#↑ 連射速度 +0.4#↑ 弾速　　 +0.3#↑ 運　　　 +2"
	-- English: "Holding a completely uncharged active item grants:#{VAR:EFFECTLIST}"

	[T_ID .. 102] = "保持して次のフロアへ 移動すると、追加の 隠し部屋が生成される", -- Fragmented Card
	-- English: "{{SecretRoom}} +1 extra Secret Room per floor while held"

	[T_ID .. 103] = "コイン・爆弾・鍵の 所持数が等しい時、 各ピックアップが ダブルバージョンに 変換される", -- Equality!
	-- English: "Turns single pickups into double pickups when Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal"

	[T_ID .. 106] = "アイテムや使い魔から 生成される液体の効果 範囲が広がる", -- Lost Cork
	-- English: "Increases the radius of friendly creep"

	[T_ID .. 107] = "ダメージを受ける時、 赤ハートが優先して 消費される　　", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#This red heart damage does not reduce Devil/Angel Room chances"

	[T_ID .. 108] = "爆発を受けた時、33%の 確率でトリンケット・ コイン・鍵・ハートを 1個ずつスポーンする#効果発動後に消滅する#爆発ダメージが無効化 されている状態でも発動", -- Walnut
	-- English: "Getting hit by 1-9 explosions destroys the trinket and drops a random {{UnknownHeart}} heart, {{Coin}} coin, {{Key}} key and {{Trinket}} trinket#Taking damage isn't required"

	[T_ID .. 109] = "このトリンケットを 取得した時の位置に 使い魔が固定される", -- Duct Tape
	-- English: "Familiars are stuck in one spot and cannot move"

	[T_ID .. 110] = "保持して子宮／ユテロ／ 傷だらけの子宮フロアに 移動すると、お店が生成 される　　", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb"

	[T_ID .. 111] = "保持して子宮／ユテロ／ 傷だらけの子宮フロアに 移動すると、トレジャー ルームが生成される", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb"

	[T_ID .. 112] = "保持して次のフロアへ移動 すると、トレジャールームに リロールマシーンが出現する", -- Pay To Win
	-- English: "{{RestockMachine}} Restock boxes always spawn in {{TreasureRoom}} Treasure Rooms"

	[T_ID .. 113] = "敵の居る部屋に入ると、 イナゴがスポーンする#イナゴは攻撃力x2の ダメージを与えた後 爆発する", -- Locust of War
	-- English: "Entering a hostile room spawns an exploding attack fly #The fly deals 2x Isaac's damage + explosion damage"

	[T_ID .. 114] = "敵の居る部屋に入ると、 イナゴがスポーンする#イナゴは攻撃力x2の ダメージと毒を与える", -- Locust of Pestilence
	-- English: "{{Poison}} Entering a hostile room spawns a poison attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 115] = "敵の居る部屋に入ると、 イナゴがスポーンする#イナゴは攻撃力x2の ダメージを与え、 スロー状態にする", -- Locust of Famine
	-- English: "{{Slow}} Entering a hostile room spawns a slowing attack fly#The fly deals 2x Isaac's damage"

	[T_ID .. 116] = "敵の居る部屋に入ると、 イナゴがスポーンする#イナゴは攻撃力x4の ダメージを与える", -- Locust of Death
	-- English: "Entering a hostile room spawns an attack fly#The fly deals 4x Isaac's damage"

	[T_ID .. 117] = "敵の居る部屋に入ると、 1～4匹のイナゴが スポーンする#イナゴは攻撃力x2の ダメージを与える", -- Locust of Conquest
	-- English: "Entering a hostile room spawns 1-4 attack flies#Each fly deals 2x Isaac's damage"

	[T_ID .. 118] = "敵を倒すと、5%の確率で 飛行能力が付与される#その部屋でのみ有効", -- Bat Wing
	-- English: "{{Timer}} Killing an enemy has a 5% chance to grant flight for the room"

	[T_ID .. 119] = "フロア移動時に半赤ハート 回復する", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half a heart"

	[T_ID .. 120] = "ボス部屋に初めて入った時 アクティブアイテムをフル チャージする", -- Hairpin
	-- English: "{{Battery}} Entering an uncleared boss room fully recharges active items"

	[T_ID .. 121] = "各フロアで一度だけ ダメージを無効にする", -- Wooden Cross
	-- English: "{{Collectible313}} Grants a Holy shield that prevents damage once per floor"

	[T_ID .. 122] = "アクティブアイテムを 使うと、足元にそれが ドロップされる#ダメージを受けた時、 2%の確率で取得済み パッシブアイテムが 足元にドロップされる", -- Butter!
	-- English: "Using an active item drops it on a pedestal on the ground#Taking damage has a 2% chance to drop one of Isaac's passive items"

	[T_ID .. 123] = "天使を倒した時、カギの かけらの代わりに、 天使部屋のアイテムを スポーンする", -- Filigree Feather
	-- English: "Angel bosses drop angel items instead of Key Pieces"

	[T_ID .. 124] = "入って来たドアが 開いたままになる", -- Door Stop
	-- English: "The last door used stays open"

	[T_ID .. 125] = "アイザックと使い魔の間に 電気ビームが発生し、敵に 6ダメージを与える", -- Extension Cord
	-- English: "Connects all familiars with beams of electricity#The beams deal 6 damage"

	[T_ID .. 126] = "コインを拾うと青ハエが スポーンする", -- Rotten Penny
	-- English: "Picking up a coin spawns a blue fly"

	[T_ID .. 127] = "使い魔の涙にホーミング 効果が付与される", -- Baby-Bender
	-- English: "Grants all familiars homing shots"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 1] = "フロア開始時の部屋に テレポートする", -- 0 - The Fool
	-- English: "Teleports Isaac to the first room of the floor"

	[Card_ID .. 3] = "ママの踏み潰し攻撃で 敵に300ダメージ", -- II - The High Priestess
	-- English: "Mom's Foot stomps on an enemy#Mom's Foot stomps Isaac if there are no enemies"

	[Card_ID .. 5] = "ボス部屋にテレポート", -- IV - The Emperor
	-- English: "{{BossRoom}} Teleports Isaac to the Boss Room"

	[Card_ID .. 9] = "ハート・コイン・爆弾・ 鍵を各1個スポーン", -- VIII - Justice
	-- English: "Spawns a random {{UnknownHeart}} heart, {{Coin}} coin, {{Bomb}} bomb and {{Key}} key"

	[Card_ID .. 10] = "お店にテレポート", -- IX - The Hermit
	-- English: "{{Shop}} Teleports Isaac to the Shop"

	[Card_ID .. 11] = "スロットマシーンか 占いマシーンをスポーン", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 25% chance for it to be a Fortune Telling Machine"

	[Card_ID .. 15] = "献血機をスポーン", -- XIV - Temperance
	-- English: "{{DonationMachine}} Spawns a Blood Donation Machine"

	[Card_ID .. 17] = "トロル爆弾を6個スポーン", -- XVI - The Tower
	-- English: "Spawns 6 Troll Bombs"

	[Card_ID .. 18] = "トレジャールームに テレポート", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room"

	[Card_ID .. 19] = "隠し部屋にテレポート", -- XVIII - The Moon
	-- English: "{{SecretRoom}} Teleports Isaac to the Secret Room"

	[Card_ID .. 21] = "乞食か悪魔乞食をスポーン", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#2% chance for it to be a Key Master or Bomb Bum"

	[Card_ID .. 23] = "爆弾の所持数を2倍にする#未所持の場合+2個", -- 2 of Clubs
	-- English: "{{Bomb}} Doubles Isaac's number of bombs"

	[Card_ID .. 24] = "所持金を2倍にする#未所持の場合+2枚", -- 2 of Diamonds
	-- English: "{{Coin}} Doubles Isaac's number of coins"

	[Card_ID .. 25] = "鍵の所持数を2倍にする#未所持の場合+2個", -- 2 of Spades
	-- English: "{{Key}} Doubles Isaac's number of keys"

	[Card_ID .. 26] = "残り体力を2倍にする#体力が0の場合1回復", -- 2 of Hearts
	-- English: "{{HealingRed}} Doubles Isaac's number of Red Hearts {{ColorSilver}}(not containers){{CR}}"

	[Card_ID .. 27] = "全てのピックアップ・ 宝箱を爆弾に変換する", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups into random bombs"

	[Card_ID .. 28] = "全てのピックアップ・ 宝箱をコインに変換する", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups into random coins"

	[Card_ID .. 29] = "全てのピックアップ・ 宝箱を鍵に変換する", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups into random keys"

	[Card_ID .. 30] = "全てのピックアップ・ 宝箱をハートに変換する", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups into random hearts"

	[Card_ID .. 31] = "悪魔部屋か天使部屋に テレポート", -- Joker
	-- English: "{{AngelDevilChance}} Teleports Isaac to the Devil or Angel Room"

	[Card_ID .. 32] = "全ての障害物を破壊する", -- Hagalaz
	-- English: "Destroy all rocks in the room"

	[Card_ID .. 33] = "部屋の全ての宝箱と ピックアップを複製する", -- Jera
	-- English: "Duplicates all pickups in room"

	[Card_ID .. 34] = "次のフロアにつながる トラップドアを生成#8%の確率でクロール スペースにつながる", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} 8% chance for a crawlspace trapdoor"

	[Card_ID .. 35] = "フロアの呪いを解く", -- Dagaz
	-- Full old Desc: "青ハート +1#フロアの呪いを解く"
	-- English: "{{CurseCursed}} Removes all curses for the floor"

	[Card_ID .. 37] = "部屋の全てのアイテムを リロールする", -- Perthro
	-- English: "Rerolls all pedestal items in the room"

	[Card_ID .. 40] = "ランダムなルーンの 効果を発動する#25%の確率でブランク ルーンをスポーンする", -- Blank Rune
	-- English: "Triggers a random rune effect#25% chance to duplicate itself when used"

	[Card_ID .. 41] = "全てのアイテムを破壊し、 ランダムなステータスを アップさせる#全てのピックアップを 青ハエ／クモに変換する", -- Black Rune
	-- Full old Desc: "全ての敵に40ダメージ#全てのアイテムを破壊し、 ランダムなステータスを アップさせる#全てのピックアップを 青ハエ／クモに変換する"
	-- English: "Converts all pedestal items in the room into random stat ups#Converts all pickups in the room into blue flies"

	[Card_ID .. 42] = "移動方向にカードを投げ、 触れた敵を即死させる#デリリウムは即死無効", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium)"

	[Card_ID .. 43] = "お店の商品／悪魔部屋の アイテムを全て無料にする", -- Credit Card
	-- English: "Makes all items and pickups in a {{Shop}} Shop or {{DevilRoom}} Devil Room free"

	[Card_ID .. 44] = "やくだつじょうほうを表示", -- Rules Card
	-- English: "Displays "helpful" tips on use"

	[Card_ID .. 45] = "部屋をうんちで埋め尽くす", -- A Card Against Humanity
	-- English: "Fills the whole room with poop"

	[Card_ID .. 46] = "アイザックを殺し、その 部屋に10個のアイテム・ ピックアップ・宝箱を スポーンする", -- Suicide King
	-- English: "Instantly kills Isaac and spawns 10 pickups or items on the floor#Spawned items will use the current room's item pool"

	[Card_ID .. 47] = "部屋の全てのドアと、 隠し部屋の入り口を開く", -- Get Out Of Jail Free Card
	-- English: "Open all doors in the room"

	[Card_ID .. 48] = "現在保持中のアクティブ アイテムの効果をコピー する", -- ? Card
	-- English: "Uses Isaac's active item for free"

	[Card_ID .. 49] = "部屋にある全てのアイテムと ピックアップをリロールする", -- Dice Shard
	-- English: "Rerolls all item pedestals and pickups in the room"

	[Card_ID .. 50] = "ママの手が敵をつかんで 動きを止め、40ダメージ を与える", -- Emergency Contact
	-- English: "Two of Mom's Hands come down and grab an enemy each"

	[Card_ID .. 51] = "その部屋で次に受ける ダメージを一度だけ 無効化する#25%の確率で別の聖なる カードをスポーンする", -- Holy Card
	-- English: "{{HolyMantle}} Holy Mantle shield for the room (prevents damage once)#25% chance to spawn another Holy Card"

	[Card_ID .. 52] = "{VAR:ROOMEFFECT}#アイザックのサイズ拡大", -- Huge Growth
	-- Full old Desc: "その部屋に居る間：#↑ 攻撃力 +7#↑ 射程　 +30#障害物破壊能力を付与#アイザックのサイズ拡大"
	-- English: "{VAR:ROOMEFFECT}#Allows Isaac to destroy rocks by walking into them"

	[Card_ID .. 54] = "{VAR:ROOMEFFECT}#↓ 弾速　　 -1", -- Era Walk
	-- Full old Desc: "その部屋に居る間：#全ての敵をスロー状態に#↑ 移動速度 +0.5#↓ 弾速　　 -1"
	-- English: "{VAR:ROOMEFFECT}#{{Slow}} Slow down enemies"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 1] = "おならを放ちダメージと 毒を与える", -- Bad Gas
	-- English: "{{Poison}} Isaac farts and poisons nearby enemies"

	[Pill_ID .. 2] = "ハート1個の ダメージを受ける#ハートが1個以下の場合、 体力全快ピルに変化", -- Bad Trip
	-- English: "{{Warning}} Deals 1 heart of damage to Isaac#Becomes a Full Health pill at 1 heart or less"

	[Pill_ID .. 4] = "爆弾と鍵の所持数を 入れ替える", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys"

	[Pill_ID .. 5] = "アイザックの尻から 点火済みの爆弾が 5連続スポーンする", -- Explosive Diarrhea
	-- English: "Isaac quickly spawns 5 lit bombs"

	[Pill_ID .. 7] = "最大体力が1以下の 場合、HPアップに変化", -- Health Down
	-- Full old Desc: "↓ 最大体力 -1#最大体力が1以下の 場合、HPアップに変化"
	-- English: "Becomes a Health Up pill at 0 or 1 heart containers"

	[Pill_ID .. 10] = "{VAR:EFFECTLIST}", -- Puberty
	-- Full old Desc: "3回使用すると大人になる （最大体力 +1）"
	-- English: "Eating 3 grants the Adult transformation:#{VAR:EFFECTLIST}"

	[Pill_ID .. 20] = "ランダムな部屋に テレポートする#低確率でI AM ERRORへ", -- Telepills
	-- English: "Teleports Isaac to a random room#{{ErrorRoom}} Small chance to teleport Isaac to the I AM ERROR room"

	[Pill_ID .. 21] = "アクティブアイテムを フルチャージする", -- 48 Hour Energy!
	-- Full old Desc: "アクティブアイテムを フルチャージする#1～2個の電池をスポーン"
	-- English: "{{Battery}} Fully recharges the active item"

	[Pill_ID .. 22] = "赤ハートを1個残しで 空にして、1～4個の 赤ハートをスポーン", -- Hematemesis
	-- Full old Desc: "赤ハートを1個残しで 空にして、1～4個の 赤ハートをスポーン"
	-- English: "{{Warning}} Drains all but one heart container"

	[Pill_ID .. 23] = "2秒間のマヒ", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 2 seconds"

	[Pill_ID .. 24] = "現フロアの隠し部屋の 入り口を全て開放する", -- I can see forever!
	-- English: "{{SecretRoom}} Opens all secret room entrances on the floor"

	[Pill_ID .. 25] = "全ての敵をチャーム 状態にする", -- Pheromones
	-- English: "{{Charm}} Charms all enemies in the room"

	[Pill_ID .. 26] = "マップを？に置き換える (迷われし者の呪い)", -- Amnesia
	-- English: "{{CurseLost}} Hides the map for the floor"

	[Pill_ID .. 27] = "レモン汁が床に広がり、 触れた敵にダメージを 与える", -- Lemon Party
	-- English: "Spawns a large puddle on the ground which damages enemies"

	[Pill_ID .. 28] = "30秒間、涙が斜め外側に 飛ぶ", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 30 seconds"

	[Pill_ID .. 29] = "その部屋に居る間、 受けるダメージを 半ハートに軽減する", -- Percs!
	-- English: "{{Timer}} Reduces all damage taken to half a heart for the room"

	[Pill_ID .. 30] = "その部屋に居る間、 受けるダメージが ハート1個分に増加", -- Addicted!
	-- English: "{{Timer}} Increases all damage taken to a full heart for the room"

	[Pill_ID .. 31] = "2秒間うんちを出し続ける", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 2 seconds"

	[Pill_ID .. 32] = "現フロアに迷路の呪いを かける", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. 33] = "当たり判定は不変", -- One makes you larger
	-- Full old Desc: "アイザックのサイズ拡大#当たり判定は不変"
	-- English: "Doesn't affect his hitbox"

	[Pill_ID .. 34] = "当たり判定も縮小", -- One makes you small
	-- Full old Desc: "アイザックのサイズ縮小#当たり判定も縮小"
	-- English: "Also decreases his hitbox"

	[Pill_ID .. 35] = "部屋の全てのうんちを 壊し、同数の青クモを スポーンする", -- Infested!
	-- English: "Spawns 1 blue spider for each poop in the room"

	[Pill_ID .. 36] = "部屋に居る敵と同数の 青クモをスポーンする#敵が居ない場合1～3匹の 青クモをスポーンする", -- Infested?
	-- English: "Spawn 1 blue spider for each enemy in the room#Spawns 1-3 blue spiders if there are no enemies in the room"

	[Pill_ID .. 38] = "ゲーム画面が30秒間 ピクセル加工される", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen 3 times over 30 second"

	[Pill_ID .. 40] = "茶色の液体が床に広がり、 アイザックをスリップ させる", -- X-Lax
	-- English: "Spawns a pool of slippery creep"

	[Pill_ID .. 41] = "黒い液体が床に広がり、 触れた敵をスロー状態に する", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of slowing creep"

	[Pill_ID .. 42] = "部屋の全ての敵を スロー状態にする", -- I'm Drowsy...
	-- English: "{{Slow}} Slows all enemies in the room"

	[Pill_ID .. 43] = "部屋の全ての敵を 加速状態にする", -- I'm Excited!!
	-- English: "Speeds up all enemies in the room"

	[Pill_ID .. 44] = "保持中のトリンケットを 吸収し、効果を永続化する", -- Gulp!
	-- English: "{{Trinket}} Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. 45] = "{{Collectible149}}吐き気薬の涙を一発放つ", -- Horf!
	-- English: "{{Collectible149}} Shoots one Ipecac tear"

	[Pill_ID .. 47] = "最後に使用したピルを スポーンする", -- Vurp!
	-- English: "Spawns the last pill used before Vurp!"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)
