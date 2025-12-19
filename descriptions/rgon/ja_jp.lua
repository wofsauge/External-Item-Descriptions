---------------------------------------
-----  Basic Japanese descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "ja_jp"

---------- Collectibles ----------

local collectibles = {
	-- Change: added "Creep persists until you exit the room"
	[56] = { "56", "レモンの災い", "レモン汁が床に広がり、 触れた敵に毎秒24の ダメージを与える#レモン汁は部屋に居る間 残り続ける"}, -- Lemon Mishap
	-- Change: added "Persists between rooms if player is at 1/2 hearts"
	[117] = { "117", "鳥の死体", "ダメージを受けると鳥が 現れ、その部屋に居る間、 敵を追いかけて攻撃する#残り体力が半ハートの時、 常に有効（イブのみ{{Heart}}1）#毎秒4.3の接触ダメージ"}, -- Dead Bird
	-- Change: Complete rewrite
	[281] = { "281", "サンドバッグ", "アイザックの代わりに 敵の標的になる使い魔#敵の弾をブロックする" }, -- Punching Bag
	-- Change: added "+0.2 Shot speed"
	[329] = { "329", "ルドチーボ・テクニック", "↑ 弾速 +0.2#涙を発射する代わりに 浮遊する一つの涙を操作する" }, -- The Ludovico Technique
	-- Change: added "+0.2 Shot speed"
	[351] = { "351", "メガ豆", "部屋の障害物を全て爆破し、 全ての敵に100ダメージを 与える　　　　#近くの敵に5ダメージと 毒を与える#ボスラッシュ・ハッシュ・ 隠し部屋の入り口も破壊"}, -- Mega Bean
	-- Change: 10% >> 20%. No longer explodes when killed,
	[398] = { "398", "神々の肉", "20%の確率で涙に収縮化 効果が付与される#収縮した敵は踏み潰せ、 爆発や炸裂を起こさない"}, -- God's Flesh
	-- Change: Complete rewrite
	[436] = { "436", "ミルク！", "アイザックに追従し、 敵の弾をブロックする#10回ブロックすると 破壊され、次のフロア まで連射速度がアップ"}, -- Milk!
	-- Change: Complete rewrite
	[447] = { "447", "リンガービーンズ", "4秒間攻撃を続けると おならの雲が発生し、 触れた敵に攻撃力ｘ5の ダメージを毎秒与える#雲は10秒間持続し、 サイズは徐々に大きく、 ダメージは小さくなる#雲を涙で撃つと動かせる"}, -- Linger Bean
	-- Change: added " and fires radial bursts of tears"
	[470] = { "470", "ハッシー", "部屋を飛び回る使い魔#接触した敵に毎秒30の ダメージを与える#攻撃ボタン押下中は 動きを止め、敵の弾を ブロックし、放射状に 6ダメージの弾を放つ"}, -- Hushy
	-- Change: added "Turns item pedestals into glitched items"
	[481] = { "481", "データマイナー", "ランダムなステータスを 一つ増やし、一つ減らす#その部屋に居る間、涙に ランダムな効果を付与#画面と音楽を歪める#{{Collectible721}} 部屋にあるアイテムを グリッチ化させる"}, -- Dataminer
	-- Change: Reduced the chance of removing the most recent item to 50%
	[482] = { "482", "クリッカー", "ランダムなプレイヤー キャラクターに変化する#最後に取得したアイテムを 50%の確率で削除する" }, -- Clicker
	-- Change: Complete rewrite
	[510] = { "510", "精神錯乱", "友好的なデリリアムを召喚#同時に召喚できるのは一体 までで、フロアに居る間有効#召喚したデリリアムの体力は 時間経過でも減少する"}, -- Delirious
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = { "560", "痛い・・・", "ダメージを受けると、 円形に10発の涙を放ち、 床に血だまりを生成し、 連射速度がアップする#最初に1.2、以降は0.4 ずつアップする#その部屋でのみ有効"}, -- It Hurts
	-- Change: added "Isaac gains a shield for half a second during the end of the dash."
	[593] = { "593", "マルス", "移動ボタンをダブルタップ すると、突進攻撃が発動#突進中はダメージを受けず、 衝突した敵に攻撃力x4+8の ダメージを与える#衝突時に火柱が立ち、敵に 10ダメージと火傷を与える#3秒のクールダウン"}, -- Mars
	-- Change: Heals 2 hearts instead of 1/2
	[594] = { "594", "ユピテル", "体力を2回復#↑ 最大体力 +2##↓ 移動速度 -0.3#静止中、一時的に移動 速度が上昇し、毒ガス がチャージされる#移動すると一時上昇した 移動速度が減少を始め、 同時に毒ガスを放出す#アイザックに毒耐性を付与"}, -- Jupiter
	-- Change: Complete rewrite
	[632] = { "632", "イビル チャーム", "↑ 運 +2#炎・混乱・恐怖・毒・ クモの巣・爆発キノコ への耐性を付与する#床に残るダメージ性の 液体を1秒間無効化"}, -- Evil Charm
	-- Change: Adjusted the stat boost to match Hallowed Ground
	[651] = { "651", "ベツレヘムの星", "ボス部屋に向かって自律 移動し、到達すると停止 する使い魔#使い魔の範囲内：#↑ 攻撃力　 +20%#↑ 連射速度 +150%#涙にホーミング効果を付与#50%の確率でダメージ無効" }, -- Star of Bethlehem
	-- Change: Added Shop as a new destination
	[660] = { "660", "カードリーディング", "フロア開始時、ポータルが 二つ生成される#部屋を離れるとポータルは 消滅する#ポータルの色と行き先：#{{ColorRed}}赤：{{CR}}{{BossRoom}}ボス部屋#{{ColorYellow}}黄：{{CR}}{{TreasureRoom}}トレジャールーム#{{ColorBlue}}青：{{CR}}{{SecretRoom}}隠し部屋#{{ColorGreen}}緑：{{CR}}{{Shop}}お店" }, -- Card Reading
	-- Change: Complete rewrite
	[681] = { "681", "リトル ポータル", "攻撃ボタンをダブルタップ すると突進し、接触した 敵にダメージを与える#突進中にピックアップを 吸収すると、ダメージ・ サイズがアップ#2～3個のピックアップを 吸収すると特殊な部屋に つながるポータルを生成して 消え、次のフロアで復活する#ポータルはそのゲーム中 常に同じ部屋へつながり、 倉庫のように使える"}, -- Lil Portal
	-- Change: Added into for first usage
	[685] = { "685", "ウィスプの壺", "ウィスプが2つスポーンし、 アイザックを周回する#使用するたび、一度に スポーンする数が増え、 最大12まで達する#ウィスプは透過効果付きの 涙を放ち、弾をブロックし、 敵に接触ダメージを与える#一定量のブロック・接触で 燃え尽きる" }, -- Jar of Wisps
	-- Change: Added info about the damage based on item quality
	[706] = { "706", "アビス", "部屋の全てのアイテムを 破壊し、イナゴの使い魔 に変換する　　#アイテムに応じて特殊な イナゴが生成される#イナゴは攻撃方向に連動 して発射され、接触した 敵にダメージを与える#ダメージはアイザックの 攻撃力xアイテムの品質に 応じた倍率：#{{Blank}} {{Quality0}} x0.5#{{Blank}} {{Quality1}} x0.75#{{Blank}} {{Quality2}} x1.0#{{Blank}} {{Quality3}} x1.5#{{Blank}} {{Quality4}} x2.0#最大64匹まで所持できる" }, -- Abyss
}
EID:updateDescriptionsViaTable(collectibles, EID.descriptions[languageCode].collectibles)

---------- Trinkets ----------

local trinkets = {
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = { "53", "ダニ", "ボスを含む、HP60以上の 敵のHPを15%減少させる#ボス部屋に入った時、 赤ハート1個回復#!!! 取得すると取り外せない#{{Trinket41}}マッチ棒か{{Trinket135}}ライターで 除去可能"}, -- Tick
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = { "97", "扁桃腺", "6～12回ダメージを 受けると、敵の弾を ブロックする使い魔が スポーンする#最大2体までスポーン"}, -- Tonsil
	-- Change: added "Bombs deal 15% more damage"
	[133] = { "133", "ショート ヒューズ", "設置した爆弾が起爆する までの時間が、1.5秒から 0.66秒に短縮される#爆弾のダメージ +15%"}, -- Short Fuse
	-- Change: "2%" to "5%"
	[104] = { "104", "ウィッシュボーン", "ダメージを受けた時 5%の確率でその部屋の アイテムプールから ランダムなアイテムを スポーンする#効果発動後に消滅する"}, -- Wish Bone
	-- Change: "2%" to "5%"
	[105] = { "105", "弁当袋", "ダメージを受けた時 5%の確率で{{Collectible22}}昼ごはんが スポーンする#効果発動後に消滅する"}, -- Bag Lunch
}
EID:updateDescriptionsViaTable(trinkets, EID.descriptions[languageCode].trinkets)

------- Golden Trinkets -------

local goldenTrinketEffects = {
	-- Tick (replace): added ", {{Trinket135}} A Lighter"
	[53] = {
		"ボスのHPが{{ColorGold}}30{{CR}}%減少#ボス部屋に入った時、 赤ハート{{ColorGold}}2{{CR}}個回復#{{ColorGold}}取り外せる！",
		"ボスのHPが{{ColorGold}}30{{CR}}%減少#ボス部屋に入った時、 赤ハート{{ColorGold}}2{{CR}}個回復#!!! 取得すると取り外せない#{{Trinket41}}マッチ棒か{{Trinket135}}ライターで 除去可能",
		"ボスのHPが{{ColorGold}}30{{CR}}%減少#ボス部屋に入った時、 赤ハート{{ColorGold}}3{{CR}}個回復#{{ColorGold}}取り外せる！",
	},
}
EID:updateDescriptionsViaTable(goldenTrinketEffects, EID.descriptions[languageCode].goldenTrinketEffects)

---------- Cards ----------

local cards = {
	-- Change: Added "1% chance for it to be a Crane Game"
	[11] = { "11", "X - 運命の輪", "スロットマシーンか 占いマシーンをスポーン#1%の確率でクレーン ゲームをスポーン" }, -- X - Wheel of Fortune
	-- Change: Complete rewrite
	[38] = { "38", "ベルカナ", "{{Collectible706}} イナゴを3匹スポーン#その部屋でのみ有効" },                                                                            -- Berkano
}
EID:updateDescriptionsViaTable(cards, EID.descriptions[languageCode].cards)

local tarotClothBuffs = {
	-- Change: Added Crane Game
	[11] = {"スロットマシーンか 占いマシーンを{{ColorShinyPurple}}2つ{{CR}}スポーン#1%の確率でクレーン ゲームをスポーン"}, -- X - Wheel of Fortune
}
EID:updateDescriptionsViaTable(tarotClothBuffs, EID.descriptions[languageCode].tarotClothBuffs)

---------- Pills ----------

local horsepills = {
	-- Change: Forgets all previously identified pills
	[26] = { "25", "記憶喪失", "{{CurseLost}} マップを？に置き換える (迷われし者の呪い)#識別済みのピルが 未識別のピルに戻る" }, -- Amnesia
}
EID:updateDescriptionsViaTable(horsepills, EID.descriptions[languageCode].horsepills)

---------- Conditions ----------

EID.descriptions[languageCode].ConditionalDescs["5.100.566"] = nil -- Dream Catcher (Greed) - In Rep+, the dream preview works in greed mode as well, so no changes needed

local conditions = {
	-- Change: Removed info about Infinte usage of Yum Heart, because its fixed. Now, bleeding hearts provide only half the charge of a regilar heart container
	["5.100.205 (Tainted Magdalene)"] = "消耗するハートは 1個で1チャージ", -- Sharp Plug + Tainted Magdalene
}
EID:updateDescriptionsViaTable(conditions, EID.descriptions[languageCode].ConditionalDescs)

---------- Synergies ----------

-- Special Locust effects when Item was eaten by Abyss. Entries here will override the auto-generated descriptions
local abyssSynergies = {
	[706] = "特殊効果持ちのイナゴを 16匹スポーンする", -- Abyss
}

-- Remove all entries from Repentance file, and only add special descriptions relevant to Repentance+
EID.descriptions[languageCode].abyssSynergies = {}
EID:updateDescriptionsViaTable(abyssSynergies, EID.descriptions[languageCode].abyssSynergies)


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
