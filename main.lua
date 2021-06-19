EID = RegisterMod("External Item Descriptions", 1)
-- important variables
EID.GameVersion = "ab+"
EID.Languages = {"en_us", "en_us_detailed", "fr", "pt", "pt_br", "ru", "spa", "it", "bul", "pl", "de", "tr_tr"}
EID.descriptions = {} -- Table that holds all translation strings
local enableDebug = false
local game = Game()

require("eid_config")
EID.Config = EID.UserConfig
EID.Config.Version = "3.2"
EID.DefaultConfig.Version = EID.Config.Version
EID.isHidden = EID.Config["Hidden"]
EID.player = nil

-- general variables
EID.PositionModifiers = {}
EID.DescModifiers = {}
EID.UsedPosition = Vector(EID.Config["XPosition"], EID.Config["YPosition"])
EID.isDisplaying = false
EID.isDisplayingPermanent = false
EID.permanentDisplayTextObj = nil
EID.lastDescriptionEntity = nil
EID.lineHeight = 11
EID.sacrificeCounter = {}
EID.itemConfig = Isaac.GetItemConfig()
EID.effectList = {["76"] = true}

-- Sprite inits
EID.IconSprite = Sprite()
EID.IconSprite:Load("gfx/eid_transform_icons.anm2", true)

EID.InlineIconSprite = Sprite()
EID.InlineIconSprite:Load("gfx/eid_inline_icons.anm2", true)
EID.InlineIconSprite2 = Sprite()
EID.InlineIconSprite2:Load("gfx/eid_inline_icons.anm2", true)

EID.CardPillSprite = Sprite()
EID.CardPillSprite:Load("gfx/eid_cardspills.anm2", true)

EID.ItemSprite = Sprite()
EID.ItemSprite:Load("gfx/005.100_collectible.anm2", true)

local ArrowSprite = Sprite()
ArrowSprite:Load("gfx/eid_transform_icons.anm2", true)
ArrowSprite:Play("Arrow", false)

EID.CursorSprite = Sprite()
EID.CursorSprite:Load("gfx/eid_transform_icons.anm2", true)
EID.CursorSprite:Play("Cursor")

local hudBBSprite = Sprite()
hudBBSprite:Load("gfx/eid_transform_icons.anm2", true)
hudBBSprite:Play("boundingBox")

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
require("eid_modifiers")

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

EID.font = Font() -- init font object
local fontFile = EID.Config["FontType"] or "default"
local success = EID:loadFont(EID.modPath .. "resources/font/eid_"..fontFile..".fnt")
if not success then
	if REPENTANCE then
		success = EID:loadFont("../mods/"..modfolder.."/resources/font/eid_"..fontFile..".fnt")
		if not success then 
			Isaac.ConsoleOutput("EID WAS NOT ABLE TO LOAD THE FONT!!!!!!!! Please contact the mod creator!\n")
			Isaac.ConsoleOutput("File not found (absolute path): "..EID.modPath .. "resources/font/eid_"..fontFile..".fnt\n")
			Isaac.ConsoleOutput("File not found (relative path): ../mods/"..modfolder.."/resources/font/eid_"..fontFile..".fnt")
			return
		else
			EID.modPath = "../mods/"..modfolder.."/"
		end
	else
		Isaac.ConsoleOutput("EID WAS NOT ABLE TO LOAD THE FONT!!!!!!!! Please contact the mod creator!\n")
		Isaac.ConsoleOutput("File does not exist: "..EID.modPath .. "resources/font/eid_"..fontFile..".fnt")
		return
	end
end

---------------------------------------------------------------------------
-------------------------Handle Sacrifice Room-----------------------------
	function EID:onNewFloor()
		EID.sacrificeCounter = {}
	end
	EID:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, EID.onNewFloor)

if EID.Config["DisplaySacrificeInfo"] then
	function EID:onSacrificeDamage(_, _, flags, source)
		if game:GetRoom():GetType() == RoomType.ROOM_SACRIFICE and source.Type == 0 and flags & DamageFlag.DAMAGE_SPIKES == DamageFlag.DAMAGE_SPIKES then
			local curRoomIndex = game:GetLevel():GetCurrentRoomIndex()
			if EID.sacrificeCounter[curRoomIndex] == nil then
				EID.sacrificeCounter[curRoomIndex] = 1
			end
			if EID.sacrificeCounter[curRoomIndex] < 12 then
				EID.sacrificeCounter[curRoomIndex] = EID.sacrificeCounter[curRoomIndex] + 1
			end
		end
	end
	EID:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, EID.onSacrificeDamage, EntityType.ENTITY_PLAYER)
end

---------------------------------------------------------------------------
------------------------Handle ALT FLOOR CHOICE----------------------------

local questionMarkSprite = Sprite()
questionMarkSprite:Load("gfx/005.100_collectible.anm2",true)
questionMarkSprite:ReplaceSpritesheet(1,"gfx/items/collectibles/questionmark.png")
questionMarkSprite:LoadGraphics()

function EID:IsAltChoise(pickup)
	local data = pickup:GetData()
	if data["EID_IsAltChoise"] ~= nil then
		return data["EID_IsAltChoise"]
	end

	if not REPENTANCE then
		data["EID_IsAltChoise"] = false
		return false
	end

	local entitySprite = pickup:GetSprite()
	local name = entitySprite:GetAnimation()

	if name ~= "Idle" and name ~= "ShopIdle" then
		-- Collectible can be ignored. its definetly not hidden
		data["EID_IsAltChoise"] = false
		return false
	end

	questionMarkSprite:SetFrame(name,entitySprite:GetFrame())
	-- check some point in entitySprite
	for i = -70,0,2 do
		local qcolor = questionMarkSprite:GetTexel(Vector(0,i),nullVector,1,1)
		local ecolor = entitySprite:GetTexel(Vector(0,i),nullVector,1,1)
		if qcolor.Red ~= ecolor.Red or qcolor.Green ~= ecolor.Green or qcolor.Blue ~= ecolor.Blue then
			-- it is not same with question mark sprite
			data["EID_IsAltChoise"] = false
			return false
		end
	end

	--this may be a question mark, however, we will check it again to ensure it
	for j = -3,3,2 do
		for i = -71,0,2 do
			local qcolor = questionMarkSprite:GetTexel(Vector(j,i),nullVector,1,1)
			local ecolor = entitySprite:GetTexel(Vector(j,i),nullVector,1,1)
			if qcolor.Red ~= ecolor.Red or qcolor.Green ~= ecolor.Green or qcolor.Blue ~= ecolor.Blue then
				data["EID_IsAltChoise"] = false
				return false
			end
		end
	end
	data["EID_IsAltChoise"] = true
	return true
end

---------------------------------------------------------------------------
---------------------------Printing Functions------------------------------

function EID:printDescription(desc)
	local textScale = Vector(EID.Config["Scale"], EID.Config["Scale"])
	local renderPos = EID:getTextPosition()
	local offsetX = 0
	if EID.Config["ShowItemIcon"] then
		local iconType = nil
		if desc.ObjType == 5 then
			if desc.ObjVariant == 100 then
				iconType = "Collectible"
			elseif desc.ObjVariant == 350 then
				iconType = "Trinket"
			elseif desc.ObjVariant == 300 then
				iconType = "Card"
			elseif desc.ObjVariant == 70 then
				iconType = "Pill"
			end
		end
		if iconType ~= nil then
			offsetX = offsetX + 14
			EID:renderString(
				"{{" .. iconType .. desc.ObjSubType .. "}}",
				renderPos + (Vector(-3, -4) * EID.Config["Scale"]),
				textScale,
				EID:getNameColor()
			)
		end
	end
	--Display ItemType / Charge
	local itemType = -1
	if tonumber(desc.ObjSubType) ~= nil and desc.ObjType == 5 and desc.ObjVariant == 100 then
		itemType = EID.itemConfig:GetCollectible(tonumber(desc.ObjSubType)).Type or -1
	end
	if EID.Config["ShowItemType"] and (itemType == 3 or itemType == 4) then
		local offsetY = 2
		if EID.Config["Scale"] < 1 then
			offsetY = -1
		end
		EID.IconSprite:Play(EID.ItemTypeAnm2Names[itemType])
		EID:renderIcon(EID.IconSprite, renderPos.X + offsetX * EID.Config["Scale"], renderPos.Y + offsetY * EID.Config["Scale"])
		if itemType == 3 then
		 -- Display Charge
			offsetX = offsetX + 1
			local curItemConfig = EID.itemConfig:GetCollectible(desc.ObjSubType)
			if REPENTANCE and curItemConfig.ChargeType == ItemConfig.CHARGE_TIMED then
				EID.InlineIconSprite2:SetFrame("pickups", 10) -- Timer Icon
			elseif REPENTANCE and (curItemConfig.ChargeType == ItemConfig.CHARGE_SPECIAL or desc.ObjSubType == CollectibleType.COLLECTIBLE_BLANK_CARD or desc.ObjSubType == CollectibleType.COLLECTIBLE_PLACEBO or 
			desc.ObjSubType == CollectibleType.COLLECTIBLE_CLEAR_RUNE or desc.ObjSubType == CollectibleType.COLLECTIBLE_D_INFINITY) then
				EID.InlineIconSprite2:SetFrame("numbers", 13)
			else
				EID.InlineIconSprite2:SetFrame("numbers", curItemConfig.MaxCharges)
			end
			EID:renderIcon(EID.InlineIconSprite2, renderPos.X + offsetX * EID.Config["Scale"], renderPos.Y + offsetY * EID.Config["Scale"])
			offsetX = offsetX + 8
		elseif itemType == 4 then
		-- familiar
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
			local englishName = EID:getObjectName(desc.ObjType, desc.ObjVariant, desc.ObjSubType)
			EID.Config["Language"] = curLanguage
			if EID.Config["TranslateItemName"] == 1 then
				curName = englishName
			elseif EID.Config["TranslateItemName"] == 3 and curName ~= englishName then
				curName = curName.." ("..englishName..")"
			end
		end
		if REPENTANCE and EID.Config["ShowQuality"] and desc.ObjVariant == PickupVariant.PICKUP_COLLECTIBLE then
			local quality = tonumber(EID.itemConfig:GetCollectible(tonumber(desc.ObjSubType)).Quality)
			curName = curName.." - {{Quality"..quality.."}}"
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
					textColor =	EID:renderString(bpIcon, renderPos + Vector(-3 * EID.Config["Scale"], 0), textScale , textColor)
				else
					textColor =	EID:renderString(bpIcon, renderPos, textScale , textColor)
				end
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
	local entityPos = Isaac.WorldToScreen(entity.Position)
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
		ArrowSprite:Render(Isaac.WorldToScreen(entity.Position + ArrowOffset), nullVector, nullVector)
	end
end

function EID:renderHUDLocationIndicators()
	local mousePos = Input.GetMousePosition(false)
	Isaac.RenderScaledText("Mouse pos   X:"..mousePos.X.." Y:"..mousePos.Y, 100, 10, 0.5, 0.5, 1 ,1 ,1 ,1 )
	Isaac.RenderScaledText("HUD Adjustment Preview!", 200, 10, 1, 1, 1 ,0.25 ,0.25 ,1 )
	for k, v in pairs(EID.HUDElements) do
		local hudElement = EID:handleHUDElement(v)
		hudBBSprite.Scale = Vector(hudElement.width/2, hudElement.height/2)
		hudBBSprite.Color = Color(1, 1, 1, EID.Config["Transparency"], 0, 0, 0)
		hudBBSprite:Render(Vector(hudElement.x/2, hudElement.y/2), nullVector, nullVector)
		Isaac.RenderScaledText(k, hudElement.x/2, hudElement.y/2, 0.5, 0.5, 1, 1, 1 ,1)
	end
end

function EID:handleHoverHUD()
	local mousePos = Input.GetMousePosition(false)
	if EID.Config["ShowCursor"] then
		EID.CursorSprite:Render(Vector(mousePos.X/2, mousePos.Y/2), nullVector, nullVector)
	end
	for k, v in pairs(EID.HUDElements) do
		local hudElement = EID:handleHUDElement(v)
		if hudElement.x <= mousePos.X and (hudElement.x + hudElement.width) >= mousePos.X and hudElement.y <= mousePos.Y and (hudElement.y + hudElement.height) >= mousePos.Y then
			return hudElement.descriptionObj() or nil
		end
	end
	return nil
end

---------------------------------------------------------------------------
---------------------------On Update Function------------------------------

EID.lastDescriptionEntity = nil
EID.lastDist = 0
EID.pathCheckerEntity = nil
EID.hasValidWalkingpath = true

function EID:onGameUpdate()
	EID.player = Isaac.GetPlayer(0)
	if not EID.Config["DisplayObstructedCardInfo"] or not EID.Config["DisplayObstructedPillInfo"] then
		if EID.lastDescriptionEntity == nil or (EID.Config["DisableObstructionOnFlight"] and EID.player.CanFly) then
			if EID.pathCheckerEntity ~= nil then
				EID.pathCheckerEntity:Remove()
				EID.pathCheckerEntity = nil
				EID.hasValidWalkingpath = true
			end
			return
		end
		if EID.pathCheckerEntity == nil then
			EID.pathCheckerEntity = game:Spawn(17, 69420, EID.player.Position, nullVector, EID.player ,0 , 4354) -- Spawns the EID Helper entity with seed that doesnt spawn rewards
			EID.pathCheckerEntity:ClearEntityFlags(EntityFlag.FLAG_APPEAR)
			EID.pathCheckerEntity:AddEntityFlags (EntityFlag.FLAG_PERSISTENT | EntityFlag.FLAG_NO_STATUS_EFFECTS | EntityFlag.FLAG_NO_SPRITE_UPDATE | EntityFlag.FLAG_HIDE_HP_BAR | EntityFlag.FLAG_NO_DEATH_TRIGGER)
			EID.pathCheckerEntity.EntityCollisionClass = EntityCollisionClass.ENTCOLL_NONE
			EID.hasValidWalkingpath = false
		elseif not EID.pathCheckerEntity:Exists() then
			EID.pathCheckerEntity = nil
		else
			EID.pathCheckerEntity.Position = EID.player.Position
			EID.hasValidWalkingpath = EID.pathCheckerEntity:ToNPC().Pathfinder:HasPathToPos ( EID.lastDescriptionEntity.Position, false )
		end
	end
	
	--Fix Overlapping Pedestals
	local curPositions = {}
	for _, entity in ipairs(Isaac.FindByType(5, 100, -1, true, false)) do
		local pos = entity.Position
		for _, otherPos in ipairs(curPositions) do
			if pos:Distance(otherPos) == 0 then
				entity.Position = entity.Position + Vector(1,0)
				break
			end
		end
		table.insert(curPositions, entity.Position)
	end
end
EID:AddCallback(ModCallbacks.MC_POST_UPDATE, EID.onGameUpdate)


---------------------------------------------------------------------------
---------------------------On Render Function------------------------------
local searchPartitions = EntityPartition.FAMILIAR + EntityPartition.ENEMY + EntityPartition.PICKUP + EntityPartition.PLAYER

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

	EID.player = Isaac.GetPlayer(0)
	if EID.GameVersion == "ab+" then
		if EID.player:HasCollectible(CollectibleType.COLLECTIBLE_SCHOOLBAG) then
			EID:addTextPosModifier("Schoolbag", Vector(0,30))
		else
			EID:removeTextPosModifier("Schoolbag")
		end
	else
		if EID.player.SubType == 21 or EID.player.SubType == 25 then -- T-Isaac, T-Blue Baby
			EID:addTextPosModifier("Tained HUD", Vector(0,30))
		else
			EID:removeTextPosModifier("Tained HUD")
		end
		if EID.player:HasCollectible(710) then
			local success = EID:handleBagOfCraftingRendering()
			if success then
				return
			end
		end
	end

	if EID.isDisplayingPermanent and EID.permanentDisplayTextObj ~= nil then
		EID:printDescription(EID.permanentDisplayTextObj)
		EID.isDisplaying = true
		return
	end
	
	EID.lastDescriptionEntity = nil
	EID.lastDist = 10000
	local searchGroups = {}
	local sourcePos = EID.player.Position
	
	if EID.Config["EnableMouseControls"] then
		local hudDescription = EID:handleHoverHUD()
		if hudDescription then
			EID:printDescription(hudDescription)
			return
		end
	end
	
	table.insert(searchGroups, Isaac.FindInRadius(sourcePos, tonumber(EID.Config["MaxDistance"])*40, searchPartitions))
	for k,_ in pairs(EID.effectList) do
		table.insert(searchGroups, Isaac.FindByType(EntityType.ENTITY_EFFECT, k, -1, true, false))
	end
	
	for _, entitySearch in ipairs(searchGroups) do
		for i, entity in ipairs(entitySearch) do
			if EID:hasDescription(entity) and entity.FrameCount > 0 then
				local diff = entity.Position:__sub(sourcePos)
				if diff:Length() < EID.lastDist then
					EID.lastDescriptionEntity = entity
					EID.lastDist = diff:Length()
				end
			end
		end
	end

	local closest = EID.lastDescriptionEntity

	if EID.lastDist / 40 > tonumber(EID.Config["MaxDistance"]) then
		if game:GetRoom():GetType() == RoomType.ROOM_SACRIFICE and EID.Config["DisplaySacrificeInfo"] then
			local curRoomIndex = game:GetLevel():GetCurrentRoomIndex()
			EID:printDescription(EID:getDescriptionObj(-999, -1, EID.sacrificeCounter[curRoomIndex] or 1))
		end
		return
	end
	
	if closest == nil then
		return
	end
	
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
		local descriptionObj = EID:getDescriptionObj(closest.Type, closest.Variant, trinketID)
		EID:printDescription(descriptionObj)
	elseif closest.Variant == PickupVariant.PICKUP_COLLECTIBLE then
		--Handle Collectibles
		if closest:GetData()["EID_DontHide"] ~= true then
			if (EID:hasCurseBlind() and EID.Config["DisableOnCurse"]) or (EID.Config["DisableOnAltPath"] and not closest:ToPickup().Touched and EID:IsAltChoise(closest)) or (game.Challenge == Challenge.CHALLENGE_APRILS_FOOL and EID.Config["DisableOnAprilFoolsChallenge"]) then
				EID:renderQuestionMark()
				return
			end
		end
		local descriptionObj = EID:getDescriptionObj(closest.Type, closest.Variant, closest.SubType)
		
		EID:printDescription(descriptionObj)
	elseif closest.Variant == PickupVariant.PICKUP_TAROTCARD then
		--Handle Cards & Runes
		if  not EID.Config["DisplayObstructedCardInfo"] and closest.FrameCount < 3 then
			-- small delay when having obstruction enabled & entering the room to prevent spoilers
			return
		end
		if closest:GetData()["EID_DontHide"] ~= true then
			local hideinShop = closest:ToPickup():IsShopItem() and (((closest.SubType < 81 or closest.SubType > 97) and not EID.Config["DisplayCardInfoShop"]) or (closest.SubType >= 81 and not EID.Config["DisplaySoulstoneInfoShop"]))
			if hideinShop or (not EID.Config["DisplayObstructedCardInfo"] and not EID.hasValidWalkingpath) or (REPENTANCE and game.Challenge == Challenge.CHALLENGE_CANTRIPPED) then
				EID:renderQuestionMark()
				return
			end
		end
		local descriptionObj = EID:getDescriptionObj(closest.Type, closest.Variant, closest.SubType)
		EID:printDescription(descriptionObj)
	elseif closest.Variant == PickupVariant.PICKUP_PILL then
		--Handle Pills
		if  not EID.Config["DisplayObstructedPillInfo"] and closest.FrameCount < 3 then
			-- small delay when having obstruction enabled & entering the room to prevent spoilers
			return
		end
		if closest:GetData()["EID_DontHide"] ~= true then
			if (closest:ToPickup():IsShopItem() and not EID.Config["DisplayPillInfoShop"]) or (not EID.Config["DisplayObstructedPillInfo"] and not EID.hasValidWalkingpath) then
				EID:renderQuestionMark()
				return
			end
		end

		local pillColor = closest.SubType
		local pool = game:GetItemPool()
		local identified = pool:IsPillIdentified(pillColor)
		if (identified or EID.Config["ShowUnidentifiedPillDescriptions"]) then
			local descEntry = EID:getDescriptionObj(closest.Type, closest.Variant, pillColor)
			EID:printDescription(descEntry)
		else
			EID:renderString(
				"{{Pill"..pillColor.."}} "..EID:getDescriptionEntry("unidentifiedPill"),
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

-- only save and load configs when using MCM. Otherwise Config file changes arent valid
if EID.MCMLoaded or REPENTANCE then
	local json = require("json")
	--------------------------------
	--------Handle Savadata---------
	--------------------------------
	function OnGameStart(_,isSave)
		--Loading Moddata--
		if EID:HasData() then
			local savedEIDConfig = json.decode(Isaac.LoadModData(EID))
			if REPENTANCE and isSave then
				EID.BagItems = savedEIDConfig["BagContent"]
				savedEIDConfig["BagContent"] = nil
			else
				EID.BagItems = {}
			end
			-- Only copy Saved config entries that exist in the save
			if savedEIDConfig.Version == EID.Config.Version then
				local isDefaultConfig = true
				for key, value in pairs(EID.Config) do
					if EID.DefaultConfig[key] ~= value then
						isDefaultConfig = false
						break
					end
				end
				if isDefaultConfig or EID.MCMLoaded then
					for key, value in pairs(EID.Config) do
						if savedEIDConfig[key] ~= nil then
							EID.Config[key] = savedEIDConfig[key]
						end
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
		if REPENTANCE then
			EID.Config["BagContent"] = EID.BagItems or {}
		end
		EID.Config["Hidden"] = EID.isHidden
		EID.SaveData(EID, json.encode(EID.Config))
	end
	EID:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT, SaveGame)
end

if enableDebug then
	require("eid_debugging")
end