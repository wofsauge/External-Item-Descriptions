-- Init legacy global variables for other mods to hand over Descriptions
if not __eidItemDescriptions then
	__eidItemDescriptions = {}
end
if not __eidTrinketDescriptions then
	__eidTrinketDescriptions = {}
end
if not __eidCardDescriptions then
	__eidCardDescriptions = {}
end
if not __eidPillDescriptions then
	__eidPillDescriptions = {}
end
if not __eidItemTransformations then
	__eidItemTransformations = {}
end
if not __eidEntityDescriptions then
	__eidEntityDescriptions = {}
end

---------------------------------------------------------------------------
-------------------------Handle Custom Enum -----------------------------

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
	["SUPERBUM"] = 11
}

-- List of item Types
EID.ItemTypeAnm2Names = {
	"null", -- 1
	"passive", -- 2
	"active", -- 3
	"familiar", -- 4
	"trinket" -- 5
}
---------------------------------------------------------------------------
-------------------------Handle API Functions -----------------------------
local nullVector = Vector(0,0)
local game = Game()
local maxCardID = REPENTANCE and 97 or 54
local maxPillID = REPENTANCE and 14 or 13
local dynamicSpriteCache = {} -- used to store sprite objects of collectible icons etc.

-- Adds a description for a collectible. Optional parameters: itemName, language
function EID:addCollectible(id, description, itemName, language)
	itemName = itemName or nil
	language = language or "en_us"
	EID.descriptions[language].custom["5.100." .. id] = {id, itemName, description}
end

-- Adds a description for a trinket. Optional parameters: itemName, language
function EID:addTrinket(id, description, itemName, language)
	itemName = itemName or nil
	language = language or "en_us"
	EID.descriptions[language].custom["5.350." .. id] = {id, itemName, description}
end

-- Adds a description for a card/rune. Optional parameters: itemName, language
function EID:addCard(id, description, itemName, language)
	itemName = itemName or nil
	language = language or "en_us"
	EID.descriptions[language].custom["5.300." .. id] = {id, itemName, description}
end

-- Adds a description for a pilleffect id. Optional parameters: itemName, language
function EID:addPill(id, description, itemName, language)
	itemName = itemName or nil
	language = language or "en_us"
	EID.descriptions[language].custom["5.70." .. id+1] = {id+1, itemName, description}
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
function EID:displayPermanentText(descriptionObject)
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
	else return "custom"
	end
end

-- Loads a given font from a given file path and use it to render text
function EID:loadFont(fontFileName)
	EID.font:Load(fontFileName)
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
	for a,modifier in pairs(EID.PositionModifiers) do
		posVector = posVector + modifier
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

-- returns the description object of the specified entity
-- falls back to english if the objID isnt available
function EID:getDescriptionObj(Type, Variant, SubType)
	local description = {}
	description.ObjType = Type
	description.ObjVariant = Variant
	description.ObjSubType = SubType
	description.fullItemString = Type.."."..Variant.."."..description.ObjSubType
	description.Name = EID:getObjectName(Type, Variant, description.ObjSubType)

	local tableEntry = EID:getDescriptionData(Type, Variant, description.ObjSubType)
	description.Description = tableEntry and tableEntry[3] or EID:getXMLDescription(Type, Variant, description.ObjSubType)

	description.Transformation = EID:getTransformation(Type, Variant, description.ObjSubType)
	
	for k,modifier in pairs(EID.DescModifiers) do
		if modifier.condition(description) then
			description = modifier.callback(description)
		end
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

-- returns the specified object table in the current language.
-- falls back to english if it doesnt exist
function EID:getDescriptionEntry(objTable, objID)
	if not objID then
		return EID.descriptions[EID.Config["Language"]][objTable] or EID.descriptions["en_us"][objTable]
	else
		local translatedTable = EID.descriptions[EID.Config["Language"]][objTable]
		return (translatedTable and translatedTable[objID]) or (EID.descriptions["en_us"][objTable] and EID.descriptions["en_us"][objTable][objID])
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
		if SubType > 32768 then 
			return SubType - 32768
		end
	elseif tableName == "pills" or tableName == "horsepills" then
		if SubType == 14 then
			return 9999
		end
		local pool = game:GetItemPool()
		SubType = pool:GetPillEffect(SubType, EID.player) + 1
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

	local customLegacy = nil
	if id == 5 and variant == 100 then
		customLegacy = __eidItemTransformations[adjustedSubtype]
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
			return customTransform[EID.Config["Language"]] or customTransform["en_us"] or id
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
		return name or EID.itemConfig:GetCollectible(SubType).Name
	elseif tableName == "trinkets" then
		return name or EID.itemConfig:GetTrinket(SubType).Name
	elseif tableName == "cards" then
		return name or EID.itemConfig:GetCard(SubType).Name
	elseif tableName == "pills" or tableName == "horsepills" then
		local adjustedSubtype = EID:getAdjustedSubtype(Type, Variant, SubType)
		name = name or EID.itemConfig:GetPillEffect(adjustedSubtype - 1).Name
		return string.gsub(name,"I'm Excited!!!","I'm Excited!!") -- prevent markup trigger
	elseif tableName == "sacrifice" then
		return EID:getDescriptionEntry("sacrificeHeader")
	elseif tableName == "dice" then
		return EID:getDescriptionEntry("diceHeader").." ("..SubType..")"
	elseif tableName == "custom" then
		return name or Type.."."..Variant.."."..SubType
	end
	return Type.."."..Variant.."."..SubType
end

-- tries to get the ingame description of an object, based on their description in the XML files
function EID:getXMLDescription(Type, Variant, SubType)
	local tableName = EID:getTableName(Type, Variant, SubType)
	local desc= nil
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
function EID:hasDescription(entity)
	local isAllowed = false
	if EID.Config["EnableEntityDescriptions"] and EID:getTableName(entity.Type, entity.Variant, entity.SubType) == "custom" then
		isAllowed = __eidEntityDescriptions[entity.Type .. "." .. entity.Variant .. "." .. entity.SubType] ~= nil
		isAllowed = isAllowed or EID:getDescriptionData(entity.Type, entity.Variant, entity.SubType) ~= nil
		isAllowed = isAllowed or type(entity:GetData()["EID_Description"]) ~= type(nil)
	end
	if entity.Type == EntityType.ENTITY_PICKUP then
		isAllowed = isAllowed or (entity.Variant == PickupVariant.PICKUP_COLLECTIBLE and EID.Config["DisplayItemInfo"])
		isAllowed = isAllowed or (entity.Variant == PickupVariant.PICKUP_TRINKET and EID.Config["DisplayTrinketInfo"])
		isAllowed = isAllowed or (entity.Variant == PickupVariant.PICKUP_TAROTCARD and EID.Config["DisplayCardInfo"])
		isAllowed = isAllowed or (entity.Variant == PickupVariant.PICKUP_PILL and EID.Config["DisplayPillInfo"])
		return isAllowed and entity.SubType > 0
	end
	isAllowed = isAllowed or (entity.Type == 1000 and entity.Variant == EffectVariant.DICE_FLOOR and EID.Config["DisplayDiceInfo"])
	return isAllowed
end

-- Replaces shorthand-representations of a character with the internal reference
function EID:replaceShortMarkupStrings(text)
	for _, pair in ipairs(EID.TextReplacementPairs) do
		text = string.gsub(text, pair[1], pair[2])
	end
	return text
end

-- Generates a string with the defined pixel-length using a custom 1px wide character
-- This will only work for this specific custom font
function EID:generatePlaceholderString(length)
	local placeholder = ""
	for i = 1, length do
		placeholder = placeholder .. "¤"
	end
	return placeholder
end

-- Returns the inlineIcon object of a given Iconstring
-- can be used to validate an iconstring
function EID:getIcon(str)
	if str == nil then
		return EID.InlineIcons["ERROR"]
	end
	local strTrimmed = string.gsub(str,"{{(.-)}}",function(a) return a end )
	if #strTrimmed <= #str then
		return EID:createItemIconObject(strTrimmed) or EID.InlineIcons[strTrimmed] or EID.InlineIcons["ERROR"]
	else
		return EID.InlineIcons["ERROR"]
	end
end

-- Tries to read special markup used to generate icons for all Collectibles/Trinkets and the default Cards/Pills
-- Returns an inlineIcon Object or nil if no parsing was possible
function EID:createItemIconObject(str)
	local collID,numReplace = string.gsub(str, "Collectible", "")
	local item = nil
	if numReplace > 0 and collID ~= "" and tonumber(collID) ~= nil then
		item = EID.itemConfig:GetCollectible(tonumber(collID))
	end
	local trinketID,numReplace2 = string.gsub(str, "Trinket", "")
	if numReplace2 > 0 and trinketID ~= "" and tonumber(trinketID) ~= nil then
		item = EID.itemConfig:GetTrinket(tonumber(trinketID))
	end
	local cardID,numReplace3 = string.gsub(str, "Card", "")
	if numReplace3 > 0 and cardID ~= "" and tonumber(cardID) ~= nil then
		if tonumber(cardID) > maxCardID then return EID.InlineIcons[str] or EID.InlineIcons["Blank"] end
		return {"Cards",tonumber(cardID)-1,8,8,0,1,EID.CardPillSprite}
	end
	local pillID,numReplace4 = string.gsub(str, "Pill", "")
	if numReplace4 > 0 and pillID ~= "" and tonumber(pillID) ~= nil then
		if tonumber(pillID) > maxPillID then return EID.InlineIcons[str] or EID.InlineIcons["Blank"] end
		return {"Pills",tonumber(pillID)-1,9,8,0,1,EID.CardPillSprite}
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
		local newDynamicSprite = {"ItemIcon",0,11,8,-2,-2,spriteDummy}
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
function EID:filterIconMarkup(text, textPosX, textPosY)
	local spriteTable = {}
	for word in string.gmatch(text, "{{.-}}") do
		local textposition = string.find(text, word)
		local lookup = EID:getIcon(word)
		local preceedingTextWidth = EID:getStrWidth(string.sub(text, 0, textposition - 1)) * EID.Config["Scale"]
		table.insert(spriteTable, {lookup, preceedingTextWidth})
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
		if sprite[1][2] >=0 then
			spriteObj:SetFrame(sprite[1][1], sprite[1][2])
		elseif not spriteObj:IsPlaying(sprite[1][1]) or spriteObj:IsFinished(sprite[1][1]) then
			spriteObj:Play(sprite[1][1],true)
		else
			spriteObj:Update()
		end
		EID:renderIcon(spriteObj, posX + sprite[2] + Xoffset * EID.Config["Scale"], posY + Yoffset * EID.Config["Scale"])
	end
end

-- helper function to render Icons in specific EID settins
function EID:renderIcon(spriteObj, posX, posY)
	spriteObj.Scale = Vector(EID.Config["Scale"], EID.Config["Scale"])
	spriteObj.Color = Color(1, 1, 1, EID.Config["Transparency"], 0, 0, 0)
	spriteObj:Render(Vector(posX, posY), nullVector, nullVector)
end

-- Returns the icon used for the bulletpoint. It will look at the first word in the given string.
function EID:handleBulletpointIcon(text)
	local firstWord = string.match(text, "([^%s]+)")
	if EID:getIcon(firstWord) ~= EID.InlineIcons["ERROR"] and string.find(firstWord, "{{.-}}")~=nil then
		return firstWord
	end
	return "\007"
end

-- Gets a KColor from a Markup-string (example Input: "{{ColorText}}")
-- Returns the KColor object and a boolean value indicating if the given string was a color markup or not
function EID:getColor(str, baseKColor)
	local color = baseKColor
	local isColorMarkup = false
	if str ~= nil then
		local strTrimmed = string.gsub(str,"{{(.-)}}",function(a) return a end, 1)
		if #strTrimmed <= #str then
			if type(EID.InlineColors[strTrimmed]) == "function" then
				color = EID.InlineColors[strTrimmed](color)
			else
				color = EID.InlineColors[strTrimmed] or color
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
	local lastPosition = 0
	for word in string.gmatch(text, "{{.-}}") do
		local textposition = string.find(text, word)
		local lookup, isColor = EID:getColor(word, lastColor)
		if isColor then
			local preceedingText = string.sub(text, lastPosition, textposition - 1)
			local preceedingTextWidth = EID:getStrWidth(preceedingText) * EID.Config["Scale"]
			lastPosition = textposition
			table.insert(textPartsTable, {preceedingText, lastColor, preceedingTextWidth})
			lastColor = lookup
			text = string.gsub(text, word, "", 1)
		end
	end

	table.insert(textPartsTable, {string.sub(text, lastPosition), lastColor, 0})
	return textPartsTable
end

-- Fits a given string to a specific width
-- returns the string as a table of lines
function EID:fitTextToWidth(str, textboxWidth)
	local formatedLines = {}
	local curLength = 0
	local text = ""
	for word in string.gmatch(str, "([^%s]+)") do
		local colorFiltered = EID:filterColorMarkup(word, EID:getTextColor())
		local filteredWord = ""
		for _, filtered in ipairs(colorFiltered) do
			filteredWord = filteredWord .. filtered[1]
		end
		local strFiltered, spriteTable = EID:filterIconMarkup(filteredWord, 0, 0)
		local wordLength = EID:getStrWidth(strFiltered)

		if curLength + wordLength <= textboxWidth or curLength < 12 then
			text = text .. word .. " "
			curLength = curLength + wordLength
		else
			table.insert(formatedLines, text)
			text = word .. " "
			curLength = wordLength
		end
	end
	table.insert(formatedLines, text)
	return formatedLines
end

-- Renders a given string using the EID Custom font. This will also apply any markup and render icons
-- needs to be called in a render Callback
-- args: string, Vector(int, int), Vector(float,float), KColor obj, bool
-- Returns the last used KColor
function EID:renderString(str, position, scale, kcolor)
	str = EID:replaceShortMarkupStrings(str)
	EID.LastRenderCallColor = EID:copyKColor(kcolor) -- Save last Color for eventual Color Reset call
	local textPartsTable = EID:filterColorMarkup(str, kcolor)
	local offsetX = 0
	for i, textPart in ipairs(textPartsTable) do
		local strFiltered, spriteTable = EID:filterIconMarkup(textPart[1], position.X, position.Y)
		EID:renderInlineIcons(spriteTable, position.X + offsetX, position.Y)
		EID.font:DrawStringScaledUTF8(strFiltered, position.X + offsetX, position.Y, scale.X, scale.Y, textPart[2], 0, false)
		offsetX = offsetX + EID:getStrWidth(strFiltered) * scale.X
	end
	return textPartsTable[#textPartsTable][2]
end

-- Adds Description object modifiers.
-- Used for altering descriptions. Example: Spindown dice, Tarot Cloth, ...
function EID:addDescriptionModifier(modifierName, condition, callback)
	EID.DescModifiers[modifierName] = {
		condition = condition,
		callback = callback
	}
end

-- Removes a Description object modifier
-- Used for altering descriptions. Example: Spindown dice, Tarot Cloth, ...
function EID:removeDescriptionModifier(modifierName)
	EID.DescModifiers[modifierName] = nil
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
		tableToUpdate[k] = v
	end
end

-- Converts a given CollectibleID into the respective Spindown dice result
function EID:getSpindownResult(collectibleID)
	local newID = collectibleID
	repeat
		newID = newID - 1
	--note: the order of the SkipLocked check statement is important so that the item is checked for being in a pool either way (to display a ? if it isn't)
	until (EID.itemConfig:GetCollectible(newID) and (EID:isCollectibleUnlockedAnyPool(newID) or not EID.Config["SpindownDiceSkipLocked"]) and not EID.itemConfig:GetCollectible(newID).Hidden) or newID == CollectibleType.COLLECTIBLE_NULL
	return newID
end

function EID:GetMaxCollectibleID()
	local id = CollectibleType.NUM_COLLECTIBLES-1
	local step = 16
	while step > 0 do
		if EID.itemConfig:GetCollectible(id+step) ~= nil then
			id = id + step
		else
			step = step // 2
		end
	end
		
	return id
end

local maxCollectibleID = nil
function EID:isCollectibleUnlocked(collectibleID, itemPoolOfItem)
	local itemPool = Game():GetItemPool()
	if (not maxCollectibleID) then maxCollectibleID = EID:GetMaxCollectibleID() end
	for i= 1, maxCollectibleID do
		if ItemConfig.Config.IsValidCollectible(i) and i ~= collectibleID then
			itemPool:AddRoomBlacklist(i)
		end
	end
	local isUnlocked = false
	for i = 0,1 do -- some samples to make sure
		local collID = itemPool:GetCollectible(itemPoolOfItem, false, 1)
		if collID == collectibleID then
			isUnlocked = true
			break
		end
	end
	itemPool:ResetRoomBlacklist()
	return isUnlocked
end

function EID:isCollectibleUnlockedAnyPool(collectibleID)
	local item = EID.itemConfig:GetCollectible(collectibleID)
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
		--iterate through the pools this item can be in
		for k,itemPoolID in ipairs(EID.CollectiblesPools[collectibleID]) do
			if (itemPoolID < ItemPoolType.NUM_ITEMPOOLS and EID:isCollectibleUnlocked(collectibleID, itemPoolID)) then
				EID.itemUnlockStates[collectibleID] = true
				return true
			end
		end
		--note: some items will still be missed by this, if they've been taken out of their pools (especially when in Greed Mode)
		EID.itemUnlockStates[collectibleID] = false
		return false
	else
		return EID.itemUnlockStates[collectibleID]
	end
end

-- Converts a given table into a string containing the crafting icons of the table
-- Example input: {1,2,3,4,5,6,7,8}
-- Result: "{{Crafting8}}{{Crafting7}}{{Crafting6}}{{Crafting5}}{{Crafting4}}{{Crafting3}}{{Crafting2}}{{Crafting1}}"
function EID:tableToCraftingIconsFull(craftTable)
	local sortedList = {table.unpack(craftTable)}
	table.sort(sortedList, function(a, b) return a > b end)
	local iconString = ""
	for _,nr in ipairs(sortedList) do
		iconString = iconString.."{{Crafting"..nr.."}}"
	end
	return iconString
end

-- Converts a given table into a string containing the crafting icons of the table, which are also grouped to reduce render lag
-- Example input: {1,1,1,2,2,3,3,3}
-- Result: "3{{Crafting3}}2{{Crafting2}}3{{Crafting1}}"
local emptyPickupTable = {}
for i=1,25 do emptyPickupTable[i] = 0 end
function EID:tableToCraftingIconsMerged(craftTable)
	local sortedList = {table.unpack(craftTable)}
	table.sort(sortedList, function(a, b) return a > b end)
	local filteredList = {table.unpack(emptyPickupTable)}
	for _,nr in ipairs(sortedList) do
		filteredList[nr] = filteredList[nr] +1
	end
	local iconString = ""
	for nr,count in ipairs(filteredList) do
		if (count > 0) then
			iconString = iconString..count.."{{Crafting"..nr.."}}"
		end
	end
	return iconString
end


function EID:handleHUDElement(hudElement)
	local alteredHudElement = {}
	for k,v in pairs(hudElement) do
		alteredHudElement[k] = v
	end
	local screenSize = EID:getScreenSize()
	local hudOffset = EID.Config["HUDOffset"]
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
	local pos = room:WorldToScreenPosition(Vector(0,0)) - room:GetRenderScrollOffset() - Game().ScreenShakeOffset
	
	local rx = pos.X + 60 * 26 / 40
	local ry = pos.Y + 140 * (26 / 40)

	return Vector(rx*2 + 13*26, ry*2 + 7*26)
end

function EID:getEntityData(entity, str)
	if entity ~= nil and entity:GetData() ~= nil then
		return entity:GetData()[str]
	end
	return nil
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
