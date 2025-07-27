local game = Game()

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

EID.KeyboardToString = {}
--code from InputHelper in MCM
for key, num in pairs(Keyboard) do
	local keyString = key
	local _, keyEnd = string.find(keyString, "KEY_")
	keyString = string.sub(keyString, keyEnd + 1, string.len(keyString))
	keyString = string.gsub(keyString, "_", " ")
	EID.KeyboardToString[num] = keyString
end


-- List of Effect variants that should be handled for descriptions
EID.effectList = {
	["76"] = true,
	["161"] = true,
}

--maps the Player transformation from the enum PlayerForm to the internal transformation table
-- Possible usages:		EID.TRANSFORMATION[ PlayerForm.PLAYERFORM_MUSHROOM ]
-- 						EID.TRANSFORMATION.MUSHROOM
EID.TRANSFORMATION = {
	["GUPPY"] = 1,
	["LORD_OF_THE_FLIES"] = 3,
	["MUSHROOM"] = 2,
	["ANGEL"] = 10,
	["BOB"] = 8,
	["SPUN"] = 5,
	["MOM"] = 6,
	["CONJOINED"] = 4,
	["LEVIATHAN"] = 9,
	["POOP"] = 7,
	["BOOKWORM"] = 12,
	["ADULT"] = 14,
	["SPIDERBABY"] = 13,
	["SUPERBUM"] = 11,
	["STOMPY"] = 15
}

-- List of item Types
EID.ItemTypeAnm2Names = {
	[ItemType.ITEM_NULL + 1] = "null",
	[ItemType.ITEM_PASSIVE + 1] = "passive",
	[ItemType.ITEM_TRINKET + 1] = "active",
	[ItemType.ITEM_ACTIVE + 1] = "familiar",
	[ItemType.ITEM_FAMILIAR + 1] = "trinket"
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
	{"{{CONFIG_BoC_Toggle}}", function(_) return EID.ButtonToIconMap[EID.Config["BagOfCraftingToggleKey"]] or "{{ButtonSelect}}" end},
	-- more common/official names
	{"{{MimicChest}}", "{{TrapChest}}"},
	{"{{EternalChest}}", "{{HolyChest}}"},
	{"{{BombChest}}", "{{StoneChest}}"},
	{"{{OldChest}}", "{{DirtyChest}}"},
	{"{{CurseRoom}}", "{{CursedRoom}}"},
	{"{{Crawlspace}}", "{{LadderRoom}}"},
	{"{{GoldHeart}}", "{{GoldenHeart}}"},


}
local controllerSprites = Sprite()
controllerSprites:Load("gfx/ui/buttons.anm2", true)
local function getControllerSprite()
	return (EID.player and EID.player.ControllerIndex > 0 and controllerSprites) or EID.InlineIconSprite
end

--Format: [SHORTCUT]= {Animationname, Frame, Width, Height, LeftOffset [Default: -1], TopOffset [Default: 0], SpriteObject [Default: EID.InlineIconSprite]}
EID.InlineIcons = {
	["ERROR"] = {"ERROR", 0, 10, 10},
	["ArrowUp"] = {"ArrowUp", 0, 10, 9, 1},
	["ArrowDown"] = {"ArrowDown", 0, 10, 9, 1},
	["Warning"] = {"Warning", 0, 10, 9, 3},
	["Blank"] = {"Blank", 0, 0, 0},

	["ArrowUpDown"] = {"ArrowUpDown", 0, 12, 9, -1},

	["ArrowGrayUp"] = {"ArrowGray", 0, 10, 9, 1},
	["ArrowGrayRight"] = {"ArrowGray", 1, 10, 9, 1},
	["ArrowGrayDown"] = {"ArrowGray", 2, 10, 9, 1},
	["ArrowGrayLeft"] = {"ArrowGray", 3, 10, 9, 1},

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
	["Heart"] = {"hearts", 0, 10, 9, 1, 1},
	["HalfHeart"] = {"hearts", 1, 10, 9, 1, 1},
	["EternalHeart"] = {"hearts", 2, 10, 9, 1, 1},
	["EmptyHeart"] = {"hearts", 3, 10, 9, 1, 1},
	["BlendedHeart"] = {"hearts", 4, 10, 9, 1, 1},
	["BoneHeart"] = {"hearts", 5, 10, 9, 1, 1},
	["HalfBoneHeart"] = {"hearts", 6, 10, 9, 1, 1},
	["EmptyBoneHeart"] = {"hearts", 7, 10, 9, 1, 1},
	["SoulHeart"] = {"hearts", 8, 10, 9, 1, 1},
	["HalfSoulHeart"] = {"hearts", 9, 10, 9, 1, 1},
	["BlackHeart"] = {"hearts", 10, 10, 9, 1, 1},
	["HalfBlackHeart"] = {"hearts", 11, 10, 9, 1, 1},
	["GoldenHeart"] = {"hearts", 12, 10, 9, 1, 1},
	["CoinHeart"] = {"hearts", 13, 10, 9, 1, 1},
	["HalfCoinHeart"] = {"hearts", 14, 10, 9, 1, 1},
	["EmptyCoinHeart"] = {"hearts", 15, 10, 9, 1, 1},
	["RottenHeart"] = {"hearts", 16, 10, 9, 1, 1},
	["BrokenHeart"] = {"hearts", 17, 10, 9, 1, 1},
	["HolyMantle"] = {"hearts", 18, 14, 16, -2, -2},
	["HolyMantleSmall"] = {"hearts", 19, 9, 9, 1},
	["RottenBoneHeart"] = {"hearts", 20, 10, 9, 1, 1},
	["UnknownHeart"] = {"hearts", 21, 10, 9, 1, 1},
	["HealingRed"] = {"hearts", 22, 11, 9, 1, 1},
	["HealingCoin"] = {"hearts", 23, 11, 9, 1, 1},
	["HealingBone"] = {"hearts", 24, 11, 9, 1, 1},

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

	["Nickel"] = {"pickups", 13, 8, 9, 0, 1},
	["Dime"] = {"pickups", 14, 8, 9, 0, 1},

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
	["ReviveMachine"] = {"machines", 8, 8, 7, 0, 3},

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
	["ErrorRoom"] = {"roomicons", 35, 9, 9, 0, 2},
	["LilPortal"] = {"roomicons", 36, 8, 7, 0, 2},

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
	["RedRoom"] = {"roomshape", 12, 10, 9, 0, 2},

	-- Transformation Icons
	["CustomTransformation"] = {"TransformationCustom", 0, 16, 16, 0, -1, EID.IconSprite},
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
	["ButtonY"] = {"XboxOne", 0, 12, 8, 6, 5, function(_) return getControllerSprite() end},
	["ButtonA"] = {"XboxOne", 1, 12, 8, 6, 5, function(_) return getControllerSprite() end},
	["ButtonB"] = {"XboxOne", 2, 12, 8, 6, 5, function(_) return getControllerSprite() end},
	["ButtonX"] = {"XboxOne", 3, 12, 8, 6, 5, function(_) return getControllerSprite() end},
	["ButtonDDown"] = {"XboxOne", 4, 12, 8, 6, 5, function(_) return getControllerSprite() end},
	["ButtonDUp"] = {"XboxOne", 5, 12, 8, 6, 5, function(_) return getControllerSprite() end},
	["ButtonDRight"] = {"XboxOne", 6, 12, 8, 6, 5, function(_) return getControllerSprite() end},
	["ButtonDLeft"] = {"XboxOne", 7, 12, 8, 6, 5, function(_) return getControllerSprite() end},
	["ButtonLStick"] = {"XboxOne", 8, 12, 8, 6, 5, controllerSprites},
	["ButtonRStick"] = {"XboxOne", 9, 12, 8, 6, 5, controllerSprites},
	["ButtonLB"] = {"XboxOne", 10, 12, 8, 6, 5, function(_) return getControllerSprite() end},
	["ButtonRB"] = {"XboxOne", 11, 12, 8, 6, 5, function(_) return getControllerSprite() end},
	["ButtonLT"] = {"XboxOne", 12, 12, 8, 6, 5, function(_) return getControllerSprite() end},
	["ButtonRT"] = {"XboxOne", 13, 12, 8, 6, 5, function(_) return getControllerSprite() end},
	["ButtonSelect"] = {"XboxOne", 14, 12, 8, 6, 5, function(_) return getControllerSprite() end},
	["ButtonMenu"] = {"XboxOne", 15, 12, 8, 6, 5, function(_) return getControllerSprite() end},
	["ButtonEnter"] = {"XboxOne", 16, 12, 8, 6, 5, EID.InlineIconSprite},

	-- Crafting
	["Crafting0"] = {"Crafting", 0, 14, 16, 0, 1},
	["Crafting1"] = {"Crafting", 1, 14, 16, 0, 1},
	["Crafting2"] = {"Crafting", 2, 14, 16, 0, 1},
	["Crafting3"] = {"Crafting", 3, 14, 16, 0, 1},
	["Crafting4"] = {"Crafting", 4, 14, 16, 0, 1},
	["Crafting5"] = {"Crafting", 5, 14, 16, 0, 1},
	["Crafting6"] = {"Crafting", 6, 14, 16, 0, 1},
	["Crafting7"] = {"Crafting", 7, 14, 16, 0, 0},
	["Crafting8"] = {"Crafting", 8, 14, 16, 0, 1},
	["Crafting9"] = {"Crafting", 9, 14, 16, 0, 1},
	["Crafting10"] = {"Crafting", 10, 14, 16, 0, 1},
	["Crafting11"] = {"Crafting", 11, 14, 16, 0},
	["Crafting12"] = {"Crafting", 12, 14, 16, 0, -1},
	["Crafting13"] = {"Crafting", 13, 14, 16, 0, -1},
	["Crafting14"] = {"Crafting", 14, 14, 16, -2, -2},
	["Crafting15"] = {"Crafting", 15, 14, 16, -2, -2},
	["Crafting16"] = {"Crafting", 16, 14, 16, -2, -2},
	["Crafting17"] = {"Crafting", 17, 14, 16, -1, -2},
	["Crafting18"] = {"Crafting", 18, 14, 16, 0, 1},
	["Crafting19"] = {"Crafting", 19, 14, 16, 0, -1},
	["Crafting20"] = {"Crafting", 20, 14, 16, 0, -2},
	["Crafting21"] = {"Crafting", 21, 14, 16, 0, -1},
	["Crafting22"] = {"Crafting", 22, 14, 16, 0, 1},
	["Crafting23"] = {"Crafting", 23, 14, 16, 0, -1},
	["Crafting24"] = {"Crafting", 24, 14, 16, 0, 1},
	["Crafting25"] = {"Crafting", 25, 14, 16, 0, 3},
	["Crafting26"] = {"Crafting", 26, 14, 16, 0, -1},
	["Crafting27"] = {"Crafting", 27, 14, 16, 0, 1},
	["Crafting28"] = {"Crafting", 28, 14, 16, 0, -1},
	["Crafting29"] = {"Crafting", 29, 14, 16, 0, -1},
	["Crafting30"] = {"Crafting", 30, 14, 16, 0},

	--Poop Spells
	["PoopSpell1"] = {"PoopSpells", 1, 16, 16, -2, -2}, --Normal
	["PoopSpell2"] = {"PoopSpells", 2, 16, 16, -2, -2}, --Corn
	["PoopSpell3"] = {"PoopSpells", 3, 16, 16, -2, -2}, --Burning
	["PoopSpell4"] = {"PoopSpells", 4, 16, 16, -2, -2}, --Stone
	["PoopSpell5"] = {"PoopSpells", 5, 16, 16, -2, -2}, --Stinky
	["PoopSpell6"] = {"PoopSpells", 6, 16, 16, -2, -2}, --Black
	["PoopSpell7"] = {"PoopSpells", 7, 16, 16, -2, -2}, --Holy
	["PoopSpell8"] = {"PoopSpells", 8, 16, 16, -2, -2}, --Creep
	["PoopSpell9"] = {"PoopSpells", 9, 16, 16, -2, -2}, --Fart
	["PoopSpell10"] = {"PoopSpells", 10, 16, 16, -2, -2}, --Bomb
	["PoopSpell11"] = {"PoopSpells", 11, 16, 16, -2, -2}, --Explosive Diarrhea

	--Poop
	["Poop"] = {"Poop", 0, 11, 10, 0, 1},
	["GoldenPoop"] = {"Poop", 1, 11, 10, 0, 1},
	["HolyPoop"] = {"Poop", 2, 11, 10, 0, 1},
	["RedPoop"] = {"Poop", 3, 11, 10, 0, 1},
	["CornyPoop"] = {"Poop", 4, 11, 10, 0, 1},
	["BlackPoop"] = {"Poop", 5, 11, 10, 0, 1},
	["RainbowPoop"] = {"Poop", 6, 11, 10, 0, 1},

	-- Use the Stat Icon name without REP or AB to display the stat icon for the dlc the user is using right now. Example: {{Damage}}
	-- Stats (Repentance)
	["DamageREP"] = {"Stats", 0, 12, 16, 0, -1},
	["SpeedREP"] = {"Stats", 1, 12, 16, -2, -1},
	["TearsREP"] = {"Stats", 2, 12, 16, -2, 0},
	["RangeREP"] = {"Stats", 3, 12, 16, -2, -1},
	["ShotspeedREP"] = {"Stats", 4, 12, 16, 0, -1},
	["LuckREP"] = {"Stats", 5, 12, 16, -2, -2},
	["AngelChanceREP"] = {"Stats", 6, 12, 16, -1, -1},
	["DevilChanceREP"] = {"Stats", 7, 12, 16, 0, -2},
	["TearsizeREP"] = {"Stats", 11, 12, 16, 0, 1},

	["AngelDevilChance"] = {"Stats", 8, 12, 16, -3, -2},
	["PlanetariumChance"] = {"Stats", 9, 12, 16, 0, -1}, --unused
	["TreasureRoomChance"] = {"Stats", 10, 12, 16, 0, 0}, --unused, assuming that's what it means
	-- Stats (Afterbirth+)
	["DamageAB"] = {"Stats", 12, 12, 16, 0, 0},
	["SpeedAB"] = {"Stats", 13, 12, 16, 0, 0},
	["TearsAB"] = {"Stats", 14, 12, 16, 0, -1},
	["RangeAB"] = {"Stats", 15, 12, 16, 0, -1},
	["ShotspeedAB"] = {"Stats", 16, 12, 16, 0, 1},
	["LuckAB"] = {"Stats", 17, 12, 16, 0, 1},
	["AngelChanceAB"] = {"Stats", 18, 8, 16, 0, 1},
	["DevilChanceAB"] = {"Stats", 19, 8, 16, 0, 1},
	["TearsizeAB"] = {"Stats", 20, 8, 16, 0, 1},
	-- Stats (Repentance Small)
	["DamageSmall"] = {"Stats", 21, 10, 16, 0, 1},
	["SpeedSmall"] = {"Stats", 22, 10, 16, -1, 1},
	["TearsSmall"] = {"Stats", 23, 10, 16, -1, 1},
	["RangeSmall"] = {"Stats", 24, 10, 16, -1, 0},
	["ShotspeedSmall"] = {"Stats", 25, 10, 16, 0, 1},
	["LuckSmall"] = {"Stats", 26, 10, 16, -1, 1},
	["AngelChanceSmall"] = {"Stats", 27, 10, 16, 0, 1},
	["DevilChanceSmall"] = {"Stats", 28, 10, 16, 0, 1},
	["AngelDevilChanceSmall"] = {"Stats", 29, 10, 16, 0, 0},
	["PlanetariumChanceSmall"] = {"Stats", 30, 10, 16, 0, 1},
	["TreasureRoomChanceSmall"] = {"Stats", 31, 10, 16, 0, 2},
	["TearsizeSmall"] = {"Stats", 32, 10, 16, 0, 2},
	-- Stats (Afterbirth+ Small)
	["DamageABSmall"] = {"Stats", 33, 8, 16, 0, 2},
	["SpeedABSmall"] = {"Stats", 34, 8, 16, 0, 2},
	["TearsABSmall"] = {"Stats", 35, 8, 16, 0, 2},
	["RangeABSmall"] = {"Stats", 36, 8, 16, 0, 2},
	["ShotspeedABSmall"] = {"Stats", 37, 8, 16, 0, 2},
	["LuckABSmall"] = {"Stats", 38, 8, 16, 0, 2},
	["AngelChanceABSmall"] = {"Stats", 39, 8, 16, 0, 2},
	["DevilChanceABSmall"] = {"Stats", 40, 8, 16, 0, 2},
	["TearsizeABSmall"] = {"Stats", 41, 8, 16, 0, 2},



	-- Player Icons for Birthright
	["Player0"] = {"Players", 0, 15, 12, 2, 1, EID.PlayerSprite}, -- Isaac
	["Player1"] = {"Players", 1, 18, 12, 3, 1, EID.PlayerSprite}, -- Maggy
	["Player2"] = {"Players", 2, 15, 12, 2, 1, EID.PlayerSprite}, -- Cain
	["Player3"] = {"Players", 3, 15, 12, 2, 1, EID.PlayerSprite}, -- Judas
	["Player4"] = {"Players", 4, 15, 12, 2, 1, EID.PlayerSprite}, -- ???
	["Player5"] = {"Players", 5, 18, 12, 3, 1, EID.PlayerSprite}, -- Eve
	["Player6"] = {"Players", 6, 18, 12, 3, 1, EID.PlayerSprite}, -- Samson
	["Player7"] = {"Players", 7, 16, 12, 3, 1, EID.PlayerSprite}, -- Azazel
	["Player8"] = {"Players", 8, 15, 12, 2, 1, EID.PlayerSprite}, -- Lazarus
	["Player9"] = {"Players", 9, 15, 12, 2, 1, EID.PlayerSprite}, -- Eden
	["Player10"] = {"Players", 10, 15, 12, 2, 1, EID.PlayerSprite}, -- The Lost
	["Player11"] = {"Players", 11, 15, 12, 2, 1, EID.PlayerSprite}, -- Lazarus Risen
	["Player12"] = {"Players", 12, 15, 12, 2, 1, EID.PlayerSprite}, -- Black Judas
	["Player13"] = {"Players", 13, 18, 12, 3, 1, EID.PlayerSprite}, -- Lilith
	["Player14"] = {"Players", 14, 15, 12, 2, 1, EID.PlayerSprite}, -- Keeper
	["Player15"] = {"Players", 15, 15, 12, 2, 1, EID.PlayerSprite}, -- Apollyon
	["Player16"] = {"Players", 16, 15, 12, 2, 1, EID.PlayerSprite}, -- The Forgotten
	["Player17"] = {"Players", 17, 15, 12, 2, 1, EID.PlayerSprite}, -- The Soul
	["Player18"] = {"Players", 18, 18, 12, 0, 1, EID.PlayerSprite}, -- Bethany
	["Player19"] = {"Players", 19, 14, 12, 1, 1, EID.PlayerSprite}, -- Jacob
	["Player20"] = {"Players", 20, 15, 12, 1, 1, EID.PlayerSprite}, -- Esau
	["Player21"] = {"Players", 21, 15, 12, 2, 1, EID.PlayerSprite}, -- T. Isaac
	["Player22"] = {"Players", 22, 17, 12, 3, 1, EID.PlayerSprite}, -- T. Maggy
	["Player23"] = {"Players", 23, 15, 12, 2, 1, EID.PlayerSprite}, -- T. Cain
	["Player24"] = {"Players", 24, 15, 12, 2, 1, EID.PlayerSprite}, -- T. Judas
	["Player25"] = {"Players", 25, 18, 12, 3, 1, EID.PlayerSprite}, -- T. ???
	["Player26"] = {"Players", 26, 15, 12, 2, 1, EID.PlayerSprite}, -- T. Eve
	["Player27"] = {"Players", 27, 18, 12, 3, 1, EID.PlayerSprite}, -- T. Samson
	["Player28"] = {"Players", 28, 15, 12, 2, 1, EID.PlayerSprite}, -- T. Azazel
	["Player29"] = {"Players", 29, 15, 12, 2, 1, EID.PlayerSprite}, -- T. Lazarus (Alive)
	["Player30"] = {"Players", 30, 18, 12, 3, 1, EID.PlayerSprite}, -- T. Eden
	["Player31"] = {"Players", 31, 15, 12, 2, 1, EID.PlayerSprite}, -- T. The Lost
	["Player32"] = {"Players", 32, 18, 12, 3, 1, EID.PlayerSprite}, -- T. Lilith
	["Player33"] = {"Players", 33, 15, 12, 2, 1, EID.PlayerSprite}, -- T. Keeper
	["Player34"] = {"Players", 34, 15, 12, 2, 1, EID.PlayerSprite}, -- T. Apollyon
	["Player35"] = {"Players", 35, 15, 12, 2, 1, EID.PlayerSprite}, -- T. The Forgotten
	["Player36"] = {"Players", 36, 15, 12, 2, 1, EID.PlayerSprite}, -- T. Bethany
	["Player37"] = {"Players", 37, 15, 12, 2, 1, EID.PlayerSprite}, -- T. Jacob (Alive)
	["Player38"] = {"Players", 38, 15, 12, 2, 1, EID.PlayerSprite}, -- T. Lazarus (Dead)
	["Player39"] = {"Players", 39, 15, 12, 2, 1, EID.PlayerSprite}, -- T. Jacob (Ghost)
	["Player40"] = {"Players", 40, 15, 12, 2, 1, EID.PlayerSprite}, -- T. The Soul

	-- Status effects
	["Burning"] = {"StatusEffects", 0, 8, 9, 0, 1},
	["Charm"] = {"StatusEffects", 1, 10, 9, 0, 1},
	["Confusion"] = {"StatusEffects", 2, 10, 9, 0, 1},
	["Fear"] = {"StatusEffects", 3, 10, 9, 0, 1},
	["Petrify"] = {"StatusEffects", 4, 13, 9, 0, 1},
	["Poison"] = {"StatusEffects", 5, 8, 9, 0, 1},
	["Slow"] = {"StatusEffects", 6, 10, 9, 0, 2},
	["Friendly"] = {"StatusEffects", 7, 12, 9, 0, 1},
	["Shrink"] = {"StatusEffects", 8, 10, 9, 0, 1},
	["BleedingOut"] = {"StatusEffects", 9, 8, 9, 0, 1},
	["Bait"] = {"StatusEffects", 10, 10, 9, 0, 1},
	["Chained"] = {"StatusEffects", 11, 8, 9, 0, 1},
	["Freezing"] = {"StatusEffects", 12, 10, 9, 0, 1},
	["Magnetize"] = {"StatusEffects", 13, 10, 9, 0, 1},
	["BrimstoneCurse"] = {"StatusEffects", 14, 10, 9, 0, 1},
	["Weakness"] = {"StatusEffects", 15, 10, 9, 0, 1},
	["DeathMark"] = {"StatusEffects", 16, 10, 9, 0, 1},
	["Crown"] = {"StatusEffects", 17, 10, 9, 0, 3},

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
	["Beast"] = {"Boss", 10, 16, 15, 0, -2},
	-- Boss (Small)
	["MomBossSmall"] = {"Boss", 11, 10, 10, 0},
	["MomsHeartSmall"] = {"Boss", 12, 9, 10, 0},
	["IsaacSmall"] = {"Boss", 13, 10, 8, 0, 2},
	["BlueBabySmall"] = {"Boss", 14, 10, 8, 0, 2},
	["DeliriumSmall"] = {"Boss", 15, 10, 9, 0, 1},
	["TheLambSmall"] = {"Boss", 16, 14, 9, 0, 1},
	["MotherSmall"] = {"Boss", 17, 10, 9, 0, 1},
	["MegaSatanSmall"] = {"Boss", 18, 13, 9, 0, 1},
	["SatanSmall"] = {"Boss", 19, 12, 9, 0, 1},
	["HushSmall"] = {"Boss", 20, 11, 9, 0, 1},
	["BeastSmall"] = {"Boss", 21, 12, 10, 0, 0},

	-- ItemPoolTypes
	["ItemPoolTreasure"] = {"ItemPools", 0, 11, 11, 0, 0},
	["ItemPoolShop"] = {"ItemPools", 1, 11, 11, 0, 0},
	["ItemPoolBoss"] = {"ItemPools", 2, 11, 11, 0, 0},
	["ItemPoolDevil"] = {"ItemPools", 3, 11, 11, 0, 0},
	["ItemPoolAngel"] = {"ItemPools", 4, 11, 11, 0, 0},
	["ItemPoolSecret"] = {"ItemPools", 5, 11, 11, 0, 0},
	["ItemPoolLibrary"] = {"ItemPools", 6, 11, 11, 0, 0},
	["ItemPoolShellGame"] = {"ItemPools", 7, 11, 11, 0, 0},
	["ItemPoolGoldenChest"] = {"ItemPools", 8, 11, 11, 0, 0},
	["ItemPoolRedChest"] = {"ItemPools", 9, 11, 11, 0, 0},
	["ItemPoolBeggar"] = {"ItemPools", 10, 11, 11, 0, 0},
	["ItemPoolDemonBeggar"] = {"ItemPools", 11, 11, 11, 0, 0},
	["ItemPoolCurse"] = {"ItemPools", 12, 11, 11, 0, 0},
	["ItemPoolKeyMaster"] = {"ItemPools", 13, 11, 11, 0, 0},
	["ItemPoolBombBum"] = {"ItemPools", 14, 11, 11, 0, 0},
	["ItemPoolMomsChest"] = {"ItemPools", 15, 11, 11, 0, 0},
	["ItemPoolGreedTreasure"] = {"ItemPools", 16, 11, 11, 0, 0},
	["ItemPoolGreedShop"] = {"ItemPools", 17, 11, 11, 0, 0},
	["ItemPoolGreedBoss"] = {"ItemPools", 18, 11, 11, 0, 0},
	["ItemPoolGreedDevil"] = {"ItemPools", 19, 11, 11, 0, 0},
	["ItemPoolGreedAngel"] = {"ItemPools", 20, 11, 11, 0, 0},
	["ItemPoolGreedCurse"] = {"ItemPools", 21, 11, 11, 0, 0},
	["ItemPoolGreedSecret"] = {"ItemPools", 22, 11, 11, 0, 0},
	["ItemPoolCraneGame"] = {"ItemPools", 23, 11, 11, 0, 0},
	["ItemPoolUltraSecret"] = {"ItemPools", 24, 11, 11, 0, 0},
	["ItemPoolBatteryBum"] = {"ItemPools", 25, 11, 11, 0, 0},
	["ItemPoolPlanetarium"] = {"ItemPools", 26, 11, 11, 0, 0},
	["ItemPoolOldChest"] = {"ItemPools", 27, 11, 11, 0, 0},
	["ItemPoolBabyShop"] = {"ItemPools", 28, 11, 11, 0, 0},
	["ItemPoolWoodenChest"] = {"ItemPools", 29, 11, 11, 0, 0},
	["ItemPoolRottenBeggar"] = {"ItemPools", 30, 11, 11, 0, 0},

	-- Wisps
	["InnerWisp"] = {"Wisps", 0, 10, 9, 0, 2},
	["MiddleWisp"] = {"Wisps", 1, 10, 9, 0, 2},
	["OuterWisp"] = {"Wisps", 2, 10, 9, 0, 2},

	-- Dice Faces
	["DiceFace1"] = {"DiceFaces", 0, 14, 14, 0, -1},
	["DiceFace2"] = {"DiceFaces", 1, 14, 14, 0, -1},
	["DiceFace3"] = {"DiceFaces", 2, 14, 14, 0, -1},
	["DiceFace4"] = {"DiceFaces", 3, 14, 14, 0, -1},
	["DiceFace5"] = {"DiceFaces", 4, 14, 14, 0, -1},
	["DiceFace6"] = {"DiceFaces", 5, 14, 14, 0, -1},

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
	["MagnifyingLens"] = {"Misc", 16, 13, 13, 0, -1},
	["Padlock"] = {"Misc", 17, 8, 10, 1, 0},
	["QuestionMark"] = {"CurseOfBlind", 0, 14, 14, 6, 7, EID.IconSprite},
}
-- General Stats (Adjust automatically according to the current DLC)

EID.InlineIcons["Damage"] = EID.isRepentance and EID.InlineIcons["DamageREP"] or EID.InlineIcons["DamageAB"]
EID.InlineIcons["Speed"] = EID.isRepentance and EID.InlineIcons["SpeedREP"] or EID.InlineIcons["SpeedAB"]
EID.InlineIcons["Tears"] = EID.isRepentance and EID.InlineIcons["TearsREP"] or EID.InlineIcons["TearsAB"]
EID.InlineIcons["Range"] = EID.isRepentance and EID.InlineIcons["RangeREP"] or EID.InlineIcons["RangeAB"]
EID.InlineIcons["Shotspeed"] = EID.isRepentance and EID.InlineIcons["ShotspeedREP"] or EID.InlineIcons["ShotspeedAB"]
EID.InlineIcons["Luck"] = EID.isRepentance and EID.InlineIcons["LuckREP"] or EID.InlineIcons["LuckAB"]
EID.InlineIcons["AngelChance"] = EID.isRepentance and EID.InlineIcons["AngelChanceREP"] or EID.InlineIcons["AngelChanceAB"]
EID.InlineIcons["DevilChance"] = EID.isRepentance and EID.InlineIcons["DevilChanceREP"] or EID.InlineIcons["DevilChanceAB"]
EID.InlineIcons["Tearsize"] = EID.isRepentance and EID.InlineIcons["TearsizeREP"] or EID.InlineIcons["TearsizeAB"]


-- Function for handling colors that fade between multiple different colors (rainbow, gold, tarot cloth purple)
local function SwagColors(colors, maxAnimTime)
	maxAnimTime = maxAnimTime or 80
	local animTime = game:GetFrameCount() % maxAnimTime
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
end

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
	["ColorLightYellow"] = KColor(1, 1, 0.5, 1),
	["ColorBagComplete"] = KColor(0, 1, 0, 0.6),
	["ColorBagOverfill"] = KColor(1, 0.5, 0.1, 0.6),
	
	["ColorIsaac"] = KColor(0.89, 0.776, 0.773, 1),
	["ColorCard"] = KColor(0.815, 0.651, 0.494, 1), -- actually taken from Ouija Board, real card brown would be too dark for descriptions
	["ColorPill"] = KColor(0.306, 0.651, 0.851, 1),

	-- Swag Colors
	-- Rainbow color effect
	["ColorRainbow"] = function(_)
		local c = EID.InlineColors
		return SwagColors({c["ColorRed"], c["ColorYellow"], c["ColorLime"], c["ColorCyan"], c["ColorBlue"], c["ColorPink"]})
	end,
	-- Gold rainbow color effect
	["ColorGold"] = function(_)
		local c = EID.InlineColors
		return SwagColors({c["ColorYellow"], c["ColorOrange"]})
	end,
	-- Yellow to green/red for positive/negative car battery effects
	["BlinkYellowGreen"] = function(_)
		local c = EID.InlineColors
		return SwagColors({c["ColorYellow"], c["ColorLime"]})
	end,
	["BlinkYellowRed"] = function(_)
		local c = EID.InlineColors
		return SwagColors({c["ColorYellow"], c["ColorRed"]})
	end,
	-- Silver to gray, for Black Feather?
	["BlinkGray"] = function(_)
		local c = EID.InlineColors
		return SwagColors({c["ColorGray"], c["ColorSilver"]})
	end,
	-- Pink for BFFs <3, the two shades come from Nancy Bombs and Eraser
	["BlinkPink"] = function(_)
		return SwagColors({KColor(1, 0.698, 0.886, 1), KColor(1, 0.5, 1, 1)})
	end,
	-- Blue for Hive Mind, the two shades come from Hive Mind
	["BlinkBlue"] = function(_)
		return SwagColors({KColor(0.341, 0.529, 0.906, 1), KColor(0.592, 0.717, 0.937, 1)})
	end,
	-- Subtle glow between green from Luck Clover and from the Quality 1 shield
	["BlinkGreen"] = function(_)
		local c = EID.InlineColors
		return SwagColors({KColor(0.404, 0.663, 0.306, 1), KColor(0.443, 0.765, 0.247, 1)})
	end,
	-- Shiny purple color effect
	["ColorShinyPurple"] = function(_)
		return SwagColors({KColor(0.812, 0.627, 1, 1), KColor(0.62, 0.251, 1, 1)}, 40)
	end,
	-- Blink between the two shades of tan on Birthright
	["BlinkBirthright"] = function(_)
		return SwagColors({KColor(0.831, 0.725, 0.604, 1), KColor(0.671, 0.557, 0.443, 1)})
	end,
	-- Text will blink frequently
	["ColorBlink"] = function(color)
		local maxAnimTime = 40
		local animTime = game:GetFrameCount() % maxAnimTime
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
		local animTime = game:GetFrameCount() % (maxAnimTime + 10)
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
EID.ColorBlindColors = {
	{ -- Protanopia
		["ColorBagComplete"] = KColor(0.2, 0.2, 1, 0.6), -- blue-ish
		["ColorBagOverfill"] = KColor(1, 0, 0, 0.6), -- red
	},
	{ -- Deuteranopia
		["ColorBagComplete"] = KColor(0.2, 0.2, 1, 0.6), -- blue-ish
		["ColorBagOverfill"] = KColor(1, 0, 0, 0.6), -- red
	},
	{ -- Tritanopia
		--["ColorBagComplete"] = KColor(0, 1, 0, 0.6),  -- no changes needed
		--["ColorBagOverfill"] = KColor(1, 0.5, 0.1, 0.6),  -- no changes needed
	}
}
-- Data table for a trinket's ability to be doubled/tripled by Mom's Box or being Golden
-- Due to only a few exceptions needing special rules, most of these are just a single number, which will be found in the description and multiplied
-- Exceptions will use a table to figure out what to do with them:
-- t: text to multiply. A table of text to find and multiply by the multiplier; trinkets with multiple numbers to multiply will use this
-- mult: max multiplier. assumed to be 3, some max out at 2, a few go 1x/2x/4x
-- mults: custom multipliers. A Missing Page's damage goes from 80 to 120 to 160; so its multipliers are 1.5 and 2, instead of 2 and 3
-- append / findReplace / fullReplace: add text (Rainbow Worm, NO!) or entirely replace the trinket's description (Tick) from goldenTrinketEffects
EID.GoldenTrinketData = {
	-- Swallowed Penny, Petrified Poop (50% -> 60%), Purple Heart (max 2x), a couple Worms, Black Lipstick, Bible Tract, Monkey's Paw
	[1] = 1, [2] = {t={50}, mult=1.2}, [5] = {t={2}, mult=2}, [10] = {t={0.4,0}}, [11] = {t={0.4,0}}, [17] = 10, [18] = 3, [20] = 1,
	-- Butt Penny, Hook Worm (two stats), Whip Worm, Fish Head, Liberty Cap (max 4x), Curved Horn, Goat Hoof, Mom's Pearl (2x becomes 3x)
	[24] = {t={20}, mult=1.5}, [26] = {t={0.4, 1.5, 0}}, [27] = 0.5, [29] = 1, [32] = {t={25}, mult=4}, [35] = 2, [37] = 0.15, [38] = {t={10}, mult=2},
	-- Cancer, Lucky Toe (just the Luck Up), Isaac's Fork (heart heal amount), A Missing Page (damage + necronomicon multiplier), Tick (the biggest pain)
	[39] = 1, [42] = 1, [46] = {findReplace = true}, [48] = {t={2, 80},mults={1.5,2}}, [53] = {fullReplace = true},
	-- Maggy's Faith, Rainbow Worm, Tape Worm, Lazy Worm, Louse, Watch Battery (just the charge amount), Exploding Cap, Stud Finder
	[55] = 1, [64] = {append = true}, [65] = 3, [66] = 0.5, [70] = 1, [72] = 1, [73] = 10, [74] = {t={0.5}, mult=2},
	-- Error (same as Rainbow Worm), Second Hand (max 2x -> 3x), Black Feather, Blind Rage, Golden Horse Shoe, Karma, Lil Larva
	[75] = {append = true}, [78] = {t={2}, mult=1.5}, [80] = 0.5, [81] = 2, [82] = {t={15}, mult=2}, [85] = {t={1,1,1}}, [86] = {t={1}, mult=2},
	-- NO!, Brown Cap, Cracked Crown, Ouroboros Worm, Broken Syringe, Teardrop Charm, Beth's Faith (possibly tripleable, but max 8 wisps in its ring)
	[88] = {append = true}, [90] = {t={100}, mult=2}, [92] = 20, [96] = {t={0.4, 1.5}}, [132] = {t={25}, mult=4}, [139] = {t={4},mults={1.5,2}}, [142] = {t={4}, mult=2},
	-- Old Capacitor (hard cap of 33% chance), Perfection, Mom's Lock, Dice Bag, Mother's Kiss
	[143] = {t={20}, mult=1.65}, [145] = 10, [153] = {t={25}, mult=4}, [154] = {t={50}, mult=2}, [156] = {t={1,1}},
	-- Gilded Key (Golden = no +1 key; probably a bug), Lucky Sack, Azazel's Stump (50/67/100), Dingle Berry, Ring Cap
	[159] = {goldenOnly = true, fullReplace = true, mult=1}, [160] = 1, [162] = {t={50}, mults={1.32, 2}}, [163] = {t={1},mult=2}, [164] = 1,
	-- Modeling Clay, Polished Bone (25, 33, 50), Hollow Heart, Kid's Drawing, Crystal Key
	[166] = {t={50},mult=2}, [167] = {t={25}, mults={1.32, 2}}, [168] = 1, [169] = {t={1}, goldenOnly = true, mult = 2}, [170] = {t={33}, mults={1.5,3}},
	-- Lil Clot, Swallowed M80, The Twins (effect chance rolls multiple times), Cricket Leg (17%, 1 in 6), Apollyon's Best Friend, Broken Glasses
	[176] = 1, [178] = {t={50},mult=2}, [183] = {append = true}, [185] = 17, [186] = 1, [187] = {t={50,50}, mult=2},

	-- NEW REP PATCH UPDATE
	-- AAA Battery, Broken Remote (Teleport 2.0), Broken Magnet (coins -> pickups), Cartridge, Pulse Worm (default text), Flat Worm,
	[3] = 1, [4] = {fullReplace = true, mult=1}, [6] = {findReplace = true, mult = 2}, [7] = {append = true}, [8] = 5, [9] = 0, [12] = 50,
	-- Golden Store Credit, Lucky Rock (effect chance rolls multiple times), Mom's Toenail (20 -> 10 -> 6.66), Mysterious Candy (golden = golden poop)
	[13] = {goldenOnly = true, fullReplace = true, mult=1}, [15] = {append = true}, [16] = {t={20}, mults={0.5, 0.333}}, [25] = {goldenOnly = true, findReplace = true, mult = 2},
}

EID.MarkupSizeMap = {
	["{{Damage}}"] = "{{DamageSmall}}",
	["{{Speed}}"] = "{{SpeedSmall}}",
	["{{Tears}}"] = "{{TearsSmall}}",
	["{{Range}}"] = "{{RangeSmall}}",
	["{{Shotspeed}}"] = "{{ShotspeedSmall}}",
	["{{Luck}}"] = "{{LuckSmall}}",
	["{{AngelChance}}"] = "{{AngelChanceSmall}}",
	["{{DevilChance}}"] = "{{DevilChanceSmall}}",
	["{{AngelDevilChance}}"] = "{{AngelDevilChanceSmall}}",
	["{{PlanetariumChance}}"] = "{{PlanetariumChanceSmall}}",
	["{{TreasureRoomChance}}"] = "{{TreasureRoomChanceSmall}}",
	["{{Tearsize}}"] = "{{TearsizeSmall}}",

	["{{CurseDarkness}}"] = "{{CurseDarknessSmall}}",
	["{{CurseLabyrinth}}"] = "{{CurseLabyrinthSmall}}",
	["{{CurseLost}}"] = "{{CurseLostSmall}}",
	["{{CurseUnknown}}"] = "{{CurseUnknownSmall}}",
	["{{CurseCursed}}"] = "{{CurseCursedSmall}}",
	["{{CurseMaze}}"] = "{{CurseMazeSmall}}",
	["{{CurseBlind}}"] = "{{CurseBlindSmall}}",
	["{{CurseGiant}}"] = "{{CurseGiantSmall}}",

	["{{MomBoss}}"] = "{{MomBossSmall}}",
	["{{MomsHeart}}"] = "{{MomsHeartSmall}}",
	["{{Isaac}}"] = "{{IsaacSmall}}",
	["{{BlueBaby}}"] = "{{BlueBabySmall}}",
	["{{Delirium}}"] = "{{DeliriumSmall}}",
	["{{TheLamb}}"] = "{{TheLambSmall}}",
	["{{Mother}}"] = "{{MotherSmall}}",
	["{{MegaSatan}}"] = "{{MegaSatanSmall}}",
	["{{Satan}}"] = "{{SatanSmall}}",
	["{{Hush}}"] = "{{HushSmall}}",
	["{{Beast}}"] = "{{BeastSmall}}",

	["{{Timer}}"] = "{{TimerSmall}}",
	["{{VictoryLap}}"] = "{{VictoryLapSmall}}",
	["{{HardMode}}"] = "{{HardModeSmall}}",
	["{{GreedMode}}"] = "{{GreedModeSmall}}",
	["{{GreedierMode}}"] = "{{GreedierModeSmall}}",
	["{{AchievementLocked}}"] = "{{AchievementLockedSmall}}",
	["{{DailyRun}}"] = "{{DailyRunSmall}}",
	["{{HolyMantle}}"] = "{{HolyMantleSmall}}",
}

-- Bulletpoint icons that shouldn't be printed if stat/pickup bulletpoints are disabled
EID.StatPickupBulletpointBlacklist = {
	["{{Damage}}"] = true, ["{{Speed}}"] = true, ["{{Tears}}"] = true, ["{{Range}}"] = true,
	["{{Shotspeed}}"] = true, ["{{Luck}}"] = true, ["{{AngelChance}}"] = true, ["{{DevilChance}}"] = true,
	["{{AngelDevilChance}}"] = true, ["{{PlanetariumChance}}"] = true, ["{{TreasureRoomChance}}"] = true,
	["{{Tearsize}}"] = true, ["{{DamageSmall}}"] = true, ["{{SpeedSmall}}"] = true,
	["{{TearsSmall}}"] = true, ["{{RangeSmall}}"] = true, ["{{ShotspeedSmall}}"] = true,
	["{{LuckSmall}}"] = true, ["{{AngelChanceSmall}}"] = true, ["{{DevilChanceSmall}}"] = true,
	["{{AngelDevilChanceSmall}}"] = true, ["{{PlanetariumChanceSmall}}"] = true,
	["{{TreasureRoomChanceSmall}}"] = true, ["{{TearsizeSmall}}"] = true,
	["{{Chest}}"] = true, ["{{Coin}}"] = true, ["{{Bomb}}"] = true, ["{{Key}}"] = true, ["{{Battery}}"] = true,
	["{{Pill}}"] = true, ["{{Card}}"] = true, ["{{Rune}}"] = true,
	["{{Heart}}"] = true, ["{{HalfHeart}}"] = true, ["{{EternalHeart}}"] = true, ["{{SoulHeart}}"] = true,
	["{{BlackHeart}}"] = true,
}

EID.TransformationData = {
	-- Structure: [Internal Name of Transformation] = {NumNeeded = 3 (Default), VanillaForm = nil (default)}
	[tostring(EID.TRANSFORMATION.GUPPY)] = {VanillaForm = PlayerForm.PLAYERFORM_GUPPY},
	[tostring(EID.TRANSFORMATION.LORD_OF_THE_FLIES)] = {VanillaForm = PlayerForm.PLAYERFORM_LORD_OF_THE_FLIES},
	[tostring(EID.TRANSFORMATION.MUSHROOM)] = {VanillaForm = PlayerForm.PLAYERFORM_MUSHROOM},
	[tostring(EID.TRANSFORMATION.ANGEL)] = {VanillaForm = PlayerForm.PLAYERFORM_ANGEL},
	[tostring(EID.TRANSFORMATION.BOB)] = {VanillaForm = PlayerForm.PLAYERFORM_BOB},
	[tostring(EID.TRANSFORMATION.SPUN)] = {VanillaForm = PlayerForm.PLAYERFORM_DRUGS},
	[tostring(EID.TRANSFORMATION.MOM)] = {VanillaForm = PlayerForm.PLAYERFORM_MOM},
	[tostring(EID.TRANSFORMATION.CONJOINED)] = {VanillaForm = PlayerForm.PLAYERFORM_BABY},
	[tostring(EID.TRANSFORMATION.LEVIATHAN)] = {VanillaForm = PlayerForm.PLAYERFORM_EVIL_ANGEL},
	[tostring(EID.TRANSFORMATION.POOP)] = {VanillaForm = PlayerForm.PLAYERFORM_POOP},
	[tostring(EID.TRANSFORMATION.BOOKWORM)] = {VanillaForm = PlayerForm.PLAYERFORM_BOOK_WORM},
	[tostring(EID.TRANSFORMATION.ADULT)] = {VanillaForm = PlayerForm.PLAYERFORM_ADULTHOOD},
	[tostring(EID.TRANSFORMATION.SPIDERBABY)] = {VanillaForm = PlayerForm.PLAYERFORM_SPIDERBABY},
	[tostring(EID.TRANSFORMATION.SUPERBUM)] = {},
	[tostring(EID.TRANSFORMATION.STOMPY)] = {VanillaForm = EID.isRepentance and PlayerForm.PLAYERFORM_STOMPY}
}


EID.RoomShapeToMarkup = { "{{Room}}", "{{RoomSmallHorizontal}}", "{{RoomSmallVertical}}", "{{RoomLongVertical}}", "{{RoomLongThinVertical}}","{{RoomLongHorizontal}}", "{{RoomLongThinHorizontal}}", "{{RoomXL}}", "{{RoomLTopLeft}}", "{{RoomL}}", "{{RoomLBottomLeft}}", "{{RoomLBottomRight}}" }
EID.RoomTypeToMarkup = { "{{Room}}", "{{Shop}}", "{{ErrorRoom}}", "{{TreasureRoom}}", "{{BossRoom}}", "{{MiniBoss}}", "{{SecretRoom}}", "{{SuperSecretRoom}}", "{{ArcadeRoom}}", "{{CursedRoom}}", "{{ChallengeRoom}}", "{{Library}}", "{{SacrificeRoom}}", "{{DevilRoom}}", "{{AngelRoom}}", "{{LadderRoom}}", "{{Room}}" --[[boss rush]], "{{IsaacsRoom}}", "{{BarrenRoom}}", "{{ChestRoom}}", "{{DiceRoom}}", "{{Shop}}", "{{Room}}", --[[Black Market / Greed Exit]] "{{Planetarium}}", "{{Teleporter}}","{{Teleporter}}", "{{Room}}", "{{Room}}" --[[Blue Key rooms]], "{{UltraSecretRoom}}" }
EID.ItemPoolTypeToMarkup = { [0] = "{{ItemPoolTreasure}}", "{{ItemPoolShop}}", "{{ItemPoolBoss}}", "{{ItemPoolDevil}}", "{{ItemPoolAngel}}", "{{ItemPoolSecret}}", "{{ItemPoolLibrary}}", "{{ItemPoolShellGame}}", "{{ItemPoolGoldenChest}}", "{{ItemPoolRedChest}}", "{{ItemPoolBeggar}}", "{{ItemPoolDemonBeggar}}", "{{ItemPoolCurse}}", "{{ItemPoolKeyMaster}}", "{{ItemPoolBombBum}}", "{{ItemPoolMomsChest}}", "{{ItemPoolGreedTreasure}}", "{{ItemPoolGreedShop}}", "{{ItemPoolGreedBoss}}", "{{ItemPoolGreedDevil}}", "{{ItemPoolGreedAngel}}", "{{ItemPoolGreedCurse}}", "{{ItemPoolGreedSecret}}", "{{ItemPoolCraneGame}}", "{{ItemPoolUltraSecret}}", "{{ItemPoolBatteryBum}}", "{{ItemPoolPlanetarium}}", "{{ItemPoolOldChest}}", "{{ItemPoolBabyShop}}", "{{ItemPoolWoodenChest}}", "{{ItemPoolRottenBeggar}}"}

-- Background icon markup substrings
EID.MarkupBackgroundKeywords = {
	["Virtues"] = "gfx/ui/hud_bookofvirtues.png",
}


-- additional offset of the textbox to the entity position. Only applies in local description mode.
-- If a function returns a value, it will be used as the offset
EID.LocalModePositionOffset = {
	Default = Vector(0, 20),
	Shop = function(entity) if EID:EntitySanityCheck(entity) and not EID:IsGridEntity(entity) and entity:ToPickup() and entity:ToPickup():IsShopItem() then return Vector(0, 35) end end,
}

-- Actives that have no additional effect from Car Battery
EID.CarBatteryNoSynergy = { [33] = true, [34] = true, [36] = true, [39] = true, [40] = true, [41] = true, [42] = true, [44] = true, [47] = true, [49] = true, [56] = true, [84] = true, [126] = true, [127] = true, [130] = true, [133] = true, [135] = true, [137] = true, [147] = true, [164] = true, [166] = true, [175] = true, [177] = true, [181] = true, [186] = true, [192] = true, [282] = true, [285] = true, [289] = true, [290] = true, [291] = true, [295] = true, [296] = true, [297] = true, [323] = true, [324] = true, [325] = true, [326] = true, [338] = true, [347] = true, [352] = true, [382] = true, [386] = true, [396] = true, [406] = true, [419] = true, [422] = true, [434] = true, [437] = true, [441] = true, [475] = true, [478] = true, [479] = true, [483] = true, [484] = true, [487] = true, [490] = true, [512] = true, [515] = true, [522] = true, [527] = true, [536] = true, [552] = true }
if EID.isRepentance then
	EID.CarBatteryNoSynergy[34] = false -- The Book of Belial
	EID.CarBatteryNoSynergy[284] = true -- D4 (essentially does nothing)
	EID.CarBatteryNoSynergy[285] = false -- D10
	EID.CarBatteryNoSynergy[296] = false -- Converter
	EID.CarBatteryNoSynergy[323] = false -- Isaac's Tears
	EID.CarBatteryNoSynergy[386] = false -- D12
	EID.CarBatteryNoSynergy[421] = true -- Kidney Bean
	EID.CarBatteryNoSynergy[522] = false -- Telekinesis
	EID.CarBatteryNoSynergy[523] = true -- Moving Box
	-- Repentance actives
	EID.CarBatteryNoSynergy[555] = true; EID.CarBatteryNoSynergy[577] = true; EID.CarBatteryNoSynergy[578] = true; EID.CarBatteryNoSynergy[580] = true;
	EID.CarBatteryNoSynergy[585] = true; EID.CarBatteryNoSynergy[604] = true; EID.CarBatteryNoSynergy[622] = true; EID.CarBatteryNoSynergy[623] = true;
	EID.CarBatteryNoSynergy[628] = true; EID.CarBatteryNoSynergy[636] = true; EID.CarBatteryNoSynergy[638] = true; EID.CarBatteryNoSynergy[640] = true;
	EID.CarBatteryNoSynergy[653] = true; EID.CarBatteryNoSynergy[655] = true; EID.CarBatteryNoSynergy[703] = true; EID.CarBatteryNoSynergy[706] = true;
	EID.CarBatteryNoSynergy[709] = true; EID.CarBatteryNoSynergy[710] = true; EID.CarBatteryNoSynergy[711] = true; EID.CarBatteryNoSynergy[714] = true;
	EID.CarBatteryNoSynergy[715] = true; EID.CarBatteryNoSynergy[728] = true; EID.CarBatteryNoSynergy[729] = true;
end
-- Items that should show their Car Battery synergy while looking at a Car Battery pedestal
-- Void, Crooked Penny, Metronome, Moving Box, Broken Shovel
EID.CarBatteryPedestalWhitelist = { [477] = true, [485] = true, [488] = true, [523] = true, [550] = true }
if EID.isRepentance then
	EID.CarBatteryPedestalWhitelist[523] = nil -- Moving Box
	EID.CarBatteryPedestalWhitelist[386] = true -- D12
	EID.CarBatteryPedestalWhitelist[611] = true -- Larynx
	EID.CarBatteryPedestalWhitelist[635] = true -- Stitches
	EID.CarBatteryPedestalWhitelist[685] = true -- Jar of Wisps
	EID.CarBatteryPedestalWhitelist[720] = true -- Everything Jar
	EID.CarBatteryPedestalWhitelist[722] = true -- Anima Sola
end

-- Familiars that have no effect from BFFS!
EID.BFFSNoSynergy = { [10] = true, [11] = true, [81] = true, [178] = true, [238] = true, [239] = true, [243] = true, [265] = true, [268] = true, [269] = true, [276] = true, [278] = true, [280] = true, [281] = true, [387] = true, [404] = true, [431] = true, [433] = true, [436] = true, [467] = true, [469] = true, [472] = true, [492] = true, [504] = true, [516] = true, [528] = true, [542] = true, [543] = true }
if EID.isRepentance then
	EID.BFFSNoSynergy[178] = false -- Holy Water
	EID.BFFSNoSynergy[276] = false -- Isaac's Heart
	EID.BFFSNoSynergy[325] = true -- Scissors
	EID.BFFSNoSynergy[405] = true -- GB Bug
	EID.BFFSNoSynergy[467] = false -- Finger!
	EID.BFFSNoSynergy[504] = false -- Brown Nugget
	EID.BFFSNoSynergy[567] = true -- Paschal Candle
	EID.BFFSNoSynergy[615] = true -- Lil Dumpy (I couldn't notice any change anyway)
	EID.BFFSNoSynergy[651] = true -- Star of Bethlehem
	EID.BFFSNoSynergy[697] = true -- Vanishing Twin
end
-- Items that should show their BFFS / Hive Mind synergy while looking at a BFFS / Hive Mind pedestal
-- Charged Baby, Key Bum, Spider Mod, Succubus, Lil Spewer, Mystery Egg
EID.BFFSPedestalWhitelist = { [372] = true, [388] = true, [403] = true, [417] = true, [537] = true, [539] = true }
if EID.isRepentance then
	EID.BFFSPedestalWhitelist[276] = true -- Isaac's Heart
	EID.BFFSPedestalWhitelist[569] = true -- Blood Oath
	EID.BFFSPedestalWhitelist[584] = true -- Book of Virtues
	EID.BFFSPedestalWhitelist[612] = true -- Lost Soul
	EID.BFFSPedestalWhitelist[635] = true -- Stitches
	EID.BFFSPedestalWhitelist[685] = true -- Jar of Wisps
	EID.BFFSPedestalWhitelist[702] = true -- Vengeful Spirit
	EID.BFFSPedestalWhitelist[706] = true -- Abyss
	EID.BFFSPedestalWhitelist[712] = true -- Lemegeton
	EID.BFFSPedestalWhitelist[713] = true -- Sumptorium
end

-- Familiars that count for Hive Mind in Repentance (although it could give them No Effect if it just increases size)
EID.HiveMindFamiliars = { [10] = true, [57] = true, [128] = true, [170] = true, [264] = true, [272] = true, [274] = true, [279] = true, [320] = true, [364] = true, [365] = true, [403] = true, [426] = true, [430] = true, [504] = true, [511] = true, [575] = true, [581] = true, [629] = true, [649] = true, [650] = true, [706] = true, }
-- Familiars that count for Hive Mind but should be ignored by BFFS (not used yet, maybe used by modded item conditionals)
EID.BFFSIgnore = {}


-- Tainted character's respective normal version ID, for conditionals that apply to both versions of the character
-- To help with other character pairs, Esau = Jacob, Dead Tainted Lazarus = Tainted Lazarus, Tainted Soul = Tainted Forgotten
EID.TaintedToRegularID = { [20] = 19, [21] = 0, [22] = 1, [23] = 2, [24] = 3, [25] = 4, [26] = 5, [27] = 6, [28] = 7, [29] = 8, [30] = 9, [31] = 10, [32] = 13, 
[33] = 14, [34] = 15, [35] = 16, [36] = 18, [37] = 19, [38] = 29, [39] = 37, [40] = 35 }
-- Player IDs of Tainted characters
EID.TaintedIDs = {}; for i = 21, 40 do EID.TaintedIDs[i] = true end

-- Character IDs that are Soul/Black Hearts only: ???, The Lost, The Soul
EID.NoRedHeartsPlayerIDs = { [4] = true, [10] = true, [17] = true }
-- More separated table for more exact data
EID.SpecialHeartPlayers = {}
EID.SpecialHeartPlayers["Soul"] = { 4, 17 }
EID.SpecialHeartPlayers["Black"] = {}
EID.SpecialHeartPlayers["Coin"] = { 14 }
EID.SpecialHeartPlayers["Bone"] = { 16 }
EID.SpecialHeartPlayers["None"] = { 10 }
-- Lookup table for the type of health each player has
EID.CharacterToHeartType = {}; for i = 0, 17 do EID.CharacterToHeartType[i] = "Red" end
EID.CharacterToHeartType[4] = "Soul"; EID.CharacterToHeartType[10] = "None"; EID.CharacterToHeartType[14] = "Coin"; EID.CharacterToHeartType[16] = "Bone"; EID.CharacterToHeartType[17] = "Soul"

if EID.isRepentance then
	-- ???, The Lost, Black Judas, The Soul, Tainted Judas, Tainted ???, Tainted Lost, Tainted Forgotten, Tainted Bethany, Tainted Soul
	EID.NoRedHeartsPlayerIDs = { [4] = true, [10] = true, [12] = true, [17] = true, [24] = true, [25] = true, [31] = true, [35] = true, [36] = true, [40] = true }
	EID.SpecialHeartPlayers["Soul"] = { 4, 17, 25, 35, 36, 40 }
	EID.SpecialHeartPlayers["Black"] = { 12, 24 }
	EID.SpecialHeartPlayers["Coin"] = { 14, 33 }
	EID.SpecialHeartPlayers["None"] = { 10, 31 }
	
	for i = 18, 40 do EID.CharacterToHeartType[i] = "Red" end
	EID.CharacterToHeartType[12] = "Black"; EID.CharacterToHeartType[24] = "Black"; EID.CharacterToHeartType[25] = "Soul"; EID.CharacterToHeartType[31] = "None"; EID.CharacterToHeartType[33] = "Coin"; EID.CharacterToHeartType[35] = "Soul"; EID.CharacterToHeartType[36] = "Soul"; EID.CharacterToHeartType[40] = "Soul"; 
end

EID.HealthTypesWithoutHealing = {}
EID.HealthTypesWithoutHealing["Soul"] = true
EID.HealthTypesWithoutHealing["Black"] = true
EID.HealthTypesWithoutHealing["None"] = true

-- Character IDs that have a pocket active (0 = normal, 1 = timed, 2 = special)
EID.PocketActivePlayerIDs = { [22] = 0, [23] = 2, [24] = 1, [25] = 2, [26] = 1, [29] = 0, [34] = 0, [36] = 0, [37] = 1, [38] = 0, [39] = 1 }

-- "Evil" item IDs for Black Feather
EID.blackFeatherItems = {[215]=true,[216]=true,[230]=true,[260]=true,[262]=true,[339]=true,[344]=true}
if EID.isRepentance then EID.blackFeatherItems[654] = true end
EID.blackFeatherTrinkets = {[17]=true,[22]=true}

-- Luck formulas
EID.LuckFormulas = {}
EID.LuckFormulas["5.100.219"] = function(luck) return math.min(100 / (10 - math.floor(luck*0.3)), 50) end -- Old Bandage: Base 10%, 50% at 26.67 Luck
if EID.isRepentance then
	EID.LuckFormulas["5.100.219"] = function(luck) return (20 + luck) end -- Old Bandage: Base 20%, 100% at 80 Luck
	EID.LuckFormulas["5.100.576"] = function(luck) return math.min(luck*0.5 + 6.25, 10) end -- Dirty Mind: Base 6.25%, 10% at 7.5 Luck
end

-- Number of Health Ups you get from a Health Up item
-- (Pill ID is off by 1 because of EID one-indexed pill effects)
EID.HealthUpData = {["5.70.7"] = -1, ["5.70.8"] = 1, ["5.70.2055"] = -2, ["5.70.2056"] = 2, ["5.70.10"] = 1, ["5.100.12"] = 1, ["5.100.15"] = 1, ["5.100.16"] = 2, ["5.100.22"] = 1, ["5.100.23"] = 1, ["5.100.24"] = 1, ["5.100.25"] = 1, ["5.100.26"] = 1, ["5.100.92"] = 1, ["5.100.101"] = 1, ["5.100.119"] = 1, ["5.100.121"] = 1, ["5.100.129"] = 2, ["5.100.138"] = 1, ["5.100.176"] = 1, ["5.100.182"] = 1, ["5.100.184"] = 1, ["5.100.189"] = 1, ["5.100.193"] = 1, ["5.100.218"] = 1, ["5.100.219"] = 1, ["5.100.226"] = 1, ["5.100.253"] = 1, ["5.100.307"] = 1, ["5.100.312"] = 1, ["5.100.314"] = 1, ["5.100.334"] = 3, ["5.100.342"] = 1, ["5.100.346"] = 1, ["5.100.354"] = 1, ["5.100.456"] = 1, ["5.300.12"] = 1 }
-- Items with a healing effect that can have the healing line removed for non-red HP characters
EID.HealingItemData = {["5.100.45"] = true, ["5.100.62"] = true, ["5.100.75"] = true, ["5.100.93"] = true, ["5.100.217"] = true, ["5.100.223"] = true, ["5.100.270"] = true, ["5.100.428"] = true, ["5.350.8"] = true, ["5.350.46"] = true, ["5.350.53"] = true, ["5.350.87"] = true, ["5.350.119"] = true, ["5.300.20"] = true, ["5.300.26"] = true, ["5.70.6"] = true, ["5.70.37"] = true }
if EID.isRepentance then
	EID.HealthUpData["5.100.573"] = 1; EID.HealthUpData["5.100.591"] = 1; EID.HealthUpData["5.100.594"] = 2; EID.HealthUpData["5.300.59"] = 2
	EID.HealthUpData["5.100.614"] = 1; EID.HealthUpData["5.100.664"] = 1; EID.HealthUpData["5.100.669"] = 1; EID.HealthUpData["5.100.707"] = 1
	EID.HealingItemData["5.100.621"] = true; EID.HealingItemData["5.70.46"] = true;

	EID.BloodUpData = {["5.70.10"] = 2, ["5.350.156"] = 2, ["5.300.12"] = 2, ["5.300.59"] = 4, [12] = 12, [15] = 12, [16] = 12, [22] = 4, [23] = 4, [24] = 4, [25] = 4, [26] = 4, [75] = 4, [92] = 4, [101] = 4, [119] = 10, [121] = 2, [129] = 4, [138] = 4, [176] = 4, [182] = 12, [184] = 4, [189] = 12, [193] = 4, [217] = 2, [218] = 4, [226] = 4, [253] = 4, [307] = 4, [312] = 4, [314] = 4, [334] = 6, [342] = 4, [346] = 4, [354] = 4, [428] = 12, [456] = 4, [535] = 2, [573] = 12, [591] = 4, [594] = 1, [614] = 10, [621] = 12, [664] = 12, [669] = 12, [707] = 4 }
end

EID.SingleUseCollectibles = {
	[127] = true, -- Forget Me Now
	[297] = true, -- Pandora's Box
	[347] = true, -- Diplopia
	[475] = true, -- Plan C
	[483] = true, -- Mama Mega!
	[490] = true, -- Eden's Soul
	[515] = true, -- Mystery Gift
	[536] = true, -- Sacrificial Altar
}
if EID.isRepentance then
	EID.SingleUseCollectibles[577] = true -- Damocles
	EID.SingleUseCollectibles[585] = true -- Alabaster Box
	EID.SingleUseCollectibles[622] = true -- Genesis
	EID.SingleUseCollectibles[628] = true -- Death Certificate
	EID.SingleUseCollectibles[636] = true -- R Key
end

---------------- BAG OF CRAFTING DATA ------------------

if not EID.isRepentance then return end

EID.SalvageTrinkets = { [34] = "5.10", [36] = "5.30", [41] = "5.40", [44] = "5.70", [45] = "5.300" }
EID.SalvageRoomTypes = { [3] = "5.10.6", [19] = "5.10.6", [4] = "5.10.4", [20] = "5.10.4", [5] = "5.10.11", [22] = "5.10.11", [9] = "5.300.78", [12] = "5.10.12", [21] = "5.10.12", [26] = "5.301" }
EID.PickupStartsWithVowel = { ["5.10.4"] = true } -- this is just for Eternal Heart in salvage descriptions right now...

EID.BoC = {}

EID.BoC.PickupValues = {
	0x00000000, -- 0 None
	-- Hearts
	0x00000001, -- 1 Red Heart
	0x00000004, -- 2 Soul Heart
	0x00000005, -- 3 Black Heart
	0x00000005, -- 4 Eternal Heart
	0x00000005, -- 5 Gold Heart
	0x00000005, -- 6 Bone Heart
	0x00000001, -- 7 Rotten Heart
	-- Pennies
	0x00000001, -- 8 Penny
	0x00000003, -- 9 Nickel
	0x00000005, -- 10 Dime
	0x00000008, -- 11 Lucky Penny
	-- Keys
	0x00000002, -- 12 Key
	0x00000007, -- 13 Golden Key
	0x00000005, -- 14 Charged Key
	-- Bombs
	0x00000002, -- 15 Bomb
	0x00000007, -- 16 Golden Bomb
	0x0000000a, -- 17 Giga Bomb
	-- Batteries
	0x00000002, -- 18 Micro Battery
	0x00000004, -- 19 Lil' Battery
	0x00000008, -- 20 Mega Battery
	-- Usables
	0x00000002, -- 21 Card
	0x00000002, -- 22 Pill
	0x00000004, -- 23 Rune
	0x00000004, -- 24 Dice Shard
	0x00000002, -- 25 Cracked Key
	-- Added in Update
	0x00000007, -- 26 Golden Penny
	0x00000007, -- 27 Golden Pill
	0x00000007, -- 28 Golden Battery
	0x00000000, -- 29 Tainted ??? Poop
  
	0x00000001,
  }

EID.BoC.PickupIDLookup = {
	["10.1"] = {1}, -- Red heart
	["10.2"] = {1}, -- half heart
	["10.3"] = {2}, -- soul heart
	["10.4"] = {4}, -- eternal heart
	["10.5"] = {1, 1}, -- double heart
	["10.6"] = {3}, -- black heart
	["10.7"] = {5}, -- gold heart
	["10.8"] = {2}, -- half soul heart
	["10.9"] = {1}, -- scared red heart
	["10.10"] = {2, 1}, -- blended heart
	["10.11"] = {6}, -- Bone heart
	["10.12"] = {7}, -- Rotten heart
	["20.1"] = {8}, -- Penny
	["20.2"] = {9}, -- Nickel
	["20.3"] = {10}, -- Dime
	["20.4"] = {8, 8}, -- Double penny
	["20.5"] = {11}, -- Lucky Penny
	["20.6"] = {9}, -- Sticky Nickel
	["20.7"] = {26}, -- Golden Penny
	["30.1"] = {12}, -- Key
	["30.2"] = {13}, -- golden Key
	["30.3"] = {12,12}, -- Key Ring
	["30.4"] = {14}, -- charged Key
	["40.1"] = {15}, -- bomb
	["40.2"] = {15,15}, -- double bomb
	["40.4"] = {16}, -- golden bomb
	["40.7"] = {17}, -- giga bomb
	["42.0"] = {29}, -- poop nugget
	["42.1"] = {29}, -- big poop nugget
	["70.14"] = {27}, -- golden pill
	["70.2062"] = {27}, -- golden horse pill
	["90.1"] = {19}, -- Lil Battery
	["90.2"] = {18}, -- Micro Battery
	["90.3"] = {20}, -- Mega Battery
	["90.4"] = {28}, -- Golden Battery
	["300.49"] = {24}, -- Dice shard
	["300.50"] = {21}, -- Emergency Contact
	["300.78"] = {25}, -- Cracked key
}

EID.BoC.ComponentShifts = {
	{0x00000001, 0x00000005, 0x00000010},
	{0x00000001, 0x00000005, 0x00000013},
	{0x00000001, 0x00000009, 0x0000001D},
	{0x00000001, 0x0000000B, 0x00000006},
	{0x00000001, 0x0000000B, 0x00000010},
	{0x00000001, 0x00000013, 0x00000003},
	{0x00000001, 0x00000015, 0x00000014},
	{0x00000001, 0x0000001B, 0x0000001B},
	{0x00000002, 0x00000005, 0x0000000F},
	{0x00000002, 0x00000005, 0x00000015},
	{0x00000002, 0x00000007, 0x00000007},
	{0x00000002, 0x00000007, 0x00000009},
	{0x00000002, 0x00000007, 0x00000019},
	{0x00000002, 0x00000009, 0x0000000F},
	{0x00000002, 0x0000000F, 0x00000011},
	{0x00000002, 0x0000000F, 0x00000019},
	{0x00000002, 0x00000015, 0x00000009},
	{0x00000003, 0x00000001, 0x0000000E},
	{0x00000003, 0x00000003, 0x0000001A},
	{0x00000003, 0x00000003, 0x0000001C},
	{0x00000003, 0x00000003, 0x0000001D},
	{0x00000003, 0x00000005, 0x00000014},
	{0x00000003, 0x00000005, 0x00000016},
	{0x00000003, 0x00000005, 0x00000019},
	{0x00000003, 0x00000007, 0x0000001D},
	{0x00000003, 0x0000000D, 0x00000007},
	{0x00000003, 0x00000017, 0x00000019},
	{0x00000003, 0x00000019, 0x00000018},
	{0x00000003, 0x0000001B, 0x0000000B},
	{0x00000004, 0x00000003, 0x00000011},
	{0x00000004, 0x00000003, 0x0000001B},
	{0x00000004, 0x00000005, 0x0000000F},
	{0x00000005, 0x00000003, 0x00000015},
	{0x00000005, 0x00000007, 0x00000016},
	{0x00000005, 0x00000009, 0x00000007},
	{0x00000005, 0x00000009, 0x0000001C},
	{0x00000005, 0x00000009, 0x0000001F},
	{0x00000005, 0x0000000D, 0x00000006},
	{0x00000005, 0x0000000F, 0x00000011},
	{0x00000005, 0x00000011, 0x0000000D},
	{0x00000005, 0x00000015, 0x0000000C},
	{0x00000005, 0x0000001B, 0x00000008},
	{0x00000005, 0x0000001B, 0x00000015},
	{0x00000005, 0x0000001B, 0x00000019},
	{0x00000005, 0x0000001B, 0x0000001C},
	{0x00000006, 0x00000001, 0x0000000B},
	{0x00000006, 0x00000003, 0x00000011},
	{0x00000006, 0x00000011, 0x00000009},
	{0x00000006, 0x00000015, 0x00000007},
	{0x00000006, 0x00000015, 0x0000000D},
	{0x00000007, 0x00000001, 0x00000009},
	{0x00000007, 0x00000001, 0x00000012},
	{0x00000007, 0x00000001, 0x00000019},
	{0x00000007, 0x0000000D, 0x00000019},
	{0x00000007, 0x00000011, 0x00000015},
	{0x00000007, 0x00000019, 0x0000000C},
	{0x00000007, 0x00000019, 0x00000014},
	{0x00000008, 0x00000007, 0x00000017},
	{0x00000008, 0x00000009, 0x00000017},
	{0x00000009, 0x00000005, 0x0000000E},
	{0x00000009, 0x00000005, 0x00000019},
	{0x00000009, 0x0000000B, 0x00000013},
	{0x00000009, 0x00000015, 0x00000010},
	{0x0000000A, 0x00000009, 0x00000015},
	{0x0000000A, 0x00000009, 0x00000019},
	{0x0000000B, 0x00000007, 0x0000000C},
	{0x0000000B, 0x00000007, 0x00000010},
	{0x0000000B, 0x00000011, 0x0000000D},
	{0x0000000B, 0x00000015, 0x0000000D},
	{0x0000000C, 0x00000009, 0x00000017},
	{0x0000000D, 0x00000003, 0x00000011},
	{0x0000000D, 0x00000003, 0x0000001B},
	{0x0000000D, 0x00000005, 0x00000013},
	{0x0000000D, 0x00000011, 0x0000000F},
	{0x0000000E, 0x00000001, 0x0000000F},
	{0x0000000E, 0x0000000D, 0x0000000F},
	{0x0000000F, 0x00000001, 0x0000001D},
	{0x00000011, 0x0000000F, 0x00000014},
	{0x00000011, 0x0000000F, 0x00000017},
	{0x00000011, 0x0000000F, 0x0000001A}
}
	
-- list of multipliers for Abyss locust damages
EID.QualityToLocustDamageMultiplier = {
	[0] = 0.5,
	[1] = 0.75,
	[2] = 1,
	[3] = 1.5,
	[4] = 2,
}

EID.WispData = {
	-- Indicates Wisps created by items, that only last 1 room
	SingleRoom = {
		[164] = true, -- The Candle
		[289] = true, -- Red Candle
		[294] = true, -- Butter Bean
		[338] = true, -- The Boomerang
		[484] = true, -- Wait What?
		[504] = true, -- Brown Nugget
		[604] = true, -- Mom's Bracelet
		[709] = true, -- Suplex!
	},
	-- Indicates items, that dont create any wisps at all
	NoWisp = {
		[636] = true, -- R Key
		[653] = true, -- Vade Retro
		[713] = true, -- Sumptorium
	}
}

if EID.isRepentancePlus then
	EID.WispData.SingleRoom[111] = true -- The Bean
	EID.WispData.SingleRoom[421] = true -- Kidney Bean
end