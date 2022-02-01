EID = RegisterMod("External Item Descriptions", 1)
-- important variables
EID.GameVersion = "ab+"
EID.Languages = {"en_us", "en_us_detailed", "fr", "pt", "pt_br", "ru", "spa", "it", "bul", "pl", "de", "tr_tr", "ko_kr", "zh_cn"}
EID.descriptions = {} -- Table that holds all translation strings
EID.enableDebug = false
local game = Game()

require("eid_config")
EID.Config = EID.UserConfig
EID.Config.Version = "3.2" -- note: changing this will reset everyone's settings to default!
EID.ModVersion = "4.16"
EID.DefaultConfig.Version = EID.Config.Version
EID.isHidden = false
EID.player = nil

-- general variables
EID.PositionModifiers = {}
EID.DescModifiers = {}
EID.UsedPosition = Vector(EID.Config["XPosition"], EID.Config["YPosition"])
EID.Scale = EID.Config["Size"]
EID.isDisplaying = false
EID.isDisplayingPermanent = false
EID.achievementsEnabled = false
EID.permanentDisplayTextObj = nil
EID.lastDescriptionEntity = nil
EID.lineHeight = 11
EID.sacrificeCounter = {}
EID.itemConfig = Isaac.GetItemConfig()
EID.itemUnlockStates = {}
EID.CraneItemType = {}
EID.absorbedItems = {}
EID.CollectedItems = {}
local pathsChecked = {}
local altPathItemChecked = {}

EID.GameUpdateCount = 0
EID.GameRenderCount = 0

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

EID.PlayerSprite = Sprite()
EID.PlayerSprite:Load("gfx/eid_player_icons.anm2", true)

local ArrowSprite = Sprite()
ArrowSprite:Load("gfx/eid_transform_icons.anm2", true)
ArrowSprite:Play("Arrow", false)

EID.CursorSprite = Sprite()
EID.CursorSprite:Load("gfx/eid_transform_icons.anm2", true)
EID.CursorSprite:Play("Cursor")

local hudBBSprite = Sprite()
hudBBSprite:Load("gfx/eid_transform_icons.anm2", true)
hudBBSprite:Play("boundingBox")


EID.ModIndicator = { }
-- Overwriting "RegisterMod" to track which mods are loading
-- Useful to associate items to mods
EID._currentMod = ""
local OldRegisterMod = RegisterMod
RegisterMod = function (modName, apiVersion, ...)
	EID._currentMod = modName
	EID.ModIndicator[modName] = { Name = modName, Icon = nil }
	return OldRegisterMod(modName, apiVersion, ...)
end

------- Load all modules and other stuff ------

--transformation infos
require("descriptions."..EID.GameVersion..".transformations")
--languages
for _,lang in ipairs(EID.Languages) do
	require("descriptions."..EID.GameVersion.."."..lang)
end
table.sort(EID.Languages)

pcall(require,"scripts.eid_savegames")
require("mod_config_menu")
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
		if REPENTANCE then require("eid_tmtrainer") end
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
EID:fixDefinedFont()
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
-------------Handle Sacrifice Room & Resetting Floor Trackers--------------
function EID:onNewFloor()
	pathsChecked = {}
	EID.sacrificeCounter = {}
	if REPENTANCE then
		EID.bagOfCraftingRoomQueries = {}
		EID.bagOfCraftingFloorQuery = {}
		EID.CraneItemType = {}
		EID.flipItemPositions = {}
		altPathItemChecked = {}
	end
end
EID:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, EID.onNewFloor)

function EID:onSacrificeDamage(_, _, flags, source)
	if EID.Config["DisplaySacrificeInfo"] and game:GetRoom():GetType() == RoomType.ROOM_SACRIFICE and source.Type == 0 and flags & DamageFlag.DAMAGE_SPIKES == DamageFlag.DAMAGE_SPIKES then
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

---------------------------------------------------------------------------
------------------------Handle ALT FLOOR CHOICE----------------------------

local questionMarkSprite = Sprite()
questionMarkSprite:Load("gfx/005.100_collectible.anm2",true)
questionMarkSprite:ReplaceSpritesheet(1,"gfx/items/collectibles/questionmark.png")
questionMarkSprite:LoadGraphics()

function EID:IsAltChoice(pickup)
	-- do not run this while Curse of the Blind is active, since this function is really just a "is collectible pedestal a red question mark" check
	if not REPENTANCE or EID:hasCurseBlind() then
		return false
	end
	if altPathItemChecked[pickup.InitSeed] ~= nil then
		return altPathItemChecked[pickup.InitSeed]
	end
	if game:GetRoom():GetType() ~= RoomType.ROOM_TREASURE then
		altPathItemChecked[pickup.InitSeed] = false
		return false
	end

	local entitySprite = pickup:GetSprite()
	local name = entitySprite:GetAnimation()

	if name ~= "Idle" and name ~= "ShopIdle" then
		-- Collectible can be ignored. It's definitely not hidden
		altPathItemChecked[pickup.InitSeed] = false
		return false
	end
	
	questionMarkSprite:SetFrame(name,entitySprite:GetFrame())
	-- check some point in entitySprite
	for i = -50,20,3 do
		local qcolor = questionMarkSprite:GetTexel(Vector(0,i),nullVector,1,1)
		local ecolor = entitySprite:GetTexel(Vector(0,i),nullVector,1,1)
		if qcolor.Red ~= ecolor.Red or qcolor.Green ~= ecolor.Green or qcolor.Blue ~= ecolor.Blue then
			-- it is not same with question mark sprite
			altPathItemChecked[pickup.InitSeed] = false
			return false
		end
	end
	
	--this may be a question mark, however, we will check it again to ensure it
	for j = -1,1,1 do
		for i = -71,0,3 do
			local qcolor = questionMarkSprite:GetTexel(Vector(j,i),nullVector,1,1)
			local ecolor = entitySprite:GetTexel(Vector(j,i),nullVector,1,1)
			if qcolor.Red ~= ecolor.Red or qcolor.Green ~= ecolor.Green or qcolor.Blue ~= ecolor.Blue then
				altPathItemChecked[pickup.InitSeed] = false
				return false
			end
		end
	end
	altPathItemChecked[pickup.InitSeed] = true
	return true
end

---------------------------------------------------------------------------
-----------------Handle Crane Game & Flip Item Callbacks-------------------

local initialItemNext = false
local flipItemNext = false
if REPENTANCE then
	EID.flipItemPositions = {}
	EID.flipMaxIndex = -1
	
	local lastGetItemResult = {nil, nil, nil, nil} -- itemID, Frame, gridIndex, InitSeed
	local lastFrameGridChecked = 0
	
	function EID:postGetCollectible(selectedCollectible, itemPoolType, decrease, seed)
		-- Handle Crane Game
		if itemPoolType == ItemPoolType.POOL_CRANE_GAME then
			for _, crane in ipairs(Isaac.FindByType(6, 16, -1, true, false)) do
				if not crane:GetSprite():IsPlaying("Broken") then
					if not EID.CraneItemType[tostring(crane.InitSeed)] then
						EID.CraneItemType[tostring(crane.InitSeed)] = selectedCollectible
					end
				end
			end
		end
		
		-- Handle Flip item
		-- PRE_ROOM_ENTITY_SPAWN sets us up to watch for the first POST_GET_COLLECTIBLE for this pedestal
		-- (Tainted Isaac and Glitched Crown cause additional calls that have to be ignored)
		-- POST_PICKUP_INIT occurs right before the Flip item is decided, so it sets us up to watch for the Flip item
		-- (it also watches for item rerolls to fill the new entity's GetData)
		-- POST_NEW_ROOM then handles putting the result in the entity's GetData
		local curFrame = Isaac.GetFrameCount()
		local curRoomIndex = game:GetLevel():GetCurrentRoomIndex()
		if curFrame == lastGetItemResult[2] then
			if initialItemNext then lastGetItemResult[1] = selectedCollectible
			elseif flipItemNext and lastGetItemResult[1] then
				if EID.flipItemPositions[curRoomIndex] == nil then
					EID.flipItemPositions[curRoomIndex] = {}
				end
				EID.flipItemPositions[curRoomIndex][lastGetItemResult[4]] = {selectedCollectible, lastGetItemResult[3]}
			end
		end
		
		initialItemNext = false
		flipItemNext = false
	end
	EID:AddCallback(ModCallbacks.MC_POST_GET_COLLECTIBLE, EID.postGetCollectible)

	-- Handle Flip Item spawn
	function EID:preRoomEntitySpawn(entityType, variant, subtype, gridIndex, seed)
		flipItemNext = false
		if entityType == 5 and (variant == 100 or variant == 150) then
			lastGetItemResult = {nil, Isaac.GetFrameCount(), gridIndex, nil}
			-- Pedestals in need of a random item will call GET_COLLECTIBLE; fixed pedestals (Knife Piece 1) will not
			if subtype == 0 then initialItemNext = true
			else lastGetItemResult[1] = subtype end
		end
	end
	EID:AddCallback(ModCallbacks.MC_PRE_ROOM_ENTITY_SPAWN, EID.preRoomEntitySpawn)
	
	function EID:postPickupInitFlip(entity)
		initialItemNext = false
		flipItemNext = true
		lastGetItemResult[4] = entity.InitSeed
		
		local curRoomIndex = game:GetLevel():GetCurrentRoomIndex()
		local gridPos = game:GetRoom():GetGridIndex(entity.Position)
		
		-- Update a Flip item's init seed after D6 rerolls or using Flip (aka Grid Index didn't change, Init Seed did)
		if EID.flipItemPositions[curRoomIndex] and not EID.flipItemPositions[curRoomIndex][entity.InitSeed] then
			-- Check if any Flip pedestals have changed grid indexes (fixes bugs with Greed shops)
			if lastFrameGridChecked ~= Isaac.GetFrameCount() then EID:CheckFlipGridIndexes() end
			for k,v in pairs(EID.flipItemPositions[curRoomIndex]) do
				if v[2] == gridPos then
					EID.flipItemPositions[curRoomIndex][entity.InitSeed] = v
					EID.flipItemPositions[curRoomIndex][k] = nil
					break
				end
			end
		end
		-- Give this new entity its Flip Item data if possible
		local flipEntry = EID.flipItemPositions[curRoomIndex] and EID.flipItemPositions[curRoomIndex][entity.InitSeed]
		if flipEntry then
			entity:GetData()["EID_FlipItemID"] = flipEntry[1]
		end
	end
	EID:AddCallback(ModCallbacks.MC_POST_PICKUP_INIT, EID.postPickupInitFlip, PickupVariant.PICKUP_COLLECTIBLE)
	
	function EID:CheckPedestalIndex(entity)
		-- Only pedestals with indexes that were present at room load can be flip pedestals
		-- Fixes shop restock machines and Diplopia... mostly. At least while you're in the room.
		if entity:GetData()["EID_FlipItemID"] and entity.Index > EID.flipMaxIndex then
			local curRoomIndex = game:GetLevel():GetCurrentRoomIndex()
			local gridPos = game:GetRoom():GetGridIndex(entity.Position)
			local flipEntry = EID.flipItemPositions[curRoomIndex] and EID.flipItemPositions[curRoomIndex][entity.InitSeed]
			-- only wipe the data if the grid index matches (so Diplopia pedestals don't)
			if flipEntry and gridPos == flipEntry[2] then EID.flipItemPositions[curRoomIndex][entity.InitSeed] = nil end
			entity:GetData()["EID_FlipItemID"] = nil 
		end
	end
	EID:AddCallback(ModCallbacks.MC_POST_PICKUP_UPDATE, EID.CheckPedestalIndex, PickupVariant.PICKUP_COLLECTIBLE)
	
	-- Before using Flip, swap all flippable pedestal's current item with the flip one (also, fix grid index if needed)
	function EID:CheckFlipGridIndexes(collectibleType)
		lastFrameGridChecked = Isaac.GetFrameCount()
		local curRoomIndex = game:GetLevel():GetCurrentRoomIndex()
		if EID.flipItemPositions[curRoomIndex] then
			local pedestals = Isaac.FindByType(5, 100, -1, true, false)
			for _, pedestal in ipairs(pedestals) do
				local flipEntry = EID.flipItemPositions[curRoomIndex][pedestal.InitSeed]
				if flipEntry then
					local gridPos = game:GetRoom():GetGridIndex(pedestal.Position)
					flipEntry[2] = gridPos
					if collectibleType == CollectibleType.COLLECTIBLE_FLIP then
						-- don't swap a flip shadow with an empty pedestal!
						if pedestal.SubType == 0 then EID.flipItemPositions[curRoomIndex][pedestal.InitSeed] = nil
						else flipEntry[1] = pedestal.SubType end
					end
				end
			end
		end
	end
	EID:AddCallback(ModCallbacks.MC_PRE_USE_ITEM, EID.CheckFlipGridIndexes, CollectibleType.COLLECTIBLE_FLIP)
	
	-- Watch for a Void absorbing active items
	-- (Note: Doesn't differentiate between different players if both players have Void...)
	function EID:CheckVoidAbsorbs(collectibleType)
		local pedestals = Isaac.FindByType(5, 100, -1, true, false)
		for _, pedestal in ipairs(pedestals) do
			if pedestal.SubType > 0 and EID.itemConfig:GetCollectible(pedestal.SubType).Type == 3 then
				EID.absorbedItems[pedestal.SubType] = true
			end
		end
	end
	EID:AddCallback(ModCallbacks.MC_PRE_USE_ITEM, EID.CheckVoidAbsorbs, CollectibleType.COLLECTIBLE_VOID)
end

---------------------------------------------------------------------------
--------------------------Handle Scale Shortcut----------------------------

local scaleMin = 0.1
local scaleMax = 2
local scaleSpeed = 0.01 -- scale size per frame
local scaleToBigger = true
local scaleHoldFrame = 0
local function handleScaleKey()
	local scaleKey = EID.Config["SizeHotkey"]

	-- press and hold ScaleKey
	if Input.IsButtonPressed(scaleKey, 0) then
		if scaleHoldFrame > 60 then
			EID.MCM_OptionChanged = true
			local scaleConfigName = (EID.Config["DisplayMode"] == "local" and "LocalModeSize" or "Size")
			if scaleToBigger then
				local newScale = EID.Scale + scaleSpeed

				EID.Scale = newScale
				EID.Config[scaleConfigName] = newScale

				if newScale > scaleMax then
					scaleToBigger = false
				end
			else
				local newScale = EID.Scale - scaleSpeed

				EID.Scale = newScale
				EID.Config[scaleConfigName] = newScale

				if newScale < scaleMin then
					scaleToBigger = true
				end
			end
		else
			scaleHoldFrame = scaleHoldFrame + 1
		end
	end
	-- press ScaleKey
	if Input.IsButtonTriggered(scaleKey, 0) then
		EID.MCM_OptionChanged = true
		scaleHoldFrame = 0
		local scale
		local scaleConfigName = (EID.Config["DisplayMode"] == "local" and "LocalModeSize" or "Size")

		scale = EID.Scale

		-- switch between 1, 1.5 and 0.5

		if math.abs(scale - 1) < 0.01 then
			scale = 1.5
		elseif math.abs(scale - 1.5) < 0.01 then
			scale = 0.5
		elseif math.abs(scale - 0.5) < 0.01 then
			scale = 1
		else
			scale = 1
		end

		EID.Config[scaleConfigName] = scale
		EID.Scale = scale
	end
end

---------------------------------------------------------------------------
---------------------------Printing Functions------------------------------

local previousDesc = ""
local previousRenderPos = Vector.Zero
EID.CachingDescription = false
EID.CachedIcons = {}
EID.CachedStrings = {}

function EID:printDescription(desc)
	local renderPos = EID:getTextPosition()
	
	EID.CachingDescription = false
	if previousDesc == desc.Description and not EID.OptionChanged and not EID.MCM_OptionChanged then
		local localModeDiff = renderPos - previousRenderPos
		-- Drawing our currently saved description
		for _,icon in ipairs(EID.CachedIcons) do
			-- set inline icon to specific frame
			if icon[6] >= 0 then
				icon[1]:SetFrame(icon[5], icon[6])
			-- frame of -1 = it's an animation, let it play
			elseif not icon[1]:IsPlaying(icon[5]) or icon[1]:IsFinished(icon[5]) then
				icon[1]:Play(icon[5],true)
			else
				icon[1]:Update()
			end
			EID:renderIcon(icon[1], icon[2] + localModeDiff.X, icon[3] + localModeDiff.Y, icon[4])
		end
		for i,str in ipairs(EID.CachedStrings) do
			-- check for func (Rainbow, Blink, Fade), reset the color's Alpha to EID.Config["Transparency"] if func
			if str[5] then
				str[4].Alpha = str[6]
				str[4] = str[5](str[4])
			end
			EID.font:DrawStringScaledUTF8(str[1], str[2] + localModeDiff.X, str[3] + localModeDiff.Y, EID.Scale, EID.Scale, str[4], 0, false)
		end
		return
	else
		-- Drawing a new description
		EID.CachingDescription = true
		EID.CachedIcons = {}
		EID.CachedStrings = {}
		previousDesc = desc.Description
		previousRenderPos = Vector(renderPos.X, renderPos.Y)
	end
	
	local textScale = Vector(EID.Scale, EID.Scale)
	local offsetX = 0
	EID.lineHeight = EID.Config["LineHeight"]
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
		end
		offsetX = offsetX + 8
	end
	--Display Itemname
	if EID.Config["ShowItemName"] then
		local curName = desc.Name
		if EID.Config["TranslateItemName"] ~= 2 then
			local curLanguage = EID.Config["Language"]
			if curLanguage ~= "en_us" then
				EID.Config["Language"] = "en_us"
				local englishName = EID:getObjectName(desc.ObjType, desc.ObjVariant, desc.ObjSubType)
				EID.Config["Language"] = curLanguage
				if EID.Config["TranslateItemName"] == 1 then
					curName = englishName
				elseif EID.Config["TranslateItemName"] == 3 and curName ~= englishName and not EID.isDisplayingPermanent then
					curName = curName.." ("..englishName..")"
				end
			end
		end
		-- Display Entity ID
		if EID.Config["ShowObjectID"] and desc.ObjType > 0 then
			curName = curName.." {{ColorGray}}"..desc.ObjType.."."..desc.ObjVariant.."."..desc.ObjSubType
		end
		-- Display Quality
		if REPENTANCE and EID.Config["ShowQuality"] and desc.ObjVariant == PickupVariant.PICKUP_COLLECTIBLE then
			local quality = tonumber(EID.itemConfig:GetCollectible(tonumber(desc.ObjSubType)).Quality)
			curName = curName.." - {{Quality"..quality.."}}"
		end
		-- Display the mod this item is from
		if desc.ModName then
			if EID.Config["ModIndicatorDisplay"] == "Both" or EID.Config["ModIndicatorDisplay"] == "Name only" then
				curName = curName .. " {{"..EID.Config["ModIndicatorTextColor"].."}}" .. EID.ModIndicator[desc.ModName].Name
			end
			if (EID.Config["ModIndicatorDisplay"] == "Both" or EID.Config["ModIndicatorDisplay"] == "Icon only") and EID.ModIndicator[desc.ModName].Icon then
				curName = curName .. "{{".. EID.ModIndicator[desc.ModName].Icon .."}}"
			end
		end

		EID:renderString(
			curName,
			renderPos + (Vector(offsetX, -3) * EID.Scale),
			textScale,
			EID:getNameColor()
		)
	end
	
	renderPos.Y = renderPos.Y + EID.lineHeight * EID.Scale
	
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
		local formatedLines = EID:fitTextToWidth(line, textboxWidth, EID.BreakUtf8CharsLanguage[EID.Config["Language"]])
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
				EID.LastRenderCallColor = EID:copyKColor(textColor) -- Save line start Color for eventual Color Reset call
			end
			textColor =	EID:renderString(lineToPrint, renderPos + Vector(12 * EID.Scale, 0), textScale, textColor)
				renderPos.Y = renderPos.Y + EID.lineHeight * EID.Scale
		end
	end
end
---------------------------------------------------------------------------
----------------------------Handle New Room--------------------------------
local isMirrorRoom = false
local isDeathCertRoom = false
if REPENTANCE then
	function EID:AssignFlipItems()
		EID.flipMaxIndex = -1
		local curRoomIndex = game:GetLevel():GetCurrentRoomIndex()
		if EID.flipItemPositions[curRoomIndex] then
			local pedestals = Isaac.FindByType(5, 100, -1, true, false)
			for _, pedestal in ipairs(pedestals) do
				local flipEntry = EID.flipItemPositions[curRoomIndex][pedestal.InitSeed]
				if flipEntry then
					if pedestal.Index > EID.flipMaxIndex then EID.flipMaxIndex = pedestal.Index end
					pedestal:GetData()["EID_FlipItemID"] = flipEntry[1]
				end
			end
		end
	end
	function EID:onNewRoom()
		isMirrorRoom = game:GetLevel():GetCurrentRoom():IsMirrorWorld()
		
		local level = game:GetLevel()
		local id = level:GetCurrentRoomIndex()
		isDeathCertRoom = (id >=0 and GetPtrHash(level:GetRoomByIdx(id)) == GetPtrHash(level:GetRoomByIdx(id, 2)))
		
		-- Handle Flip Item
		initialItemNext = false
		flipItemNext = false
		EID:AssignFlipItems()
	end
	EID:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, EID.onNewRoom)
end
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
	-- Move highlights a bit to fit onto the alt Item layout of Flip / Tainted Laz
	if REPENTANCE then
		if entity.Variant == 100 and EID.player:HasCollectible(CollectibleType.COLLECTIBLE_FLIP) then
			entityPos = entityPos + Vector(2.5,2.5)
		elseif entity.Type == 6 and entity.Variant == 16 then
			entityPos = entityPos + Vector(0,-5)
		end
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
		EID.Scale = EID.Config["Size"]
		EID.UsedPosition = Vector(EID.Config["XPosition"], EID.Config["YPosition"])
	elseif EID.Config["DisplayMode"] == "local" then
		EID.Scale = EID.Config["LocalModeSize"]
	end
end

function EID:PositionLocalMode(entity)
	if EID.Config["DisplayMode"] == "local" then
		local textBoxWidth = EID.Config["LocalModeCentered"] and tonumber(EID.Config["TextboxWidth"])/2 * EID.Scale or -30
		local textPosOffset = Vector(-textBoxWidth, 20)
		EID:alterTextPos(Isaac.WorldToScreen(entity.Position + textPosOffset))
		if REPENTANCE then
			if isMirrorRoom then
				EID:alterTextPos(Isaac.WorldToScreen(entity.Position + textPosOffset * Vector(-1,0)))
				local screenCenter = EID:getScreenSize()/2
				EID.UsedPosition.X = EID.UsedPosition.X - (EID.UsedPosition-screenCenter).X * 2
			end
		end
		if entity:ToPickup() and entity:ToPickup():IsShopItem() then
			EID:alterTextPos(Isaac.WorldToScreen(entity.Position + textPosOffset))
		end
	else
		EID.UsedPosition = Vector(EID.Config["XPosition"], EID.Config["YPosition"])
		EID.Scale = EID.Config["Size"]
	end
end

function EID:renderEntity(entity, sprite, position)
	if entity.Type == 5 and entity.Variant == 100 then
		sprite:RenderLayer(1, position, nullVector, nullVector)
	elseif entity.Type == 6 and entity.Variant == 16 then -- Crane Game
		sprite:RenderLayer(2, position, nullVector, nullVector)
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

---------------------------------------------------------------------------
---------------------------On Update Function------------------------------
-- Runs 30 times a second; doesn't update while paused

local collSpawned = false
EID.RecheckVoid = false

function EID:onGameUpdate()
	EID.GameUpdateCount = EID.GameUpdateCount + 1
	EID:checkPlayersForMissingItems()

	if collSpawned then
		collSpawned = false

		local curPositions = {}
		for _, entity in ipairs(Isaac.FindByType(5, 100, -1, true, false)) do
			-- Fix Overlapping Pedestals if a collectible spawned this frame (needed for Mega Chest)
			local pos = entity.Position
			for _, otherPos in ipairs(curPositions) do
				if pos:Distance(otherPos[2]) == 0 then
					entity:GetData()["EID_RenderOffset"] = Vector(10,0)
					otherPos[1]:GetData()["EID_RenderOffset"] = Vector(-10,0)
				end
			end
			table.insert(curPositions, {entity, entity.Position})
		end
		
		EID.RecheckVoid = true
	end
	
	-- Remove Crane Game item data if it's giving the prize out
	if REPENTANCE and EID.GameUpdateCount % 15 == 0 then
		for _, crane in ipairs(Isaac.FindByType(6, 16, -1, true, false)) do
			if EID.CraneItemType[tostring(crane.InitSeed)] then
				if crane:GetSprite():IsPlaying("Prize") then
					EID.CraneItemType[tostring(crane.InitSeed)] = nil
				end
			end
		end
	end
end
EID:AddCallback(ModCallbacks.MC_POST_UPDATE, EID.onGameUpdate)

-- Wait until all collectibles spawning this frame have spawned before checking what we need to check about them
function EID:CollectibleSpawnedThisFrame(entity)
	collSpawned = true
end
EID:AddCallback(ModCallbacks.MC_POST_PICKUP_INIT, EID.CollectibleSpawnedThisFrame, PickupVariant.PICKUP_COLLECTIBLE)

-- Pathchecking
local pathCheckerEntity = nil
local lastPathfindFrame = -1

local function attemptPathfind(entity)
	if (EID.Config["DisableObstructionOnFlight"] and EID.player.CanFly) then
		pathsChecked[entity.InitSeed] = true
		return true
	end
	-- Don't reattempt pathfinding more than 3 times a second, unless this is a new entity
	if pathsChecked[entity.InitSeed] == false and EID.GameUpdateCount - lastPathfindFrame < 10 then return false end
	
	-- Spawn a custom NPC entity to attempt a pathfind to the target pickup, then remove it afterwards
	pathCheckerEntity = game:Spawn(17, 3169, EID.player.Position, nullVector, EID.player, 0, 4354)
	pathCheckerEntity:ClearEntityFlags(EntityFlag.FLAG_APPEAR)
	-- Not sure how much of this flagging is needed now that the entity is immediately removed afterwards
	pathCheckerEntity:AddEntityFlags(EntityFlag.FLAG_PERSISTENT | EntityFlag.FLAG_NO_STATUS_EFFECTS | EntityFlag.FLAG_NO_SPRITE_UPDATE | EntityFlag.FLAG_HIDE_HP_BAR | EntityFlag.FLAG_NO_DEATH_TRIGGER | EntityFlag.FLAG_FRIENDLY)
	if REPENTANCE then pathCheckerEntity:AddEntityFlags(EntityFlag.FLAG_NO_QUERY) end -- can it even be queried in this brief time?
	pathCheckerEntity.EntityCollisionClass = EntityCollisionClass.ENTCOLL_NONE
	pathCheckerEntity.Visible = false -- it's invisible anyway?
	pathCheckerEntity.Position = EID.player.Position -- not needed, it spawned at our position?
	
	local success = pathCheckerEntity:ToNPC().Pathfinder:HasPathToPos(entity.Position, false)
	pathsChecked[entity.InitSeed] = success
	pathCheckerEntity:Remove()
	pathCheckerEntity = nil
	lastPathfindFrame = EID.GameUpdateCount
	return success
end

local achievementTrinket = Isaac.GetTrinketIdByName("EID Achievements Locked Check")
-- hide helper trinket in Encyclopedia mod
if Encyclopedia then
	Encyclopedia.AddTrinket({
		ID = achievementTrinket,
		Hide = true,
	})
end

local hasShownAchievementWarning = false
local function renderAchievementInfo()
	if REPENTANCE and not EID.Config.DisableAchievementCheck and game:GetFrameCount() < 10*30 then
		-- Old Repentance version check; update this to check for the existence of the newest mod API function EID uses
		-- 1.7.6 (Nov. 16, 2021): The Options object (to read the game's options like HUD Offset)
		if Options == nil then
			local demoDescObj = EID:getDescriptionObj(-999, -1, 1)
			demoDescObj.Name = EID:getDescriptionEntry("AchievementWarningTitle") or ""
			demoDescObj.Description = EID:getDescriptionEntry("OldGameVersionWarningText") or ""
			EID:displayPermanentText(demoDescObj)
			hasShownAchievementWarning = true
		-- Bag of Crafting modded items check
		elseif EID.player:HasCollectible(710) and EID:DetectModdedItems() and EID.Config.DisplayBagOfCrafting ~= "never" and (EID.Config.BagOfCraftingDisplayMode == "Recipe List" or EID.Config.BagOfCraftingDisplayMode == "Preview Only") then
			local demoDescObj = EID:getDescriptionObj(-999, -1, 1)
			demoDescObj.Name = EID:getDescriptionEntry("AchievementWarningTitle") or ""
			demoDescObj.Description = EID:getDescriptionEntry("ModdedRecipesWarningText") or ""
			EID:displayPermanentText(demoDescObj)
			hasShownAchievementWarning = true
		-- Achievements Locked Check (do we have Cube of Meat or Book of Revelations unlocked?)
		elseif not EID.achievementsEnabled then
			local demoDescObj = EID:getDescriptionObj(-999, -1, 1)
			demoDescObj.Name = EID:getDescriptionEntry("AchievementWarningTitle") or ""
			demoDescObj.Description = EID:getDescriptionEntry("AchievementWarningText") or ""
			EID:displayPermanentText(demoDescObj)
			hasShownAchievementWarning = true
		end
	elseif hasShownAchievementWarning then
		EID:hidePermanentText()
	end
end


---------------------------------------------------------------------------
---------------------------On Render Function------------------------------
local searchPartitions = EntityPartition.FAMILIAR + EntityPartition.ENEMY + EntityPartition.PICKUP + EntityPartition.PLAYER

EID.lastDescriptionEntity = nil
EID.lastDist = 0
EID.OptionChanged = false

local function onRender(t)
	-- Increases by 60 per second, ignores pauses
	EID.GameRenderCount = EID.GameRenderCount + 1
	EID.OptionChanged = EID.MCM_OptionChanged
	EID.MCM_OptionChanged = false
	EID:resumeCoroutines()

	EID.isDisplaying = false
	EID:setPlayer()
	EID.TabPreviewID = 0
	
	if Input.IsButtonTriggered(EID.Config["HideKey"], 0) or Input.IsButtonTriggered(EID.Config["HideButton"], EID.player.ControllerIndex) then
		EID.isHidden = not EID.isHidden
	end

	handleScaleKey()
	
	if ModConfigMenu and ModConfigMenu.IsVisible and ModConfigMenu.Config["Mod Config Menu"].HideHudInMenu and EID.MCMCompat_isDisplayingEIDTab ~= "Visuals" and EID.MCMCompat_isDisplayingEIDTab ~= "Crafting" then --if the mod config menu exists, is opened and Hide Hud is enabled, and ModConfigMenu isn't currently in the "Visuals" or "Crafting" tab of EID
		return
	end
	
	renderAchievementInfo()
	EID:renderMCMDummyDescription()

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
	
	if REPENTANCE and EID.player:HasCollectible(710) then
		local success = EID:handleBagOfCraftingRendering()
		if success then
			return
		end
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
				-- break ties with the render offset (for Mega Chest double collectibles)
				if diff:Length() == EID.lastDist and entity:GetData()["EID_RenderOffset"] then
					diff = diff + entity:GetData()["EID_RenderOffset"]
				end
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
			EID.Scale = EID.Config["Size"]
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
		local origDesc = EID:getDescriptionObjByEntity(closest)
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
	
	-- Handle Glitched Items
	if closest.Type == 5 and closest.Variant == 100 and closest.SubType > 4294960000 then
		local glitchedObj = EID:getDescriptionObj(closest.Type, closest.Variant, closest.SubType)
		local glitchedDesc = EID:getXMLDescription(closest.Type, closest.Variant, closest.SubType)
		
		-- force the default glitchy description if option is off
		if not EID.Config["DisplayGlitchedItemInfo"] then
			glitchedObj.Description = glitchedDesc
		-- grab the Item Config info if eid_tmtrainer.lua hasn't taken care of it
		elseif not debug then
			glitchedObj.Description = EID:CheckGlitchedItemConfig(closest.SubType) .. glitchedDesc
		end
		
		EID:printDescription(glitchedObj)
		return
	-- Handle Dice Room Floor
	elseif closest.Type == 1000 and closest.Variant == 76 then
		EID:printDescription(EID:getDescriptionObj(closest.Type, closest.Variant, closest.SubType+1, closest))
		return
	-- Handle Crane Game
	elseif closest.Type == 6 and closest.Variant == 16 then
		if EID.CraneItemType[tostring(closest.InitSeed)] then
			if EID:getEntityData(closest, "EID_DontHide") ~= true then
				if (EID:hasCurseBlind() and EID.Config["DisableOnCurse"]) or (game.Challenge == Challenge.CHALLENGE_APRILS_FOOL and EID.Config["DisableOnAprilFoolsChallenge"]) then
					EID:renderQuestionMark()
					return
				end
			end
			local collectibleID = EID.CraneItemType[tostring(closest.InitSeed)]
			local descriptionObj = EID:getDescriptionObj(5, 100, collectibleID, closest)
			
			EID:printDescription(descriptionObj)
			return
		end
	end
	
	if closest.Variant == 110 then
		--Handle Broken Shovel
		local descriptionObj = EID:getDescriptionObj(5, 100, 550, closest)
		EID:printDescription(descriptionObj)
	elseif closest.Variant == PickupVariant.PICKUP_TRINKET then
		--Handle Trinkets
		local descriptionObj = EID:getDescriptionObjByEntity(closest)
		EID:printDescription(descriptionObj)

	elseif closest.Variant == PickupVariant.PICKUP_COLLECTIBLE then
		--Handle Collectibles
		if EID:getEntityData(closest, "EID_DontHide") ~= true then
			if (EID:hasCurseBlind() and not closest:ToPickup().Touched and EID.Config["DisableOnCurse"] and not isDeathCertRoom) or (EID.Config["DisableOnAltPath"] and not closest:ToPickup().Touched and EID:IsAltChoice(closest)) or (game.Challenge == Challenge.CHALLENGE_APRILS_FOOL and EID.Config["DisableOnAprilFoolsChallenge"]) then
				EID:renderQuestionMark()
				return
			end
		end
		local descriptionObj = EID:getDescriptionObjByEntity(closest)
		EID:printDescription(descriptionObj)

	elseif closest.Variant == PickupVariant.PICKUP_TAROTCARD then
		--Handle Cards & Runes
		if (not EID.Config["DisplayObstructedCardInfo"] or not EID.Config["DisplayObstructedSoulstoneInfo"]) and closest.FrameCount < 3 then
			-- small delay when having obstruction enabled & entering the room to prevent spoilers
			return
		end
		if EID:getEntityData(closest, "EID_DontHide") ~= true then
			local isSoulstone = closest.SubType >= 81 and closest.SubType <= 97
			local hideinShop = closest:ToPickup():IsShopItem() and ((not isSoulstone and not EID.Config["DisplayCardInfoShop"]) or (isSoulstone and not EID.Config["DisplaySoulstoneInfoShop"]))
			local isOptionsSpawn = REPENTANCE and not EID.Config["DisplayCardInfoOptions?"] and closest:ToPickup().OptionsPickupIndex > 0
			local obstructed = ((not isSoulstone and not EID.Config["DisplayObstructedCardInfo"]) or
			(not EID.Config["DisplayObstructedSoulstoneInfo"] and isSoulstone)) and
			(not pathsChecked[closest.InitSeed] and not attemptPathfind(closest))
			if isOptionsSpawn or hideinShop or obstructed or (REPENTANCE and game.Challenge == Challenge.CHALLENGE_CANTRIPPED) then
				EID:renderQuestionMark()
				return
			end
		end
		local descriptionObj = EID:getDescriptionObjByEntity(closest)
		EID:printDescription(descriptionObj)

	elseif closest.Variant == PickupVariant.PICKUP_PILL then
		--Handle Pills
		if not EID.Config["DisplayObstructedPillInfo"] and closest.FrameCount < 3 then
			-- small delay when having obstruction enabled & entering the room to prevent spoilers
			return
		end
		if EID:getEntityData(closest, "EID_DontHide") ~= true then
			local hideinShop = closest:ToPickup():IsShopItem() and not EID.Config["DisplayPillInfoShop"]
			local isOptionsSpawn = REPENTANCE and not EID.Config["DisplayPillInfoOptions?"] and closest:ToPickup().OptionsPickupIndex > 0
			local obstructed = not EID.Config["DisplayObstructedPillInfo"] and
			(not pathsChecked[closest.InitSeed] and not attemptPathfind(closest))
			if isOptionsSpawn or hideinShop or obstructed then
				EID:renderQuestionMark()
				return
			end
		end

		local pillColor = closest.SubType
		local pool = game:GetItemPool()
		local identified = pool:IsPillIdentified(pillColor)
		if REPENTANCE and pillColor % PillColor.PILL_GIANT_FLAG == PillColor.PILL_GOLD then identified = true end
		if (identified or EID.Config["ShowUnidentifiedPillDescriptions"]) then
			local descEntry = EID:getDescriptionObj(closest.Type, closest.Variant, pillColor, closest)
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
		local descriptionEntry = EID:getDescriptionObjByEntity(closest)
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
	local configIgnoreList = {
		["BagContent"] = true,
		["BagFloorContent"] = true,
		["CraneItemType"] = true,
		["FlipItemPositions"] = true,
		["AbsorbedItems"] = true,
		["CollectedItems"] = true,
	}
	--------------------------------
	--------Handle Savadata---------
	--------------------------------
	function OnGameStart(_,isSave)
		--Loading Moddata--

		if EID:HasData() then
			local savedEIDConfig = json.decode(Isaac.LoadModData(EID))
			
			-- collection progress
			EID.CollectedItems = savedEIDConfig["CollectedItems"] or {}
			if EID.SaveGame and EID.Config["SaveGameNumber"] > 0 then
				for _, id in ipairs(EID.CollectedItems) do
					EID.SaveGame[EID.Config["SaveGameNumber"]].ItemNeedsPickup[id] = nil
				end
			end

			if REPENTANCE then
				EID.BagItems = {}
				EID.CraneItemType = {}
				EID.flipItemPositions = {}
				EID.absorbedItems = {}
				
				if isSave then
					EID.BagItems = savedEIDConfig["BagContent"] or {}
					EID.bagOfCraftingRoomQueries = savedEIDConfig["BagFloorContent"] or {}
					EID.CraneItemType = savedEIDConfig["CraneItemType"] or {}
					EID.absorbedItems = savedEIDConfig["AbsorbedItems"] or {}

					-- turn list back into dict because json cant save dict indices.
					local flipItemTable = {}
					for _, v in ipairs(savedEIDConfig["FlipItemPositions"]) do
						local roomContent = {}
						for _, v1 in ipairs(v[2]) do
							roomContent[v1[1]] = v1[2]
						end
						flipItemTable[v[1]] = roomContent
					end

					EID.flipItemPositions = flipItemTable
					for k, _ in pairs(configIgnoreList) do
						savedEIDConfig[k] = nil
					end
					EID:AssignFlipItems()
				end
			end
			
			-- Only copy Saved config entries that exist in the save
			if savedEIDConfig.Version == EID.Config.Version then
				local isDefaultConfig = true
				for key, value in pairs(EID.Config) do
					if type(value) ~= type(EID.DefaultConfig[key]) and not configIgnoreList[key] then
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
				EID.Scale = EID.Config["Size"]
				
				EID:fixDefinedFont()
				EID:loadFont(EID.modPath .. "resources/font/eid_"..EID.Config["FontType"]..".fnt")
				if REPENTANCE then
					EID:addTextPosModifier("HudOffset", Vector(((Options.HUDOffset * 10) * 2) - 20, (Options.HUDOffset * 10) - 10))
				else
					EID:addTextPosModifier("HudOffset", Vector((EID.Config["HUDOffset"] * 2) - 20, EID.Config["HUDOffset"] - 10))
				end
			end
		end
		
		-- Check and set if achievements are enabled
		EID.achievementsEnabled = game:GetItemPool():RemoveTrinket(achievementTrinket)
	end
	EID:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, OnGameStart)

	--Saving Moddata--
	function SaveGame()
		if REPENTANCE then
			EID.Config["BagContent"] = EID.BagItems or {}
			EID.Config["BagFloorContent"] = EID.bagOfCraftingRoomQueries or {}
			EID.Config["CraneItemType"] = EID.CraneItemType or {}
			EID.Config["AbsorbedItems"] = EID.absorbedItems or {}

			-- turn dictionary into list because json cant save dict indices.
			local flipItemTable = {}
			for k, v in pairs(EID.flipItemPositions) do
				local roomContent = {}
				for k1, v1 in pairs(v) do
					table.insert(roomContent, {k1,v1})
				end
				table.insert(flipItemTable, {k,roomContent})
			end
			EID.Config["FlipItemPositions"] = flipItemTable or {}
		end
		EID.Config["CollectedItems"] = EID.CollectedItems

		EID.SaveData(EID, json.encode(EID.Config))
		EID:hidePermanentText()
		EID.itemUnlockStates[CollectibleType.COLLECTIBLE_CUBE_OF_MEAT] = nil
		EID.itemUnlockStates[CollectibleType.COLLECTIBLE_BOOK_OF_REVELATIONS or CollectibleType.COLLECTIBLE_BOOK_REVELATIONS] = nil
	end
	EID:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT, SaveGame)
end

if EID.enableDebug then
	require("eid_debugging")
end
