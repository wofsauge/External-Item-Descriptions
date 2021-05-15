EID = RegisterMod("External Item Descriptions", 1)
-- important variables
EID.GameVersion = "ab+"
EID.Languages = {"en_us", "en_us_detailed", "fr", "pt", "pt_br", "ru", "spa", "it", "bul", "pl", "de", "turkish"}
EID.descriptions = {} -- Table that holds all translation strings
local enableDebug = false

require("eid_config")
EID.Config = EID.DefaultConfig
EID.Config.Version = "3.2"
EID.isHidden = EID.Config["Hidden"]

-- general variables
EID.PositionModifiers = {}
EID.UsedPosition = Vector(EID.Config["XPosition"], EID.Config["YPosition"])
EID.isDisplaying = false
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

-- load Repentence descriptions
if REPENTANCE then
	EID.GameVersion = "rep"
	for _,lang in ipairs(EID.Languages) do
		local wasSuccessful, err = pcall(require,"descriptions."..EID.GameVersion.."."..lang)
		if not wasSuccessful and not string.find(err, "not found") then
			Isaac.ConsoleOutput("Load rep "..lang.." failed: "..tostring(err))
		end
	end
	local wasSuccessful, _ = pcall(require,"descriptions."..EID.GameVersion..".transformations")
	require("eid_bagOfCrafting")
end

EID.LastRenderCallColor = EID:getTextColor()
local nullVector = Vector(0,0)

---------------------------------------------------------------------------
------------------------------- Load Font ---------------------------------
local isluadebug, os = pcall(require,"os")
local modfolder ='external item descriptions_836319872' --release mod folder name
if not REPENTANCE then
	if isluadebug then
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
else
	EID.modPath = "../mods/"..modfolder.."/"
end

EID.font = Font() -- init font object
local fontFile = EID.Config["FontType"] or "default"
local success = EID:loadFont(EID.modPath .. "resources/font/eid_"..fontFile..".fnt")
if not success then
	Isaac.ConsoleOutput("EID WAS NOT ABLE TO LOAD THE FONT!!!!!!!! Please contact the mod creator!\n")
	Isaac.ConsoleOutput("File does not exist: "..EID.modPath .. "resources/font/eid_"..fontFile..".fnt")
	return
end

---------------------------------------------------------------------------
-------------------------Handle Sacrifice Room-----------------------------
if EID.Config["DisplaySacrificeInfo"] then
	function EID:onNewFloor()
		EID.sacrificeCounter = 1
	end
	EID:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, EID.onNewFloor)

	function EID:onSacrificeDamage(_, _, flags, source)
		if Game():GetRoom():GetType() == RoomType.ROOM_SACRIFICE and source.Type == 0 and flags & DamageFlag.DAMAGE_SPIKES == DamageFlag.DAMAGE_SPIKES then
			if EID.sacrificeCounter < 12 then
				EID.sacrificeCounter = EID.sacrificeCounter + 1
			end
		end
	end
	EID:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, EID.onSacrificeDamage, EntityType.ENTITY_PLAYER)
end

---------------------------------------------------------------------------
------------------------Handle ALT FLOOR CHOICE----------------------------
if REPENTANCE then
	local altPathItemCounter = 0
	local lastHidePosition = nullVector -- stores lastHide position to store Hide between Morphs / rerolls

	function EID:onCollectibleInit(pickup)
		if pickup:GetData()["EID_IsAltChoise"] ~= nil then
			return
		end
		pickup:GetData()["EID_IsAltChoise"] = false
		if Game():GetRoom():GetType() == RoomType.ROOM_TREASURE and Game():GetLevel():GetStageType() > 3 and pickup.OptionsPickupIndex == 1 then
			if altPathItemCounter == 1 and not Isaac.GetPlayer(0):HasCollectible(668) or (pickup.Position - lastHidePosition):Length() < 0.1 then
				pickup:GetData()["EID_IsAltChoise"] = true
				lastHidePosition = pickup.Position
			end
			altPathItemCounter = altPathItemCounter + 1
		end
	end
	EID:AddCallback(ModCallbacks.MC_POST_PICKUP_UPDATE, EID.onCollectibleInit, PickupVariant.PICKUP_COLLECTIBLE)

	function EID:resetAltPathCounter()
		altPathItemCounter = 0
		lastHidePosition = nullVector
	end
	EID:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, EID.resetAltPathCounter)
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
			offsetX = offsetX + 14
			EID:renderString(
				"{{" .. iconType .. renderID .. "}}",
				renderPos + (Vector(-3, -4) * EID.Config["Scale"]),
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
		local curName = desc.Name
		if EID.Config["TranslateItemName"] ~= 2 then
			local curLanguage = EID.Config["Language"]
			EID.Config["Language"] = "en_us"
			local englishName = EID:getObjectName(desc.ItemType, desc.ItemVariant, desc.ID)
			EID.Config["Language"] = curLanguage
			if EID.Config["TranslateItemName"] == 1 then
				curName = englishName
			elseif EID.Config["TranslateItemName"] == 3 and curName ~= englishName then
				curName = curName.." ("..englishName..")"
			end
		end
		EID:renderString(
			curName,
			renderPos + (Vector(offsetX, -3) * EID.Config["Scale"]),
			textScale,
			EID:getNameColor()
		)

		renderPos.Y = renderPos.Y + EID.lineHeight * EID.Config["Scale"]
	end

	--Display Transformation
	if not (desc.Transformation == "0" or desc.Transformation == "" or desc.Transformation == nil) then
		for transform in string.gmatch(desc.Transformation, "([^,]+)") do
			local transformSprite = EID:getTransformationIcon(transform)
			local transformLineHeight = EID.lineHeight
			if EID.Config["TransformationIcons"] then
				transformLineHeight = math.max(EID.lineHeight, transformSprite[4])
				EID:renderInlineIcons({{transformSprite,0}}, renderPos.X, renderPos.Y)
			end
			if EID.Config["TransformationText"] then
				local transformationName = EID:getTransformationName(transform)
				local iconWidth = transformSprite[3] or -1
				local iconHeight = transformSprite[4] or -1
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
	EID:renderIcon(EID.IconSprite, pos.X + 5 * EID.Config["Scale"], pos.Y + 5 * EID.Config["Scale"])
end

function EID:renderIndicator(entity)
	if EID.Config["Indicator"] == "none" then
		return
	end
	local repDiv = 1
	if REPENTANCE then
		repDiv = 255
	end
	local sprite = entity:GetSprite()
	local entityPos = Game():GetRoom():WorldToScreenPosition(entity.Position)
	if EID.Config["Indicator"] == "blink" then
		local c = 255 - math.floor(255 * ((entity.FrameCount % 40) / 40))
		sprite.Color = Color(1, 1, 1, 1, c/repDiv, c/repDiv, c/repDiv)
		sprite:Render(entityPos, nullVector, nullVector)
		sprite.Color = Color(1, 1, 1, 1, 0, 0, 0)
	elseif EID.Config["Indicator"] == "border" then
		local c = 255 - math.floor(255 * ((entity.FrameCount % 40) / 40))
		sprite.Color = Color(1, 1, 1, 1, c/repDiv, c/repDiv, c/repDiv)
		sprite:Render(entityPos + Vector(0, 1), nullVector, nullVector)
		sprite:Render(entityPos + Vector(0, -1), nullVector, nullVector)
		sprite:Render(entityPos + Vector(1, 0), nullVector, nullVector)
		sprite:Render(entityPos + Vector(-1, 0), nullVector, nullVector)
		sprite.Color = Color(1, 1, 1, 1, 0, 0, 0)
		sprite:Render(entityPos, nullVector, nullVector)
	elseif EID.Config["Indicator"] == "highlight" then
		sprite.Color = Color(1, 1, 1, 1, 255/repDiv, 255/repDiv, 255/repDiv)
		sprite:Render(entityPos + Vector(0, 1), nullVector, nullVector)
		sprite:Render(entityPos + Vector(0, -1), nullVector, nullVector)
		sprite:Render(entityPos + Vector(1, 0), nullVector, nullVector)
		sprite:Render(entityPos + Vector(-1, 0), nullVector, nullVector)
		sprite.Color = Color(1, 1, 1, 1, 0, 0, 0)
		sprite:Render(entityPos, nullVector, nullVector)
	elseif EID.Config["Indicator"] == "arrow" then
		ArrowSprite:Update()
		local ArrowOffset = Vector(0, -35)
		if entity.Variant == 100 and not entity:ToPickup():IsShopItem() then
			ArrowOffset = Vector(0, -62)
		end
		ArrowSprite:Render(Game():GetRoom():WorldToScreenPosition(entity.Position + ArrowOffset), nullVector, nullVector)
	end
end

local randResultCache = {}

EID.bagOfCraftingOffset = 0

local function handleBagOfCraftingRendering()
	local results = {}
	local bagItems = {} -- TODO: Get content of Bag
	local floorItems = {}
	for i, entity in ipairs(Isaac.FindByType(5, -1, -1, true, false)) do
		local craftingIDs = EID:getBagOfCraftingID(entity.Variant, entity.SubType)
		if craftingIDs ~= nil then
			for _,v in ipairs(craftingIDs) do
				table.insert(floorItems, v)
			end
		end
	end
	-- Calculate result from pickups on floor
	if #floorItems < 8 then
		return false
	end
	
	local queryString = table.concat(floorItems,",")
	if randResultCache[queryString] == nil then
		local randResults = {}

		for i = 0, 250 do
			local newTable = {}
			local tableCopy = {table.unpack(floorItems)}
			for k = 1, 8 do
				local pos = math.random(1, #tableCopy)
				table.insert(newTable, tableCopy[pos])
				table.remove(tableCopy, pos)
			end
			table.sort(newTable, function(a, b) return a > b end)
			randResults[table.concat(newTable,",")] = newTable
		end
		local calcResults = {}
		for k, v in pairs(randResults) do
			local resultID = EID:calculateBagOfCrafting(v)
			if resultID > 0 then
				table.insert(calcResults, {v, resultID})
			end
		end
		randResultCache[queryString] = calcResults
		results = calcResults
		EID.bagOfCraftingOffset = 0
	else
		results = randResultCache[queryString]
	end
	
	if #results == 0 then
		EID.bagOfCraftingOffset = 0
		return false
	end
	
	local customDescObj = EID:getDescriptionObj(5, 100, 710)
	local roomDesc = EID.descriptions[EID.Config["Language"]].CraftingRoomContent or EID.descriptions["en_us"].CraftingRoomContent
	local resultDesc = EID.descriptions[EID.Config["Language"]].CraftingResults or EID.descriptions["en_us"].CraftingResults
	customDescObj.Description = roomDesc.."#"..EID:tableToCraftingIconsMerged(floorItems).."#"..resultDesc
	
	if Input.IsActionPressed(ButtonAction.ACTION_MAP, 0) or Input.IsActionPressed(ButtonAction.ACTION_MAP, 1) then
		if Input.IsActionTriggered(ButtonAction.ACTION_SHOOTDOWN, 0) or  Input.IsActionTriggered(ButtonAction.ACTION_SHOOTDOWN, 1) then
			EID.bagOfCraftingOffset = math.min(#results-(#results%EID.Config["BagOfCraftingResults"]), EID.bagOfCraftingOffset + EID.Config["BagOfCraftingResults"])
		elseif Input.IsActionTriggered(ButtonAction.ACTION_SHOOTUP, 0) or  Input.IsActionTriggered(ButtonAction.ACTION_SHOOTUP, 1) then
			EID.bagOfCraftingOffset = math.max(0, EID.bagOfCraftingOffset - EID.Config["BagOfCraftingResults"])
		end
		Isaac.GetPlayer(0).ControlsEnabled = false
	else
		Isaac.GetPlayer(0).ControlsEnabled = true
	end
	
	local resultCount = 0
	local skips = 0
	for quality = 4, 0, -1 do -- sort by result quality
		for i, v in ipairs(results) do
			if EID.itemWeightsLookup[v[2]]== quality then
				if skips < EID.bagOfCraftingOffset then
					skips = skips + 1
					if skips == EID.bagOfCraftingOffset then
						customDescObj.Description = customDescObj.Description.."#{{Blank}} ...+"..skips.." more"
					end
				else
					customDescObj.Description = customDescObj.Description.."# {{Collectible"..v[2].."}} ="
					customDescObj.Description = customDescObj.Description..EID:tableToCraftingIconsMerged(v[1])
					resultCount = resultCount + 1
					if resultCount > EID.Config["BagOfCraftingResults"]-1 then
						if #results > EID.Config["BagOfCraftingResults"] then
							customDescObj.Description = customDescObj.Description.."#{{Blank}} ...+"..(#results-EID.Config["BagOfCraftingResults"]- skips).." more"
						end
						break
					end
				end
			end
		end
		if resultCount > EID.Config["BagOfCraftingResults"]-1 then
			break
		end
	end
	EID:printDescription(customDescObj)
	return true
end

---------------------------------------------------------------------------
---------------------------On Render Function------------------------------

local function onRender(t)
	EID.isDisplaying = false
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
	if EID.GameVersion == "ab+" then
		if player:HasCollectible(CollectibleType.COLLECTIBLE_SCHOOLBAG) then
			EID:addTextPosModifier("Schoolbag", Vector(0,30))
		else
			EID:removeTextPosModifier("Schoolbag")
		end
	else
		if player.SubType == 21 or player.SubType == 25 then -- T-Isaac, T-Blue Baby
			EID:addTextPosModifier("Tained HUD", Vector(0,30))
		else
			EID:removeTextPosModifier("Tained HUD")
		end
		if player:HasCollectible(710) and EID.Config["DisplayBagOfCrafting"] ~= "never" then
			if EID.Config["DisplayBagOfCrafting"] == "always" or (EID.Config["DisplayBagOfCrafting"] == "hold" and string.find(player:GetSprite():GetAnimation(), "PickupWalk")) then
				local success = handleBagOfCraftingRendering()
				if success then
					return
				end
			end
		end
	end

	if EID.isDisplayingPermanent and EID.permanentDisplayTextObj ~= nil then
		EID:printDescription(EID.permanentDisplayTextObj)
		EID.isDisplaying = true
		return
	end

	local closest = nil
	local dist = 10000
	for i, entity in ipairs(Isaac.GetRoomEntities()) do
		if EID:hasDescription(entity) and entity.FrameCount > 0 then
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
		return
	end

	if closest == nil then
		return
	end
	EID.lastDescriptionEntity = closest
	EID.isDisplaying = true

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

	if closest.Type == 1000 and closest.Variant == 76 then
		EID:printDescription(EID:getDescriptionObj(closest.Type, closest.Variant, closest.SubType+1))
		return
	end
	
	if closest.Variant == PickupVariant.PICKUP_TRINKET then
		--Handle Trinkets
		local trinketID = closest.SubType
		local isGoldenTrinket = false
		if trinketID > 32768 then
			trinketID = trinketID - 32768
			isGoldenTrinket = true
		end
		local descriptionObj = EID:getDescriptionObj(closest.Type, closest.Variant, trinketID)
		if isGoldenTrinket then
			local goldenDesc = EID.descriptions[EID.Config["Language"]].goldenTrinket or EID.descriptions["en_us"].goldenTrinket or ""
			descriptionObj.Description = "{{ColorGold}}"..goldenDesc.."#"..descriptionObj.Description
		end
		EID:printDescription(descriptionObj)
	elseif closest.Variant == PickupVariant.PICKUP_COLLECTIBLE then
		--Handle Collectibles
		if (EID:hasCurseBlind() and EID.Config["DisableOnCurse"]) or (closest:GetData()["EID_IsAltChoise"] and EID.Config["DisableOnAltPath"]) then
			EID:renderQuestionMark()
			return
		end
		local descriptionObj = EID:getDescriptionObj(closest.Type, closest.Variant, closest.SubType)
		
		if REPENTANCE then
			-- Handle Birthright
			if closest.SubType == 619 then
				local playerID = player.SubType + 1
				local birthrightDesc = EID.descriptions[EID.Config["Language"]]["birthright"][playerID] or EID.descriptions["en_us"]["birthright"][playerID] or nil
				if birthrightDesc ~=nil then
					local playerName = birthrightDesc[1] or player:GetName()
					descriptionObj.Description = "{{CustomTransformation}} {{ColorGray}}"..playerName.."{{CR}}#"..birthrightDesc[3]
				end
			end
			-- Handle Spindown Dice description addition
			if player:HasCollectible(723) then
				descriptionObj.Description = descriptionObj.Description.."#{{Collectible723}} :"
				local refID = closest.SubType
				for i = 1,EID.Config["SpindownDiceResults"] do
					local spinnedID = EID:getSpindownResult(refID)
					refID = spinnedID
					if spinnedID > 0 then
						descriptionObj.Description = descriptionObj.Description.."{{Collectible"..spinnedID.."}}"
						if i ~= EID.Config["SpindownDiceResults"] then
							descriptionObj.Description = descriptionObj.Description.." ->"
						end
					else
						local errorMsg = EID.descriptions[EID.Config["Language"]]["spindownError"] or EID.descriptions["en_us"]["spindownError"] or nil
						descriptionObj.Description = descriptionObj.Description..errorMsg
						break
					end
				end
			end
		end
		EID:printDescription(descriptionObj)
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

if enableDebug then
	require("eid_debugging")
end