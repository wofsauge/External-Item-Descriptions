-- Init legacy global variables for other mods to hand over Descriptions
if not __eidItemDescriptions then
	__eidItemDescriptions = {}
end
setmetatable(__eidItemDescriptions,
	{ __newindex = function(_, k, v) EID:addCollectible(k, v) end })
if not __eidTrinketDescriptions then
	__eidTrinketDescriptions = {}
end
setmetatable(__eidTrinketDescriptions,
	{ __newindex = function(_, k, v) EID:addTrinket(k, v) end })
if not __eidCardDescriptions then
	__eidCardDescriptions = {}
end
setmetatable(__eidCardDescriptions,
	{ __newindex = function(_, k, v) EID:addCard(k, v) end })
if not __eidPillDescriptions then
	__eidPillDescriptions = {}
end
setmetatable(__eidPillDescriptions,
	{ __newindex = function(_, k, v) EID:addPill(k, v) end })
if not __eidItemTransformations then
	__eidItemTransformations = {}
end
setmetatable(__eidItemTransformations,
	{ __newindex = function(_, k, v) EID:assignTransformation("collectible", k, v) end })
if not __eidEntityDescriptions then
	__eidEntityDescriptions = {}
end
setmetatable(__eidEntityDescriptions,
	{ __newindex = function(_, k, v)
		local entityID = {}
		for id in string.gmatch(k, "([^.]+)") do
			table.insert(entityID, id)
		end
		EID:addEntity(entityID[1], entityID[2], entityID[3], v[1], v[2])
	end })
---------------------------------------------------------------------------
-------------------------Handle API Functions -----------------------------
local nullVector = Vector(0,0)
local game = Game()
local maxCardID = Card.NUM_CARDS - 1
local maxPillID = PillColor.NUM_PILLS - 1
local dynamicSpriteCache = {} -- used to store sprite objects of collectible icons etc.

-- Adds a description for a collectible. Optional parameters: itemName, language
function EID:addCollectible(id, description, itemName, language)
	itemName = itemName or nil
	language = language or "en_us"
	local modName = EID._currentMod
	-- Glitched Items exception so they don't have a mod name
	if id > 4294960000 then modName = nil end
	EID.descriptions[language].custom["5.100." .. id] = {id, itemName, description, modName}
end

-- Adds a description for a trinket. Optional parameters: itemName, language
function EID:addTrinket(id, description, itemName, language)
	itemName = itemName or nil
	language = language or "en_us"
	EID.descriptions[language].custom["5.350." .. id] = {id, itemName, description, EID._currentMod}
end

-- Adds information about appending text and multiplying numbers in a modded trinket's Golden/Mom's Box description. All three variables are optional, set to ""/0 or nil to not include them
-- appendText: Text to be appended onto the description. Can be one string, or a table of two strings; one for doubling and one for tripling
-- numbersToMultiply: The number inside the text that should be multiplied. can be one number, or a table of numbers
-- maxMultiplier: is what tripling (Golden+Mom's Box) should multiply the numbers by (normally 3)
-- (If it's less than 2, it also applies to doubling)
-- Example: My modded trinket gives +0.5 range and when tripled, adds homing instead of tripling the range boost
-- EID:addGoldenTrinketMetadata(Isaac.GetTrinketIdByName("Cool Trinket"), {"", "Homing tears"}, 0.5, 2)
function EID:addGoldenTrinketMetadata(id, appendText, numbersToMultiply, maxMultiplier, language)
	maxMultiplier = maxMultiplier or 3
	language = language or "en_us"

	if appendText == "" then appendText = nil
	elseif type(appendText) == "string" then appendText = {appendText} end

	if numbersToMultiply == 0 then numbersToMultiply = nil
	elseif type(numbersToMultiply) == "number" then numbersToMultiply = {numbersToMultiply} end

	EID.GoldenTrinketData[id] = {t = numbersToMultiply, mult = maxMultiplier, append = appendText and true}
	if appendText then
		EID.descriptions[language].goldenTrinketEffects[id] = { appendText[1], appendText[1], appendText[2] or appendText[1] }
	end
end

-- Add a fully custom data table to the table of Golden Trinket effects
-- Check the comments above EID.GoldenTrinketData in eid_data.lua for some info about what is possible
-- You may also want to add text entries into EID.descriptions[languageCode].goldenTrinketEffects
function EID:addGoldenTrinketTable(id, dataTable)
	EID.GoldenTrinketData[id] = dataTable
end

-- Adds a description for a card/rune. Optional parameters: itemName, language
function EID:addCard(id, description, itemName, language)
	itemName = itemName or nil
	language = language or "en_us"
	EID.descriptions[language].custom["5.300." .. id] = {id, itemName, description, EID._currentMod}
end

-- Adds a metadata for a card. Used for Blank Card/Clear Rune. Optional parameters: isRune
-- Avalilable values for mimicCharge : 1~12
function EID:addCardMetadata(id, mimicCharge, isRune)
	if isRune then
		EID.blankCardHidden[id] = true
		EID.runeIDs[id] = true
	end
	EID.cardMetadata[id] = {
		mimiccharge = type(mimicCharge) == "number" and mimicCharge or -1
	}
end

-- Adds a description for a pilleffect id. Optional parameters: itemName, language
function EID:addPill(id, description, itemName, language)
	itemName = itemName or nil
	language = language or "en_us"
	EID.descriptions[language].custom["5.70." .. id+1] = {id+1, itemName, description, EID._currentMod}
end

-- Adds a metadata for a pilleffect. Used for Placebo/False PHD. Optional parameters: class
-- Avalilable values for mimicCharge : 1~12
-- For class value, "3-" ~ "3+" are available, although False PHD only cares for negative values.
-- "3-" : Major negative effect - Gives +0.6 Damage / "2-", "1-" : Minor negative effect - Spawns a Black Heart
function EID:addPillMetadata(id, mimicCharge, class)
	EID.pillMetadata[id] = {
		mimiccharge = type(mimicCharge) == "number" and mimicCharge or -1,
		class = class or "0",
	}
end

-- Adds a character specific description for the item "Birthright". Optional parameters: playerName, language
function EID:addBirthright(characterId, description, playerName, language)
	playerName = playerName or nil
	language = language or "en_us"
	EID.descriptions[language].birthright[characterId + 1] = {playerName, "", description}
end

-- Creates a new transformation with a given unique name and a display name
function EID:createTransformation(uniqueName, displayName, language)
	language = language or "en_us"
	if EID.CustomTransformations[uniqueName] == nil then
		EID.CustomTransformations[uniqueName] = {}
	end
	EID.CustomTransformations[uniqueName][language] = displayName
end

-- Assigns transformations to an entity (Adds to existing transformations)
-- valid target types: [collectible, trinket, card, pill, entity]
-- when type = entity, targetIdentifier must be in the format "ID.Variant.subtype". for any other type, it can just be the id
-- EXAMPLE: EID:assignTransformation("collectible", 1, "My Transformation")
function EID:assignTransformation(targetType, targetIdentifier, transformationString)
	local entryID = EID:getIDVariantString(targetType)
	if entryID ~= nil then
		entryID = entryID.."."..targetIdentifier
	else
		entryID = targetIdentifier
	end
	EID:removeEntryFromString(EID.CustomTransformAssignments, entryID, transformationString)
	if EID.CustomTransformAssignments[entryID] == nil then
		EID.CustomTransformAssignments[entryID] = transformationString
	else
		EID.CustomTransformAssignments[entryID] = EID.CustomTransformAssignments[entryID]..","..transformationString
	end
	EID:removeEntryFromString(EID.CustomTransformRemovals, entryID, transformationString)
end

-- Try to automatically assign vanilla transformations to the entity
function EID:tryAutodetectTransformationsCollectible(collectibleID)
	if not EID.isRepentance then return end
	local config = EID.itemConfig:GetCollectible(collectibleID)
	local transformations = {}
	transformations[EID.TRANSFORMATION.ANGEL] = config:HasTags(ItemConfig.TAG_ANGEL) or nil
	transformations[EID.TRANSFORMATION.BOB] = config:HasTags(ItemConfig.TAG_BOB) or nil
	transformations[EID.TRANSFORMATION.BOOKWORM] = config:HasTags(ItemConfig.TAG_BOOK) or nil
	transformations[EID.TRANSFORMATION.CONJOINED] = config:HasTags(ItemConfig.TAG_BABY) or nil
	transformations[EID.TRANSFORMATION.GUPPY] = config:HasTags(ItemConfig.TAG_GUPPY) or nil
	transformations[EID.TRANSFORMATION.LEVIATHAN] = config:HasTags(ItemConfig.TAG_DEVIL) or nil
	transformations[EID.TRANSFORMATION.LORD_OF_THE_FLIES] = config:HasTags(ItemConfig.TAG_FLY) or nil
	transformations[EID.TRANSFORMATION.MOM] = config:HasTags(ItemConfig.TAG_MOM) or nil
	transformations[EID.TRANSFORMATION.MUSHROOM] = config:HasTags(ItemConfig.TAG_MUSHROOM) or nil
	transformations[EID.TRANSFORMATION.POOP] = config:HasTags(ItemConfig.TAG_POOP) or nil
	transformations[EID.TRANSFORMATION.SPIDERBABY] = config:HasTags(ItemConfig.TAG_SPIDER) or nil
	transformations[EID.TRANSFORMATION.SPUN] = config:HasTags(ItemConfig.TAG_SYRINGE) or nil
	-- these dont have a tag : ADULT, STOMPY, SUPERBUM
	for k, _ in pairs(transformations) do
		EID:assignTransformation("collectible", collectibleID, k)
	end
end

-- Removes a transformation of an entity
-- valid target types: [collectible, trinket, card, pill, entity]
-- when type = entity, targetIdentifier must be in the format "ID.Variant.subtype". for any other type, it can just be the id
-- EXAMPLE: EID:removeTransformation("collectible", 1, "My Transformation")
function EID:removeTransformation(targetType, targetIdentifier, transformationString)
	local entryID = EID:getIDVariantString(targetType)
	if entryID ~= nil then
		entryID = entryID.."."..targetIdentifier
	else
		entryID = targetIdentifier
	end
	EID:removeEntryFromString(EID.CustomTransformRemovals, entryID, transformationString)
	if EID.CustomTransformRemovals[entryID] == nil then
		EID.CustomTransformRemovals[entryID] = transformationString
	else
		EID.CustomTransformRemovals[entryID] = EID.CustomTransformRemovals[entryID]..","..transformationString
	end
	EID:removeEntryFromString(EID.CustomTransformAssignments, entryID, transformationString)
end

-- Removes a given value from the string inside a table. Example: "1,2,3", removing 2 will return "1,3"
function EID:removeEntryFromString(sourceTable, entryKey, entryValue)
	if sourceTable[entryKey] == nil then return end
	local newEntry = ""
	for str in string.gmatch(sourceTable[entryKey], "([^,]+)") do
		local addToList = true
		for removeStr in string.gmatch(entryValue, "([^,]+)") do
			if removeStr == str then
				addToList = false
			end
		end
		if addToList then
			newEntry = newEntry..","..str
		end
	end
	newEntry = newEntry:sub(2)
	if newEntry == "" then newEntry = nil end
	sourceTable[entryKey] = newEntry
end

-- Adds a description for a an Entity. Optional parameters: language, transformations
-- when subtype is -1 or empty, it will affect all subtypes of that entity
function EID:addEntity(id, variant, subtype, entityName, description, language)
	subtype = subtype or nil
	language = language or "en_us"
	if id == EntityType.ENTITY_EFFECT then
		EID.effectList[variant] = true
	end
	EID.descriptions[language].custom[id .. "." .. variant .. "." .. subtype] = {
		subtype,
		entityName,
		description
	}
end

-- Adds a new icon object with the shortcut defined in the "shortcut" variable (e.g. "{{shortcut}}" = your icon)
-- Shortcuts are case Sensitive! Shortcuts can be overriden with this function to allow for full control over everything
-- Setting "animationFrame" to -1 will play the animation. The spriteObject needs to be of class Sprite() and have an .anm2 loaded
-- default values: leftOffset= -1 , topOffset = 0
function EID:addIcon(shortcut, animationName, animationFrame, width, height, leftOffset, topOffset, spriteObject)
	leftOffset = leftOffset or -1
	topOffset = topOffset or 0
	EID.InlineIcons[shortcut] = {animationName, animationFrame, width, height, leftOffset, topOffset, spriteObject}
end

-- Adds a new color object with the shortcut defined in the "shortcut" variable (e.g. "{{shortcut}}" = your color)
-- Shortcuts are case Sensitive! Shortcuts can be overriden with this function to allow for full control over everything
-- Define a callback to let it be called when interpreting the color-markup. define a kColor otherwise for a simple color change
function EID:addColor(shortcut, kColor, callback)
	if callback ~= nil then
		EID.InlineColors[shortcut] = callback
	else
		EID.InlineColors[shortcut] = kColor
	end
end

-- Overrides all potentially displayed texts and permanently displays the given texts. Can be turned of again using the "EID:hidePermanentText()" function
function EID:displayPermanentText(descriptionObject, permName1, permName2)
	descriptionObject.PermanentTextEnglish = EID:getDescriptionEntryEnglish(permName1, permName2)
	EID.permanentDisplayTextObj = descriptionObject
	EID.isDisplayingPermanent = true
end

-- Hides permanently displayed text objects if they exist.
function EID:hidePermanentText()
	EID.permanentDisplayTextObj = nil
	EID.isDisplayingPermanent = false
end

-- function to turn entity type names into actual ingame ID.Variant pairs
function EID:getIDVariantString(typeName)
	if typeName == "collectible" or typeName == "collectibles" then return "5.100"
	elseif typeName == "trinket" or typeName == "trinkets" then return "5.350"
	elseif typeName == "card" or typeName == "cards" then return "5.300"
	elseif typeName == "pill" or typeName == "pills" or typeName == "horsepills" or typeName == "horsepill" then return "5.70"
	elseif typeName == "sacrifice" then return "-999.-1"
	elseif typeName == "dice" then return "1000.76"
	end
	return nil
end

-- function to turn entity typ and variants into their EID table-name
function EID:getTableName(Type, Variant, SubType)
	local idString = Type.."."..Variant
	if idString == "5.100" then return "collectibles"
	elseif idString == "5.350" then return "trinkets"
	elseif idString == "5.300" then return "cards"
	elseif idString == "5.70" then
		if SubType <2049 then
			return "pills"
		else
			return "horsepills"
		end
	elseif idString == "-999.-1" then return "sacrifice"
	elseif idString == "1000.76" then return "dice"
	elseif idString == "1.0" then return "players"
	else return "custom"
	end
end

-- Loads a given font from a given file path and use it to render text
function EID:loadFont(fontFileName)
	EID.font:Load(fontFileName, "") -- GoG Version of game somehow wants a string as the second argument
	EID.font:SetMissingCharacter(2)
	if not EID.font:IsLoaded() then
		Isaac.DebugString("EID - ERROR: Could not load font from '" .. EID.modPath .. "resources/font/default.fnt" .. "'")
		return false
	end
	return true
end

-- Returns if EID is displaying text right now
function EID:isDisplayingText()
	return EID.isDisplaying
end

-- Returns true, if curse of blind is active
function EID:hasCurseBlind()
	return game:GetLevel():GetCurses() & LevelCurse.CURSE_OF_BLIND > 0
end

-- returns the current text position
function EID:getTextPosition()
	local posVector = Vector(EID.UsedPosition.X, EID.UsedPosition.Y)
	-- Only apply position modifiers when not in Local Mode
	if EID.CurrentScaleType == "Size" then
		for _, modifier in pairs(EID.PositionModifiers) do
			posVector = posVector + modifier
		end
	end
	return posVector
end

-- Adds a text position modifier Vector, which will be applied to the text position variable
-- Useful to add small offsets. For example: for schoolbag HUD
function EID:addTextPosModifier(identifier, modifierVector)
	EID.PositionModifiers[identifier] = modifierVector
end

-- Removes a text position modifier Vector
-- Useful to remove small offsets. For example: for schoolbag HUD
function EID:removeTextPosModifier(identifier)
	EID.PositionModifiers[identifier] = nil
end

-- Changes the initial position of all eid descriptions
-- Useful to totally alter and override the current initial Overlay position
function EID:alterTextPos(newPosVector)
	EID.UsedPosition = newPosVector
end

-- returns the entity that is currently described. returns last described entity if currently not displaying text
function EID:getLastDescribedEntity()
	return EID.lastDescriptionEntity
end

-- Appends a given string to the description of a given Description object
function EID:appendToDescription(descObj, appendString)
	descObj.Description = descObj.Description..appendString
end

-- returns the description object of a specific entity
-- falls back to english if the objID isnt available
function EID:getDescriptionObjByEntity(entity)
	return EID:getDescriptionObj(entity.Type, entity.Variant, entity.SubType, entity)
end

-- returns the description object of the specified entity
-- falls back to english if the objID isnt available
-- entity is optional
function EID:getDescriptionObj(Type, Variant, SubType, entity, checkModifiers)
	local description = {}
	description.ObjType = Type
	description.ObjVariant = Variant
	description.ObjSubType = SubType
	description.fullItemString = Type.."."..Variant.."."..SubType
	description.Name = EID:getObjectName(Type, Variant, SubType)
	description.Entity = entity or nil

	local tableEntry = EID:getDescriptionData(Type, Variant, SubType)
	description.Description = tableEntry and tableEntry[3] or EID:getXMLDescription(Type, Variant, SubType)

	description.Transformation = EID:getTransformation(Type, Variant, SubType)

	description.ModName = tableEntry and tableEntry[4]
	description.Quality = EID:getObjectQuality(description)
	description.Icon = EID:getObjectIcon(description)
	EID:getObjectItemTypeAndCharge(description)

	if checkModifiers ~= false then
		description = EID:applyConditionals(description)
		description = EID:applyDescriptionModifier(description, SubType)
	end
	return description
end

-- returns description Object from the legacy mod descriptions if they exist
function EID:getLegacyModDescription(Type, Variant, SubType)
	local tableName = EID:getTableName(Type, Variant, SubType)
	local customDesc = __eidEntityDescriptions[Type.."."..Variant.."."..SubType]
	if tableName == "collectibles" and __eidItemDescriptions[SubType] then
		return {"","",__eidItemDescriptions[SubType]}
	elseif tableName == "trinkets" and __eidTrinketDescriptions[SubType] then
		return{"","", __eidTrinketDescriptions[SubType]}
	elseif tableName == "cards" and __eidCardDescriptions[SubType] then
		return {"","",__eidCardDescriptions[SubType]}
	elseif tableName == "pills" and __eidPillDescriptions[SubType-1] then
		return {"","",__eidPillDescriptions[SubType-1]}
	elseif customDesc~=nil then
		return {"", customDesc[1], customDesc[2]}
	end
	return nil
end

-- apply Description Modifier to a given description object
function EID:applyDescriptionModifier(description, SubType)
	for _,modifier in ipairs(EID.DescModifiers) do
		local result = modifier.condition(description)
		if type(result) == "table" then
			for _,callback in ipairs(result) do
				-- If the modifier loads a different description obj (which also goes through the modifier checks), we should stop our checks so text doesn't get printed twice
				if description.ObjSubType ~= SubType then break end
				description = callback(description)
			end
		elseif result then
			description = modifier.callback(description)
		end
	end
	return description
end

-- Returns the icon and mod name of a given EID description object as a preformatted description string
function EID:getModNameString(descObj)
	local modString = ""
	if EID.Config["ModIndicatorDisplay"] == "Both" or EID.Config["ModIndicatorDisplay"] == "Name only" then
		local modName = EID.ModIndicator[descObj.ModName] and EID.ModIndicator[descObj.ModName].Name or descObj.ModName
		modString = modString .. " {{"..EID.Config["ModIndicatorTextColor"].."}}" .. modName
	end
	local modIcon = EID.ModIndicator[descObj.ModName] and EID.ModIndicator[descObj.ModName].Icon
	if (EID.Config["ModIndicatorDisplay"] == "Both" or EID.Config["ModIndicatorDisplay"] == "Icon only") and modIcon then
		modString = modString .. "{{".. modIcon .."}}"
	end
	return modString
end

-- Attempts to merge two given Description objects into one
function EID:mergeDescriptionObjects(oldDescObj, newDescObj)
	for k,v in pairs(oldDescObj) do
		if not newDescObj[k] then
			newDescObj[k] = v
		end
	end
	return newDescObj
end

function EID:getObjectItemTypeAndCharge(descObj)
	if not (descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType ~= nil) then
		return
	end
	local itemConfig = EID.itemConfig:GetCollectible(descObj.ObjSubType)
	if not itemConfig then return end
	descObj.ItemType = itemConfig.Type or -1

	if descObj.ItemType == ItemType.ITEM_ACTIVE then
		descObj.ChargeType = itemConfig.ChargeType or 0
		descObj.Charges = itemConfig.MaxCharges or 0
		-- Special handling for dynamic charge items
		if EID.isRepentance and (descObj.ObjSubType == CollectibleType.COLLECTIBLE_BLANK_CARD or descObj.ObjSubType == CollectibleType.COLLECTIBLE_PLACEBO or
		descObj.ObjSubType == CollectibleType.COLLECTIBLE_CLEAR_RUNE or descObj.ObjSubType == CollectibleType.COLLECTIBLE_D_INFINITY) then
			descObj.ChargeType = ItemConfig.CHARGE_SPECIAL
		end
	end
end

-- returns the specified object table in the current language.
-- falls back to english if it doesnt exist, unless specified otherwise
function EID:getDescriptionEntry(objTable, objID, noFallback)
	if not objID then
		if noFallback then return EID.descriptions[EID:getLanguage()][objTable]
		else return EID.descriptions[EID:getLanguage()][objTable] or EID.descriptions["en_us"][objTable] end
	else
		local translatedTable = EID.descriptions[EID:getLanguage()][objTable]
		if noFallback then return translatedTable and translatedTable[objID]
		else return (translatedTable and translatedTable[objID]) or (EID.descriptions["en_us"][objTable] and EID.descriptions["en_us"][objTable][objID]) end
	end
end

function EID:getDescriptionEntryEnglish(objTable, objID)
	if not objID then
		return EID.descriptions["en_us"][objTable]
	else
		return EID.descriptions["en_us"][objTable] and EID.descriptions["en_us"][objTable][objID]
	end
end

-- returns the description data table related to a given id, variant and subtype
-- falls back to english if it doesnt exist
function EID:getDescriptionData(Type, Variant, SubType)
	local fullString = Type.."."..Variant
	local adjustedID = EID:getAdjustedSubtype(Type, Variant, SubType)
	local moddedDesc = EID:getDescriptionEntry("custom", fullString.."."..adjustedID)
	local tableName = EID:getTableName(Type, Variant, SubType)
	local legacyModdedDescription = EID:getLegacyModDescription(Type, Variant, adjustedID)
	local defaultDesc = EID:getDescriptionEntry(tableName, adjustedID)

	return moddedDesc or legacyModdedDescription or defaultDesc
end

-- Returns an adjusted SubType id for special cases like Horse Pills and Golden Trinkets
function EID:getAdjustedSubtype(Type, Variant, SubType)
	local tableName = EID:getTableName(Type, Variant, SubType)
	if tableName == "trinkets" then
		if EID.isRepentance then
			return (SubType & TrinketType.TRINKET_ID_MASK)
		end
	elseif tableName == "sacrifice" then
		return math.min(#EID.descriptions["en_us"].sacrifice, SubType)
	elseif tableName == "pills" or tableName == "horsepills" then
		-- The effect of a pill varies depending on what player is looking at it in co-op
		-- EID.pillPlayer is a way to recheck a pill for what different players will turn it into
		local player = EID.pillPlayer or EID.player
		if EID.isRepentance and SubType % PillColor.PILL_GIANT_FLAG == PillColor.PILL_GOLD then
			return 9999
		end
		local pool = game:GetItemPool()
		if EID.isRepentance and player:GetPlayerType() == PlayerType.PLAYER_THESOUL_B then
			SubType = pool:GetPillEffect(SubType, player:GetOtherTwin() or player) + 1
		else SubType = pool:GetPillEffect(SubType, player) + 1 end
	end
	return SubType
end

-- Get the transformation uniqueName / ID of a given entity
-- Example: EID:getTransformation(5,100,34)  will return "12" which is the id for Bookworm
function EID:getTransformation(id, variant, subType)
	local adjustedSubtype = EID:getAdjustedSubtype(id, variant, subType)
	local entityString = id.."."..variant.."."..adjustedSubtype
	local listToTest = ""
	local default = EID.EntityTransformations[entityString]
	if default~= nil then listToTest = default end

	if id == 5 and variant == 100 then
		local customLegacy = __eidItemTransformations[adjustedSubtype]
		if customLegacy~= nil then listToTest = listToTest..","..customLegacy end
	end

	local custom = EID.CustomTransformAssignments[entityString]
	if custom~= nil then listToTest = listToTest..","..custom end

	local transformationList = ""
	local removedList = EID.CustomTransformRemovals[entityString]
	for transform in string.gmatch(listToTest, "([^,]+)") do
		local isRemoved = false
		if removedList ~= nil then
			for removedTransform in string.gmatch(removedList, "([^,]+)") do
				if transform == removedTransform then isRemoved = true end
			end
		end
		if not isRemoved then transformationList = transformationList..","..transform end
	end
	return transformationList
end

--Get the name of the given transformation by its uniqueName / ID
function EID:getTransformationName(id)
	local str = "Custom"
	if tonumber(id) == nil then
		-- get translated custom name
		local customTransform = EID.CustomTransformations[id]
		if customTransform ~= nil then
			return customTransform[EID:getLanguage()] or customTransform["en_us"] or id
		end
		return id
	end
	return EID:getDescriptionEntry("transformations")[tonumber(id) + 1] or str
end

-- tries to get the ingame name of an item based on its ID
function EID:getObjectName(Type, Variant, SubType)
	local tableName = EID:getTableName(Type, Variant, SubType)
	local tableEntry = EID:getDescriptionData(Type, Variant, SubType)
	local name = nil
	if tableEntry ~= nil then
		if tableEntry[2] ~= nil and tableEntry[2] ~= "" and tableEntry[2] ~= EID.descriptions["en_us"][tableName][SubType] then
			name = tableEntry[2]
		end
	end
	if tableName == "collectibles" then
		if EID.itemConfig:GetCollectible(SubType) == nil then return Type.."."..Variant.."."..SubType end
		local vanillaName = EID.itemConfig:GetCollectible(SubType).Name
		return name or (not string.find(vanillaName, "^#") and vanillaName) or (EID.descriptions["en_us"][tableName][SubType] and EID.descriptions["en_us"][tableName][SubType][2]) or vanillaName
	elseif tableName == "trinkets" then
		local adjustedSubtype = EID:getAdjustedSubtype(Type, Variant, SubType)
		local vanillaName = EID.itemConfig:GetTrinket(adjustedSubtype).Name
		return name or (not string.find(vanillaName, "^#") and vanillaName) or EID.descriptions["en_us"][tableName][adjustedSubtype][2] or vanillaName
	elseif tableName == "cards" then
		local vanillaName = EID.itemConfig:GetCard(SubType).Name
		return name or (not string.find(vanillaName, "^#") and vanillaName) or EID.descriptions["en_us"][tableName][SubType][2] or vanillaName
	elseif tableName == "pills" or tableName == "horsepills" then
		local adjustedSubtype = EID:getAdjustedSubtype(Type, Variant, SubType)
		return EID:getPillName(adjustedSubtype, tableName == "horsepills")
	elseif tableName == "sacrifice" then
		return EID:getDescriptionEntry("sacrificeHeader").." ("..SubType.."/"..#EID.descriptions["en_us"].sacrifice..")"
	elseif tableName == "dice" then
		return EID:getDescriptionEntry("diceHeader").." ("..SubType..")"
	elseif tableName == "players" then
		return EID:getPlayerName(SubType)
	elseif tableName == "custom" then
		local xmlName = EID:GetEntityXMLName(Type, Variant, SubType)
		return name or xmlName or Type.."."..Variant.."."..SubType
	end
	return Type.."."..Variant.."."..SubType
end

function EID:getPlayerName(id)
	local playerInfo = EID:getDescriptionEntry("CharacterInfo")[id]
	local birthrightInfo = EID.isRepentance and EID:getDescriptionEntry("birthright")[id+1]
	return (playerInfo and playerInfo[1]) or (birthrightInfo and birthrightInfo[1]) or "???"
end

-- returns the name of a pill based on the pilleffect id
function EID:getPillName(pillID, isHorsepill)
	local moddedDesc = EID:getDescriptionEntry("custom", "5.70."..pillID)
	local legacyModdedDescription = EID:getLegacyModDescription(5, 70, pillID)
	local tableName = isHorsepill and "horsepills" or "pills"
	local defaultDesc = EID:getDescriptionEntry(tableName, pillID)

	local name = moddedDesc or legacyModdedDescription or defaultDesc

	local vanillaName = ""
	if pillID == 9999 then
		vanillaName = "Golden Pill" -- only used for languages that haven't defined a Golden Pill name
	else
		vanillaName = EID.itemConfig:GetPillEffect(pillID - 1).Name
	end
	name = name and name[2] or (not string.find(vanillaName, "^#") and vanillaName) or EID.descriptions["en_us"][tableName][pillID][2] or vanillaName
	return string.gsub(name,"I'm Excited!!!","I'm Excited!!") -- prevent markup trigger
end

-- tries to get the ingame description of an object, based on their description in the XML files
function EID:getXMLDescription(Type, Variant, SubType)
	local tableName = EID:getTableName(Type, Variant, SubType)
	local desc= nil
	if SubType == 0 then return "(no description available)" end
	if tableName == "collectibles" then
		desc = EID.itemConfig:GetCollectible(SubType).Description
	elseif tableName == "trinkets" then
		desc = EID.itemConfig:GetTrinket(SubType).Description
	elseif tableName == "cards" then
		desc = EID.itemConfig:GetCard(SubType).Description
	end
	return desc or "(no description available)"
end

-- check if an entity is part of the describable entities
---@diagnostic disable-next-line: duplicate-set-field
function EID:hasDescription(entity)
	if not EID:EntitySanityCheck(entity) then return false end
	
	if EID:IsGridEntity(entity) then
		if EID.GridEntityWhitelist[entity:GetType()] then
			for _, func in ipairs(EID.GridEntityWhitelist[entity:GetType()]) do
				if func(entity) then
					return true
				end
			end
		end
		return false
	end
	local isAllowed = false
	local entityString = entity.Type .. "." .. entity.Variant .. "." .. entity.SubType

	if EID.IgnoredEntities[entity.Type .. "." .. entity.Variant] or EID.IgnoredEntities[entityString] then return false end

	if EID.Config["EnableEntityDescriptions"] and EID:getTableName(entity.Type, entity.Variant, entity.SubType) == "custom" then
		isAllowed = __eidEntityDescriptions[entityString] ~= nil
		isAllowed = isAllowed or EID:getDescriptionData(entity.Type, entity.Variant, entity.SubType) ~= nil
		isAllowed = isAllowed or entity:GetData() and type(entity:GetData()["EID_Description"]) ~= type(nil)
	end
	if entity.Type == EntityType.ENTITY_PICKUP then
		if entity.SubType == 0 and EID:getDescriptionData(entity.Type, entity.Variant, entity.SubType) ~= nil then
			-- allow pickups with subtype 0 to have a description, if its explictly defined
			return true
		end
		isAllowed = isAllowed or (entity.Variant == PickupVariant.PICKUP_COLLECTIBLE and EID.Config["DisplayItemInfo"])
		isAllowed = isAllowed or (entity.Variant == 110 and entity:GetSprite():IsPlaying("Idle") and EID.Config["DisplayItemInfo"]) -- Broken Shovel
		isAllowed = isAllowed or (entity.Variant == PickupVariant.PICKUP_TRINKET and EID.Config["DisplayTrinketInfo"])
		isAllowed = isAllowed or (entity.Variant == PickupVariant.PICKUP_TAROTCARD and EID.Config["DisplayCardInfo"])
		isAllowed = isAllowed or (entity.Variant == PickupVariant.PICKUP_PILL and EID.Config["DisplayPillInfo"])
		return isAllowed and (entity.SubType > 0 or
			-- For Flip descriptions, allow 5.100.0 pedestals to have descriptions under VERY specific criteria!
			(EID.isRepentance and EID:getEntityData(entity, "EID_FlipItemID") and EID:PlayersHaveCollectible(CollectibleType.COLLECTIBLE_FLIP)))
	end
	if entity.Type == 6 and entity.Variant == 16 and EID.Config["DisplayCraneInfo"] and EID.isRepentance then
		isAllowed = not entity:GetSprite():IsPlaying("Broken") and not entity:GetSprite():IsPlaying("Prize") and not entity:GetSprite():IsPlaying("OutOfPrizes") and (EID.CraneItemType[entity.InitSeed.."Drop"..entity.DropSeed] or EID.CraneItemType[tostring(entity.InitSeed)])
	end
	if entity.Type == 1000 then
		if (entity.Variant == 161 and entity.SubType <= 2) or (entity.Variant == EffectVariant.DICE_FLOOR and EID.Config["DisplayDiceInfo"]) then
			isAllowed = true
		end
	end
	return isAllowed
end

-- Replaces shorthand-representations of a character with the internal reference
function EID:replaceShortMarkupStrings(text)
	for _, pair in ipairs(EID.TextReplacementPairs) do
		text = string.gsub(text, pair[1], pair[2])
	end
	return text
end

-- Replaces name markup objects with the actual name
function EID:replaceNameMarkupStrings(text)
	for word in string.gmatch(text, "{{Name.-}}") do
		local strTrimmed = string.gsub(word, "{{Name(.-)}}", function(a) return a end)
		local showIcon = true
		-- If the markup is {{NameOnlyX###}}, do not print an icon before the name
		if string.find(text, "NameOnly") then
			strTrimmed = string.gsub(word, "{{NameOnly(.-)}}", function(a) return a end)
			showIcon = false
		end
		local indicator = string.sub(strTrimmed, 1, 1)
		local id = tonumber(string.sub(strTrimmed, 2, -1))
		local name = ""
		if tonumber(indicator) then
			local entityID = {}
			for e in string.gmatch(strTrimmed, "([^.]*)") do
				table.insert(entityID, tonumber(e))
			end
			local iconText = ""
			if showIcon then
				if entityID[1] == 1 then iconText = "{{Player" .. entityID[3] .. "}} "
				else iconText = "{{" .. EID:GetIconNameByVariant(entityID[2]) .. entityID[3] .. "}} " end
			end
			name = iconText .. EID:getObjectName(entityID[1], entityID[2], entityID[3])
		elseif indicator == "C" then -- Collectible
			name = (showIcon and "{{Collectible"..id.."}} " or "")..EID:getObjectName(5, 100, id)
		elseif indicator == "T" then -- Trinket
			name = (showIcon and "{{Trinket"..id.."}} " or "")..EID:getObjectName(5, 350, id)
		elseif indicator == "P" then -- Pills
			name = (showIcon and "{{Pill"..id.."}} " or "")..EID:getPillName(id, false)
		elseif indicator == "K" then -- Card
			name = (showIcon and "{{Card"..id.."}} " or "")..EID:getObjectName(5, 300, id)
		elseif indicator == "I" then -- Player (I for Isaac)
			name = (showIcon and "{{Player"..id.."}} " or "")..EID:getPlayerName(id)
		end
		text = string.gsub(text, word, name, 1)
	end
	return text
end

-- Generates a string with the defined pixel-length using a custom 1px wide character
-- This will only work for this specific custom font
function EID:generatePlaceholderString(length)
	return string.rep("¤", length)
end

-- Returns the inlineIcon object of a given Iconstring
-- can be used to validate an iconstring
function EID:getIcon(str)
	if str == nil then
		return EID.InlineIcons["ERROR"]
	end
	local strTrimmed = string.gsub(str,"{{(.-)}}",function(a) return a end )
	if #strTrimmed <= #str then
		local itemIconObj = EID:createItemIconObject(strTrimmed)
		if itemIconObj then return itemIconObj end

		if type(EID.InlineIcons[strTrimmed]) == "function" then
			return EID.InlineIcons[strTrimmed](str) or EID.InlineIcons["ERROR"]
		end

		return EID.InlineIcons[strTrimmed] or EID.InlineIcons["ERROR"]
	else
		return EID.InlineIcons["ERROR"]
	end
end

-- Tries to read special markup used to generate icons for all Collectibles/Trinkets and the default Cards/Pills
-- Returns an inlineIcon Object or nil if no parsing was possible
function EID:createItemIconObject(str)
	local item = nil
	local subTypeIdentifier = 0

	-- Check for {{Item#.##.###}} markup; easiest way to handle it is to just call this function again
	local itemID,numReplaceGeneric = string.gsub(str, "Item", "")
	if numReplaceGeneric > 0 and itemID ~= "" then
		local Type, Var, Sub = EID:SplitTVS(itemID)
		if Type == 1 then return EID:getIcon("Player" .. Sub)
		elseif Type == 5 then
			if Var == 100 then return EID:createItemIconObject("Collectible" .. Sub)
			elseif Var == 350 then return EID:createItemIconObject("Trinket" .. Sub)
			elseif Var == 300 then return EID:createItemIconObject("Card" .. Sub)
			elseif Var == 70 then return EID:createItemIconObject("Pill" .. Sub)
			end
		end
	end
	
	local collID,numReplace = string.gsub(str, "Collectible", "")
	if numReplace > 0 and collID ~= "" and tonumber(collID) ~= nil then
		item = EID.itemConfig:GetCollectible(tonumber(collID))
		subTypeIdentifier = tonumber(collID)
	end
	local trinketID,numReplace2 = string.gsub(str, "Trinket", "")
	if numReplace2 > 0 and trinketID ~= "" and tonumber(trinketID) ~= nil then
		item = EID.itemConfig:GetTrinket(tonumber(trinketID))
		subTypeIdentifier = tonumber(trinketID)
	end
	local cardID,numReplace3 = string.gsub(str, "Card", "")
	if numReplace3 > 0 and cardID ~= "" and tonumber(cardID) ~= nil then
		if tonumber(cardID) > maxCardID then return EID.InlineIcons[str] or EID.InlineIcons["Card"] end
		return {"Cards", tonumber(cardID)-1, 8, 8, 0, 1, EID.CardPillSprite}
	end
	local pillID,numReplace4 = string.gsub(str, "Pill", "")
	if numReplace4 > 0 and pillID ~= "" and tonumber(pillID) ~= nil then
		if tonumber(pillID) > maxPillID then return EID.InlineIcons[str] or EID.InlineIcons["Pill"] end
		return {"Pills", tonumber(pillID)-1, 9, 8, 0, 1, EID.CardPillSprite}
	end
	if item == nil then
		return nil
	end
	if dynamicSpriteCache[str] then
		return dynamicSpriteCache[str]
	else
		local spriteDummy = Sprite()
		spriteDummy:Load("gfx/eid_inline_icons.anm2", true)
		spriteDummy:ReplaceSpritesheet(1, item.GfxFileName)
		spriteDummy:LoadGraphics()
		local newDynamicSprite = {"ItemIcon", subTypeIdentifier, 11, 8, -2, -2, spriteDummy}
		dynamicSpriteCache[str] = newDynamicSprite
		return newDynamicSprite
	end
end

-- Returns the icon for a given transformation name or ID
function EID:getTransformationIcon(str)
	if str == nil then
		return EID.InlineIcons["ERROR"]
	end
	if tonumber(str) ~= nil then
		str = EID.descriptions["en_us"].transformations[tonumber(str + 1)]
	end
	local transformSprite = EID:getIcon(str:gsub(" ", ""))
	if transformSprite[1] == "ERROR" then
		transformSprite = EID:getIcon("CustomTransformation")
	end
	return transformSprite
end

-- Returns the width of a given string in Pixels
function EID:getStrWidth(str)
	return EID.font:GetStringWidthUTF8(str)
end

-- Searches thru the given string and replaces Iconplaceholders with icons.
-- Returns 2 values. the string without the placeholders but with an accurate space between lines. and a table of all Inline Sprites
function EID:filterIconMarkup(text)
	local spriteTable = {}
	for word in string.gmatch(text, "{{.-}}") do
		local textposition = string.find(text, word)

		local callback = EID._NextIconModifier
		EID._NextIconModifier = nil

		local lookup = EID:getIcon(word)
		local preceedingTextWidth = EID:getStrWidth(string.sub(text, 0, textposition - 1)) * EID.Scale

		table.insert(spriteTable, {lookup, preceedingTextWidth, callback})
		text = string.gsub(text, word, EID:generatePlaceholderString(lookup[3]), 1)
	end
	return text, spriteTable
end

--renders a list of given inline sprite objects returned by the "EID:filterIconMarkup()" function
-- Table entry format: {EID.InlineIcons Object, Width of text preceeding the icon}
function EID:renderInlineIcons(spriteTable, posX, posY)
	for _, sprite in ipairs(spriteTable) do
		local Xoffset = sprite[1][5] or -1
		local Yoffset = sprite[1][6] or 0
		local spriteObj = (type(sprite[1][7]) == "function" and sprite[1][7]()) or sprite[1][7] or EID.InlineIconSprite
		if sprite[1][2] >= 0 then
			spriteObj:SetFrame(sprite[1][1], sprite[1][2])
		elseif not spriteObj:IsPlaying(sprite[1][1]) or spriteObj:IsFinished(sprite[1][1]) then
			spriteObj:Play(sprite[1][1],true)
		else
			spriteObj:Update()
		end

		EID:renderIcon(spriteObj, posX + sprite[2] + Xoffset * EID.Scale, posY + Yoffset * EID.Scale, sprite[3], sprite[1][1], sprite[1][2])
	end
end

-- helper function to render Icons in specific EID settins
function EID:renderIcon(spriteObj, posX, posY, callback, animName, animFrame)
	spriteObj.Scale = Vector(EID.Scale, EID.Scale)
	spriteObj.Color = Color(1, 1, 1, EID.Config["Transparency"], 0, 0, 0)
	if callback then
		callback(spriteObj)
	end

	if EID.CachingDescription then
		table.insert(EID.CachedIcons[#EID.CachedIcons], {spriteObj, posX, posY, callback, animName, animFrame})
	end

	spriteObj:Render(Vector(posX, posY), nullVector, nullVector)
end

-- Returns the icon used for the bulletpoint. It will look at the first word in the given string.
-- Also returns the first word if it was rejected (so it can be removed from the line)
function EID:handleBulletpointIcon(text)
	local firstWord = EID:removeColorMarkup(string.match(text, "([^%s]+)"))
	if EID:getIcon(firstWord) ~= EID.InlineIcons["ERROR"] and string.find(firstWord, "{{.-}}")~=nil then
		if not EID.Config["StatAndPickupBulletpoints"] and EID.StatPickupBulletpointBlacklist[firstWord] then
			return "\007", firstWord
		end
		return firstWord
	end
	return "\007"
end

-- Gets a KColor from a Markup-string (example Input: "{{ColorText}}")
-- Returns the KColor object and a boolean value indicating if the given string was a color markup or not
local colorFunc = nil
function EID:getColor(str, baseKColor)
	local color = baseKColor
	local isColorMarkup = false
	if str ~= nil then
		local strTrimmed = string.gsub(str,"{{(.-)}}",function(a) return a end, 1)
		if #strTrimmed <= #str then
			if type(EID.InlineColors[strTrimmed]) == "function" then
				colorFunc = EID.InlineColors[strTrimmed]
				color = EID.InlineColors[strTrimmed](color)
			else
				if EID.InlineColors[strTrimmed] then colorFunc = nil end
				color = EID.InlineColors[strTrimmed] or color
				if EID.Config["ColorblindMode"] > 0 then
					color = EID.ColorBlindColors[EID.Config["ColorblindMode"]][strTrimmed] or color
				end
			end
			isColorMarkup = type(EID.InlineColors[strTrimmed]) ~= type(nil)
		end
	end
	color = EID:copyKColor(color)
	color.Alpha = math.min(color.Alpha, EID.Config["Transparency"])

	return color, isColorMarkup
end

-- Filters a given string and looks for Colormarkup. Splits the text into subsections limited by them.
-- Returns: Table of subsections of the text, their respective KColor, and the width of the subsection
function EID:filterColorMarkup(text, baseKColor)
	local textPartsTable = {}
	local lastColor = baseKColor
	local lastFunc = colorFunc
	local lastPosition = 0
	for word in string.gmatch(text, "{{.-}}") do
		local textposition = string.find(text, word)
		local lookup, isColor = EID:getColor(word, lastColor)
		if isColor then
			local preceedingText = string.sub(text, lastPosition, textposition - 1)
			local preceedingTextWidth = EID:getStrWidth(preceedingText) * EID.Scale
			lastPosition = textposition
			table.insert(textPartsTable, {preceedingText, lastColor, preceedingTextWidth, lastFunc})
			lastColor = lookup
			lastFunc = colorFunc
			text = string.gsub(text, word, "", 1)
		end
	end

	table.insert(textPartsTable, {string.sub(text, lastPosition), lastColor, 0, lastFunc})
	return textPartsTable
end

-- A simple function to remove color markup, to preserve bulletpoint icons after start-of-line color markup
function EID:removeColorMarkup(text)
	for word in string.gmatch(text, "{{Color.-}}") do
		text = string.gsub(text, word, "", 1)
	end
	return text
end

-- A simple function to replace all markup {{ }} with placeholder strings, to use in fitTextToWidth
function EID:replaceAllMarkupWithSpaces(text, checkBulletpoint)
	if checkBulletpoint then
		-- Check for the text to just be a bulletpoint icon, which should be considered as zero width
		-- (fixTextToWidth uses this function one word at a time)
		if EID:getIcon(text:gsub(" ", "")) ~= EID.InlineIcons["ERROR"] and string.find(text, "{{.-}}")~=nil then
			return ""
		end
	end
	for word in string.gmatch(text, "{{.-}}") do
		local lookup = EID:getIcon(word)
		if lookup[1] ~= "ERROR" then
			text = string.gsub(text, word, EID:generatePlaceholderString(lookup[3]), 1)
		else
			text = string.gsub(text, word, "", 1)
		end
	end
	return text
end

-- Fits a given string to a specific width
-- returns the string as a table of lines
function EID:fitTextToWidth(str, textboxWidth, breakUtf8Chars)
	local formattedLines = {}
	-- Lines with a {{NoLineBreak}} tag should be left in one continuous line
	if str:find("{{NoLineBreak}}") then
		str = str:gsub("{{NoLineBreak}}","")
		table.insert(formattedLines,str)
		return formattedLines
	end
	local curLength = 0
	local text = {}
	-- the first word we run into might actually be a bulletpoint icon, which should be zero width
	local isBulletpoint = true
	local cursor = 1
	local word_begin_index = 1

	local byte = string.byte -- for speed up
	local sub = string.sub
	local byte_space = string.byte(' ')

	while cursor <= #str do
		-- ascii word: 0x0xxxxxxx
		-- utf8 word (sequence): 0x11xxxxxx 0x10xxxxxx 0x10xxxxxx ... 0x10xxxxxx
		-- see https://en.wikipedia.org/wiki/UTF-8
		-- we can only break after space, or before 0x11xxxxxx
		local cur, next = byte(str,cursor), byte(str,cursor+1)
		if
			-- cond#1: we can break at the end of string
			cursor == #str or
			-- cond#2: we can break after space
		 	cur == byte_space or
			-- handle utf8 characters
			(breakUtf8Chars and(
			 -- cond#3: we can break if the next character is 0x11xxxxxx
			 ((next & 0xC0) == 0xC0) or
			 -- cond#4: we can also break if the current is 0x10xxxxxx while the next is ascii but not space
			 (((cur & 0xC0) == 0x80) and (next~= byte_space and (next & 0x80) == 0x00))
			))
			then
				--[[
					-------------------ascii only---------------
					word will be separated by spaces.
					wordA |wordB  |wordC |^%@&Q%#^&#@!! |aksldj
					      ↑
					      cond#2
					we may break after every space.
					spaces | | | | | |woops
					       ↑
					       cond#2
					-------------------UTF8 only----------------
					word is 0x11xxxxxx followed by several 0x10xxxxxx until the next 0x11xxxxxx (not included)
					你|好|，|世|界|！|↑|↑|↑|↑
					  ↑
					  cond#3
					byte data of a word:
					[0x11xxxxxx,0x10xxxxxx,0x10xxxxxx, (next is 0x11xxxxxx, cond#3)]
					--------------------ascii->utf8------------
					utf8 word must start with 0x11xxxxxx, so cond#3 split before it.
					word|世|界
					    |  ↑
					    ↑  cond#3
					    cond#3

					world |means |世|界
					             ↑
					             cond#2
					-------------------utf8->ascii--------------
					世|界|是|world
					     | ↑
					     ↑ cond#4
					     cond#3
					世|界|是 |world
					     |   ↑
					     ↑   cond#2
					     cond#3
				]]

				-- we can break after str[cursor]
				local word = sub(str, word_begin_index, cursor)
				local wordFiltered = EID:replaceAllMarkupWithSpaces(word, isBulletpoint)
				isBulletpoint = false
				local wordLength = EID:getStrWidth(wordFiltered)

				if curLength + wordLength <= textboxWidth or curLength < 17 then
					table.insert(text, word)
					curLength = curLength + wordLength
				else
					table.insert(formattedLines, table.concat(text))
					text = { word }
					curLength = wordLength
				end

				-- next word starts here
				word_begin_index = cursor + 1
		end
		cursor = cursor + 1
	end

	-- fix this function applying crafting icon green tint to the start of the printed line
	EID._NextIconModifier = nil

	table.insert(formattedLines, table.concat(text))
	return formattedLines
end

-- Renders a given string using the EID Custom font. This will also apply any markup and render icons
-- needs to be called in a render Callback
-- args: string, Vector(int, int), Vector(float,float), KColor obj, bool
-- Returns the last used KColor
function EID:renderString(str, position, scale, kcolor)
	str = EID:replaceShortMarkupStrings(str)
	local textPartsTable = EID:filterColorMarkup(str, kcolor)
	local offsetX = 0
	for _, textPart in ipairs(textPartsTable) do
		local strFiltered, spriteTable = EID:filterIconMarkup(textPart[1])
		EID:renderInlineIcons(spriteTable, position.X + offsetX, position.Y)
		if strFiltered then -- prevent possible crash when strFiltered is nil
			EID.font:DrawStringScaledUTF8(strFiltered, position.X + offsetX, position.Y, scale.X, scale.Y, textPart[2], 0, false)
			if EID.CachingDescription then
				table.insert(EID.CachedStrings[#EID.CachedStrings], {strFiltered, position.X + offsetX, position.Y, textPart[2], textPart[4], EID.Config["Transparency"]})
			end
			offsetX = offsetX + EID:getStrWidth(strFiltered) * scale.X
		end
	end
	return textPartsTable[#textPartsTable][2]
end

-- Adds Description object modifiers.
-- Used for altering descriptions. Example: Spindown dice, Tarot Cloth, ...
function EID:addDescriptionModifier(modifierName, condition, callback)
	for _,v in ipairs(EID.DescModifiers) do
		if v["name"] == modifierName then
			v["condition"] = condition
			v["callback"] = callback
			return
		end
	end
	table.insert(EID.DescModifiers, {
		name = modifierName,
		condition = condition,
		callback = callback
	})
end

-- Removes a Description object modifier
-- Used for altering descriptions. Example: Spindown dice, Tarot Cloth, ...
function EID:removeDescriptionModifier(modifierName)
	for i,v in ipairs(EID.DescModifiers) do
		if v["name"] == modifierName then
			table.remove(EID.DescModifiers,i)
			return
		end
	end
end

-- Interpolates between 2 KColors with a given fraction.
function EID:interpolateColors(kColor1, kColor2, fraction)
	local t =
		KColor(
		(kColor2.Red - kColor1.Red) * fraction + kColor1.Red,
		(kColor2.Green - kColor1.Green) * fraction + kColor1.Green,
		(kColor2.Blue - kColor1.Blue) * fraction + kColor1.Blue,
		(kColor2.Alpha - kColor1.Alpha) * fraction + kColor1.Alpha
	)
	return t
end

function EID:updateDescriptionsViaTable(changeTable, tableToUpdate)
	for k,v in pairs(changeTable) do
		if v == "" then
			tableToUpdate[k] = nil
		else
			tableToUpdate[k] = v
		end
	end
end

-- Converts e.g. "5.100.69" format strings into 5, 100, and 69; returns 0 for any not included
function EID:SplitTVS(tvsString)
	local Type, Var, Sub = 0, 0, 0
	local tvsTable = {}
	for i in string.gmatch(tvsString, "[^.]+") do table.insert(tvsTable, tonumber(i)) end
	Type = tvsTable[1] or Type; Var = tvsTable[2] or Var; Sub = tvsTable[3] or Sub;
	return Type, Var, Sub
end

-- Checks if any player has a given item ID (or anyone is a given player ID)
function EID:PlayersHaveItem(Type, Var, Sub)
	-- convert "5.100.69" format strings into type, var, sub
	if type(Type) == "string" then
		Type, Var, Sub = EID:SplitTVS(Type)
	-- assume collectible if only Type was given
	elseif Var == nil then Sub = Type; Type = 5; Var = 100 end
	if Type == 1 then return EID:PlayersHaveCharacter(Sub)
	elseif Type == 5 then
		if Var == 100 then return EID:PlayersHaveCollectible(Sub)
		elseif Var == 350 then return EID:PlayersHaveTrinket(Sub)
		elseif Var == 300 then return EID:PlayersHaveCard(Sub)
		elseif Var == 70 then return EID:PlayersHavePill(Sub)
		end
	end
	return false
end

-- Checks if the given player has the given item ID (or is the given player ID)
function EID:PlayerHasItem(player, Type, Var, Sub)
	-- convert "5.100.69" format strings into type, var, sub
	if type(Type) == "string" then
		Type, Var, Sub = EID:SplitTVS(Type)
	-- assume collectible if only Type was given
	elseif Var == nil then Sub = Type; Type = 5; Var = 100 end
	if Type == 1 then return player:GetPlayerType() == Sub
	elseif Type == 5 then
		if Var == 100 then return player:HasCollectible(Sub)
		elseif Var == 350 then return player:HasTrinket(Sub)
		elseif Var == 300 then return EID:PlayerHasCard(player, Sub)
		elseif Var == 70 then return EID:PlayerHasPill(player, Sub)
		end
	end
	return false
end

-- Checks if any player has a given collectible ID, for modifiers
function EID:PlayersHaveCollectible(collectibleID)
	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		if player:HasCollectible(collectibleID) then
			return true, player, i
		end
	end
	return false
end

function EID:PlayersVoidedCollectible(collectibleID)
	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		if player:HasCollectible(477) and EID.absorbedItems[tostring(i)] and EID.absorbedItems[tostring(i)][tostring(collectibleID)] then
			return true, player, i
		end
	end
	return false
end
function EID:PlayerVoidedCollectible(player, collectibleID)
	local i = EID:getPlayerID(player)
	if player:HasCollectible(477) and EID.absorbedItems[tostring(i)] and EID.absorbedItems[tostring(i)][tostring(collectibleID)] then
		return true
	end
end

-- Checks if any player has a given trinket ID, for modifiers
function EID:PlayersHaveTrinket(trinketID)
	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		if player:HasTrinket(trinketID) then
			return true, player, i
		end
	end
	return false
end

function EID:PlayersHaveCard(cardID)
	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		for j = 0, (EID.isRepentance and 3 or 1) do
			if player:GetCard(j) == cardID then
				return true, player, i
			end
		end
	end
	return false
end
function EID:PlayerHasCard(player, cardID)
	for j = 0, (EID.isRepentance and 3 or 1) do
		if player:GetCard(j) == cardID then
			return true
		end
	end
end

function EID:PlayersHavePill(pillID)
	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		for j = 0, (EID.isRepentance and 3 or 1) do
			if player:GetPill(j) == pillID then
				return true, player, i
			end
		end
	end
	return false
end
function EID:PlayerHasPill(player, pillID)
	for j = 0, (EID.isRepentance and 3 or 1) do
		if player:GetPill(j) == pillID then
			return true
		end
	end
end

-- Checks if someone is playing as a certain character, for modifiers
-- includeTainted means we don't care if the player is Tainted or not (for things that, say, apply to Lost/Tainted Lost)
function EID:PlayersHaveCharacter(playerType, includeTainted)
	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		if player:GetPlayerType() == playerType then
			return true, player, i
		end
		if includeTainted and EID.isRepentance and EID.TaintedToRegularID[player:GetPlayerType()] == playerType then
			return true, player, i
		end
	end
	return false
end

-- Converts a given CollectibleID into the respective Spindown dice result
function EID:getSpindownResult(collectibleID)
	if collectibleID <= 0 or collectibleID > 4294960000 then return 0 end
	local newID = collectibleID
	local attempts = 0
	repeat
		newID = newID - 1
		attempts = attempts + 1
	--note: the order of the SkipLocked check statement is important so that the item is checked for being in a pool either way (to display a ? if it isn't)
	until (EID.itemConfig:GetCollectible(newID) and (EID:isCollectibleUnlocked(newID) or not EID.Config["SpindownDiceSkipLocked"]) and not EID.itemConfig:GetCollectible(newID).Hidden and EID:isCollectibleAllowed(newID)) or newID == CollectibleType.COLLECTIBLE_NULL or attempts > 10
	return newID
end

-- Returns the maximum collectible id, including modded items
local maxCollectibleID = nil -- cache after first use. this number will not change mid game
function EID:GetMaxCollectibleID()
	if maxCollectibleID then
		return maxCollectibleID
	end
	local id = CollectibleType.NUM_COLLECTIBLES-1
	local step = 16
	while step > 0 do
		if EID.itemConfig:GetCollectible(id+step) ~= nil then
			id = id + step
		else
			step = step // 2
		end
	end
	maxCollectibleID = id
	return id
end

function EID:DetectModdedItems()
	if EID:GetMaxCollectibleID() > EID.XMLMaxItemID then
		return true
	end
	if EID.itemConfig:GetCollectible(EID.XMLMaxItemID) == nil then
		return true
	end
	return false
end

-- REPENTANCE ONLY! Return whether the collectible is considered available
-- Bag of Crafting rerolls unavailable items; this function is kept brief to help BoC speed
function EID:isCollectibleAvailable(collectibleID)
	if EID.itemAvailableStates[collectibleID] == nil then
		EID.itemAvailableStates[collectibleID] = EID.itemConfig:GetCollectible(collectibleID):IsAvailable()
	end
	return EID.itemAvailableStates[collectibleID]
end

-- REPENTANCE ONLY! Return our best guess on whether an achievement-locked collectible is unlocked
-- (Things like Tainted Lost and Sacred Orb give false negatives)
-- Spindown Dice skips over locked items, but not unavailable items
function EID:isCollectibleUnlocked(collectibleID)
	local item = EID.itemConfig:GetCollectible(collectibleID)
	if item == nil then return false end
	if EID.itemUnlockStates[collectibleID] == nil then
		--whitelist all quest items and items with no associated achievement
		if item.AchievementID == -1 or (item.Tags and item.Tags & ItemConfig.TAG_QUEST == ItemConfig.TAG_QUEST) then
			EID.itemUnlockStates[collectibleID] = true
			return true
		end
		--blacklist all hidden items
		if item.Hidden then
			EID.itemUnlockStates[collectibleID] = false
			return false
		end
		--check the item's IsAvailable status if the function exists
		if item.IsAvailable then EID.itemUnlockStates[collectibleID] = item:IsAvailable()
		else EID.itemUnlockStates[collectibleID] = true end
		return EID.itemUnlockStates[collectibleID]
	else
		return EID.itemUnlockStates[collectibleID]
	end
end
EID.isCollectibleUnlockedAnyPool = EID.isCollectibleUnlocked -- old name before ItemConfig:IsAvailable was added

-- REPENTANCE ONLY! Return whether the collectible is completely disallowed by the current game mode
-- Bag of Crafting and Spindown Dice skip over disallowed items entirely
function EID:isCollectibleAllowed(collectibleID)
	local item = EID.itemConfig:GetCollectible(collectibleID)
	if item == nil then return false
	elseif item.Tags == nil then return true
	else
		if game:IsGreedMode() and item:HasTags(ItemConfig.TAG_NO_GREED) then return false
		elseif game.Challenge > 0 and item:HasTags(ItemConfig.TAG_NO_CHALLENGE) then return false
		else return true end
		-- no need to check TAG_NO_DAILY because mods are disabled for Dailies
	end
end

-- Achievements Locked Check (do we have Cube of Meat or Book of Revelations unlocked?)
---@diagnostic disable-next-line: duplicate-set-field
function EID:AreAchievementsAllowed()
	-- Tainted characters have definitely beaten Mom!
	-- (Fixes Tainted Lost's item pools, and potentially modded character's mechanics, ruining this check)
	if EID.player:GetPlayerType() < 21 then
		-- Challenge runs and TMTrainer might break the pool, so ignore them.
		if not game:GetSeeds():IsCustomRun() and not EID:PlayersHaveCollectible(CollectibleType.COLLECTIBLE_TMTRAINER) then
			local hasBookOfRevelationsUnlocked = EID:isCollectibleUnlocked(CollectibleType.COLLECTIBLE_BOOK_OF_REVELATIONS or CollectibleType.COLLECTIBLE_BOOK_REVELATIONS)
			if not hasBookOfRevelationsUnlocked then
				local hasCubeOfMeatUnlocked = EID:isCollectibleUnlocked(CollectibleType.COLLECTIBLE_CUBE_OF_MEAT)
				if not hasCubeOfMeatUnlocked then
					return false
				end
			end
		end
	end
	return true
end

-- Returns the dimension ID the player is currently in.
-- 0: Normal Dimension
-- 1: Secondary dimension, used by Downpour mirror dimension and Mines escape sequence
-- 2: Death Certificate dimension
function EID:GetDimension(level)
	local roomIndex = level:GetCurrentRoomIndex()

    for i = 0, 2 do
        if GetPtrHash(level:GetRoomByIdx(roomIndex, i)) == GetPtrHash(level:GetRoomByIdx(roomIndex, -1)) then
            return i
        end
    end

    return nil
end

-- Converts a given table into a string containing the crafting icons of the table
-- Example input: {1,2,3,4,5,6,7,8}
-- Result: "{{Crafting1}}{{Crafting2}}{{Crafting3}}{{Crafting4}}{{Crafting5}}{{Crafting6}}{{Crafting7}}{{Crafting8}}"
local emptyPickupTable = {}
for i=1, 29 do emptyPickupTable[i] = 0 end

function EID:tableToCraftingIconsFull(craftTable, indicateCompleteContent)
	local sortedList = {table.unpack(craftTable)}
	table.sort(sortedList, function(a, b) return a < b end)
	local visitedItemCount = {table.unpack(emptyPickupTable)}

	local iconString = ""
	for _, nr in ipairs(sortedList) do
		visitedItemCount[nr] = visitedItemCount[nr] + 1
		local containsItemResult = EID:bagContainsItem(nr, visitedItemCount[nr])
		local completedColoring = indicateCompleteContent and containsItemResult and containsItemResult >= 1 and "{{IconGreenTint}}" or ""
		iconString = iconString..completedColoring.."{{Crafting"..nr.."}}"
	end
	return iconString
end

-- Converts a given table into a string containing the crafting icons of the table, which are also grouped to reduce render lag
-- Example input: {1,1,1,2,2,3,3,3}
-- Result: "3{{Crafting1}}2{{Crafting2}}3{{Crafting3}}"
function EID:tableToCraftingIconsMerged(craftTable, indicateCompleteContent)
	local sortedList = {table.unpack(craftTable)}
	local filteredList = {table.unpack(emptyPickupTable)}
	for _, nr in ipairs(sortedList) do
		filteredList[nr] = filteredList[nr] + 1
	end
	local iconString = ""
	for nr, count in ipairs(filteredList) do
		if (count > 0) then
			local coloring = ""
			if indicateCompleteContent then
				local bagContainsItem = EID:bagContainsItem(nr, count)
				if bagContainsItem == 1 then
					coloring = "{{ColorBagComplete}}"
				elseif bagContainsItem == 2 then
					coloring = "{{ColorBagOverfill}}"
				end
			end

			iconString = iconString..coloring..count.."{{Crafting"..nr.."}}{{CR}}"
		end
	end
	return iconString
end

-- Checks how many of an item there are in the bag
-- Returns false if the item is not in the bag
-- Returns 0 if there are fewer than the target amount
-- Returns 1 if there are exactly the target amount
-- Returns 2 if there are more than the target amount
function EID:bagContainsItem(itemID, itemCount)
	local foundCount = 0
	local bagItems = EID.BoC.BagItemsOverride or EID.BoC.BagItems
	for _, bagItem in ipairs(bagItems) do
		if bagItem == itemID then
			foundCount = foundCount + 1
		end
	end

	if foundCount == 0 then
		return false
	elseif foundCount < itemCount then
		return 0
	elseif foundCount == itemCount then
		return 1
	else
		return 2
	end
end

-- Get the number of pickups in the given recipe table that are inside our bag
-- (For checking if a recipe is possible to create if you need to use every item in your bag)
function EID:bagContainsCount(craftTable)
	local count = 0
	local ingredCount = {table.unpack(emptyPickupTable)}
	for _, id in ipairs(craftTable) do
		ingredCount[id] = ingredCount[id] + 1
	end
	local bagItems = EID.BoC.BagItemsOverride or EID.BoC.BagItems
	for _, bagItem in ipairs(bagItems) do
		if ingredCount[bagItem] > 0 then
			count = count + 1
			ingredCount[bagItem] = ingredCount[bagItem] - 1
		end
	end
	return count
end

function EID:handleHUDElement(hudElement)
	local alteredHudElement = {}
	for k,v in pairs(hudElement) do
		alteredHudElement[k] = v
	end
	local screenSize = EID:getScreenSize()
	local hudOffset = EID.Config["HUDOffset"]
	if EID.isRepentance then
		hudOffset = (Options.HUDOffset * 10)
	end
	for _,v in ipairs(hudElement.anchors) do
		if v == "TOP" then
			alteredHudElement.y = hudElement.y + hudOffset * 2
		elseif v == "LEFT" then
			alteredHudElement.x = hudElement.x + hudOffset * 2
		elseif v == "BOTTOM" then
			alteredHudElement.y = screenSize.Y*2 - alteredHudElement.y - alteredHudElement.height
			alteredHudElement.y = alteredHudElement.y - hudOffset * 2
		elseif v == "RIGHT" then
			alteredHudElement.x = screenSize.X*2 - alteredHudElement.x  - alteredHudElement.width
			alteredHudElement.x = alteredHudElement.x - hudOffset * 2
		end
	end
	return alteredHudElement
end

function EID:getScreenSize()
	local room = game:GetRoom()
	local pos = room:WorldToScreenPosition(Vector(0,0)) - room:GetRenderScrollOffset() - game.ScreenShakeOffset

	local rx = pos.X + 60 * 26 / 40
	local ry = pos.Y + 140 * (26 / 40)

	return Vector(rx*2 + 13*26, ry*2 + 7*26)
end

function EID:getEntityData(entity, str)
	if EID:EntitySanityCheck(entity) and not EID:IsGridEntity(entity) and entity:GetData() ~= nil then
		return entity:GetData()[str]
	end
	return nil
end

-- Function to fix font compatibility. Resets config font to a value compatible with your current language
function EID:fixDefinedFont(forceRefresh)
	local curLang = EID:getLanguage()
	local curFont = EID.Config["FontType"]

	-- If our currently loaded font is still valid, we don't need to reset values
	for _, v in ipairs(EID.descriptions[curLang].fonts) do
		if curFont == v.name then
			-- Load the new language's line height / textbox width
			if (forceRefresh) then
				EID.Config["LineHeight"] = EID.descriptions[curLang].fonts[1].lineHeight or EID.DefaultConfig["LineHeight"]
				EID.Config["TextboxWidth"] = EID.descriptions[curLang].fonts[1].textboxWidth or EID.DefaultConfig["TextboxWidth"]
			end
			return false
		end
	end
	EID.Config["FontType"] = EID.descriptions[curLang].fonts[1].name
	-- On new font load, reset line height / textbox width to the default values if there's no defined height/width
	EID.Config["LineHeight"] = EID.descriptions[curLang].fonts[1].lineHeight or EID.DefaultConfig["LineHeight"]
	EID.Config["TextboxWidth"] = EID.descriptions[curLang].fonts[1].textboxWidth or EID.DefaultConfig["TextboxWidth"]
	return true
end
-- Check if a given font name is valid for the currently selected language
function EID:canUseFontType(fontType)
	local curLang = EID:getLanguage()
	for _, v in ipairs(EID.descriptions[curLang].fonts) do
		if fontType == v.name then
			return true
		end
	end
	return false
end

-- Creates a copy of a KColor object. This prevents overwriting existing
function EID:copyKColor(colorObj)
	return KColor(colorObj.Red, colorObj.Green, colorObj.Blue, colorObj.Alpha)
end

-- Compares two KColors. Returns true if they are equal
function EID:areColorsEqual(c1, c2)
	return c1.Red == c2.Red and c1.Green == c2.Green and c1.Blue == c2.Blue and c1.Alpha == c2.Alpha
end

-- Get KColor object of "Entity Name" texts
function EID:getNameColor()
	return EID:getColor(EID.Config["ItemNameColor"], EID.InlineColors["ColorEIDObjName"])
end

-- Get KColor object of "Description" texts
function EID:getTextColor()
	return EID:getColor(EID.Config["TextColor"], EID.InlineColors["ColorEIDText"])
end

-- Get KColor object of "Transformation" texts
function EID:getTransformationColor()
	return EID:getColor(EID.Config["TransformationColor"], EID.InlineColors["ColorEIDTransform"])
end

-- Get KColor object of "Error" texts
function EID:getErrorColor()
	return EID:getColor(EID.Config["ErrorColor"], EID.InlineColors["ColorEIDError"])
end

-- Specify the name of the mod which will be displayed next to the item name
-- By default EID takes the mod name
function EID:setModIndicatorName(newName)
	EID.ModIndicator[EID._currentMod].Name = newName
end

-- Set an icon for the mod which will be displayed next to the item name
function EID:setModIndicatorIcon(iconMarkup, override)
	if override == nil then override = true end -- overide previous value if not specified
	if EID.ModIndicator[EID._currentMod].Icon ~= nil and override == false then return end
	EID.ModIndicator[EID._currentMod].Icon = iconMarkup
end

EID.Coroutines = {}
-- Add a coroutine to be ran 60 times a second
function EID:addCoroutine(name, func, overwrite)
	if overwrite or EID.Coroutines[name] == nil then EID.Coroutines[name] = coroutine.create(func) end
end

function EID:removeCoroutine(name)
	EID.Coroutines[name] = nil
end

-- ran 60 times a second in main game render
function EID:resumeCoroutines()
	for k,v in pairs(EID.Coroutines) do
		if coroutine.resume(v) == false then EID:removeCoroutine(k) end
	end
end

-- Returns true if an item needs to be collected for the collection page
---@diagnostic disable-next-line: duplicate-set-field
function EID:requiredForCollectionPage(itemID)
	if not EID.SaveGame or EID.Config["SaveGameNumber"] == 0 or itemID >= CollectibleType.NUM_COLLECTIBLES or game:GetVictoryLap() > 0 or game:GetSeeds():IsCustomRun() then return false end
	return EID.SaveGame[EID.Config["SaveGameNumber"]].ItemNeedsPickup[itemID]
end

-- Updates the item collection state of the players, based on the QueuedItem value.
-- TODO: also check for D100 / MissingNo Item collections
---@diagnostic disable-next-line: duplicate-set-field
function EID:checkPlayersForMissingItems()
	if not EID.SaveGame or EID.Config["SaveGameNumber"] == 0 or game:GetVictoryLap() > 0 or game:GetSeeds():IsCustomRun() then return end
	if EID.GameUpdateCount % 5 ~= 0 then return end

	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		if player.QueuedItem.Item and EID.SaveGame[EID.Config["SaveGameNumber"]].ItemNeedsPickup[player.QueuedItem.Item.ID] then
			table.insert(EID.CollectedItems, player.QueuedItem.Item.ID)
			EID.SaveGame[EID.Config["SaveGameNumber"]].ItemNeedsPickup[player.QueuedItem.Item.ID] = nil
		end
	end
end

function EID:getPlayerID(entityPlayer)
	if not entityPlayer then return 0 end
	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		if GetPtrHash(player) == GetPtrHash(entityPlayer) then
			return i
		end
	end
	return 0
end

-- Get the current Language. Defaults to english if none is set.
function EID:getLanguage()
	local lang = EID.Config["Language"]
	if lang == "auto" then
		return Options and EID.LanguageMap[Options.Language] or "en_us"
	end
	return lang
end

function EID:AddToCollectiblesToCheckList(itemID)
	EID.collectiblesToCheck[itemID] = true
end

-- Add a specific entity to be ignored by EID. Set entitySubType to -1 in order to ignore all entities with this type+variant combi
function EID:addIgnoredEntity(entityType, entityVariant, entitySubType)
	if entitySubType == -1 then
		EID.IgnoredEntities[entityType.."."..entityVariant] = true
	else
		EID.IgnoredEntities[entityType.."."..entityVariant.."."..entitySubType] = true
	end
end

-- Remove a specific entity from the ignored List of EID.
function EID:removeIgnoredEntity(entityType, entityVariant, entitySubType)
	if entitySubType == -1 then
		EID.IgnoredEntities[entityType.."."..entityVariant] = nil
	else
		EID.IgnoredEntities[entityType.."."..entityVariant.."."..entitySubType] = nil
	end
end

-- Returns if this is a frame we should refresh our descriptions
function EID:RefreshThisFrame()
	if EID.GameRenderCount % (60 / EID.Config["RefreshRate"]) == 0 then
		return true
	end
	return false
end

-- Returns true if any player is pressing the given button (you can also specify any of the input functions)
function EID:PlayersActionPressed(button, inputFunc)
	inputFunc = inputFunc or Input.IsActionPressed
	for k,v in pairs(EID.controllerIndexes) do
		if inputFunc(button, k) then return true, v end
	end
	return false
end

function EID:replaceMarkupSize(description)
	if EID.Config["StatChangeIcons"] == false then
		description = string.gsub(description, "{{ArrowUp}} ({{[.-}}]+)", "{{ArrowUp}} ")
		description = string.gsub(description, "{{ArrowDown}} ({{[.-}}]+)", "{{ArrowDown}} ")
		-- Remove double spaces after markup removal
		description = string.gsub(description, "  ", " ")
		description = string.gsub(description, "# ", "#")
	end
	if EID.Config["MarkupSize"] == "small" then
		for normal, small in pairs(EID.MarkupSizeMap) do
			description = string.gsub(description, normal, small)
		end
	elseif EID.Config["MarkupSize"] == "big" then
		for normal, small in pairs(EID.MarkupSizeMap) do
			description = string.gsub(description, small, normal)
		end
	end

	return description
end

-- Creates a table that contains all objects a transformation is associated with.
EID.TransformationLookup = {}
function EID:buildTransformationTables()
	EID.TransformationLookup = {}
	for entityString, transformationData in pairs(EID.EntityTransformations) do
		EID:alterTransformationLookup(entityString, transformationData, true)
	end
	-- legacy
	for subType, transformationData in pairs(__eidItemTransformations) do
		EID:alterTransformationLookup("5.100."..subType, transformationData, true)
	end
	-- add custom
	for entityString, transformationData in pairs(EID.CustomTransformAssignments) do
		EID:alterTransformationLookup(entityString, transformationData, true)
	end
	-- custom remove
	for entityString, transformationData in pairs(EID.CustomTransformRemovals) do
		EID:alterTransformationLookup(entityString, transformationData, nil)
	end
end

function EID:alterTransformationLookup(entityString, transformString, addToList)
	for transformation in string.gmatch(transformString, '([^,]+)') do
		if EID.TransformationLookup[transformation] == nil then
			EID.TransformationLookup[transformation] = {}
		end
		EID.TransformationLookup[transformation][entityString] = addToList
	end
end

-- Given a transformation identifier, itterate over every player and count the number of items they have which count towards that transformation
EID.TransformationProgress = {}
function EID:evaluateTransformationProgress(transformation)
	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		EID.TransformationProgress[i] = {}
		EID.TransformationProgress[i][transformation] = 0
		local transformData = EID.TransformationData[transformation]

		if not EID.TransformationLookup[transformation] then return end

		if REPENTOGON and transformData and transformData.VanillaForm then
			 -- REPENTOGON lets us ignore everything else for vanilla transformation progress
			EID.TransformationProgress[i][transformation] = player:GetPlayerFormCounter(transformData.VanillaForm)
		elseif transformData and transformData.VanillaForm and player:HasPlayerForm(transformData.VanillaForm) then
			EID.TransformationProgress[i][transformation] = transformData.NumNeeded or 3
		else
			local pickupHistory = EID.PlayerItemInteractions[i].pickupHistory
			local pillsTable = {}
			-- Dead Tainted Lazarus exception
			if player:GetPlayerType() == 38 then
				pickupHistory = EID.PlayerItemInteractions[i].altPickupHistory or pickupHistory
			end
			if pickupHistory then
				for j = 1, #pickupHistory do
					if pickupHistory[j][1] == "pill" then
						local pillSubType = tostring(pickupHistory[j][3])
						if not pillsTable[pillSubType] then
							pillsTable[pillSubType] = 0
						end
						pillsTable[pillSubType] = pillsTable[pillSubType] + 1 -- collect pill SubType
					end
				end
			end

			local activesTable = EID.PlayerItemInteractions[i].actives
			if player:GetPlayerType() == 38 then
				activesTable = EID.PlayerItemInteractions[i].altActives or activesTable
			end
			for entityString, _ in pairs(EID.TransformationLookup[transformation]) do
				local eType, eVariant, eSubType = entityString:match("([^.]+).([^.]+).([^.]+)")
				if tonumber(eType) == EntityType.ENTITY_PICKUP then
					if tonumber(eVariant) == PickupVariant.PICKUP_COLLECTIBLE then
						local currentCount = EID.TransformationProgress[i][transformation]
						if activesTable[tostring(eSubType)] then
							EID.TransformationProgress[i][transformation] = EID.TransformationProgress[i][transformation] + activesTable[tostring(eSubType)]
						else
							local collCount = player:GetCollectibleNum(eSubType, true)
							if EID.PlayerItemInteractions[i].rerollItems then
								collCount = collCount - (EID.PlayerItemInteractions[i].rerollItems[tostring(eSubType)] or 0)
							end
							EID.TransformationProgress[i][transformation] = EID.TransformationProgress[i][transformation] + collCount

							-- Undo the Book of Virtues active item getting counted here
							if tonumber(eSubType) == 584 and player:GetActiveItem() == 584 then
								EID.TransformationProgress[i][transformation] = EID.TransformationProgress[i][transformation] - 1
							end
						end
						-- In AB+, only one copy of a given collectible is counted for trans
						if not EID.isRepentance and EID.TransformationProgress[i][transformation] > currentCount + 1 then
							EID.TransformationProgress[i][transformation] = currentCount + 1
						end
					elseif tonumber(eVariant) == PickupVariant.PICKUP_TRINKET and player:HasTrinket(eSubType) then
						EID.TransformationProgress[i][transformation] = EID.TransformationProgress[i][transformation] + player:GetTrinketMultiplier(eSubType)
					elseif tonumber(eVariant) == PickupVariant.PICKUP_PILL then
						if pillsTable[tostring(eSubType)] then
							EID.TransformationProgress[i][transformation] = EID.TransformationProgress[i][transformation] + pillsTable[tostring(eSubType)]
						end
					end
				end
			end
		end
	end
end

-- Create a list of all grid entities in the room that have an EID description
function EID:CheckCurrentRoomGridEntities()
	EID.CurrentRoomGridEntities = {}
	local room = game:GetRoom()
	for i = 1, room:GetGridSize(), 1 do
		local gridEntity = room:GetGridEntity(i)
		if gridEntity and EID:hasDescription(gridEntity) then
			EID.CurrentRoomGridEntities[i] = gridEntity
		end
	end
end

-- Workaround function to get the currently held pill of the players. Used to map Pill ID to pill color and vise versa
EID.PlayerHeldPill = {}
function EID:evaluateHeldPill()
	EID.PlayerHeldPill = {}
	for i = 0, game:GetNumPlayers() - 1 do
		local player = Isaac.GetPlayer(i)
		EID.PlayerHeldPill[i] = player:GetPill(0)
	end
end

-- Watch for a player's queued item (holding an item over their head) to track active item touches
-- Used for Transformation Progress and for tracking Recently Touched Items
EID.PlayerItemInteractions = {}
EID.RecentlyTouchedItems = {}
local hadQueuedItem = {}
function EID:evaluateQueuedItems()
	for i = 0, game:GetNumPlayers() - 1 do
		EID:InitItemInteractionIfAbsent(i)
		local player = Isaac.GetPlayer(i)
		if player.QueuedItem then
			-- Refresh our descriptions and grid entity list upon a queued passive item being added to a player
			if not player.QueuedItem.Item and hadQueuedItem[i] then
				EID.ForceRefreshCache = true
				EID:CheckCurrentRoomGridEntities()
			end
			hadQueuedItem[i] = player.QueuedItem.Item ~= nil
			if EID.PlayerItemInteractions[i].LastTouch + 45 >= game:GetFrameCount() and player.QueuedItem.Item then
				return
			else
				EID.PlayerItemInteractions[i].LastTouch = 0
			end

			if not player.QueuedItem.Touched and player.QueuedItem.Item then
				EID.PlayerItemInteractions[i].LastTouch = game:GetFrameCount()
				local itemIDStr = tostring(player.QueuedItem.Item.ID)
				-- Add touched active items to our transformation progress table
				if player.QueuedItem.Item.Type == ItemType.ITEM_ACTIVE then
					-- A new active item was touched; initiate its touch count to 0 for all players
					-- (Fixes co-op bugs, compared to only initiating it for the toucher)
					for j = 0, game:GetNumPlayers() - 1 do
						EID.PlayerItemInteractions[j].actives[itemIDStr] = EID.PlayerItemInteractions[j].actives[itemIDStr] or 0
						EID.PlayerItemInteractions[j].altActives[itemIDStr] = EID.PlayerItemInteractions[j].altActives[itemIDStr] or 0
					end

					-- Dead Tainted Lazarus exceptions
					local activesTable = EID.PlayerItemInteractions[i].actives
					if player:GetPlayerType() == 38 then
						activesTable = EID.PlayerItemInteractions[i].altActives or activesTable
					end
					EID.ForceRefreshCache = true
					activesTable[itemIDStr] = activesTable[itemIDStr] + 1
				elseif player.QueuedItem.Item.Type ~= ItemType.ITEM_TRINKET then
					-- In AB+, Halo of Flies is counted as an active item due to inaccuracy with GetCollectibleNum
					if (not EID.isRepentance and itemIDStr == "10") then
						EID.PlayerItemInteractions[i].actives[itemIDStr] = EID.PlayerItemInteractions[i].actives[itemIDStr] + 1
					end
					-- Put non-active item pickups into the recent item list, for printing in the Item Reminder
					table.insert(EID.RecentlyTouchedItems[i], player.QueuedItem.Item.ID)
					EID.ItemReminderSelectedItem = 0
				end
			end
		end
	end
end

-- if the player ItemInteraction table doesnt exist, create it with its init values
function EID:InitItemInteractionIfAbsent(playerID)
	if not EID.PlayerItemInteractions[playerID] then
		EID.PlayerItemInteractions[playerID] = { LastTouch = 0, actives = {}, altActives = {},
			pickupHistory = {}, altPickupHistory = {}, rerollItems = {} }
		-- in AB+, initiate Halo of Flies as an active item (collectible ID 10 is used for ALL Pretty Flies)
		if not EID.isRepentance then
			EID.PlayerItemInteractions[playerID].actives["10"] = 0
		end
	end
	EID.RecentlyTouchedItems[playerID] = EID.RecentlyTouchedItems[playerID] or {}
end


-- Returns the quality of the described entity
function EID:getObjectQuality(descObj)
	if EID.isRepentance and descObj.ObjType == 5 and descObj.ObjVariant == 100 and EID.itemConfig:GetCollectible(tonumber(descObj.ObjSubType)) then
		return tonumber(EID.itemConfig:GetCollectible(tonumber(descObj.ObjSubType)).Quality)
	end
end

-- Returns the Inline Icon definition object for a given object.
EID.ObjectIcon = {}
function EID:getObjectIcon(descObj)
	-- custom object icon
	if EID.ObjectIcon[descObj.ObjType.."."..descObj.ObjVariant.."."..descObj.ObjSubType] then
		return EID.ObjectIcon[descObj.ObjType.."."..descObj.ObjVariant.."."..descObj.ObjSubType]
	end

	if descObj.ObjType == 5 then
		if descObj.ObjVariant == 100 then
			return EID:createItemIconObject("Collectible" .. descObj.ObjSubType)
		elseif descObj.ObjVariant == 350 then
			return EID:createItemIconObject("Trinket" .. descObj.ObjSubType)
		elseif descObj.ObjVariant == 300 then
			return EID:createItemIconObject("Card" .. descObj.ObjSubType)
		elseif descObj.ObjVariant == 70 then
			if descObj.ObjSubType >= 2049 then
				return EID:createItemIconObject("Pill" .. (descObj.ObjSubType - 2048))
			end
			return EID:createItemIconObject("Pill" .. descObj.ObjSubType)
		end
	end
end

-- Adds an EID Icon to an Object
function EID:AddIconToObject(eType, eVariant, eSubType, iconName)
	EID.ObjectIcon[eType.."."..eVariant.."."..eSubType] = EID.InlineIcons[iconName]
end

-- Set a pilleffect to be permanently unidentifyable by EID
function EID:SetPillEffectUnidentifyable(pillEffectID, isUnidentifyable)
	EID.UnidentifyablePillEffects[pillEffectID + 1] = isUnidentifyable or nil
end

-- Add pickup usage to history of pickups used by the player
function EID:AddPickupToHistory(pickupType, effectID, player, useFlags, pillColorID)
	-- don't add mimiced or noannouncer cards/pills to Echo Chamber history
	local allowEchoChamber = true
	if EID.isRepentance and (useFlags & UseFlag.USE_MIMIC == UseFlag.USE_MIMIC or useFlags & UseFlag.USE_NOANNOUNCER == UseFlag.USE_NOANNOUNCER) then
		allowEchoChamber = false
	end
	local playerID = EID:getPlayerID(player)
	EID:InitItemInteractionIfAbsent(playerID)

	local historyTable = EID.PlayerItemInteractions[playerID].pickupHistory
	-- Dead Tainted Lazarus exception
	if player:GetPlayerType() == 38 then
		historyTable = EID.PlayerItemInteractions[playerID].altPickupHistory or historyTable
	end

	-- pickupType = ["pill","card"], pillColorID, effectID, hadEchoChamberWhenUsed
	table.insert(historyTable, 1, {pickupType, pillColorID, effectID, EID.isRepentance and player:HasCollectible(700) and allowEchoChamber})
end

-- Render a sprite of an entity
function EID:RenderEntity(entity, sprite, position)
	if entity.Type == 5 and entity.Variant == 100 then
		sprite:RenderLayer(1, position, nullVector, nullVector)
	elseif entity.Type == 6 and entity.Variant == 16 then -- Crane Game
		sprite:RenderLayer(2, position, nullVector, nullVector)
	else
		sprite:Render(position, nullVector, nullVector)
	end
end

-- Tries to get the Vanilla transformations of modded items based on Tags
function EID:GetTransformationsOfModdedItems()
	if not EID.isRepentance then return end
	local numCollectibles = EID:GetMaxCollectibleID()
	for i = 733, numCollectibles, 1 do
		EID:tryAutodetectTransformationsCollectible(i)
	end
end

-- Collects items that the player got after using D4 item
function EID:CollectRerolledItemsOfPlayer(player)
	if maxCollectibleID == nil then maxCollectibleID = EID:GetMaxCollectibleID() end
	local playerID = EID:getPlayerID(player)
	EID.PlayerItemInteractions[playerID].rerollItems = {}
	for i = 1, maxCollectibleID do
		local count = player:GetCollectibleNum(i, true)
		if count > 0 then
			EID.PlayerItemInteractions[playerID].rerollItems[tostring(i)] = count
		end
	end
end


-- Returns true if a given entity is a grid entity
function EID:IsGridEntity(entity)
	return entity.Type == nil
end

-- Returns true, if the given entity is a valid game object and actually is something useful to process. Sometimes the game sends weird shit so this function is needed to catch bullshit
function EID:EntitySanityCheck(entity)
	return entity ~= nil and type(entity) == "userdata"
end

-- returns true if the given pill color was used at least once in this game
function EID:WasPillUsed(pillColor)
	return EID.UsedPillColors[tostring(pillColor)] ~= nil
end

-- returns the name of the given entity
---@diagnostic disable-next-line: duplicate-set-field
function EID:GetEntityXMLName(Type, Variant, SubType)
	return EID.XMLEntityNames[Type.."."..Variant] or EID.XMLEntityNames[Type.."."..Variant.."."..SubType]
end

-- Get an item's RNG seed. We have no use for the RNG object itself because every other function it can do will advance the item's RNG, altering the game state
function EID:GetItemSeed(player, id, variant)
	if player == nil then return game:GetSeeds():GetStartSeed()
	elseif variant == nil or variant == 100 then return player:GetCollectibleRNG(id):GetSeed()
	elseif variant == 350 then return player:GetTrinketRNG(id):GetSeed()
	elseif variant == 300 then return player:GetCardRNG(id):GetSeed()
	elseif variant == 70 then return player:GetPillRNG(id):GetSeed() end
end

local variantToName = { [70] = "Pill", [100] = "Collectible", [300] = "Card", [350] = "Trinket" }
function EID:GetIconNameByVariant(variant)
	return variantToName[variant]
end

function EID:GetIconStringByDescriptionObject(descObj)
	if descObj and descObj.Icon then
		if type(descObj.Icon) == "table" then 
			local iconName = EID:GetIconNameByVariant(descObj.ObjVariant)
			if iconName == "Card" or iconName == "Pill" then
				return "{{" .. iconName .. (descObj.Icon[2] + 1) .. "}}"
			end
			return "{{" .. iconName .. descObj.Icon[2] .. "}}"
		elseif type(descObj.Icon) == "string" then 
			return descObj.Icon
		end
	end
	return "{{Blank}}"
end

-- returns the markup for a given player ID or type. If no icon was found, returns the customTransformation icon markup
function EID:GetPlayerIcon(playerID, altFallback)
	local fallback = altFallback or "{{CustomTransformation}}"
	
	return EID:getIcon("Player" .. playerID) ~= EID.InlineIcons["ERROR"] and "{{Player" .. playerID .. "}}" or fallback
end

-- returns a list of all passive item ids
local passiveItems = nil -- cache of all passive item ids
function EID:GetAllPassiveItems()
	if passiveItems then
		return passiveItems
	end
	passiveItems = {}

	for i = 1, EID:GetMaxCollectibleID() do
		local config = EID.itemConfig:GetCollectible(i)
		if config ~= nil and (config.Type == ItemType.ITEM_PASSIVE or config.Type == ItemType.ITEM_FAMILIAR) then
			table.insert(passiveItems, i)
		end
	end
end

-- Updates the EID.RecentlyTouchedItems table to include the players currently held passive items
function EID:UpdateAllPlayerPassiveItems()
	local passives = EID:GetAllPassiveItems()
	local listUpdatedForPlayers = {}
	for i = 1, #EID.coopAllPlayers do
		local player = EID.coopAllPlayers[i]
		local playerNum = EID:getPlayerID(player)

		if player == nil then
			return listUpdatedForPlayers -- dont evaluate when bad data is present
		end

		-- only update if collectible number changed
		local currentCollectibleCount = player:GetCollectibleCount()
		if #EID.RecentlyTouchedItems[playerNum] ~= currentCollectibleCount then
			
			-- remove items the player no longer has. reverse itteration to make deletion easier
			for index = #EID.RecentlyTouchedItems[playerNum], 1, -1  do
				if not player:HasCollectible(EID.RecentlyTouchedItems[playerNum][index], true) then
					table.remove(EID.RecentlyTouchedItems[playerNum], index)
					listUpdatedForPlayers[i] = true
				end
			end

			-- add items the player did get with non-standard methods (console command, item effects, etc...)
			for _, itemID in ipairs(passives) do
				if player:HasCollectible(itemID, true) then
					local alreadyInList = false
					for _, heldItemID in ipairs(EID.RecentlyTouchedItems[playerNum]) do
						if itemID == heldItemID then
							alreadyInList = true
							break
						end
					end
					if not alreadyInList then
						table.insert(EID.RecentlyTouchedItems[playerNum], itemID)
						listUpdatedForPlayers[i] = true
					end
				end
			end
		end
	end
	return listUpdatedForPlayers
end

-- Replaces Variable placeholders in string with a given value
-- Example: "My {1} message" --> "My test message"
function EID:ReplaceVariableStr(str, varID, newString)
	if type(str) ~= "string" or newString == nil then return str end
	return str:gsub("{"..varID.."}", newString)
end
