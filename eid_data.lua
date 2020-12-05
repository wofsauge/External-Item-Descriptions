-- Specific strings that will be replaced with something else. This is used to convert Shortcuts into internal markup.
EID.TextReplacementPairs = {
	{"!!!", "{{Warning}}"}, -- Turn 3 Exclamations into Warning
	{"↑", "{{ArrowUp}}"}, -- Up Arrow
	{"↓", "{{ArrowDown}}"}, -- Down Arrow
	{"\1", "{{ArrowUp}}"}, -- Legacy Up Arrow
	{"\2", "{{ArrowDown}}"}, -- Legacy Down Arrow
	{"\3", "{{Warning}}"}, -- Legacy Warning
	{"\6", "{{Heart}}"}, -- Legacy Heart
	{"\5", "{{Key}}"}, -- Legacy Key
	{"\015", "{{Coin}}"}, -- Legacy Coin
	{"\8\189", "{{Bomb}}"}, -- Legacy BOMB
	{"{{Hashtag}}", "ǂ"}, -- Hashtag
	{"{{CR}}", "{{ColorReset}}"}, -- Shortcut for Color Resetting
}

--Format: [SHORTCUT]= {Animationname, Frame, Width, Height, LeftOffset [Default: -1], TopOffset [Default: 0], SpriteObject [Default: EID.InlineIconSprite]}
EID.InlineIcons = {
	["ERROR"] = {"ERROR", 0, 10, 10},
	["ArrowUp"] = {"ArrowUp", 0, 8, 9},
	["ArrowDown"] = {"ArrowDown", 0, 8, 9},
	["Warning"] = {"Warning", 0, 4, 9},
	["Blank"] = {"Blank", 0, 0, 0},
	-- Numbers
	["0"] = {"numbers", 0, 4, 7},
	["1"] = {"numbers", 1, 4, 7, -2},
	["2"] = {"numbers", 2, 4, 7},
	["3"] = {"numbers", 3, 4, 7},
	["4"] = {"numbers", 4, 4, 7},
	["5"] = {"numbers", 5, 4, 7},
	["6"] = {"numbers", 6, 4, 7},
	["7"] = {"numbers", 7, 4, 7},
	["8"] = {"numbers", 8, 4, 7},
	["9"] = {"numbers", 9, 4, 7},
	["10"] = {"numbers", 10, 6, 7},
	["11"] = {"numbers", 11, 6, 7},
	["12"] = {"numbers", 12, 6, 7},
	-- Hearts
	["Heart"] = {"hearts", 0, 9, 9},
	["HalfHeart"] = {"hearts", 1, 9, 9},
	["EthernalHeart"] = {"hearts", 2, 9, 9},
	["EmptyHeart"] = {"hearts", 3, 9, 9},
	["BlendedHeart"] = {"hearts", 4, 9, 9},
	["BoneHeart"] = {"hearts", 5, 9, 9},
	["HalfBoneHeart"] = {"hearts", 6, 9, 9},
	["EmptyBoneHeart"] = {"hearts", 7, 9, 9},
	["SoulHeart"] = {"hearts", 8, 9, 9},
	["HalfSoulHeart"] = {"hearts", 9, 9, 9},
	["BlackHeart"] = {"hearts", 10, 9, 9},
	["HalfBlackHeart"] = {"hearts", 11, 9, 9},
	["GoldenHeart"] = {"hearts", 12, 9, 9},
	["CoinHeart"] = {"hearts", 13, 9, 9},
	["HalfCoinHeart"] = {"hearts", 14, 9, 9},
	["EmptyCoinHeart"] = {"hearts", 15, 9, 9},
	-- Pickups
	["Key"] = {"pickups", 0, 7, 9},
	["GoldenKey"] = {"pickups", 1, 7, 9},
	["Bomb"] = {"pickups", 2, 10, 9},
	["GoldenBomb"] = {"pickups", 3, 10, 9},
	["Coin"] = {"pickups", 4, 7, 9},
	["Rune"] = {"pickups", 5, 8, 9},
	["Card"] = {"pickups", 6, 11, 11},
	----- Use Markup "Card"+ ID to render card-front sprites (example: {{Card1}} = 01 - The Fool)
	----- Modded Card-fronts need to be added manually! (Example in Wiki)
	["RedCard"] = {"pickups", 7, 11, 11},
	["Pill"] = {"pickups", 8, 9, 9},
	----- Use Markup "Pill"+ ID to render pill sprites (example: {{Pill1}} = Blue Pill)
	----- Modded Pill-Colors need to be added manually! (Example in Wiki)
	["Battery"] = {"pickups", 9, 8, 9},
	["Collectible"] = {"Collectible", 0, 7, 7},
	----- Use Markup "Collectible"+ ITEMID to render collectible sprites (example: {{Collectible1}} = Sad Onion)
	----- Modded Collectible-icons are automatically generated. No code needed!
	["Trinket"] = {"Trinket", 0, 7, 7},
	----- Use Markup "Trinket"+ ITEMID to render trinket sprites (example: {{Trinket1}} = Swallowed Penny)
	----- Modded Trinket-icons are automatically generated. No code needed!
	["Slotmachine"] = {"Slotmachine", 0, 7, 7},
	-- Room Icons
	["Shop"] = {"roomicons", 0, 8, 9, 0, 2},
	["SecretRoom"] = {"roomicons", 1, 8, 9, 0, 2},
	["SuperSecretRoom"] = {"roomicons", 2, 8, 9, 0, 2},
	["Library"] = {"roomicons", 3, 8, 9, 0, 2},
	["TreasureRoom"] = {"roomicons", 4, 8, 9, 0, 2},
	["AngelRoom"] = {"roomicons", 5, 8, 9, 0, 2},
	["DevilRoom"] = {"roomicons", 6, 8, 9, 0, 2},
	["MiniBoss"] = {"roomicons", 7, 8, 9, 0, 2},
	["BossRoom"] = {"roomicons", 8, 9, 9, 0, 2},
	["ChallengeRoom"] = {"roomicons", 9, 8, 9, 0, 2},
	["BossRushRoom"] = {"roomicons", 10, 8, 9, 0, 2},
	["CursedRoom"] = {"roomicons", 11, 8, 9, 0, 2},
	["SacrificeRoom"] = {"roomicons", 12, 8, 9, 0, 2},
	["ArcadeRoom"] = {"roomicons", 13, 8, 9, 0, 2},
	["GreedTreasureRoom"] = {"roomicons", 14, 8, 9, 0, 2},
	["DiceRoom"] = {"roomicons", 15, 8, 9, 0, 2},
	["ChestRoom"] = {"roomicons", 16, 8, 9, 0, 2},
	["IsaacsRoom"] = {"roomicons", 17, 8, 9, 0, 2},
	["BarrenRoom"] = {"roomicons", 18, 8, 9, 0, 2},
	-- Roomshape Icons
	["Room"] = {"roomshape", 0, 9, 9, 0, 2},
	["RoomSmallHorizontal"] = {"roomshape", 1, 9, 9},
	["RoomSmallVertical"] = {"roomshape", 2, 7, 6},
	["RoomLongVertical"] = {"roomshape", 3, 7, 9},
	["RoomLongHorizontal"] = {"roomshape", 4, 11, 9},
	["RoomLongThinVertical"] = {"roomshape", 5, 5, 9},
	["RoomLongThinHorizontal"] = {"roomshape", 6, 11, 9},
	["RoomXL"] = {"roomshape", 7, 11, 11},
	["RoomL"] = {"roomshape", 8, 10, 10},
	["RoomLTopLeft"] = {"roomshape", 9, 10, 10},
	["RoomLBottomLeft"] = {"roomshape", 10, 10, 10},
	["RoomLBottomRight"] = {"roomshape", 11, 10, 10},
	-- Transformation Icons
	["CustomTransformation"] = {"TransformationCustom", 0, 11, 14, 0, -1, EID.IconSprite},
	["Guppy"] = {"Transformation1", 0, 11, 13, 0, -1, EID.IconSprite},
	["FunGuy"] = {"Transformation2", 0, 13, 13, 0, -1, EID.IconSprite},
	["LordoftheFlies"] = {"Transformation3", 0, 14, 14, 0, -1, EID.IconSprite},
	["Conjoined"] = {"Transformation4", 0, 18, 15, 0, -1, EID.IconSprite},
	["Spun"] = {"Transformation5", 0, 7, 15, 0, -1, EID.IconSprite},
	["Mom"] = {"Transformation6", 0, 7, 16, 0, -1, EID.IconSprite},
	["OhCrap"] = {"Transformation7", 0, 15, 14, 0, -1, EID.IconSprite},
	["Bob"] = {"Transformation8", 0, 13, 13, 0, -1, EID.IconSprite},
	["Leviathan"] = {"Transformation9", 0, 13, 15, 0, -1, EID.IconSprite},
	["Seraphim"] = {"Transformation10", 0, 20, 14, 0, -1, EID.IconSprite},
	["SuperBum"] = {"Transformation11", 0, 14, 15, 0, -1, EID.IconSprite},
	["Bookworm"] = {"Transformation12", 0, 10, 14, 0, -1, EID.IconSprite},
	["SpiderBaby"] = {"Transformation13", 0, 13, 16, 0, -1, EID.IconSprite},
	--["Adult"] = {"Transformation14",0,0,13, -1, -1, EID.IconSprite},
	--["Stompy"] = {"Transformation15",0,0,13, -1, -1, EID.IconSprite},
}

-- Table that holds Colors used for markup objects. Example: "{{ColorRed}}"
-- Format: ["Shortcut"] = KColor
-- callbacks receive 1 argument, containing the previously used Color object.
EID.InlineColors = {
	-- Default colors
	["ColorText"] = function(_)	return EID:getTextColor() end,
	["ColorTransform"] = function(_) return EID:getTransformationColor() end,
	["ColorError"] = function(_) return EID:getErrorColor() end,
	["ColorObjName"] = function(_) return EID:getNameColor() end,
	["ColorReset"] = function(_) return EID.LastRenderCallColor end,
	-- Basic Colors
	["ColorEIDText"] = KColor(1, 1, 1, 1),
	["ColorEIDTransform"] = KColor(0.5, 0.5, 1, 1),
	["ColorEIDError"] = KColor(1, 0.4, 0.4, 1),
	["ColorEIDObjName"] = KColor(0.8, 0.3, 0.8, 1),
	["ColorBlack"] = KColor(0, 0, 0, 1),
	["ColorWhite"] = KColor(1, 1, 1, 1),
	["ColorRed"] = KColor(1, 0, 0, 1),
	["ColorLime"] = KColor(0, 1, 0, 1),
	["ColorBlue"] = KColor(0, 0, 1, 1),
	["ColorYellow"] = KColor(1, 1, 0, 1),
	["ColorCyan"] = KColor(0, 1, 1, 1),
	["ColorPink"] = KColor(1, 0, 1, 1),
	["ColorSilver"] = KColor(0.75, 0.75, 0.75, 1),
	["ColorGray"] = KColor(0.5, 0.5, 0.5, 1),
	["ColorMaroon"] = KColor(0.5, 0, 0, 1),
	["ColorOlive"] = KColor(0.5, 0.5, 0, 1),
	["ColorGreen"] = KColor(0, 0.5, 0, 1),
	["ColorPurple"] = KColor(0.5, 0, 0.5, 1),
	["ColorTeal"] = KColor(0, 0.5, 0.5, 1),
	["ColorNavy"] = KColor(0, 0, 0.5, 1),
	["ColorOrange"] = KColor(1, 0.54, 0, 1),
	-- Swag Colors

	-- Rainbow color effect
	["ColorRainbow"] = function(_)
		local maxAnimTime = 80
		local animTime = Game():GetFrameCount() % maxAnimTime
		local c = EID.InlineColors
		local colors = {c["ColorRed"], c["ColorYellow"], c["ColorLime"], c["ColorCyan"], c["ColorBlue"], c["ColorPink"]}
		local colorFractions = (maxAnimTime - 1) / #colors
		local subAnm = math.floor(animTime / (colorFractions + 1)) + 1
		local primaryColorIndex = subAnm % (#colors + 1)
		if primaryColorIndex == 0 then
			primaryColorIndex = 1
		end
		local secondaryColorIndex = (subAnm + 1) % (#colors + 1)
		if secondaryColorIndex == 0 then
			secondaryColorIndex = 1
		end
		return EID:interpolateColors(
			colors[primaryColorIndex],
			colors[secondaryColorIndex],
			(animTime % (colorFractions + 1)) / colorFractions
		)
	end,
	-- Text will blink frequently
	["ColorBlink"] = function(color)
		local maxAnimTime = 40
		local animTime = Game():GetFrameCount() % maxAnimTime
		color = EID:copyKColor(color) or EID:getTextColor()
		if animTime < maxAnimTime / 2 then
			color.Alpha = 1 * color.Alpha
		else
			color.Alpha = 0 * color.Alpha
		end
		return color
	end,
	-- Text will fade in and out
	["ColorFade"] = function(color)
		local maxAnimTime = 30
		local animTime = Game():GetFrameCount() % (maxAnimTime + 10)
		color = EID:copyKColor(color) or EID:getTextColor()
		if animTime < maxAnimTime / 2 then
			color.Alpha = animTime / (maxAnimTime / 2) * color.Alpha
		elseif animTime < maxAnimTime then
			color.Alpha = (1 - (animTime - (maxAnimTime / 2)) / (maxAnimTime / 2)) * color.Alpha
		else
			color.Alpha = 0
		end
		return color
	end,
}
