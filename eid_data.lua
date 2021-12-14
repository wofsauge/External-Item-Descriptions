EID.ButtonToIconMap = {
	[ButtonAction.ACTION_SHOOTUP] = "{{ButtonY}}",
	[ButtonAction.ACTION_SHOOTDOWN] = "{{ButtonA}}",
	[ButtonAction.ACTION_SHOOTRIGHT] = "{{ButtonB}}",
	[ButtonAction.ACTION_SHOOTLEFT] = "{{ButtonX}}",
	[ButtonAction.ACTION_DOWN] = "{{ButtonDDown}}",
	[ButtonAction.ACTION_UP] = "{{ButtonDUp}}",
	[ButtonAction.ACTION_RIGHT] = "{{ButtonDRight}}",
	[ButtonAction.ACTION_LEFT] = "{{ButtonDLeft}}",
	[ButtonAction.ACTION_BOMB] = "{{ButtonLB}}",
	[ButtonAction.ACTION_PILLCARD] = "{{ButtonRB}}",
	[ButtonAction.ACTION_ITEM] = "{{ButtonLT}}",
	[ButtonAction.ACTION_DROP] = "{{ButtonRT}}",
	[ButtonAction.ACTION_MAP] = "{{ButtonSelect}}",
	[ButtonAction.ACTION_PAUSE] = "{{ButtonMenu}}",
}

EID.HUDElements = {
	["Active1"] = {x = 20,y = 5, width = 65, height = 65, anchors={"TOP","LEFT"}, descriptionObj = function() 
		local id = EID.player:GetActiveItem(ActiveSlot.SLOT_PRIMARY)
		if id == 0 then return nil end
		return EID:getDescriptionObj(5, 100, id) 
	end},
	["Active2"] = {x = -5,y = 0, width = 35, height = 35, anchors={"TOP","LEFT"}, descriptionObj = function()
		local id = EID.player:GetActiveItem(ActiveSlot.SLOT_SECONDARY)
		if id == 0 then return nil end
		return EID:getDescriptionObj(5, 100, id)
	end},
	["Trinket1"] = {x = 50,y = 0, width = 55, height = 65, anchors={"BOTTOM","LEFT"}, descriptionObj = function()
		local id = EID.player:GetTrinket(0)
		if id == 0 then return nil end
		return EID:getDescriptionObj(5, 350, id)
	end},
	["Trinket2"] = {x = 0,y = 40, width = 55, height = 65, anchors={"BOTTOM","LEFT"}, descriptionObj = function()
		local id = EID.player:GetTrinket(1)
		if id == 0 then return nil end
		return EID:getDescriptionObj(5, 350, id)
	end},
	["Pocket1"] = {x = 0,y = 5, width = 250, height = 40, anchors={"BOTTOM","RIGHT"}, descriptionObj = function()
		local id = EID.player:GetCard(0)
		if id ~= 0 then return EID:getDescriptionObj(5, 300, id) end
		id = EID.player:GetPill(0)
		if id ~= 0 then return EID:getDescriptionObj(5, 70, id) end
		return nil
	end},
	["Pocket2"] = {x = 0,y = 40, width = 30, height = 30, anchors={"BOTTOM","RIGHT"}, descriptionObj = function()
		local id = EID.player:GetCard(1)
		if id ~= 0 then return EID:getDescriptionObj(5, 300, id) end
		id = EID.player:GetPill(1)
		if id ~= 0 then return EID:getDescriptionObj(5, 70, id) end
		return nil
	end},
	["Pocket3"] = {x = 0,y = 70, width = 30, height = 25, anchors={"BOTTOM","RIGHT"}, descriptionObj = function()
		local id = EID.player:GetCard(2)
		if id ~= 0 then return EID:getDescriptionObj(5, 300, id) end
		id = EID.player:GetPill(2)
		if id ~= 0 then return EID:getDescriptionObj(5, 70, id) end
		return nil
	end},
	["Pocket4"] = {x = 0,y = 95, width = 30, height = 20, anchors={"BOTTOM","RIGHT"}, descriptionObj = function()
		local id = EID.player:GetCard(3)
		if id ~= 0 then return EID:getDescriptionObj(5, 300, id) end
		id = EID.player:GetPill(3)
		if id ~= 0 then return EID:getDescriptionObj(5, 70, id) end
		return nil
	end}
}

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
	{"{{EthernalHeart}}", "{{EternalHeart}}"}, -- fix spelling error
	{"{{CONFIG_BoC_Toggle}}", function(_) return EID.ButtonToIconMap[EID.Config["BagOfCraftingToggleKey"]] or "{{ButtonSelect}}" end}, -- fix spelling error
}
local controllerSprites = Sprite()
controllerSprites:Load("gfx/ui/buttons.anm2", true)
local function getControllerSprite()
	return (EID.player.ControllerIndex > 0 and controllerSprites) or EID.InlineIconSprite
end

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
	["EternalHeart"] = {"hearts", 2, 9, 9},
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
	["RottenHeart"] = {"hearts", 16, 9, 9},
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
	["Timer"] = {"pickups", 10, 8, 9},
	["PoopPickup"] = {"pickups", 11, 8, 9},
	["Collectible"] = {"Collectible", 0, 7, 7},
	----- Use Markup "Collectible"+ ITEMID to render collectible sprites (example: {{Collectible1}} = Sad Onion)
	----- Modded Collectible-icons are automatically generated. No code needed!
	["Trinket"] = {"Trinket", 0, 7, 7},
	----- Use Markup "Trinket"+ ITEMID to render trinket sprites (example: {{Trinket1}} = Swallowed Penny)
	----- Modded Trinket-icons are automatically generated. No code needed!
	["Slotmachine"] = {"Slotmachine", 0, 7, 7},
	-- Behaviors
	["Throwable"] = {"Behavior", 0, 9, 9},
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
	["UltraSecretRoom"] = {"roomicons", 19, 8, 9, 0, 2},
	["Planetarium"] = {"roomicons", 20, 8, 9, 0, 2},
	["PoopRoomIcon"] = {"roomicons", 21, 8, 9, 0, 2},
	["RedChestRoomIcon"] = {"roomicons", 22, 8, 9, 0, 2},
	["GoldenChestRoomIcon"] = {"roomicons", 23, 8, 9, 0, 2},
	
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
	["CustomTransformation"] = {"TransformationCustom", 0, 16, 16, -5, -1, EID.IconSprite},
	["Guppy"] = {"Transformation1", 0, 16, 16, 0, -1, EID.IconSprite},
	["FunGuy"] = {"Transformation2", 0, 16, 16, 0, -1, EID.IconSprite},
	["LordoftheFlies"] = {"Transformation3", 0, 16, 16, 0, -1, EID.IconSprite},
	["Beelzebub"] = {"Transformation3", 0, 16, 16, 0, -1, EID.IconSprite},
	["Conjoined"] = {"Transformation4", 0, 16, 16, 0, -1, EID.IconSprite},
	["Spun"] = {"Transformation5", 0, 16, 16, 0, -1, EID.IconSprite},
	["Mom"] = {"Transformation6", 0, 16, 16, 0, -1, EID.IconSprite},
	["YesMother?"] = {"Transformation6", 0, 16, 16, 0, -1, EID.IconSprite},
	["OhCrap"] = {"Transformation7", 0, 16, 16, 0, -1, EID.IconSprite},
	["Bob"] = {"Transformation8", 0, 16, 16, 0, -1, EID.IconSprite},
	["Leviathan"] = {"Transformation9", 0, 16, 16, 0, -1, EID.IconSprite},
	["Seraphim"] = {"Transformation10", 0, 16, 16, 0, -1, EID.IconSprite},
	["SuperBum"] = {"Transformation11", 0, 16, 16, 0, -1, EID.IconSprite},
	["Bookworm"] = {"Transformation12", 0, 16, 16, 0, -1, EID.IconSprite},
	["SpiderBaby"] = {"Transformation13", 0, 16, 16, 0, -1, EID.IconSprite},
	["Adult"] = {"Transformation14",0,16, 16, 0, -1, EID.IconSprite},
	["Stompy"] = {"Transformation15",0,16, 16, 0, -1, EID.IconSprite},
	-- Quality
	
	["Quality0"] = {"Quality", 0, 10, 10, 0, 0},
	["Quality1"] = {"Quality", 1, 10, 10, 0, 0},
	["Quality2"] = {"Quality", 2, 10, 10, 0, 0},
	["Quality3"] = {"Quality", 3, 10, 10, 0, 0},
	["Quality4"] = {"Quality", 4, 10, 10, 0, 0},
	-- Controller Button Icons (XBox based)
	["ButtonY"] = {"XboxOne", 0, 9, 8, 3, 4, function(_) return getControllerSprite() end},
	["ButtonA"] = {"XboxOne", 1, 9, 8, 3, 4, function(_) return getControllerSprite() end},
	["ButtonB"] = {"XboxOne", 2, 9, 8, 3, 4, function(_) return getControllerSprite() end},
	["ButtonX"] = {"XboxOne", 3, 9, 8, 3, 4, function(_) return getControllerSprite() end},
	["ButtonDDown"] = {"XboxOne", 4, 9, 8, 3, 4, function(_) return getControllerSprite() end},
	["ButtonDUp"] = {"XboxOne", 5, 8, 9, 3, 4, function(_) return getControllerSprite() end},
	["ButtonDRight"] = {"XboxOne", 6, 9, 8, 3, 4, function(_) return getControllerSprite() end},
	["ButtonDLeft"] = {"XboxOne", 7, 9, 8, 3, 4, function(_) return getControllerSprite() end},
	["ButtonLStick"] = {"XboxOne", 8, 8, 8, 3, 4, controllerSprites},
	["ButtonRStick"] = {"XboxOne", 9, 8, 8, 3, 4, controllerSprites},
	["ButtonLB"] = {"XboxOne", 10, 8, 8, 3, 4, function(_) return getControllerSprite() end},
	["ButtonRB"] = {"XboxOne", 11, 8, 8, 3, 4, function(_) return getControllerSprite() end},
	["ButtonLT"] = {"XboxOne", 12, 8, 8, 3, 4, function(_) return getControllerSprite() end},
	["ButtonRT"] = {"XboxOne", 13, 8, 8, 3, 4, function(_) return getControllerSprite() end},
	["ButtonSelect"] = {"XboxOne", 14, 8, 8, 3, 4, function(_) return getControllerSprite() end},
	["ButtonMenu"] = {"XboxOne", 15, 8, 8, 3, 4, function(_) return getControllerSprite() end},
	
	-- Crafting
	
	["Crafting0"] = {"Crafting", 0, 14, 16, -2, -3},
	["Crafting1"] = {"Crafting", 1, 14, 16, -2, -3},
	["Crafting2"] = {"Crafting", 2, 14, 16, -2, -3},
	["Crafting3"] = {"Crafting", 3, 14, 16, -2, -3},
	["Crafting4"] = {"Crafting", 4, 14, 16, -2, -3},
	["Crafting5"] = {"Crafting", 5, 14, 16, -2, -3},
	["Crafting6"] = {"Crafting", 6, 14, 16, -2, -3},
	["Crafting7"] = {"Crafting", 7, 14, 16, -2, -3},
	["Crafting8"] = {"Crafting", 8, 14, 16, -2, -3},
	["Crafting9"] = {"Crafting", 9, 14, 16, -2, -3},
	["Crafting10"] = {"Crafting", 10, 14, 16, -2, -3},
	["Crafting11"] = {"Crafting", 11, 14, 16, -2, -3},
	["Crafting12"] = {"Crafting", 12, 14, 16, -2, -3},
	["Crafting13"] = {"Crafting", 13, 14, 16, -2, -3},
	["Crafting14"] = {"Crafting", 14, 14, 16, -2, -3},
	["Crafting15"] = {"Crafting", 15, 14, 16, -2, -3},
	["Crafting16"] = {"Crafting", 16, 14, 16, -2, -3},
	["Crafting17"] = {"Crafting", 17, 14, 16, -2, -3},
	["Crafting18"] = {"Crafting", 18, 14, 16, -2, -3},
	["Crafting19"] = {"Crafting", 19, 14, 16, -2, -3},
	["Crafting20"] = {"Crafting", 20, 14, 16, -2, -3},
	["Crafting21"] = {"Crafting", 21, 14, 16, -2, -3},
	["Crafting22"] = {"Crafting", 22, 14, 16, -2, -3},
	["Crafting23"] = {"Crafting", 23, 14, 16, -2, -3},
	["Crafting24"] = {"Crafting", 24, 14, 16, -2, -3},
	["Crafting25"] = {"Crafting", 25, 14, 16, -2, -3},
	["Crafting26"] = {"Crafting", 26, 14, 16, -2, -3},
	["Crafting27"] = {"Crafting", 27, 14, 16, -2, -3},
	["Crafting28"] = {"Crafting", 28, 14, 16, -2, -3},
	["Crafting29"] = {"Crafting", 29, 14, 16, -2, -3},
	["Crafting30"] = {"Crafting", 30, 14, 16, -2, -3},
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
	["ColorPastelBlue"] = KColor(0.3882, 0.5216, 1, 1),
	["ColorLavender"] = KColor(0.7451, 0.3686, 1, 1),
	["ColorLightOrange"] = KColor(1, 0.6353, 0.3686, 1),
	["ColorBagComplete"] = KColor(0, 1, 0, 0.6),
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
	-- Rainbow color effect
	["ColorGold"] = function(_)
		local maxAnimTime = 80
		local animTime = Game():GetFrameCount() % maxAnimTime
		local c = EID.InlineColors
		local colors = {c["ColorYellow"], c["ColorOrange"]}
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

-- Data table for a trinket's ability to be doubled/tripled by Mom's Box or being Golden
-- Due to only a few exceptions needing special rules, most of these are just a single number, which will be found in the description and multiplied
-- Exceptions will use a table to figure out what to do with them:
-- t: text to multiply. A table of text to find and multiply by the multiplier; trinkets with multiple numbers to multiply will use this
-- mult: max multiplier. assumed to be 3, some max out at 2, a few go 1x/2x/4x
-- mults: custom multipliers. A Missing Page's damage goes from 80 to 120 to 160; so its multipliers are 1.5 and 2, instead of 2 and 3
-- append / findReplace / fullReplace: add text (Rainbow Worm, NO!) or entirely replace the trinket's description (Tick) from goldenTrinketEffects
EID.GoldenTrinketData = {
	-- Swallowed Penny, Purple Heart (max 2x), a couple Worms, Black Lipstick (max 2x), Bible Tract (max 2x), Monkey's Paw
	[1] = 1, [5] = {t={2}, mult=2}, [10] = 0.4, [11] = 0.4, [17] = {t={1}, mult=2}, [18] = {t={3}, mult=2}, [20] = 1,
	-- Hook Worm (two stats), Whip Worm, Fish Head, Liberty Cap (max 4x), Curved Horn, Goat Hoof, Mom's Pearl (2x becomes 3x)
	[26] = {t={0.4, 1.5}}, [27] = 0.5, [29] = 1, [32] = {t={25}, mult=4}, [35] = 2, [37] = 0.15, [38] = {t={10}, mult=2},
	-- Cancer, Lucky Toe (just the Luck Up), Isaac's Fork (heart heal amount), A Missing Page (damage + necronomicon multiplier), Tick (the biggest pain)
	[39] = 1, [42] = 1, [46] = {findReplace = true}, [48] = {t={2, 80},mults={1.5,2}}, [53] = {fullReplace = true},
	-- Maggy's Faith, Rainbow Worm, Tape Worm, Lazy Worm, Louse, Watch Battery (just the charge amount), Exploding Cap, Stud Finder
	[55] = 1, [64] = {append = true}, [65] = {t={3,2}}, [66] = 0.5, [70] = 1, [72] = 1, [73] = 10, [74] = {t={0.5}, mult=2},
	-- Error (same as Rainbow Worm), Second Hand (max 2x -> 3x), Black Feather, Blind Rage, Golden Horse Shoe, Karma, Lil Larva
	[75] = {append = true}, [78] = {t={2}, mults={1.5,1.5}}, [80] = 0.5, [81] = 2, [82] = {t={15}, mult=2}, [85] = {t={1,1,1}}, [86] = {t={1}, mult=2},
	-- NO!, Brown Cap, Cracked Crown, Ouroboros Worm, Broken Syringe, Beth's Faith (possibly tripleable, but max 8 wisps in its ring)
	[88] = {append = true}, [90] = {append = true, mult=2}, [92] = 20, [96] = {t={0.4, 1.5}}, [132] = {t={25}, mult=4}, [142] = {t={4}, mult=2},
	-- Old Capacitor (hard cap of 33% chance), Perfection, Mom's Lock, 
	[143] = {t={20}, mult=1.65}, [145] = 10, [153] = {t={25}, mult=4},
	
}
