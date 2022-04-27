EID = RegisterMod("External Item Descriptions", 1)
-- important variables
EID.GameVersion = "ab+"
EID.Languages = {"en_us", "en_us_detailed", "fr", "pt", "pt_br", "ru", "spa", "it", "bul", "pl", "de", "tr_tr", "ko_kr", "zh_cn", "ja_jp", "cs_cz"}
EID.descriptions = {} -- Table that holds all translation strings
EID.enableDebug = false
local game = Game()

require("eid_config")
EID.Config = EID.UserConfig
EID.Config.Version = "3.2" -- note: changing this will reset everyone's settings to default!
EID.ModVersion = "4.28"
EID.DefaultConfig.Version = EID.Config.Version
EID.isHidden = false
EID.player = nil -- The primary Player Entity of Player 1
EID.players = {} -- Both Player Entities of Player 1 if applicable (includes Esau, T.Forgotten)
EID.coopMainPlayers = {} -- The primary Player Entity for each controller being used
EID.coopAllPlayers = {} -- Every Player Entity (includes Esau, T.Forgotten)
EID.controllerIndexes = {} -- A table to map each controller index to their player number for coloring indicators
EID.isMultiplayer = false -- Used to color P1's highlight/outline indicators (single player just uses white)

-- general variables
EID.PositionModifiers = {}
EID.DescModifiers = {}
EID.UsedPosition = Vector(EID.Config["XPosition"], EID.Config["YPosition"])
EID.Scale = EID.Config["Size"]
EID.isDisplaying = false
EID.isDisplayingPermanent = false
EID.permanentDisplayTextObj = nil
EID.lastDescriptionEntity = nil
EID.lineHeight = 11
EID.sacrificeCounter = {}
EID.itemConfig = Isaac.GetItemConfig()
EID.itemUnlockStates = {}
EID.CraneItemType = {}
EID.absorbedItems = {}
EID.CollectedItems = {}
EID.IgnoredEntities = {}
local pathsChecked = {}
local altPathItemChecked = {}
local alwaysUseLocalMode = false -- set to true after drawing a non-local mode description this frame
EID.ForceRefreshCache = false -- set to true to force-refresh descriptions, currently used for potential transformation text changes

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
	-- Quickly check some points in entitySprite to not need to check the whole sprite
	-- We check the range from Y -40 to 10 in 3 pixel steps and also X -1 to 1.  GetTexel() gets the color value of a sprite at a given location. the center of the sprite is here in the Pivot point of the sprite in the anm2 file. 
	-- therefore we go negative 40 pixels up to read the sprite as it is on a pedestal. We also look 10 pixel down to make comparing shop items more accurate
	
	for i = -1,1,1 do
		for j = -40,10,3 do
			local qcolor = questionMarkSprite:GetTexel(Vector(i,j),nullVector,1,1)
			local ecolor = entitySprite:GetTexel(Vector(i,j),nullVector,1,1)
			if qcolor.Red ~= ecolor.Red or qcolor.Green ~= ecolor.Green or qcolor.Blue ~= ecolor.Blue then
				-- it is not same with question mark sprite
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
						break
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
		if entityType == 6 and variant == 14 then
			-- Inner Child pedestal
			lastGetItemResult = {688, Isaac.GetFrameCount(), gridIndex, nil}
		elseif entityType == 5 then
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
		-- also, reload our descriptions due to transformation progress changing upon Flip
		EID.ForceRefreshCache = true
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
end

-- Watch for a Void absorbing active items
function EID:CheckVoidAbsorbs(collectibleType, rng, player)
	local playerID = EID:getPlayerID(player)
	EID.absorbedItems[tostring(playerID)] = EID.absorbedItems[tostring(playerID)] or {}
	for _,v in ipairs(EID:VoidRoomCheck()) do
		EID.absorbedItems[tostring(playerID)][tostring(v)] = true
	end
	EID.RecheckVoid = true
end
EID:AddCallback(ModCallbacks.MC_PRE_USE_ITEM, EID.CheckVoidAbsorbs, CollectibleType.COLLECTIBLE_VOID)

---------------------------------------------------------------------------
--------------------------Handle Scale Shortcut----------------------------

local scaleMin = 0.1
local scaleMax = 2
local scaleSpeed = 0.01 -- scale size per frame
local scaleToBigger = true
EID.CurrentScaleType = "Size" -- Size or LocalModeSize; checked by EID:getTextPosition() to not apply modifiers in local mode
local scaleHoldFrame = 0
local function handleScaleKey()
	local scaleKey = EID.Config["SizeHotkey"]

	-- press and hold ScaleKey
	if Input.IsButtonPressed(scaleKey, 0) then
		if scaleHoldFrame > 60 then
			EID.MCM_OptionChanged = true
			local newScale
			if scaleToBigger then
				newScale = EID.Scale + scaleSpeed
				if newScale > scaleMax then
					scaleToBigger = false
				end
			else
				newScale = EID.Scale - scaleSpeed
				if newScale < scaleMin then
					scaleToBigger = true
				end
			end
			EID.Scale = newScale
			EID.Config[EID.CurrentScaleType] = newScale
		else
			scaleHoldFrame = scaleHoldFrame + 1
		end
	end
	-- press ScaleKey
	if Input.IsButtonTriggered(scaleKey, 0) then
		EID.MCM_OptionChanged = true
		scaleHoldFrame = 0
		local scale = EID.Scale

		-- switch between 1, 1.5 and 0.5
		if math.abs(scale - 1) < 0.01 then
			scale = 1.5
		elseif math.abs(scale - 1.5) < 0.01 then
			scale = 0.5
		else
			scale = 1
		end

		EID.Config[EID.CurrentScaleType] = scale
		EID.Scale = scale
	end
end

---------------------------------------------------------------------------
---------------------------Printing Functions------------------------------

EID.previousDescs = {}
EID.CachingDescription = false
EID.CachedIcons = {}
EID.CachedStrings = {}
EID.CachedIndicators = {}
EID.CachedRenderPoses = {}
EID.descriptionsToPrint = {}
EID.entitiesToPrint = {}

local function resetDescCache()
	EID.CachedIcons = {}
	EID.CachedStrings = {}
	EID.CachedRenderPoses = {}
	-- EID.CachedIndicators = {}
	EID.previousDescs = {}
end


function EID:addDescriptionToPrint(desc)
	if desc.Entity and EID.entitiesToPrint[GetPtrHash(desc.Entity)] then return end
	table.insert(EID.descriptionsToPrint, desc)
	if desc.Entity then EID.entitiesToPrint[GetPtrHash(desc.Entity)] = true end
end

local prevPrintFrame = 0

function EID:printDescriptions(useCached)
	prevPrintFrame = EID.GameRenderCount
	
	EID.CachingDescription = false
	if not useCached then
		-- Test if we should print our cached descriptions or not
		-- Did an option change, or it's a different number of descriptions?
		if #EID.descriptionsToPrint ~= #EID.previousDescs or EID.OptionChanged or EID.MCM_OptionChanged then
			EID:printNewDescriptions()
			return
		end
		-- Do the description entities match, and the description texts match?
		for i,newDesc in ipairs(EID.descriptionsToPrint) do
			local oldDesc = EID.previousDescs[i]
			if newDesc.Description ~= oldDesc.Description or newDesc.Name ~= oldDesc.Name or
			(newDesc.Entity and oldDesc.Entity and GetPtrHash(newDesc.Entity) ~= GetPtrHash(oldDesc.Entity)) then
				EID:printNewDescriptions()
				return
			end
		end
	end
	
	if #EID.previousDescs > 0 then
		EID.isDisplaying = true
	end
	
	-- Print our cached descriptions
	for i,indicator in ipairs(EID.CachedIndicators) do
		EID:renderIndicator(indicator[1], indicator[2])
	end
	for i,oldDesc in ipairs(EID.previousDescs) do
		EID:printDescription(oldDesc, i)
	end
end

function EID:printNewDescriptions()
	EID.CachingDescription = true
	resetDescCache()
	
	for i,newDesc in ipairs(EID.descriptionsToPrint) do
		if newDesc.Description == "UnidentifiedPill" then
			if EID:renderUnidentifiedPill(newDesc.Entity) ~= false then
				table.insert(EID.previousDescs, newDesc)
			end
		elseif newDesc.Description == "QuestionMark" then
			if EID:renderQuestionMark(newDesc.Entity) ~= false then
				table.insert(EID.previousDescs, newDesc)
			end
		elseif EID:printDescription(newDesc) ~= false then
			table.insert(EID.previousDescs, newDesc)
		end
	end
	EID.CachingDescription = false
	
	if #EID.previousDescs > 0 then
		EID.isDisplaying = true
	end
end

function EID:printDescription(desc, cachedID)
	EID:PositionLocalMode(desc.Entity)
	-- Do not print this description if it has to be drawn in the top-left and we've already drawn a top-left desc this frame
	if EID.CurrentScaleType == "Size" then
		if alwaysUseLocalMode then return false
		else alwaysUseLocalMode = true end
	end
	EID.isDisplaying = true
	local renderPos = EID:getTextPosition()
	
	if cachedID then
		local localModeDiff = renderPos - EID.CachedRenderPoses[cachedID]
		-- Drawing our currently saved description
		for _,icon in ipairs(EID.CachedIcons[cachedID]) do
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
		for _,str in ipairs(EID.CachedStrings[cachedID]) do
			-- check for func (Rainbow, Blink, Fade), reset the color's Alpha to EID.Config["Transparency"] if func
			if str[5] then
				str[4].Alpha = str[6]
				str[4] = str[5](str[4])
			end
			EID.font:DrawStringScaledUTF8(str[1], str[2] + localModeDiff.X, str[3] + localModeDiff.Y, EID.Scale, EID.Scale, str[4], 0, false)
		end
		return
	else
		table.insert(EID.CachedIcons, {})
		table.insert(EID.CachedStrings, {})
		table.insert(EID.CachedRenderPoses, Vector(renderPos.X, renderPos.Y))
	end
	
	local textScale = Vector(EID.Scale, EID.Scale)
	local offsetX = 0
	EID.lineHeight = EID.Config["LineHeight"]
	if EID.Config["ShowItemIcon"] and desc.Icon then
		offsetX = offsetX + 14
		EID:renderInlineIcons({{desc.Icon,0}}, renderPos.X - 3 * EID.Scale, renderPos.Y - 4 * EID.Scale)
	end

	--Display ItemType / Charge
	local itemType = -1
	if desc.ObjSubType ~= nil and desc.ObjType == 5 and desc.ObjVariant == 100 then
		itemType = EID.itemConfig:GetCollectible(desc.ObjSubType).Type or -1
	end
	if EID.Config["ShowItemType"] and (itemType == 3 or itemType == 4) then
		local offsetY = 2
		EID.IconSprite:Play(EID.ItemTypeAnm2Names[itemType])
		EID:renderIcon(EID.IconSprite, renderPos.X + offsetX * EID.Scale, renderPos.Y + offsetY * EID.Scale, nil, EID.ItemTypeAnm2Names[itemType], 0)
		if itemType == 3 then
		 -- Display Charge
			offsetX = offsetX + 1
			local curItemConfig = EID.itemConfig:GetCollectible(desc.ObjSubType)
			local anim2 = "numbers"
			local frame2 = curItemConfig.MaxCharges
			if REPENTANCE and curItemConfig.ChargeType == ItemConfig.CHARGE_TIMED then
				anim2 = "Misc"; frame2 = 6 -- Timer Icon
			elseif REPENTANCE and (curItemConfig.ChargeType == ItemConfig.CHARGE_SPECIAL or desc.ObjSubType == CollectibleType.COLLECTIBLE_BLANK_CARD or desc.ObjSubType == CollectibleType.COLLECTIBLE_PLACEBO or 
			desc.ObjSubType == CollectibleType.COLLECTIBLE_CLEAR_RUNE or desc.ObjSubType == CollectibleType.COLLECTIBLE_D_INFINITY) then
				frame2 = 13 -- Question Mark Icon
			end
			EID.InlineIconSprite2:SetFrame(anim2, frame2)
			EID:renderIcon(EID.InlineIconSprite2, renderPos.X + offsetX * EID.Scale, renderPos.Y + offsetY * EID.Scale, nil, anim2, frame2)
		end
		offsetX = offsetX + 8
	end
	--Display Itemname
	local curName = ""
	if EID.Config["ShowItemName"] then
		curName = desc.Name
		if EID.Config["TranslateItemName"] ~= 2 then
			local curLanguage = EID.Config["Language"]
			if EID:getLanguage() ~= "en_us" then
				EID.Config["Language"] = "en_us"
				local englishName = desc.PermanentTextEnglish or EID:getObjectName(desc.ObjType, desc.ObjVariant, desc.ObjSubType)
				EID.Config["Language"] = curLanguage
				if EID.Config["TranslateItemName"] == 1 then
					curName = englishName
				elseif EID.Config["TranslateItemName"] == 3 and curName ~= englishName then
					curName = curName.." ("..englishName..")"
				end
			end
		end
	end
	-- Display Entity ID
	if EID.Config["ShowObjectID"] and desc.ObjType > 0 then
		curName = curName.." {{ColorGray}}"..desc.ObjType.."."..desc.ObjVariant.."."..desc.ObjSubType
	end
	-- Display Quality
	if EID.Config["ShowQuality"] and desc.Quality then
		curName = curName.." - {{Quality"..desc.Quality.."}}"
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
	
	renderPos.Y = renderPos.Y + EID.lineHeight * EID.Scale
	
	--Display Transformation
	if not (desc.Transformation == "0" or desc.Transformation == "" or desc.Transformation == nil) then
		for transform in string.gmatch(desc.Transformation, "([^,]+)") do
			--have a blank sprite info table if we aren't displaying it
			local transformSprite = EID.Config["TransformationIcons"] and EID:getTransformationIcon(transform) or {}
			local transformLineHeight = EID.lineHeight
			if EID.Config["TransformationIcons"] then
				transformLineHeight = math.max(EID.lineHeight, transformSprite[4])
				EID:renderInlineIcons({{transformSprite,0}}, renderPos.X, renderPos.Y)
			end
			if EID.Config["TransformationText"] or EID.Config["TransformationProgress"] then
				local transformationName = ""
				if EID.Config["TransformationText"] then
					transformationName = EID:getTransformationName(transform)
				end
				if EID.Config["TransformationProgress"] then
					EID:evaluateTransformationProgress(transform)
					transformationName = transformationName .. " "
					for _, player in ipairs(EID.coopAllPlayers) do
						if player:GetPlayerType() ~= PlayerType.PLAYER_THESOUL_B then
							if #EID.coopAllPlayers > 1 then
								local playerIcon = EID:getIcon("Player"..player.SubType) ~= EID.InlineIcons["ERROR"] and "{{Player"..player.SubType.."}}" or "{{CustomTransformation}}"
								transformationName = transformationName .. playerIcon
							end
							local numCollected = EID.TransformationProgress[EID:getPlayerID(player)][transform] or 0
							local numMax = EID.TransformationData[transform] and EID.TransformationData[transform].NumNeeded or 3
							transformationName = transformationName.."("..numCollected.."/"..numMax..") "
						end
					end
				end
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
			if (EID.Config["TransformationIcons"] or EID.Config["TransformationText"] or EID.Config["TransformationProgress"]) then
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
	description = EID:replaceMarkupSize(description)
	for line in string.gmatch(description, "([^#]+)") do
		local formatedLines = EID:fitTextToWidth(line, textboxWidth, EID.BreakUtf8CharsLanguage[EID:getLanguage()])
		local textColor = EID:getTextColor()
		for i, lineToPrint in ipairs(formatedLines) do
			-- render bulletpoint
			if i == 1 then
				local bpIcon, rejectedIcon = EID:handleBulletpointIcon(lineToPrint)
				if EID:getIcon(bpIcon) ~= EID.InlineIcons["ERROR"] then
					lineToPrint = string.gsub(lineToPrint, bpIcon .. " ", "", 1)
					textColor =	EID:renderString(bpIcon, renderPos + Vector(-3 * EID.Scale, 0), textScale , textColor)
				else
					if rejectedIcon then lineToPrint = string.gsub(lineToPrint, rejectedIcon .. " ", "", 1) end
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
		isDeathCertRoom = EID:IsDeathCertificateRoom()
		
		-- Handle Flip Item
		initialItemNext = false
		flipItemNext = false
		EID:AssignFlipItems()
	end
	EID:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, EID.onNewRoom)
end
---------------------------------------------------------------------------
---------------------------Handle Rendering--------------------------------

function EID:renderQuestionMark(entity)
	EID:PositionLocalMode(entity)
	if EID.CurrentScaleType == "Size" then
		if alwaysUseLocalMode then return false
		else alwaysUseLocalMode = true end
	end
	EID.IconSprite:Play("CurseOfBlind")
	local pos = EID:getTextPosition()
	if EID.CachingDescription then
		table.insert(EID.CachedStrings, {})
		table.insert(EID.CachedIcons, {})
		table.insert(EID.CachedRenderPoses, Vector(pos.X, pos.Y))
	end
	EID:renderIcon(EID.IconSprite, pos.X + 5 * EID.Scale, pos.Y + 5 * EID.Scale, nil, "CurseOfBlind", 0)
end

function EID:renderUnidentifiedPill(entity)
	EID:PositionLocalMode(entity)
	if EID.CurrentScaleType == "Size" then
		if alwaysUseLocalMode then return false
		else alwaysUseLocalMode = true end
	end
	local pillColor = entity.SubType
	if pillColor >= 2049 then
		pillColor = pillColor - 2048
	end
	local pos = EID:getTextPosition()
	if EID.CachingDescription then
		table.insert(EID.CachedStrings, {})
		table.insert(EID.CachedIcons, {})
		table.insert(EID.CachedRenderPoses, Vector(pos.X, pos.Y))
	end
	EID:renderString(
		"{{Pill"..pillColor.."}} "..EID:getDescriptionEntry("unidentifiedPill"),
		pos,
		Vector(EID.Scale, EID.Scale),
		EID:getErrorColor()
	)
end

-- RGB colors for each player's highlights (Red, Blue, Green, Yellow)
local playerRGB = { {1,0.6,0.6}, {0.5,0.75,1}, {0.5,1,0.75}, {0.9, 0.9, 0.5} }
function EID:renderIndicator(entity, playerNum)
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
		if entity.Variant == 100 and EID.player:HasCollectible(CollectibleType.COLLECTIBLE_FLIP) and EID:getEntityData(entity, "EID_FlipItemID") then
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
	
	-- Don't apply sprite.Color changes to Effects (Dice Floors, Card Reading Portals), use Arrow instead
	if EID.Config["Indicator"] == "arrow" or entity.Type == 1000 then
		ArrowSprite:RenderLayer(playerNum-1, arrowPos, nullVector, nullVector)
	else
		local colorMult = {1,1,1}
		if EID.isMultiplayer then colorMult = playerRGB[playerNum] end
		if EID.Config["Indicator"] == "blink" then
			local c = 255 - math.floor(255 * ((entity.FrameCount % 40) / 40))
			local r, g, b = math.floor(c*colorMult[1]), math.floor(c*colorMult[2]), math.floor(c*colorMult[3])
			sprite.Color = Color(1, 1, 1, 1, r/repDiv, g/repDiv, b/repDiv)
			EID:renderEntity(entity, sprite, entityPos)
			sprite.Color = Color(1, 1, 1, 1, 0, 0, 0)
		else
			if EID.Config["Indicator"] == "highlight" then
				local c = 255 - math.floor(255 * ((entity.FrameCount % 40) / 40))
				local r, g, b = math.floor(c*colorMult[1]), math.floor(c*colorMult[2]), math.floor(c*colorMult[3])
				sprite.Color = Color(1, 1, 1, 1, r/repDiv, g/repDiv, b/repDiv)
			elseif EID.Config["Indicator"] == "border" then
				local c = 255
				local r, g, b = math.floor(c*colorMult[1]), math.floor(c*colorMult[2]), math.floor(c*colorMult[3])
				sprite.Color = Color(1, 1, 1, 1, r/repDiv, g/repDiv, b/repDiv)
			end
			EID:renderEntity(entity, sprite, entityPos + Vector(0, 1))
			EID:renderEntity(entity, sprite, entityPos + Vector(0, -1))
			EID:renderEntity(entity, sprite, entityPos + Vector(1, 0))
			EID:renderEntity(entity, sprite, entityPos + Vector(-1, 0))
			sprite.Color = Color(1, 1, 1, 1, 0, 0, 0)
			EID:renderEntity(entity, sprite, entityPos)
		end
	end
	if isMirrorRoom then
		sprite.FlipX = false
	end
end

function EID:PositionLocalMode(entity)
	-- don't use Local Mode for descriptions without an entity (or dice floors)
	if (EID.Config["DisplayMode"] == "local" or alwaysUseLocalMode) and entity and entity.Variant ~= EffectVariant.DICE_FLOOR then
		EID.Scale = EID.Config["LocalModeSize"]
		EID.CurrentScaleType = "LocalModeSize"
		local textBoxWidth = EID.Config["LocalModeCentered"] and tonumber(EID.Config["TextboxWidth"])/2 * EID.Scale or -30
		local textPosOffset = Vector(-textBoxWidth, 20)
		EID:alterTextPos(Isaac.WorldToScreen(entity.Position + textPosOffset))
		if isMirrorRoom then
			EID:alterTextPos(Isaac.WorldToScreen(entity.Position + textPosOffset * Vector(-1,0)))
			local screenCenter = EID:getScreenSize()/2
			EID.UsedPosition.X = EID.UsedPosition.X - (EID.UsedPosition-screenCenter).X * 2
		end
		if entity:ToPickup() and entity:ToPickup():IsShopItem() then
			EID:alterTextPos(Isaac.WorldToScreen(entity.Position + textPosOffset))
		end
	else
		EID.Scale = EID.Config["Size"]
		EID.CurrentScaleType = "Size"
		EID.UsedPosition = Vector(EID.Config["XPosition"], EID.Config["YPosition"])
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
	local mousePos = Isaac.WorldToScreen(Input.GetMousePosition(true)) * 2
	if mousePos:Distance(lastMousePos) > 2 then
		lastMousePos = mousePos
		lastMouseMove = game:GetFrameCount()
	end
	if game:GetFrameCount() - lastMouseMove > 60 * 3 then
		return nil
	end
	if EID.Config["ShowCursor"] then
		EID.CursorSprite:Render(Vector(mousePos.X / 2, mousePos.Y / 2), nullVector, nullVector)
	end
	for k, v in pairs(EID.HUDElements) do
		local hudElement = EID:handleHUDElement(v)
		if hudElement.x <= mousePos.X and (hudElement.x + hudElement.width) >= mousePos.X and hudElement.y <= mousePos.Y and (hudElement.y + hudElement.height) >= mousePos.Y then
			local result = hudElement.descriptionObj()
			if result then return result end
		end
	end
	return nil
end

function EID:setPlayer()
	local numPlayers = game:GetNumPlayers()
	-- Old simple setPlayer, to reduce runtime in single player
	if numPlayers == 1 or not EID.Config["CoopDescriptions"] then
		local p = Isaac.GetPlayer(0)
		if REPENTANCE and p:GetPlayerType() == PlayerType.PLAYER_THEFORGOTTEN_B then
			EID.player = p:GetOtherTwin() or p
		else
			EID.player = p
		end
		EID.players = { EID.player, REPENTANCE and EID.player:GetOtherTwin() }
		EID.coopMainPlayers = { EID.player }
		EID.coopAllPlayers = EID.players
		EID.controllerIndexes[p.ControllerIndex] = 1
		return
	end
	
	-- Get our primary player, our list of all players, and a list of the primary player for each controller
	EID.coopAllPlayers = {} -- all player characters in order
	EID.coopMainPlayers = {} -- the primary player character from each controller
	EID.controllerIndexes = {} -- simple table to map each controller index to P1/P2/P3/P4 (since index 0 could be P2)
	local currentPlayerNum = 1
	for i = 0, numPlayers - 1 do
		local player = Isaac.GetPlayer(i)
		-- Don't include player entities with a parent (Strawman / Soul of Jacob and Esau)
		if player.Parent == nil then
			local newIndex = not EID.controllerIndexes[player.ControllerIndex]
			-- Tainted Soul is treated as the primary player for Tainted Forgotten, so swap them
			if REPENTANCE and (player:GetPlayerType() == PlayerType.PLAYER_THEFORGOTTEN_B
				or player:GetPlayerType() == PlayerType.PLAYER_THESOUL_B) then
				player = player:GetOtherTwin() or player
			end
			
			table.insert(EID.coopAllPlayers, player)
			if newIndex then
				table.insert(EID.coopMainPlayers, player)
				EID.controllerIndexes[player.ControllerIndex] = currentPlayerNum
				currentPlayerNum = currentPlayerNum + 1
			end
		end
	end
	EID.player = EID.coopAllPlayers[1]
	-- second entry will be nil if no twin or AB+ (REPENTANCE = nil)
	EID.players = { EID.player, REPENTANCE and EID.player:GetOtherTwin() }
	EID.isMultiplayer = #EID.coopMainPlayers > 1
end

---------------------------------------------------------------------------
---------------------------On Update Function------------------------------
-- Runs 30 times a second; doesn't update while paused

local collSpawned = false
EID.RecheckVoid = false

function EID:onGameUpdate()
	EID.GameUpdateCount = EID.GameUpdateCount + 1
	EID:checkPlayersForMissingItems()
	EID:evaluateQueuedItems()
	
	-- Fix some outdated mods erroneously setting the REPENTANCE constant to false
	if EID.GameVersion == "rep" and REPENTANCE == false then
		REPENTANCE = true
	end

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
	if REPENTANCE and EID.GameUpdateCount % 10 == 0 then
		for _, crane in ipairs(Isaac.FindByType(6, 16, -1, true, false)) do
			if EID.CraneItemType[tostring(crane.InitSeed)] then
				if crane:GetSprite():IsPlaying("Prize") then
					EID.CraneItemType[tostring(crane.InitSeed)] = nil
				-- Pair the Crane Game's new drop seed with the latest collectible ID it's gotten
				-- (fixes Glowing Hour Glass rewinds)
				elseif EID.CraneItemType[crane.InitSeed.."Drop"..crane.DropSeed] == nil then
					EID.CraneItemType[crane.InitSeed.."Drop"..crane.DropSeed] = EID.CraneItemType[tostring(crane.InitSeed)]
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
	
	-- Spawn a Fireplace entity to attempt a pathfind to the target pickup, then remove it afterwards
	pathCheckerEntity = game:Spawn(33, 0, EID.player.Position, nullVector, EID.player, 6969, 4354)
	pathCheckerEntity:GetData()["EID_Pathfinder"] = true
	pathCheckerEntity.Visible = false
	local success = pathCheckerEntity:ToNPC().Pathfinder:HasPathToPos(entity.Position, false)
	pathsChecked[entity.InitSeed] = success
	pathCheckerEntity:Remove()
	pathCheckerEntity = nil
	lastPathfindFrame = EID.GameUpdateCount
	return success
end

local hasShownStartWarning = false
local function checkStartOfRunWarnings()
	if REPENTANCE and not EID.Config["DisableStartOfRunWarnings"] and game:GetFrameCount() < 10*30 then
		-- Old Repentance version check; update this to check for the existence of the newest mod API function EID uses
		-- 1.7.6 (Nov. 16, 2021): The Options object (to read the game's options like HUD Offset)
		if Options == nil then
			local demoDescObj = EID:getDescriptionObj(-999, -1, 1)
			demoDescObj.Name = EID:getDescriptionEntry("AchievementWarningTitle") or ""
			demoDescObj.Description = EID:getDescriptionEntry("OldGameVersionWarningText") or ""
			EID:displayPermanentText(demoDescObj, "AchievementWarningTitle")
			hasShownStartWarning = true
		-- Bag of Crafting modded items check
		elseif EID:PlayersHaveCollectible(710) and EID:DetectModdedItems() and EID.Config.DisplayBagOfCrafting ~= "never" and 
		(EID.Config.BagOfCraftingDisplayMode == "Recipe List" or EID.Config.BagOfCraftingDisplayMode == "Preview Only") then
			local demoDescObj = EID:getDescriptionObj(-999, -1, 1)
			demoDescObj.Name = EID:getDescriptionEntry("AchievementWarningTitle") or ""
			demoDescObj.Description = EID:getDescriptionEntry("ModdedRecipesWarningText") or ""
			EID:displayPermanentText(demoDescObj, "AchievementWarningTitle")
			hasShownStartWarning = true
		else
			if not EID:AreAchievementsAllowed() then
				local demoDescObj = EID:getDescriptionObj(-999, -1, 1)
				demoDescObj.Name = EID:getDescriptionEntry("AchievementWarningTitle") or ""
				demoDescObj.Description = EID:getDescriptionEntry("AchievementWarningText") or ""
				EID:displayPermanentText(demoDescObj, "AchievementWarningTitle")
				hasShownStartWarning = true
			end
		end
	elseif hasShownStartWarning then
		EID:hidePermanentText()
		hasShownStartWarning = false
	end
end

-- Check our position modifiers based on HUD offset and character choice
local function checkPosModifiers()
	-- HUD offset adjustment, done every frame so it looks nice while changing the option
	if Options then
		EID:addTextPosModifier("HudOffset", Vector(((Options.HUDOffset * 10) * 2) - 20, (Options.HUDOffset * 10) - 10))
	else
		EID:addTextPosModifier("HudOffset", Vector((EID.Config["HUDOffset"] * 2) - 20, EID.Config["HUDOffset"] - 10))
	end
	-- the other modifiers don't need to be ran as frequently
	if EID.GameRenderCount % 30 ~= 0 then return end
	-- Greed Mode small right adjustment
	if game:IsGreedMode() then
		EID:addTextPosModifier("Greed Mode Horizontal", Vector(8,0))
	else
		EID:removeTextPosModifier("Greed Mode Horizontal")
	end
	if not REPENTANCE then
		-- AB+ Schoolbag adjustment
		if EID.player:HasCollectible(CollectibleType.COLLECTIBLE_SCHOOLBAG) then
			EID:addTextPosModifier("Schoolbag", Vector(0,30))
		else
			EID:removeTextPosModifier("Schoolbag")
		end
	else
		-- Tainted Isaac and Tainted ??? unique HUD adjustment
		if EID.player:GetPlayerType() == 21 or EID.player:GetPlayerType() == 25 then
			EID:addTextPosModifier("Tainted HUD", Vector(0,30))
		else
			EID:removeTextPosModifier("Tainted HUD")
		end
		-- Jacob and Esau card/pill adjustment
		if EID.player:GetPlayerType() == 19 then
			EID:addTextPosModifier("J&E HUD", Vector(0,15))
		else
			EID:removeTextPosModifier("J&E HUD")
		end
		-- Magdalene Birthright third row of hearts adjustment
		if EID.player:GetPlayerType() == 1 and EID.player:HasCollectible(619) then
			EID:addTextPosModifier("18 Heart HUD", Vector(0,5))
		else
			EID:removeTextPosModifier("18 Heart HUD")
		end
	end
end


---------------------------------------------------------------------------
---------------------------On Render Function------------------------------
local searchPartitions = EntityPartition.FAMILIAR + EntityPartition.ENEMY + EntityPartition.PICKUP + EntityPartition.PLAYER

EID.lastDescriptionEntity = nil
EID.lastDist = 0
EID.OptionChanged = false
EID.bagPlayer = nil

local function onRender(t)
	-- Increases by 60 per second, ignores pauses
	EID.GameRenderCount = EID.GameRenderCount + 1
	EID.OptionChanged = EID.MCM_OptionChanged
	EID.MCM_OptionChanged = false
	EID:resumeCoroutines()
	ArrowSprite:Update()
	EID:setPlayer()
	
	EID.isDisplaying = false
	EID.descriptionsToPrint = {}
	EID.entitiesToPrint = {}
	alwaysUseLocalMode = false
	
	-- if frames were skipped (due to EID being hidden / in battle / in options), wipe the desc cache
	if EID.GameRenderCount > prevPrintFrame + 1 then
		resetDescCache()
		EID.CachedIndicators = {}
	end
	
	-- Do not check our hide or scale hotkeys while a tab that can modify them is open
	if EID.MCMCompat_isDisplayingEIDTab ~= "Visuals" then
		-- scale key must be handled before resetting to non-local mode
		handleScaleKey()
		if Input.IsButtonTriggered(EID.Config["HideKey"], 0) or Input.IsButtonTriggered(EID.Config["HideButton"], EID.player.ControllerIndex) then
			EID.isHidden = not EID.isHidden
		end
	end
	EID.TabPreviewID = 0
	
	-- If MCM is open, don't show anything unless we're in a tab labeled as "Visuals" or "Crafting"
	if ModConfigMenu and ModConfigMenu.IsVisible and ModConfigMenu.Config["Mod Config Menu"].HideHudInMenu and EID.MCMCompat_isDisplayingEIDTab ~= "Visuals" and EID.MCMCompat_isDisplayingEIDTab ~= "Crafting" then
		return
	end
	
	if REPENTANCE then
		local hasBag, bagPlayer = EID:PlayersHaveCollectible(710)
		if hasBag then
			EID.bagPlayer = bagPlayer
			EID:handleBagOfCraftingUpdating()
			-- If we're in the Crafting options tab, the only rendering we want to happen is the Bag of Crafting preview
			if ModConfigMenu and ModConfigMenu.IsVisible and EID.MCMCompat_isDisplayingEIDTab == "Crafting" then
				local craftingSuccess = EID:handleBagOfCraftingRendering(true)
				if craftingSuccess then
					EID:printDescription(EID.descriptionsToPrint[#EID.descriptionsToPrint])
				end
				return
			end
		end
	end
	
	-- Handle descriptions that display regardless of player position
	checkStartOfRunWarnings()
	checkPosModifiers()
	EID:renderMCMDummyDescription()
	
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
	
	if EID.ForceRefreshCache then
		resetDescCache()
	end
	-- This is not a frame we should check for new descriptions; just print our cached ones
	if not EID:RefreshThisFrame() and not EID.MCM_OptionChanged and not EID.ForceRefreshCache then
		EID:printDescriptions(true)
		return
	end
	EID.ForceRefreshCache = false
	
	-- We'll redraw the indicators in the process of determining what's in range, so wipe their cache
	EID.CachedIndicators = {}
	
	if EID.Config["EnableMouseControls"] then
		local hudDescription = EID:handleHoverHUD()
		if hudDescription then
			EID:addDescriptionToPrint(hudDescription)
		end
	end
	
	-- Decide how many player entities we're checking
	-- Primary P1 only, P1 + Esau, primary all controllers, or all controllers + Esaus
	local playerSearch = { EID.player }
	if EID.Config["CoopDescriptions"] then
		if EID.Config["PairedPlayerDescriptions"] then playerSearch = EID.coopAllPlayers
		else playerSearch = EID.coopMainPlayers end
	elseif EID.Config["PairedPlayerDescriptions"] then
		playerSearch = EID.players
	end
	
	-- Check for descriptions to print per player
	for i,player in ipairs(playerSearch) do
		local displayedDesc = false
		
		-- Check if this player has the Bag of Crafting
		local craftingSuccess = false
		if REPENTANCE and player:HasCollectible(710) then
			craftingSuccess = EID:handleBagOfCraftingRendering()
			if craftingSuccess then
				displayedDesc = true
			end
		end
		
		if not displayedDesc or EID.Config["DisplayAllNearby"] then
			-- Searching for the closest describable entity to this player	
			EID.lastDescriptionEntity = nil
			EID.lastDist = 10000
			local searchGroups = {}
			local sourcePos = player.Position
			local inRangeEntities = {}
			
			table.insert(searchGroups, Isaac.FindInRadius(sourcePos, tonumber(EID.Config["MaxDistance"])*40, searchPartitions))
			for k,_ in pairs(EID.effectList) do
				table.insert(searchGroups, Isaac.FindByType(EntityType.ENTITY_EFFECT, k, -1, true, false))
			end
			
			for _, entitySearch in ipairs(searchGroups) do
				for i, entity in ipairs(entitySearch) do
					if EID:hasDescription(entity) and entity.FrameCount > 0 and not EID.entitiesToPrint[GetPtrHash(entity)] then
						table.insert(inRangeEntities, entity)
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
			
			if EID.Config["DisplayAllNearby"] then
				-- make the closest entity the first to get drawn
				table.insert(inRangeEntities, 1, EID.lastDescriptionEntity)
			else
				-- we only want to describe the closest entity
				inRangeEntities = { EID.lastDescriptionEntity }
			end
			-- Only display the indicator for the primary (closest / crafting) description
			if EID.lastDescriptionEntity and not displayedCrafting then
				EID:renderIndicator(EID.lastDescriptionEntity, EID.controllerIndexes[player.ControllerIndex] or 1)
				table.insert(EID.CachedIndicators, {EID.lastDescriptionEntity, EID.controllerIndexes[player.ControllerIndex]})
			end
			
			for _,closest in ipairs(inRangeEntities) do

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
					EID:addDescriptionToPrint(origDesc)
				
				-- Handle Glitched Items
				elseif closest.Type == 5 and closest.Variant == 100 and closest.SubType > 4294960000 then
					if EID:getEntityData(closest, "EID_DontHide") ~= true then
						if (EID:hasCurseBlind() and not closest:ToPickup().Touched and EID.Config["DisableOnCurse"] and not isDeathCertRoom) or (EID.Config["DisableOnAltPath"] and not closest:ToPickup().Touched and EID:IsAltChoice(closest)) or (game.Challenge == Challenge.CHALLENGE_APRILS_FOOL and EID.Config["DisableOnAprilFoolsChallenge"]) then
							EID:addDescriptionToPrint({ Description = "QuestionMark", Entity = closest})
						end
					end
				
					local glitchedObj = EID:getDescriptionObj(closest.Type, closest.Variant, closest.SubType, closest)
					local glitchedDesc = EID:getXMLDescription(closest.Type, closest.Variant, closest.SubType)
					
					-- force the default glitchy description if option is off
					if not EID.Config["DisplayGlitchedItemInfo"] then
						glitchedObj.Description = glitchedDesc
					-- grab the Item Config info if eid_tmtrainer.lua hasn't taken care of it, and it hasn't been done before
					elseif not debug and glitchedObj.Description == glitchedDesc then
						EID:addCollectible(closest.SubType, EID:CheckGlitchedItemConfig(closest.SubType) .. glitchedDesc)
						glitchedObj = EID:getDescriptionObj(closest.Type, closest.Variant, closest.SubType, closest)
					end
					
					EID:addDescriptionToPrint(glitchedObj)
				-- Handle Dice Room Floor
				elseif closest.Type == 1000 and closest.Variant == 76 then
					EID:addDescriptionToPrint(EID:getDescriptionObj(closest.Type, closest.Variant, closest.SubType+1, closest))
				-- Handle Card Reading Portals
				elseif closest.Type == 1000 and closest.Variant == 161 and closest.SubType <= 2 then
					local subtypeToCard = {18, 5, 19}
					-- Reuse the descriptions of The Emperor/Stars/Moon, so no localization needed
					local descriptionObj = EID:getDescriptionObj(5, 300, subtypeToCard[closest.SubType+1], closest, false)
					-- Card Reading's name
					descriptionObj.Name = EID:getObjectName(5, 100, 660)
					EID:addDescriptionToPrint(descriptionObj)
				-- Handle Crane Game
				elseif closest.Type == 6 and closest.Variant == 16 then
					if EID.CraneItemType[tostring(closest.InitSeed)] or EID.CraneItemType[closest.InitSeed.."Drop"..closest.DropSeed] then
						if EID:getEntityData(closest, "EID_DontHide") ~= true then
							if (EID:hasCurseBlind() and EID.Config["DisableOnCurse"]) or (game.Challenge == Challenge.CHALLENGE_APRILS_FOOL and EID.Config["DisableOnAprilFoolsChallenge"]) then
								EID:addDescriptionToPrint({ Description = "QuestionMark", Entity = closest})
							end
						end
						local collectibleID = EID.CraneItemType[closest.InitSeed.."Drop"..closest.DropSeed] or EID.CraneItemType[tostring(closest.InitSeed)]
						local descriptionObj = EID:getDescriptionObj(5, 100, collectibleID, closest)
						
						EID:addDescriptionToPrint(descriptionObj)
					end
					
				elseif closest.Variant == 110 then
					--Handle Broken Shovel
					local descriptionObj = EID:getDescriptionObj(5, 100, 550, closest)
					EID:addDescriptionToPrint(descriptionObj)
					
				elseif closest.Variant == PickupVariant.PICKUP_TRINKET then
					--Handle Trinkets
					local descriptionObj = EID:getDescriptionObjByEntity(closest)
					EID:addDescriptionToPrint(descriptionObj)

				elseif closest.Variant == PickupVariant.PICKUP_COLLECTIBLE then
					--Handle Collectibles
					if EID:getEntityData(closest, "EID_DontHide") ~= true then
						if (EID:hasCurseBlind() and not closest:ToPickup().Touched and EID.Config["DisableOnCurse"] and not isDeathCertRoom) or (EID.Config["DisableOnAltPath"] and not closest:ToPickup().Touched and EID:IsAltChoice(closest)) or (game.Challenge == Challenge.CHALLENGE_APRILS_FOOL and EID.Config["DisableOnAprilFoolsChallenge"]) then
							EID:addDescriptionToPrint({ Description = "QuestionMark", Entity = closest})
						end
					end
					local descriptionObj = EID:getDescriptionObjByEntity(closest)
					EID:addDescriptionToPrint(descriptionObj)
					
				elseif closest.Variant == PickupVariant.PICKUP_TAROTCARD then
					--Handle Cards & Runes
					if (not EID.Config["DisplayObstructedCardInfo"] or not EID.Config["DisplayObstructedSoulstoneInfo"]) and closest.FrameCount < 3 then
						-- small delay when having obstruction enabled & entering the room to prevent spoilers
						--return
					end
					if EID:getEntityData(closest, "EID_DontHide") ~= true then
						local isSoulstone = closest.SubType >= 81 and closest.SubType <= 97
						local hideinShop = closest:ToPickup():IsShopItem() and ((not isSoulstone and not EID.Config["DisplayCardInfoShop"]) or (isSoulstone and not EID.Config["DisplaySoulstoneInfoShop"]))
						local isOptionsSpawn = REPENTANCE and not EID.Config["DisplayCardInfoOptions?"] and closest:ToPickup().OptionsPickupIndex > 0
						local obstructed = ((not isSoulstone and not EID.Config["DisplayObstructedCardInfo"]) or
						(not EID.Config["DisplayObstructedSoulstoneInfo"] and isSoulstone)) and
						(not pathsChecked[closest.InitSeed] and not attemptPathfind(closest))
						if isOptionsSpawn or hideinShop or obstructed or (REPENTANCE and game.Challenge == Challenge.CHALLENGE_CANTRIPPED) then
							EID:addDescriptionToPrint({ Description = "QuestionMark", Entity = closest})
						end
					end
					local descriptionObj = EID:getDescriptionObjByEntity(closest)
					EID:addDescriptionToPrint(descriptionObj)

				elseif closest.Variant == PickupVariant.PICKUP_PILL then
					--Handle Pills
					if not EID.Config["DisplayObstructedPillInfo"] and closest.FrameCount < 3 then
						-- small delay when having obstruction enabled & entering the room to prevent spoilers
						--return
					end
					if EID:getEntityData(closest, "EID_DontHide") ~= true then
						local hideinShop = closest:ToPickup():IsShopItem() and not EID.Config["DisplayPillInfoShop"]
						local isOptionsSpawn = REPENTANCE and not EID.Config["DisplayPillInfoOptions?"] and closest:ToPickup().OptionsPickupIndex > 0
						local obstructed = not EID.Config["DisplayObstructedPillInfo"] and
						(not pathsChecked[closest.InitSeed] and not attemptPathfind(closest))
						if isOptionsSpawn or hideinShop or obstructed then
							EID:addDescriptionToPrint({ Description = "QuestionMark", Entity = closest})
						end
					end

					local pillColor = closest.SubType
					local pool = game:GetItemPool()
					local identified = pool:IsPillIdentified(pillColor)
					if REPENTANCE and pillColor % PillColor.PILL_GIANT_FLAG == PillColor.PILL_GOLD then identified = true end
					if (identified or EID.Config["ShowUnidentifiedPillDescriptions"]) then
						local descEntry = EID:getDescriptionObj(closest.Type, closest.Variant, pillColor, closest)
						EID:addDescriptionToPrint(descEntry)
					else
						EID:addDescriptionToPrint({ Description = "UnidentifiedPill", Entity = closest})
					end
				elseif EID.Config["EnableEntityDescriptions"] then
					--Handle Entities (omni)
					local descriptionEntry = EID:getDescriptionObjByEntity(closest)
					if descriptionEntry~=nil then
					   EID:addDescriptionToPrint(descriptionEntry)
				   end
				end
			end
		end
	end
	
	-- if no entities to display, display Sacrifice Room information
	-- it will be last priority for the main spot if DisplayAllNearby is on
	if #EID.descriptionsToPrint == 0 or EID.Config["DisplayAllNearby"] then
		if game:GetRoom():GetType() == RoomType.ROOM_SACRIFICE and EID.Config["DisplaySacrificeInfo"] then
			local curRoomIndex = game:GetLevel():GetCurrentRoomIndex()
			local curCounter = EID.sacrificeCounter[curRoomIndex] or 1
			local sacrificeDesc = EID:getDescriptionObj(-999, -1, curCounter)
			EID:addDescriptionToPrint(sacrificeDesc)
		end
	end
	
	EID:printDescriptions()
end

EID:AddCallback(ModCallbacks.MC_POST_RENDER, onRender)

local function AddActiveItemProgress(player, isD4)
	EID.ForceRefreshCache = true
	local playerID = EID:getPlayerID(player)
	if not EID.PlayerItemInteractions[playerID] then
		EID.PlayerItemInteractions[playerID] = {LastTouch = 0, actives = {}, pills = {}, altActives = {}, altPills = {}}
	end
	-- Dead Tainted Lazarus exceptions
	local activesTable = EID.PlayerItemInteractions[playerID].actives
	if player:GetPlayerType() == 38 then
		activesTable = EID.PlayerItemInteractions[playerID].altActives or activesTable
	end
	-- don't check pocket items after D4, they don't reroll and would get counted twice
	local maxSlot = 3
	if isD4 then maxSlot = 1 end
	for i = 0, maxSlot do
		local itemID = tostring(player:GetActiveItem(i))
		if itemID ~= "0" then
			if not activesTable[itemID] then
				activesTable[itemID] = 0
			end
			activesTable[itemID] = activesTable[itemID] + 1
		end
	end
end

local function OnGameStartGeneral(_,isSave)
	EID:buildTransformationTables()
	if not isSave then
		EID.PlayerItemInteractions = {}
	end
end
EID:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, OnGameStartGeneral)

-- Add currently held active items after D4 was used. Used for Transformation Progress
local function OnUseD4(_, _, _, player)
	AddActiveItemProgress(player, true)
end
EID:AddCallback(ModCallbacks.MC_USE_ITEM, OnUseD4, CollectibleType.COLLECTIBLE_D4)

-- Re-init transformation progress and item interactions after using Genesis
local function OnUseGenesis(_, _, _, player)
	OnGameStartGeneral()
end
EID:AddCallback(ModCallbacks.MC_USE_ITEM, OnUseGenesis, CollectibleType.COLLECTIBLE_GENESIS)

function EID:OnUsePill(pillEffectID, player)
	local playerID = EID:getPlayerID(player)
	-- Dead Tainted Lazarus exceptions
	local pillsTable = EID.PlayerItemInteractions[playerID].pills
	if player:GetPlayerType() == 38 then
		pillsTable = EID.PlayerItemInteractions[playerID].altPills or pillsTable
	end
	local effectID = tostring(pillEffectID+1)
	if not pillsTable[effectID] then
		pillsTable[effectID] = 0
	end
	pillsTable[effectID] = pillsTable[effectID] + 1
end
EID:AddCallback(ModCallbacks.MC_USE_PILL, EID.OnUsePill)


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
		["PlayerItemInteractions"] = true,
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
			EID.PlayerItemInteractions = {}
			if isSave then
				-- JSON saves integer table keys as strings. we need to transform them back...
				for playerID, data in pairs(savedEIDConfig["PlayerItemInteractions"] or {}) do
					local convertedData = {}
					for key, value in pairs(data) do
						convertedData[tonumber(key) or key] = value
					end
					EID.PlayerItemInteractions[tonumber(playerID)] = convertedData
				end
			else
				-- check for the players' starting active items (thorough, for Eden and modded J&E chars' sake)
				for i = 0, game:GetNumPlayers() - 1 do
					AddActiveItemProgress(Isaac.GetPlayer(i))
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
				-- DisableAchievementCheck has been renamed, convert the setting to the new one (this can be removed in a few updates)
				if savedEIDConfig["DisableAchievementCheck"] then
					EID.Config["DisableStartOfRunWarnings"] = savedEIDConfig["DisableAchievementCheck"]
				end
				
				EID.isHidden = EID.Config["InitiallyHidden"]
				EID.UsedPosition = Vector(EID.Config["XPosition"], EID.Config["YPosition"])
				EID.Scale = EID.Config["Size"]
				
				EID:fixDefinedFont()
				EID:loadFont(EID.modPath .. "resources/font/eid_"..EID.Config["FontType"]..".fnt")
			end
		end
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
		EID.Config["PlayerItemInteractions"] = EID.PlayerItemInteractions or {}

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
