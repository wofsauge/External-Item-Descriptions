local languageCode = "ja_jp"
---------- Collectibles ----------

local C_ID = "5.100."
local additionalCollectibleInformations = {
	[C_ID .. 56] = "レモン汁が床に広がり、 触れた敵に毎秒24の ダメージを与える#レモン汁は部屋に居る間 残り続ける", -- Lemon Mishap
	-- English: "Spills a pool of creep#The creep deals 24 damage per second#Creep persists until you exit the room"

	[C_ID .. 117] = "ダメージを受けると鳥が 現れ、その部屋に居る間、 敵を追いかけて攻撃する#毎秒4.3の接触ダメージ", -- Dead Bird
	-- Full old Desc: "ダメージを受けると鳥が 現れ、その部屋に居る間、 敵を追いかけて攻撃する#残り体力が半ハートの時、 常に有効（イブのみ{{Heart}}1）#毎秒4.3の接触ダメージ"
	-- English: "Taking damage spawns a bird that attacks enemies#Persists between rooms if player is at 1/2 hearts"

	[C_ID .. 351] = "部屋の障害物を全て爆破し、 全ての敵に100ダメージを 与える　　　　#近くの敵に5ダメージと 毒を与える#ボスラッシュ・ハッシュ・ 隠し部屋の入り口も破壊", -- Mega Bean
	-- English: "{{Petrify}} Deals 100 damage and petrifies all enemies in the room#{{Poison}} Deals 5 damage and poisons any enemies nearby#Can open secret rooms and break rocks"

	[C_ID .. 420] = "円を描くように歩くと 床に五芒星のシンボルが 浮かび上がり、範囲内の 敵に毎秒25のダメージを 与える#↑ 爆弾ダメージｘ1.85#↑ 爆発範囲#焚き火が消火時に爆発する （自傷ダメージなし）", -- Black Powder
	-- English: "Walking in a circle draws a pentagram on the floor, which deals 130 damage over 4 seconds#Grants bigger explosions#Fireplaces explode when extinguished"

	[C_ID .. 436] = "アイザックに追従し、 敵の弾をブロックする#10回ブロックすると 破壊され、次のフロア まで連射速度がアップ", -- Milk!
	-- English: "Blocks enemy projectiles#{{Tears}} After 10 hits, it breaks and grants a Tears up for the remainder of the floor"

	[C_ID .. 447] = "4秒間攻撃を続けると おならの雲が発生し、 触れた敵に攻撃力ｘ5の ダメージを毎秒与える#雲は10秒間持続し、 サイズは徐々に大きく、 ダメージは小さくなる#雲を涙で撃つと動かせる", -- Linger Bean
	-- English: "Firing without pause for 4 seconds spawns a poop cloud#The cloud increases its size over 10 seconds#The cloud deals less damage the bigger it gets#It can be moved by shooting it"

	[C_ID .. 470] = "部屋を飛び回る使い魔#攻撃ボタン押下中は 動きを止め、敵の弾を ブロックし、放射状に 6ダメージの弾を放つ", -- Hushy
	-- Full old Desc: "部屋を飛び回る使い魔#接触した敵に毎秒30の ダメージを与える#攻撃ボタン押下中は 動きを止め、敵の弾を ブロックし、放射状に 6ダメージの弾を放つ"
	-- English: "Bounces around the room#Stops moving when Isaac shoots#Blocks projectiles when stopped and fires radial bursts of tears"

	[C_ID .. 475] = "デリリアム／マザー戦 使用時は12秒後に延長", -- Plan C
	-- Full old Desc: "全ての敵に9,999,999の ダメージを与え、3秒後に アイザックを殺す#デリリアム／マザー戦 使用時は12秒後に延長"
	-- English: "{{Warning}} Kills Isaac 3 seconds later#10 to 12 seconds for Delirium and Mother"

	[C_ID .. 482] = "ランダムなプレイヤー キャラクターに変化する#最後に取得したアイテムを 50%の確率で削除する", -- Clicker
	-- English: "Changes your character to a random character#50% chance of removing the most recent item collected"

	[C_ID .. 510] = "友好的なデリリアムを召喚#同時に召喚できるのは一体 までで、フロアに居る間有効#召喚したデリリアムの体力は 時間経過でも減少する", -- Delirious
	-- English: "Spawns a friendly delirium version of a boss#Persists between rooms#{{Warning}} Only one boss can be active at a time#The health of the boss deteriorates over time"

	[C_ID .. 560] = "ダメージを受けると、 円形に10発の涙を放ち、 床に血だまりを生成し、 連射速度がアップする#最初に1.2、以降は0.4 ずつアップする#その部屋でのみ有効", -- It Hurts
	-- English: "{{Timer}} When taking damage, receive for the room:#↑ {{Tears}} +1.2 Fire rate on the first hit#↑ {{Tears}} +0.4 Fire rate for each additional hit#Releases a ring of 10 tears around Isaac#Tears leave a pool of creep on impact"

	[C_ID .. 593] = "移動ボタンをダブルタップ すると、突進攻撃が発動#突進中はダメージを受けず、 衝突した敵に攻撃力x4+8の ダメージを与える#衝突時に火柱が立ち、敵に 10ダメージと火傷を与える#3秒のクールダウン", -- Mars
	-- English: "Double-tapping a movement key makes Isaac dash#{{Damage}} During a dash, Isaac is invincible and deals 4x his damage +8#{{Timer}} 3 seconds cooldown#{{Burning}} Creates a ring of fire on impact"

	[C_ID .. 632] = "炎・混乱・恐怖・毒・ クモの巣・爆発キノコ への耐性を付与する#床に残るダメージ性の 液体を1秒間無効化", -- Evil Charm
	-- Full old Desc: "↑ 運 +2#炎・混乱・恐怖・毒・ クモの巣・爆発キノコ への耐性を付与する#床に残るダメージ性の 液体を1秒間無効化"
	-- English: "Immune to {{Burning}} fire damage, {{Confusion}} confusion, {{Fear}} fear, {{Slow}} spider-webs and {{Poison}} poison effects#Grants 1 second immunity to creep"

	[C_ID .. 660] = "フロア開始時、ポータルが 二つ生成される#部屋を離れるとポータルは 消滅する#ポータルの色と行き先：#{{ColorRed}}赤：{{CR}}{{BossRoom}}ボス部屋#{{ColorYellow}}黄：{{CR}}{{TreasureRoom}}トレジャールーム#{{ColorBlue}}青：{{CR}}{{SecretRoom}}隠し部屋#{{ColorGreen}}緑：{{CR}}{{Shop}}お店", -- Card Reading
	-- English: "Spawns two portals in the first room of each floor#Leaving the room despawns the portals#{{Blank}} {{ColorRed}}Red: {{CR}}{{BossRoom}} Boss Room#{{Blank}} {{ColorYellow}}Yellow: {{CR}}{{TreasureRoom}} Item Room#{{Blank}} {{ColorBlue}}Blue: {{CR}}{{SecretRoom}} Secret Room#{{Blank}} {{ColorGreen}}Green: {{CR}}{{Shop}} Shop"

	[C_ID .. 681] = "攻撃ボタンをダブルタップ すると突進し、接触した 敵にダメージを与える#突進中にピックアップを 吸収すると、ダメージ・ サイズがアップ#2～3個のピックアップを 吸収すると特殊な部屋に つながるポータルを生成して 消え、次のフロアで復活する#ポータルはそのゲーム中 常に同じ部屋へつながり、 倉庫のように使える", -- Lil Portal
	-- English: "Double-tapping a fire button launches the portal#Deals contact damage when launched#Consumes pickups in its path#Each pickup consumed increases its size, damage, and spawns a blue fly#Consuming 2-3 pickups spawns a portal to a special room and the familiar disappears for the rest of the floor#The content of the room persists for the rest of the run"

	[C_ID .. 685] = "ウィスプが2つスポーンし、 アイザックを周回する#使用するたび、一度に スポーンする数が増え、 最大12まで達する#ウィスプは透過効果付きの 涙を放ち、弾をブロックし、 敵に接触ダメージを与える#一定量のブロック・接触で 燃え尽きる", -- Jar of Wisps
	-- English: "Spawns 2 random wisps#Spawns one additional wisp with each use, up to 12"

	[C_ID .. 706] = "部屋の全てのアイテムを 破壊し、イナゴの使い魔 に変換する　　#アイテムに応じて特殊な イナゴが生成される#イナゴは攻撃方向に連動 して発射され、接触した 敵にダメージを与える#ダメージはアイザックの 攻撃力xアイテムの品質に 応じた倍率：#{{Blank}} {{Quality0}} x0.5#{{Blank}} {{Quality1}} x0.75#{{Blank}} {{Quality2}} x1.0#{{Blank}} {{Quality3}} x1.5#{{Blank}} {{Quality4}} x2.0#最大64匹まで所持できる", -- Abyss
	-- English: "Consumes all item pedestals in the room and spawns a locust familiar for each one#Some items spawn a special locust when consumed#{{Damage}} Locusts deal Isaac's damage multiplied by the item quality consumed:#{{Quality0}} - 0.5x#{{Quality1}} - 0.75x#{{Quality2}} - 1.0x#{{Quality3}} - 1.5x#{{Quality4}} - 2.0x"

}
EID:updateDescriptionsViaTable(additionalCollectibleInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Trinkets ----------

local T_ID = "5.350."
local additionalTrinketInformations = {
	[T_ID .. 5] = "チャンピオンタイプの 敵・ボスの出現率2倍#報酬の量も2倍になり、 確率が50%にアップ", -- Purple Heart
	-- English: "2x chance for champion enemies#50% chance for champion enemies to drop loot#Doubles champion enemy loot"

	[T_ID .. 16] = "戦闘中これを床にドロップ すると、その地点にママの 踏み潰し攻撃が発生する", -- Mom's Toenail
	-- English: "{{MomBoss}} Dropping the trinket in hostile rooms will cause Mom's Foot to stomp its location"

	[T_ID .. 23] = "{{Player10}} 死亡時、その部屋で ザ・ロストとして復活#フロア開始時、33%の 確率で隠し部屋を明かす", -- Missing Poster
	-- English: "{{Player10}} Respawn as The Lost on death#{{SuperSecretRoom}} 33% chance to reveal Super Secret Room on new floor"

	[T_ID .. 53] = "ボスを含む、HP60以上の 敵のHPを15%減少させる#ボス部屋に入った時、 赤ハート1個回復#!!! 取得すると取り外せない#{{Trinket41}}マッチ棒か{{Trinket135}}ライターで 除去可能", -- Tick
	-- English: "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick, {{Trinket135}} A Lighter or gulping"

	[T_ID .. 70] = "部屋クリア時に青クモがスポーン", -- Louse
	-- English: "Spawns a blue spider every 30 seconds in hostile rooms#Spawns a blue spider on room clear"

	[T_ID .. 76] = "宝箱を開くと50%の確率で 追加の報酬がスポーンし、 50%の確率で中身がハエに 置き換わる#報酬が低品質のアイテム だった場合、品質アップ#金の宝箱に、別のアイテム プールからのアイテムが 時々含まれるようになる#ギャンブルの勝率アップ", -- Poker Chip
	-- English: "↑ 50% chance for chests to spawn extra pickups#↓ 50% chance for chests to contain a single fly#Increases payout odds of slots and other machines#If chest contains an item, its forced to be quality 3 or higher#Chest content can occasionally be items outside the golden chest item pool"

	[T_ID .. 85] = "寄付マシーンへの寄付時、 33%の確率で以下の効果：#40%：赤ハートを1回復#40%：キャッシュバック#15%：運 +1#5%：乞食がスポーン#乞食への寄付／献血／ 懺悔／リストックでも 同様の効果が発生#↓ 寄付時のジャム確率", -- Karma
	-- English: "{{DonationMachine}} Using any type of Donation Machine has a 33% chance to:#{{HealingRed}} Heal 1 heart (40%)#{{Coin}} Give 1 coin (40%)#{{Luck}} Grant +1 luck (15%)#{{Beggar}} Spawn a Beggar (5%)#{{DonationMachine}} Donation machines are less likely to jam#Also affects Beggar donations and Restock machines"

	[T_ID .. 89] = "使い魔がアイザックに近付き、 攻撃力とサイズが25%アップ", -- Child Leash
	-- English: "Familiars stay closer to Isaac#{{Damage}} 25% Increased familiar damage"

	[T_ID .. 93] = "{{Collectible9}} 各部屋に33%の確率で スカトール効果を付与し、 ハエ系の敵を中立化する#新しい部屋に入るたび、 青ハエを1匹スポーン", -- Used Diaper
	-- English: "33% chance per room for all fly enemies to become friendly#Spawns 1 blue fly when entering a new room"

	[T_ID .. 103] = "コイン・爆弾・鍵の 所持数が等しい時：#各ピックアップが ダブルバージョンに#↑ 連射速度 +2", -- Equality!
	-- English: "When Isaac's {{Coin}} coin, {{Bomb}} bomb and {{Key}} key counts are equal:#↑ {{Tears}} +2 Tears#Turns single pickups into double pickups"

	[T_ID .. 133] = "設置した爆弾が起爆する までの時間が、1.5秒から 0.66秒に短縮される#爆弾のダメージ +15%", -- Short Fuse
	-- English: "Isaac's bombs explode faster#Bombs deal 15% more damage"

	[T_ID .. 135] = "部屋に入った時、20%の 確率で敵を火傷にする#確率は運40で最大100%に#{{Trinket53}} ダニを取り外せる", -- A Lighter
	-- English: "{{Burning}} Entering a room has a 20% chance to burn random enemies#{{Warning}} Removes {{Trinket53}} Tick"

	[T_ID .. 172] = "コイン取得時、ランダムな 部屋にテレポートする#レアコインは特殊な部屋に 一定確率でテレポート：#通常：50%で未訪問部屋#ダブル：50%{{DiceRoom}}{{ChestRoom}}{{IsaacsRoom}}#ニッケル：50%{{TreasureRoom}}{{Shop}}{{Library}}{{ArcadeRoom}}{{ChallengeRoom}}{{BossRushRoom}}#ダイム：25%{{AngelRoom}}{{DevilRoom}}#{{Blank}} ※出現率を無視し、 　選択はランダム#ラッキー：50%{{SecretRoom}}{{SuperSecretRoom}}#黄金：10%でI_AM_ERROR#粘着：100%{{BossRoom}}{{CursedRoom}}", -- Cursed Penny
	-- English: "Picking up a coin teleports Isaac to a random room#Can teleport to secret rooms#The type of coin affects the selected room type"

}
EID:updateDescriptionsViaTable(additionalTrinketInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Cards ----------

local Card_ID = "5.300."
local additionalCardInformations = {
	[Card_ID .. 11] = "スロットマシーンか 占いマシーンをスポーン#1%の確率でクレーン ゲームをスポーン", -- X - Wheel of Fortune
	-- English: "{{Slotmachine}} Spawns a Slot Machine#{{FortuneTeller}} 24% chance for it to be a Fortune Telling Machine#{{CraneGame}} 1% chance for it to be a Crane Game"

	[Card_ID .. 32] = "部屋の全ての障害物と、 石像タイプの敵を破壊#無敵効果がある敵の 骨・石をハガして無力化", -- Hagalaz
	-- English: "Destroy all rocks and stone enemies in the room"

	[Card_ID .. 38] = "{{Collectible706}} イナゴを3匹スポーン#その部屋でのみ有効", -- Berkano
	-- English: "{{Collectible706}} Summons 3 Abyss locusts for the room"

}
EID:updateDescriptionsViaTable(additionalCardInformations, EID.descriptions[languageCode].AdditionalInformations)

---------- Horse Pills ----------

local Pill_ID = "5.70."
local HorseID = PillColor.PILL_GIANT_FLAG
local additionalHorsePillInformations = {
	[Pill_ID .. (HorseID + 20)] = "特殊な部屋にテレポート", -- Telepills
	-- English: "Teleports Isaac to a special room"

	[Pill_ID .. (HorseID + 26)] = "{{CurseLost}} マップを？に置き換える (迷われし者の呪い)#識別済みのピルが 未識別のピルに戻る", -- Amnesia
	-- English: "{{CurseLost}} Hides the floor map#{{Pill}} Forgets all previously identified pills"

	[Pill_ID .. (HorseID + 32)] = "現フロアに迷路の呪いを かける#複数使用で別の呪い", -- ???
	-- English: "{{CurseMaze}} Curse of the Maze effect for the floor#Additional curses after multiple uses"

	[Pill_ID .. (HorseID + 42)] = "そのフロアに居る間、 アイザックと全ての 敵をスロー状態にする", -- I'm Drowsy...
	-- English: "{{Slow}} Slows Isaac and all enemies for the whole floor"

	[Pill_ID .. (HorseID + 43)] = "そのフロアに居る間、 アイザックと全ての 敵を加速状態にする", -- I'm Excited!!
	-- English: "Speeds up Isaac and all enemies for the whole floor"

	[Pill_ID .. (HorseID + 44)] = "保持中のトリンケットを {{ColorGold}}ゴールデン状態{{CR}}で吸収し、 効果を永続化する", -- Gulp!
	-- English: "Consumes Isaac's trinket and grants its {{ColorGold}}golden{{CR}} effect permanently"

}
EID:updateDescriptionsViaTable(additionalHorsePillInformations, EID.descriptions[languageCode].AdditionalInformations)
