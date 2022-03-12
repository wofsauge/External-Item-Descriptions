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

-- List of Effect variants that should be handled for descriptions
EID.effectList = {
	["76"] = true,
	["161"] = true,
}

-- List of HUD elements, their position and usage
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
	["ArrowUp"] = {"ArrowUp", 0, 10, 9, 1},
	["ArrowDown"] = {"ArrowDown", 0, 10, 9, 1},
	["Warning"] = {"Warning", 0, 10, 9, 3},
	["Blank"] = {"Blank", 0, 0, 0},
	["IconGreenTint"] = function(_)
		EID._NextIconModifier = function(sprite)
			sprite.Color = Color(1, 1, 1, EID.Config["Transparency"] * 0.5, 0, 0.5, 0)
		end
		return {"Blank", 0, 0, 0}
	 end,
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
	["Heart"] = {"hearts", 0, 10, 9, 0, 1},
	["HalfHeart"] = {"hearts", 1, 10, 9, 0, 1},
	["EternalHeart"] = {"hearts", 2, 10, 9, 0, 1},
	["EmptyHeart"] = {"hearts", 3, 10, 9, 0, 1},
	["BlendedHeart"] = {"hearts", 4, 10, 9, 0, 1},
	["BoneHeart"] = {"hearts", 5, 10, 9, 0, 1},
	["HalfBoneHeart"] = {"hearts", 6, 10, 9, 0, 1},
	["EmptyBoneHeart"] = {"hearts", 7, 10, 9, 0, 1},
	["SoulHeart"] = {"hearts", 8, 10, 9, 0, 1},
	["HalfSoulHeart"] = {"hearts", 9, 10, 9, 0, 1},
	["BlackHeart"] = {"hearts", 10, 10, 9, 0, 1},
	["HalfBlackHeart"] = {"hearts", 11, 10, 9, 0, 1},
	["GoldenHeart"] = {"hearts", 12, 10, 9, 0, 1},
	["CoinHeart"] = {"hearts", 13, 10, 9, 0, 1},
	["HalfCoinHeart"] = {"hearts", 14, 10, 9, 0, 1},
	["EmptyCoinHeart"] = {"hearts", 15, 10, 9, 0, 1},
	["RottenHeart"] = {"hearts", 16, 10, 9, 0, 1},
	["BrokenHeart"] = {"hearts", 17, 10, 9, 0},
	["HolyMantle"] = {"hearts", 18, 14, 16, 0, -2},
	["HolyMantleSmall"] = {"hearts", 19, 9, 9, 0},
	["RottenBoneHeart"] = {"hearts", 20, 10, 9, 0, 1},
	["UnknownHeart"] = {"hearts", 21, 10, 9, 0, 1},
	
	-- Pickups
	["Key"] = {"pickups", 0, 8, 9, 0},
	["GoldenKey"] = {"pickups", 1, 8, 9, 0},
	["Bomb"] = {"pickups", 2, 10, 9, -1, -1},
	["GoldenBomb"] = {"pickups", 3, 10, 9, -1, -1},
	["Coin"] = {"pickups", 4, 8, 9, 0, 1},
	["Rune"] = {"pickups", 5, 9, 9, 0, -1},
	["Card"] = {"pickups", 6, 12, 11, 0, -1},
	----- Use Markup "Card"+ ID to render card-front sprites (example: {{Card1}} = 01 - The Fool)
	----- Modded Card-fronts need to be added manually! (Example in Wiki)
	["RedCard"] = {"pickups", 7, 12, 11, 0, -1},
	["Pill"] = {"pickups", 8, 11, 9, 0, 1},
	----- Use Markup "Pill"+ ID to render pill sprites (example: {{Pill1}} = Blue Pill)
	----- Modded Pill-Colors need to be added manually! (Example in Wiki)
	["Battery"] = {"pickups", 9, 9, 9, 0},
	["PoopPickup"] = {"pickups", 10, 11, 9, 0},
	["GrabBag"] = {"pickups", 11, 8, 8, 0, 2},
	["BlackSack"] = {"pickups", 12, 8, 8, 0, 2},
	
	-- Collectible
	["Collectible"] = {"Collectible", 0, 7, 7},
	----- Use Markup "Collectible"+ ITEMID to render collectible sprites (example: {{Collectible1}} = Sad Onion)
	----- Modded Collectible-icons are automatically generated. No code needed!
	
	-- Trinket
	["Trinket"] = {"Trinket", 0, 7, 7},
	----- Use Markup "Trinket"+ ITEMID to render trinket sprites (example: {{Trinket1}} = Swallowed Penny)
	----- Modded Trinket-icons are automatically generated. No code needed!
	
	-- Machines
	["Slotmachine"] = {"machines", 0, 8, 7, 0, 3},
	["BloodDonationMachine"] = {"machines", 1, 9, 7, 0, 3},
	["FortuneTeller"] = {"machines", 2, 8, 7, 0, 3},
	["Confessional"] = {"machines", 3, 8, 7, 0, 3},
	["DonationMachine"] = {"machines", 4, 8, 7, 0, 3},
	["RestockMachine"] = {"machines", 5, 8, 7, 0, 3},
	["Mirror"] = {"machines", 6, 8, 7, 0, 2},
	["CraneGame"] = {"machines", 7, 8, 7, 0, 3},
	
	-- Beggars
	["Beggar"] = {"Beggars", 0, 8, 7, 0, 3},
	["DemonBeggar"] = {"Beggars", 1, 8, 7, 0, 3},
	["BatteryBeggar"] = {"Beggars", 2, 8, 7, 0, 2},
	["KeyBeggar"] = {"Beggars", 3, 8, 7, 0, 3},
	["BombBeggar"] = {"Beggars", 4, 8, 7, 0, 3},
	["RottenBeggar"] = {"Beggars", 5, 8, 7, 0, 3},
	
	-- Chests
	["Chest"] = {"Chests", 0, 10, 7, 0, 3},
	["GoldenChest"] = {"Chests", 1, 10, 7, 0, 3},
	["RedChest"] = {"Chests", 2, 10, 7, 0, 3},
	["SpikedChest"] = {"Chests", 3, 12, 7, 0, 3},
	["TrapChest"] = {"Chests", 4, 10, 7, 0, 3},
	["HolyChest"] = {"Chests", 5, 10, 7, 0, 3},
	["WoodenChest"] = {"Chests", 6, 10, 7, 0, 3},
	["StoneChest"] = {"Chests", 7, 10, 7, 0, 3},
	["HauntedChest"] = {"Chests", 8, 10, 7, 0, 3},
	["DirtyChest"] = {"Chests", 9, 10, 7, 0, 3},
	["MegaChest"] = {"Chests", 10, 12, 9, 0, 1},
	
	-- Behaviors
	["Throwable"] = {"Behavior", 0, 9, 9, 0},
	["Chargeable"] = {"Behavior", 1, 9, 9, 0},
	
	-- Room Icons
	["Shop"] = {"roomicons", 0, 8, 9, 0, 2},
	["SecretRoom"] = {"roomicons", 1, 8, 9, 0, 2},
	["SuperSecretRoom"] = {"roomicons", 2, 8, 9, 0, 2},
	["Library"] = {"roomicons", 3, 9, 9, 0, 2},
	["TreasureRoom"] = {"roomicons", 4, 8, 9, 0, 3},
	["AngelRoom"] = {"roomicons", 5, 8, 9, 0, 2},
	["DevilRoom"] = {"roomicons", 6, 8, 9, 0, 2},
	["MiniBoss"] = {"roomicons", 7, 8, 9, 0, 2},
	["BossRoom"] = {"roomicons", 8, 10, 9, 0, 2},
	["ChallengeRoom"] = {"roomicons", 9, 8, 9, 0, 3},
	["BossRushRoom"] = {"roomicons", 10, 9, 9, 0, 3},
	["CursedRoom"] = {"roomicons", 11, 8, 9, 0, 2},
	["SacrificeRoom"] = {"roomicons", 12, 8, 9, 0, 2},
	["ArcadeRoom"] = {"roomicons", 13, 8, 9, 0, 2},
	["GreedTreasureRoom"] = {"roomicons", 14, 8, 9, 0, 3},
	["DiceRoom"] = {"roomicons", 15, 9, 9, 0, 2},
	["ChestRoom"] = {"roomicons", 16, 9, 9, 0, 2},
	["IsaacsRoom"] = {"roomicons", 17, 9, 9, 0, 2},
	["BarrenRoom"] = {"roomicons", 18, 9, 9, 0, 2},
	["UltraSecretRoom"] = {"roomicons", 19, 8, 9, 0, 2},
	["Planetarium"] = {"roomicons", 20, 8, 9, 0, 2},
	["PoopRoomIcon"] = {"roomicons", 21, 7, 9, 0, 3},
	["RedChestRoomIcon"] = {"roomicons", 22, 6, 9, 0, 4},
	["GoldenChestRoomIcon"] = {"roomicons", 23, 6, 9, 0, 4},
	["RedTreasureRoom"] = {"roomicons", 24, 8, 9, 0, 3},
	["MegaChestRoomIcon"] = {"roomicons", 25, 8, 9, 0, 3},
	["MirrorRoom"] = {"roomicons", 26, 8, 9, 0, 2},
	["MinecartRoom"] = {"roomicons", 27, 8, 9, 0},
	["LadderRoom"] = {"roomicons", 28, 6, 9, 0, 3},
	["ChestRoomIcon"] = {"roomicons", 29, 6, 6, 0, 4},
	["StoneChestRoomIcon"] = {"roomicons", 30, 6, 9, 0, 4},
	["SpikedChestRoomIcon"] = {"roomicons", 31, 6, 9, 0, 4},
	["HolyChestRoomIcon"] = {"roomicons", 32, 6, 9, 0, 4},
	["WoodenChestRoomIcon"] = {"roomicons", 33, 6, 9, 0, 4},
	["Teleporter"] = {"roomicons", 34, 9, 9, 0, 2},
	
	-- Roomshape Icons
	["Room"] = {"roomshape", 0, 10, 9, 0, 2},
	["RoomSmallHorizontal"] = {"roomshape", 1, 10, 9, 0, 3},
	["RoomSmallVertical"] = {"roomshape", 2, 7, 6, 0, 2},
	["RoomLongVertical"] = {"roomshape", 3, 8, 9, 0, 0},
	["RoomLongHorizontal"] = {"roomshape", 4, 13, 9, 0, 2},
	["RoomLongThinVertical"] = {"roomshape", 5, 6, 9, 0},
	["RoomLongThinHorizontal"] = {"roomshape", 6, 13, 9, 0, 4},
	["RoomXL"] = {"roomshape", 7, 11, 11, 0, 1},
	["RoomL"] = {"roomshape", 8, 11, 10, 0, 1},
	["RoomLTopLeft"] = {"roomshape", 9, 11, 10, 0, 1},
	["RoomLBottomLeft"] = {"roomshape", 10, 11, 10, 0, 1},
	["RoomLBottomRight"] = {"roomshape", 11, 11, 10, 0, 1},
	
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
	
	-- Controller Button Icons dynamically return either Controller or Keyboard key sprites
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
	["Crafting0"] = {"Crafting", 0, 11, 16, 0, 1},
	["Crafting1"] = {"Crafting", 1, 11, 16, 0, 1},
	["Crafting2"] = {"Crafting", 2, 11, 16, 0, 1},
	["Crafting3"] = {"Crafting", 3, 11, 16, 0, 1},
	["Crafting4"] = {"Crafting", 4, 11, 16, 0, 1},
	["Crafting5"] = {"Crafting", 5, 11, 16, 0, 1},
	["Crafting6"] = {"Crafting", 6, 11, 16, 0, 1},
	["Crafting7"] = {"Crafting", 7, 11, 16, 0, 0},
	["Crafting8"] = {"Crafting", 8, 10, 16, 0, 1},
	["Crafting9"] = {"Crafting", 9, 10	, 16, 0, 1},
	["Crafting10"] = {"Crafting", 10, 10, 16, 0, 1},
	["Crafting11"] = {"Crafting", 11, 10, 16, 0},
	["Crafting12"] = {"Crafting", 12, 10, 16, 0, -1},
	["Crafting13"] = {"Crafting", 13, 10, 16, 0, -1},
	["Crafting14"] = {"Crafting", 14, 10, 16, -2, -2},
	["Crafting15"] = {"Crafting", 15, 12, 16, -2, -2},
	["Crafting16"] = {"Crafting", 16, 12, 16, -2, -2},
	["Crafting17"] = {"Crafting", 17, 16, 16, -1, -2},
	["Crafting18"] = {"Crafting", 18, 9, 16, 0, 1},
	["Crafting19"] = {"Crafting", 19, 11, 16, 0, -1},
	["Crafting20"] = {"Crafting", 20, 15, 16, 0, -2},
	["Crafting21"] = {"Crafting", 21, 14, 16, 0, -1},
	["Crafting22"] = {"Crafting", 22, 11, 16, 0, 1},
	["Crafting23"] = {"Crafting", 23, 10, 16, 0, -1},
	["Crafting24"] = {"Crafting", 24, 11, 16, 0, 1},
	["Crafting25"] = {"Crafting", 25, 10, 16, 0, 3},
	["Crafting26"] = {"Crafting", 26, 10, 16, 0, -1},
	["Crafting27"] = {"Crafting", 27, 11, 16, 0, 1},
	["Crafting28"] = {"Crafting", 28, 11, 16, 0, -1},
	["Crafting29"] = {"Crafting", 29, 13, 16, 0, -1},
	["Crafting30"] = {"Crafting", 30, 11, 16, 0},
	
	-- Stats
	["Damage"] = {"Stats", 0, 13, 16, 0, -1},
	["Speed"] = {"Stats", 1, 16, 16, 0, -1},
	["Tears"] = {"Stats", 2, 17, 16, 0, 0},
	["Range"] = {"Stats", 3, 15, 16, 0, -1},
	["Shotspeed"] = {"Stats", 4, 13, 16, 0, -1},
	["Luck"] = {"Stats", 5, 15, 16, 0, -2},
	["AngelChance"] = {"Stats", 6, 15, 16, -1, -1},
	["DevilChance"] = {"Stats", 7, 15, 16, 0, -2},
	["AngelDevilChance"] = {"Stats", 8, 17, 16, 0, -3},
	["PlanetariumChance"] = {"Stats", 9, 11, 16, 0, -1}, --unused
	["TreasureRoomChance"] = {"Stats", 10, 14, 16, 0, 0}, --unused, assuming that's what it means
	["Tearsize"] = {"Stats", 11, 11, 16, 0, 1},
	-- Stats (Afterbirth+)
	["DamageAB"] = {"Stats", 12, 12, 16, 0, 0},
	["SpeedAB"] = {"Stats", 13, 13, 16, 0, 0},
	["TearsAB"] = {"Stats", 14, 15, 16, 0, -1},
	["RangeAB"] = {"Stats", 15, 14, 16, 0, -1},
	["ShotspeedAB"] = {"Stats", 16, 11, 16, 0, 1},
	["LuckAB"] = {"Stats", 17, 10, 16, 0, 1},
	["AngelChanceAB"] = {"Stats", 18, 7, 16, 0, 1},
	["DevilChanceAB"] = {"Stats", 19, 7, 16, 0, 1},
	["TearsizeAB"] = {"Stats", 20, 9, 16, 0, 1},
	-- Stats (Small)
	["DamageSmall"] = {"Stats", 21, 10, 16, 0, 1},
	["SpeedSmall"] = {"Stats", 22, 12, 16, 0, 1},
	["TearsSmall"] = {"Stats", 23, 13, 16, 0, 1},
	["RangeSmall"] = {"Stats", 24, 12, 16, 0, 0},
	["ShotspeedSmall"] = {"Stats", 25, 9, 16, 0, 1},
	["LuckSmall"] = {"Stats", 26, 10, 16, 0, 1},
	["AngelChanceSmall"] = {"Stats", 27, 10, 16, 0, 1},
	["DevilChanceSmall"] = {"Stats", 28, 11, 16, 0, 1},
	["AngelDevilChanceSmall"] = {"Stats", 29, 12, 16, 0, 0},
	["PlanetariumChanceSmall"] = {"Stats", 30, 8, 16, 0, 1}, 
	["TreasureRoomChanceSmall"] = {"Stats", 31, 10, 16, 0, 2},
	["TearsizeSmall"] = {"Stats", 32, 8, 16, 0, 2},

	-- Player Icons for Birthright
	["Player0"] = {"Players", 0, 12, 12, -1, 1, EID.PlayerSprite},
	["Player1"] = {"Players", 1, 12, 12, -1, 1, EID.PlayerSprite},
	["Player2"] = {"Players", 2, 12, 12, -1, 1, EID.PlayerSprite},
	["Player3"] = {"Players", 3, 12, 12, -1, 1, EID.PlayerSprite},
	["Player4"] = {"Players", 4, 12, 12, -1, 1, EID.PlayerSprite},
	["Player5"] = {"Players", 5, 12, 12, -1, 1, EID.PlayerSprite},
	["Player6"] = {"Players", 6, 12, 12, -1, 1, EID.PlayerSprite},
	["Player7"] = {"Players", 7, 12, 12, -1, 1, EID.PlayerSprite},
	["Player8"] = {"Players", 8, 12, 12, -1, 1, EID.PlayerSprite},
	["Player9"] = {"Players", 9, 12, 12, -1, 1, EID.PlayerSprite},
	["Player10"] = {"Players", 10, 12, 12, -1, 1, EID.PlayerSprite},
	["Player11"] = {"Players", 11, 12, 12, -1, 1, EID.PlayerSprite},
	["Player12"] = {"Players", 12, 12, 12, -1, 1, EID.PlayerSprite},
	["Player13"] = {"Players", 13, 12, 12, -1, 1, EID.PlayerSprite},
	["Player14"] = {"Players", 14, 12, 12, -1, 1, EID.PlayerSprite},
	["Player15"] = {"Players", 15, 12, 12, -1, 1, EID.PlayerSprite},
	["Player16"] = {"Players", 16, 12, 12, -1, 1, EID.PlayerSprite},
	["Player17"] = {"Players", 17, 12, 12, -1, 1, EID.PlayerSprite},
	["Player18"] = {"Players", 18, 12, 12, -1, 1, EID.PlayerSprite},
	["Player19"] = {"Players", 19, 12, 12, -1, 1, EID.PlayerSprite},
	["Player20"] = {"Players", 20, 12, 12, -1, 1, EID.PlayerSprite},
	["Player21"] = {"Players", 21, 12, 12, -1, 1, EID.PlayerSprite},
	["Player22"] = {"Players", 22, 12, 12, -1, 1, EID.PlayerSprite},
	["Player23"] = {"Players", 23, 12, 12, -1, 1, EID.PlayerSprite},
	["Player24"] = {"Players", 24, 12, 12, -1, 1, EID.PlayerSprite},
	["Player25"] = {"Players", 25, 12, 12, -1, 1, EID.PlayerSprite},
	["Player26"] = {"Players", 26, 12, 12, -1, 1, EID.PlayerSprite},
	["Player27"] = {"Players", 27, 12, 12, -1, 1, EID.PlayerSprite},
	["Player28"] = {"Players", 28, 12, 12, -1, 1, EID.PlayerSprite},
	["Player29"] = {"Players", 29, 12, 12, -1, 1, EID.PlayerSprite},
	["Player30"] = {"Players", 30, 12, 12, -1, 1, EID.PlayerSprite},
	["Player31"] = {"Players", 31, 12, 12, -1, 1, EID.PlayerSprite},
	["Player32"] = {"Players", 32, 12, 12, -1, 1, EID.PlayerSprite},
	["Player33"] = {"Players", 33, 12, 12, -1, 1, EID.PlayerSprite},
	["Player34"] = {"Players", 34, 12, 12, -1, 1, EID.PlayerSprite},
	["Player35"] = {"Players", 35, 12, 12, -1, 1, EID.PlayerSprite},
	["Player36"] = {"Players", 36, 12, 12, -1, 1, EID.PlayerSprite},
	["Player37"] = {"Players", 37, 12, 12, -1, 1, EID.PlayerSprite},
	["Player38"] = {"Players", 38, 12, 12, -1, 1, EID.PlayerSprite},
	["Player39"] = {"Players", 39, 12, 12, -1, 1, EID.PlayerSprite},
	["Player40"] = {"Players", 40, 12, 12, -1, 1, EID.PlayerSprite},
	
	-- Status effects
	["Charm"] = {"StatusEffects", 0, 10, 9, 0, 1},
	["Burning"] = {"StatusEffects", 1, 8, 9, 0, 1},
	["Crown"] = {"StatusEffects", 2, 10, 9, 0, 3},
	["Fear"] = {"StatusEffects", 3, 10, 9, 0, 1},
	["Poison"] = {"StatusEffects", 4, 8, 9, 0, 1},
	["Slow"] = {"StatusEffects", 5, 10, 9, 0, 2},
	["Magnetize"] = {"StatusEffects", 6, 10, 9, 0, 1},
	["BrimstoneCurse"] = {"StatusEffects", 7, 10, 9, 0, 1},
	["BleedingOut"] = {"StatusEffects", 8, 8, 9, 0, 1},
	["Bait"] = {"StatusEffects", 9, 10, 9, 0, 1},
	["Weakness"] = {"StatusEffects", 10, 10, 9, 0, 1},
	["DeathMark"] = {"StatusEffects", 11, 10, 9, 0, 1},
	["Confusion"] = {"StatusEffects", 12, 10, 9, 0, 1},
	["Freezing"] = {"StatusEffects", 13, 10, 9, 0, 1},

	-- Curses
	["CurseDarkness"] = {"Curses", 0, 13, 11, 0, -1},
	["CurseLabyrinth"] = {"Curses", 1, 16, 11, 0, -1},
	["CurseLost"] = {"Curses", 2, 14, 11, 0, -1},
	["CurseUnknown"] = {"Curses", 3, 14, 11, 0, -2},
	["CurseCursed"] = {"Curses", 4, 15, 11, 0, -1},
	["CurseMaze"] = {"Curses", 5, 16, 11, 0, -2},
	["CurseBlind"] = {"Curses", 6, 12, 11, -1, -1},
	["CurseGiant"] = {"Curses", 7, 14, 11, 0, -1},

	-- Curses (Small)
	["CurseDarknessSmall"] = {"Curses", 8, 10, 11, 0, 1},
	["CurseLabyrinthSmall"] = {"Curses", 9, 11, 11, 0, 1},
	["CurseLostSmall"] = {"Curses", 10, 10, 11, 0, 1},
	["CurseUnknownSmall"] = {"Curses", 11, 10, 11, 0, 1},
	["CurseCursedSmall"] = {"Curses", 12, 10, 11, 0, 1,},
	["CurseMazeSmall"] = {"Curses", 13, 11, 11, 0, 2},
	["CurseBlindSmall"] = {"Curses", 14, 10, 11, 0, 1},
	["CurseGiantSmall"] = {"Curses", 15, 11, 11, 0},

	-- Boss
	["MomBoss"] = {"Boss", 0, 16, 14, 0, -1},
	["MomsHeart"] = {"Boss", 1, 14, 14, 0, -2},
	["Satan"] = {"Boss", 2, 16, 14, 0, -1},
	["Isaac"] = {"Boss", 3, 16, 13, 0, -1},
	["Delirium"] = {"Boss", 4, 17, 15, 0, -2},
	["Hush"] = {"Boss", 6, 16, 11, 0, -1},
	["Mother"] = {"Boss", 5, 16, 14, 0, -1},
	["BlueBaby"] = {"Boss", 7, 16, 13, 0, -1},
	["TheLamb"] = {"Boss", 8, 20, 13, 0, -1},
	["MegaSatan"] = {"Boss", 9, 19, 16, 0, -3},
	-- Boss (Small)
	["MomBossSmall"] = {"Boss", 10, 10, 10, 0},
	["MomsHeartSmall"] = {"Boss", 11, 9, 10, 0},
	["IsaacSmall"] = {"Boss", 12, 10, 8, 0, 2},
	["BlueBabySmall"] = {"Boss", 13, 10, 8, 0, 2},
	["DeliriumSmall"] = {"Boss", 14, 10, 9, 0, 1},
	["TheLambSmall"] = {"Boss", 15, 14, 9, 0, 1},
	["MotherSmall"] = {"Boss", 16, 10, 9, 0, 1},
	["MegaSatanSmall"] = {"Boss", 17, 13, 9, 0, 1},
	["SatanSmall"] = {"Boss", 18, 12, 9, 0, 1},
	["HushSmall"] = {"Boss", 19, 11, 9, 0, 1},

	-- Misc
	["HardMode"] = {"Misc", 0, 16, 12, 0, -2},
	["GreedMode"] = {"Misc", 1, 16, 12, 0, -2},
	["GreedierMode"] = {"Misc", 2, 16, 12, 0, -2},
	["DonationJam"] = {"Misc", 3, 17, 12, 0, -2},
	["AchievementLocked"] = {"Misc", 4, 16, 12, 0, -2},
	["VictoryLap"] = {"Misc", 5, 16, 12, 0, -2},
	["Timer"] = {"Misc", 6, 10, 9, 0, 1},
	["TimerSmall"] = {"Misc", 7, 8, 9, 0, 2},
	["Trophy"] = {"Misc", 8, 10, 9, 0, 1},
	["VictoryLapSmall"] = {"Misc", 9, 8, 9, 0, 1},
	["HardModeSmall"] = {"Misc", 10, 10, 12, 0, 1},
	["GreedModeSmall"] = {"Misc", 11, 10, 12, 0, 1},
	["GreedierModeSmall"] = {"Misc", 12, 10, 12, 0, 1},
	["AchievementLockedSmall"] = {"Misc", 13, 10, 12, 0, 1},
	["DailyRun"] = {"Misc", 14, 15, 12, 0, -1},
	["DailyRunSmall"] = {"Misc", 15, 12, 12, 0, 1},
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
	-- Gold rainbow color effect
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
	-- Swallowed Penny, Petrified Poop (50% -> 60%), Purple Heart (max 2x), a couple Worms, Black Lipstick (max 2x), Bible Tract (max 2x), Monkey's Paw
	[1] = 1, [2] = {t={50}, mult=1.2}, [5] = {t={2}, mult=2}, [10] = 0.4, [11] = 0.4, [17] = {t={1}, mult=2}, [18] = {t={3}, mult=2}, [20] = 1,
	-- Butt Penny, Hook Worm (two stats), Whip Worm, Fish Head, Liberty Cap (max 4x), Curved Horn, Goat Hoof, Mom's Pearl (2x becomes 3x)
	[24] = {t={20}, mult=1.5}, [26] = {t={0.4, 1.5}}, [27] = 0.5, [29] = 1, [32] = {t={25}, mult=4}, [35] = 2, [37] = 0.15, [38] = {t={10}, mult=2},
	-- Cancer, Lucky Toe (just the Luck Up), Isaac's Fork (heart heal amount), A Missing Page (damage + necronomicon multiplier), Tick (the biggest pain)
	[39] = 1, [42] = 1, [46] = {findReplace = true}, [48] = {t={2, 80},mults={1.5,2}}, [53] = {fullReplace = true},
	-- Maggy's Faith, Rainbow Worm, Tape Worm, Lazy Worm, Louse, Watch Battery (just the charge amount), Exploding Cap, Stud Finder
	[55] = 1, [64] = {append = true}, [65] = 3, [66] = 0.5, [70] = 1, [72] = 1, [73] = 10, [74] = {t={0.5}, mult=2},
	-- Error (same as Rainbow Worm), Second Hand (max 2x -> 3x), Black Feather, Blind Rage, Golden Horse Shoe, Karma, Lil Larva
	[75] = {append = true}, [78] = {t={2}, mult=1.5}, [80] = 0.5, [81] = 2, [82] = {t={15}, mult=2}, [85] = {t={1,1,1}}, [86] = {t={1}, mult=2},
	-- NO!, Brown Cap, Cracked Crown, Ouroboros Worm, Broken Syringe, Teardrop Charm, Beth's Faith (possibly tripleable, but max 8 wisps in its ring)
	[88] = {append = true}, [90] = {t={100}, mult=2}, [92] = 20, [96] = {t={0.4, 1.5}}, [132] = {t={25}, mult=4}, [139] = 3, [142] = {t={4}, mult=2},
	-- Old Capacitor (hard cap of 33% chance), Perfection, Mom's Lock, Dice Bag, Mother's Kiss
	[143] = {t={20}, mult=1.65}, [145] = 10, [153] = {t={25}, mult=4}, [154] = {t={50}, mult=2}, [156] = 1, 
	-- Gilded Key (Golden = no +1 key; probably a bug), Lucky Sack, Azazel's Stump (50/67/100), Dingle Berry, Ring Cap
	[159] = {goldenOnly = true, fullReplace = true, mult=1}, [160] = 1, [162] = {t={50}, mults={1.32, 2}}, [163] = {t={1},mult=2}, [164] = 1, 
	-- Modeling Clay, Polished Bone (25, 33, 50), Hollow Heart, Kid's Drawing, Crystal Key
	[166] = {t={50},mult=2}, [167] = {t={25}, mults={1.32, 2}}, [168] = 1, [169] = {t={1}, goldenOnly = true, mult = 2}, [170] = {t={33}, mults={1.5,3}},
	-- Lil Clot, Swallowed M80, The Twins (default text), Cricket Leg (17%, 1 in 6), Apollyon's Best Friend, Broken Glasses
	[176] = 1, [178] = {t={50},mult=2}, [183] = 0, [185] = 17, [186] = 1, [187] = {t={50,50}, mult=2},
}

EID.BreakUtf8CharsLanguage = {
	['zh_cn'] = true
}

-- Map the game's built-in language option strings to EID's
EID.LanguageMap = {
	["jp"] = "ja_jp",
	["es"] = "spa",
	["de"] = "de",
	["ru"] = "ru",
	["kr"] = "ko_kr",
	["zh"] = "zh_cn",
}
