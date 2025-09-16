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
	-- Change: Can now break the soft tears cap.
	[120] = { "120", "変なキノコ", "↑ 連射速度 +1.7#{{Blank}} ※上限を突破できる#↑ 移動速度 +0.3#↓ 攻撃力　 -10%#↓ 攻撃力　 -0.4"}, -- Odd Mushroom
	-- Change: Now always drops a Penny trinket as part of its rewards.
	[141] = { "141", "ページェント ボーイ", "ランダムなコイン7枚と、 コイン系トリンケット 1個をスポーンする"}, -- Pageant Boy
	-- Change: In addition to its existing effects, each use now grants a tears upgrade for the current room.
	[186] = { "186", "血印", "ハート 1個のダメージを 受け、部屋の全ての敵に 40のダメージを与える#赤ハートを優先して消費#同じ部屋で二回以上使用 する場合、ダメージ量を 半ハートに軽減する#使用するたび、その部屋で 連射速度がアップ （そのフロアでの最初の 　使用で+0.48、以降は 　0.15ずつ効果が累積）"}, -- Blood Rights
	-- Change: Complete rewrite
	[281] = { "281", "サンドバッグ", "アイザックの代わりに 敵の標的になる使い魔#敵の弾をブロックする" }, -- Punching Bag
	-- Change: added "+0.2 Shot speed"
	[329] = { "329", "ルドチーボ・テクニック", "↑ 弾速 +0.2#涙を発射する代わりに 浮遊する一つの涙を操作する" }, -- The Ludovico Technique
	-- Change: added "+0.2 Shot speed"
	[351] = { "351", "メガ豆", "部屋の障害物を全て爆破し、 全ての敵に100ダメージを 与える　　　　#近くの敵に5ダメージと 毒を与える#ボスラッシュ・ハッシュ・ 隠し部屋の入り口も破壊"}, -- Mega Bean
	-- Change: 10% >> 20%. No longer explodes when killed,
	[398] = { "398", "神々の肉", "20%の確率で涙に収縮化 効果が付与される#収縮した敵は踏み潰せ、 爆発や炸裂を起こさない"}, -- God's Flesh
	-- Change: Now grants larger explosions and fireplaces will explode when extinguished.
	[420] = { "420", "黒い粉", "円を描くように歩くと 床に五芒星のシンボルが 浮かび上がり、範囲内の 敵に毎秒25のダメージを 与える#↑ 爆弾ダメージｘ1.85#↑ 爆発範囲#焚き火が消火時に爆発する （自傷ダメージなし）"}, -- Black Powder
	-- Change: Complete rewrite
	[436] = { "436", "ミルク！", "アイザックに追従し、 敵の弾をブロックする#10回ブロックすると 破壊され、次のフロア まで連射速度がアップ"}, -- Milk!
	-- Change: Complete rewrite
	[447] = { "447", "リンガービーンズ", "4秒間攻撃を続けると おならの雲が発生し、 触れた敵に攻撃力ｘ5の ダメージを毎秒与える#雲は10秒間持続し、 サイズは徐々に大きく、 ダメージは小さくなる#雲を涙で撃つと動かせる"}, -- Linger Bean
	-- Change: added " and fires radial bursts of tears"
	[470] = { "470", "ハッシー", "部屋を飛び回る使い魔#接触した敵に毎秒30の ダメージを与える#攻撃ボタン押下中は 動きを止め、敵の弾を ブロックし、放射状に 6ダメージの弾を放つ"}, -- Hushy
	-- Change: Increased the delay before killing Isaac, allowing Delirium and Mother death animations to complete in time.
	[475] = { "475", "プランＣ", "全ての敵に9,999,999の ダメージを与え、3秒後に アイザックを殺す#デリリアム／マザー戦 使用時は12秒後に延長"}, -- Plan C
	-- Change: added "Turns item pedestals into glitched items"
	[481] = { "481", "データマイナー", "ランダムなステータスを 一つ増やし、一つ減らす#その部屋に居る間、涙に ランダムな効果を付与#画面と音楽を歪める#{{Collectible721}} 部屋にあるアイテムを グリッチ化させる"}, -- Dataminer
	-- Change: Reduced the chance of removing the most recent item to 50%
	[482] = { "482", "クリッカー", "ランダムなプレイヤー キャラクターに変化する#最後に取得したアイテムを 50%の確率で削除する" }, -- Clicker
	-- Change: Complete rewrite
	[510] = { "510", "精神錯乱", "友好的なデリリアムを召喚#同時に召喚できるのは一体 までで、フロアに居る間有効#召喚したデリリアムの体力は 時間経過でも減少する"}, -- Delirious
	-- Change: adds +0.5 tears and +0.2 shot speed.
	[554] = { "554", "トゥ スプーキー", "近くの敵を恐怖状態にする#↑ 連射速度 +0.5#↑ 弾速　　 +0.2"}, -- 2Spooky
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = { "560", "痛い・・・", "ダメージを受けると、 円形に10発の涙を放ち、 床に血だまりを生成し、 連射速度がアップする#最初に1.2、以降は0.4 ずつアップする#その部屋でのみ有効"}, -- It Hurts
	-- Change: added "Isaac gains a shield for half a second during the end of the dash."
	[593] = { "593", "マルス", "移動ボタンをダブルタップ すると、突進攻撃が発動#突進中はダメージを受けず、 衝突した敵に攻撃力x4+8の ダメージを与える#衝突時に火柱が立ち、敵に 10ダメージと火傷を与える#3秒のクールダウン"}, -- Mars
	-- Change: Heals 2 hearts instead of 1/2
	[594] = { "594", "ユピテル", "体力を2回復#↑ 最大体力 +2##↓ 移動速度 -0.3#静止中、一時的に移動 速度が上昇し、毒ガス がチャージされる#移動すると一時上昇した 移動速度が減少を始め、 同時に毒ガスを放出す#アイザックに毒耐性を付与"}, -- Jupiter
	-- Change: Complete rewrite
	[632] = { "632", "イビル チャーム", "↑ 運 +2#炎・混乱・恐怖・毒・ クモの巣・爆発キノコ への耐性を付与する#床に残るダメージ性の 液体を1秒間無効化"}, -- Evil Charm
	-- Change: Removed the 2 Soul Hearts on pickup.
    [643] = { "643", "リベレイション", "飛行能力を付与#攻撃ボタンを押し続けて 2.35秒以上経過すると、 ボタン解放時にレーザー 攻撃を放つ"}, -- Revelation
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
	-- Change: Added champion loot information
	[5] = {"5", "パープルハート", "チャンピオンタイプの 敵・ボスの出現率2倍#報酬の量も2倍になり、 確率が50%にアップ"}, -- Purple Heart
	-- Change: Added info about devil deals
	[7] = {"7", "ロザリーのビーズ", "↑ 天使部屋の出現率 +50%#図書館とお店で{{Collectible33}}聖書の 出現率アップ#悪魔部屋を天使部屋に 置き換える"}, -- Rosary Bead
	-- Change: Dropping/swapping the trinket will now make Mom stomp on its dropped location
    [16] = {"16", "ママの足のつめ", "戦闘中これを床にドロップ すると、その地点にママの 踏み潰し攻撃が発生する"}, -- Mom's Toenail
	-- Change: Now has a 33% chance to reveal the Super Secret Room when entering a new chapter.
	[23] = {"23", "尋ね人ポスター", "{{Player10}} 死亡時、その部屋で ザ・ロストとして復活#フロア開始時、33%の 確率で隠し部屋を明かす"}, -- Missing Poster
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = { "53", "ダニ", "ボスを含む、HP60以上の 敵のHPを15%減少させる#ボス部屋に入った時、 赤ハート1個回復#!!! 取得すると取り外せない#{{Trinket41}}マッチ棒か{{Trinket135}}ライターで 除去可能"}, -- Tick
	-- Change: added +0.5 damage
	[66] = {"66", "なまけワーム", "↑ 攻撃力 +0.5#↓ 弾速　 -0.4"}, -- Lazy Worm
	-- Change: Now spawns a blue spider when completing a combat room
	[70] = {"70", "寄生虫", "部屋クリア時に青クモがスポーン"}, -- Louse
	-- Change: Added more loot information
	[76] = {"76", "ポーカーチップ", "宝箱を開くと50%の確率で 追加の報酬がスポーンし、 50%の確率で中身がハエに 置き換わる#報酬が低品質のアイテム だった場合、品質アップ#金の宝箱に、別のアイテム プールからのアイテムが 時々含まれるようになる#ギャンブルの勝率アップ"}, -- Poker Chip
	-- Change: Added additional effects
	[85] = {"85", "カルマ", "寄付マシーンへの寄付時、 33%の確率で以下の効果：#40%：赤ハートを1回復#40%：キャッシュバック#15%：運 +1#5%：乞食がスポーン#乞食への寄付／献血／ 懺悔／リストックでも 同様の効果が発生#↓ 寄付時のジャム確率"}, -- Karma
	-- Change: Added damage up information
	[89] = {"89", "子供用リード", "使い魔がアイザックに近付き、 攻撃力とサイズが25%アップ"}, -- Child Leash
	-- Change: Skatole chance raised to 33%. Spawn a blue fly when entering a new combat room.
	[93] = {"93", "使用されたオムツ", "{{Collectible9}} 各部屋に33%の確率で スカトール効果を付与し、 ハエ系の敵を中立化する#新しい部屋に入るたび、 青ハエを1匹スポーン"}, -- Used Diaper
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = { "97", "扁桃腺", "6～12回ダメージを 受けると、敵の弾を ブロックする使い魔が スポーンする#最大2体までスポーン"}, -- Tonsil
	-- Change: Added +2 Tears
	[103] = {"103", "平等！", "コイン・爆弾・鍵の 所持数が等しい時：#各ピックアップが ダブルバージョンに#↑ 連射速度 +2"}, -- Equality!
	-- Change: added "Bombs deal 15% more damage"
	[133] = { "133", "ショート ヒューズ", "設置した爆弾が起爆する までの時間が、1.5秒から 0.66秒に短縮される#爆弾のダメージ +15%"}, -- Short Fuse
	-- Change: "2%" to "5%"
	[104] = { "104", "ウィッシュボーン", "ダメージを受けた時 5%の確率でその部屋の アイテムプールから ランダムなアイテムを スポーンする#効果発動後に消滅する"}, -- Wish Bone
	-- Change: "2%" to "5%"
	[105] = { "105", "弁当袋", "ダメージを受けた時 5%の確率で{{Collectible22}}昼ごはんが スポーンする#効果発動後に消滅する"}, -- Bag Lunch
	-- Change: Removed "Also affects enemy farts."
	[134] = {"134", "ギガ豆", "おならの範囲が広がる"}, -- Gigante Bean
	-- Change: Tick can be removed by picking up A Lighter.
	[135] = {"135", "ライター", "部屋に入った時、20%の 確率で敵を火傷にする#確率は運40で最大100%に#{{Trinket53}} ダニを取り外せる"}, -- A Lighter
	-- Change: Added coin type based information
    [172] = {"172", "呪われたペニー", "コイン取得時、ランダムな 部屋にテレポートする#レアコインは特殊な部屋に 一定確率でテレポート：#通常：50%で未訪問部屋#ダブル：50%{{DiceRoom}}{{ChestRoom}}{{IsaacsRoom}}#ニッケル：50%{{TreasureRoom}}{{Shop}}{{Library}}{{ArcadeRoom}}{{ChallengeRoom}}{{BossRushRoom}}#ダイム：25%{{AngelRoom}}{{DevilRoom}}#{{Blank}} ※出現率を無視し、 　選択はランダム#ラッキー：50%{{SecretRoom}}{{SuperSecretRoom}}#黄金：10%でI_AM_ERROR#粘着：100%{{BossRoom}}{{CursedRoom}}"}, -- Cursed Penny

}
EID:updateDescriptionsViaTable(trinkets, EID.descriptions[languageCode].trinkets)

------- Golden Trinkets -------

local goldenTrinketEffects = {
	-- Purple Heart: (find + replace)
	[5] = { "50", "66", "75" },
	-- Callus: (append)
	[14] = { "生贄部屋のダメージを 半ハートに軽減する", "生贄部屋のダメージを 半ハートに軽減する", "{{Collectible108}} 受けるダメージを 半ハートに軽減する" },
	-- Mom's Toenail: (find + replace)
	[16] = { "発生", "2回{{CR}}発生", "3回{{CR}}発生" },
	-- Paper Clip: (append)
	[19] = { "キーブロックも解錠可能", "キーブロックも解錠可能", "キーブロックとドアも解錠" },
	-- Mysterious Paper: (fullReplace)
	[21] = {
		"{{Collectible327}} ポラロイドと#{{Collectible328}} ネガティブ#{{Blank}} または#{{Trinket23}} 尋ね人ポスターと#{{Trinket48}} 失くしたページ の効果が{{ColorGold}}セットで{{CR}} ランダムに発動する",
		"{{Collectible327}} ポラロイドと#{{Collectible328}} ネガティブ#{{Blank}} または#{{Trinket23}} 尋ね人ポスターと#{{Trinket48}} 失くしたページ の効果が{{ColorGold}}セットで{{CR}} ランダムに発動する",
		"{{Collectible327}} ポラロイドと#{{Collectible328}} ネガティブ#{{Blank}} または#{{Trinket23}} 尋ね人ポスターと#{{Trinket48}} 失くしたページ の効果が{{ColorGold}}セットで{{CR}} ランダムに発動する"
	},
	-- Daemon's Tail: (append)
	[22] = { "青／紫色の焚き火が 黒ハートをスポーン" },
	-- Missing Poster: (find + replace)
	[23] = { "33", "66", "100" },
	-- Broken Ankh: (find + replace)
	[28] = { "22.22", "33", "50" },
	-- Pinky Eye: (fullReplace)
	[30] = { "{{ColorGold}}20%{{CR}}の確率で毒の涙を放つ#運で発射確率アップ", "{{ColorGold}}20%{{CR}}の確率で毒の涙を放つ#運で発射確率アップ", "{{ColorGold}}33%{{CR}}の確率で毒の涙を放つ#運で発射確率アップ", },
	-- Push Pin: (full replace)
	[31] = { "{{ColorGold}}20%{{CR}}の確率で涙に貫通・ 透過効果を付与#運で発射確率アップ", "{{ColorGold}}20%{{CR}}の確率で涙に貫通・ 透過効果を付与#運で発射確率アップ", "{{ColorGold}}33%{{CR}}の確率で涙に貫通・ 透過効果を付与#運で発射確率アップ", },
	-- Umbilical Cord: (fullReplace)
	[33] = { "半赤ハート", "1赤ハート", "1.5赤ハート", },
	-- Child's Heart: (fullReplace)
	[34] = {
		"部屋クリア時の報酬が {{ColorGold}}20%{{CR}}の確率で赤ハートに 置き換わる#宝箱・ｘ岩・破壊した 機械・殺した乞食から、 {{ColorGold}}66%{{CR}}の確率で赤ハートが 追加でスポーンする",
		"部屋クリア時の報酬が {{ColorGold}}20%{{CR}}の確率で赤ハートに 置き換わる#宝箱・ｘ岩・破壊した 機械・殺した乞食から、 {{ColorGold}}66%{{CR}}の確率で赤ハートが 追加でスポーンする",
		"部屋クリア時の報酬が {{ColorGold}}50%{{CR}}の確率で赤ハートに 置き換わる#宝箱・ｘ岩・破壊した 機械・殺した乞食から、 {{ColorGold}}100%{{CR}}の確率で赤ハートが 追加でスポーンする",
	},
	-- Rusted Key: (fullReplace)
	[36] = {
		"部屋クリア時の報酬が {{ColorGold}}20%{{CR}}の確率で鍵に置き換わる#宝箱・ｘ岩・破壊した 機械・殺した乞食から、 {{ColorGold}}66%{{CR}}の確率で鍵が追加で スポーンする",
		"部屋クリア時の報酬が {{ColorGold}}20%{{CR}}の確率で鍵に置き換わる#宝箱・ｘ岩・破壊した 機械・殺した乞食から、 {{ColorGold}}66%{{CR}}の確率で鍵が追加で スポーンする",
		"部屋クリア時の報酬が {{ColorGold}}50%{{CR}}の確率で鍵に置き換わる#宝箱・ｘ岩・破壊した 機械・殺した乞食から、 {{ColorGold}}100%{{CR}}の確率で鍵が追加で スポーンする",
	},
	-- Red Patch: (fullReplace)
	[40] = {
		"ダメージを受けた時、 一定確率で攻撃力 +1.8#確率：運0={{ColorGold}}33%{{CR}}、13=100%#効果はスタック可能で、 その部屋でのみ有効",
		"ダメージを受けた時、 一定確率で攻撃力 +1.8#確率：運0={{ColorGold}}33%{{CR}}、13=100%#効果はスタック可能で、 その部屋でのみ有効",
		"ダメージを受けた時、 一定確率で攻撃力 +1.8#確率：運0={{ColorGold}}50%{{CR}}、10=100%#効果はスタック可能で、 その部屋でのみ有効"
	},
	-- Match Stick: (fullReplace)
	[41] = {
		"部屋クリア時の報酬が {{ColorGold}}20%{{CR}}の確率で爆弾に 置き換わる#宝箱・ｘ岩・破壊した 機械・殺した乞食から、 {{ColorGold}}66%{{CR}}の確率で爆弾が 追加でスポーンする#!!! {{Trinket53}}ダニを除去できる",
		"部屋クリア時の報酬が {{ColorGold}}20%{{CR}}の確率で爆弾に 置き換わる#宝箱・ｘ岩・破壊した 機械・殺した乞食から、 {{ColorGold}}66%{{CR}}の確率で爆弾が 追加でスポーンする#!!! {{Trinket53}}ダニを除去できる",
		"部屋クリア時の報酬が {{ColorGold}}50%{{CR}}の確率で爆弾に 置き換わる#宝箱・ｘ岩・破壊した 機械・殺した乞食から、 {{ColorGold}}100%{{CR}}の確率で爆弾が 追加でスポーンする#!!! {{Trinket53}}ダニを除去できる"
	},
	-- Cursed Skull: (fullReplace)
	[43] = {
		"ダメージを受け、残りの 体力が半ハートになると ランダムで{{ColorGold}}特殊な部屋{{CR}}に テレポートする",
		"ダメージを受け、残りの 体力が半ハートになると ランダムで{{ColorGold}}特殊な部屋{{CR}}に テレポートする",
		"ダメージを受け、残りの 体力が{{ColorGold}}ハート1個{{CR}}になると ランダムで{{ColorGold}}特殊な部屋{{CR}}に テレポートする"
	},
	-- Safety Cap: (fullReplace)
	[44] = {
		"部屋クリア時の報酬が {{ColorGold}}20%{{CR}}の確率でピルに 置き換わる#宝箱・ｘ岩・破壊した 機械・殺した乞食から、 {{ColorGold}}66%{{CR}}の確率でピルが 追加でスポーンする",
		"部屋クリア時の報酬が {{ColorGold}}20%{{CR}}の確率でピルに 置き換わる#宝箱・ｘ岩・破壊した 機械・殺した乞食から、 {{ColorGold}}66%{{CR}}の確率でピルが 追加でスポーンする",
		"部屋クリア時の報酬が {{ColorGold}}50%{{CR}}の確率でピルに 置き換わる#宝箱・ｘ岩・破壊した 機械・殺した乞食から、 {{ColorGold}}100%{{CR}}の確率でピルが 追加でスポーンする",
	},
	-- Ace of Spades: (fullReplace)
	[45] = {
		"部屋クリア時の報酬が {{ColorGold}}20%{{CR}}の確率でカードに 置き換わる#宝箱・ｘ岩・破壊した 機械・殺した乞食から、 {{ColorGold}}66%{{CR}}の確率でカードが 追加でスポーンする",
		"部屋クリア時の報酬が {{ColorGold}}20%{{CR}}の確率でカードに 置き換わる#宝箱・ｘ岩・破壊した 機械・殺した乞食から、 {{ColorGold}}66%{{CR}}の確率でカードが 追加でスポーンする",
		"部屋クリア時の報酬が {{ColorGold}}50%{{CR}}の確率でカードに 置き換わる#宝箱・ｘ岩・破壊した 機械・殺した乞食から、 {{ColorGold}}100%{{CR}}の確率でカードが 追加でスポーンする",
	},
	-- Bloody Penny: (find + replace)
	[49] = { "25", "50", "75" },
	-- Burnt Penny: (find + replace)
	[50] = { "25", "50", "75" },
	-- Flat Penny: (find + replace)
	[51] = { "25", "50", "75" },
	-- Counterfeit Penny: (find + replace)
	[52] = { "1", "2", "3" },
	-- Tick (replace): added ", {{Trinket135}} A Lighter"
	[53] = {
		"ボスのHPが{{ColorGold}}30{{CR}}%減少#ボス部屋に入った時、 赤ハート{{ColorGold}}2{{CR}}個回復#{{ColorGold}}取り外せる！",
		"ボスのHPが{{ColorGold}}30{{CR}}%減少#ボス部屋に入った時、 赤ハート{{ColorGold}}2{{CR}}個回復#!!! 取得すると取り外せない#{{Trinket41}}マッチ棒か{{Trinket135}}ライターで 除去可能",
		"ボスのHPが{{ColorGold}}30{{CR}}%減少#ボス部屋に入った時、 赤ハート{{ColorGold}}3{{CR}}個回復#{{ColorGold}}取り外せる！",
	},
	-- Isaac's Head: (append)
	[54] = { "ダメージがアイザックの 攻撃力と同一にアップ", "ダメージがアイザックの 攻撃力と同一にアップ", "ダメージがアイザックの 攻撃力x1.5にアップ" },
	-- Judas' Tongue: (full replace)
	[56] = { "悪魔取引のコストを {{ColorGold}}赤／青{{CR}}ハート1個に割り引く", "悪魔取引のコストを {{ColorGold}}赤／青{{CR}}ハート1個に割り引く", "悪魔取引のコストを {{ColorGold}}赤／青{{CR}}ハート1個に割り引く#{{ColorGold}}トゲを踏む悪魔取引は、 必ず一回目で成功する" },
	-- ???'s Soul: (find + replace)
	[57] = { "付与", "{{ColorGold}}2体{{CR}}付与", "{{ColorGold}}3体{{CR}}付与" },
	-- Samson's Lock: (full replace)
	[58] = { "敵を倒した時、{{ColorGold}}13%{{CR}}の確率で 攻撃力 +0.5（最大 +5）#運で発動確率アップ#その部屋でのみ有効", "敵を倒した時、{{ColorGold}}13%{{CR}}の確率で 攻撃力 +0.5（最大 +5）#運で発動確率アップ#その部屋でのみ有効", "敵を倒した時、{{ColorGold}}25%{{CR}}の確率で 攻撃力 +0.5（最大 +5）#運で発動確率アップ#その部屋でのみ有効" },
	-- Cain's Eye: (full replace)
	[59] = { "フロア開始時、{{ColorGold}}50%{{CR}}の確率で {{Collectible21}}コンパスの効果を付与#運で発動確率アップ", "フロア開始時、{{ColorGold}}50%{{CR}}の確率で {{Collectible21}}コンパスの効果を付与#運で発動確率アップ", "フロア開始時、{{ColorGold}}75%{{CR}}の確率で {{Collectible21}}コンパスの効果を付与#運で発動確率アップ" },
	-- Eve's Bird Foot: (full replace)
	[60] = { "敵を倒した時、{{ColorGold}}10%{{CR}}の確率で {{Collectible117}}鳥の死体が現れる#運で出現確率アップ", "敵を倒した時、{{ColorGold}}10%{{CR}}の確率で {{Collectible117}}鳥の死体が現れる#運で出現確率アップ", "敵を倒した時、{{ColorGold}}15%{{CR}}の確率で {{Collectible117}}鳥の死体が現れる#運で出現確率アップ" },
	-- The Left Hand: (append)
	[61] = { "赤宝箱に追加の報酬", "赤宝箱に追加の報酬", "赤宝箱に報酬が追加され、 敵クモが出なくなる" },
	-- Shiny Rock: (full replace)
	[62] = { "ｘ岩とクロールスペース 付きの岩、{{ColorGold}}隠し部屋の壁{{CR}}が 10秒おきに点滅", "ｘ岩とクロールスペース 付きの岩、{{ColorGold}}隠し部屋の壁{{CR}}が 10秒おきに点滅", "ｘ岩とクロールスペース 付きの岩、{{ColorGold}}隠し部屋の壁{{CR}}が {{ColorGold}}5秒{{CR}}おきに点滅" },
	-- Safety Scissors: (append)
	[63] = { "↓ 爆発する敵の爆発範囲" },
	-- Lazy Worm: (find + replace)
	[66] = { "0.5", "1", "1.5" },
	-- Cracked Dice: (find + replace)
	[67] = { "50", "75", "100" },
	-- Super Magnet: (full replace)
	[68] = { "ピックアップ／{{ColorGold}}サック／ トリンケット{{CR}}、敵が アイザックに引き寄せ られるようになる", "ピックアップ／{{ColorGold}}サック／ トリンケット{{CR}}、敵が アイザックに引き寄せ られるようになる", "ピックアップ／{{ColorGold}}サック／ トリンケット／宝箱{{CR}}、 敵がアイザックに引き 寄せられるようになる" },
	-- Faded Polaroid: (append)
	[69] = { "↑ 透明になる時間が延長" },
	-- Bob's Bladder: (append)
	[71] = { "↑ 液体の範囲" },
	-- Poker Chip: (append)
	[76] = { "ギャンブルの報酬2倍", "ギャンブルの報酬2倍", "ギャンブルの報酬3倍" },
	-- Endless Nameless: (find + replace)
	[79] = { "25", "33", "50" },
	-- Store Key: (append)
	[83] = { "質の悪いお店の生成を防ぐ", "質の悪いお店の生成を防ぐ", "お店の質が良くなる" },
	-- Rib of Greed: (append)
	[84] = { "レアなコインの出現率↑" },
	-- Karma: (full replace)
	[85] = {
		"寄付マシーンへの寄付時、 33%の確率で以下の効果：#40%：赤ハートを1回復#40%：キャッシュバック#15%：運 {{ColorGold}}+2{{CR}}#5%：乞食がスポーン#乞食への寄付／献血／ 懺悔／リストックでも 同様の効果が発生#↓ 寄付時のジャム確率",
		"寄付マシーンへの寄付時、 33%の確率で以下の効果：#40%：赤ハートを1回復#40%：キャッシュバック#15%：運 {{ColorGold}}+2{{CR}}#5%：乞食がスポーン#乞食への寄付／献血／ 懺悔／リストックでも 同様の効果が発生#↓ 寄付時のジャム確率",
		"寄付マシーンへの寄付時、 33%の確率で以下の効果：#40%：赤ハートを1回復#40%：キャッシュバック#15%：運 {{ColorGold}}+3{{CR}}#5%：乞食がスポーン#乞食への寄付／献血／ 懺悔／リストックでも 同様の効果が発生#↓ 寄付時のジャム確率"
	},
	-- Lil Larva: (find + replace)
	[86] = { "スポーン", "2匹{{CR}}スポーン", "3匹{{CR}}スポーン" },
	-- Mom's Locket: (find + replace)
	[87] = { "半赤ハート 回復", "{{CR}}赤ハートを {{ColorGold}}1個{{CR}}回復", "{{CR}}赤ハートを {{ColorGold}}1.5個{{CR}}回復" },
	-- Child Leash: (find + replace)
	[89] = { "25", "50", "75" },
	-- Meconium: (full replace)
	[91] = { "{{ColorGold}}66%{{CR}}の確率で、うんちが 黒うんちに置き換わる#黒うんちから{{ColorGold}}7%{{CR}}の確率で 黒ハートがスポーンする", "{{ColorGold}}66%{{CR}}の確率で、うんちが 黒うんちに置き換わる#黒うんちから{{ColorGold}}7%{{CR}}の確率で 黒ハートがスポーンする", "{{ColorGold}}100%{{CR}}の確率で、うんちが 黒うんちに置き換わる#黒うんちから{{ColorGold}}10%{{CR}}の確率で 黒ハートがスポーンする" },
	-- Fish Tail: (append)
	[94] = { "20%の確率で3倍スポーン", "20%の確率で3倍スポーン", "20%の確率で4倍スポーン" },
	-- Tonsil: (find + replace)
	[97] = { "2体", "3体", "4体" },
	-- Nose Goblin: (find + replace)
	[98] = { "10", "20", "30" },
	-- Fragmented Card: (append)
	[102] = { "隠し部屋を一つマッピング", "隠し部屋を一つマッピング", "隠し部屋を二つマッピング" },
	-- Crow Heart: (append)
	[107] = { "ダメージを受けても、 25%の確率で出現率が 下がらない", "ダメージを受けても、 25%の確率で出現率が 下がらない", "ダメージを受けても、 50%の確率で出現率が 下がらない" },
	-- Duct Tape: (append)
	[109] = { "ドロップボタンを押すたび 使い魔の陣形が変化する" },
	-- Silver Dollar: (append)
	[110] = { "追加で生成されるお店の 質が良くなる" },
	-- Bloody Crown: (append)
	[111] = { "追加で生成されるトレジャー ルームのアイテムが二択に" },
	-- Pay to Win: (append)
	[112] = { "リロールマシーンが爆発する 確率を下げる" },
	-- Locust of War: (find + replace)
	[113] = { "スポーン", "2匹{{CR}}スポーン", "3匹{{CR}}スポーン" },
	-- Locust of Pestilence: (find + replace)
	[114] = { "スポーン", "2匹{{CR}}スポーン", "3匹{{CR}}スポーン" },
	-- Locust of Famine: (find + replace)
	[115] = { "スポーン", "2匹{{CR}}スポーン", "3匹{{CR}}スポーン" },
	-- Locust of Death: (find + replace)
	[116] = { "スポーン", "2匹{{CR}}スポーン", "3匹{{CR}}スポーン" },
	-- Locust of Conquest: (find + replace)
	[117] = { "1～4匹", "2～5匹", "3～7匹" },
	-- Stem Cell: (full replace)
	[119] = { "フロア移動時、空の赤／骨 ハートを{{ColorGold}}全て{{CR}}回復する" },
	-- Hairpin: (append)
	[120] = { "2回分チャージ" },
	-- Wooden Cross: (find + replace)
	[121] = { "一度だけ", "二回まで", "二回まで" },
	-- Filigree Feather: (append)
	[123] = { "半青ハートが追加スポーン", "半青ハートが追加スポーン", "青ハート1個が追加スポーン" },
	-- Door Stop: (append)
	[124] = { "ボスラッシュのドアにも有効", "ボスラッシュのドアにも有効", "ボスラッシュとチャレンジ ルームのドアにも有効" },
	-- Rotten Penny: (find + replace)
	[126] = { "スポーン", "2匹{{CR}}スポーン", "3匹{{CR}}スポーン" },
	-- Baby-Bender: (append)
	[127] = { "{{Trinket144}} ブレインワーム効果を追加", "{{Trinket144}} ブレインワーム効果を追加", "{{Trinket144}} ブレインワームと#{{Trinket65}} {{ColorGold}}さなだワームの効果を追加{{CR}}" },
	-- Blessed Penny: (find + replace)
	[131] = { "17", "25", "30" },
	-- Short Fuse: (find + replace)
	[133] = { "15", "30", "50" },
	-- Gigante Bean: (append)
	[134] = { "おならのノックバック 効果を強化", "おならのノックバック 効果を強化", "おならのノックバックを 強化し、敵を混乱させる 効果も追加する" },
	-- A Lighter: (find + replace)
	[135] = { "20", "33", "50" },
	-- Broken Padlock: (append)
	[136] = { "アーケード、メガサタン、 チャレンジルームのドアも 開けるようになる", "アーケード、メガサタン、 チャレンジルームのドアも 開けるようになる", "アーケード、メガサタン、 チャレンジ、ボス部屋の ドアも開けるようになる" },
	-- 'M: (append)
	[138] = { "リロールされたアイテムが 10%の確率でフルチャージ", "リロールされたアイテムが 10%の確率でフルチャージ", "リロールされたアイテムが 20%の確率でフルチャージ" },
	-- Apple of Sodom: (append)
	[140] = { "赤ハート以外でも有効" },
	-- Forgotten Lullaby: (find + replace)
	[141] = { "2", "2.5", "3" },
	-- Brain Worm: (append)
	[144] = { "25%の確率で貫通効果を付与", "25%の確率で貫通効果を付与", "50%の確率で貫通効果を付与", },
	-- Devil's Crown: (append)
	[146] = { "25%の確率で悪魔部屋が 特別な構成に置き換わる", "25%の確率で悪魔部屋が 特別な構成に置き換わる", "33%の確率で悪魔部屋が 特別な構成に置き換わる", },
	-- Charged Penny: (find + replace)
	[147] = { "1チャージ", "2チャージ", "3チャージ" },
	-- Friendship Necklace: (append)
	[148] = { "周回速度がアップ" },
	-- Panic Button: (append)
	[149] = { "10%の確率でチャージ消費なし", "10%の確率でチャージ消費なし", "20%の確率でチャージ消費なし" },
	-- Blue Key: (append)
	[150] = { "青い部屋のクリア報酬2倍", "青い部屋のクリア報酬2倍", "青い部屋のクリア報酬3倍" },
	-- Flat File: (append)
	[151] = { "ボスのトゲ攻撃も無害化" },
	-- Telescope Lens: (full replace)
	[152] = {
		"プラネタリウムの出現率{{ColorGold}}+18%{{CR}}#プラネタリウムに未訪問の 場合、追加で+15%#子宮／コープスフロアでも プラネタリウムが出現可能に",
		"プラネタリウムの出現率{{ColorGold}}+18%{{CR}}#プラネタリウムに未訪問の 場合、追加で+15%#子宮／コープスフロアでも プラネタリウムが出現可能に",
		"プラネタリウムの出現率{{ColorGold}}+33%{{CR}}#プラネタリウムに未訪問の 場合、追加で+15%#子宮／コープス／{{ColorGold}}シェオル／ 大聖堂{{CR}}でもプラネタリウムが 出現可能に"
	},
	-- Holy Crown: (append)
	[155] = {
		"追加で生成されるトレジャー ルームのアイテムが二択に なり、お店の質も良くなる",
		"追加で生成されるトレジャー ルームのアイテムが二択に なり、お店の質も良くなる",
		"追加で生成されるトレジャー ルームのアイテムが二択化し、 お店の質が良くなり、位置が マッピングされる"
	},
	-- Torn Card: (find + replace)
	[157] = { "15発", "10発", "5発" },
	-- Gilded Key: (full replace)
	[159] = {
		"保持中にスポーンした 宝箱を、金宝箱に置き 換える#金宝箱のランダムな ピックアップ内容に、 カードとトリンケット、 ピルを加える#{{ColorGold}}部屋のクリア報酬で 宝箱が出る確率+10%{{CR}}",
		"初回取得時、鍵 +1#保持中にスポーンした 宝箱を、金宝箱に置き 換える#金宝箱のランダムな ピックアップ内容に、 カードとトリンケット、 ピルを加える#{{ColorGold}}部屋のクリア報酬で 宝箱が出る確率+10%{{CR}}",
		"保持中にスポーンした 宝箱を、金宝箱に置き 換える#金宝箱のランダムな ピックアップ内容に、 カードとトリンケット、 ピルを加える#{{ColorGold}}部屋のクリア報酬で 宝箱が出る確率+20%{{CR}}"
	},
	-- Wicked Crown: (append)
	[161] = {
		"追加で生成されるトレジャー ルームのアイテムが二択に なり、お店の質も良くなる",
		"追加で生成されるトレジャー ルームのアイテムが二択に なり、お店の質も良くなる",
		"追加で生成されるトレジャー ルームのアイテムが二択化し、 お店の質が良くなり、位置が マッピングされる"
	},
	-- Azazel's Stump: (find + replace)
	[162] = { "33", "50", "100" },
	-- Nuh Uh!: (append)
	[165] = { "爆弾とハートは10%の確率で ダブルバージョンになる", "爆弾とハートは10%の確率で ダブルバージョンになる", "爆弾とハートは20%の確率で ダブルバージョンになる" },
	-- Keeper's Bargain: (full replace)
	[171] = {
		"悪魔取引のコストが、 {{ColorGold}}100%{{CR}}の確率でハートから コインに置き換わる",
		"悪魔取引のコストが、 {{ColorGold}}100%{{CR}}の確率でハートから コインに置き換わる",
		"悪魔取引のコストが、 {{ColorGold}}100%{{CR}}の確率でハートから コインに置き換わる#{{ColorGold}}悪魔取引のアイテムが セール価格になる確率アップ{{CR}}"
	},
	-- Cursed Penny: (append)
	[172] = { "特殊な部屋にテレポート する確率がアップ" },
	-- Your Soul: (append)
	[173] = { "10%の確率で消滅しない", "10%の確率で消滅しない", "20%の確率で消滅しない" },
	-- Strange Key: (full replace)
	[175] = {
		"時間制限を過ぎていても ハッシュに挑める#{{ColorGold}}???フロアで、鍵を消費 せずに宝箱やドアを開ける{{CR}}#{{Collectible297}} パンドラの箱を使うと 一緒に消費され、通常 効果の代わりに以下の 効果が発生する#ランダムなプールから {{ColorGold}}8個{{CR}}のアイテムをスポーン",
		"時間制限を過ぎていても ハッシュに挑める#{{ColorGold}}???フロアで、鍵を消費 せずに宝箱やドアを開ける{{CR}}#{{Collectible297}} パンドラの箱を使うと 一緒に消費され、通常 効果の代わりに以下の 効果が発生する#ランダムなプールから {{ColorGold}}8個{{CR}}のアイテムをスポーン",
		"時間制限を過ぎていても ハッシュに挑める#{{ColorGold}}???フロアで、鍵を消費 せずに宝箱やドアを開ける{{CR}}#{{Collectible297}} パンドラの箱を使うと 一緒に消費され、通常 効果の代わりに以下の 効果が発生する#ランダムなプールから {{ColorGold}}10個{{CR}}のアイテムをスポーン"
	},
	-- Temporary Tattoo: (append)
	[177] = { "チャレンジルームをクリア した時、ランダムで一つの ステータスがアップ", "チャレンジルームをクリア した時、ランダムで一つの ステータスがアップ", "チャレンジルームをクリア した時、ランダムで二つの ステータスがアップ", },
	-- RC Remote: (append)
	[179] = { "使い魔に毎秒8.6の 接触ダメージを追加", "使い魔に毎秒8.6の 接触ダメージを追加", "使い魔に毎秒21.4の 接触ダメージを追加",},
	-- Found Soul: (find + replace)
	[180] = { "攻撃力のみ0.5倍", "{{CR}}攻撃力のみ{{ColorGold}}0.75倍{{CR}}", "攻撃力の制限なし" },
	-- Expansion Pack: (full replace)
	[181] = {
		"アクティブアイテムを 使用すると、追加で ランダムなアクティブ アイテム{{ColorGold}}2種{{CR}}の効果が 発動する#追加されるアイテムは チャージ容量が1～2の ものに限られる ",
		"アクティブアイテムを 使用すると、追加で ランダムなアクティブ アイテム{{ColorGold}}2種{{CR}}の効果が 発動する#追加されるアイテムは チャージ容量が1～2の ものに限られる ",
		"アクティブアイテムを 使用すると、追加で ランダムなアクティブ アイテム{{ColorGold}}3種{{CR}}の効果が 発動する#追加されるアイテムは 2種がチャージ容量1～2、 {{ColorGold}}1種は3{{CR}}のものに限られる "
	},
	-- Beth's Essence: (full replace)
	[182] = {
		"天使部屋に入った時、 ウィスプが5つスポーン#{{ColorGold}}50%の確率で特殊効果 付きのウィスプになる{{CR}}#乞食に寄付すると、 25%の確率で{{ColorGold}}特殊効果 付き{{CR}}ウィスプがスポーン",
		"天使部屋に入った時、 ウィスプが5つスポーン#{{ColorGold}}50%の確率で特殊効果 付きのウィスプになる{{CR}}#乞食に寄付すると、 25%の確率で{{ColorGold}}特殊効果 付き{{CR}}ウィスプがスポーン",
		"天使部屋に入った時、 ウィスプが5つスポーン#{{ColorGold}}100%の確率で特殊効果 付きのウィスプになる{{CR}}#乞食に寄付すると、 25%の確率で{{ColorGold}}特殊効果 付き{{CR}}ウィスプがスポーン",
	},
	-- Adoption Papers: (append)
	[184] = { "使い魔は必ずセール価格に", "使い魔は必ずセール価格に", "使い魔は必ずセール価格に#{{Card92}} {{ColorGold}}リリスのソウルも販売{{CR}}" },
	-- Ice Cube: (find + replace)
	[188] = { "20", "33", "50" },
	-- Sigil of Baphomet: (find + replace)
	[189] = { "1秒間", "1.5秒間", "2秒間" },
}
EID:updateDescriptionsViaTable(goldenTrinketEffects, EID.descriptions[languageCode].goldenTrinketEffects)

local goldenTrinketData = {
	[5] = {findReplace = true}, -- Purple Heart
	[14] = {append = true}, -- Callus
	[16] = {findReplace = true}, -- Mom's Toenail
	[17] = {t={10}, mults={2, 3.3}}, -- Black Lipstick
	[19] = {append = true}, -- Paper Clip
	[21] = {fullReplace = true}, -- Mysterious Paper
	[22] = {append = true}, -- Daemon's Tail
	[23] = {findReplace = true}, -- Missing Poster
	[28] = {findReplace = true}, -- Broken Ankh
	[30] = {fullReplace = true}, -- Pinky Eye
	[31] = {fullReplace = true}, -- Push Pin
	[33] = {findReplace = true}, -- Umbilical Cord
	[34] = {fullReplace = true}, -- Child's Heart
	[36] = {fullReplace = true}, -- Rusted Key
	[40] = {fullReplace = true}, -- Red Patch
	[41] = {fullReplace = true}, -- Match Stick
	[43] = {fullReplace = true}, -- Cursed Skull
	[44] = {fullReplace = true}, -- Safety Cap
	[45] = {fullReplace = true}, -- Ace of Spades
	[49] = {findReplace = true}, -- Bloody Penny
	[50] = {findReplace = true}, -- Burnt Penny
	[51] = {findReplace = true}, -- Flat Penny
	[52] = {findReplace = true}, -- Counterfeit Penny
	[54] = {append = true}, -- Isaac's Head
	[56] = {fullReplace = true}, -- Judas' Tongue
	[57] = {findReplace = true}, -- ???'s Soul
	[58] = {fullReplace = true}, -- Samson's Lock
	[59] = {fullReplace = true}, -- Cain's Eye
	[60] = {fullReplace = true}, -- Eve's Bird Foot
	[61] = {append = true}, -- The Left Hand
	[62] = {fullReplace = true}, -- Shiny Rock
	[63] = {append = true}, -- Safety Scissors
	[66] = {findReplace = true}, -- Lazy Worm
	[67] = {findReplace = true}, -- Cracked Dice
	[68] = {fullReplace = true}, -- Super Magnet
	[69] = {append = true}, -- Faded Polaroid
	[71] = {append = true}, -- Bob's Bladder
	[76] = {append = true}, -- Poker Chip
	[79] = {findReplace = true}, -- Endless Nameless
	[83] = {append = true}, -- Store Key
	[84] = {append = true}, -- Rib of Greed
	[85] = {fullReplace = true}, -- Karma
	[86] = {findReplace = true}, -- Lil Larva
	[87] = {findReplace = true}, -- Mom's Locket
	[89] = {findReplace = true}, -- Child Leash
	[91] = {fullReplace = true}, -- Meconium
	[93] = 1, -- Used Diaper
	[94] = {append = true}, -- Fish Tail
	[95] = 3, -- Black Tooth
	[97] = {findReplace = true}, -- Tonsil
	[98] = {findReplace = true}, -- Nose Goblin
	[99] = {t={10}, mults={2, 3.3}}, -- Super Ball
	[102] = {append = true}, -- Fragmented Card
	[103] = 2, -- Equality!
	[104] = 5, -- Wish Bone
	[105] = 5, -- Bag Lunch
	[107] = {append = true}, -- Crow Heart
	[108] = 1, -- Walnut
	[109] = {append = true}, -- Duct Tape
	[110] = {append = true}, -- Silver Dollar
	[111] = {append = true}, -- Bloody Crown
	[112] = {append = true}, -- Pay to Win
	[113] = {findReplace = true}, -- Locust of War
	[114] = {findReplace = true}, -- Locust of Pestilence
	[115] = {findReplace = true}, -- Locust of Famine
	[116] = {findReplace = true}, -- Locust of Death
	[117] = {findReplace = true}, -- Locust of Conquest
	[118] = 5, -- Bat Wing
	[119] = {fullReplace = true}, -- Stem Cell
	[120] = {append = true}, -- Hairpin
	[121] = {findReplace = true}, -- Wooden Cross
	[122] = 2, -- Butter!
	[123] = {append = true}, -- Filigree Feather
	[124] = {append = true}, -- Door Stop
	[125] = 6, -- Extension Cord
	[126] = {findReplace = true}, -- Rotten Penny
	[127] = {append = true}, -- Baby-Bender
	[128] = 4, -- Finger Bone
	[129] = 10, -- Jawbreaker
	[130] = 10, -- Chewed Pen
	[131] = {findReplace = true}, -- Blessed Penny
	[133] = {findReplace = true}, -- Short Fuse
	[134] = {append = true}, -- Gigante Bean
	[135] = {findReplace = true}, -- A Lighter
	[136] = {append = true}, -- Broken Padlock
	[137] = {t={4}, mults={1.5, 2}}, -- Myosotis
	[138] = {append = true}, -- 'M
	[140] = {append = true}, -- Apple of Sodom
	[141] = {findReplace = true}, -- Forgotten Lullaby
	[144] = {append = true}, -- Brain Worm
	[146] = {append = true}, -- Devil's Crown
	[147] = {findReplace = true}, -- Charged Penny
	[148] = {append = true}, -- Friendship Necklace
	[149] = {append = true}, -- Panic Button
	[150] = {append = true}, -- Blue Key
	[151] = {append = true}, -- Flat File
	[152] = {fullReplace = true}, -- Telescope Lens
	[155] = {append = true}, -- Holy Crown
	[157] = {findReplace = true}, -- Torn Card
	[158] = {t={2}, mults={1.5, 2}}, -- Torn Pocket
	[159] = {fullReplace = true}, -- Gilded Key
	[161] = {append = true}, -- Wicked Crown
	[162] = {findReplace = true}, -- Azazel's Stump
	[163] = 1, -- Dingle Berry
	[165] = {append = true}, -- Nuh Uh!
	[171] = {fullReplace = true}, -- Keeper's Bargain
	[172] = {append = true}, -- Cursed Penny
	[173] = {append = true}, -- Your Soul
	[174] = {t={10}, mults={1.5, 2}}, -- Number Magnet
	[175] = {fullReplace = true}, -- Strange Key
	[177] = {append = true}, -- Temporary Tattoo
	[179] = {append = true}, -- RC Remote
	[180] = {findReplace = true}, -- Found Soul
	[181] = {fullReplace = true}, -- Expansion Pack
	[182] = {fullReplace = true}, -- Beth's Essence
	[184] = {append = true}, -- Adoption Papers
	[188] = {findReplace = true}, -- Ice Cube
	[189] = {findReplace = true}, -- Sigil of Baphomet
}
EID:updateDescriptionsViaTable(goldenTrinketData, EID.descriptions[languageCode].goldenTrinketData)

---------- Cards ----------

local cards = {
	-- Change: Added "1% chance for it to be a Crane Game"
	[11] = { "11", "X - 運命の輪", "スロットマシーンか 占いマシーンをスポーン#1%の確率でクレーン ゲームをスポーン" }, -- X - Wheel of Fortune
	-- Change: Added stone enemies and shields
	[32] = {"32", "ハガラズ", "部屋の全ての障害物と、 石像タイプの敵を破壊#無敵効果がある敵の 骨・石をハガして無力化"}, -- Hagalaz
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
	-- Change: Teleports to a special room instead of a random room
	[20] = { "19", "テレポピル", "特殊な部屋にテレポート"}, -- Telepills
	-- Change: Forgets all previously identified pills
	[26] = { "25", "記憶喪失", "{{CurseLost}} マップを？に置き換える (迷われし者の呪い)#識別済みのピルが 未識別のピルに戻る" }, -- Amnesia
	-- Change: Added full heal information
	[29] = { "28", "強力鎮痛薬！", "体力全回復#その部屋に居る間、 受けるダメージを 半ハートに軽減する"}, -- Percs!
	-- Change: Added broken heart
	[30] = { "29", "過剰摂取！", "{{BrokenHeart}} 壊れたハート +1#その部屋に居る間、 受けるダメージが ハート1個分に増加"}, -- Addicted!
	-- Change: Added additional curses information
	[32] = { "31", "???", "現フロアに迷路の呪いを かける#複数使用で別の呪い"}, -- ???
	-- Change: affects whole floor
	[42] = { "41", "眠いなぁ・・・", "そのフロアに居る間、 アイザックと全ての 敵をスロー状態にする"}, -- I'm Drowsy...
	-- Change: affects whole floor
	[43] = { "42", "ワクワクする！", "そのフロアに居る間、 アイザックと全ての 敵を加速状態にする"}, --I'm Excited!!
	-- Change: Forces the effect to be a golden trinket
	[44] = { "43", "ごっくん！", "保持中のトリンケットを {{ColorGold}}ゴールデン状態{{CR}}で吸収し、 効果を永続化する"}, -- Gulp!
}
EID:updateDescriptionsViaTable(horsepills, EID.descriptions[languageCode].horsepills)

---------- Car Battery ----------

local carBattery = {
	-- Now grants +4 damage instead of +3
	[34] = {2, 4}, -- The Book of Belial
	-- Added info regarding doubled attack
	[47] = "ミサイルを2発落とす", -- Doctor's Remote
	-- Added info regarding doubled attack
	[164] = "炎を二つ放つ", -- The Candle
	-- Added info regarding doubled attack
	[289] = "炎を二つ放つ", -- Red Candle
	-- Now 23 seconds, if you have car battery
	[441] = {"15秒間", "23秒間"}, -- Mega Blast
	-- Now 6 seconds, if you have car battery
	[522] = {"3秒間", "6秒間", "3秒後", "6秒後"}, -- Telekinesis
	-- Added info regarding doubled familiar
	[728] = "使い魔を2体召喚", -- Gello
}
EID:updateDescriptionsViaTable(carBattery, EID.descriptions[languageCode].carBattery)

---------- Conditions ----------

EID.descriptions[languageCode].ConditionalDescs["5.100.566"] = nil -- Dream Catcher (Greed) - In Rep+, the dream preview works in greed mode as well, so no changes needed

local conditions = {
	-- Change: Removed info about Infinte usage of Yum Heart, because its fixed. Now, bleeding hearts provide only half the charge of a regilar heart container
	["5.100.205 (Tainted Magdalene)"] = "消耗するハートは 1個で1チャージ", -- Sharp Plug + Tainted Magdalene
	-- Added ball of bandages synergy
	["Potato Peeler + Ball of Bandages"] = {"{{Collectible73}} 肉の塊","{{Collectible207}} 包帯ボール"}, -- Potato Peeler with Ball of Bandages
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

---------- Transformations ----------
EID.descriptions[languageCode].transformations[17] = "ネクロマンサー" -- Add Necromancer transformation


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
