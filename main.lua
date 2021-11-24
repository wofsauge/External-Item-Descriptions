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
EID.ModVersion = "3.92"
EID.DefaultConfig.Version = EID.Config.Version
EID.isHidden = false
EID.player = nil

-- general variables
EID.PositionModifiers = {}
EID.DescModifiers = {}
EID.UsedPosition = Vector(EID.Config["XPosition"], EID.Config["YPosition"])
EID.Scale = EID.Config["Scale"]
EID.isDisplaying = false
EID.isDisplayingPermanent = false
EID.permanentDisplayTextObj = nil
EID.lastDescriptionEntity = nil
EID.lineHeight = 11
EID.sacrificeCounter = {}
EID.itemConfig = Isaac.GetItemConfig()
EID.effectList = {["76"] = true}
EID.itemUnlockStates = {}

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
require("eid_xmldata")
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
	require("eid_bagofcrafting")
end

EID.LastRenderCallColor = EID:getTextColor()
local nullVector = Vector(0,0)

---------------------------------------------------------------------------
------------------------------- Load Font ---------------------------------
local modfolder ='external item descriptions_836319872' --release mod folder name

local function GetCurrentModPath()
    if debug then
        return string.sub(debug.getinfo(GetCurrentModPath).source,2) .. "/../"
    end
    --use some very hacky trickery to get the path to this mod
    local _, err = pcall(require, "")
    local _, basePathStart = string.find(err, "no file '", 1)
    local _, modPathStart = string.find(err, "no file '", basePathStart)
    local modPathEnd, _ = string.find(err, ".lua'", modPathStart)
    local modPath = string.sub(err, modPathStart+1, modPathEnd-1)
    modPath = string.gsub(modPath, "\\", "/")
	modPath = string.gsub(modPath, "//", "/")
	modPath = string.gsub(modPath, ":/", ":\\")
    
    return modPath
end
EID.modPath = GetCurrentModPath()

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
	if REPENTANCE then
		EID.bagOfCraftingRoomQueries = {}
		EID.bagOfCraftingFloorQuery = {}
	end
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

function EID:IsAltChoice(pickup)
	if pickup:GetData() == nil then
		return false
	end
	if EID:getEntityData(pickup, "EID_IsAltChoice") ~= nil then
		return EID:getEntityData(pickup, "EID_IsAltChoice")
	end

	if not REPENTANCE or game:GetRoom():GetType() ~= RoomType.ROOM_TREASURE then
		pickup:GetData()["EID_IsAltChoice"] = false
		return false
	end

	local entitySprite = pickup:GetSprite()
	local name = entitySprite:GetAnimation()

	if name ~= "Idle" and name ~= "ShopIdle" then
		-- Collectible can be ignored. its definetly not hidden
		pickup:GetData()["EID_IsAltChoice"] = false
		return false
	end
	
	questionMarkSprite:SetFrame(name,entitySprite:GetFrame())
	-- check some point in entitySprite
	for i = -70,0,2 do
		local qcolor = questionMarkSprite:GetTexel(Vector(0,i),nullVector,1,1)
		local ecolor = entitySprite:GetTexel(Vector(0,i),nullVector,1,1)
		if qcolor.Red ~= ecolor.Red or qcolor.Green ~= ecolor.Green or qcolor.Blue ~= ecolor.Blue then
			-- it is not same with question mark sprite
			pickup:GetData()["EID_IsAltChoice"] = false
			return false
		end
	end

	--this may be a question mark, however, we will check it again to ensure it
	for j = -3,3,2 do
		for i = -71,0,2 do
			local qcolor = questionMarkSprite:GetTexel(Vector(j,i),nullVector,1,1)
			local ecolor = entitySprite:GetTexel(Vector(j,i),nullVector,1,1)
			if qcolor.Red ~= ecolor.Red or qcolor.Green ~= ecolor.Green or qcolor.Blue ~= ecolor.Blue then
				pickup:GetData()["EID_IsAltChoice"] = false
				return false
			end
		end
	end
	pickup:GetData()["EID_IsAltChoice"] = true
	return true
end

---------------------------------------------------------------------------
---------------------------Printing Functions------------------------------

function EID:printDescription(desc)
	local textScale = Vector(EID.Scale, EID.Scale)
	local renderPos = EID:getTextPosition()
	local offsetX = 0
	if EID.Config["ShowItemIcon"] then
		local iconType = nil
		local subType = desc.ObjSubType
		if desc.ObjType == 5 then
			if desc.ObjVariant == 100 then
				iconType = "Collectible"
			elseif desc.ObjVariant == 350 then
				iconType = "Trinket"
			elseif desc.ObjVariant == 300 then
				iconType = "Card"
			elseif desc.ObjVariant == 70 then
				iconType = "Pill"
				if subType >= 2049 then
					subType = subType - 2048
				end
			end
		end
		if iconType ~= nil then
			offsetX = offsetX + 14
			EID:renderString(
				"{{" .. iconType .. subType .. "}}",
				renderPos + (Vector(-3, -4) * EID.Scale),
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
		if EID.Scale < 1 then
			offsetY = -1
		end
		EID.IconSprite:Play(EID.ItemTypeAnm2Names[itemType])
		EID:renderIcon(EID.IconSprite, renderPos.X + offsetX * EID.Scale, renderPos.Y + offsetY * EID.Scale)
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
			EID:renderIcon(EID.InlineIconSprite2, renderPos.X + offsetX * EID.Scale, renderPos.Y + offsetY * EID.Scale)
			offsetX = offsetX + 8
		elseif itemType == 4 then
		-- familiar
			offsetX = offsetX + 8
		end
		if not EID.Config["ShowItemName"] then
			renderPos.Y = renderPos.Y + EID.lineHeight * EID.Scale
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
			renderPos + (Vector(offsetX, -3) * EID.Scale),
			textScale,
			EID:getNameColor()
		)

		renderPos.Y = renderPos.Y + EID.lineHeight * EID.Scale
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
					renderPos + (Vector(iconWidth + 4, textOffsetY)* EID.Scale),
					textScale,
					EID:getTransformationColor()
				)
			end
			if (EID.Config["TransformationIcons"] or EID.Config["TransformationText"]) then
				renderPos.Y = renderPos.Y + transformLineHeight * EID.Scale
			end
		end
	end
	EID:printBulletPoints(desc.Description, renderPos)
end

function EID:printBulletPoints(description, renderPos)
	local textboxWidth = tonumber(EID.Config["TextboxWidth"])
	local textScale = Vector(EID.Scale, EID.Scale)
	description = EID:replaceShortMarkupStrings(description)

	for line in string.gmatch(description, "([^#]+)") do
		local formatedLines = EID:fitTextToWidth(line, textboxWidth)
		local textColor = EID:getTextColor()
		for i, lineToPrint in ipairs(formatedLines) do
			-- render bulletpoint
			if i == 1 then
				local bpIcon = EID:handleBulletpointIcon(lineToPrint)
				if EID:getIcon(bpIcon) ~= EID.InlineIcons["ERROR"] then
					lineToPrint = string.gsub(lineToPrint, bpIcon .. " ", "", 1)
					textColor =	EID:renderString(bpIcon, renderPos + Vector(-3 * EID.Scale, 0), textScale , textColor)
				else
					textColor =	EID:renderString(bpIcon, renderPos, textScale , textColor)
				end
			end
			textColor =	EID:renderString(lineToPrint, renderPos + Vector(12 * EID.Scale, 0), textScale, textColor)
				renderPos.Y = renderPos.Y + EID.lineHeight * EID.Scale
		end
	end
end
---------------------------------------------------------------------------
---------------------------Handle New Room--------------------------------
local isMirrorRoom = false
function EID:onNewRoom()
	if REPENTANCE then
		isMirrorRoom = game:GetLevel():GetCurrentRoom():IsMirrorWorld()
	end
end
EID:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, EID.onNewRoom)
---------------------------------------------------------------------------
---------------------------Handle Rendering--------------------------------

function EID:renderQuestionMark()
	EID.IconSprite:Play("CurseOfBlind")
	local pos = EID:getTextPosition()
	EID:renderIcon(EID.IconSprite, pos.X + 5 * EID.Scale, pos.Y + 5 * EID.Scale)
end

function EID:renderIndicator(entity)
	if EID.Config["Indicator"] == "none" then
		return
	end
	local repDiv = 1
	local entityPos = Isaac.WorldToScreen(entity.Position)
	local ArrowOffset = Vector(0, -35)
	if entity.Variant == 100 and not entity:ToPickup():IsShopItem() then
		ArrowOffset = Vector(0, -62)
	end
	local arrowPos = Isaac.WorldToScreen(entity.Position + ArrowOffset)
	if entity:GetData() and entity:GetData()["EID_RenderOffset"] then
		entityPos = entityPos + entity:GetData()["EID_RenderOffset"]
	end
	local sprite = entity:GetSprite()
	if REPENTANCE then
		repDiv = 255
		if isMirrorRoom then
			local screenCenter = EID:getScreenSize()/2
			entityPos.X = entityPos.X - (entityPos-screenCenter).X * 2
			arrowPos.X = arrowPos.X - (arrowPos-screenCenter).X * 2
			sprite.FlipX = true
		end
	end
	if EID.Config["Indicator"] == "blink" then
		local c = 255 - math.floor(255 * ((entity.FrameCount % 40) / 40))
		sprite.Color = Color(1, 1, 1, 1, c/repDiv, c/repDiv, c/repDiv)
		EID:renderEntity(entity, sprite, entityPos)
		sprite.Color = Color(1, 1, 1, 1, 0, 0, 0)
	elseif EID.Config["Indicator"] == "arrow" then
		ArrowSprite:Update()
		ArrowSprite:Render(arrowPos, nullVector, nullVector)
	else
		if EID.Config["Indicator"] == "border" then
			local c = 255 - math.floor(255 * ((entity.FrameCount % 40) / 40))
			sprite.Color = Color(1, 1, 1, 1, c/repDiv, c/repDiv, c/repDiv)
		elseif EID.Config["Indicator"] == "highlight" then
			sprite.Color = Color(1, 1, 1, 1, 255/repDiv, 255/repDiv, 255/repDiv)
		end
		EID:renderEntity(entity, sprite, entityPos + Vector(0, 1))
		EID:renderEntity(entity, sprite, entityPos + Vector(0, -1))
		EID:renderEntity(entity, sprite, entityPos + Vector(1, 0))
		EID:renderEntity(entity, sprite, entityPos + Vector(-1, 0))
		sprite.Color = Color(1, 1, 1, 1, 0, 0, 0)
		EID:renderEntity(entity, sprite, entityPos)
	end
	if REPENTANCE then
		if isMirrorRoom then
			sprite.FlipX = false
		end
	end
end

function EID:ScaleValue(entity)
	if entity.Variant == EffectVariant.DICE_FLOOR then
		EID.Scale = EID.Config["Scale"]
		EID.UsedPosition = Vector(EID.Config["XPosition"], EID.Config["YPosition"])
	elseif EID.Config["LocalMode"] then
		EID.Scale = EID.Config["LocalScale"]
	end
end

function EID:PositionLocalMode(entity)
	if EID.Config["LocalMode"] then
		EID:alterTextPos(Isaac.WorldToScreen(entity.Position - Vector(50,-20)))
		if entity:ToPickup() and entity:ToPickup():IsShopItem() then
			EID:alterTextPos(Isaac.WorldToScreen(entity.Position - Vector(50,-40)))
		end
	else
		EID.UsedPosition = Vector(EID.Config["XPosition"], EID.Config["YPosition"])
		EID.Scale = EID.Config["Scale"]
	end
end

function EID:renderEntity(entity, sprite, position)
	if entity.Type == 5 and entity.Variant == 100 then
		sprite:RenderLayer(1, position, nullVector, nullVector)
	else
		sprite:Render(position, nullVector, nullVector)
	end

end

function EID:renderHUDLocationIndicators()
	local mousePos = Isaac.WorldToRenderPosition(Input.GetMousePosition(true)) * 2
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

local lastMousePos = Vector(0,0)
local lastMouseMove = 0

function EID:handleHoverHUD()
	local mousePos = Isaac.WorldToScreen(Input.GetMousePosition(true))
	if mousePos:Distance(lastMousePos) > 2 then
		lastMousePos = mousePos
		lastMouseMove = game:GetFrameCount()
	end
	if game:GetFrameCount() - lastMouseMove > 60 * 3 then
		return nil
	end
	if EID.Config["ShowCursor"] then
		EID.CursorSprite:Render(Vector(mousePos.X, mousePos.Y), nullVector, nullVector)
	end
	for k, v in pairs(EID.HUDElements) do
		local hudElement = EID:handleHUDElement(v)
		if hudElement.x <= mousePos.X and (hudElement.x + hudElement.width) >= mousePos.X and hudElement.y <= mousePos.Y and (hudElement.y + hudElement.height) >= mousePos.Y then
			return hudElement.descriptionObj() or nil
		end
	end
	return nil
end

function EID:setPlayer()
	local p = Isaac.GetPlayer(0)
	if REPENTANCE and p.SubType == PlayerType.PLAYER_THEFORGOTTEN_B then
		EID.player = p:GetOtherTwin()
	else
		EID.player = p
	end
end

if REPENTANCE then
	function EID:removeWrongGuppyEyeInfo(effectEntity)
		if EID.pathCheckerEntity ~= nil and effectEntity.Parent ~= nil then
			if GetPtrHash(effectEntity.Parent) == GetPtrHash(EID.pathCheckerEntity) then
				effectEntity:Remove()
			end
		end
	end
	EID:AddCallback(ModCallbacks.MC_POST_EFFECT_UPDATE, EID.removeWrongGuppyEyeInfo, EffectVariant.PICKUP_GHOST)
end
---------------------------------------------------------------------------
---------------------------On Update Function------------------------------

EID.lastDescriptionEntity = nil
EID.lastDist = 0
EID.pathCheckerEntity = nil
EID.hasValidWalkingpath = true

function EID:onGameUpdate()
	EID:setPlayer()
	--Fix Overlapping Pedestals
	local curPositions = {}
	for _, entity in ipairs(Isaac.FindByType(5, 100, -1, true, false)) do
		local pos = entity.Position
		for _, otherPos in ipairs(curPositions) do
			if pos:Distance(otherPos[2]) == 0 then
				entity.Position = entity.Position + Vector(1,0)
				entity:GetData()["EID_RenderOffset"] = Vector(10,0)
				otherPos[1]:GetData()["EID_RenderOffset"] = Vector(-10,0)
			end
		end
		table.insert(curPositions, {entity, entity.Position})
	end
	
	if not EID.Config["DisplayObstructedCardInfo"] or not EID.Config["DisplayObstructedPillInfo"] or not EID.Config["DisplayObstructedSoulstoneInfo"] then
		if EID.lastDescriptionEntity == nil or (EID.Config["DisableObstructionOnFlight"] and EID.player.CanFly) then
			if EID.pathCheckerEntity ~= nil then
				EID.pathCheckerEntity:Remove()
				EID.pathCheckerEntity = nil
				EID.hasValidWalkingpath = true
			end
			return
		end
		if EID.pathCheckerEntity == nil then
			EID.pathCheckerEntity = game:Spawn(17, 3169, EID.player.Position, nullVector, EID.player ,0 , 4354) -- Spawns the EID Helper entity with seed that doesnt spawn rewards
			EID.pathCheckerEntity:ClearEntityFlags(EntityFlag.FLAG_APPEAR)
			EID.pathCheckerEntity:AddEntityFlags (EntityFlag.FLAG_PERSISTENT | EntityFlag.FLAG_NO_STATUS_EFFECTS | EntityFlag.FLAG_NO_SPRITE_UPDATE | EntityFlag.FLAG_HIDE_HP_BAR | EntityFlag.FLAG_NO_DEATH_TRIGGER)
			EID.pathCheckerEntity.EntityCollisionClass = EntityCollisionClass.ENTCOLL_NONE
			EID.pathCheckerEntity.Visible = false
			EID.hasValidWalkingpath = false
		elseif not EID.pathCheckerEntity:Exists() then
			EID.pathCheckerEntity = nil
		else
			EID.pathCheckerEntity.Position = EID.player.Position
			EID.hasValidWalkingpath = EID.pathCheckerEntity:ToNPC().Pathfinder:HasPathToPos ( EID.lastDescriptionEntity.Position, false )
		end
	end
	
end
EID:AddCallback(ModCallbacks.MC_POST_UPDATE, EID.onGameUpdate)

local hasShownAchievementWarning = false

local function renderAchievementInfo()
	if REPENTANCE and not EID.Config.DisableAchievementCheck and game:GetFrameCount() < 10*30 and game.Challenge == 0 then
		local characterID = Game():GetPlayer(0):GetPlayerType()
		--ID 21 = Tainted Isaac. Tainted characters have definitely beaten Mom! (Fixes Tainted Lost's item pools ruining this check)
		if characterID < 21 then
			local hasBookOfRevelationsUnlocked = EID:isCollectibleUnlockedAnyPool(CollectibleType.COLLECTIBLE_BOOK_OF_REVELATIONS or CollectibleType.COLLECTIBLE_BOOK_REVELATIONS)
			if not hasBookOfRevelationsUnlocked then
				local hasCubeOfMeatUnlocked = EID:isCollectibleUnlockedAnyPool(CollectibleType.COLLECTIBLE_CUBE_OF_MEAT)
				if not hasCubeOfMeatUnlocked then
					local demoDescObj = EID:getDescriptionObj(-999, -1, 1)
					demoDescObj.Name = EID:getDescriptionEntry("AchievementWarningTitle") or ""
					demoDescObj.Description = EID:getDescriptionEntry("AchievementWarningText") or ""
					EID:displayPermanentText(demoDescObj)
					hasShownAchievementWarning = true
				end
			end
		end
	elseif hasShownAchievementWarning then
		EID:hidePermanentText()
	end
end


---------------------------------------------------------------------------
---------------------------On Render Function------------------------------
local searchPartitions = EntityPartition.FAMILIAR + EntityPartition.ENEMY + EntityPartition.PICKUP + EntityPartition.PLAYER

local function onRender(t)
	EID.isDisplaying = false
	EID:setPlayer()
	
	--Keyboard hide keys are 32+, controller hide keys have their own option now so don't allow controller inputs in it
	if EID.Config["HideKey"] < 32 then EID.Config["HideKey"] = -1 end
	if Input.IsButtonTriggered(EID.Config["HideKey"], 0) or Input.IsButtonTriggered(EID.Config["HideButton"], EID.player.ControllerIndex) then
		EID.isHidden = not EID.isHidden
	end
	
	if ModConfigMenu and ModConfigMenu.IsVisible and ModConfigMenu.Config["Mod Config Menu"].HideHudInMenu and EID.MCMCompat_isDisplayingEIDTab ~= "Visuals" then --if if the mod config menu exists, is opened and Hide Hud is enabled, and ModConfigMenu is currently in the "Visuals" tab of EID
		return
	end
	
	EID:renderMCMDummyDescription()
	
	renderAchievementInfo()

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
	
	if EID.isHidden then
		return
	elseif EID.Config["HideInBattle"] then
		if Isaac.CountBosses() > 0 or Isaac.CountEnemies() > 0 then
			return
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
			local curCounter = EID.sacrificeCounter[curRoomIndex] or 1
			local sacrificeDesc = EID:getDescriptionObj(-999, -1, curCounter)
			sacrificeDesc.Name = sacrificeDesc.Name.." ("..curCounter.."/12)"
			EID:alterTextPos(Vector(EID.Config["XPosition"], EID.Config["YPosition"]))
			EID.Scale = EID.Config["Scale"]
			EID:printDescription(sacrificeDesc)
		end
		return
	end
	
	if closest == nil then
		return
	end
	
	EID.isDisplaying = true

	--Handle Indicators
	EID:renderIndicator(closest)

	--Local Mode
	EID:PositionLocalMode(closest)

	--Scale Value
	EID:ScaleValue(closest)
	--Handle GetData Entities (specific)
	if EID.Config["EnableEntityDescriptions"] and EID:getEntityData(closest, "EID_Description") then
		local desc = EID:getEntityData(closest, "EID_Description")
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
		if EID:getEntityData(closest, "EID_DontHide") ~= true then
			if (EID:hasCurseBlind() and not closest:ToPickup().Touched and EID.Config["DisableOnCurse"]) or (EID.Config["DisableOnAltPath"] and not closest:ToPickup().Touched and EID:IsAltChoice(closest)) or (game.Challenge == Challenge.CHALLENGE_APRILS_FOOL and EID.Config["DisableOnAprilFoolsChallenge"]) then
				EID:renderQuestionMark()
				return
			end
		end
		local descriptionObj = EID:getDescriptionObj(closest.Type, closest.Variant, closest.SubType)
		
		EID:printDescription(descriptionObj)
	elseif closest.Variant == PickupVariant.PICKUP_TAROTCARD then
		--Handle Cards & Runes
		if ( not EID.Config["DisplayObstructedCardInfo"] or not EID.Config["DisplayObstructedSoulstoneInfo"]) and closest.FrameCount < 3 then
			-- small delay when having obstruction enabled & entering the room to prevent spoilers
			return
		end
		if EID:getEntityData(closest, "EID_DontHide") ~= true then
			local isSoulstone = closest.SubType >= 81 and closest.SubType <= 97
			local hideinShop = closest:ToPickup():IsShopItem() and ((not isSoulstone and not EID.Config["DisplayCardInfoShop"]) or (isSoulstone and not EID.Config["DisplaySoulstoneInfoShop"]))
			local isOptionsSpawn = REPENTANCE and not EID.Config["DisplayCardInfoOptions?"] and closest:ToPickup().OptionsPickupIndex > 0
			local obstructed = ((not isSoulstone and not EID.Config["DisplayObstructedCardInfo"]) or (not EID.Config["DisplayObstructedSoulstoneInfo"] and isSoulstone)) and not EID.hasValidWalkingpath
			if isOptionsSpawn or hideinShop or obstructed or (REPENTANCE and game.Challenge == Challenge.CHALLENGE_CANTRIPPED) then
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
		if EID:getEntityData(closest, "EID_DontHide") ~= true then
			local isOptionsSpawn = REPENTANCE and not EID.Config["DisplayPillInfoOptions?"] and closest:ToPickup().OptionsPickupIndex > 0
			if isOptionsSpawn or (closest:ToPickup():IsShopItem() and not EID.Config["DisplayPillInfoShop"]) or (not EID.Config["DisplayObstructedPillInfo"] and not EID.hasValidWalkingpath) then
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
			if pillColor >= 2049 then
				pillColor = pillColor - 2048
			end
			EID:renderString(
				"{{Pill"..pillColor.."}} "..EID:getDescriptionEntry("unidentifiedPill"),
				EID:getTextPosition(),
				Vector(EID.Scale, EID.Scale),
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
				EID.bagOfCraftingRoomQueries = savedEIDConfig["BagFloorContent"]
				savedEIDConfig["BagContent"] = nil
				savedEIDConfig["BagFloorContent"] = nil
			else
				EID.BagItems = {}
			end
			
			-- Only copy Saved config entries that exist in the save
			if savedEIDConfig.Version == EID.Config.Version then
				local isDefaultConfig = false
				for key, value in pairs(EID.Config) do
					if type(value) ~= type(EID.DefaultConfig[key]) and key ~= "BagContent" and key ~= "BagFloorContent" then
						print("EID Warning! : Config value '"..key.."' has wrong data-type. Resetting it to default...")
						EID.Config[key] = EID.DefaultConfig[key]
					end
					if EID.DefaultConfig[key] ~= value then
						isDefaultConfig = false
					end
				end
				if isDefaultConfig or EID.MCMLoaded then
					for key, value in pairs(EID.Config) do
						if savedEIDConfig[key] ~= nil and type(value) == type(savedEIDConfig[key]) then
							EID.Config[key] = savedEIDConfig[key]
						end
					end
				end
				EID.isHidden = EID.Config["InitiallyHidden"]
				EID.UsedPosition = Vector(EID.Config["XPosition"], EID.Config["YPosition"])
				EID.Scale = EID.Config["Scale"]
				EID:loadFont(EID.modPath .. "resources/font/eid_"..EID.Config["FontType"]..".fnt")
				if REPENTANCE then
					EID:addTextPosModifier("HudOffset", Vector(((Options.HUDOffset * 10) * 2) - 20, (Options.HUDOffset * 10) - 10))
				else
					EID:addTextPosModifier("HudOffset", Vector((EID.Config["HUDOffset"] * 2) - 20, EID.Config["HUDOffset"] - 10))
				end
			end
			
		end
	end
	EID:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, OnGameStart)

	--Saving Moddata--
	function SaveGame()
		if REPENTANCE then
			EID.Config["BagContent"] = EID.BagItems or {}
			EID.Config["BagFloorContent"] = EID.bagOfCraftingRoomQueries or {}
		end
		EID.SaveData(EID, json.encode(EID.Config))
		EID:hidePermanentText()
		EID.itemUnlockStates[CollectibleType.COLLECTIBLE_CUBE_OF_MEAT] = nil
		EID.itemUnlockStates[CollectibleType.COLLECTIBLE_BOOK_OF_REVELATIONS or CollectibleType.COLLECTIBLE_BOOK_REVELATIONS] = nil
	end
	EID:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT, SaveGame)
end

if enableDebug then
	require("eid_debugging")
end
