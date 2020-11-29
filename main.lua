EID = RegisterMod("External Item Descriptions", 1)
-- important variables
EID.GameVersion = "ab+"
EID.Languages = {"en_us", "en_us_detailed", "fr", "pt", "ru", "spa", "bul", "pl", "turkish"}
EID.descriptions = {} -- Table that holds all translation strings

require("eid_config")
EID.Config = EID.DefaultConfig
EID.Config.Version = "3.0"
EID.isHidden = EID.Config["Hidden"]

-- general variables
EID.PositionModifiers = {}
EID.UsedPosition = Vector(EID.Config["XPosition"], EID.Config["YPosition"])
EID.isDisplayingText = false
EID.isDisplayingPermanent = false
EID.permanentDisplayTextObj = nil
EID.lastDescriptionEntity = nil
EID.lineHeight = 11
EID.sacrificeCounter = 1
EID.itemConfig = Isaac.GetItemConfig()

-- Sprite inits
EID.IconSprite = Sprite()
EID.IconSprite:Load("gfx/icons.anm2", true)

EID.InlineIconSprite = Sprite()
EID.InlineIconSprite:Load("gfx/eid_inline_icons.anm2", true)

EID.CardPillSprite = Sprite()
EID.CardPillSprite:Load("gfx/eid_cardspills.anm2", true)

EID.ItemSprite = Sprite()
EID.ItemSprite:Load("gfx/005.100_collectible.anm2", true)

local ArrowSprite = Sprite()
ArrowSprite:Load("gfx/icons.anm2", true)
ArrowSprite:Play("Arrow", false)

------- Load all modules and other stuff ------
require("mod_config_menu")

--transformation infos
require("descriptions."..EID.GameVersion..".transformations")
--languages
for _,lang in ipairs(EID.Languages) do
	require("descriptions."..EID.GameVersion.."."..lang)
end

require("eid_data")
require("eid_api")

EID.LastRenderCallColor = EID:getTextColor()
local nullVector = Vector(0,0)

---------------------------------------------------------------------------
------------------------------- Load Font ---------------------------------
local isluadebug, os = pcall(require,"os")
if isluadebug then
    local modfolder ='external item descriptions_836319872' --release mod folder name
    local userPath = os.tmpname()
    userPath = string.gsub(userPath, "\\", "/")
    local newPath = ""
	if not string.find(userPath, "AppData") then
		-- Linux
        EID.modPath = os.getenv("HOME") .. "/.local/share/binding of isaac afterbirth+ mods/"..modfolder.."/"
    else
        for str in string.gmatch(userPath, "([^/]+)") do
            if str ~="AppData" then
                newPath = newPath..str.."/"
            else
                break
            end
        end
        EID.modPath = newPath.."Documents/My Games/Binding of Isaac Afterbirth+ Mods/"..modfolder.."/"
    end
else
    --use some very hacky trickery to get the path to this mod
    local _, err = pcall(require, "")
    local _, basePathStart = string.find(err, "no file '", 1)
    local _, modPathStart = string.find(err, "no file '", basePathStart)
    local modPathEnd, _ = string.find(err, ".lua'", modPathStart)
    EID.modPath = string.sub(err, modPathStart + 1, modPathEnd - 1)
end
EID.modPath = string.gsub(EID.modPath, "\\", "/")
EID.modPath = string.gsub(EID.modPath, "//", "/")
EID.modPath = string.gsub(EID.modPath, ":/", ":\\")

EID.font = Font() -- init font object
local fontFile = EID.Config["FontType"] or "default"
local success = EID:loadFont(EID.modPath .. "resources/font/eid_"..fontFile..".fnt")
if not success then
	Isaac.ConsoleOutput("EID WAS NOT ABLE TO LOAD THE FONT!!!!!!!! Please contact the mod creator!")
	return
end

---------------------------------------------------------------------------
-------------------------Handle Sacrifice Room-----------------------------
if EID.Config["DisplaySacrificeInfo"] then
	function EID:onNewFloor()
		EID.sacrificeCounter = 1
	end
	EID:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, EID.onNewFloor)

	function EID:onSacrificeDamage(_, _, flag, source)
		if Game():GetRoom():GetType() == RoomType.ROOM_SACRIFICE and source.Type == 0 and flag == DamageFlag.DAMAGE_SPIKES then
			if EID.sacrificeCounter < 12 then
				EID.sacrificeCounter = EID.sacrificeCounter + 1
			end
		end
	end
	EID:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, EID.onSacrificeDamage, EntityType.ENTITY_PLAYER)
end

---------------------------------------------------------------------------
---------------------------Printing Functions------------------------------

function EID:printDescription(desc)
	local textScale = Vector(EID.Config["Scale"], EID.Config["Scale"])
	local renderPos = EID:getTextPosition()
	local itemType = -1
	if tonumber(desc.ID) ~= nil and desc.ItemType == 5 and desc.ItemVariant == 100 then
		itemType = EID.itemConfig:GetCollectible(tonumber(desc.ID)).Type or -1
	end
	local offsetX = 0
	if EID.Config["ShowItemIcon"] then
		local iconType = nil
		local renderID = desc.ID
		if desc.ItemType == 5 and desc.ItemVariant == 100 then
			iconType = "Collectible"
		elseif desc.ItemType == 5 and desc.ItemVariant == 350 then
			iconType = "Trinket"
		elseif desc.ItemType == 5 and desc.ItemVariant == 300 then
			iconType = "Card"
		elseif desc.ItemType == 5 and desc.ItemVariant == 70 then
			iconType = "Pill"
			renderID = desc.RealID
		end
		if iconType ~= nil then
			offsetX = offsetX + 12
			EID:renderString(
				"{{" .. iconType .. renderID .. "}}",
				renderPos + (Vector(-3, -5) * EID.Config["Scale"]),
				textScale,
				EID:getNameColor()
			)
		end
	end
	--Display ItemType / Charge
	if EID.Config["ShowItemType"] and (itemType == 3 or itemType == 4) then
		local offsetY = 2
		if EID.Config["Scale"] < 1 then
			offsetY = -1
		end
		EID.IconSprite:Play(EID.ItemTypeAnm2Names[itemType])
		EID:renderIcon(EID.IconSprite, renderPos.X + offsetX * EID.Config["Scale"], renderPos.Y + offsetY * EID.Config["Scale"])
		if itemType == 3 then -- Display Charge
			EID.IconSprite:Play(EID.itemConfig:GetCollectible(desc.ID).MaxCharges)
			EID:renderIcon(EID.IconSprite, renderPos.X + offsetX * EID.Config["Scale"], renderPos.Y + offsetY * EID.Config["Scale"])
			offsetX = offsetX + 11
		elseif itemType == 4 then -- familiar
			offsetX = offsetX + 8
		end
		if not EID.Config["ShowItemName"] then
			renderPos.Y = renderPos.Y + EID.lineHeight * EID.Config["Scale"]
		end
	end
	--Display Itemname
	if EID.Config["ShowItemName"] then
		EID:renderString(
			desc.Name,
			renderPos + (Vector(offsetX, -4) * EID.Config["Scale"]),
			textScale,
			EID:getNameColor()
		)

		renderPos.Y = renderPos.Y + EID.lineHeight * EID.Config["Scale"]
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
			local transformLineHeight = EID.lineHeight
			if EID.Config["TransformationIcons"] then
				transformLineHeight = math.max(EID.lineHeight, transformSprite[4])
				local iconSprite = transformSprite[7] or EID.InlineIconSprite
				iconSprite:Play(transformSprite[1])
				EID:renderIcon(
					iconSprite,
					renderPos.X + iconOffsetX * EID.Config["Scale"],
					renderPos.Y + iconOffsetY * EID.Config["Scale"]
				)
			end
			if EID.Config["TransformationText"] then
				local textOffsetY = math.min(0, (iconHeight - 9)) / 4
				EID:renderString(
					transformationName,
					renderPos + (Vector(iconWidth + 4, textOffsetY)* EID.Config["Scale"]),
					textScale,
					EID:getTransformationColor()
				)
			end
			if (EID.Config["TransformationIcons"] or EID.Config["TransformationText"]) then
				renderPos.Y = renderPos.Y + transformLineHeight * EID.Config["Scale"]
			end
		end
	end
	EID:printBulletPoints(desc.Description, renderPos)
end

function EID:printBulletPoints(description, renderPos)
	local textboxWidth = tonumber(EID.Config["TextboxWidth"])
	local textScale = Vector(EID.Config["Scale"], EID.Config["Scale"])
	description = EID:replaceShortMarkupStrings(description)

	for line in string.gmatch(description, "([^#]+)") do
		local formatedLines = EID:fitTextToWidth(line, textboxWidth)
		local textColor = EID:getTextColor()
		for i, lineToPrint in ipairs(formatedLines) do
			-- render bulletpoint
			if i == 1 then
				local bpIcon = EID:handleBulletpointIcon(lineToPrint)
				if EID:getIcon(bpIcon) ~= EID.InlineIcons["ERROR"] then
					lineToPrint = string.gsub(lineToPrint, bpIcon .. " ", "")
				end

				textColor =	EID:renderString(bpIcon, renderPos, textScale , textColor)
			end
			textColor =	EID:renderString(lineToPrint, renderPos + Vector(12 * EID.Config["Scale"], 0), textScale, textColor)
				renderPos.Y = renderPos.Y + EID.lineHeight * EID.Config["Scale"]
		end
	end
end

---------------------------------------------------------------------------
---------------------------Handle Rendering--------------------------------

function EID:renderQuestionMark()
	EID.IconSprite:Play("CurseOfBlind")
	local pos = EID:getTextPosition()
	EID:renderIcon(EID.IconSprite, pos.X + 5 * EID.Config["Scale"], pos.X + 5 * EID.Config["Scale"])
end

function EID:renderIndicator(entity)
	if EID.Config["Indicator"] == "blink" then
		local c = 255 - math.floor(255 * ((entity.FrameCount % 40) / 40))
		entity:SetColor(Color(1, 1, 1, 1, c, c, c), 1, 1, false, false)
		entity:Render(nullVector)
		entity:SetColor(Color(1, 1, 1, 1, 0, 0, 0), 2, 1, false, false)
	elseif EID.Config["Indicator"] == "border" then
		local c = 255 - math.floor(255 * ((entity.FrameCount % 40) / 40))
		entity:SetColor(Color(1, 1, 1, 1, c, c, c), 1, 1, false, false)
		entity:Render(Vector(0, 1))
		entity:Render(Vector(0, -1))
		entity:Render(Vector(1, 0))
		entity:Render(Vector(-1, 0))
		entity:SetColor(Color(1, 1, 1, 1, 0, 0, 0), 2, 1, false, false)
		entity:Render(nullVector)
	elseif EID.Config["Indicator"] == "highlight" then
		entity:SetColor(Color(1, 1, 1, 1, 255, 255, 255), 1, 1, false, false)
		entity:Render(Vector(0, 1))
		entity:Render(Vector(0, -1))
		entity:Render(Vector(1, 0))
		entity:Render(Vector(-1, 0))
		entity:SetColor(Color(1, 1, 1, 1, 0, 0, 0), 2, 1, false, false)
		entity:Render(nullVector)
	elseif EID.Config["Indicator"] == "arrow" then
		ArrowSprite:Update()
		local ArrowOffset = Vector(0, -35)
		if entity.Variant == 100 and not entity:ToPickup():IsShopItem() then
			ArrowOffset = Vector(0, -62)
		end
		ArrowSprite:Render(Game():GetRoom():WorldToScreenPosition(entity.Position + ArrowOffset), nullVector, nullVector)
	end
end

---------------------------------------------------------------------------
---------------------------On Render Function------------------------------

local function onRender(t)
	EID.isDisplayingText = false
	if Input.IsButtonTriggered(EID.Config["HideKey"], 0) then
		EID.isHidden = not EID.isHidden
	end
	if EID.isHidden then
		return
	elseif EID.Config["HideInBattle"] then
		if Isaac.CountBosses() > 0 or Isaac.CountEnemies() > 0 then
			return
		end
	end
	
	EID:renderMCMDummyDescription()

	local player = Isaac.GetPlayer(0)
	if player:HasCollectible(CollectibleType.COLLECTIBLE_SCHOOLBAG) then
		EID:addTextPosModifier("Schoolbag", Vector(0,30))
	end

	if EID.isDisplayingPermanent and EID.permanentDisplayTextObj ~= nil then
		EID:printDescription(EID.permanentDisplayTextObj)
		EID.isDisplayingText = true
		return
	end

	local closest = nil
	local closestDice = nil
	local dist = 10000
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

	if dist / 40 > tonumber(EID.Config["MaxDistance"]) or not closest.Type == EntityType.ENTITY_PICKUP then
		if Game():GetRoom():GetType() == RoomType.ROOM_SACRIFICE and EID.Config["DisplaySacrificeInfo"] then
			EID:printDescription(EID:getDescriptionObj(-999, -1, EID.sacrificeCounter))
		end
		if
			Game():GetRoom():GetType() == RoomType.ROOM_DICE and EID.Config["DisplayDiceInfo"] and type(closestDice) ~= type(nil)
		 then
			EID:printDescription(EID:getDescriptionObj(-999, -2, closestDice.SubType + 1))
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

	--Handle GetData Entities (specific)
	if EID.Config["EnableEntityDescriptions"] and type(closest:GetData()["EID_Description"]) ~= type(nil) then
		local desc = closest:GetData()["EID_Description"]
		local origDesc = EID:getDescriptionObj(closest.Type, closest.Variant, closest.SubType)
		if type(desc) == "table" then
			origDesc.Description = desc.Description or origDesc.Description
			origDesc.Name = desc.Name or origDesc.Name
			origDesc.Transformation = desc.Transformation or origDesc.Transformation
		else
			origDesc.Description = desc
		end
		EID:printDescription(origDesc)
		return
	end
	
	if closest.Variant == PickupVariant.PICKUP_TRINKET then
		--Handle Trinkets
		EID:printDescription(EID:getDescriptionObj(closest.Type, closest.Variant, closest.SubType))
	elseif closest.Variant == PickupVariant.PICKUP_COLLECTIBLE then
		--Handle Collectibles
		if EID:hasCurseBlind() and EID.Config["DisableOnCurse"] then
			EID:renderQuestionMark()
			return
		end
		EID:printDescription(EID:getDescriptionObj(closest.Type, closest.Variant, closest.SubType))
	elseif closest.Variant == PickupVariant.PICKUP_TAROTCARD then
		--Handle Cards & Runes
		if closest:ToPickup():IsShopItem() and not EID.Config["DisplayCardInfoShop"] then
			EID:renderQuestionMark()
			return
		end
		EID:printDescription(EID:getDescriptionObj(closest.Type, closest.Variant, closest.SubType))
	elseif closest.Variant == PickupVariant.PICKUP_PILL then
		--Handle Pills
		if closest:ToPickup():IsShopItem() and not EID.Config["DisplayPillInfoShop"] then
			EID:renderQuestionMark()
			return
		end

		local pillColor = closest.SubType
		local pool = Game():GetItemPool()
		local identified = pool:IsPillIdentified(pillColor)
		if (identified or EID.Config["ShowUnidentifiedPillDescriptions"]) then
			local descEntry = EID:getDescriptionObj(closest.Type, closest.Variant, pillColor)
			descEntry["realSubType"] = pillColor
			EID:printDescription(descEntry)
		else
			EID:renderString(
				"{{Pill"..pillColor.."}} "..EID:getDescriptionTable("unidentifiedPill"),
				EID:getTextPosition(),
				Vector(EID.Config["Scale"], EID.Config["Scale"]),
				EID:getErrorColor()
			)
		end
	elseif EID.Config["EnableEntityDescriptions"] then
		--Handle Entities (omni)
		local descriptionEntry = EID:getDescriptionObj(closest.Type, closest.Variant, closest.SubType)
		if descriptionEntry~=nil then
		   EID:printDescription(descriptionEntry)
		   return
	   end
	end
end

EID:AddCallback(ModCallbacks.MC_POST_RENDER, onRender)

-- only save and load configs when using MCM. Otherwise Config file changes arent calid
if EID.MCMLoaded then
	local json = require("json")
	--------------------------------
	--------Handle Savadata---------
	--------------------------------
	function OnGameStart(isSave)
		--Loading Moddata--
		if EID:HasData() then
			local savedEIDConfig = json.decode(Isaac.LoadModData(EID))
			-- Only copy Saved config entries that exist in the save
			if savedEIDConfig.Version == EID.Config.Version then
				for key, value in pairs(EID.Config) do
					if savedEIDConfig[key] ~= nil then
						EID.Config[key] = savedEIDConfig[key]
					end
				end
				EID.isHidden = EID.Config["Hidden"]
				EID:loadFont(EID.modPath .. "resources/font/eid_"..EID.Config["FontType"]..".fnt")
			end
		end
	end
	EID:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, OnGameStart)

	--Saving Moddata--
	function SaveGame()
		EID.SaveData(EID, json.encode(EID.Config))
	end
	EID:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT, SaveGame)
end

require("eid_debugging")