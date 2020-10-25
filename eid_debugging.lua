local showDebugChars = false
local charsToDebug = {
	"!!! EID DEBUG MODE ACTIVATED !!!", -- Header
	"ABCDEFGHIJKLMNOPQRSTUVWXYZ", -- Caps letters
	"abcdefghijklmnopqrstuvwxyz1234567890", -- small letters + numbers
	"western: Áá Àà Ââ Āā Ää Ãã Åå Ææ Éé Èè Êê Ēē Ëë Íí Ìì Îî Īī Ïï ", --
	"western 2: Óó Òò Ôô Ōō Öö Õõ Øø Œœ Úú Ùù Ûû Ūū Üü Ŵŵ Ýý Ÿÿ Ŷ", --
	"western 3: Þþ Çç Ðð Ññ ß ¿¡", --
	"cyrillic 1: Аа Бб Вв Гг Дд Ее Ёё Жж Зз Ии Йй Кк Лл Мм Нн Оо",
	"cyrillic 2: Пп Рр Сс Тт Уу Фф Хх Цц Чч Шш Щщ Ъъ Ыы Ьь Ээ Юю Яя",
	"polish: Ąą Ćć Ęę Łł Ńń Óó Śś Źź Żż",
	"custom icons: ↑Positive ↓Negative \007bulletpoint !Exclamation ǃWarning !!!3!shortcut ǂHashtag",
	"legacy icon Markup: \\1:\1Positive \\2:\2Negative \\3:\3Warning ! \\6:\6 heart \\5:\5 Key \\015:\015 Coin \\8\\189:\8\189 Bomb",
	"emotes: ☆★〠♠♣♥♦♤♧♡♢☀☂♨♪♭♯♂♀",
	"Markup main: |{{ArrowUp}}|{{ArrowDown}}|{{Warning}}|{{ERROR}}|{{Hashtag}}",
	"Markup numbers: |{{0}}|{{1}}|{{2}}|{{3}}|{{4}}|{{5}}|{{6}}|{{7}}|{{8}}|{{9}}|{{10}}|{{11}}|{{12}}|",
	"Markup hearts: |{{Heart}}|{{HalfHeart}}|{{EthernalHeart}}|{{EmptyHeart}}|{{BlendedHeart}}|{{BoneHeart}}|{{HalfBoneHeart}}|{{EmptyBoneHeart}}|{{SoulHeart}}|{{HalfSoulHeart}}|{{BlackHeart}}|{{HalfBlackHeart}}|{{GoldenHeart}}|{{CoinHeart}}|{{HalfCoinHeart}}|{{EmptyCoinHeart}}|",
	"Markup pickups: |{{Key}}|{{GoldenKey}}|{{Bomb}}|{{GoldenBomb}}|{{Coin}}|{{Card}}|{{RedCard}}|{{Collectible}}|{{Pill}}|{{Trinket}}|{{Battery}}|{{Rune}}|{{Slotmachine}}|",
	"Markup roomtypes: |{{DevilRoom}}|{{AngelRoom}}|{{ChallengeRoom}}|{{IsaacsRoom}}|{{TreasureRoom}}|{{ArcadeRoom}}|{{BossRushRoom}}|{{Shop}}|{{SuperSecretRoom}}|{{BarrenRoom}}|{{MiniBoss}}|{{DiceRoom}}|{{GreedTreasureRoom}}|{{SecretRoom}}|{{Library}}|{{ChestRoom}}|{{BossRoom}}|{{CursedRoom}}|{{SacrificeRoom}}|",
	"Markup roomshapes: |{{Room}}|{{RoomLongHorizontal}}|{{RoomLongThinHorizontal}}|{{RoomSmallHorizontal}}|{{RoomLBottomRight}}|{{RoomSmallVertical}}|{{RoomLBottomLeft}}|{{RoomLTopLeft}}|{{RoomL}}|{{RoomLongVertical}}|{{RoomXL}}|{{RoomLongThinVertical}}|",
	"Markup transformations: |{{CustomTransformation}}|{{Guppy}}|{{FunGuy}}|{{LordoftheFlies}}|{{Conjoined}}|{{Spun}}|{{Mom}}|{{OhCrap}}|{{Bob}}|{{Leviathan}}|{{Seraphim}}|{{SuperBum}}|{{Bookworm}}|{{SpiderBaby}}|{{Adult}}|{{Stompy}}|",
}

-- Legacy Overriding descriptions
__eidItemDescriptions[1] = "\1 Overriden description"	-- 5.100.1 = Sad Onion
__eidTrinketDescriptions[1] = "\2 Overriden "			-- 5.350.1 = swallowed penny
__eidCardDescriptions[1] = "Overriden Card description" -- 5.300.1 = the fool
__eidPillDescriptions[21] = "Test"						-- Pill Effect 20 = Hematemesis
__eidItemTransformations[1] = "Test Transformation"		-- add custom transformation Text to Sad Onion

-- Legacy add Description to entity
__eidEntityDescriptions["5.10.1"] = {"Entity Name","Entity description"} -- Adds description to full red hearts

-- test adding custom icons
local dummySprite = Sprite()
dummySprite:Load("gfx/eid_inline_icons.anm2", true)
EID.InlineIcons["Test"] = {"hearts", 0, 9, 9, -1, 0, dummySprite}
__eidItemDescriptions[2] = "{{Bomb}} Emote {{Key}} Test {{Test}} description {{InvalidMarkupThing}} cool"	-- 5.100.2 = Inner Eye

-- test adding custom transformation icon
__eidItemTransformations[2] = "Test"

local function onDebugRender(t)
		for i, v in ipairs(charsToDebug) do
			local pos = Vector(EIDConfig["XPosition"], EIDConfig["YPosition"] - 15 + ((i - 1) * 14))
			EID:renderString(v, pos, Vector(EIDConfig["Scale"], EIDConfig["Scale"]), KColor(1, 1, 1, 1, 0, 0, 0))
			
			if not showDebugChars then
				break
			end
		end
end
EID:AddCallback(ModCallbacks.MC_POST_RENDER, onDebugRender)
