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

-- Adds a description for a collectible. Optional parameters: itemName, language
function EID:addCollectible(id, description, itemName, language)
	itemName = itemName or nil
	language = language or "en_us"
	EID.descriptions[language].custom["collectible_" .. id] = {id, itemName, description}
end

-- Adds a description for a trinket. Optional parameters: itemName, language
function EID:addTrinket(id, description, itemName, language)
	itemName = itemName or nil
	language = language or "en_us"
	EID.descriptions[language].custom["trinket_" .. id] = {id, itemName, description}
end

-- Adds a description for a card/rune. Optional parameters: itemName, language
function EID:addCard(id, description, itemName, language)
	itemName = itemName or nil
	language = language or "en_us"
	EID.descriptions[language].custom["card_" .. id] = {id, itemName, description}
end

-- Adds a description for a pilleffect id. Optional parameters: itemName, language
function EID:addPill(id, description, itemName, language)
	itemName = itemName or nil
	language = language or "en_us"
	EID.descriptions[language].custom["pill_" .. id] = {id, itemName, description}
end

-- Creates a new transformation with a given unique name and a display name
function EID:createTransformation(uniqueName, displayName, language)
	language = language or "en_us"
	if EID.CustomTransformations[uniqueName] == nil then
		EID.CustomTransformations[uniqueName] = {}
	end
	EID.CustomTransformations[uniqueName][language] = displayName
end

-- Assigns transformations to an entity
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
	EID.CustomTransformAssignments[entryID] = transformationString
end

-- Adds a description for a an Entity. Optional parameters: language, transformations
-- when subtype is -1 or empty, it will affect all subtypes of that entity
function EID:addEntity(id, variant, subtype, entityName, description, language)
	subtype = subtype or nil
	language = language or "en_us"
	EID.descriptions[language].custom[id .. "." .. variant .. "." .. subtype] = {
		id,
		variant,
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
	elseif typeName == "trinket" or typeName == "trinkets" then return "5.350."
	elseif typeName == "card" or typeName == "cards" then return "5.300."
	elseif typeName == "pill" or typeName == "pills" then return "5.70."
	end
	return nil
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
	return EID.isDisplayingText
end

-- Returns true, if curse of blind is active
function EID:hasCurseBlind()
	return Game():GetLevel():GetCurses() & LevelCurse.CURSE_OF_BLIND > 0
end

-- returns the current text position
function EID:getTextPosition()
	return Vector(EIDConfig["XPosition"], EIDConfig["YPosition"])
end

-- returns the entity that is currently described. returns last described entity if currently not displaying text
function EID:getLastDescribedEntity()
	return EID.lastDescriptionEntity
end

-- returns descriptions from the legacy mod descriptions if they exist
function EID:getLegacyModDescription(objTable, id)
	id = tonumber(id)
	if objTable == "collectibles" then
		return __eidItemDescriptions[id]
	elseif objTable == "trinkets" then
		return __eidTrinketDescriptions[id]
	elseif objTable == "cards" then
		return __eidCardDescriptions[id]
	elseif objTable == "pills" then
		return __eidPillDescriptions[id]
	elseif objTable == "transformations" then
		return __eidItemTransformations[id]
	elseif objTable == "custom" then
		return __eidEntityDescriptions[id] and __eidEntityDescriptions[id][2]
	end
end

-- returns the specified object table in the current language.
-- falls back to english if it doesnt exist
function EID:getDescriptionTable(objTable)
	return EID.descriptions[EIDConfig["Language"]][objTable] or EID.descriptions["en_us"][objTable]
end

-- returns the description object of the specified object table translated with the current language
-- falls back to english if the objID isnt available
function EID:getDescriptionObj(objTable, Type, Variant, SubType)
	objTable = objTable or "custom"
	local tableEntry =
		EID.descriptions[EIDConfig["Language"]][objTable][SubType] or EID.descriptions["en_us"][objTable][SubType] or {}

	local description = {}
	description.ObjectTable = objTable
	description.ItemType = Type
	description.ItemVariant = Variant
	description.ID = SubType

	description.Name = EID:getObjectName(SubType, objTable) or objTable

	local legacyModdedDescription = EID:getLegacyModDescription(objTable, SubType)
	description.Description = legacyModdedDescription or tableEntry[3] or "MISSING DESCRIPTION"

	description.fullItemString = Type.."."..Variant.."."..SubType
	description.Transformation = EID:getTransformation(description.fullItemString)

	return description
end

-- Get the transformation uniqueName / ID of a given "ID.Variant.Subtype" pair
-- Example: EID:getTransformation("5.100.34")  will return "12" which is the id for Bookworm
function EID:getTransformation(entityIdentifier)
	local custom = EID.CustomTransformAssignments[entityIdentifier]
	local customLegacy = nil
	local splitString = {}
	for identifier in string.gsub(entityIdentifier,"%f[.]%.%f[^.]", "\0"):gmatch("%Z+") do 
		table.insert(splitString,identifier)
	end
	if splitString[1] == "5" and splitString[2] == "100" then
		customLegacy = EID:getLegacyModDescription("transformations", splitString[3])
	end
	local default = EID.EntityTransformations[entityIdentifier]
	return custom or customLegacy or default or "0"
end

--Get the name of the given transformation by its uniqueName / ID
function EID:getTransformationName(id)
	local str = "Custom"
	if tonumber(id) == nil then
		-- get translated custom name
		local customTransform = EID.CustomTransformations[id] 
		if customTransform ~= nil then
			return customTransform[EIDConfig["Language"]] or customTransform["en_us"] or id
		end
		return id
	end
	return EID:getObjectName(tonumber(id) + 1, "transformations") or str
end

-- tries to get the ingame name of an item based on its ID
function EID:getObjectName(objID, objType)
	local tableEntry = EID.descriptions[EIDConfig["Language"]][objType][objID] or EID.descriptions["en_us"][objType][objID]
	if objType == "collectibles" then
		if EIDConfig["Language"] ~= "en_us" and #tableEntry == 3 then
			if tableEntry[2] ~= nil and tableEntry[2] ~= "" then
				return tableEntry[2]
			end
		end
		return EID.itemConfig:GetCollectible(objID).Name
	elseif objType == "trinkets" then
		if EIDConfig["Language"] ~= "en_us" and #tableEntry == 3 then
			if tableEntry[2] ~= nil and tableEntry[2] ~= "" then
				return tableEntry[2]
			end
		end
		return EID.itemConfig:GetTrinket(objID).Name
	elseif objType == "cards" then
		if EIDConfig["Language"] ~= "en_us" and #tableEntry == 3 then
			if tableEntry[2] ~= nil and tableEntry[2] ~= "" then
				return tableEntry[2]
			end
		end
		return EID.itemConfig:GetCard(objID).Name
	elseif objType == "pills" then
		if EIDConfig["Language"] ~= "en_us" and #tableEntry == 3 then
			if tableEntry[2] ~= nil and tableEntry[2] ~= "" then
				return tableEntry[2]
			end
		end
		return EID.itemConfig:GetPillEffect(objID).Name
	elseif objType == "transformations" then
		return tableEntry
	elseif objType == "sacrifice" then
		return EID:getDescriptionTable("sacrificeHeader")
	elseif objType == "dice" then
		return EID:getDescriptionTable("diceHeader")
	elseif objType == "custom" then
		return __eidEntityDescriptions[objID][1] or tableEntry[1] or objID
	end
	return ""
end

-- check if an entity is part of the describable entities
function EID:hasDescription(entity)
	local isAllowed = false
	if EIDConfig["EnableEntityDescriptions"] then
		isAllowed = __eidEntityDescriptions[entity.Type .. "." .. entity.Variant .. "." .. entity.SubType] ~= nil
	--isAllowed = isAllowed or type(entity:GetData()["EID_Description"]) ~= type(nil)
	end
	isAllowed = isAllowed or (entity.Variant == PickupVariant.PICKUP_COLLECTIBLE and EIDConfig["DisplayItemInfo"])
	isAllowed = isAllowed or (entity.Variant == PickupVariant.PICKUP_TRINKET and EIDConfig["DisplayTrinketInfo"])
	isAllowed = isAllowed or (entity.Variant == PickupVariant.PICKUP_TAROTCARD and EIDConfig["DisplayCardInfo"])
	isAllowed = isAllowed or (entity.Variant == PickupVariant.PICKUP_PILL and EIDConfig["DisplayPillInfo"])
	return entity.Type == EntityType.ENTITY_PICKUP and isAllowed and entity.SubType > 0
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

-- Tries to read special markup used to generate icons for all Collectibles/Trinkets
-- Returns an inlineIcon Object or nil if no parsing was possible
function EID:createItemIconObject(str)
	local collID,numReplace = string.gsub(str, "Collectible", "")
	local item = nil
	if numReplace>0 and collID~="" then
		item = EID.itemConfig:GetCollectible(tonumber(collID))
	end
	local trinketID,numReplace2 = string.gsub(str, "Trinket", "")
	if numReplace2>0 and trinketID~="" then
		item = EID.itemConfig:GetTrinket(tonumber(trinketID))
	end
	if item == nil then
		return nil
	end
	local spriteDummy = Sprite()
	spriteDummy:Load("gfx/eid_inline_icons.anm2", true)
	spriteDummy:ReplaceSpritesheet(1, item.GfxFileName)
	spriteDummy:LoadGraphics()
	return {"ItemIcon",0,7,7,-4,-2,spriteDummy}
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
		local preceedingTextWidth = EID:getStrWidth(string.sub(text, 0, textposition - 1)) * EIDConfig["Scale"]
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
		local spriteObj = sprite[1][7] or EID.InlineIconSprite
		if sprite[1][2] >=0 then
			spriteObj:SetFrame(sprite[1][1], sprite[1][2])
		elseif not spriteObj:IsPlaying(sprite[1][1]) or spriteObj:IsFinished(sprite[1][1]) then
			spriteObj:Play(sprite[1][1],true)
		else
			spriteObj:Update()
		end
		EID:renderIcon(spriteObj, posX + sprite[2] + Xoffset, posY + Yoffset)
	end
end

-- helper function to render Icons in specific EID settins
function EID:renderIcon(spriteObj, posX, posY)
	spriteObj.Scale = Vector(EIDConfig["Scale"], EIDConfig["Scale"])
	spriteObj.Color = Color(1, 1, 1, EIDConfig["Transparency"], 0, 0, 0)
	spriteObj:Render(Vector(posX, posY), nullVector, nullVector)
end

-- Returns the icon used for the bulletpoint. It will look at the first word in the given string.
function EID:handleBulletpointIcon(text)
	local firstWord = string.match(text, "([^%s]+)")
	if EID:getIcon(firstWord) ~= EID.InlineIcons["ERROR"] then
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
		local strTrimmed =
			string.gsub(
			str,
			"{{(.-)}}",
			function(a)
				return a
			end
		)
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
	color.Alpha = math.min(color.Alpha, EIDConfig["Transparency"])
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
			local preceedingTextWidth = EID:getStrWidth(preceedingText) * EIDConfig["Scale"]
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
		EID:renderInlineIcons(spriteTable, position.X, position.Y)
		EID.font:DrawStringScaledUTF8(strFiltered, position.X + offsetX, position.Y, scale.X, scale.Y, textPart[2], 0, false)
		offsetX = offsetX + textPart[3]
	end
	return textPartsTable[#textPartsTable][2]
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
	return KColor(
		EIDConfig["ItemNameColor"][1],
		EIDConfig["ItemNameColor"][2],
		EIDConfig["ItemNameColor"][3],
		EIDConfig["Transparency"]
	)
end

-- Get KColor object of "Description" texts
function EID:getTextColor()
	return KColor(
		EIDConfig["TextColor"][1],
		EIDConfig["TextColor"][2],
		EIDConfig["TextColor"][3],
		EIDConfig["Transparency"]
	)
end

-- Get KColor object of "Transformation" texts
function EID:getTransformationColor()
	return KColor(
		EIDConfig["TransformationColor"][1],
		EIDConfig["TransformationColor"][2],
		EIDConfig["TransformationColor"][3],
		EIDConfig["Transparency"]
	)
end

-- Get KColor object of "Error" texts
function EID:getErrorColor()
	return KColor(
		EIDConfig["ErrorColor"][1],
		EIDConfig["ErrorColor"][2],
		EIDConfig["ErrorColor"][3],
		EIDConfig["Transparency"]
	)
end
