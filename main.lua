EID = RegisterMod("External Item Descriptions", 1)
EID.itemConfig = Isaac.GetItemConfig()
EID.descriptions = {} -- Table that holds all translation strings

EID.isDisplayingText = false
EID.lastDescriptionEntity = nil
local lineHeight = 11
local hideDescToggle = false
EID.sacrificeCounter = 1

EID.IconSprite = Sprite()
EID.IconSprite:Load("gfx/icons.anm2", true)

EID.InlineIconSprite = Sprite()
EID.InlineIconSprite:Load("gfx/eid_inline_icons.anm2", true)

local ArrowSprite = Sprite()
ArrowSprite:Load("gfx/icons.anm2", true)
ArrowSprite:Play("Arrow", false)

local CardSprite = Sprite()
CardSprite:Load("gfx/cardfronts.anm2", true)

require("eid_config")
require("mod_config_menu")
--languages
require("descriptions.ab+.en_us")
require("descriptions.ab+.en_us_detailed")
require("descriptions.ab+.bul") -- WIP
require("descriptions.ab+.fr")
--require("descriptions.ab+.pl")	-- WIP
require("descriptions.ab+.pt")
require("descriptions.ab+.ru")
require("descriptions.ab+.spa")

require("eid_data")
require("eid_api")

EID.LastRenderCallColor = EID:getTextColor()

--use some very hacky trickery to get the path to this mod
local _, err = pcall(require, "")
local _, basePathStart = string.find(err, "no file '", 1)
local _, modPathStart = string.find(err, "no file '", basePathStart)
local modPathEnd, _ = string.find(err, ".lua'", modPathStart)
local modPath = string.sub(err, modPathStart + 1, modPathEnd - 1)
modPath = string.gsub(modPath, "\\", "/")
modPath = string.gsub(modPath, ":/", ":\\")

EID.font = Font() -- init font object
EID.font:Load(modPath .. "resources/font/eid_default.fnt") -- load a font into the font object
EID.font:SetMissingCharacter(2)
if not EID.font:IsLoaded() then
	Isaac.DebugString("EID - ERROR: Could not load font from '" .. modPath .. "resources/font/default.fnt" .. "'")
end

--Makes textscale smaller, when using detailed english descriptions
if EIDConfig["Language"] == "en_us_detailed" and EIDConfig["Scale"] > 0.5 then
	EIDConfig["Scale"] = 0.5
end

---------------------------------------------------------------------------
-------------------------Handle Sacrifice Room-----------------------------
if EIDConfig["DisplaySacrificeInfo"] then
	function onNewFloor()
		EID.sacrificeCounter = 1
	end
	EID:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, onNewFloor)

	function onDamage(_, entity, _, flag, source)
		if Game():GetRoom():GetType() == RoomType.ROOM_SACRIFICE and source.Type == 0 and flag == DamageFlag.DAMAGE_SPIKES then
			if EID.sacrificeCounter < 12 then
				EID.sacrificeCounter = EID.sacrificeCounter + 1
			end
		end
	end
	EID:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, onDamage, EntityType.ENTITY_PLAYER)
end

---------------------------------------------------------------------------
---------------------------Printing Functions------------------------------
local modifiedPosY = false -- When the player has the schoolbag it changes
local function posY()
	return modifiedPosY ~= false and modifiedPosY or EIDConfig["YPosition"]
end

function printDescription(desc)
	local padding = posY()
	local itemType = -1
	if tonumber(desc.ID) ~= nil then
		itemType = EID.itemConfig:GetCollectible(tonumber(desc.ID)).Type or -1
	end
	--Display ItemType / Charge
	if EIDConfig["ShowItemType"] and (itemType == 3 or itemType == 4) then
		local offsetY = 2 * EIDConfig["Scale"]
		if EIDConfig["Scale"] < 1 then
			offsetY = -1
		end
		EID.IconSprite:Play(EID.ItemTypeAnm2Names[itemType])
		EID.IconSprite.Scale = Vector(EIDConfig["Scale"], EIDConfig["Scale"])
		EID.IconSprite:Update()
		EID.IconSprite:Render(Vector(EIDConfig["XPosition"], padding + offsetY), Vector(0, 0), Vector(0, 0))
		if itemType == 3 then -- Display Charge
			EID.IconSprite:Play(EID.itemConfig:GetCollectible(desc.ID).MaxCharges)
			EID.IconSprite:Update()
			EID.IconSprite:Render(Vector(EIDConfig["XPosition"], padding + offsetY), Vector(0, 0), Vector(0, 0))
		end
		if not EIDConfig["ShowItemName"] then
			padding = padding + lineHeight * EIDConfig["Scale"]
		end
	end
	--Display Itemname
	if EIDConfig["ShowItemName"] then
		local offset = 0
		if EIDConfig["ShowItemType"] then
			if itemType == 3 then -- active item
				offset = 11
			elseif itemType == 4 then -- familiar
				offset = 6
			end
		end
		EID:renderString(
			desc.Name,
			Vector(EIDConfig["XPosition"] + offset, padding - 4),
			Vector(EIDConfig["Scale"], EIDConfig["Scale"]),
			EID:getNameColor()
		)

		padding = padding + lineHeight * EIDConfig["Scale"]
	end

	--Display Transformation
	if not (desc.Transformation == "0" or desc.Transformation == "" or desc.Transformation == nil) then
		for transform in string.gmatch(desc.Transformation, "([^,]+)") do
			local transformationName = EID:getTransformationName(transform)
			local transformSprite = EID:getTransformationIcon(transform)
			local iconWidth = transformSprite[3] or -1
			local iconHeight = transformSprite[4] or -1
			local iconOffsetX = transformSprite[5] or -1
			local iconOffsetY = transformSprite[6] or -1
			local transformLineHeight = lineHeight
			if EIDConfig["TransformationIcons"] then
				transformLineHeight = math.max(lineHeight, transformSprite[4])
				local iconSprite = transformSprite[7] or EID.InlineIconSprite
				iconSprite:Play(transformSprite[1])
				iconSprite.Scale = Vector(EIDConfig["Scale"], EIDConfig["Scale"])
				iconSprite.Color = Color(1, 1, 1, EIDConfig["Transparency"], 0, 0, 0)
				iconSprite:Render(
					Vector(EIDConfig["XPosition"] + iconOffsetX * EIDConfig["Scale"], padding + iconOffsetY * EIDConfig["Scale"]),
					Vector(0, 0),
					Vector(0, 0)
				)
			end
			if EIDConfig["TransformationText"] then
				local textOffsetY = math.min(0, (iconHeight - 9)) / 4
				EID:renderString(
					transformationName,
					Vector(EIDConfig["XPosition"] + iconWidth + 4, padding + textOffsetY),
					Vector(EIDConfig["Scale"], EIDConfig["Scale"]),
					EID:getTransformationColor()
				)
			end
			if (EIDConfig["TransformationIcons"] or EIDConfig["TransformationText"]) then
				padding = padding + transformLineHeight * EIDConfig["Scale"]
			end
		end
	end
	EID:printBulletPoints(desc.Description, padding)
end

function EID:printBulletPoints(description, padding)
	local textboxWidth = tonumber(EIDConfig["TextboxWidth"]) * 4
	description = EID:replaceShortMarkupStrings(description)
	for line in string.gmatch(description, "([^#]+)") do
		local formatedLines = EID:fitTextToWidth(line, textboxWidth)
		local textColor = EID:getTextColor()
		for i, lineToPrint in ipairs(formatedLines) do
			-- render bulletpoint
			local posX = EIDConfig["XPosition"]
			if i == 1 then
				local bpIcon = EID:handleBulletpointIcon(lineToPrint)
				if EID:getIcon(bpIcon) ~= EID.InlineIcons["ERROR"] then
					lineToPrint = string.gsub(lineToPrint, bpIcon .. " ", "")
				end

				textColor =
					EID:renderString(bpIcon, Vector(posX, padding), Vector(EIDConfig["Scale"], EIDConfig["Scale"]), textColor)
			end
			textColor =
				EID:renderString(lineToPrint, Vector(posX + 12, padding), Vector(EIDConfig["Scale"], EIDConfig["Scale"]), textColor)
			padding = padding + lineHeight * EIDConfig["Scale"]
		end
	end
end

---------------------------------------------------------------------------
---------------------------Handle Rendering--------------------------------

function EID:renderQuestionMark()
	IconSprite:Play("CurseOfBlind")
	IconSprite.Scale = Vector(EIDConfig["Scale"], EIDConfig["Scale"])
	IconSprite:Update()
	IconSprite:Render(
		Vector(EIDConfig["XPosition"] + 5 * EIDConfig["Scale"], posY() + 5 * EIDConfig["Scale"]),
		Vector(0, 0),
		Vector(0, 0)
	)
	if Isaac.GetPlayer(0):HasCollectible(CollectibleType.COLLECTIBLE_SCHOOLBAG) then
		modifiedPosY = EIDConfig["YPosition"] - 30
	end
end

function EID:renderIndicator(entity)
	if EIDConfig["Indicator"] == "blink" then
		local c = 255 - math.floor(255 * ((entity.FrameCount % 40) / 40))
		entity:SetColor(Color(1, 1, 1, 1, c, c, c), 1, 1, false, false)
		entity:Render(Vector(0, 0))
		entity:SetColor(Color(1, 1, 1, 1, 0, 0, 0), 2, 1, false, false)
	elseif EIDConfig["Indicator"] == "border" then
		local c = 255 - math.floor(255 * ((entity.FrameCount % 40) / 40))
		entity:SetColor(Color(1, 1, 1, 1, c, c, c), 1, 1, false, false)
		entity:Render(Vector(0, 1))
		entity:Render(Vector(0, -1))
		entity:Render(Vector(1, 0))
		entity:Render(Vector(-1, 0))
		entity:SetColor(Color(1, 1, 1, 1, 0, 0, 0), 2, 1, false, false)
		entity:Render(Vector(0, 0))
	elseif EIDConfig["Indicator"] == "highlight" then
		entity:SetColor(Color(1, 1, 1, 1, 255, 255, 255), 1, 1, false, false)
		entity:Render(Vector(0, 1))
		entity:Render(Vector(0, -1))
		entity:Render(Vector(1, 0))
		entity:Render(Vector(-1, 0))
		entity:SetColor(Color(1, 1, 1, 1, 0, 0, 0), 2, 1, false, false)
		entity:Render(Vector(0, 0))
	elseif EIDConfig["Indicator"] == "arrow" then
		ArrowSprite:Update()
		local ArrowOffset = Vector(0, -35)
		if entity.Variant == 100 and not entity:ToPickup():IsShopItem() then
			ArrowOffset = Vector(0, -62)
		end
		ArrowSprite:Render(Game():GetRoom():WorldToScreenPosition(entity.Position + ArrowOffset), Vector(0, 0), Vector(0, 0))
	end
end

---------------------------------------------------------------------------
---------------------------On Render Function------------------------------

local function onRender(t)
	EID.isDisplayingText = false
	local player = Isaac.GetPlayer(0)
	local closest = nil
	local closestDice = nil
	local dist = 10000
	if Input.IsButtonTriggered(EIDConfig["HideKey"], 0) then
		hideDescToggle = not hideDescToggle
	end
	if hideDescToggle then
		return
	end

	for i, entity in ipairs(Isaac.GetRoomEntities()) do
		if Game():GetRoom():GetType() == RoomType.ROOM_DICE and entity.Type == 1000 and entity.Variant == 76 then
			closestDice = entity
		end

		if EID:hasDescription(entity) then
			local diff = entity.Position:__sub(player.Position)
			if diff:Length() < dist then
				closest = entity
				dist = diff:Length()
			end
		end
	end

	if dist / 40 > tonumber(EIDConfig["MaxDistance"]) or not closest.Type == EntityType.ENTITY_PICKUP then
		if Game():GetRoom():GetType() == RoomType.ROOM_SACRIFICE and EIDConfig["DisplaySacrificeInfo"] then
			printDescription(EID:getDescriptionObj("sacrifice", EID.sacrificeCounter))
		end
		if
			Game():GetRoom():GetType() == RoomType.ROOM_DICE and EIDConfig["DisplayDiceInfo"] and type(closestDice) ~= type(nil)
		 then
			printDescription(EID:getDescriptionObj("dice", closestDice.SubType + 1))
			EID:renderIndicator(closestDice)
		end
		return
	end

	if closest == nil then
		return
	end
	EID.lastDescriptionEntity = closest
	EID.isDisplayingText = true

	--Handle Indicators
	EID:renderIndicator(closest)
	 --

	--Handle Entities (specific)
	--[[	if EIDConfig["EnableEntityDescriptions"] and type(closest:GetData()["EID_Description"]) ~= type(nil) then
		printTrinketDescription({closest.Type, closest:GetData()["EID_Description"]}, "custom")
		return
	end
	]] --Handle Entities (omni)
	local objIDString = closest.Type .. "." .. closest.Variant .. "." .. closest.SubType
	local tableEntry =
		EID.descriptions[EIDConfig["Language"]]["custom"][objIDString] or EID.descriptions["en_us"]["custom"][objIDString] or
		EID:getLegacyModDescription("custom", objIDString) or
		nil
	if EIDConfig["EnableEntityDescriptions"] and tableEntry ~= nil then
		printDescription(EID:getDescriptionObj("custom", objIDString))
		return
	end

	--Handle Trinkets
	if closest.Variant == PickupVariant.PICKUP_TRINKET then
		--Handle Collectibles
		printDescription(EID:getDescriptionObj("trinkets", closest.SubType))
	elseif closest.Variant == PickupVariant.PICKUP_COLLECTIBLE then
		--Handle Cards & Runes
		if EID:hasCurseBlind() and EIDConfig["DisableOnCurse"] then
			EID:renderQuestionMark()
			return
		end
		printDescription(EID:getDescriptionObj("collectibles", closest.SubType))
	elseif closest.Variant == PickupVariant.PICKUP_TAROTCARD then
		--Handle Pills
		if closest:ToPickup():IsShopItem() and not EIDConfig["DisplayCardInfoShop"] then
			EID:renderQuestionMark()
			return
		end
		printDescription(EID:getDescriptionObj("cards", closest.SubType))
		if closest.SubType <= 54 then
			CardSprite:Play(tostring(closest.SubType))
			CardSprite.Scale = Vector(EIDConfig["Scale"], EIDConfig["Scale"])
			CardSprite:Update()
			local offsetX = 0
			if EIDConfig["ShowItemName"] then
				offsetX = 10
			end
			CardSprite:Render(
				Vector(EIDConfig["XPosition"] - 9 * EIDConfig["Scale"], posY() + (12 + offsetX) * EIDConfig["Scale"]),
				Vector(0, 0),
				Vector(0, 0)
			)
		end
	elseif closest.Variant == PickupVariant.PICKUP_PILL then
		if closest:ToPickup():IsShopItem() and not EIDConfig["DisplayPillInfoShop"] then
			EID:renderQuestionMark()
			return
		end

		local pillColor = closest.SubType
		local pool = Game():GetItemPool()
		local pillEffect = pool:GetPillEffect(pillColor)
		local identified = pool:IsPillIdentified(pillColor)
		if (identified or EIDConfig["ShowUnidentifiedPillDescriptions"]) then
			printDescription(EID:getDescriptionObj("pills", pillEffect + 1))
		else
			EID:renderString(
				EID:getDescriptionTable("unidentifiedPill"),
				Vector(EIDConfig["XPosition"], posY()),
				Vector(EIDConfig["Scale"], EIDConfig["Scale"]),
				EID:getErrorColor()
			)
		end
		local pillsprite = closest:GetSprite()
		pillsprite.Scale = Vector(EIDConfig["Scale"] * 0.75, EIDConfig["Scale"] * 0.75)
		pillsprite:Update()
		local offsetX = 0
		if EIDConfig["ShowItemName"] and (identified or EIDConfig["ShowUnidentifiedPillDescriptions"]) then
			offsetX = 10
		end
		pillsprite:Render(
			Vector(EIDConfig["XPosition"] + 2 * EIDConfig["Scale"], posY() + (11 + offsetX) * EIDConfig["Scale"]),
			Vector(0, 0),
			Vector(0, 0)
		)
		pillsprite.Scale = Vector(1, 1)
	end
	if player:HasCollectible(CollectibleType.COLLECTIBLE_SCHOOLBAG) then
		modifiedPosY = EIDConfig["YPosition"] + 30
	end
end

EID:AddCallback(ModCallbacks.MC_POST_RENDER, onRender)

if ModConfigMenu then
	local json = require("json")
	--------------------------------
	--------Handle Savadata---------
	--------------------------------
	function OnGameStart(isSave)
		--Loading Moddata--
		if EID:HasData() then
			savedEIDConfig = json.decode(Isaac.LoadModData(EID))
			-- hardcode Language usage
			savedEIDConfig["Language"] = EIDConfig["Language"]
			-- Only copy Saved config entries that exist in the save
			for key, value in pairs(EIDConfig) do
				if savedEIDConfig[key] ~= nil then
					EIDConfig[key] = savedEIDConfig[key]
				end
			end
		end
	end
	EID:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, OnGameStart)

	--Saving Moddata--
	function SaveGame()
		EID.SaveData(EID, json.encode(EIDConfig))
	end
	EID:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT, SaveGame)
end

require("eid_debugging")
