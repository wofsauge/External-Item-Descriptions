local languageCode = "ja_jp"
---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 13] = "↑ 移動速度 +0.2", -- The Virus
	-- Full old Desc: "接触した敵に毒を与える#↑ 移動速度 +0.2"
	-- English: "{{Poison}} Touching enemies poisons them"

	[C_ID .. 42] = "手投げ式の毒爆弾#爆発は攻撃力+185の ダメージと毒を与える#着弾地点に毒雲を生成", -- Bob's Rotten Head
	-- English: "Using the item and firing in a direction throws the head#{{Poison}} The head explodes where it lands and creates a poison cloud#Deals Isaac's damage + 185"

	[C_ID .. 46] = "ギャンブルの勝率アップ#部屋クリア時の報酬 スポーン確率アップ#悪性のピルを良性に変換", -- Lucky Foot
	-- Full old Desc: "↑ 運 +1#ギャンブルの勝率アップ#部屋クリア時の報酬 スポーン確率アップ#悪性のピルを良性に変換"
	-- English: "Better chance to win while gambling#Increases room clearing drop chance#Turns bad pills into good ones"

	[C_ID .. 52] = "ダメージが60を超える場合、 代わりに、攻撃力ｘ5+30の ダメージを与える#↓ 連射速度 -60%", -- Dr. Fetus
	-- Full old Desc: "涙が爆弾に置き換わる#爆弾は攻撃力ｘ10の ダメージを与える#ダメージが60を超える場合、 代わりに、攻撃力ｘ5+30の ダメージを与える#↓ 連射速度 -60%"
	-- English: "{{Bomb}} Isaac shoots bombs instead of tears#{{Damage}} Those bombs deal 10x Isaac's tear damage#If that results in over 60 damage, they instead deal 5x damage +30"

	[C_ID .. 53] = "ピックアップが障害物を 飛び越えてアイザックに 引き寄せられるようになる#付近の宝箱が自動的に開く （トゲ付きを無傷で開ける）", -- Magneto
	-- English: "Pickups are attracted to Isaac#Opens chests from 2 tiles away, ignoring damage of Spike Chests"

	[C_ID .. 69] = "涙がチャージ式になり、 チャージ量に応じて 10～400%のダメージを 与える", -- Chocolate Milk
	-- English: "{{Chargeable}} Chargeable tears#{{Damage}} Damage scales with charge time, up to 4x"

	[C_ID .. 78] = "↑ 保持中、悪魔部屋／天使 部屋の出現率 +17.5%", -- Book of Revelations
	-- Full old Desc: "青ハートを1個付与する#使用すると、現フロアの ボスがハービンガーに 置き換えられる#↑ 保持中、悪魔部屋／天使 部屋の出現率 +17.5%"
	-- English: "Using the item replaces the floor's boss with a horseman"

	[C_ID .. 84] = "次のフロアにつながる トラップドアを生成#装飾のある床の上で 使用するとクロール スペースを生成する （草やゴミがある床）", -- We Need To Go Deeper!
	-- English: "Opens a trapdoor to the next floor#{{LadderRoom}} Opens a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[C_ID .. 91] = "マップが二部屋先まで 詳しく表示される#隠し部屋の位置も表示#頭上に落下してくる 弾をブロックする", -- Spelunker Hat
	-- English: "Rooms on the map are revealed from further away#{{SecretRoom}} Can also reveal Secret and Super Secret Rooms#Prevents damage from falling projectiles"

	[C_ID .. 114] = "涙がナイフに置き換わる#保持中のナイフは2倍の ダメージを与える#チャージ攻撃でナイフを 発射でき、チャージ量に 応じて射程とダメージが 変化する#約1/3のチャージで最大 6倍のダメージ", -- Mom's Knife
	-- English: "Isaac's tears are replaced by a throwable knife#{{Damage}} The knife deals 2x Isaac's damage while held and caps at 6x damage at 1/3 charge#Charging further only increases throwing range#Damage reduces to 2x when returning to Isaac"

	[C_ID .. 123] = "次のフロアまで持続する ランダムな使い魔を1体 付与する", -- Monster Manual
	-- English: "{{Timer}} Spawns a random familiar for the floor"

	[C_ID .. 126] = "ハート1個のダメージを 受け、その部屋に居る間、 攻撃力を1.2増やす#赤ハートを優先して消費#同じ部屋で二回以上使用 する場合、ダメージ量を 半ハートに軽減する", -- Razor Blade
	-- English: "↑ {{Damage}} +1.2 Damage for the room#{{Warning}} Deals 1 heart of damage to Isaac#After the first use in a room, deals half a heart instead#{{Heart}} Removes Red Hearts first"

	[C_ID .. 140] = "爆破地点に毒雲が生成 されるようになる", -- Bob's Curse
	-- Full old Desc: "爆弾に毒効果を付与する#爆弾 +5#爆破地点に毒雲が生成 されるようになる#アイザックに毒耐性を付与"
	-- English: "{{Poison}} Isaac's bombs create a cloud of poison#{{Poison}} Poison immunity"

	[C_ID .. 142] = "残り体力が半ハートに なった時、青ハートを 1個付与する#効果は1部屋で1回のみ 有効だが、部屋に入り 直すと再度有効化する#!!! 献血では機能しない", -- Scapular
	-- English: "{{SoulHeart}} Isaac gains 1 Soul Heart when damaged down to half a heart#Can only happen once per room#Exiting and re-entering the room allows the effect to trigger again#{{Warning}} Doesn't trigger from health donations"

	[C_ID .. 147] = "障害物やドアの破壊、 敵への攻撃が可能な斧#64回分のチャージがあり、 破壊時に1チャージ、 攻撃時に2チャージ消費#使用／非使用は切替可能#フロア移動時にチャージ 全回復", -- Notched Axe
	-- English: "Using the item makes Isaac hold the axe#Holding the axe allows Isaac to break rocks, secret room entrances and damage enemies#Landing a hit with the axe reduces its charge#Entering a new floor fully recharges the axe"

	[C_ID .. 149] = "↓ 射程　　 -20%", -- Ipecac
	-- Full old Desc: "涙が毒爆弾に置き換わる#↑ 攻撃力　 +40#↓ 弾速　　 x0.8#↓ 連射速度 -67%#↓ 射程　　 -20%"
	-- English: "Isaac's tears are fired in an arc#{{Poison}} The tears explode and poison enemies where they land"

	[C_ID .. 152] = "レーザーは攻撃力ｘ0.13の ダメージを与える#↓ 連射速度 -33%", -- Technology 2
	-- Full old Desc: "右目の涙が連続照射の 貫通レーザーに置き換わる#レーザーは攻撃力ｘ0.13の ダメージを与える#↓ 連射速度 -33%"
	-- English: "Replaces Isaac's right eye tears with a continuous laser#{{Damage}} The laser deals 2x Isaac's damage per second"

	[C_ID .. 171] = "部屋の全ての敵に 10ダメージを与え、 4秒間スロー状態にする", -- Spider Butt
	-- Full old Desc: "部屋の全ての敵に 10ダメージを与え、 4秒間スロー状態にする#この効果で倒された敵は 青クモをスポーンする"
	-- English: "{{Slow}} Slows down enemies for 4 seconds#Enemies killed by the item spawn blue spiders"

	[C_ID .. 178] = "涙の発射方向に連動して 聖水ビンが発射される#敵に衝突するとビンが 割れ、7ダメージを与える#衝突地点に聖水を残し、 触れた敵を石化させる", -- Holy Water
	-- English: "{{Throwable}} Launches itself in the direction Isaac shoots#Breaks and deals 7 damage upon hitting an enemy#{{Petrify}} Leaves a pool of petrifying + damaging creep"

	[C_ID .. 180] = "ダメージを受けると 数回おならを放ち、 敵にダメージと毒を 与える　　　　#おならがその場に残り、 触れた敵に毒を与える", -- The Black Bean
	-- English: "Isaac farts multiple times when damaged#{{Poison}} The farts leave poison clouds and deflects projectiles"

	[C_ID .. 203] = "ハート・コイン・爆弾・ 鍵を50%の確率でダブル バージョンに変換する", -- Humbleing Bundle
	-- English: "Pickups have a 50% chance to be doubled"

	[C_ID .. 205] = "ダメージをコストにし、 アクティブアイテムを フルチャージできる#1チャージ = 半ハート#赤ハートから優先消費", -- Sharp Plug
	-- English: "{{Battery}} Using an uncharged active item fully recharges it at the cost of half a heart per missing charge#{{Heart}} Removes Red Hearts first"

	[C_ID .. 222] = "時間の経過または攻撃の 停止で、元の方向に涙が 発射される#↑ 連射速度 +1 ※上限を突破できる", -- Anti-Gravity
	-- Full old Desc: "攻撃ボタンが押されて いる間、発射した涙が その場で静止を続ける#時間の経過または攻撃の 停止で、元の方向に涙が 発射される#↑ 連射速度 +1 ※上限を突破できる"
	-- English: "Holding the fire buttons causes tears to hover in mid-air#Releasing the fire buttons shoots them in the direction they were fired"

	[C_ID .. 223] = "爆風で半赤ハート回復#爆弾 +5", -- Pyromaniac
	-- Full old Desc: "爆発と炎への耐性を付与#爆風で半赤ハート回復#爆弾 +5"
	-- English: "Immunity to explosions and fire#{{HealingRed}} Getting hit by explosions heals half a heart"

	[C_ID .. 224] = "↑ 連射速度 +0.5 ※上限を突破できる#↓ 射程　　 -20%", -- Cricket's Body
	-- Full old Desc: "衝突した涙が四つに分裂する#分裂した涙はダメージ量が 半減する#↑ 連射速度 +0.5 ※上限を突破できる#↓ 射程　　 -20%"
	-- English: "Tears split in 4 on hit#Split tears deal half damage"

	[C_ID .. 225] = "ダメージを受けた時、 一定確率で青ハートが スポーンする#確率：運0=8%、46=100%#死んだ敵が1～10%の確率で 半赤ハートを落とす （HPが高い敵ほど高確率）", -- Gimpy
	-- English: "{{SoulHeart}} Taking damage has a 8% chance to spawn a Soul Heart#{{Luck}} +2% chance per luck#{{HalfHeart}} Enemies have a chance to drop a half Red Heart on death"

	[C_ID .. 230] = "赤ハートを同数の 黒ハートに置き換える", -- Abaddon
	-- Full old Desc: "↑ 攻撃力　 +1.5#↑ 移動速度 +0.2#一定確率で涙に 恐怖効果を付与#確率：運0=15%、85=100%#赤ハートを同数の 黒ハートに置き換える#黒ハート +2"
	-- English: "{{BlackHeart}} Converts all heart containers into Black Hearts#{{Fear}} 15% chance to shoot fear tears"

	[C_ID .. 232] = "↑ 移動速度 +0.3", -- Stop Watch
	-- Full old Desc: "全ての敵の移動速度と 攻撃速度が20%ダウン#↑ 移動速度 +0.3"
	-- English: "{{Slow}} Enemies are permanently slowed down to 80% of their attack and movement speed"

	[C_ID .. 248] = "青ハエ／クモの与える ダメージが2倍になる#ハエ／クモタイプの 使い魔が与える ダメージが2倍になる", -- Hive Mind
	-- English: "Blue spiders and flies deal double damage#Spider and fly familiars become stronger"

	[C_ID .. 256] = "爆弾 +5", -- Hot Bombs
	-- Full old Desc: "爆弾が炎をまとい、敵に 接触ダメージを与える#爆発地点に炎が残り、 敵にダメージを与える#アイザックが炎から ダメージを受けなくなる#爆弾 +5"
	-- English: "{{Burning}} Isaac's bombs deal contact damage#{{Burning}} Isaac's bombs leave a flame where they explode#{{Burning}} Fire immunity (except projectiles)"

	[C_ID .. 261] = "涙のサイズとダメージが 滞空時間と共に減少する#発射直後の涙は3倍の ダメージを与える", -- Proptosis
	-- Full old Desc: "↑ 攻撃力 +0.5#涙のサイズとダメージが 滞空時間と共に減少する#発射直後の涙は3倍の ダメージを与える"
	-- English: "↓ Tears deal less damage the longer they are airborne#Tears deal 3x damage at point blank range and no damage after 0.8 seconds"

	[C_ID .. 262] = "ダメージを受け、残りの  体力がハート1個以下に  なった時、部屋の全ての 敵に80ダメージを与える#ネクロノミコン効果による ダメージを40増やす", -- Missing Page 2
	-- Full old Desc: "黒ハート +1#ダメージを受け、残りの  体力がハート1個以下に  なった時、部屋の全ての 敵に80ダメージを与える#ネクロノミコン効果による ダメージを40増やす"
	-- English: "Taking damage down to 1 heart damages all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[C_ID .. 263] = "取得時、ランダムな ルーンを1個スポーン", -- Clear Rune
	-- Full old Desc: "保持中のルーン・ソウル ストーンの効果をコピー して発動する#取得時、ランダムな ルーンを1個スポーン"
	-- English: "{{Rune}} Triggers the effect of the rune Isaac holds without using it"

	[C_ID .. 276] = "アイザックに追従する 心臓が現れ、ダメージ 判定が心臓側に移行する#心臓はチャージ式の攻撃 能力を持ち、涙の発射や ノックバックができる#アイザックに接触ダメージ 効果を付与する", -- Isaac's Heart
	-- English: "Isaac becomes invincible#Spawns a heart familiar that follows Isaac#The heart charges up when Isaac fires and releases a burst of tears when he stops#{{Warning}} If the heart familiar gets hit, Isaac takes damage"

	[C_ID .. 278] = "赤ハートを拾い集める 乞食の使い魔#1.5個拾うたび、カード・ ピル・ルーン・青クモ・ 敵クモ・黒ハートの いずれかをスポーン", -- Dark Bum
	-- English: "{{Heart}} Picks up nearby Red Hearts#Spawns a Black Heart, rune, card, pill, or spider for every 1.5 hearts picked up"

	[C_ID .. 280] = "バトル中、最大5匹まで 青クモをスポーンする 使い魔#接触した敵をチャーム 状態にする", -- Sissy Longlegs
	-- English: "Randomly spawns blue spiders in hostile rooms#{{Charm}} Charms enemies it comes in contact with"

	[C_ID .. 283] = "ステータス、部屋の全ての アイテム、ピックアップ、 宝箱、取得済みのパッシブ アイテムをリロールする#ピックアップをランダムに 1個複製する#その部屋で倒した敵を リスポーンし、その後 別の敵にリロールする#障害物をリロールする", -- D100
	-- English: "Duplicates 1 pickup in the room#Rerolls Isaac's speed, tears, damage, range and passive items#Rerolls all pedestal items, pickups and rocks in the room#Restarts the room, respawns all enemies and devolves them"

	[C_ID .. 285] = "部屋の全ての敵を、一段階 弱い別の敵にリロールする", -- D10
	-- English: "Devolves all enemies in the room#For instance, all Red Flies become Black Flies"

	[C_ID .. 286] = "保持中のカードの効果を コピーして発動する", -- Blank Card
	-- English: "Triggers the effect of the card Isaac holds without using it"

	[C_ID .. 287] = "{{Collectible54}} 宝の地図", -- Book of Secrets
	-- Full old Desc: "{{Collectible54}} 宝の地図#{{Collectible21}} コンパス#{{Collectible246}} ブルーマップ いずれかの効果を 現フロアに付与する#まだ有効化されていない 効果のみ付与される#全て有効化されている 場合、{{Collectible76}} X線ビジョン 効果を現フロアに付与する#現在の部屋にあるｘ岩と クロールスペース付きの 岩が点滅する"
	-- English: "Highlights tinted and crawlspace rocks in the room#{{Timer}} Receive one of these effects for the floor:#{{IND}}{{NameC54}}#{{IND}}{{NameC21}}#{{IND}}{{NameC246}}#Only grants effects not already active#{{Collectible76}} If all effects are active, grants X-Ray Vision"

	[C_ID .. 289] = "ロウソクから赤い炎を放つ#炎が敵にダメージを与え、 弾をブロックする#接触とブロックで炎は 縮み、4回ヒットで消滅#10秒の経過でも消滅", -- Red Candle
	-- English: "Throws a red flame#It deals contact damage, blocks enemy tears, and disappears when it has dealt damage or blocked shots 4 times or after 10 seconds"

	[C_ID .. 291] = "全ての雑魚敵がうんちに変化#うんちタイプのボスが即死#炎を消火する#溶岩を岩に変え、歩行可能に", -- Flush!
	-- English: "Turns all non-boss enemies into poop#Instantly kills poop enemies and bosses#Extinguishes fire places and fills the room with water#Turns lava pits into walkable ground"

	[C_ID .. 292] = "ボス戦前に使用した場合、 ボスアイテムが悪魔取引の  アイテムに置き換えられる#この効果で取引した場合、 天使部屋の出現率がゼロに なる　　　", -- Satanic Bible
	-- Full old Desc: "黒ハートを1個付与#ボス戦前に使用した場合、 ボスアイテムが悪魔取引の  アイテムに置き換えられる#この効果で取引した場合、 天使部屋の出現率がゼロに なる　　　"
	-- English: "{{DevilRoom}} Using the item before a boss fight makes the boss reward a devil deal#Purchasing these devil deals has the same consequences as those in Devil Rooms#Does not affect item pedestals in The Void floor"

	[C_ID .. 294] = "おならで近くの敵と弾を ノックバックさせる#この効果で壁や障害物に 衝突した敵はダメージを 受ける　", -- Butter Bean
	-- English: "Knocks back nearby enemies and projectiles#Enemies pushed into obstacles take 10 damage"

	[C_ID .. 295] = "1コイン消費し、部屋の 全ての敵に攻撃力ｘ2+10の ダメージを与える", -- Magic Fingers
	-- English: "Deals 2x Isaac's damage + 10 to all enemies in the room#{{Coin}} Costs 1 coin"

	[C_ID .. 296] = "青／黒ハートを1個消費し、 最大体力を1個増やす", -- Converter
	-- English: "{{Heart}} Converts 1 Soul or Black Heart into 1 heart container"

	[C_ID .. 297] = "使用フロアで効果が変化：#B1:青ハート 2個#B2:爆弾と鍵 各2個#C1:ボスアイテム 1個#C2:B1+C1#D1:青ハート 4個#D2:コイン 20枚#W1:ボスアイテム 2個#W2:{{Collectible33}} 聖書#???/Void:なし#Sheol:悪魔部屋アイテム1個 　　　黒ハート 1個#Cat:天使部屋アイテム 1個 　　白ハート 1個#DarkRoom:{{Collectible523}}お引越し用の箱をアンロック#Chest:コイン 1枚#Home:{{Collectible580}}レッドキー", -- Pandora's Box
	-- English: "{{NoLB}}Spawns rewards based on floor:#B1: 2{{SoulHeart}}; B2: 2{{Bomb}} + 2{{Key}}#{{NoLB}}C1: Boss item; C2: C1 + 2{{SoulHeart}}#D1: 4{{SoulHeart}}; D2: 20{{Coin}}#W1: 2 Boss items#W2: {{Collectible33}} The Bible#???/Void: Nothing#Sheol: Devil item + 1{{BlackHeart}}#Cathe: Angel item + 1{{EternalHeart}}#{{NoLB}}Dark Room: Unlocks {{Collectible523}} Moving Box#Chest: 1{{Coin}}#Home: {{Collectible580}} Red Key"

	[C_ID .. 300] = "素早く敵に衝突すると、 敵に25のダメージを与える", -- Aries
	-- Full old Desc: "↑ 移動速度 +0.25#素早く敵に衝突すると、 敵に25のダメージを与える#この時、アイザックは ダメージを受けない"
	-- English: "Moving above 0.85 Speed makes Isaac immune to contact damage and deals 25 damage to enemies"

	[C_ID .. 308] = "アイザックの体から青い  液体が流れ続け、触れた  敵にダメージを与える#液体は攻撃力ｘ0.66の ダメージを与え、涙の 特殊効果を引き継ぐ", -- Aquarius
	-- English: "Isaac leaves a trail of creep#{{Damage}} The creep deals 66% of Isaac's damage per second and inherits his tear effects"

	[C_ID .. 315] = "涙が磁気を帯び、 敵やピックアップを 引き寄せる#磁力は着弾地点で 最も強くなる", -- Strange Attractor
	-- English: "Isaac's tears attract enemies, pickups and trinkets#The attraction effect is much stronger at the end of the tears' path"

	[C_ID .. 319] = "目玉がアイザックを追従し、 アイザックと同じ涙を ランダムな方向に放つ#ダメージ量は攻撃力の75%", -- Cain's Other Eye
	-- English: "Shoots tears in random directions with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 323] = "5の追加ダメージを持つ 涙を8方向に同時発射する#涙を発射するとチャージが 回復する", -- Isaac's Tears
	-- English: "Shoots 8 tears in all directions#The tears copy Isaac's tear effects, plus 5 damage#Recharges by shooting tears"

	[C_ID .. 325] = "分離した頭がその場に 固定され、涙を放つ#操作する体側からは、 攻撃方向に向かって 血液の弾が噴き出す", -- Scissors
	-- English: "{{Timer}} Isaac's head turns into a stationary familiar for the room#The body is controlled separately and gushes blood tears in the direction Isaac is shooting"

	[C_ID .. 326] = "使用ボタンを押し続けると チャージ量が徐々に減り、 空になった瞬間無敵状態に なる#チャージ量が空になった後 更にボタンを1秒以上押し 続けるとダメージを受ける#無敵状態の時、敵に接触 ダメージを与え、光線を 発動する　#チャージ量が空になった 瞬間にダメージを防いだ 場合、十字方向にビーム 攻撃を放ち、短時間の シールド効果を得る", -- Breath of Life
	-- English: "Holding down the USE button empties the charge bar#Isaac is temporarily invincible when the charge bar is empty#Isaac summons light beams on contact with enemies when invincible#If damage is blocked with perfect timing, shoot a 4-way holy beam and gain a brief shield#{{Warning}} Holding it for too long deals damage to Isaac"

	[C_ID .. 331] = "涙にホーミング効果を付与", -- Godhead
	-- Full old Desc: "↑ 攻撃力　 +0.5#↓ 連射速度 -0.3#↓ 弾速　　 -0.3#涙がオーラを放ち、触れた 敵にダメージを与える#涙にホーミング効果を付与"
	-- English: "Tears gain an aura that deals 60 damage per second"

	[C_ID .. 352] = "貫通効果を持つ大粒の涙を 発射し、攻撃力x10+10の ダメージを与える#!!! ダメージを受けると大砲が 壊れ、ハートを追加で2個 失う（この追加のダメージ では死に至らない）#献血等による自傷ダメージ では壊れない", -- Glass Cannon
	-- English: "{{Damage}} Shoots a large piercing spectral tear that does 10x Isaac's damage#{{Warning}} While held, taking damage:#↓ Removes an extra 2 hearts of health#↓ Breaks the cannon for a few rooms#↑ {{Range}} +1.5 Range and leaves a blood trail for the room#The extra damage can't kill Isaac#Self-damage does not trigger the effect"

	[C_ID .. 360] = "アイザックの涙をコピー して攻撃する使い魔#リリス以外のキャラで 使う場合、ダメージは 攻撃力の75%", -- Incubus
	-- English: "Shoots tears with the same effects as Isaac#{{Damage}} Deals 75% of Isaac's damage"

	[C_ID .. 365] = "壁や障害物に沿って 移動する使い魔#近くの敵を引き付け、 アイザックの代わりに 攻撃対象となる", -- Lost Fly
	-- Full old Desc: "壁や障害物に沿って 移動する使い魔#毎秒30の接触ダメージ#近くの敵を引き付け、 アイザックの代わりに 攻撃対象となる"
	-- English: "Moves along walls/obstacles in the room#Nearby enemies target the fly"

	[C_ID .. 367] = "爆弾で敵を倒すと 青クモがスポーン#爆弾が敵にくっ付く", -- Sticky Bombs
	-- Full old Desc: "爆弾 +5#爆弾で敵を倒すと 青クモがスポーン#爆弾が敵にくっ付く#爆発時、敵にスロー効果を 付与する液体をまき散らす"
	-- English: "{{Slow}} Isaac's bombs stick to enemies and leave white slowing creep#Killing an enemy with a bomb spawns blue spiders"

	[C_ID .. 368] = "同一方向に攻撃し続けると 連射速度が上昇していき、 最大200%アップする#攻撃の停止・方向変更で 連射速度がリセットされる", -- Epiphora
	-- English: "↑ {{Tears}} Shooting in one direction gradually increases fire rate up to 200% and decreases accuracy"

	[C_ID .. 374] = "確率：運0=10%、9=50%", -- Holy Light
	-- Full old Desc: "一定確率で聖なる涙が 発射され、衝突すると 近くの敵に光線が降り注ぐ#光線は攻撃力ｘ3の ダメージを与える#確率：運0=10%、9=50%"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot holy tears, which spawn a beam of light on hit#{{Damage}} The beams deals 3x Isaac's damage"

	[C_ID .. 375] = "爆発耐性を付与#敵の弾を25%の確率で ブロックし、跳ね返す#頭上に落下してくる弾を ブロックする", -- Host Hat
	-- English: "Grants immunity to explosions and falling projectiles#25% chance to reflect enemy shots"

	[C_ID .. 376] = "お店で商品を購入すると 新しい商品が補充される#補充されるたびに商品が 値上がりする", -- Restock
	-- English: "Buying an item from a Shop restocks it instantly#Restocked items increase in price each time"

	[C_ID .. 380] = "鍵付きのドアや宝箱を コインで開けるように なる　　　", -- Pay To Play
	-- Full old Desc: "コイン +5#鍵付きのドアや宝箱を コインで開けるように なる　　　"
	-- English: "Locked blocks, doors and chests must be opened with coins instead of keys"

	[C_ID .. 382] = "モンスターを捕獲できる ボール#敵を捕獲後にボールを 拾うとチャージが回復#再使用すると捕獲された 敵がチャーム状態で現れる", -- Friendly Ball
	-- English: "Can be thrown at enemies to capture them#{{Friendly}} Using the item after capturing an enemy spawns the capture as a friendly companion#Walking over the ball after a capture instantly recharges the item"

	[C_ID .. 384] = "攻撃に連動してチャージを 溜め、解放されると高速で 体当たりを始める使い魔#チャージ量に応じて 5～20のダメージを与える", -- Lil Gurdy
	-- English: "{{Chargeable}} Launches and bounces around the room with speed based on charge amount#Deals 5-20 contact damage per hit depending on speed"

	[C_ID .. 386] = "障害物をリロールする", -- D12
	-- English: "Rerolls any obstacle into another random obstacle (e.g. poop, pots, TNT, red poop, stone blocks etc.)#Small chance to reroll obstacles into buttons, killswitches, crawlspaces or trapdoors"

	[C_ID .. 389] = "7～8部屋クリアするたび ランダムなルーンまたは ソウルストーン1個を スポーンする使い魔", -- Rune Bag
	-- English: "{{Rune}} Spawns a random rune or Soul Stone every 7-8 rooms"

	[C_ID .. 391] = "敵の発射した弾が他の 敵に当たるようになる#敵に攻撃された敵は、 発射元の敵に攻撃の ターゲットを変更する", -- Betrayal
	-- English: "Enemies can hit each other with their projectiles, and start infighting"

	[C_ID .. 393] = "15%の確率で涙に毒効果が 付与される#接触した敵に毒を与える#接触で毒を受けた敵が 死んだ時、20%の確率で 黒ハートを落とす", -- Serpent's Kiss
	-- English: "{{Poison}} 15% chance to shoot poison tears#{{Poison}} Poison enemies on contact#{{BlackHeart}} Enemies killed by contact poison have a chance to drop a Black Heart on death"

	[C_ID .. 394] = "ドロップボタンで攻撃を 停止できる#使い魔も同様に攻撃する#↑ 連射速度 +0.7", -- Marked
	-- Full old Desc: "照準方向へ涙が自動で 流れ続けるようになる#照準は攻撃ボタンで操作#ドロップボタンで攻撃を 停止できる#使い魔も同様に攻撃する#↑ 連射速度 +0.7#↑ 射程　　 +3"
	-- English: "Isaac automatically shoots tears at a movable red target on the ground#Familiars shoot towards the target too#You can stop shooting and reset the target's location by pressing the drop button ({{ButtonRT}})"

	[C_ID .. 395] = "涙がチャージ式のレーザー リングに置き換わる#チャージ量に応じて リングのダメージと サイズがアップする", -- Tech X
	-- English: "Isaac's tears are replaced by a chargeable laser ring#Ring size and damage increases up to 100% with charge time"

	[C_ID .. 399] = "攻撃ボタンを押し続けて 2.35秒経過すると、頭に 十字架が浮かぶ 攻撃ボタンを解放すると ブリムストーンリングを 放出し、敵にダメージを 与える", -- Maw of the Void
	-- English: "{{Chargeable}} Firing tears for 2.35 seconds and releasing the fire button creates a black brimstone ring around Isaac#It deals 30x Isaac's damage over 2 seconds"

	[C_ID .. 401] = "25%の確率で涙が敵に くっ付き、数秒後に爆発#爆発は攻撃力+60の ダメージを与える", -- Explosivo
	-- English: "25% chance to shoot sticky tears#Sticky tears grow and explode after a few seconds, dealing Isaac's damage +60"

	[C_ID .. 405] = "攻撃ボタンをダブルタップ して発射する#衝突したピックアップ・ トリンケット・宝箱・敵を リロールする使い魔", -- GB Bug
	-- English: "{{Throwable}} Throwable (double-tap shoot)#Rerolls enemies and pickups it comes in contact with"

	[C_ID .. 407] = "ステータスを強化する オーラを付与#オーラの色と強化対象： {{ColorRed}}赤{{CR}}：攻撃力　 +4 {{ColorBlue}}青{{CR}}：連射速度 +2 {{ColorYellow}}黄{{CR}}：移動速度 +0.5 {{ColorOrange}}橙{{CR}}：射程　　 +3#ダメージを受けると オーラは消えるが、 部屋を移動すると ランダムな色で復活する", -- Purity
	-- English: "↑ Boosts one of Isaac's stats depending on the color of the aura#Taking damage removes the effect, and grants a new effect in the next room#{{ColorYellow}}Yellow{{CR}} = ↑ {{Speed}} +0.5 Speed#{{ColorBlue}}Blue{{CR}} = ↑ {{Tears}} +2 Fire rate#{{ColorRed}}Red{{CR}} = ↑ {{Damage}} +4 Damage#{{ColorOrange}}Orange{{CR}} = ↑ {{Range}} +3 Range"

	[C_ID .. 408] = "倒された敵が一定確率で ブリムストーンリングを 放ち、それに触れた他の 敵にダメージを与える#確率：運0=25%、30=100%", -- Athame
	-- English: "25% chance for a black brimstone ring to spawn around killed enemies#It deals 30x Isaac's damage over 2 seconds#{{Luck}} +2.5% chance per luck"

	[C_ID .. 416] = "コインの最大値が999に#部屋クリア時の報酬が 無かった時、代わりに、 コインが1～3枚スポーン", -- Deep Pockets
	-- English: "{{Coin}} If clearing a room would yield no reward, spawns 1-3 coins#{{Coin}} Increases the coin cap to 999"

	[C_ID .. 417] = "オーラを放ちながら 部屋を飛び回る使い魔#オーラ内では攻撃力が 50%アップする#オーラは範囲内の敵に 毎秒10ダメージを与える", -- Succubus
	-- English: "Bounces around the room surrounded by a damaging aura that deals 7.5-10 damage per second#↑ {{Damage}} x1.5 Damage multiplier while standing in the aura"

	[C_ID .. 421] = "敵をチャーム状態にする おならを放つ", -- Kidney Bean
	-- English: "{{Charm}} Charms all enemies in close range"

	[C_ID .. 422] = "時間を巻き戻し、一つ 前の部屋に、一つ前の 部屋の状態で戻る#{{Collectible66}} フロアにつき三回まで 使用でき、使い切ると 次のフロアまでの間、 砂時計に変化する", -- Glowing Hourglass
	-- English: "Brings Isaac back to the previous room and reverses all actions done in the room the item was used in#The rewind can be used three times per floor#{{Collectible66}} Acts as The Hourglass when out of rewinds, which slows enemies down for 8 seconds"

	[C_ID .. 432] = "爆発した爆弾が、63%の 確率でピックアップや トリンケットをスポーン#効果が発生するたび、その フロアでのスポーン確率が 1%減少する", -- Glitter Bombs
	-- Full old Desc: "爆弾 +5#爆発した爆弾が、63%の 確率でピックアップや トリンケットをスポーン#効果が発生するたび、その フロアでのスポーン確率が 1%減少する#爆発した爆弾が、15%の 確率で敵にチャームを 付与する"
	-- English: "{{Charm}} Bombs have a 63% chance to drop a random pickup and a 15% chance to charm enemies when they explode#The pickup spawn chance goes down by 1% for each spawn this floor"

	[C_ID .. 433] = "アイザックを追従する影に 敵が触れると、友好的な チャージャーがスポーン#チャージャーは敵に突進し、 接触ダメージを与える", -- My Shadow
	-- Full old Desc: "アイザックを追従する影に 敵が触れると、友好的な チャージャーがスポーン#チャージャーは敵に突進し、 接触ダメージを与える#チャージャーは部屋を移動 すると消滅"
	-- English: "A small shadow follows Isaac#{{Friendly}} When an enemy touches the shadow a friendly black charger spawns for the room"

	[C_ID .. 437] = "その部屋で倒した敵を リスポーンする#クリア報酬のスポーン、 アクティブアイテムの チャージも再度有効化 される", -- D7
	-- English: "Restarts a room and respawns all enemies#Can be used to get multiple room clear rewards from a single room"

	[C_ID .. 444] = "15回に1回、涙の弾幕が 発射されるようになる", -- Lead Pencil
	-- English: "Isaac shoots a cluster of tears every 15 tears"

	[C_ID .. 448] = "ダメージを受けた時、 25%の確率で赤ハートを 1個スポーンする#ダメージを受けると 出血が始まり、血液が 敵にダメージを与える#出血中、アイザックが 20秒おきにダメージを 受け、半赤ハート失う#赤ハートを拾うか、 赤ハートが空になると、 出血が止まる", -- Shard of Glass
	-- English: "Upon taking damage:#{{Heart}} 25% chance to spawn a Red Heart#{{BleedingOut}} Isaac bleeds, spewing tears in the direction he is shooting#The bleeding does half a Red Heart of damage every 20 seconds#The bleeding stops if a Red Heart is healed, all Red Hearts are empty, or the next damage would kill Isaac"

	[C_ID .. 450] = "20回に1回、涙と一緒に 金の涙が発射され、 コインを1枚消費する#金の涙は敵を黄金化し、 追加のダメージを与える#黄金化状態の敵を倒すと 1～3枚のコインが落ちる#コイン未所持の状態でも 金の涙は発射されるが、 追加ダメージは発生しない", -- Eye of Greed
	-- English: "{{Damage}} Every 20 tears, Isaac shoots a coin tear that deals x1.5 +10 damage#{{Petrify}} Enemies hit with the coin get petrified and turn into gold#{{Coin}} Killing a gold enemy drops 1-3 coins#{{Warning}} Firing a coin tear costs 1 coin"

	[C_ID .. 451] = "取得時、ランダムな カード・ルーンを1個 スポーンする", -- Tarot Cloth
	-- Full old Desc: "カードに追加の効果を 付与する#取得時、ランダムな カード・ルーンを1個 スポーンする"
	-- English: "{{Card}} Tarot card effects are doubled or enhanced"

	[C_ID .. 453] = "涙が骨に置き換わり、 衝突すると破片が散る", -- Compound Fracture
	-- Full old Desc: "↑ 射程 +1.5#涙が骨に置き換わり、 衝突すると破片が散る#破片はダメージが半減する"
	-- English: "Tears shatter into 1-3 bone shards upon hitting anything"

	[C_ID .. 464] = "部屋クリア時の報酬と、 チャンピオンタイプの 敵を倒した時の報酬が、 現在不足している物を 優先してスポーンする ように変更される", -- Glyph of Balance
	-- Full old Desc: "青ハート +2#部屋クリア時の報酬と、 チャンピオンタイプの 敵を倒した時の報酬が、 現在不足している物を 優先してスポーンする ように変更される"
	-- English: "Room clear rewards and champion enemy drops become whatever pickup Isaac needs the most"

	[C_ID .. 472] = "他の使い魔を従え、 自動攻撃させる使い魔#攻撃ボタン押下中、 他の使い魔と共に その場で停止し、 離すと戻ってくる", -- King Baby
	-- English: "Other familiars follow it and automatically shoot at enemies#Stops moving when Isaac shoots#Teleports back to Isaac when he stops shooting"

	[C_ID .. 474] = "チャージが溜まると ガラスの大砲に変化する", -- Broken Glass Cannon
	-- English: "Using the item turns it back into Glass Cannon"

	[C_ID .. 476] = "現在の部屋のランダムな ピックアップを、同種の 別のピックアップとして 1個複製する", -- D1
	-- English: "Duplicates a random pickup in the room#Duplicated pickups may not be identical to the original"

	[C_ID .. 477] = "!!! 部屋の全てのアイテムを 破壊して吸収する#アクティブアイテムを 吸収すると、次からの ボイド使用時に、その 効果を同時発動する#パッシブアイテムを吸収 すると、ステータスが ランダムに2つアップ", -- Void
	-- English: "Consumes all pedestal items in the room#Active items: Their effects activate with every future use of Void#↑ Passive items grant two random stat ups"

	[C_ID .. 489] = "ダイス系アイテムの 効果を全て使用可能#ドロップボタンで切替", -- D Infinity
	-- Full old Desc: "ダイス系アイテムの 効果を全て使用可能#ドロップボタンで切替#チャージ量は使用する ダイスで変動する"
	-- English: "Can be made to act as any die item (except {{Name723}}) with the drop button ({{ButtonRT}})#Charge time varies based on the last die used and updates with every use"

	[C_ID .. 493] = "↑ 空の赤ハートの量に 応じて攻撃力がアップ#{{EmptyHeart}} 1個：+0.3#{{EmptyHeart}} 2個：+0.92#{{EmptyHeart}} 3個：+1.76#{{EmptyHeart}} 4個：+2.79#{{Blank}} ：#{{Blank}} ：#{{EmptyHeart}} 11個：+14.05", -- Adrenaline
	-- English: "↑ {{Damage}} Damage up for every empty heart container#The more empty heart containers, the bigger the bonus for each new one"

	[C_ID .. 494] = "涙が衝突した時、火花 放電が発生し、近くの 敵を攻撃する#火花は攻撃力ｘ0.5の ダメージを与える", -- Jacob's Ladder
	-- English: "Tears spawn a spark of electricity on impact#Sparks deal half of Isaac's damage#Sparks can arc to up to 4 other enemies"

	[C_ID .. 495] = "炎は接触した敵に ダメージを与え、 弾をブロックする", -- Ghost Pepper
	-- Full old Desc: "攻撃中、一定確率で 青い炎を放つ#確率：運0=8%、10=50%#炎は接触した敵に ダメージを与え、 弾をブロックする#炎は2秒で燃え尽きる"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a blue fire that blocks enemy shots and deals contact damage#Fires shrink and disappear after 2 seconds"

	[C_ID .. 497] = "部屋に入った時、攻撃 ボタンを押すまでの間 アイザックを透明化し、 全ての敵を混乱させる#↑ 透明中、移動速度+0.5#透明化が解除された時、 近くの敵にダメージを 与え、火力が一定時間 アップする", -- Camo Undies
	-- English: "{{Confusion}} Entering a room camouflages Isaac and confuses all enemies until a tear is shot#↑ {{Speed}} +0.5 Speed while cloaked#Uncloaking deals damage around Isaac and grants a very brief fire rate and damage up"

	[C_ID .. 501] = "所持コイン25枚ごとに 最大体力を1増やす#99枚で最大+4#キーパーにも適用可能#{{Collectible416}} 深いポケット所有時、 100枚以上からは100枚 ごとに1追加される", -- Greed's Gullet
	-- English: "{{Heart}} +1 Heart container for every 25 coins Isaac has"

	[C_ID .. 503] = "確率：運0=5%、15=20%", -- Little Horn
	-- Full old Desc: "一定確率でビッグホーンを 召喚する涙が発射される#ビッグホーンは雑魚敵を 即死させ、ボスには36の ダメージを与える#確率：運0=5%、15=20%#アイザックに、毎秒7の 接触ダメージ効果を付与"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a tear that summons a Big Horn hand#The hand instantly kills enemies and deals 36 damage to bosses"

	[C_ID .. 504] = "3.5ダメージの涙で近くの 敵を自動攻撃するハエを スポーン", -- Brown Nugget
	-- Full old Desc: "3.5ダメージの涙で近くの 敵を自動攻撃するハエを スポーン"
	-- English: "Spawns a fly that shoots at enemies"

	[C_ID .. 506] = "涙が敵の背面に当たると ダメージが2倍になり、 出血状態が付与される#出血中の敵は5秒間、 移動速度に応じた ダメージを受け、  血だまりを生成する#血だまりに触れた 敵はダメージを受ける", -- Backstabber
	-- English: "{{BleedingOut}} Hitting an enemy in the back deals double damage and causes bleeding, which makes enemies leave creep and take damage when they move"

	[C_ID .. 507] = "部屋の全ての敵に ダメージを与える#ダメージ量は攻撃力+ 敵の最大体力の10%分#この効果でダメージを 与えた時、15%の確率で 半赤ハートをスポーン", -- Sharp Straw
	-- English: "{{Damage}} Deals Isaac's damage + 10% of the enemy's max health to all enemies#{{HalfHeart}} Dealing damage with the Straw can spawn half hearts"

	[C_ID .. 508] = "アイザックを周回する カミソリの使い魔#カミソリは接触した敵に 攻撃力ｘ1.5のダメージを 毎秒与え、出血状態にする#出血中の敵は5秒ごとに 最大体力の10%に相当 するダメージを受け、 血だまりを生成する#敵の弾をブロックする", -- Mom's Razor
	-- English: "{{BleedingOut}} Orbital that causes bleeding, which makes enemies take damage when they move#{{Damage}} Deals 1.5x Isaac's damage per second"

	[C_ID .. 509] = "目玉がアイザックを周回し、 敵に接触ダメージを与え、 弾をブロックする", -- Bloodshot Eye
	-- Full old Desc: "目玉がアイザックを周回し、 敵に接触ダメージを与え、 弾をブロックする#毎秒20の接触ダメージ#近くの敵に3.5ダメージの 涙を発射する"
	-- English: "Orbital that shoots a tear every 0.33 seconds to nearby enemies"

	[C_ID .. 514] = "敵と弾がランダムな 間隔で遅延する#遅延した弾は消滅する#25%の確率で部屋の クリア報酬が2倍になる", -- Broken Modem
	-- English: "Causes some enemies and projectiles to briefly pause at random intervals#Paused projectiles disappear#25% chance to double room clear rewards"

	[C_ID .. 517] = "爆弾を高速で連続設置 可能になる#爆弾が互いをノックバック しなくなる", -- Fast Bombs
	-- Full old Desc: "爆弾 +7#爆弾を高速で連続設置 可能になる#爆弾が互いをノックバック しなくなる"
	-- English: "Removes the delay between bomb placements#Bombs don't deal knockback to each other"

	[C_ID .. 522] = "使用後3秒間、敵の弾が アイザックの周囲で 一時停止する#3秒後に弾が跳ね返され、 6～7ダメージを与える#発動中、敵を押しのける", -- Telekinesis
	-- English: "Stops all enemy projectiles that come close to Isaac for 3 seconds and throws them away from him afterwards#Pushes close enemies away during the effect"

	[C_ID .. 523] = "部屋のピックアップと アイテムを、10個まで 保存して運べる#保存した状態で再使用 すると、中身をそこに 展開する", -- Moving Box
	-- English: "Stores up to 10 pickups and items from the current room#Using the item again drops everything back on the floor#Allows Isaac to move things between rooms"

	[C_ID .. 524] = "涙同士が電気ビームで  つながり、触れた敵に  攻撃力x0.3のダメージ を秒間15回与える", -- Technology Zero
	-- English: "Isaac's tears are connected with beams of electricity#Electricity deals 4.5x Isaac's damage per second"

	[C_ID .. 552] = "次のフロアにつながる トラップドアを生成#装飾のある床の上で 使用するとクロール スペースを生成する （草やゴミがある床）#!!! ある場所で使うと…？", -- Mom's Shovel
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)#{{Warning}} Use the shovel on the mound of dirt in the "Dark Room""

	[C_ID .. 553] = "攻撃中、25%の確率で 胞子が飛び、敵に付着する#胞子は2.5秒後に爆発し、 近くの敵に5ダメージと 毒を与え、さらに4個の 胞子を拡散する", -- Mucormycosis
	-- English: "25% chance to shoot a sticky spore tear#{{Luck}} Not affected by luck#{{Poison}} Spores blow up after 2.5 seconds, dealing damage, poisoning nearby enemies and releasing more spores"

	[C_ID .. 554] = "近くの敵を恐怖状態にする", -- 2Spooky
	-- English: "{{Fear}} Fears enemies in a small radius around Isaac"

	[C_ID .. 555] = "その部屋でのみ有効#{VAR:EFFECTLIST}", -- Golden Razor
	-- Full old Desc: "コインを5枚消費し、 攻撃力を1.2増やす#その部屋でのみ有効#取得時、コイン +5"
	-- English: "{{Timer}} Pay 5 {{Coin}} coins and receive for the room:#{VAR:EFFECTLIST}"

	[C_ID .. 556] = "同じ部屋で複数回使用 すると、そのたびに 攻撃力とサイズがアップ", -- Sulfur
	-- Full old Desc: "{{Collectible118}} その部屋にいる間、涙が ブリムストーンに変化#同じ部屋で複数回使用 すると、そのたびに 攻撃力とサイズがアップ"
	-- English: "{{Timer}} {{NameC118}} for the room#Using it multiple times in one room grants increased damage and a larger beam"

	[C_ID .. 557] = "おみくじ・青ハート・ カード・トリンケットの いずれかをスポーンする", -- Fortune Cookie
	-- English: "Grants one of the following rewards:#A fortune#{{SoulHeart}} A Soul Heart#{{Rune}} A Rune or Soul Stone#{{Card}} A Tarot card#{{Trinket}} A Trinket"

	[C_ID .. 558] = "一定確率で、1～3発の 追加の涙がランダムな 方向に発射される", -- Eye Sore
	-- English: "Chance to shoot 1-3 extra tears in random directions#{{Luck}} Not affected by luck"

	[C_ID .. 559] = "接近した敵に放電し、 攻撃力ｘ0.75の ダメージを秒間5回与える", -- 120 Volt
	-- English: "Repeatedly zaps nearby enemies#{{Damage}} Electricity deals up to 3.75x Isaac's damage per second#Sparks can arc to up to 4 other enemies"

	[C_ID .. 560] = "ダメージを受けると、 円形に10発の涙を放ち、 連射速度がアップする#最初に1.2、以降は0.4 ずつアップする#その部屋でのみ有効", -- It Hurts
	-- English: "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac"

	[C_ID .. 561] = "ワーム系トリンケット", -- Almond Milk
	-- Full old Desc: "↑ 連射速度 +400%#↓ 攻撃力　 -70%#以下の効果を一定間隔で ランダムに付与する：#ワーム系トリンケット#{{Collectible221}} ゴムセメント#{{Collectible5}} リフレクション#{{Collectible233}} ちっちゃな惑星"
	-- English: "Tears gain random worm trinket effects and some item effects"

	[C_ID .. 562] = "ステータスが 下がらなくなる", -- Rock Bottom
	-- English: "↑ Prevents stats from being lowered for the rest of the run"

	[C_ID .. 563] = "爆弾にランダムな 特殊効果を付与", -- Nancy Bombs
	-- Full old Desc: "爆弾 +5#爆弾にランダムな 特殊効果を付与"
	-- English: "Isaac's bombs explode with random effects"

	[C_ID .. 565] = "近くの敵を追いかけて攻撃 する使い魔#敵を一定数倒すと凶暴化し 敵味方なく無差別に攻撃を 始める#凶暴化中は、敵を10体倒す たびに赤ハートをスポーン する　　#アイザックから一定量の ダメージを与えられると 通常状態に戻る", -- Blood Puppy
	-- English: "Chases enemies#After killing 15 enemies, it deals more damage, spawns a half Red Heart every 10 kills, but tries to hurt Isaac#After killing 40 enemies, it deals even more damage, spawns full Red Hearts, and can destroy rocks#Dealing enough damage to it returns it to its first phase"

	[C_ID .. 566] = "フロア移動時の画面中に、 次のトレジャールームの アイテム・ボスの情報が 表示されるようになる#？状態のアイテムでも 確認できる#毎フロア開始時、 半青ハートを得る", -- Dream Catcher
	-- English: "{{HalfSoulHeart}} +1 half Soul Heart when entering a new floor#The stage transition nightmare reveals the next floor's boss fight and Treasure Room item"

	[C_ID .. 567] = "ダメージを受けずに 部屋をクリアするたび 連射速度が0.4アップ#最大5回アップ#ダメージを受けると リセットされる", -- Paschal Candle
	-- English: "↑ {{Tears}} Clearing a room without taking damage grants +0.4 Fire rate#Caps at +2 Fire rate {{ColorSilver}}(5 rooms){{CR}}"

	[C_ID .. 568] = "攻撃ボタンをダブルタップ するとシールドを展開する#シールドは弾を跳ね返し、 敵をノックバックさせる#持続1秒・再展開まで3秒", -- Divine Intervention
	-- English: "Double-tapping a fire key creates a shield#The shield lasts 1 second, pushes enemies away and reflects enemy projectiles and lasers"

	[C_ID .. 569] = "毎フロア開始時、短剣が 突き刺さり、赤ハートが 空または半個になるまで ダメージを受ける#失われた赤ハートの量に 応じて、各ステータスが アップする#↑ 攻撃力：+0.15*{{Heart}}^2#↑ 移動速度：+0.1*{{Heart}}", -- Blood Oath
	-- English: "{{Warning}} Entering a new floor drains all of Isaac's Red Hearts, but grants speed and damage bonuses for each heart lost#Each half heart lost counts as an individual hit for on-hit effects"

	[C_ID .. 570] = "涙にランダムな特殊効果と 色を付与する", -- Playdough Cookie
	-- English: "Each of Isaac's tears have a different color and status effect"

	[C_ID .. 571] = "青ハート +2", -- Orphan Socks
	-- Full old Desc: "トゲや液体などの、足元 からのダメージを無効化#↑ 移動速度 +0.3#青ハート +2"
	-- English: "Immune to creep and floor spikes"

	[C_ID .. 572] = "↓ 弾速　 -0.16", -- Eye of the Occult
	-- Full old Desc: "滞空する涙が攻撃方向に 連動して軌道を変える#↑ 攻撃力 +1#↑ 射程　 +2#↓ 弾速　 -0.16"
	-- English: "Isaac's tears can be controlled in mid-air"

	[C_ID .. 573] = "攻撃中、20%の確率で 追加の涙が発射され、 アイザックを周回する", -- Immaculate Heart
	-- Full old Desc: "体力全回復#最大体力 +1#↑ 攻撃力　 +20%#攻撃中、20%の確率で 追加の涙が発射され、 アイザックを周回する"
	-- English: "20% chance to shoot an extra orbiting spectral tear"

	[C_ID .. 574] = "アイザックがオーラを 放ち、範囲内の敵に ダメージを与える#オーラの中心に近付く ほどダメージ量が増加", -- Monstrance
	-- English: "Isaac is surrounded by a damaging aura#The closer enemies are to Isaac, the more damage the aura deals to them"

	[C_ID .. 575] = "クモが頭に寄生し、スロー 効果付き涙で敵を攻撃する#ダメージを受けた時、 一定確率でクモが飛び出し、 近くの敵を攻撃する （運4で確率100%）", -- The Intruder
	-- English: "{{Slow}} Buries itself in Isaac's head and shoots 4 extra slowing tears that deal 1.5 damage#Taking damage can make the spider exit the head and chase enemies"

	[C_ID .. 576] = "敵のうんちが味方になる#うんちを壊すと1～4匹の うんち使い魔がスポーン#特殊なうんちは特殊な うんち使い魔をスポーン#一定確率で岩がうんちに 置き換わる", -- Dirty Mind
	-- English: "All Dip (small poop) enemies are friendly#Destroying poop spawns 1-4 Dips#Dip type depends on the poop type#Rocks may be replaced with poop"

	[C_ID .. 577] = "使うと、アイザックの 頭上に剣が吊るされ、 以降、アイテムが倍に なってスポーンする#お店、宝箱、悪魔取引の アイテムは倍にならない#{{Warning}} ダメージを受けた後、 剣が一定確率で落下し、 アイザックが即死する#即死効果は無敵状態で 回避できる#落下確率は15分で50%", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 578] = "床にレモネードが広がり、 敵に毎秒24のダメージを 与える", -- Free Lemonade
	-- English: "Creates a large pool of yellow creep#The creep deals 24 damage per second"

	[C_ID .. 579] = "涙を剣による近接攻撃に 置き換える#剣は攻撃力ｘ3+3.5の ダメージを与え、体力が 十分な時、ビームを放つ#チャージで回転攻撃を 放ち、攻撃力ｘ3+3.5の ダメージを与える#回転攻撃と共にビームを 放ち、攻撃力ｘ4+4の ダメージを与える", -- Spirit Sword
	-- English: "Instead of shooting tears, swing a sword#{{Damage}} The sword deals 3x Isaac's damage +3.5 and swings as fast as the fire button is tapped#{{Chargeable}} Charging does a spin attack + projectile shot#Shoots projectiles with swings at full health"

	[C_ID .. 580] = "赤いドアの輪郭が表示 された壁に対して使用 すると、新しい部屋を 生成できる#10%の確率で特殊部屋が 生成される#13ｘ13の範囲外に生成　　 すると、I AM ERRORに つながる　　", -- Red Key
	-- English: "Creates a red room adjacent to a regular room, indicated by a door outline#Red Rooms can be special rooms#{{ErrorRoom}} Entering a room outside the 13x13 floor map teleports Isaac to the I AM ERROR room"

	[C_ID .. 581] = "敵の弾を追尾ブロックし、 接触した敵に毎秒15の ダメージを与える使い魔", -- Psy Fly
	-- Full old Desc: "敵の弾を追尾ブロックし、 接触した敵に毎秒15の ダメージを与える使い魔"
	-- English: "Chases and deflects enemy projectiles"

	[C_ID .. 582] = "画面が歪む#効果はスタック可能", -- Wavy Cap
	-- Full old Desc: "↑ 連射速度 +0.75#↓ 移動速度 -0.03#画面が歪む#効果はスタック可能"
	-- English: "Distorts the screen#Takes longer to recharge each use#Leaving or clearing rooms reduces the effects"

	[C_ID .. 583] = "攻撃しながら爆弾を設置 すると、ロケット爆弾が 攻撃方向に発射される", -- Rocket in a Jar
	-- Full old Desc: "爆弾 +5#攻撃しながら爆弾を設置 すると、ロケット爆弾が 攻撃方向に発射される"
	-- English: "Placing a bomb while shooting fires a rocket in that direction instead"

	[C_ID .. 584] = "ウィスプは透過効果付きの 涙を放ち、弾をブロックし、 敵に接触ダメージを与える#一定量のブロック・接触で 燃え尽きる#最初に現れる悪魔部屋を 天使部屋に置き換える", -- Book of Virtues
	-- Full old Desc: "ウィスプがスポーンし、 アイザックを周回する#ウィスプは透過効果付きの 涙を放ち、弾をブロックし、 敵に接触ダメージを与える#一定量のブロック・接触で 燃え尽きる#別のアクティブアイテムを 上に積み重ねると、特殊な ウィスプがスポーン#最初に現れる悪魔部屋を 天使部屋に置き換える#悪魔取引済みでも天使 部屋が生成可能になり、 その出現率を25%増やす"
	-- English: "Spawns an orbital wisp familiar that shoots spectral tears but can be destroyed#Can be combined with a second active item to create special wisps#{{AngelRoom}} Turns the first Devil Room into an Angel Room#{{AngelRoom}} Allows Angel Rooms to spawn after taking a Devil deal"

	[C_ID .. 585] = "天使部屋アイテムを2個、 青ハートを3個スポーン#悪魔取引済みの場合、 スポーン量が各1個減#チャージが空の状態で 始まり、通常の方法で チャージされない#青／黒ハートを取得時、 体力には追加されず、 代わりに、チャージが 2追加される", -- Alabaster Box
	-- English: "Must be charged by picking up Soul Hearts, then spawns:#{{SoulHeart}} Three Soul Hearts#{{AngelRoom}} Two Angel Room items#{{DevilRoom}} Only spawns 2 Soul Hearts and 1 Angel item if a Devil deal was taken previously"

	[C_ID .. 586] = "フロア開始時、天使部屋の お店につながるハシゴが スポーンする", -- The Stairway
	-- English: "Spawns a ladder in the first room of every floor that leads to a unique {{AngelRoom}} Angel Room shop with items and pickups"

	[C_ID .. 588] = "↑ 運　　 +1", -- Sol
	-- Full old Desc: "ボス部屋の位置が マッピングされる#ボスを倒すと、 現在のフロアで 以下の効果が発動：#{{Card20}} 太陽のカード効果#アクティブアイテムを フルチャージ#フロアの呪いを除去#↑ 攻撃力 +3#↑ 運　　 +1"
	-- English: "{{BossRoom}} Reveals the location of the Boss Room#{{Timer}} When the floor boss is defeated, receive for the floor:#{VAR:EFFECTLIST}#{{NameK20}} effect#{{Battery}} Fully recharges the active item#{{CurseBlind}} Removes any curses"

	[C_ID .. 589] = "各フロアに追加の隠し 部屋を生成する#隠し部屋の位置が一つ マップに表示される#追加された隠し部屋で 月明かりに照らされると 半青ハートと連射速度の アップ効果が付与される", -- Luna
	-- English: "Adds an extra {{SecretRoom}} Secret Room and {{SuperSecretRoom}} Super Secret Room to each floor#Reveals one Secret Room each floor#{{Timer}} Secret Rooms contain a beam of light that grant for the floor:#↑ {{Tears}} +0.5 Fire rate#↑ {{Tears}} Additional +0.5 Fire rate from the first beam per floor#{{HalfSoulHeart}} Half a Soul Heart"

	[C_ID .. 590] = "部屋に敵が居てもドアが 開いたままになる", -- Mercurius
	-- Full old Desc: "↑ 移動速度 +0.4#部屋に敵が居てもドアが 開いたままになる"
	-- English: "Most doors stay permanently open"

	[C_ID .. 591] = "接近した敵をチャーム 状態にする", -- Venus
	-- Full old Desc: "↑ 最大体力 +1#体力を1回復#接近した敵をチャーム 状態にする"
	-- English: "{{Charm}} Charms nearby enemies"

	[C_ID .. 592] = "涙が石に置き換わり、 障害物の破壊能力と、 追加のノックバック 効果を得る#涙のダメージが 0.5倍～2倍の範囲で ランダムに変動する", -- Terra
	-- Full old Desc: "↑ 攻撃力 +1#涙が石に置き換わり、 障害物の破壊能力と、 追加のノックバック 効果を得る#涙のダメージが 0.5倍～2倍の範囲で ランダムに変動する"
	-- English: "Replaces Isaac's tears with rocks#Rocks deal variable damage, can destroy obstacles and have increased knockback"

	[C_ID .. 593] = "移動ボタンをダブルタップ すると、突進攻撃が発動#突進中はダメージを受けず、 衝突した敵に攻撃力x4+8の ダメージを与える#3秒のクールダウン", -- Mars
	-- English: "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown"

	[C_ID .. 594] = "アイザックに毒耐性を付与", -- Jupiter
	-- Full old Desc: "体力を半ハート回復#↑ 最大体力 +2##↓ 移動速度 -0.3#静止中、一時的に移動 速度が上昇し、毒ガス がチャージされる#移動すると一時上昇した 移動速度が減少を始め、 同時に毒ガスを放出す#アイザックに毒耐性を付与"
	-- English: "{{Speed}} Speed builds up to +0.5 while standing still#{{Poison}} Moving releases poison clouds#{{Poison}} Poison immunity"

	[C_ID .. 595] = "部屋に入ると、涙の円が アイザックを取り囲む#一定確率で敵の弾を円に 取り込める#涙の円はうんちやTNT、 炎を破壊しない", -- Saturnus
	-- English: "Entering a room causes 7 tears to orbit Isaac#Those tears last for 13 seconds and deal 1.5x Isaac's damage +5#Enemy projectiles have a chance to orbit Isaac"

	[C_ID .. 596] = "涙が氷柱に置き換わり、 倒された敵が凍結する#凍結した敵は砕けると 10個の氷柱を拡散する#拡散した氷柱はスロー 効果を持ち、倒した敵 を凍結させる#凍結は、分裂や爆発等、 死を条件にした効果を 無効にする", -- Uranus
	-- English: "{{Freezing}} Isaac shoots petrifying tears that freeze enemies on death#Touching a frozen enemy makes it slide away and explode into 10 ice shards"

	[C_ID .. 597] = "攻撃していない間に涙を 溜め込み、攻撃再開時に 大量放出できる", -- Neptunus
	-- English: "{{Tears}} Not shooting builds up a tear bonus over 3 seconds#The tear bonus decreases as Isaac shoots"

	[C_ID .. 598] = "アイザックが大幅に縮み、 障害物のすき間などに 入り込めるようになる#高さのある弾は、頭上を 通過し、ヒットしない", -- Pluto
	-- Full old Desc: "↑ 連射速度 +0.7#アイザックが大幅に縮み、 障害物のすき間などに 入り込めるようになる#高さのある弾は、頭上を 通過し、ヒットしない"
	-- English: "Significantly shrinks Isaac, allowing him to squeeze between objects#Projectiles can pass over him"

	[C_ID .. 599] = "各フロアに追加の呪いの 部屋を生成する#呪いの部屋の報酬が改善#呪いの部屋に必ず コインがスポーンする", -- Voodoo Head
	-- English: "{{CursedRoom}} Spawns an additional Curse Room each floor#Improves Curse Room layouts and rewards#{{Coin}} Spawns a coin in every Curse Room"

	[C_ID .. 601] = "赤ハートにダメージを 受けた時のペナルティ (悪魔部屋の出現率減) を最大65%軽減する", -- Act of Contrition
	-- Full old Desc: "↑ 連射速度 +0.7#白ハート +1#悪魔取引済みでも天使 部屋が生成可能になる#赤ハートにダメージを 受けた時のペナルティ (悪魔部屋の出現率減) を最大65%軽減する"
	-- English: "{{AngelChance}} Allows Angel Rooms to spawn after taking a devil deal#Taking Red Heart damage doesn't reduce Devil/Angel Room chance as much"

	[C_ID .. 602] = "お店にトラップドアが 生成され、地下店舗が 利用可能になる#地下店舗のアイテムは 複数のアイテムプール から選択される", -- Member Card
	-- English: "{{Shop}} Opens a trapdoor in every Shop#The trapdoor leads to an underground shop that sells trinkets, runes, cards, special hearts and items from any pool"

	[C_ID .. 604] = "障害物を持ち上げて 投げつけられる#持ち上げた状態で 部屋を移動できる", -- Mom's Bracelet
	-- English: "Allows Isaac to pick up and throw rocks, TNT, poops, friendly Dips, Hosts and other obstacles#Allows carrying them between rooms"

	[C_ID .. 607] = "涙をまき散らして攻撃する 使い魔", -- Boiled Baby
	-- Full old Desc: "涙をまき散らして攻撃する 使い魔#涙は3.5か5.25のダメージを 与える"
	-- English: "Shoots chaotic bursts of tears in all directions"

	[C_ID .. 608] = "石化と凍結効果を持つ 氷柱で攻撃する使い魔", -- Freezer Baby
	-- English: "{{Petrify}} Shoots petrifying tears that deal 3.5 damage#{{Freezing}} Freezes enemies upon killing them"

	[C_ID .. 609] = "部屋の全てのアイテムを リロールする#リロール時、25%の確率で アイテムが消滅する", -- Eternal D6
	-- English: "Rerolls all pedestal items in the room#Has a 25% chance to delete items instead of rerolling them"

	[C_ID .. 610] = "ダメージを受けると 頭から鳥が飛び立ち、 敵に体当たりをする#体当たりは敵に45の ダメージを与え、 地割れを発生させる#体当たり後、敵を追い かけて攻撃し始める", -- Bird Cage
	-- English: "Leaps on the enemy that deals the first damage to Isaac in a room#Deals 45 damage and releases a rock wave#Chases enemies afterwards for 6.5 contact damage per second"

	[C_ID .. 611] = "叫びの衝撃波で攻撃する#フルチャージではない 状態でも使用でき、 チャージ量に応じた 攻撃範囲とダメージを 与える#ダメージを受けた時、 チャージが1回復する", -- Larynx
	-- English: "Isaac screams, damages and knocks back nearby enemies#The scream gets stronger the more charges the item has"

	[C_ID .. 612] = "アイザックの背後に一撃で 死ぬ幽霊の使い魔が憑く#次のフロアまで幽霊が 生き残った時、以下の いずれかをスポーンする#青ハート3個#白ハート2個#トレジャールームか 天使部屋のアイテム1個#死んだ幽霊は次の フロアでリスポーン", -- Lost Soul
	-- English: "Dies in one hit and respawns at the start of the next floor#If it is brought alive to the next floor, it can spawn:#{{SoulHeart}} 3 Soul Hearts#{{EternalHeart}} 2 Eternal Hearts#{{TreasureRoom}} A Treasure Room item#{{AngelRoom}} An Angel Room item"

	[C_ID .. 614] = "爆弾が血だまりを生成し 敵にダメージを与える#爆弾を所持していない時、 代わりに半ハートを消費 して爆弾を設置できる", -- Blood Bombs
	-- Full old Desc: "↑ 最大体力 +1#体力を4回復#爆弾が血だまりを生成し 敵にダメージを与える#爆弾を所持していない時、 代わりに半ハートを消費 して爆弾を設置できる#赤ハートから優先消費"
	-- English: "{{HalfHeart}} If Isaac has no bombs, one can be placed at the cost of half a heart#Isaac's bombs leave red creep"

	[C_ID .. 615] = "敵か弾がアイザックに 接近した時、おならを 出してそれを跳ね返す#一度おならを出すと、 アイザックが再接触 するまで停止する", -- Lil Dumpy
	-- English: "Deflects an enemy or projectile right before Isaac would take damage from it#Chance to deflect projectiles near it#Needs to be touched after deflecting to be reactivated"

	[C_ID .. 616] = "炎は接触した敵に ダメージを与え、 弾をブロックする", -- Bird's Eye
	-- Full old Desc: "攻撃中、一定確率で 赤い炎を放つ#確率：運0=8%、10=50%#炎は接触した敵に ダメージを与え、 弾をブロックする#接触／ブロックを 4回行うと消滅する#10秒の経過でも消滅"
	-- English: "{VAR:LUCKCHANCE}% chance to shoot a red fire that blocks enemy shots and deals contact damage#Fires disappear after blocking 4 shots, dealing damage 4 times or after 10 seconds"

	[C_ID .. 617] = "確率：運0=17%、5=100%", -- Lodestone
	-- Full old Desc: "一定確率で敵を磁化する 涙を放つ#磁化した敵は近くの敵と 弾、ピックアップを引き 寄せる　　#確率：運0=17%、5=100%"
	-- English: "{{Magnetize}} {VAR:LUCKCHANCE}% chance to shoot magnetizing tears#Magnetized enemies attract nearby pickups, projectiles and enemies"

	[C_ID .. 618] = "確率：運0=17%、4=100%", -- Rotten Tomato
	-- Full old Desc: "一定確率で涙に標的化 効果を付与する#標的化した敵は、他の 敵から攻撃される#確率：運0=17%、4=100%"
	-- English: "{{Bait}} {VAR:LUCKCHANCE}% chance to shoot tears that mark enemies#Marked enemies are targeted by other enemies"

	[C_ID .. 619] = "キャラクターごとに 異なる能力を付与", -- Birthright
	-- English: "Has a different effect for each character"

	[C_ID .. 621] = "体力を全回復", -- Red Stew
	-- Full old Desc: "↑ 攻撃力 +21.6（一時的）#アップした攻撃力は徐々に 減少し、3分間で0になるが、 敵を倒すと効果が延長する#体力を全回復"
	-- English: "The damage up wears off over 3 minutes#Killing enemies while the effect is active extends it"

	[C_ID .. 622] = "アイザックを初期状態に リセットし、特殊な部屋 にテレポートさせる#リセットで失った全ての アイテムを、3つの選択肢 からそれぞれ選び直す#部屋から離れると、次の フロアに直行する", -- Genesis
	-- English: "Removes all of Isaac's items and pickups#Teleports Isaac to a bedroom with pickups and chests#For every item removed, Isaac can choose between 3 items from the same pool#Leaving the bedroom takes Isaac to the next floor"

	[C_ID .. 623] = "鍵を投げて敵の攻撃や ドア・宝箱の開放、 障害物の破壊ができる#鍵で敵を倒すと、一定 確率で宝箱アイテムを スポーンする", -- Sharp Key
	-- Full old Desc: "鍵 +5#鍵を投げて敵の攻撃や ドア・宝箱の開放、 障害物の破壊ができる#鍵で敵を倒すと、一定 確率で宝箱アイテムを スポーンする"
	-- English: "Throws one of Isaac's keys in the direction he shoots#Thrown keys deal damage, destroy obstacles, and open doors#Enemies killed with keys can spawn the contents of a chest, including items"

	[C_ID .. 625] = "{VAR:TIMEDEFFECT}", -- Mega Mush
	-- Full old Desc: "30秒間巨大化し、攻撃力と 射程が大幅にアップ#無敵状態になり、障害物や ドア、敵を粉砕できる#効果はフロア間で持続する"
	-- English: "{VAR:TIMEDEFFECT}#Gigantifies Isaac#Ability to crush enemies and obstacles#Persists between rooms and floors"

	[C_ID .. 627] = "涙の発射方向に連動して ナイフが発射され、敵に 25ダメージを与える", -- Knife Piece 2
	-- Full old Desc: "ナイフピース1と合成 すると、ナイフが現れる#涙の発射方向に連動して ナイフが発射され、敵に 25ダメージを与える#マウソレウム／ゲヘナで 肉のドアを開くと消滅"
	-- English: "Turns into a throwable knife that deals 25 damage when combined with {{NameC626}}#The knife can open a door made of flesh"

	[C_ID .. 628] = "ゲーム内に存在する、ほぼ 全てのアイテムが置かれた 特殊フロアにテレポート#アイテムを一つ取ると元に 居た場所へ戻る", -- Death Certificate
	-- English: "Teleports Isaac to a floor that contains every item in the game#Choosing an item from this floor teleports Isaac back to the room he came from"

	[C_ID .. 629] = "アイザックを周回し、 シールド付きの涙で 敵の弾をブロックする 使い魔　　", -- Bot Fly
	-- Full old Desc: "アイザックを周回し、 シールド付きの涙で 敵の弾をブロックする 使い魔　　#毎秒3の接触ダメージ"
	-- English: "Shoots shielded tears to destroy enemy projectiles"

	[C_ID .. 631] = "敵を二分割し、体力が 40%のミニサイズにする#分裂するタイプの敵を 即座に分裂させる#分割できない敵には 25ダメージを与える", -- Meat Cleaver
	-- English: "Splits all enemies in the room into 2 smaller versions with 40% health#Enemies that naturally split (like Envy) take enough damage to split instead#Deals 25 damage to enemies that can't be split"

	[C_ID .. 632] = "火傷・混乱・恐怖・毒への 耐性を付与する", -- Evil Charm
	-- Full old Desc: "↑ 運 +2#火傷・混乱・恐怖・毒への 耐性を付与する"
	-- English: "Immune to {{Burning}} burn, {{Confusion}} confusion, {{Fear}} fear, and {{Poison}} poison effects"

	[C_ID .. 634] = "バトル中、床に亀裂が 生成され、上を歩くと 幽霊がスポーンする#幽霊は敵に突撃して 爆発する　　", -- Purgatory
	-- English: "Red cracks spawn on the ground in hostile rooms#Walking over the cracks summons homing exploding ghosts"

	[C_ID .. 635] = "保持中、攻撃方向に連動 して移動する人形が現れる#使用すると、アイザックと 人形の位置が入れ替わり、 一時的に無敵状態になる#敵の位置にテレポートした 場合、攻撃力ｘ3+40の接触 ダメージを与える#人形は接触した敵に毎秒3の ダメージを与える", -- Stitches
	-- English: "Spawns a familiar that moves in the direction Isaac shoots#On use, Isaac swaps places with the familiar and becomes briefly invincible#Teleporting onto things can damage or destroy them"

	[C_ID .. 636] = "アイザックを現在の状態の まま最初のフロアに戻す （強くてニューゲーム）", -- R Key
	-- English: "Restarts the entire run#All items, trinkets, stats and pickups collected are kept#The timer does not reset"

	[C_ID .. 637] = "確率：運0=10%、8=100%", -- Knockout Drops
	-- Full old Desc: "一定確率で涙が拳に置き 換わり、敵を強くノック バックさせ、混乱状態に する　　#この効果で壁や障害物に 衝突した敵はダメージを 受ける　#確率：運0=10%、8=100%"
	-- English: "{{Confusion}} {VAR:LUCKCHANCE}% chance to shoot a fist that inflicts confusion and extreme knockback#Enemies take damage when they get knocked into a wall/obstacle"

	[C_ID .. 638] = "投げた消しゴムが敵に 当たると、以降、その 敵がスポーンしなくなる#通常の方法でチャージ されず、フロア移動時 にのみチャージされる#ボスには15ダメージを 与える　　", -- Eraser
	-- English: "Throws an eraser that instantly kills an enemy#Prevents the erased enemy from spawning for the rest of the run#Deals 15 damage to bosses#Can only be used once per floor"

	[C_ID .. 640] = "火炎放射で攻撃する#敵を倒すとチャージ回復", -- Urn of Souls
	-- English: "Spews a stream of flames#Killing an enemy adds a charge to the urn"

	[C_ID .. 641] = "バトル中、アイザックの 背後に涙が連なり、各涙が 3.5のダメージを与える", -- Akeldama
	-- English: "Creates a chain of tears behind Isaac in hostile rooms#The tears deal 3.5 damage"

	[C_ID .. 642] = "その部屋のアイテムプール から、アイテムを一つ生成#最大体力1か骨ハート1個、 または青／黒ハート2個を、 壊れたハート1個に変換#消費優先順位は赤＞骨＞青#使用後にこれを手放すと、 スポーンするアイテムが 一定確率でこれに置き換え られるようになる#確率は1回の使用で33%、 2回で50%、3回以上で100%#現フロアのどこかにこの アイテムが存在する場合、 置き換え確率が低下する", -- Magic Skin
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Turns 1 heart container or 1 Bone Heart or 2 Soul Hearts into a Broken Heart#{{Warning}} Replaces future items if Isaac isn't holding it {{ColorSilver}}(33% after 1 use, 50% after 2, 100% after 3)#Lower chance if Magic Skin is on a pedestal on the current floor"

	[C_ID .. 643] = "攻撃ボタンを押し続けて 2.35秒以上経過すると、 ボタン解放時にレーザー 攻撃を放つ", -- Revelation
	-- Full old Desc: "飛行能力を付与#青ハート +2#攻撃ボタンを押し続けて 2.35秒以上経過すると、 ボタン解放時にレーザー 攻撃を放つ"
	-- English: "{{Chargeable}} Chargeable high damage holy beam#Does not replace Isaac's tears"

	[C_ID .. 644] = "連射速度・移動速度・ 攻撃力・射程の中で、 最も低いステータス 一つをアップする#所持量が最も少ない ピックアップ一つを 選び、コイン3枚・ 爆弾1個・鍵1個の いずれかをスポーン", -- Consolation Prize
	-- English: "↑ Increases Isaac's lowest stat out of Speed, Fire rate, Damage, and Range#Spawns either 3 {{Coin}} coins, 1 {{Bomb}} bomb, or 1 {{Key}} key depending on what Isaac has the least of"

	[C_ID .. 645] = "テラトーマがアイザックを 周回する#接触・ブロックを3回 行うと、二分割される#分割後、破壊されると 青クモを3匹スポーンし、 5秒後にリスポーンする", -- Tinytoma
	-- Full old Desc: "テラトーマがアイザックを 周回する#接触した敵にダメージを 与え、弾をブロックする#接触・ブロックを3回 行うと、二分割される#分割後、破壊されると 青クモを3匹スポーンし、 5秒後にリスポーンする"
	-- English: "Large orbital that blocks shots#Splits into smaller versions of itself upon taking 3 hits#The smaller versions break into blue spiders#Respawns 5 seconds after fully disappearing"

	[C_ID .. 646] = "爆発した爆弾が十字方向に ブリムストーンレーザーを 放つようになる", -- Brimstone Bombs
	-- Full old Desc: "爆弾 +5#爆発した爆弾が十字方向に ブリムストーンレーザーを 放つようになる"
	-- English: "{{Collectible118}} Isaac's bombs release a 4-way blood beam#The beams don't hurt Isaac"

	[C_ID .. 647] = "アクティブアイテムが 部屋クリアでチャージ されなくなる代わりに、 敵にダメージを与える ことでチャージされる ようになる#フルチャージに必要な ダメージ量は、フロア ごとに増加する", -- 4.5 Volt
	-- English: "Clearing rooms no longer charges active items#Dealing damage to enemies slowly fills up the charge bar#Damage needed per charge increases each floor"

	[C_ID .. 649] = "部屋を斜めに飛び回り ながら涙を連射する、 ミニ・ベビープラムの", -- Fruity Plum
	-- Full old Desc: "部屋を斜めに飛び回り ながら涙を連射する、 ミニ・ベビープラムの#涙で3、接触で毎秒6の ダメージを与える"
	-- English: "Propels herself diagonally around the room, firing tears in her path that deal 3 damage"

	[C_ID .. 650] = "ベビープラムが召喚され、 10秒間敵と戦う", -- Plum Flute
	-- English: "{{Timer}} Summons a friendly Baby Plum in the room for 10 seconds"

	[C_ID .. 651] = "ボス部屋に向かって自律 移動し、到達すると停止 する使い魔#使い魔の範囲内：#↑ 攻撃力　 +80%#{VAR:EFFECTLIST}", -- Star of Bethlehem
	-- Full old Desc: "ボス部屋に向かって自律 移動し、到達すると停止 する使い魔#使い魔の範囲内：#↑ 攻撃力　 +80%#↑ 連射速度 +150%#涙にホーミング効果を付与#50%の確率でダメージ無効"
	-- English: "Slowly travels from the first room of the floor to the {{BossRoom}} Boss Room#Moves faster if you're ahead of it, and slower if you're behind it#Standing in its aura grants:#{VAR:EFFECTLIST}#50% chance to ignore damage"

	[C_ID .. 652] = "接触した敵にダメージと スロー効果を与え、敵を 倒した場合は凍結させる 使い魔　　#速度に応じて最大17.5の 接触ダメージを与える#自ら動けず、アイザック との接触や、敵の弾の ブロックでスライドする", -- Cube Baby
	-- English: "Can be kicked around by walking into it#{{Slow}} Slows and deals up to 17.5 contact damage depending on speed#{{Freezing}} Freezes enemies it kills"

	[C_ID .. 653] = "保持中、倒された敵が 赤い幽霊を残す#アイテムを使用すると 赤い幽霊が爆発し、 敵にダメージを与える#残り体力が50%以下の、 幽霊タイプの敵を即死 させる（ボスを含む）", -- Vade Retro
	-- English: "Holding the item causes non-ghost enemies to spawn small red ghosts on death#Using the item causes the ghosts to explode#Using the item also kills any ghost enemies (including bosses) that have less than 50% HP left"

	[C_ID .. 655] = "コマがアイザックを周回し、 敵に接触ダメージを与え、 弾をブロックする#{VAR:ONUSEEFFECT}", -- Spin to Win
	-- Full old Desc: "コマがアイザックを周回し、 敵に接触ダメージを与え、 弾をブロックする#毎秒10.5の接触ダメージ#使用すると、コマと他の 使い魔が高速で周回し、 接触ダメージが強化され、 移動速度が0.5アップする"
	-- English: "Passively grants an orbital that blocks enemy shots and deals 10.5 contact damage per second#{VAR:ONUSEEFFECT}#{{IND}}Increases speed and damage of orbitals"

	[C_ID .. 656] = "使うと、アイザックの 頭上に剣が吊るされ、 以降、アイテムが倍に なってスポーンする#お店、宝箱、悪魔取引の アイテムは倍にならない#{{Warning}} ダメージを受けた後、 剣が一定確率で落下し、 アイザックが即死する#即死効果は無敵状態で 回避できる#落下確率は15分で50%", -- Damocles
	-- English: "Hangs a sword above Isaac's head, which doubles all pedestal items#Does not double items that have a price or come from chests#{{Warning}} After taking any damage, the sword has an extremely low chance to instantly kill Isaac every frame#Invincibility effects can prevent the death"

	[C_ID .. 657] = "倒された敵が涙を拡散する#拡散する涙はアイザックの 持つ特殊効果を引き継ぐ", -- Vasculitis
	-- English: "Enemies explode into tears upon death, which inherit the effects of Isaac's tears"

	[C_ID .. 658] = "ダメージを受けるたびに マイクロ・アイザックが スポーンし、近くの敵を 追いかけ攻撃する", -- Giant Cell
	-- English: "Taking damage spawns a Minisaac#Minisaacs chase and shoot at nearby enemies"

	[C_ID .. 660] = "フロア開始時、ポータルが 二つ生成される#部屋を離れるとポータルは 消滅する#ポータルの色と行き先：#{{ColorRed}}赤：{{CR}}{{BossRoom}}ボス部屋#{{ColorYellow}}黄：{{CR}}{{TreasureRoom}}トレジャールーム#{{ColorBlue}}青：{{CR}}{{SecretRoom}}隠し部屋", -- Card Reading
	-- English: "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room"

	[C_ID .. 661] = "敵を倒すと、その場に固定 された使い魔がスポーンし、 連動して攻撃する#最大5匹までスポーンする", -- Quints
	-- English: "Killing an enemy spawns a stationary familiar in its place#Caps at 5 familiars"

	[C_ID .. 663] = "6秒おきに1秒間、無敵 状態になり、40の接触 ダメージ効果を得る", -- Tooth and Nail
	-- English: "1 second of invincibility every 6 seconds#Isaac flashes right before the effect triggers"

	[C_ID .. 664] = "アイテムが食品タイプの アイテムとの二択状態で スポーンする#食品タイプのアイテムを 取得すると、以下の追加 効果を付与する：#↑ 攻撃力　 +3.6", -- Binge Eater
	-- Full old Desc: "↑ 最大体力 +1#体力全回復#アイテムが食品タイプの アイテムとの二択状態で スポーンする#食品タイプのアイテムを 取得すると、以下の追加 効果を付与する：#体力を3回復#↑ ステータスを二つアップ#↓ 移動速度 -0.03#↑ 攻撃力　 +3.6#攻撃力のアップは30秒で フェードアウト"
	-- English: "Item pedestals cycle between their item and a food item#Picking up a food item grants:#{{HealingRed}} Heal 2 hearts#↑ {{Damage}} Temporary +3.6 damage#↑ 2 permanent stat ups (depending on the food)#↓ {{Speed}} -0.03 speed"

	[C_ID .. 665] = "宝箱・焚き火・サック・ 店主の中身を透視できる", -- Guppy's Eye
	-- English: "Reveals the contents of {{Chest}} chests, {{GrabBag}} sacks, shopkeepers, and fireplaces before they're opened or destroyed"

	[C_ID .. 667] = "取得時、爆弾を1個付与", -- Strawman
	-- Full old Desc: "セカンドキャラとして キーパーをスポーンする#死亡時、5匹の青クモを スポーンする#!!! アイテムを取得できるが、 死ぬと共に消滅する為、 ストーリー進行に必要な アイテムは注意#キーパーが生きている間、 悪魔部屋の取引コストは コインになる#取得時、爆弾を1個付与"
	-- English: "{{Player14}} Spawns Keeper as a second character#When he dies, spawns blue spiders and permanently removes Strawman and any item that he has picked up from the inventory#{{DevilRoom}} Devil Room items cost coins while Strawman is alive#{{Warning}} Strawman can pick up story items"

	[C_ID .. 668] = "アセントへ移行する", -- Dad's Note
	-- English: "Begins the Ascent#Trinkets left in previous {{TreasureRoom}} Treasure or {{BossRoom}} Boss Rooms turn into {{Card78}} Cracked Keys"

	[C_ID .. 670] = "部屋クリア時の報酬が 二択になる", -- Options?
	-- English: "Allows Isaac to choose from two different room clear rewards"

	[C_ID .. 671] = "赤ハートを取得し、体力が 回復すると、ステータスが ランダムに一つアップする#取得時、赤ハートを1個 スポーン", -- Candy Heart
	-- English: "↑ Healing with {{Heart}} Red Hearts grants random permanent stat ups#{{Heart}} Spawns a Red Heart"

	[C_ID .. 672] = "ブラックマーケットと 悪魔部屋の取引コストが コインになる#お店のアイテム価格が コインではなくハート になる　　#お店のピックアップは 無料で取得できるが、 トゲでダメージを受ける", -- A Pound of Flesh
	-- English: "{{DevilRoom}} Devil Room items cost coins#{{Shop}} Shop items cost hearts#Consumables in Shops are surrounded by spikes"

	[C_ID .. 673] = "悪魔部屋に入り、何も取得 せずに次のフロアに行くと、 攻撃力が1アップし、1個の 青ハートが付与される#{VAR:EFFECTLIST}", -- Redemption
	-- Full old Desc: "悪魔部屋に入り、何も取得 せずに次のフロアに行くと、 攻撃力が1アップし、1個の 青ハートが付与される"
	-- English: "{{DevilRoom}} Entering a new floor after visiting a Devil Room and not taking any item/pickup grants:#{VAR:EFFECTLIST}"

	[C_ID .. 674] = "死ぬと、半ハートの体力で 幽霊に変化し、死体に鎖で つながれる#幽霊状態で10秒経過すると 復活する#復活後は、青／黒ハートを 1個取得しなければ、次の 復活効果が機能しない", -- Spirit Shackles
	-- English: "Taking fatal damage transforms Isaac into a ghost chained to his dead body and allows him to continue to fight with half a heart#If the ghost survives, Isaac revives after 10 seconds#Must be recharged by picking up a Soul Heart"

	[C_ID .. 675] = "ダメージを受けた時：#その部屋の全ドアを開く#隣接する隠し部屋を開く#クロールスペースがある 岩と、ｘ岩を破壊する#離れ隠し部屋を含む、 ランダムな部屋一つを マッピング ", -- Cracked Orb
	-- English: "Taking damage:#Unlocks all locked doors in the room#Reveals a random room on the map#Destroys all tinted and crawlspace rocks"

	[C_ID .. 676] = "赤ハートが1以下の状態で フロアを移動した時：#↑ 最大体力 +1", -- Empty Heart
	-- English: "{{EmptyHeart}} +1 Empty heart container when at 1 Red Heart or less at the start of a new floor"

	[C_ID .. 677] = "未クリアの部屋で最初に ダメージを受けた時、 幽体離脱し、時間が 2秒間止まる#幽体離脱中は飛行能力と 透過の涙が付与され、 次に受けるダメージを 無効にする#部屋のクリアか、再度 ダメージを受けると、 幽体離脱が解除される", -- Astral Projection
	-- English: "{{Timer}} Taking damage in an uncleared room grants for the fight:#Spectral tears#Flight#Negates the next damage taken#Stops time for 2 seconds#Greatly increases speed and fire rate for 2 seconds"

	[C_ID .. 678] = "涙が胎児に置き換わる#胎児はホーミングと 貫通・透過効果を持ち、 攻撃力ｘ2.8のダメージを 毎秒与える", -- C Section
	-- English: "{{Chargeable}} Replaces Isaac's tears with a charge attack that shoots homing, spectral fetus tears#{{Damage}} Fetus tears deal about 2.8x Isaac's damage per second"

	[C_ID .. 679] = "ブリムストーンリングで 攻撃する使い魔#リングは最大52.5の ダメージを与える", -- Lil Abaddon
	-- English: "{{Collectible399}} Familiar that charges and unleashes a Maw of the Void circle#It deals 52.5 damage over 1 second"

	[C_ID .. 680] = "攻撃ボタンを押し続けて 2.35秒以上経過すると、 ボタン解放時、短射程の レーザー攻撃とコーンを 背後に放つ", -- Montezuma's Revenge
	-- English: "{{Chargeable}} Firing charges up a short-ranged high damage backwards beam#Does not replace Isaac's tears"

	[C_ID .. 681] = "涙の発射方向に連動して 飛び出し、接触した敵に ダメージを与える使い魔#飛行中、ピックアップを 青ハエに変換し、自身の サイズと接触ダメージを アップする#ピックアップを4個変換 すると、未探索の部屋に 繋がるポータルを生成し、 初期サイズに戻る", -- Lil Portal
	-- English: "Deals contact damage and flies forward#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming four pickups spawns a portal to an unexplored room"

	[C_ID .. 682] = "敵に絡みつき、毎秒8の ダメージとスロー効果を 与え、動きを4秒間止める ワームの使い魔", -- Worm Friend
	-- English: "Sometimes bursts out of the ground and grabs an enemy#Grabbed enemies take 8 damage per second, are slowed and cannot move"

	[C_ID .. 683] = "倒された敵が、1～2個の 骨をスポーンする#骨はその場に浮遊し、接触 した敵にダメージを与え、 弾をブロックする#2回の接触／ブロックで 骨は消滅する", -- Bone Spurs
	-- English: "Enemies spawn bone shards on death#Bones block projectiles and deal contact damage"

	[C_ID .. 684] = "倒された敵が33%の確率で 幽霊をスポーンする#幽霊は敵を追いかけ攻撃し、 7秒後に爆発する#アイザックはこの爆発で ダメージを受けない", -- Hungry Soul
	-- English: "Killing an enemy has a chance to spawn a ghost#Ghosts chase enemies, deal contact damage and explode after 5 seconds#Isaac doesn't take damage from the explosion"

	[C_ID .. 685] = "ウィスプがスポーンし、 アイザックを周回する#使用するたびに一度に スポーンする数が増え、 最大12まで達する#ウィスプは透過効果付きの 涙を放ち、弾をブロックし、 敵に接触ダメージを与える#一定量のブロック・接触で 燃え尽きる", -- Jar of Wisps
	-- English: "Spawns a random wisp#Spawns one additional wisp with each use, up to 12"

	[C_ID .. 686] = "青／黒ハートを拾った時、 ステータスがランダムに 一つアップする", -- Soul Locket
	-- Full old Desc: "青／黒ハートを拾った時、 ステータスがランダムに 一つアップする#取得時、青ハートを1個 スポーンする"
	-- English: "↑ Picking up {{SoulHeart}} Soul Hearts grants random permanent stat ups"

	[C_ID .. 687] = "アイザックの移動と攻撃を 模倣する、友好的な敵を スポーン", -- Friend Finder
	-- English: "{{Friendly}} Spawns a random friendly monster that mimics Isaac's movements and attacks"

	[C_ID .. 688] = "死ぬと、現在の部屋に 半ハートの体力で復活する#移動速度が0.2アップし、 アイザックのサイズが縮む#復活地点で血の爆発が起き、 敵に35ダメージを与える", -- Inner Child
	-- Full old Desc: "追加ライフ +1#死ぬと、現在の部屋に 半ハートの体力で復活する#移動速度が0.2アップし、 アイザックのサイズが縮む#復活地点で血の爆発が起き、 敵に35ダメージを与える"
	-- English: "Upon death:#Respawns Isaac in the same room with half a heart#↑ {{Speed}} +0.2 Speed#↑ Massive size down"

	[C_ID .. 689] = "アイテムが五択状態で スポーンするようになる#0.2秒に1回のスピードで 表示が切り替わる", -- Glitched Crown
	-- English: "Item pedestals quickly cycle between 5 random items"

	[C_ID .. 690] = "アイザックに接触した敵が 跳ね返る#跳ね返った敵は、障害物や 壁に衝突するとダメージを 受ける#アイザックが敵と接触した 時、50%の確率でダメージを 受けない#アイザックが被弾した時、 50%の確率で弾を跳ね返し、 ダメージを受けない", -- Belly Jelly
	-- English: "Enemies bounce off of Isaac#50% chance to negate contact damage#50% chance to deflect enemy projectiles"

	[C_ID .. 691] = "品質0・1のアイテムが 自動的にリロールされ、 スポーンしなくなる#品質2のアイテムが33%の 確率で自動的にリロール される　", -- Sacred Orb
	-- English: "Prevents Quality {{Quality0}}/{{Quality1}} items from spawning#Quality {{Quality2}} items have a 33% chance to be rerolled"

	[C_ID .. 692] = "悪魔部屋にトゲが生成され、 それでダメージを受けた時、 以下の報酬を得る#{{Blank}} 35%：はずれ#{{Blank}} 33%：攻撃力 +0.5#{{Blank}} 15%：コイン 6枚#{{Blank}} 10%：黒ハート 2個#{{Blank}}  5%：悪魔部屋アイテム#{{Blank}}  2%：リヴァイアサン化", -- Sanguine Bond
	-- English: "Spawns a set of spikes in the {{DevilRoom}} Devil Room#Taking damage on the spikes grants:#35%: Nothing#33%: ↑ {{Damage}} +0.5 Damage#15%: 6 {{Coin}} pennies#10%: 2 {{BlackHeart}} Black Hearts#5%: {{DevilRoom}} Random Devil item#2%: Leviathan transformation"

	[C_ID .. 693] = "敵の弾をブロックすると、 青ハエに変化する#部屋をクリアすると、 黒ハエが1匹スポーンする", -- The Swarm
	-- Full old Desc: "黒ハエが8匹スポーンし、 アイザックを周回する#敵の弾をブロックすると、 青ハエに変化する#部屋をクリアすると、 黒ハエが1匹スポーンする"
	-- English: "Clearing a room spawns a new fly#Flies turn into blue flies after blocking a shot"

	[C_ID .. 694] = "アイザックに致命的な ダメージが与えられる時、 代わりに、2個の壊れた ハートを追加し、全ての 敵に40ダメージを与える#壊れたハートが12個 溜まると死ぬ", -- Heartbreak
	-- Full old Desc: "↓ 壊れたハート +3#↑ 壊れたハート1個につき 攻撃力 +0.25#アイザックに致命的な ダメージが与えられる時、 代わりに、2個の壊れた ハートを追加し、全ての 敵に40ダメージを与える#壊れたハートが12個 溜まると死ぬ"
	-- English: "↑ {{Damage}} +0.25 Damage for each Broken Heart#{{BrokenHeart}} Every fatal hit grants +2 Broken Hearts#Isaac dies at 12 Broken Hearts"

	[C_ID .. 695] = "ダメージを受けるたびに 連射・移動速度がアップ#上限値（6ヒット後）：#{{Blank}} 移動速度 +1.02#{{Blank}} 連射速度 +3#{{Blank}} ※上限を突破できる#効果は次のフロアに 移動するまで有効", -- Bloody Gust
	-- English: "When taking damage, receive for the floor:#↑ {{Speed}} Speed up#↑ {{Tears}} Fire rate up#Caps at +1.02 speed and +3 fire rate"

	[C_ID .. 696] = "アイザックを光輪が囲む#光輪に触れた敵を中心に 十字形のビームが発生し、 最大152ダメージを与える#アイザックがダメージを 受けるたび光輪が拡大し、 10回で最大化する#フロア移動時にサイズが リセットされる", -- Salvation
	-- English: "Isaac is surrounded by a halo#Enemies that stand in the halo for too long are hit by a cross-shaped beam of light#Taking damage increases the size of the halo for the floor"

	[C_ID .. 697] = "ボス部屋に入った時、その ボスのクローンに変身する 使い魔#クローンを倒すと、追加の ボスアイテムがスポーン#ボスとクローンは、体力が 元の75%に設定され、少し 動きが遅くなる", -- Vanishing Twin
	-- English: "Entering a boss room spawns a clone of the boss#Defeating the clone spawns an extra item#The clone is slower and has 75% health"

	[C_ID .. 698] = "アイザックの左右に2匹の 使い魔が現れる#使い魔はアイザックの涙を コピーして放つが、攻撃力 のみ0.375倍に修正される", -- Twisted Pair
	-- English: "Two familiars that shoot tears with the same stats and effects as Isaac#{{Damage}} They deal 37.5% of Isaac's damage"

	[C_ID .. 699] = "部屋をクリアするたび 怒りが溜め込まれる#4部屋クリア後、次の 敵の居る部屋に入ると、 ブリムストーン攻撃が 3.33秒間発動する", -- Azazel's Rage
	-- English: "{{Collectible118}} Clearing 4 rooms fires a large Brimstone beam upon entering the next room"

	[C_ID .. 700] = "カード・ルーン・ピルを 使用した時、それ以前に 使用した、最後の3つの カード・ルーン・ピルの 効果も同時に発動する", -- Echo Chamber
	-- English: "Using a {{Rune}} rune, {{Card}} card or {{Pill}} pill also uses a copy of the last 3 runes/cards/pills used after picking up Echo Chamber"

	[C_ID .. 701] = "毎フロア開始時、古びた 宝箱をスポーンする#宝箱は以下の内容を含む：#{{Blank}} 43%：青ハート 1～3個#{{Blank}} 42%：トリンケット 3個#{{Blank}} 10%：古びた宝箱プールの 　　 アイテム#{{Blank}}  5%：天使部屋アイテム", -- Isaac's Tomb
	-- English: "Spawns an {{DirtyChest}} Old Chest at the start of every floor#Old Chests require a key to unlock and can contain {{SoulHeart}} Soul Hearts, {{Trinket}} trinkets or Mom, Dad and Angel items"

	[C_ID .. 702] = "ダメージを受けると赤い ウィスプがスポーンし、 アイザックを周回する#ウィスプは透過効果を 持つ涙を発射し、敵に 接触ダメージを与える#弾のブロックはしない#ウィスプは最大6つまで 持て、フロアで持続する", -- Vengeful Spirit
	-- English: "Taking damage spawns an orbital wisp#Wisps shoot tears, do not block shots and disappear on the next floor#Caps at 6 wisps"

	[C_ID .. 703] = "現在のキャラクターが エサウJrと入れ替わる#エサウJrで使用すると、 元のキャラクターに戻る#エサウJrは+2の攻撃力と 飛行能力を持ち、3個の 黒ハートでスポーンする#初回使用時、エサウJrは 元のキャラクターが所持 していたアイテムと同数の ランダムなアイテムを得る#{{Warning}} どちらかのキャラクターが 死ぬとゲームオーバー", -- Esau Jr.
	-- English: "Swaps between the current character and Esau Jr.#Esau Jr. has {{BlackHeart}} 3 Black Hearts, {{Damage}} +2 Damage, flight, and random items equal to the number of items the player has the first time this item is used#Characters have independent items and health#{{Warning}} Dying as either character ends the run"

	[C_ID .. 705] = "{VAR:EFFECTLIST}#敵と弾を貫通して移動でき、 触れた敵の動きを止める#最初の敵に攻撃力x2+3.5の ダメージを与え、以降は 触れた敵／弾ごとに3.5の ダメージが追加される#効果終了時に爆発を起こし、 発動中の総ダメージ量と 等しいダメージを与える", -- Dark Arts
	-- Full old Desc: "無敵状態と+1の移動速度を 1秒間付与する#敵と弾を貫通して移動でき、 触れた敵の動きを止める#最初の敵に攻撃力x2+3.5の ダメージを与え、以降は 触れた敵／弾ごとに3.5の ダメージが追加される#効果終了時に爆発を起こし、 発動中の総ダメージ量と 等しいダメージを与える"
	-- English: "{{Timer}} Receive for 1 second (or until shooting):#{VAR:EFFECTLIST}#Isaac can pass through enemies/projectiles and paralyzes them#When the effect ends, damages paralyzed enemies, removes paralyzed projectiles and creates a blast at Isaac's location#The attacks and blast are more powerful the more enemies/projectiles have been hit"

	[C_ID .. 706] = "部屋の全てのアイテムを 破壊し、イナゴの使い魔 に変換する#イナゴは攻撃方向に連動 して発射され、接触した 敵にダメージを与える#アイテムに応じて特殊な イナゴが生成される#最大64匹まで所持できる", -- Abyss
	-- English: "Consumes all item pedestals in the room and spawns a locust familiar for each one#Locusts deal Isaac's damage 2-3 times an attack#Some items spawn a special locust when consumed"

	[C_ID .. 708] = "左目から涙が流れなくなる", -- Stapler
	-- Full old Desc: "↑ 攻撃力 +1#左目から涙が流れなくなる"
	-- English: "All of Isaac's tears are shot from the right eye"

	[C_ID .. 709] = "ダッシュで敵に突っ込み、 かかえ上げた後、地面に 叩きつける#敵に50のダメージを与え、 着地地点に地割れを発生 させる#ダメージと地割れの効果 範囲は、アイザックの サイズで増減する", -- Suplex!
	-- English: "Isaac dashes in the direction he moves#Dashing into an enemy or boss picks it up and slams it into the ground#Slam deals damage and spawns rock waves based on Isaac's size#You're invincible during the dash and slam"

	[C_ID .. 710] = "ピックアップを8個 集めるとアイテムを 作成できる#作成されるアイテムの 品質はピックアップの 品質に依存する", -- Bag of Crafting
	-- English: "Collects up to 8 pickups which cannot be dropped#Using the item with 8 pickups in the bag crafts an item#Item quality is based on the quality of the pickups"

	[C_ID .. 711] = "保持中、アイテムがある 未訪問の部屋に入ると、 二つのアイテムが前後に 重なって表示される#アイテムを使用すると、 その前後が入れ替わる#片方のアイテムを取得し、 前後を入れ替えると、 もう片方のアイテムも 取得できる#片方のアイテムを取得 したあと部屋を出ると、 もう片方のアイテムは 消滅する", -- Flip
	-- English: "Entering a room with item pedestals displays a ghostly second item on the pedestals#Using the item flips the real and ghostly item#Using Flip after taking the first item allows Isaac to pick up the other item#{{Warning}} Ghostly items alone on pedestals disappear after leaving the room"

	[C_ID .. 712] = "ランダムなアイテム効果を 与えるウィスプがスポーン し、アイザックを周回する#アイテムは25%の確率で その部屋のプールから 選択され、75%の確率で ランダムなプールから 選択される#ウィスプが破壊されると、 アイテムの効果を失う", -- Lemegeton
	-- English: "Spawns an orbital that grants a random item's effect#The items have a 25% chance to be from the current room's item pool and 75% chance to be from the Treasure, Boss or Shop pools"

	[C_ID .. 713] = "半ハートを消費して血餅の 使い魔をスポーンする#血餅はアイザックの動きと 涙をコピーする#消費されたハートの種類に 応じて、特殊な効果を持つ 血餅がスポーンする", -- Sumptorium
	-- English: "Removes half a heart and creates a clot#Clots copy Isaac's tears#Each type of heart generates a clot with different HP, damage and tear effect"

	[C_ID .. 714] = "フォーガットンの体を 呼び戻す", -- Recall
	-- English: "Retrieves the Forgotten's body from any distance#The Soul is invincible while the Forgotten is returning"

	[C_ID .. 715] = "うんちを1個保存できる", -- Hold
	-- English: "Using the item when empty stores the next poop inside#Using the item with a poop inside uses that poop"

	[C_ID .. 716] = "↑ 攻撃力　 +0.5#{VAR:EFFECTLIST}", -- Keeper's Sack
	-- Full old Desc: "お店で買い物をするたび、 以下のいずれかがアップ：#↑ 攻撃力　 +0.5#↑ 移動速度 +0.03#↑ 射程　　 +0.25#取得時に3枚のコインと 1個の鍵をスポーン"
	-- English: "{{Shop}} Spending 3 coins grants either:#{VAR:EFFECTLIST}"

	[C_ID .. 717] = "バトル中、岩から青クモが スポーンする#岩を破壊すると、0～2匹の 青クモがスポーンする", -- Keeper's Kin
	-- English: "Rocks and other obstacles spawn 2 blue spiders when destroyed#Rocks can occasionally spawn blue spiders in hostile rooms"

	[C_ID .. 719] = "ランダムなお店の商品を スポーンする（※有料）", -- Keeper's Box
	-- English: "{{Shop}} Spawns a random Shop item/pickup to be purchased"

	[C_ID .. 720] = "フルチャージではない状態 でも使用でき、チャージ量 に応じたピックアップを スポーンする#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#フルチャージで使用すると ランダムな効果が発動", -- Everything Jar
	-- English: "Spawns pickups based on the number of charges#Charge Rewards:#{{Blank}} 1:{{PoopPickup}} 2:{{Coin}} 3:{{Bomb}} 4:{{Key}}#{{Blank}} 5:{{Heart}} 6:{{Pill}} 7:{{Card}} 8:{{SoulHeart}}#{{Blank}} 9:{{GoldenHeart}} 10:{{GoldenKey}} 11:{{GoldenBomb}}#{{Blank}} Triggers a powerful random effect at 12 charges"

	[C_ID .. 721] = "スポーンするアイテムが グリッチ化して、効果が ランダムになる", -- TMTRAINER
	-- English: "Causes all future items to be glitched#Glitched items have completely random effects"

	[C_ID .. 722] = "最も近い敵を鎖で拘束し、 5秒間行動不能にする", -- Anima Sola
	-- English: "{{Chained}} Chains down the nearest enemy for 5 seconds#Chained enemies cannot move or attack"

	[C_ID .. 723] = "アイテムの内部ID番号を 1つ引き、部屋の全ての アイテムをリロールする", -- Spindown Dice
	-- English: "Rerolls all items in the room by decreasing their internal ID by one"

	[C_ID .. 724] = "ダメージを受けると 赤ハートが飛び出す ようにスポーンし、 1.5秒後に消滅する", -- Hypercoagulation
	-- English: "{{Heart}} Taking damage drops a half or full Red Heart depending on how much Isaac lost#The hearts launch out and despawn after 1.5 seconds"

	[C_ID .. 725] = "敵に一定量のダメージを 与えると、アイザックが 赤く点滅し始め、以下の 効果を発動する：#うんち投げ#うんち爆弾#下痢爆弾#おなら#下痢#下痢効果で床に生成された 液体に触れると、攻撃力が アップする#下痢効果で床に生成された 液体にうんちを乗せると、 各種相乗効果が発生する", -- IBS
	-- English: "Dealing enough damage causes Isaac to flash red#Releasing the fire button while Isaac is flashing either:#Throws a random poop#Creates buffing creep#{{Poison}} Farts a poison cloud#Spawns 5 live bombs"

	[C_ID .. 726] = "攻撃ボタンをダブルタップ すると吐血し、正面の敵に 攻撃力x1.5のダメージと ノックバックを与える#吐血を浴びた敵は呪われ、 ブリムストーンタイプの 攻撃で追加のダメージを 受ける#クールダウンは1秒", -- Hemoptysis
	-- English: "Double-tapping a fire button makes Isaac sneeze blood#The sneeze deals 1.5x Isaac's damage#1 second cooldown#{{BrimstoneCurse}} Affected enemies take extra damage from Brimstone beams"

	[C_ID .. 727] = "爆弾から幽霊がスポーンし、 敵を追いかけて攻撃する#幽霊は10秒後に爆発する", -- Ghost Bombs
	-- Full old Desc: "爆弾 +5#爆弾から幽霊がスポーンし、 敵を追いかけて攻撃する#幽霊は10秒後に爆発する"
	-- English: "Isaac's bombs spawn ghosts that chase enemies#Ghosts deal 2x Isaac's damage per second and explode after 10 seconds"

	[C_ID .. 728] = "アイザックの涙をコピーし、 近くの敵を自動で攻撃する 使い魔を召喚#{{Player13}} リリス以外のキャラで 使う場合、ダメージは 攻撃力の75%#使用した部屋でのみ有効", -- Gello
	-- English: "A demon familiar bursts out of Isaac for the room#The demon shoots towards the nearest enemy, mimicing Isaac's tears, stats and effects#{{Damage}} Its tears deal 75% of Isaac's damage"

	[C_ID .. 729] = "頭を分離して投げる#頭は衝突と接触で敵に ダメージを与え、弾を ブロックし、涙を放つ#頭を拾うか、再度使用 すると、元の体に戻る", -- Decap Attack
	-- English: "Throws Isaac's head in a direction#The head deals contact damage and shoots tears from where it lands#Using the item again or stepping on the head reattaches it"

	[C_ID .. 732] = "取得時、ルーンかソウル ストーンを1個スポーン", -- Mom's Ring
	-- Full old Desc: "↑ 攻撃力 +1#取得時、ルーンかソウル ストーンを1個スポーン"
	-- English: "{{Rune}} Spawns a random rune or soul stone"

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 15] = "岩や障害物を壊すと、 33%の確率でコインが スポーン", -- Lucky Rock
	-- English: "{{Coin}} Destroying rocks has a 33% chance to spawn a coin"

	[T_ID .. 24] = "コインを拾うとおならが 出て、敵をノックバック させ、毒状態にする#うんちからコインが スポーンする確率 +20%", -- Butt Penny
	-- English: "{{Coin}} 20% higher chance for coins to spawn from poop#{{Poison}} Picking up coins makes Isaac fart, which poisons and knocks back enemies and projectiles"

	[T_ID .. 32] = "部屋に入るたび、25%の 確率でいずれかの効果を 付与：#{{Collectible71}} ミニ マッシュ#{{Collectible12}} 魔法のキノコ#{{Collectible120}} 変なキノコ#{{Collectible121}} 変なキノコ#{{Collectible342}} 青い帽子#{{Collectible398}} 神々の肉", -- Liberty Cap
	-- English: "25% chance for a random mushroom effect per room"

	[T_ID .. 33] = "{{Collectible318}} ダメージを受けるたび30%の 確率でふたご座の使い魔が その部屋にスポーン （運でスポーン確率アップ）", -- Umbilical Cord
	-- Full old Desc: "{{Collectible100}} 体力が半赤ハート以下の時、 リトルスティーブンを付与#{{Collectible318}} ダメージを受けるたび30%の 確率でふたご座の使い魔が その部屋にスポーン （運でスポーン確率アップ）"
	-- English: "{{HalfHeart}} Having half a Red Heart or less grants {{NameC100}}#{{Collectible318}} Taking damage has a high chance to spawn a Gemini familiar for the room"

	[T_ID .. 48] = "ネクロノミコン効果 （黒ハートなど）の ダメージ量を2倍にする#ダメージを受けた時、 ネクロノミコン効果が 一定確率で発動する （全ての敵に80ダメージ）#確率：運0=5%、60=50%", -- A Missing Page
	-- English: "Taking damage has a 5% chance to deal 80 damage to all enemies in the room#{{Collectible35}} Black Hearts and Necronomicon-like effects deal double damage"

	[T_ID .. 49] = "コイン取得時、25%の 確率で半赤ハートが スポーン", -- Bloody Penny
	-- English: "{{HalfHeart}} Picking up a coin has a 25% chance to spawn a half Red Heart#Higher chance from nickels and dimes"

	[T_ID .. 50] = "コイン取得時、25%の 確率で爆弾がスポーン", -- Burnt Penny
	-- English: "{{Bomb}} Picking up a coin has a 25% chance to spawn a bomb#Higher chance from nickels and dimes"

	[T_ID .. 51] = "コイン取得時、25%の 確率で鍵がスポーン", -- Flat Penny
	-- English: "{{Key}} Picking up a coin has a 25% chance to spawn a key#Higher chance from nickels and dimes"

	[T_ID .. 69] = "アイザックが時々透明に なり、敵を混乱させる#ポラロイド・ネガティブの 代わりに奇妙なドアを開く", -- Faded Polaroid
	-- English: "Randomly camouflages Isaac#{{Confusion}} Confuses enemies#Can be used to open the "Strange Door" in "Depths II""

	[T_ID .. 92] = "↑ アイテムやトリンケット からのステータス上昇値を 20%アップさせる", -- Cracked Crown
	-- English: "↑ x1.33 Stat multiplier (except fire rate) for the stats that are above 1 {{Speed}} speed, 2.73 {{Tears}} tears, 3.5 {{Damage}} damage, 6.5 {{Range}} range, 1 {{Shotspeed}} shot speed"

	[T_ID .. 107] = "ダメージを受ける時、 赤ハートが優先して 消費される　　#!!! この効果で赤ハートに ダメージを受けた場合、 悪魔部屋／天使部屋の 出現率は通常通り減少", -- Crow Heart
	-- English: "Taking damage depletes Red Hearts before Soul/Black Hearts#{{Warning}} Taking Red Heart damage will reduce Devil/Angel Room chance"

	[T_ID .. 110] = "保持して子宮／傷だらけの 子宮／ユテロ／コープスの フロアに移動すると、お店 が生成される", -- Silver Dollar
	-- English: "{{Shop}} Shops appear in the Womb and Corpse"

	[T_ID .. 111] = "保持して子宮／傷だらけの 子宮／ユテロ／コープスの フロアに移動すると、トレ ジャールームが生成される", -- Bloody Crown
	-- English: "{{TreasureRoom}} Treasure Rooms appear in the Womb and Corpse"

	[T_ID .. 119] = "フロア移動時、空の赤／骨 ハートの50%を回復する#端数は切り捨てるが、最低 でも半赤ハートは回復する", -- Stem Cell
	-- English: "{{HealingRed}} Entering a new floor heals half of Isaac's empty Red/Bone Hearts#{{HealingRed}} Heals half a heart minimum"

	[T_ID .. 131] = "コイン取得時、17%の確率で 半青ハートをスポーンする#高額コインほど高確率", -- Blessed Penny
	-- English: "{{HalfSoulHeart}} Picking up a coin has a 17% chance to spawn a half Soul Heart#Higher chance from nickels and dimes"

	[T_ID .. 132] = "部屋に入った時、25%の 確率でランダムな注射器 タイプのアイテム効果が 付与される", -- Broken Syringe
	-- English: "25% chance to get a random syringe effect each room"

	[T_ID .. 133] = "設置した爆弾が起爆する までの時間が、1.5秒から 0.66秒に短縮される", -- Short Fuse
	-- English: "Isaac's bombs explode faster"

	[T_ID .. 134] = "おならの範囲が広がる#敵のおなら・キノコの 毒ガスにも有効", -- Gigante Bean
	-- English: "Increases fart size"

	[T_ID .. 136] = "ドア・キーブロック・ 宝箱を爆発で開ける", -- Broken Padlock
	-- English: "Doors, key blocks and golden chests can be opened with explosions#Explosions can also open the "Strange Door" in "Depths II""

	[T_ID .. 137] = "保持して次のフロアに 移動すると、フロアの 開始時、前のフロアに 残されたピックアップ・ トリンケットを最大4つ ランダムにスポーンする", -- Myosotis
	-- English: "Entering a new floor spawns up to 4 uncollected pickups from the previous floor in the starting room"

	[T_ID .. 138] = "アクティブアイテムを 使用すると、別の アクティブアイテムに リロールされる", -- 'M
	-- English: "Using an active item rerolls it"

	[T_ID .. 139] = "運で発生確率が変動する タイプの涙は、運+4相当 に発生確率がアップする", -- Teardrop Charm
	-- English: "{{Luck}} +4 Luck towards luck-based tear effects"

	[T_ID .. 140] = "赤ハートを拾った時、 50%の確率で青クモが スポーンする#スポーンした場合、 体力は回復しない#体力全快の状態でも 赤ハートを取得でき、 その場合は、100%の 確率でスポーンする", -- Apple of Sodom
	-- English: "Picking up Red Hearts can convert them into blue spiders#Works even while at full health#Effect may consume hearts needed for healing"

	[T_ID .. 141] = "使い魔の連射速度が 2倍になる", -- Forgotten Lullaby
	-- English: "2x Fire rate for familiars"

	[T_ID .. 142] = "{{Collectible584}} 毎フロア開始時、 美徳の書ウィスプが 4つスポーンする", -- Beth's Faith
	-- English: "{{Collectible584}} Entering a new floor spawns 4 Book of Virtues wisps"

	[T_ID .. 144] = "外れた涙が90度ターンして 敵に向かう", -- Brain Worm
	-- English: "Tears turn 90 degrees to target enemies that they may have missed"

	[T_ID .. 145] = "ダメージを受けると消滅", -- Perfection
	-- Full old Desc: "↑ 運 +10#ダメージを受けると消滅"
	-- English: "Taking damage destroys the trinket"

	[T_ID .. 146] = "トレジャールームの アイテムが悪魔取引に 置き換わる", -- Devil's Crown
	-- English: "{{RedTreasureRoom}} Treasure Room items are replaced with devil deals"

	[T_ID .. 147] = "コイン取得時、17%の確率で アクティブアイテムが 1チャージされる#高額コインほど高確率", -- Charged Penny
	-- English: "{{Battery}} Picking up a coin has a 17% chance to add 1 charge to the active item#Higher chance from nickels and dimes"

	[T_ID .. 148] = "追従タイプの使い魔が アイザックを周回する ようになる", -- Friendship Necklace
	-- English: "All familiars orbit around Isaac"

	[T_ID .. 149] = "ダメージを受ける直前に アクティブアイテムの 効果が自動的に発動する#フルチャージされている 時のみ発動する", -- Panic Button
	-- English: "Right before taking damage, uses the active item if it is charged"

	[T_ID .. 150] = "鍵を消費せずにドアを 開くことができる#鍵付きのドアを通ると、 二部屋の中間のように 機能する青い部屋に 移動する#青い部屋は出ると消滅し、 ドアは通常の挙動に戻る", -- Blue Key
	-- English: "Locked doors can be opened for free, but Isaac has to clear a room from the Hush floor before accessing the room behind them"

	[T_ID .. 151] = "ドア・床・岩・宝箱・ 敵からトゲを取り除き、 無害化する", -- Flat File
	-- English: "Retracts most spikes, rendering them harmless#Also affects {{CursedRoom}} Curse Room doors, mimics and any spike obstacle"

	[T_ID .. 152] = "プラネタリウムに未訪問の 場合、追加で+15%#子宮／コープスフロアでも プラネタリウムが出現可能に", -- Telescope Lens
	-- Full old Desc: "プラネタリウムの出現率+9%#プラネタリウムに未訪問の 場合、追加で+15%#子宮／コープスフロアでも プラネタリウムが出現可能に"
	-- English: "Additional +15% chance if a Planetarium hasn't been entered yet#Planetariums can spawn in the Womb and Corpse"

	[T_ID .. 153] = "部屋に入った時、25%の 確率でランダムなママ 関連アイテムの効果が 付与される", -- Mom's Lock
	-- English: "25% chance for a random Mom item effect each room"

	[T_ID .. 154] = "新しい部屋に入った時、 50%の確率でランダムな ダイス系のアイテムが 消耗品スロットに追加 され、カード／ピルの ように使用できる#ダイスが追加されても、 保持中のカード／ピルは そのまま保持される#ダイスは部屋を出ると 消滅する", -- Dice Bag
	-- English: "50% chance per new room to grant a single use die consumable item#The die disappears when leaving#The die does not take up a pill/card slot"

	[T_ID .. 155] = "保持して大聖堂に 移動すると、お店と トレジャールームが 生成される", -- Holy Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Cathedral"

	[T_ID .. 156] = "保持中、最大体力 +1#キーパーでも有効", -- Mother's Kiss
	-- English: "{{Heart}} +1 Heart container while held"

	[T_ID .. 158] = "ダメージを受けると、 所持するコイン・鍵・ 爆弾のいずれか2個を ドロップする#ドロップされるピック アップは、別の種類に 置き換わる可能性がある (爆弾→金爆弾など)", -- Torn Pocket
	-- English: "Taking damage makes Isaac drop 2 of his coins, keys or bombs#The pickups can be replaced with other variants, such as golden keys, nickels, dimes, etc."

	[T_ID .. 159] = "金宝箱のランダムな ピックアップ内容に、 カードとトリンケット、 ピルを加える", -- Gilded Key
	-- Full old Desc: "初回取得時、鍵 +1#保持中にスポーンした 宝箱を、金宝箱に置き 換える#金宝箱のランダムな ピックアップ内容に、 カードとトリンケット、 ピルを加える"
	-- English: "{{GoldenChest}} Replaces all chests (except Old/Mega) with golden chests#{{GoldenChest}} Golden chests can contain extra cards, pills or trinkets"

	[T_ID .. 160] = "フロア開始時、サックが スポーン", -- Lucky Sack
	-- English: "{{GrabBag}} Entering a new floor spawns a sack"

	[T_ID .. 161] = "保持してシェオルに 移動すると、お店と トレジャールームが 生成される", -- Wicked Crown
	-- English: "Spawns a {{TreasureRoom}} Treasure Room and {{Shop}} Shop in Sheol"

	[T_ID .. 162] = "部屋をクリアした時、 33%の確率でアザゼルに 変身する#変身効果は次の部屋を クリアしたあと、別の 部屋に移動すると解除", -- Azazel's Stump
	-- English: "{{Player7}} Clearing a room has a 33% chance to turn the player into Azazel#{{Timer}} Effect lasts until clearing and leaving another room"

	[T_ID .. 163] = "敵のうんちが味方になる#部屋をクリアした時、 ランダムな味方の うんちを1匹スポーン", -- Dingle Berry
	-- English: "All Dip (small poop) enemies are friendly#Clearing a room spawns 1 random Dip"

	[T_ID .. 164] = "爆弾を1個余分に設置 できる（追加消費なし）", -- Ring Cap
	-- English: "{{Bomb}} Spawns 1 extra bomb for each bomb placed"

	[T_ID .. 165] = "スポーンするコインと 鍵が、チャプター4以降、 爆弾・ハート・カード・ ピル・トリンケット・ 電池・ハエのいずれかに 置き換わる", -- Nuh Uh!
	-- English: "On Womb and beyond, replaces all coin and key spawns with a bomb, heart, pill, card, trinket, battery, or enemy fly"

	[T_ID .. 166] = "部屋に入った時、50%の 確率でランダムな パッシブアイテムの 効果が付与される", -- Modeling Clay
	-- English: "50% chance to grant the effect of a random passive item each room"

	[T_ID .. 167] = "部屋をクリアした時、 25%の確率で友好的な ボニーがスポーンする#確率は運51で最大50%に", -- Polished Bone
	-- English: "{{Friendly}} Clearing a room has a 25% chance to spawn a friendly Bony"

	[T_ID .. 168] = "フロア開始時、1個の 骨ハートを付与", -- Hollow Heart
	-- English: "{{EmptyBoneHeart}} Entering a new floor grants +1 Bone Heart"

	[T_ID .. 169] = "保持中、{{Guppy}} ガッピーの 変身に必要なアイテムの 1つとして機能する", -- Kid's Drawing
	-- English: "{{Guppy}} Counts as 1 item towards the Guppy transformation while held"

	[T_ID .. 170] = "部屋をクリアした時、 33%の確率で{{Collectible580}}レッド キーの効果が発動し、 赤い部屋が生成される#赤い部屋では効果の 発動確率が低下する", -- Crystal Key
	-- English: "{{Collectible580}} Clearing a room has a 33% chance to create a Red Key room#Lower chance to occur when in a red room"

	[T_ID .. 171] = "悪魔取引のコストが、 50%の確率でハートから コインに置き換わる", -- Keeper's Bargain
	-- English: "{{DevilRoom}} 50% chance for devil deals to cost coins instead of hearts"

	[T_ID .. 172] = "コイン取得時、ランダムな 部屋にテレポートする#隠し部屋にもテレポート できる", -- Cursed Penny
	-- English: "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms"

	[T_ID .. 173] = "悪魔取引を一度だけ 無料にする#取引後に消滅する", -- Your Soul
	-- English: "{{DevilRoom}} Allows Isaac to take 1 Devil Room item for free#{{Warning}} The free Devil deal still affects Angel Room chance"

	[T_ID .. 174] = "クランプスが悪魔部屋に 現れなくなる#悪魔部屋が特別な構成に 置き換わり、アイテムや 黒ハート、敵が増加する", -- Number Magnet
	-- Full old Desc: "悪魔部屋の出現率 +10%#クランプスが悪魔部屋に 現れなくなる#悪魔部屋が特別な構成に 置き換わり、アイテムや 黒ハート、敵が増加する"
	-- English: "Prevents Krampus from appearing in Devil Rooms#Devil Rooms are special variants with more deals, Black Hearts and enemies"

	[T_ID .. 175] = "時間制限を過ぎていても ハッシュに挑める", -- Strange Key
	-- Full old Desc: "時間制限を過ぎていても ハッシュに挑める#{{Collectible297}} パンドラの箱を使うと 一緒に消費され、通常 効果の代わりに以下の 効果が発生する#ランダムなプールから 6個のアイテムをスポーン"
	-- English: "Opens the door to the Hush floor regardless of the timer#Using {{NameC297}} consumes the key and spawns 6 items from random pools"

	[T_ID .. 176] = "血餅の使い魔が現れ、 アイザックの動きと 涙をコピーする#涙は攻撃力ｘ0.35の ダメージを与える#血餅は3回のダメージを 受けると消滅し、新しい 部屋に入るとリスポーン する", -- Lil Clot
	-- English: "Spawns a blood clot that mimics Isaac's movement#Copies Isaac's stats, tear effects and 35% of his damage#Respawns each room"

	[T_ID .. 177] = "チャレンジルームの クリア報酬に宝箱が 追加される#ボスチャレンジルームの クリア報酬にボス部屋の アイテムが追加される", -- Temporary Tattoo
	-- English: "{{Chest}} Clearing a {{ChallengeRoom}} Challenge Room spawns a chest#Clearing a {{BossRushRoom}} Boss Challenge Room spawns an item"

	[T_ID .. 178] = "ダメージを受けると 50%の確率で自爆が起き、 敵に185のダメージを 与える　　　", -- Swallowed M80
	-- English: "Taking damage has a 50% chance for Isaac to explode#Doesn't destroy Blood Donation Machines or Confessionals, while spawning pickups as if it did"

	[T_ID .. 179] = "使い魔がアイザックの 動きに連動して移動する ようになる#ドロップボタン押下中、 使い魔は動きを停止する#※ヤコブ＆エサウと同じ 制御方法", -- RC Remote
	-- English: "Familiars mimic Isaac's movement#Hold the drop button ({{ButtonRT}}) to keep the familiars in place"

	[T_ID .. 180] = "アイザックの動きを コピーし、透過効果 付きの涙で攻撃する 幽霊の使い魔が現れる#幽霊はアイザックの ステータスをコピーする （攻撃力のみ0.5倍）#幽霊は一撃で死ぬが、 次のフロアで復活する#幽霊はアイザックの持つ パッシブ／アクティブ アイテムの効果をコピー する#ドロップボタン押下中、 幽霊は動きを停止する#※ヤコブ＆エサウと同じ  制御方法", -- Found Soul
	-- English: "Follows Isaac's movement and shoots spectral tears#Copies Isaac's stats, tear effects and 50% of his damage#Uses most active items when Isaac does#Dies in one hit#Respawns each floor"

	[T_ID .. 181] = "アクティブアイテムを 使用すると、追加で ランダムなアクティブ アイテムの効果が発動 する　　　　#追加されるアイテムは チャージ容量が1～2の ものに限られる", -- Expansion Pack
	-- English: "Using an active item triggers the effect of an additional 1-2 charge active item"

	[T_ID .. 182] = "天使部屋に入った時、 ウィスプが5つスポーン#乞食に寄付すると、 25%の確率でウィスプが スポーン", -- Beth's Essence
	-- English: "Entering an {{AngelRoom}} Angel Room spawns 5 wisps#Donating to Beggars has a 25% chance to spawn a wisp"

	[T_ID .. 183] = "部屋に入った時、50%の 確率で使い魔を1つ複製する", -- The Twins
	-- Full old Desc: "部屋に入った時、50%の 確率で使い魔を1つ複製する#使い魔が居ない場合、 {{Collectible8}}ブラザーボビーか {{Collectible67}}シスターマギーを付与"
	-- English: "50% chance to duplicate a familiar each room#Grants {{NameC8}} or {{NameC67}} if Isaac has no familiars"

	[T_ID .. 184] = "保持して未訪問のお店に 入ると、お店アイテムが 使い魔アイテムに置き換わる#保持中、使い魔アイテムの 価格を10コインに割り引く", -- Adoption Papers
	-- English: "{{Shop}} Shops sell familiars for 10 coins"

	[T_ID .. 185] = "敵を倒した時、17%の 確率でイナゴがスポーン", -- Cricket Leg
	-- English: "Killing an enemy has a 17% chance to spawn a random locust"

	[T_ID .. 186] = "1匹の{{Collectible706}}アビスイナゴを 付与する", -- Apollyon's Best Friend
	-- English: "{{Collectible706}} Grants 1 Abyss locust"

	[T_ID .. 187] = "トレジャールームに 50%の確率でブラインド アイテムが追加される#代替ルートの追加の ブラインドアイテムが、 50%の確率で公開状態になる", -- Broken Glasses
	-- English: "{{TreasureRoom}} 50% chance of adding an extra blind item in Treasure Rooms#50% chance to reveal the blind item in alt path Treasure Rooms"

	[T_ID .. 188] = "石化状態の敵は 倒されると凍結する", -- Ice Cube
	-- Full old Desc: "部屋に入った時、20%の 確率で敵が石化する#石化状態の敵は 倒されると凍結する#確率は運40で最大100%に"
	-- English: "{{Petrify}} Entering a room has a {VAR:LUCKCHANCE}% chance to petrify random enemies#{{Freezing}} Killing a petrified enemy freezes it"

	[T_ID .. 189] = "敵を倒すと、ダメージを 無効化するシールドが 1秒間付与される#シールド展開中に別の 敵を倒すと、効果時間が 1秒延長する", -- Sigil of Baphomet
	-- English: "Killing an enemy makes Isaac invincible for 1 second#Invincibility stacks with successive enemy kills"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 18] = "{{TreasureRoom}} トレジャールームに テレポート#{{Planetarium}} プラネタリウムがある場合、 そちらにテレポート", -- XVII - The Stars
	-- English: "{{TreasureRoom}} Teleports Isaac to the Treasure Room#{{Planetarium}} If there is a Planetarium, it teleports there instead"

	[Card_ID .. 20] = "{{CurseDarkness}} 闇の呪いを取り除く", -- XIX - The Sun
	-- Full old Desc: "全ての敵に100ダメージ#体力全回復#フルマッピング効果#{{CurseDarkness}} 闇の呪いを取り除く"
	-- English: "{{CurseDarkness}} Removes Curse of Darkness"

	[Card_ID .. 21] = "乞食か悪魔乞食をスポーン#低確率で鍵／爆弾／電池／ 腐った乞食もスポーン", -- XX - Judgement
	-- English: "{{Beggar}} Spawns a Beggar#{{DemonBeggar}} 33% chance for it to be a Devil Beggar#5% chance for it to be a Key Master, Bomb Bum, Battery Bum, or Rotten Beggar"

	[Card_ID .. 27] = "全てのピックアップ・ 宝箱・ボス以外の敵を 爆弾に変換する", -- Ace of Clubs
	-- English: "{{Bomb}} Turns all pickups, chests and non-boss enemies into random bombs"

	[Card_ID .. 28] = "全てのピックアップ・ 宝箱・ボス以外の敵を コインに変換する", -- Ace of Diamonds
	-- English: "{{Coin}} Turns all pickups, chests and non-boss enemies into random coins"

	[Card_ID .. 29] = "全てのピックアップ・ 宝箱・ボス以外の敵を 鍵に変換する", -- Ace of Spades
	-- English: "{{Key}} Turns all pickups, chests and non-boss enemies into random keys"

	[Card_ID .. 30] = "全てのピックアップ・ 宝箱・ボス以外の敵を ハートに変換する", -- Ace of Hearts
	-- English: "{{UnknownHeart}} Turns all pickups, chests and non-boss enemies into random hearts"

	[Card_ID .. 34] = "次のフロアにつながる トラップドアを生成#装飾のある床の上で 使用するとクロール スペースを生成する （草やゴミがある床）", -- Ehwaz
	-- English: "Spawns a trapdoor to the next floor#{{LadderRoom}} Spawns a crawlspace if used on a decorative floor tile (grass, small rocks, papers, gems, etc.)"

	[Card_ID .. 42] = "移動方向にカードを投げ、 触れた敵を即死させる#デリリウムとビーストは 即死無効", -- Chaos Card
	-- English: "Using the card throws it in the direction Isaac is moving#Instantly kills ANY enemy it touches (except Delirium or the Beast)"

	[Card_ID .. 51] = "一度だけダメージを 無効化するシールドを 付与する　　　#効果は次のダメージを 受けるまで持続", -- Holy Card
	-- English: "{{HolyMantle}} A one-use Holy Mantle shield (prevents damage once)"

	[Card_ID .. 55] = "ランダムなルーンの 効果を発動する#通常のルーンよりも 効果は弱体化される", -- Rune Shard
	-- English: "{{Rune}} Activates a random rune effect#The rune effect is weaker"

	[Card_ID .. 56] = "所持するピックアップと ハートを全て床に落とし、 残り体力を半ハートにする#一定数以上のコインと 爆弾は、{{Collectible74}}クォーターか {{Collectible19}}ドカーン！に変化して 落とされる", -- 0 - The Fool?
	-- English: "Drops all of Isaac's hearts but one and all of his pickups on the floor#Coins and bombs are dropped as {{Collectible74}} The Quarter or {{Collectible19}} Boom! if possible"

	[Card_ID .. 57] = "敵と弾を跳ね返すオーラを 1分間付与する", -- I - The Magician?
	-- English: "{{Timer}} Grants an aura that repels enemies and projectiles for 60 seconds"

	[Card_ID .. 58] = "ママの踏み潰し攻撃が 1分間持続する", -- II - The High Priestess?
	-- English: "{{Timer}} Mom's Foot tries to stomp Isaac for 60 seconds"

	[Card_ID .. 60] = "追加のボス部屋に テレポートする#ボスは2階層下の フロアから選ばれる#倒すとボス部屋の アイテムがスポーン", -- IV - The Emperor?
	-- English: "Teleports Isaac to an extra Boss room that can be defeated for an item#The boss is chosen from two floors deeper than the current one"

	[Card_ID .. 62] = "現在の部屋のアイテム プールからランダムな アイテムを1個スポーン#最大体力1か、青ハート 2個を、壊れたハートに 置き換える", -- VI - The Lovers?
	-- English: "Spawns an item from the current room's item pool#{{BrokenHeart}} Converts 1 heart container or 2 Soul Hearts into a Broken Heart"

	[Card_ID .. 63] = "{VAR:TIMEDEFFECT}", -- VII - The Chariot?
	-- Full old Desc: "10秒間、使用した位置に アイザックが固定され、 無敵と高速連射能力が 付与される"
	-- English: "{VAR:TIMEDEFFECT}#Invincible but can't move"

	[Card_ID .. 64] = "金宝箱を2～4個スポーン", -- VIII - Justice?
	-- English: "{{GoldenChest}} Spawns 2-4 golden chests"

	[Card_ID .. 65] = "部屋の全てのアイテムと ピックアップをコインに 変換する#お店の販売価格に 基づいて変換される", -- IX - The Hermit?
	-- English: "{{Coin}} Turns all pickups and items in the room into a number of coins equal to their Shop value#If there is nothing to turn, spawns a Penny instead"

	[Card_ID .. 66] = "ランダムなダイス部屋の 効果を発動する", -- X - Wheel of Fortune?
	-- English: "{{DiceRoom}} Triggers a random Dice Room effect"

	[Card_ID .. 67] = "部屋の全ての敵が1分間 弱体化し、スロー状態に なり、2倍のダメージを 受ける", -- XI - Strength?
	-- English: "{{Timer}} Enemies in the room are {{Slow}} slowed and take double damage for 30 seconds"

	[Card_ID .. 68] = "{VAR:TIMEDEFFECT}#倒された敵がランダムな コインを落とす", -- XII - The Hanged Man?
	-- Full old Desc: "30秒間キーパーに変身#涙がトリプルショットに なり、移動速度が若干 低下する#倒された敵がランダムな コインを落とす"
	-- English: "{VAR:TIMEDEFFECT}#Triple shot#{{Coin}} Killed enemies drop coins"

	[Card_ID .. 69] = "{{Collectible545}}死者の本と同様の効果：#その部屋で倒された敵 1体につき、友好的な 骨タイプの敵、または アイザックを周回する 骨を1つスポーンする", -- XIII - Death?
	-- English: "{{Collectible545}} Activates Book of the Dead#{{Friendly}} Spawns friendly Bone entities for each enemy killed in room"

	[Card_ID .. 70] = "ランダムなピルの効果を 5連続で発動する", -- XIV - Temperance?
	-- English: "{{Pill}} Forces Isaac to eat 5 random pills"

	[Card_ID .. 71] = "{{Collectible33}}聖書の効果を発動する#30秒間、{{Collectible390}}セラフィムと 飛行能力を付与する", -- XV - The Devil?
	-- English: "{{Timer}} Receive for 60 seconds:#{{Collectible33}} Activates The Bible (flight)#{{Collectible390}} Seraphim familiar#{{MomsHeart}} Kills Mom's Foot and Mom's Heart instantly#{{Warning}} Kills Isaac when used on Satan"

	[Card_ID .. 72] = "岩や障害物の塊を部屋の 7ヶ所に生成する#ｘ岩が複数生成される 可能性がある", -- XVI - The Tower?
	-- English: "Spawns 7 clusters of random rocks and obstacles#Clusters often contain Tinted Rocks"

	[Card_ID .. 73] = "最も古いパッシブアイテム （初期アイテムを除く）を 削除する#現在の部屋のアイテム プールからランダムな アイテムを2個スポーン", -- XVII - The Stars?
	-- English: "Removes Isaac's oldest collected passive item (ignoring starting items)#Spawns 2 random items from the current room's item pool"

	[Card_ID .. 74] = "離れ隠し部屋にテレポート#通常の部屋に戻る経路は 赤い部屋で生成される", -- XVIII - The Moon?
	-- English: "{{UltraSecretRoom}} Teleports Isaac to the Ultra Secret Room#Pathway back will be made of red rooms"

	[Card_ID .. 75] = "赤ハートを骨ハートに 置き換える", -- XIX - The Sun?
	-- Full old Desc: "現フロアに居る間：#飛行能力を付与#涙に透過効果を付与#↑ 攻撃力 +1.5#赤ハートを骨ハートに 置き換える#闇の呪いをかける"
	-- English: "{{Timer}} Receive for the floor:#{VAR:EFFECTLIST}#{{BoneHeart}} Converts heart containers into Bone Hearts (reverts)#{{CurseDarkness}} Curse of Darkness"

	[Card_ID .. 76] = "リロールマシーンを スポーンする", -- XX - Judgement?
	-- English: "{{RestockMachine}} Spawns a Restock Machine"

	[Card_ID .. 77] = "クロールスペースに 繋がるトラップドアを 生成する", -- XXI - The World?
	-- English: "{{LadderRoom}} Spawns a trapdoor to a crawlspace"

	[Card_ID .. 78] = "使い捨て{{Collectible580}}レッドキー", -- Cracked Key
	-- English: "{{Collectible580}} Single-use Red Key"

	[Card_ID .. 80] = "最後に使用したカード・ ピル・ソウルストーン・ ルーン・アクティブ アイテムの効果をコピー する", -- Wild Card
	-- English: "Copies the effect of your most recently used pill, card, rune, soul stone or activated item"

	[Card_ID .. 81] = "部屋の全てのアイテムを リロールする#元のアイテムとリロール されたアイテムが1秒 おきに切り替わって表示 される", -- Soul of Isaac
	-- English: "Makes all item pedestals in the room cycle between two different items"

	[Card_ID .. 82] = "その部屋に居る間、 アイザックが赤い オーラを放つ#倒された敵が2秒で 消える半赤ハートを スポーンする", -- Soul of Magdalene
	-- English: "{{Timer}} Effect lasts for the room:#{{HalfHeart}} Enemies killed drop half Red Hearts that disappear after 2 seconds"

	[Card_ID .. 83] = "部屋の全てのドアを開く#部屋の適用可能な全ての 壁に{{Collectible580}}レッドキー効果を 発動し、赤い部屋を生成 する", -- Soul of Cain
	-- English: "Opens all doors in the room#{{Collectible580}} Creates red rooms on every wall possible"

	[Card_ID .. 84] = "敵の動きを3秒間止め、 無敵状態で敵と弾を 貫通して移動できる#3秒後、貫通した全ての 敵にダメージを与える#貫通した敵と弾の数に 応じてダメージが増加 する", -- Soul of Judas
	-- English: "{{Collectible705}} Activates Dark Arts with a 3 second duration#Temporary ↑ {{Damage}} damage up for every enemy/projectile hit"

	[Card_ID .. 85] = "下痢と毒おならを8連続で放つ#うんち爆弾を7連続で放つ#{VAR:EFFECTLIST}", -- Soul of ???
	-- Full old Desc: "下痢と毒おならを8連続で放つ#うんち爆弾を7連続で放つ#下痢の上に立つと：#↑ 連射速度 +1.5#↑ 攻撃力　 +1"
	-- English: "{{Poison}} Causes 8 poison farts with brown creep, then quickly spawns 7 Butt Bombs#Standing on the creep grants:#{VAR:EFFECTLIST}"

	[Card_ID .. 86] = "14匹の{{Collectible117}}鳥の死体が現れ、 その部屋に居る間、敵を 攻撃する", -- Soul of Eve
	-- English: "{{Timer}} 14 Dead Bird familiars fly in and attack enemies for the room"

	[Card_ID .. 87] = "10秒間バーサーカー化し、 涙を近接攻撃に置き換える#↑ 移動速度 +0.4#↑ 攻撃力　 +3#↑ 連射速度#敵を倒すと持続時間+1秒", -- Soul of Samson
	-- English: "{{Collectible704}} Activates Berserk! for 10 seconds#{{Timer}} Each kill increases the duration by 1 second"

	[Card_ID .. 88] = "{{Collectible441}}メガブラストを 7.5秒間放つ", -- Soul of Azazel
	-- English: "{{Collectible441}} Fires a Mega Blast beam for 7.5 seconds"

	[Card_ID .. 89] = "致命的なダメージを受け ると自動的に使用され、 半ハートの状態でその 部屋に復活する#復活時、ダメージを一定 時間無効化する", -- Soul of Lazarus
	-- English: "Isaac dies and immediately revives at half a heart#This item is automatically used upon taking fatal damage (acts as an extra life)"

	[Card_ID .. 90] = "部屋の全てのアイテムと ピックアップをリロール する#アイテムはランダムな アイテムプールを使用 してリロールされる", -- Soul of Eden
	-- English: "Rerolls item pedestals and pickups in the room#The rerolled items come from random item pools"

	[Card_ID .. 91] = "その部屋に居る間、 ザ・ロストに変身する#悪魔部屋のアイテムを 1個無料で取得できるが、 取得後、他のアイテムは 消滅する#マウソレウム／ゲヘナの ドアをノーダメージで 開放できる", -- Soul of the Lost
	-- English: "{{Player10}} Turns the player into The Lost for the room#Allows taking one {{DevilRoom}} Devil Room item for free#Allows entering the Mausoleum or Gehenna door for free"

	[Card_ID .. 92] = "ランダムな使い魔を 1体、永続付与する", -- Soul of Lilith
	-- English: "Permanently grants a random familiar"

	[Card_ID .. 94] = "15匹のランダムなイナゴを スポーンする", -- Soul of Apollyon
	-- English: "Spawns 15 random locusts"

	[Card_ID .. 95] = "その部屋に居る間、 ザ・フォーガットンが セカンドキャラクター としてスポーンする", -- Soul of the Forgotten
	-- English: "{{Player16}} Spawns The Forgotten as a secondary character for the room"

	[Card_ID .. 96] = "ランダムな特殊効果 付きのウィスプを 6つスポーンする", -- Soul of Bethany
	-- English: "{{Collectible584}} Spawns 6 random Book of Virtues wisps"

	[Card_ID .. 97] = "その部屋に居る間、 エサウがセカンド キャラクターとして スポーンする#アイザックと同数の ランダムなパッシブ アイテムを所持した 状態でスポーンする", -- Soul of Jacob and Esau
	-- English: "{{Player20}} Spawns Esau as a secondary character for the room#He spawns with as many passive items as the player"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Pills ----------

local Pill_ID = "5.70."
local additionalPillInformations = {
	[Pill_ID .. 4] = "爆弾と鍵の所持数を 入れ替える#金爆弾／金鍵の場合、 金効果も入れ替わる", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Golden bombs and keys are also swapped"

	[Pill_ID .. 38] = "ゲーム画面が30秒間 ピクセル加工される", -- Retro Vision
	-- English: "{{Timer}} Pixelates the screen for 30 seconds"

	[Pill_ID .. 42] = "部屋の全ての敵と アイザックを スロー状態にする", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. 43] = "部屋の全ての敵と アイザックを 加速状態にする#30秒後と60秒後にも 効果が発動する", -- I'm Excited!!
	-- English: "{{Timer}} Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. 9999] = "ランダムなピルの効果#複数回使用できる", -- Golden Pill
	-- English: "Random pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalPillInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Horse Pills ----------

local HorseID = PillColor.PILL_GIANT_FLAG
local additionalHorsePillInformations = {
	[Pill_ID .. (HorseID + 1)] = "全ての敵に毒を与える", -- Bad Gas
	-- English: "{{Poison}} Poisons the entire room"

	[Pill_ID .. (HorseID + 2)] = "ハート2個のダメージを 受ける#ハートが1個以下の場合、 体力全快ピルに変化", -- Bad Trip
	-- English: "{{Warning}} Deals 2 hearts of damage to Isaac#Becomes a Full Health horse pill (+3 Soul Hearts) at 1 heart or less"

	[Pill_ID .. (HorseID + 4)] = "爆弾と鍵の所持数を 入れ替える#爆弾と鍵の所持数を 50%増やす#金爆弾／金鍵の場合、 金効果も入れ替わる", -- Bombs are Key
	-- English: "Swaps Isaac's number of {{Bomb}} bombs and {{Key}} keys#Increases bomb and key count by 50%#Golden bombs and keys are also swapped"

	[Pill_ID .. (HorseID + 5)] = "アイザックの尻から 巨大ホーミング爆弾が 8連続スポーンする", -- Explosive Diarrhea
	-- English: "Spawns a few homing Mega Troll Bombs"

	[Pill_ID .. (HorseID + 7)] = "最大体力が2以下の 場合、HPアップに変化", -- Health Down
	-- Full old Desc: "↓ 最大体力 -2#最大体力が2以下の 場合、HPアップに変化"
	-- English: "Becomes a Health Up horse pill at 0 or 1 heart containers"

	[Pill_ID .. (HorseID + 11)] = "{{Collectible279}}ビッグファンを付与#付与の上限なし", -- Pretty Fly
	-- English: "{{Collectible279}} Grants a Big Fan orbital#There is no limit on the number of Big Fans Isaac can have"

	[Pill_ID .. (HorseID + 21)] = "アクティブアイテムを フルチャージする", -- 48 Hour Energy!
	-- Full old Desc: "アクティブアイテムを フルチャージする#3～4個の電池をドロップ"
	-- English: "{{Battery}} Fully recharges active items"

	[Pill_ID .. (HorseID + 22)] = "赤ハートを1個残しで 空にして、1～4個の 赤ハートをスポーン", -- Hematemesis
	-- Full old Desc: "赤ハートを1個残しで 空にして、1～4個の 赤ハートをスポーン"
	-- English: "{{EmptyHeart}} Drains all but one heart container"

	[Pill_ID .. (HorseID + 23)] = "4秒間のマヒ", -- Paralysis
	-- English: "Prevents Isaac from moving and shooting for 4 seconds"

	[Pill_ID .. (HorseID + 25)] = "部屋の全ての敵を 友好的な敵に変える", -- Pheromones
	-- English: "{{Charm}} Turns every enemy in the room permanently friendly"

	[Pill_ID .. (HorseID + 27)] = "レモン汁が部屋全体に 広がって、触れた敵に ダメージを与える", -- Lemon Party
	-- English: "Spawns a puddle of creep the size of a room which damages enemies"

	[Pill_ID .. (HorseID + 28)] = "60秒間、涙が斜めに飛ぶ", -- R U A Wizard?
	-- English: "{{Timer}} Isaac shoots diagonally for 60 seconds"

	[Pill_ID .. (HorseID + 31)] = "4秒間うんちを出し続ける", -- Re-Lax
	-- English: "Isaac spawns poop behind him for 10 seconds"

	[Pill_ID .. (HorseID + 32)] = "現フロアに迷路の呪いを かける", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor"

	[Pill_ID .. (HorseID + 33)] = "アイザックのサイズ拡大#当たり判定は不変", -- One makes you larger
	-- English: "Greatly increases Isaac's size#Doesn't affect his hitbox"

	[Pill_ID .. (HorseID + 34)] = "アイザックのサイズ縮小#当たり判定も縮小", -- One makes you small
	-- English: "Greatly decreases Isaac's size#Also decreases his hitbox's size"

	[Pill_ID .. (HorseID + 35)] = "部屋のうんち1個につき 2匹の青クモをスポーン", -- Infested!
	-- English: "Spawns 2 blue spiders for each poop in the room"

	[Pill_ID .. (HorseID + 36)] = "部屋の敵1体につき2匹の 青クモをスポーンする#敵が居ない場合2～6匹の 青クモをスポーンする", -- Infested?
	-- English: "Spawn 2 blue spiders for each enemy in the room#Spawns 2-6 blue spiders if there are no enemies in the room"

	[Pill_ID .. (HorseID + 38)] = "ゲーム画面が90秒間 ピクセル加工される", -- Retro Vision
	-- English: "Pixelates the screen for 90 seconds"

	[Pill_ID .. (HorseID + 40)] = "茶色の液体が床に広がり、 アイザックをスリップ させる#通常のピルより長持ち", -- X-Lax
	-- English: "Spawns a pool of long lasting slippery creep"

	[Pill_ID .. (HorseID + 41)] = "黒い液体が床に広がり、 触れた敵をスロー状態に#通常のピルより長持ち", -- Something's wrong...
	-- English: "{{Slow}} Spawns a pool of long lasting slowing creep"

	[Pill_ID .. (HorseID + 42)] = "部屋の全ての敵と アイザックを スロー状態にする", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies in the room"

	[Pill_ID .. (HorseID + 43)] = "部屋の全ての敵と アイザックを 加速状態にする#30秒後と60秒後にも 効果が発動する", -- I'm Excited!!
	-- English: "Speeds up Isaac and all enemies in the room#Triggers again after 30 and 60 seconds"

	[Pill_ID .. (HorseID + 44)] = "保持中のトリンケットを 吸収し、効果を永続化する#吸収したトリンケット 1個につき赤ハート1個 回復する", -- Gulp!
	-- English: "Consumes Isaac's trinket and grants its effects permanently"

	[Pill_ID .. (HorseID + 45)] = "{{Collectible149}} 吐き気薬の涙を複数放つ", -- Horf!
	-- English: "{{Collectible149}} Shoots a cluster of Ipecac tears"

	[Pill_ID .. (HorseID + 47)] = "最後に使用したピルを ホースピル状態にして スポーンする", -- Vurp!
	-- English: "Spawns the last pill Isaac used as a horse pill"

	[Pill_ID .. (HorseID + 50)] = "↑ ランダムなステータス 1つを2回増加させる#↓ ランダムなステータス 1つを2回減少させる#{{Collectible46}}幸せの足・{{Collectible303}}おとめ座・ {{Collectible75}}PHD所有時は減少なし#{{Collectible654}}偽PHD所有時は増加なし", -- Experimental Pill
	-- English: "↑ Increases 1 random stat twice#↓ Decreases 1 random stat twice"

	[Pill_ID .. (HorseID + 9999)] = "ランダムなホースピル効果#複数回使用できる", -- Golden Pill
	-- English: "Random horse pill effect#Has a chance to destroy itself with each use"

}
EID:updateDescriptionsViaTable(additionalHorsePillInformations, EID.descriptions[languageCode].AdditionalInformations)
