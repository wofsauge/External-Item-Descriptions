local game = Game()
local showDebugChars = false


-- check integrity of language files

local languageFilesToCheck = {"fr"} -- EID.Languages -- single file check example {"ko_kr"}

-- count English entries for stats
local count = 0
function EID:countEntries(t)
	for k, _ in pairs(t) do
		count = count + 1
		if type(t[k]) == "table" then
			EID:countEntries(t[k])
		end
	end
end
EID:countEntries(EID.descriptions[EID.DefaultLanguageCode])
local enUSEntries = count
EID:WriteDebugMsg("English entries: "..enUSEntries)


local maxChecklimit = {["tarotClothBuffs"] = 2}
function EID:getMaxCheckLimit(parentName)
    for entry, _ in pairs(maxChecklimit) do
        if string.find(parentName, entry) then
            return maxChecklimit[entry]
		end
	end
    return math.maxinteger
end

local ignoreNodesWithName = {["fonts"] = true}


for _, lang in ipairs(languageFilesToCheck) do
	EID:WriteDebugMsg("Now checking integrity of languagefile: " .. lang)
	-- Generic function to compare two tables
	function EID:compareTables(table1, table2, prevKey, progress)
		local checkLimit = EID:getMaxCheckLimit(prevKey)
		for k, _ in pairs(table1) do
			progress[1] = progress[1] + 1
			checkLimit = checkLimit - 1
			if not (ignoreNodesWithName[k] or checkLimit < 0) then
				-- only evaluate nodes that are not listed in this table
				if not table2[k] then
					EID:WriteDebugMsg(" Table '" .. prevKey .. "' does not contain key: " .. k)
					progress[2] = progress[2] + 1
				elseif type(table2[k]) ~= type(table1[k]) then
					-- EID:WriteDebugMsg("Type mismatch in table '" .. prevKey .. "', key: " .. k)
					progress[2] = progress[2] + 1
				elseif type(table2[k]) == "table" then
				  EID:compareTables(table1[k], table2[k], prevKey.."->"..k, progress)
				else
					-- check for broken markup stuff
					local filteredText = EID:replaceShortMarkupStrings(table2[k])
					local textPartsTable = EID:filterColorMarkup(filteredText, EID:getNameColor())
					for _, textPart in ipairs(textPartsTable) do
						local filteredSpriteText, spriteTable = EID:filterIconMarkup(textPart[1])

						if string.find(filteredSpriteText, "{{") or string.find(filteredSpriteText, "}}") then
							EID:WriteDebugMsg(" Table '" ..
							prevKey .. "' entry '" .. k .. "' does contain a broken markup object: '" .. table2[k])
							progress[1] = progress[1] - 2
							progress[2] = progress[2] + 1
							break
						else
							for _, sprite in ipairs(spriteTable) do
								if sprite[1][1] == "ERROR" then
									EID:WriteDebugMsg(" Table '" ..
									prevKey ..
									"' entry '" .. k .. "' does contain a bad icon markup in string: '" .. table2[k])
									progress[1] = progress[1] - 2
									progress[2] = progress[2] + 1
									break
								end
							end
						end
					end
				end
			end
		end
	end

	local progress = { 0, 0 }
	EID:compareTables(EID.descriptions[EID.DefaultLanguageCode], EID.descriptions[lang], lang, progress)

	local errors = (enUSEntries - progress[1])-progress[2]
	EID:WriteDebugMsg("Errors found: "..errors .." / "..enUSEntries)
	EID:WriteDebugMsg("Translation progress: "..((enUSEntries-errors)/enUSEntries*100).."%")

end









local charsToDebug = {
	"!!! EID DEBUG MODE ACTIVATED !!!", -- Header
	"ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmnopqrstuvwxyz 1234567890", -- Basic chars
	"western: Áá Àà Ââ Āā Ää Ãã Åå Ąą Ææ Éé Èè Êê Ēē Ëë Ęę Íí Ìì Îî Īī Ïï Þþ Çç Ćć Łł Ńń Ññ",
	"western 2: Óó Òò Ôô Ōō Öö Õõ Śś Øø Œœ Úú Ùù Ûû Ūū Üü Ŵŵ Ýý Ÿÿ Ŷ Ðð ß Źź Żż ¿¡",
	"cyrillic 1: Аа Бб Вв Гг Дд Ее Ёё Жж Зз Ии Йй Кк Лл Мм Нн Оо",
	"cyrillic 2: Пп Рр Сс Тт Уу Фф Хх Цц Чч Шш Щщ Ъъ Ыы Ьь Ээ Юю Яя",
	"emotes: ☆★〠♠♣♥♦♤♧♡♢☀☂♨♪♭♯♂♀",
	"custom icons: ↑Positive ↓Negative \007bulletpoint !Exclamation ǃWarning !!!3!shortcut ǂHashtag",
	"legacy icon Markup: \\1:\1Positive \\2:\2Negative \\3:\3Warning \\6:\6 heart \\5:\5 Key \\015:\015 Coin \\8\\189:\8\189 Bomb",
	"main: |{{ArrowUp}}|{{ArrowDown}}|{{Warning}}|{{ERROR}}|{{Hashtag}}|{{Collectible1}}|{{Trinket1}}|{{Card1}}|{{Pill1}}|{{Throwable}}   numbers: |{{0}}|{{1}}|{{2}}|{{3}}|{{4}}|{{5}}|{{6}}|{{7}}|{{8}}|{{9}}|{{10}}|{{11}}|{{12}}|",
	"hearts: |{{Heart}}|{{HalfHeart}}|{{EthernalHeart}}|{{EmptyHeart}}|{{BlendedHeart}}|{{BoneHeart}}|{{HalfBoneHeart}}|{{EmptyBoneHeart}}|{{SoulHeart}}|{{HalfSoulHeart}}|{{BlackHeart}}|{{HalfBlackHeart}}|{{GoldenHeart}}|{{CoinHeart}}|{{HalfCoinHeart}}|{{EmptyCoinHeart}}|{{RottenHeart}}|",
	"pickups: |{{Key}}|{{GoldenKey}}|{{Bomb}}|{{GoldenBomb}}|{{Coin}}|{{Card}}|{{RedCard}}|{{Collectible}}|{{Pill}}|{{Trinket}}|{{Battery}}|{{Rune}}|{{Slotmachine}}|",
	"roomtypes: |{{DevilRoom}}|{{AngelRoom}}|{{ChallengeRoom}}|{{IsaacsRoom}}|{{TreasureRoom}}|{{ArcadeRoom}}|{{BossRushRoom}}|{{Shop}}|{{SuperSecretRoom}}|{{BarrenRoom}}|{{MiniBoss}}|{{DiceRoom}}|{{GreedTreasureRoom}}|{{SecretRoom}}|{{Library}}|{{ChestRoom}}|{{BossRoom}}|{{CursedRoom}}|{{SacrificeRoom}}|",
	"roomshapes: |{{Room}}|{{RoomLongHorizontal}}|{{RoomLongThinHorizontal}}|{{RoomSmallHorizontal}}|{{RoomLBottomRight}}|{{RoomSmallVertical}}|{{RoomLBottomLeft}}|{{RoomLTopLeft}}|{{RoomL}}|{{RoomLongVertical}}|{{RoomXL}}|{{RoomLongThinVertical}}|",
	"transformations: |{{CustomTransformation}}|{{Guppy}}|{{FunGuy}}|{{LordoftheFlies}}|{{Conjoined}}|{{Spun}}|{{Mom}}|{{OhCrap}}|{{Bob}}|{{Leviathan}}|{{Seraphim}}|{{SuperBum}}|{{Bookworm}}|{{SpiderBaby}}|{{Adult}}|{{Stompy}}|",
	"Stats: |{{Damage}}|{{Speed}}|{{Tears}}|{{Range}}|{{Shotspeed}}|{{Luck}}|{{AngelChance}}|{{DevilChance}}|{{AngelDevilChance}}|{{PlanetariumChance}}|{{TreasureRoomChance}}|",
	"AB+ Stats: |{{DamageAB}}|{{SpeedAB}}|{{TearsAB}}|{{RangeAB}}|{{ShotspeedAB}}|{{LuckAB}}|{{AngelChanceAB}}|{{DevilChanceAB}}|",
	"Status effects: |{{Charm}}|{{Burning}}|{{Crown}}|{{Fear}}|{{Poison}}|{{Slow}}|{{Magnetize}}|{{BrimstoneCurse}}|{{BleedingOut}}|{{Weakness}}|{{Bait}}|{{DeathMark}}|",
	"Curses, Misc: |{{CurseDarkness}}|{{CurseLabyrinth}}|{{CurseLost}}|{{CurseUnknown}}|{{CurseCursed}}|{{CurseMaze}}|{{CurseBlind}}|{{CurseGiant}}|{{HardMode}}|{{GreedMode}}|{{GreedierMode}}|{{DonationJam}}|{{AchievementLocked}}|{{VictoryLap}}|",
	"Main Colors: {{ColorText}}Text {{ColorTransform}}Transform {{ColorError}}Error {{ColorObjName}}ObjName {{ColorBlack}}Black {{ColorWhite}}White {{ColorRed}}Red {{ColorLime}}Lime {{ColorBlue}}Blue",
	"Colors: {{ColorYellow}}Yellow {{ColorCyan}}Cyan {{ColorPink}}Pink {{ColorSilver}}Silver {{ColorGray}}Gray {{ColorMaroon}}Maroon {{ColorOlive}}Olive {{ColorGreen}}Green {{ColorPurple}}Purple {{ColorTeal}}Teal {{ColorNavy}}Navy {{ColorOrange}}Orange ",
	"special Colors: {{ColorFade}}Fade {{CR}}{{ColorBlink}}Blink {{ColorRainbow}}Rainbow {{ColorBlink}}BlinkWithColor {{ColorFade}}BlinkColorFade",
	"End of line"
}

-----------------------------------------------
----------------LEGACY METHODS-----------------
-----------------------------------------------
------ Legacy Overriding descriptions ------
__eidItemDescriptions[1] = "\1 Overriden Legacy description"	-- 5.100.1 = Sad Onion
__eidTrinketDescriptions[1] = "\2 Overriden Legacy description"	-- 5.350.1 = swallowed penny
__eidCardDescriptions[1] = "Overriden Legacy description"		-- 5.300.1 = the fool
__eidPillDescriptions[21] = "Overriden Legacy description"		-- Pill Effect 20 = Hematemesis
__eidItemTransformations[1] = "Legacy Transformation"			-- add custom transformation Text to Sad Onion

------ Legacy add Description to entity ------
__eidEntityDescriptions["5.10.1"] = {"Entity Name", "Entity description"} -- Adds description to full red hearts

------ Test: Description with colors ------
__eidItemDescriptions[3] =
	"Some {{ColorRed}}long ass Test string with a lot of Words that sound interesting#With{{ColorBlink}} cool {{CR}}{{ColorRed}}C{{ColorGreen}}o{{ColorBlue}}l{{ColorYellow}}o{{ColorOrange}}r{{ColorPink}}s{{ColorWhite}} and a high amount of nifty {{ColorRainbow}}Swag "

-----------------------------------------------
------------------NEW METHODS------------------
-----------------------------------------------
------ Overriding descriptions------
EID:addCollectible(2, "New override Method") -- minimal method
EID:addCollectible(2, "New override Method", "new Name", "ru") -- maximal method
EID:addTrinket(2, "New override Method") -- minimal method
EID:addCard(2, "New override Method", "new Name") -- card
EID:addPill(2, "New override Method", "new Name") -- pilleffect 2 "Balls of steel"
EID:addEntity(5, 10, 2, "Custom Name", "New Custom description") -- Entity

------ Test: adding custom transformation icon ------
local dummySprite = Sprite()
dummySprite:Load("gfx/eid_inline_icons.anm2", true)
EID:addIcon("NewTransform1", "hearts", 2, 9, 9, -1, 0, dummySprite)
-- the Transformation icon will try to get an icon with the same name as the transformation, but without any spaces. Default Icon otherwise
EID:createTransformation("NewTransform1", "New transformation") -- Transformation
EID:createTransformation("NewTransform1", "New russian transformation", "ru") -- add Transformation name in russian

EID:assignTransformation("collectible", 5, "NewTransform1,2,3") -- Add Transformation to My Reflection
EID:removeTransformation("collectible", 5, "2,3") -- Removes transformations
EID:assignTransformation("collectible", 5, "2,3") -- add transformations again
EID:removeTransformation("collectible", 5, "2,3") -- Removes transformations again

------ Test: Add all transformations + some customs ones to Inner Eye ------
EID:assignTransformation("collectible", 2, "1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,something Custom,NewTransform1")

------ Test: adding custom icons ------
local dummySprite2 = Sprite()
dummySprite2:Load("gfx/eid_inline_icons.anm2", true)
-- add animated icon using api function (Make sure to create new Sprite Obj when using animated icons. Reuse objects when only using static icons)
EID:addIcon("TestIcon", "hearts", -1, 9, 9, -1, 0, dummySprite2)
EID:AddIconToObject(5, 100, 1, "TestIcon")


-- add icon directly
local dummySprite3 = Sprite()
dummySprite3:Load("gfx/eid_inline_icons.anm2", true)
EID.InlineIcons["Test"] = {"pickups", -1, 9, 9, -1, 0, dummySprite3}
-- Add custom card / pill icon
--EID.InlineIcons["Card58"] = {"pickups", -1, 9, 9, -1, 0, dummySprite3}


__eidItemDescriptions[3] = "{{Bomb}} Emote {{Key}} Test {{Test}}{{TestIcon}} {{ColorBlackBlink}}description {{SomeInvalidInnerStuff}} cool" -- 5.100.2 = Inner Eye
__eidItemDescriptions[6] = "This item as Inline Icon {{Collectible6}}#And here are others {{Collectible69}} {{Collectible16}} {{Collectible323}} {{Collectible345}} {{Collectible223}}#And some trinket sprites {{Trinket12}} {{Trinket22}} {{Trinket1}} {{Trinket55}} {{Trinket100}} {{Trinket123}}#And some names {{NameC3}},{{NameT23}} test {{Name3.54.0}}" -- 5.100.2 = Inner Eye


EID:addIgnoredEntity(5,100,10) -- Ignore "Halo of flies" collectible entity
EID:addIgnoredEntity(5,100,11) -- Ignore "1Up" collectible entry

EID:removeIgnoredEntity(5,100,10) -- un-Ignore "Halo of flies" collectible entity

------ Test: adding custom icons ------
EID:addColor("ColorTwitterBlue", KColor(0, 0.671875, 0.9296875, 1), nil)
EID:addColor("ColorBlackBlink", nil, function(color)
		local maxAnimTime = 30
		local animTime = game:GetFrameCount() % maxAnimTime
		color = EID:copyKColor(color) or EID:getTextColor()
		if animTime < maxAnimTime / 2 then
			color = KColor(0, 0, 0, 1 * color.Alpha)
		else
			color = KColor(1, 1, 1, 1 * color.Alpha)
		end
		return color
	end
)
-- Test: Pill effect unidentifyable
EID:SetPillEffectUnidentifyable(24, true) -- set "I can see forever" to always be unidentifyable

-- Test: Write error for id = -1
EID:addCollectible(-1, "Desc", "Fail")
EID:addTrinket(-1, "Desc", "Fail")
EID:addCharacterInfo(-1, "Desc", "Fail")
EID:addCard(-1, "Desc", "Fail")
EID:addPill(-1, "Desc", "Fail")
EID:addHorsePill(-1, "Desc", "Fail")
EID:addBirthright(-1, "Desc", "Fail")


local function onDebugRender()
	EID:renderHUDLocationIndicators()

	for _,v in ipairs(Isaac.FindByType(5,10,3,true,false)) do
		if v:GetData()["EID_Description"] == nil then
			v:GetData()["EID_Description"] = "Test specific description#Init seed: ".. v.InitSeed
		end
	end
	for _,v in ipairs(Isaac.FindByType(5,10,4,true,false)) do
		if v:GetData()["EID_Description"] == nil then
			local descTable = {
				["Name"] = "Some Item with seed ".. v.InitSeed ,
				["Description"] = "Test specific description#Init seed: ".. v.InitSeed,
				["Transformation"] = "1,2",
				["ModName"] = "My Mod name",
				["Quality"] = 4,
				["Icon"] = EID.ObjectIcon["5.100.1"],
				["ItemType"] = ItemType.ITEM_ACTIVE,
				["ChargeType"] = ItemConfig.CHARGE_NORMAL,
				["Charges"] = 3,
			}
			v:GetData()["EID_Description"] = descTable
		end
	end

	for i, v in ipairs(charsToDebug) do
		local pos = EID:getTextPosition() + Vector(-5, - 15 + ((i - 1) * 14))
		EID:renderString(v, pos, Vector(EID.Scale, EID.Scale), KColor(1, 1, 1, 1))

		if not showDebugChars then
			break
		end
	end
end
EID:AddCallback(ModCallbacks.MC_POST_RENDER, onDebugRender)
